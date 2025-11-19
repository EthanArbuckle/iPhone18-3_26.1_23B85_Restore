void sub_220F8E064()
{
  if ((v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v2 = [Strong parentViewController];
      if (v2 && (v3 = v2, v2, v3 == v0) && (sub_220F8DAE8(), v5))
      {
        v6 = v5;
        v7 = v8;
        sub_220F8DA78(v8);

        v4 = v6;
      }

      else
      {
        v4 = v8;
      }
    }
  }
}

void sub_220F8E12C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for WeatherMapCachingViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  if (!*&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    sub_220F8DD28();
  }
}

void sub_220F8E1C0(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherMapCachingViewController();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) == 1)
  {
    *(v1 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 0;
    sub_220F8DA78(0);
  }

  sub_220F8DE1C();
  sub_220F8DD28();
}

void sub_220F8E280(char a1)
{
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3_45();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for WeatherMapCachingViewController();
  objc_msgSendSuper2(&v13, sel_viewWillDisappear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong parentViewController];

    if (v9)
    {

      if (v9 == v1)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;

          OUTLINED_FUNCTION_10();
          swift_beginAccess();
          sub_220F8FF64();

          v12 = *(v2 + *(v4 + 88));
          sub_220F901C8();
          if (v12 == 1)
          {
            *(v1 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 1;
          }
        }
      }
    }
  }
}

id WeatherMapCachingViewController.__deallocating_deinit()
{
  sub_220F8E064();
  sub_220F8DFA8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherMapCachingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WeatherMapCachingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_220FC26C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t WeatherMap.LocationAction.description.getter()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_85();
  sub_220F8FF64();
  v8 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = OUTLINED_FUNCTION_10_29();
      v13(v12);
      v11 = 0x61636F4C77656976;
      goto LABEL_5;
    case 2u:
      v14 = OUTLINED_FUNCTION_10_29();
      v15(v14);
      sub_220FC35C0();

      v18 = 0xD000000000000013;
      goto LABEL_7;
    case 3u:
      return v8;
    case 4u:
      return 0x7373696D736964;
    default:
      v9 = OUTLINED_FUNCTION_10_29();
      v10(v9);
      v11 = 0x7461636F4C646461;
LABEL_5:
      v18 = v11;
LABEL_7:
      v16 = sub_220FC1020();
      MEMORY[0x223D9BD60](v16);

      v8 = v18;
      (*(v3 + 8))(v0, v1);
      return v8;
  }
}

uint64_t Array<A>.init(hideScale:controlsLoadDelay:controlsFadeOnResize:controlsHidden:forceOverlayPaused:isUserInteractionEnabled:)(char a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  sub_220F37D68();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = v15 + 1;
  if (v15 >= *(v13 + 24) >> 1)
  {
    v47 = v15 + 1;
    OUTLINED_FUNCTION_12_25();
    v37 = v36;
    sub_220F37D68();
    v15 = v37;
    v16 = v47;
    v14 = v38;
  }

  *(v14 + 16) = v16;
  v17 = v14 + 16 * v15;
  *(v17 + 32) = 2;
  *(v17 + 40) = 1;
  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v34;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v18);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68();
      v14 = v35;
    }

    *(v14 + 16) = v19 + 1;
    v20 = v14 + 16 * v19;
    *(v20 + 32) = a2;
    *(v20 + 40) = 0;
  }

LABEL_13:
  if (a5 != 2 && (a5 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v39;
    }

    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v21);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68();
      v14 = v40;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = 0;
    *(v23 + 40) = 1;
  }

  if (a6 != 2 && (a6 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v41;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v24);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68();
      v14 = v42;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 16 * v25;
    *(v26 + 32) = 3;
    *(v26 + 40) = 1;
  }

  if (a7 != 2 && (a7 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v43;
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v27);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68();
      v14 = v44;
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 16 * v28;
    *(v29 + 32) = 4;
    *(v29 + 40) = 1;
  }

  if (a4 != 2 && (a4 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_28();
      v14 = v45;
    }

    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      OUTLINED_FUNCTION_0_1(v30);
      OUTLINED_FUNCTION_12_25();
      sub_220F37D68();
      v14 = v46;
    }

    *(v14 + 16) = v31 + 1;
    v32 = v14 + 16 * v31;
    *(v32 + 32) = 1;
    *(v32 + 40) = 1;
  }

  return v14;
}

uint64_t sub_220F8EB04(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  swift_getAssociatedConformanceWitness();
  sub_220FC1DA0();
  (*(a2 + 32))(a1, a2);
  return sub_220FC1D90();
}

uint64_t sub_220F8EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220FC33A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220F90E60(a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F910);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, a3);
    (*(v10 + 32))(v14, v9, a3);
    v15 = sub_220FC26B0();
    (*(v10 + 8))(v14, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, a3);
    (*(v6 + 8))(v9, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_220F8EE44()
{
  sub_220E3B2DC(v0 + 16, &qword_27CF9F828);
  sub_220E3B2DC(v0 + 56, &qword_27CF9F908);

  return v0;
}

uint64_t sub_220F8EE94()
{
  v0 = sub_220F8EE44();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_220F8EEC4()
{
  OUTLINED_FUNCTION_34_9();
  result = EnvironmentValues.buttons.getter();
  *v0 = result;
  return result;
}

void sub_220F8F018(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_220F8F27C(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_41;
  }

  if (v7)
  {
    sub_220F40C10(v4);
LABEL_41:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_220FC34C0() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_41;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }
      }

      v11 = sub_220FC1380();
      if (v11)
      {

        v12 = sub_220FC1380();

        if (!v12 || (v12, v12 != v5))
        {
          if (v8 != v9)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D9CB30](v8, v4);
              v14 = MEMORY[0x223D9CB30](v9, v4);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_48;
              }

              if (v9 >= v15)
              {
                goto LABEL_49;
              }

              v13 = *(v4 + 32 + 8 * v8);
              v14 = *(v4 + 32 + 8 * v9);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_220E98DA8(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_220E98DA8(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            *(v17 + 8 * v9 + 32) = v13;

            *a1 = v4;
          }

          v18 = __OFADD__(v8++, 1);
          if (v18)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
}

void sub_220F8F27C(unint64_t a1, void *a2)
{
  v4 = sub_220F40C10(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_15:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x223D9CB30](v5, a1);
LABEL_6:
    v6 = sub_220FC1380();
    if (!v6)
    {

      return;
    }

    v7 = sub_220FC1380();

    if (v7)
    {

      if (v7 == a2)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_220F8F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BOOL4 a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v95 = a7;
  v96 = a8;
  v81 = a6;
  v94 = a5;
  v92 = a3;
  v93 = a4;
  v90 = a1;
  v91 = a2;
  v89 = type metadata accessor for InteractiveFocus();
  MEMORY[0x28223BE20](v89, v15);
  v97 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220FC0E70();
  v102 = *(v21 - 8);
  v103 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v104 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220FC0CA0();
  v99 = *(v24 - 8);
  v100 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v85 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v77 - v33;
  v80 = a13;
  v119 = a13;
  v35 = *(a12 + 16);
  *(a14 + 24) = *a12;
  v36 = *a12;
  *(a14 + 40) = v35;
  *(a14 + 56) = *(a12 + 32);
  *(a14 + 72) = *(a12 + 48);
  *(a14 + 80) = 0;
  v98 = a14;
  v115 = v36;
  v116 = *(a12 + 16);
  sub_220F91444(a12, v112);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  MEMORY[0x223D9B7E0](&v118, v37);
  v86 = v118;
  v38 = type metadata accessor for WeatherMapOverlay();
  v101 = v34;
  v82 = v38;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v38);
  *v112 = *(a12 + 24);
  *&v112[16] = *(a12 + 40);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  MEMORY[0x223D9B7E0](&v115, v39);
  v83 = *(&v115 + 1);
  v84 = v115;
  v88 = sub_220F8A674(a11);
  v87 = sub_220F8A6A0(a11);
  v40 = sub_220F8A6CC(a11);
  v79 = sub_220F8A700(a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518);
  sub_220FC12B0();
  result = sub_220FC1230();
  if (!v117)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v115, v117);
  sub_220FC0F40();
  sub_220FC0C90();
  (v99[1])(v27, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D430);
  result = sub_220FC1230();
  if (!v114)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v78 = a10;

  LODWORD(v80) = v79;
  v81 = !v81;
  sub_220F9147C(a12);
  sub_220F8A72C(a11);

  v42 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v100 = &v77;
  v43 = MEMORY[0x28223BE20](v42, v42);
  v45 = (&v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v43);
  v47 = *v45;
  v48 = type metadata accessor for MapScaleOverlayViewModelFactory();
  v109[3] = v48;
  v109[4] = &off_283482E50;
  v109[0] = v47;
  type metadata accessor for WeatherMapStore(0);
  v49 = swift_allocObject();
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v109, v48);
  v99 = &v77;
  v51 = MEMORY[0x28223BE20](v50, v50);
  v53 = (&v77 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v53;
  v108 = &off_283482E50;
  v107 = v48;
  v106[0] = v55;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 0;
  v56 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModelSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F038);
  swift_allocObject();
  *(v49 + v56) = sub_220FC1990();
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused) = 0;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_unitObserver) = 0;
  *(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_zoomLevelZoomDelta) = 0x3FF0000000000000;
  v57 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_performanceTestConditions;
  v58 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
  __swift_storeEnumTagSinglePayload(v49 + v57, 1, 1, v58);
  (*(v102 + 16))(v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_mapsConfiguration, v104, v103);
  sub_220E1E30C(v106, v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory);
  sub_220E43574();
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v59 = v86;
  v105[0] = v86;
  v60 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v82);
  sub_220EEFF7C(v105, v60, v112);
  sub_220E3B2DC(v60, &unk_27CF9EB80);
  sub_220FC0C80();
  sub_220FC0C60();
  v61 = sub_220FC0C40();

  sub_220FC0C60();
  v62 = sub_220FC0C70();

  LOBYTE(v57) = MapsConfiguration.windOverlayEnabled.getter();
  swift_storeEnumTagMultiPayload();
  v63 = v17[16];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  __swift_storeEnumTagSinglePayload(&v20[v63], 2, 2, v64);
  v65 = v91;
  *v20 = v90;
  *(v20 + 1) = v65;
  v66 = v93;
  *(v20 + 2) = v92;
  *(v20 + 3) = v66;
  v20[32] = v94;
  *(v20 + 5) = v95;
  v20[48] = v59;
  v67 = &v20[v17[9]];
  v68 = v83;
  *v67 = v84;
  *(v67 + 1) = v68;
  *&v20[v17[10]] = v96;
  v20[v17[12]] = 0;
  *&v20[v17[13]] = v78;
  memcpy(&v20[v17[14]], v112, 0x61uLL);
  v20[v17[15]] = 0;
  v69 = &v20[v17[17]];
  *v69 = xmmword_220FD81D0;
  *(v69 + 1) = xmmword_220FD81E0;
  *(v69 + 4) = 0x4010000000000000;
  *(v69 + 5) = v40;
  v69[48] = v80;
  *(v69 + 49) = *v111;
  *(v69 + 13) = *&v111[3];
  *(v69 + 7) = a9;
  v69[64] = v81;
  *(v69 + 65) = *v110;
  *(v69 + 17) = *&v110[3];
  *(v69 + 72) = xmmword_220FD81F0;
  v20[v17[18]] = 0;
  *&v20[v17[19]] = v61;
  *&v20[v17[20]] = v62;
  v20[v17[21]] = 1;
  v20[v17[22]] = v88;
  v20[v17[23]] = v87;
  v20[v17[24]] = v57 & 1;
  v20[v17[25]] = 0;
  v70 = v49 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  sub_220F90F04();
  swift_beginAccess();
  sub_220F8FF64();
  v71 = v97;
  sub_220F319DC();
  sub_220F901C8();
  swift_beginAccess();
  sub_220F347F0(v71, v70 + v17[11]);
  *(v70 + v17[12]) = 1;
  swift_endAccess();
  v72 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for WeatherMapUnitObserver();
  swift_allocObject();
  v73 = sub_220EC25FC(sub_220F914AC, v72);
  v74 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_unitObserver;
  swift_beginAccess();
  *(v49 + v74) = v73;

  swift_beginAccess();
  if (*(v49 + v74))
  {
    swift_endAccess();

    sub_220EC260C();

    (*(v102 + 8))(v104, v103);
    sub_220E3B2DC(v101, &unk_27CF9EB80);
  }

  else
  {
    (*(v102 + 8))(v104, v103);
    sub_220E3B2DC(v101, &unk_27CF9EB80);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v106);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(&v115);
  v75 = v98;
  *(v98 + 16) = v49;
  v109[0] = sub_220F314C0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D580);
  sub_220E818E0();
  v76 = sub_220FC1A10();

  *(v75 + 80) = v76;

  return v75;
}

uint64_t sub_220F8FF64()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220F8FFBC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_220F8FFC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  OUTLINED_FUNCTION_29(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_13_25();
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220F8AC34(v0 + v3, v7);
}

void sub_220F9008C()
{
  v2 = OUTLINED_FUNCTION_57_2();
  v3 = type metadata accessor for WeatherMap(v2);
  OUTLINED_FUNCTION_29(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830) - 8);
  v9 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_220F8AE1C(v0, v1 + v5, v9);
}

unint64_t sub_220F90184()
{
  result = qword_2812C5CD8;
  if (!qword_2812C5CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5CD8);
  }

  return result;
}

uint64_t sub_220F901C8()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_220F90264(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220F902E0()
{
  sub_220F907E4(319, &qword_2812C5D30, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_220F90834(319, &unk_2812C5B88, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_220F90834(319, &qword_2812C5DB0, MEMORY[0x277D7AB60], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_220F90898(319, &qword_2812C5E10, &qword_27CF9CFD0, &unk_220FCBA10, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_220F907E4(319, &qword_2812C5E18, &type metadata for WeatherMapOverlayKind, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_220F90898(319, &qword_2812C5DC8, &qword_27CF9F000, &unk_220FD84C0, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_220F907E4(319, &qword_2812C5DA8, &type metadata for WeatherMap.Options, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_220F907E4(319, &qword_2812C5DC0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_220F90898(319, &qword_2812C5E68, &qword_27CF9F860, &unk_220FDA240, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_220F90750();
                    if (v9 <= 0x3F)
                    {
                      sub_220F907E4(319, &qword_2812C5E78, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        sub_220F90898(319, &qword_2812C5E88, &qword_27CF9F868, &unk_220FD84D0, MEMORY[0x277CDF468]);
                        if (v11 <= 0x3F)
                        {
                          sub_220F90898(319, &qword_2812C5E80, &qword_27CF9F030, &unk_220FD7310, MEMORY[0x277CDF468]);
                          if (v12 <= 0x3F)
                          {
                            sub_220F907E4(319, &qword_2812C5E60, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                            if (v13 <= 0x3F)
                            {
                              sub_220F90834(319, &qword_2812C5E20, type metadata accessor for CachingBannerViewControllerFactory, MEMORY[0x277CE10B8]);
                              if (v14 <= 0x3F)
                              {
                                sub_220F90898(319, &qword_2812C5AC8, &qword_27CF9F070, &unk_220FD84E0, MEMORY[0x277D83D88]);
                                if (v15 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_220F90750()
{
  if (!qword_2812C5E48)
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8]);
    v0 = sub_220FC1C00();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5E48);
    }
  }
}

void sub_220F907E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220F90834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220F90898(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_220F908FC()
{
  result = sub_220FC1070();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220F90970(uint64_t a1)
{
  if (((*a1 >> 60) & 2) != 0)
  {
    return ((*a1 >> 54) & 0x300 | *a1 | (*(a1 + 8) << 10)) + 2;
  }

  else
  {
    return (*a1 >> 60) & 3;
  }
}

uint64_t sub_220F909B0(uint64_t result, uint64_t a2)
{
  v2 = (a2 - 2);
  if (a2 < 2)
  {
    v3 = *result & 0xC0000000000000FFLL | (a2 << 60);
  }

  else
  {
    *(result + 8) = v2 >> 10;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    v3 = (v2 | (v2 << 54)) & 0xC0000000000000FFLL | 0x2000000000000000;
    *(result + 48) = 0u;
    *(result + 64) = 0;
  }

  *result = v3;
  return result;
}

uint64_t sub_220F90A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 1);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_220F90A48(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F90AB0(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 | (*(a1 + 8) << 8)) + 2;
  }
}

unsigned __int8 *sub_220F90AE0(unsigned __int8 *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result | (a2 << 62);
  }

  else
  {
    v2 = (a2 - 2) | 0x8000000000000000;
    *(result + 1) = (a2 - 2) >> 8;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 8) = 0;
  }

  *result = v2;
  return result;
}

uint64_t sub_220F90B5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220F90B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F90BF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t objectdestroy_91Tm()
{
  type metadata accessor for WeatherMap(0);
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  sub_220F8FFBC(*(v7 + 184), *(v7 + 192));

  sub_220E2C4C4(*(v7 + 216), *(v7 + 224));
  if (*(v1 + v4 + 272))
  {
    if (*(v7 + 256))
    {
      __swift_destroy_boxed_opaque_existential_0(v7 + 232);
    }
  }

  else
  {
  }

  v8 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
    if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
    {
      v10 = sub_220FC1070();
      if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v10))
      {
        OUTLINED_FUNCTION_12();
        (*(v11 + 8))(v7 + v8, v10);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_6(v7 + v0[20]);

  if (*(v7 + v0[22]))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220F90E60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_220F90EC4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_220F90F04()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220F90F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F9101C()
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return sub_220F8D12C();
}

uint64_t sub_220F9109C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return a2(a1) & 1;
}

uint64_t sub_220F91104(const void *a1)
{
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_22_16();
  return sub_220F8B51C(a1);
}

id sub_220F91154(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_220FC12B0();
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_snapshotViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPickerViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationPopoverViewController] = 0;
  v12 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize];
  v17[16] = 1;
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController____lazy_storage___supplementaryOverlayContainerView] = 0;
  v32[3] = v11;
  v32[4] = MEMORY[0x277D6CCE0];
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayDebounceTimer] = 0;
  v32[0] = a2;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_supplementaryOverlayViewController] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver] = 0;
  v18 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_viewModelToUpdate;
  v19 = type metadata accessor for WeatherMapStore.ViewModel(0);
  __swift_storeEnumTagSinglePayload(&a5[v18], 1, 1, v19);
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resizeTimer] = 0;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isResizing] = 0;
  v20 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_bannerUpdateBlock];
  *v20 = 0;
  v20[1] = 0;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_isCrossfadingSnapshot] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store] = a1;
  sub_220E1E30C(v32, &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver]);
  v21 = a1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  sub_220F8FF64();
  v22 = &a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewBounds];
  *v22 = 0u;
  v22[1] = 0u;
  a5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_prefersControlsHidden] = *(v21 + *(v19 + 88));
  *v16 = a3;
  v16[1] = a4;

  sub_220E1AADC(a3);
  v31.receiver = a5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  if (a3)
  {
    v26 = 0x2000000000000000;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    sub_220E1AADC(a3);
    v24 = v23;
    a3(&v26);
    sub_220E2DD2C(a3);

    sub_220E2DD2C(a3);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return v23;
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_15_16()
{
  result = *(v0 - 160);
  v2 = *(v0 - 144);
  *(v0 - 112) = result;
  *(v0 - 96) = v2;
  *(v0 - 80) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_220FC16C0();
}

uint64_t OUTLINED_FUNCTION_26_17()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_27_14()
{

  return swift_getEnumCaseMultiPayload();
}

double OUTLINED_FUNCTION_33_9(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_220FC16C0();
}

uint64_t sub_220F916A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_220FC1160();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v1 + 72) = sub_220FC1170();
  *(v1 + 16) = a1;
  v10 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v2;
  swift_retain_n();

  sub_220F9BB1C(0, 0, v7, &unk_220FD87A8, v11);

  return v2;
}

uint64_t sub_220F9183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = sub_220FC2A60();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v5;
  v7[1] = sub_220F91938;

  return sub_220EE0DF4();
}

uint64_t sub_220F91938(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_220F91CFC, 0, 0);
  }

  else
  {
    v5[15] = a1;
    v9 = swift_task_alloc();
    v5[16] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    v5[17] = v10;
    *v9 = v7;
    v9[1] = sub_220F91AE0;
    v11 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v5 + 2, a1, &type metadata for ServiceResponseData, v10, v11);
  }
}

uint64_t sub_220F91AE0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220F91BE8, 0, 0);
}

uint64_t sub_220F91BE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  if (v5 == 1)
  {
    *(v0 + 56) = v2;
    v6 = v2;
    v7 = swift_dynamicCast();
    v8 = v7;
    if (v7)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    }
  }

  else
  {
    v8 = 0;
  }

  sub_220F91DE8(v8);
  sub_220F928B8(v2, v1, v3, v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_220F91CFC()
{
  v1 = v0[14];
  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  v3 = swift_dynamicCast();
  v4 = v3;
  if (v3)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v5 = v0[14];
  sub_220F91DE8(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_220F91DE8(char a1)
{
  sub_220FC1130();
  *(v1 + 64) = 1;
  swift_beginAccess();
  sub_220F9290C(v1 + 24, v7);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_220F9297C(&v4, v1 + 24);
  swift_endAccess();
  sub_220FC1140();
  if (a1)
  {
    sub_220F9290C(v7, &v4);
    if (*(&v5 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      sub_220E43C80();
LABEL_6:
      sub_220F91FA0(v7);
      return __swift_destroy_boxed_opaque_existential_0(&v4);
    }
  }

  else
  {
    sub_220F9290C(v7, &v4);
    if (*(&v5 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      sub_220E43828();
      goto LABEL_6;
    }
  }

  sub_220F91FA0(v7);
  return sub_220F91FA0(&v4);
}

uint64_t sub_220F91EF4()
{

  sub_220EE1034();

  sub_220F91FA0(v0 + 24);

  return v0;
}

uint64_t sub_220F91F48()
{
  sub_220F91EF4();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_220F91FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F92028()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_220F920FC;

  return MEMORY[0x282200830](v0 + 16, &unk_220FD8798);
}

uint64_t sub_220F920FC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_220F9221C;
  }

  else
  {
    v7 = sub_220F921FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220F92260(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_220F92280, 0, 0);
}

uint64_t sub_220F92280()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_220F92310;

  return sub_220EE0DF4();
}

uint64_t sub_220F92310(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;
    v11 = swift_task_alloc();
    *(v5 + 80) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    *v11 = v7;
    v11[1] = sub_220F924A8;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5 + 16, a1, &type metadata for ServiceResponseData, v12, v13);
  }
}

uint64_t sub_220F924A8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_220F92664;
  }

  else
  {
    v7 = sub_220F925C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_220F925C4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_220E567FC(v2, v4);

  sub_220E565AC(v2, v4);
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_220F9267C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_220F92714;

  return sub_220F92260(v3, v0);
}

uint64_t sub_220F92714()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_220F927F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_220F92714;

  return sub_220F9183C(a1, v4, v5, v7, v6);
}

void sub_220F928B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_220E565AC(a2, a3);
  }
}

uint64_t sub_220F9290C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F9297C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F928);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F929EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_220FC02B0();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_220FC02B0();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_220F92AB4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_220FC27F0();
  return sub_220FC28A0();
}

uint64_t sub_220F92B34(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (result > 1)
  {
    if (v3 >= result)
    {
      v4 = v2 + 8 * result;
    }

    else
    {
      if (!v3)
      {
        result = 0;
        goto LABEL_10;
      }

      v4 = v2 + 8 * v3;
    }

    v5 = (v4 + 24);
LABEL_9:
    result = *v5;
LABEL_10:
    *(v1 + 16) = result;
    return result;
  }

  if (v3)
  {
    v5 = (v2 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F92B84(uint64_t result)
{
  *(v1 + 24) = result;
  if (*(result + 16))
  {
    *(v1 + 16) = *(result + 32);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220F92BA4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220F92C00(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F92CAC();

  return swift_unknownObjectRelease();
}

BOOL sub_220F92C50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

uint64_t sub_220F92CAC()
{
  v1 = v0;
  v2 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_220FC2300();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);
      v8 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
      swift_beginAccess();
      sub_220F95E40(v7 + v8, v5, type metadata accessor for ScrubberStore.ViewModel);
      v9 = sub_220EE3BB8();
      sub_220F95DE0(v5, type metadata accessor for ScrubberStore.ViewModel);
      if (v9)
      {
        [*(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView) frame];
        v11 = v10;
        v13 = v12;
        result = swift_unknownObjectRelease();
      }

      else
      {
        result = swift_unknownObjectRelease();
        v11 = 0.0;
        v13 = 0.0;
      }

      v14 = v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
      if (*(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState + 17))
      {
        goto LABEL_7;
      }

      if (*(v14 + 16))
      {
        if (!v9)
        {
          return result;
        }

LABEL_7:
        *v14 = v11;
        *(v14 + 8) = v13;
        *(v14 + 16) = !v9;
        return result;
      }

      if (!v9)
      {
        goto LABEL_7;
      }

      if (*v14 != v11 || *(v14 + 8) != v13)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

char *sub_220F92E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = 0;
  v7 = v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
  *(v7 + 16) = 256;
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState;
  *v8 = 0;
  *(v8 + 24) = 0u;
  *(v8 + 8) = 0u;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideDelay) = 0x401C000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_horizontalPadding) = 0x4028000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_verticalSpacingBeneathForecastHint) = 0x4020000000000000;
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store) = a1;
  v9 = objc_allocWithZone(type metadata accessor for ScrubberView());

  v10 = sub_220F1B4A8(a2);
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView) = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = xmmword_220FD87E0;
  v45 = xmmword_220FD87F0;
  v46 = xmmword_220FD8800;
  v47 = xmmword_220FD8810;
  v48 = 2;
  v49 = 0x7FEFFFFFFFFFFFFFLL;
  v50 = 0;
  v11 = objc_allocWithZone(type metadata accessor for HintView());
  OUTLINED_FUNCTION_10();
  v16 = sub_220EA23E0(v12, v13, v14, v15);
  *(v2 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView) = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  v19 = [v17 secondarySystemBackgroundColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v17 secondaryLabelColor];
  v22 = [v17 systemGray4Color];
  v23 = [v22 colorWithAlphaComponent_];

  sub_220E1966C(0, &qword_2812C5B80);
  *&v51 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  *(&v51 + 1) = v18;
  *&v52 = v20;
  *(&v52 + 1) = v21;
  *&v53 = v23;
  *(&v53 + 1) = v21;
  *&v54 = v23;
  *(&v54 + 1) = 0x403E000000000000;
  v41[0] = v51;
  v41[1] = v52;
  v41[2] = v53;
  v41[3] = v54;
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  v42[2] = 0;
  v42[3] = 0;
  v43 = 0;
  v24 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLocationLabel());
  v25 = v21;
  v26 = v23;
  v27 = v25;
  v28 = v26;
  v29 = v18;
  v30 = v20;
  sub_220E9CA50(&v51, v40);
  v31 = sub_220E9C384(v41, v42);
  v32 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel;
  *(v3 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel) = v31;
  [v31 setTextAlignment_];
  [*(v3 + v32) setNumberOfLines_];
  OUTLINED_FUNCTION_10();
  v35 = objc_msgSendSuper2(v33, v34, v3, ObjectType);
  v36 = *&v35[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  v37 = v35;
  v38 = v36;
  sub_220F1B254(v35, &off_2834876A0);

  sub_220E9CA88(&v51);

  return v37;
}

void sub_220F93254()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = 0;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_lastScrubberVisibilityState;
  *(v1 + 16) = 256;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState;
  *v2 = 0;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideDelay) = 0x401C000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_horizontalPadding) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_verticalSpacingBeneathForecastHint) = 0x4020000000000000;
  sub_220FC3740();
  __break(1u);
}

void sub_220F9335C()
{
  sub_220FC17E0();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

id sub_220F93408()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = OUTLINED_FUNCTION_9_24();
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  [result addSubview_];

  v5 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store] + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  OUTLINED_FUNCTION_10();
  v6 = swift_beginAccess();
  OUTLINED_FUNCTION_8_32(v6, *(v5 + 1));
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  v7 = sub_220E1B804();

  result = OUTLINED_FUNCTION_9_24();
  v8 = result;
  if (v7)
  {
    if (result)
    {
      OUTLINED_FUNCTION_14_26(OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);

      v9 = type metadata accessor for ScrubberStore.ViewModel(0);
      OUTLINED_FUNCTION_8_32(v9, *(v5 + *(v9 + 52)));
      sub_220F936FC(*&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 8], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 16], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 24], *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 32], v7, 0, 0);
      return sub_220F9390C();
    }

    goto LABEL_13;
  }

  if (result)
  {
    OUTLINED_FUNCTION_14_26(OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView);

    [v7 setHidden_];
    v10 = type metadata accessor for ScrubberStore.ViewModel(0);
    OUTLINED_FUNCTION_8_32(v10, *(v5 + *(v10 + 48)));
    return sub_220F9390C();
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_220F935F0(void *a1, char a2, char a3)
{
  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  result = [a1 alpha];
  if (v7 != v5)
  {
    if (a3)
    {
      type metadata accessor for ViewAnimator();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      *(v8 + 24) = v5;
      v9 = a1;
      sub_220F1AFD0(sub_220EA72CC, v8, 0, 0);
    }

    else
    {

      return [a1 setAlpha_];
    }
  }

  return result;
}

void sub_220F936FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = *(v7 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);
  [v13 frame];
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (!CGRectEqualToRect(v21, v22))
  {
    if (a7)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:200.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      v15 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v14 timingParameters:0.72];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      *(v17 + 32) = a2;
      *(v17 + 40) = a3;
      *(v17 + 48) = a4;
      v19[4] = sub_220F95D44;
      v19[5] = v17;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 1107296256;
      v19[2] = sub_220F6DA78;
      v19[3] = &block_descriptor_29_0;
      v18 = _Block_copy(v19);

      [v15 addAnimations_];
      _Block_release(v18);
      [v15 startAnimation];
    }

    else
    {

      [v13 setFrame_];
    }
  }
}

uint64_t sub_220F9390C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);
  v15 = sub_220EE3B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F998);
  v8 = *(type metadata accessor for ScrubberStore.ViewModel(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220FC8E30;
  v11 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  sub_220F95E40(v7 + v11, v10 + v9, type metadata accessor for ScrubberStore.ViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBE8);
  sub_220E453D4(&unk_27CF9EBF0, &qword_27CF9EBE8);
  sub_220FC19E0();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_220E453D4(&qword_27CF9F9A0, &qword_27CF9F990);
  v12 = sub_220FC1A10();

  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_storeObserver) = v12;
}

void sub_220F93C24(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1 & 1);
  sub_220F93C70();
}

void sub_220F93C70()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer);
  if (v2)
  {
    v8 = v2;
    [v8 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v4 = sub_220FC17A0();
    __swift_project_value_buffer(v4, qword_2812C5ED0);
    v5 = sub_220FC1780();
    v6 = sub_220FC2E30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220E15000, v5, v6, "Stopped scrubber timer", v7, 2u);
      MEMORY[0x223D9DDF0](v7, -1, -1);
    }
  }
}

id sub_220F93DFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  v131 = v8;
  v9 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v132 = v10;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_1();
  v129 = v13;
  v133 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v130 = v14;
  MEMORY[0x28223BE20](v15, v16);
  *&v19 = MEMORY[0x28223BE20](v17, v18).n128_u64[0];
  v21 = v127 - v20;
  v142.receiver = v1;
  v142.super_class = ObjectType;
  objc_msgSendSuper2(&v142, sel_viewDidLayoutSubviews, v19);
  v22 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store] + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v23 = type metadata accessor for ScrubberStore.ViewModel(0);
  v24 = v22 + *(v23 + 76);
  v25 = *(v24 + 8);
  if (v25 > 12.0)
  {
    v26 = *(v24 + 8);
  }

  else
  {
    v26 = 12.0;
  }

  result = OUTLINED_FUNCTION_9_24();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = result;
  v127[2] = v9;
  v128 = v5;
  [result bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v143.origin.x = v30;
  v143.origin.y = v32;
  v143.size.width = v34;
  v143.size.height = v36;
  Width = CGRectGetWidth(v143);
  result = OUTLINED_FUNCTION_9_24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = result;
  v136 = v25;
  v39 = Width - (v26 + v26);
  [result bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v144.origin.x = v41;
  v144.origin.y = v43;
  v144.size.width = v45;
  v144.size.height = v47;
  Height = CGRectGetHeight(v144);
  v49 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  sub_220F1BF84();
  v51 = v50;
  v53 = v52;
  result = OUTLINED_FUNCTION_9_24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v54 = result;
  v134 = Height;
  v135 = v39;
  v127[1] = v3;
  [result bounds];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v145.origin.x = v56;
  v145.origin.y = v58;
  v145.size.width = v60;
  v145.size.height = v62;
  v63 = CGRectGetWidth(v145);
  result = OUTLINED_FUNCTION_9_24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v64 = result;
  [result bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v146.origin.x = v66;
  v146.origin.y = v68;
  v146.size.width = v70;
  v146.size.height = v72;
  v147.origin.y = CGRectGetHeight(v146) - v53 - v136;
  v147.origin.x = v63 * 0.5 - v51 * 0.5;
  v147.size.width = v51;
  v147.size.height = v53;
  v148 = CGRectIntegral(v147);
  [v49 setFrame_];
  v73 = v135 - *(v22 + *(v23 + 80));
  v74 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView];
  sub_220EA3DB8(v73);
  [v49 frame];
  CGRectGetMinX(v149);
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  v75 = sub_220E1B804();

  if ((v75 & 1) != 0 && (v76 = &v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState], v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] == 1))
  {
    v78 = *(v76 + 1);
    v77 = *(v76 + 2);
    v80 = *(v76 + 3);
    v79 = *(v76 + 4);
    v81 = v76[1];
    [v49 frame];
    if (v81 == 1)
    {
      MinY = CGRectGetMinY(*&v82);
      *(v76 + 1) = OUTLINED_FUNCTION_5_36(MinY);
      *(v76 + 2) = v87;
      *(v76 + 3) = v88;
      *(v76 + 4) = v89;
      sub_220E1966C(0, &qword_2812C5CA0);
      v135 = COERCE_DOUBLE(sub_220FC2FC0());
      sub_220FC23A0();
      v127[0] = v21;
      sub_220FC23D0();
      v90 = OUTLINED_FUNCTION_13_26(*(v130 + 8));
      v91(v90);
      v92 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v140 = sub_220F95D3C;
      v141 = v92;
      OUTLINED_FUNCTION_1_70();
      OUTLINED_FUNCTION_0_86(COERCE_DOUBLE(1107296256));
      v138 = v93;
      v139 = &block_descriptor_22;
      v94 = _Block_copy(aBlock);

      v95 = v129;
      sub_220FC2350();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220EA7330();
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
      OUTLINED_FUNCTION_2_50(&qword_2812C5D88);
      v97 = v131;
      OUTLINED_FUNCTION_7_29();
      v98 = v127[0];
      v99 = v135;
      MEMORY[0x223D9C4E0](v127[0], v95, v97, v94);
      _Block_release(v94);

      (*(v128 + 8))(v97, v96);
      v100 = OUTLINED_FUNCTION_6_31();
      v101(v100);
      (*&v136)(v98, v133);
      v102 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel];
      v103 = *(v76 + 1);
      v104 = *(v76 + 2);
      v105 = *(v76 + 3);
      v106 = *(v76 + 4);
      v107 = v76[1];
      v150.origin.x = OUTLINED_FUNCTION_6_0();
      IsEmpty = CGRectIsEmpty(v150);
      sub_220F936FC(v103, v104, v105, v106, v102, v107, !IsEmpty);
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v82);
      *(v76 + 1) = OUTLINED_FUNCTION_5_36(MaxY);
      *(v76 + 2) = v111;
      *(v76 + 3) = v112;
      *(v76 + 4) = v113;
      sub_220F935F0(v49, v76[1], 1);
      sub_220E1966C(0, &qword_2812C5CA0);
      v135 = COERCE_DOUBLE(sub_220FC2FC0());
      sub_220FC23A0();
      v114 = v21;
      sub_220FC23D0();
      v115 = OUTLINED_FUNCTION_13_26(*(v130 + 8));
      v116(v115);
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      v118[2] = v117;
      v118[3] = v78;
      v118[4] = v77;
      v118[5] = v80;
      v118[6] = v79;
      v140 = sub_220F95D0C;
      v141 = v118;
      OUTLINED_FUNCTION_1_70();
      OUTLINED_FUNCTION_0_86(COERCE_DOUBLE(1107296256));
      v138 = v119;
      v139 = &block_descriptor_27;
      v120 = _Block_copy(aBlock);

      v121 = v129;
      sub_220FC2350();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220EA7330();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
      OUTLINED_FUNCTION_2_50(&qword_2812C5D88);
      v123 = v131;
      OUTLINED_FUNCTION_7_29();
      v124 = v135;
      MEMORY[0x223D9C4E0](v114, v121, v123, v120);
      _Block_release(v120);

      (*(v128 + 8))(v123, v122);
      v125 = OUTLINED_FUNCTION_6_31();
      v126(v125);
      (*&v136)(v114, v133);
    }
  }

  else
  {
    [v49 frame];
    v109 = CGRectGetMinY(v151);
    [v74 setFrame_];
  }

  return sub_220F92CAC();
}

void sub_220F946F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 1);
    v3 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView);
    sub_220F935F0(v3, v2, 1);
  }
}

void sub_220F94780(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 8);
    v11 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 16);
    v12 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 24);
    v13 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 32);
    v14 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 1);
    v15 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    IsEmpty = CGRectIsEmpty(v17);
    sub_220F936FC(v10, v11, v12, v13, v15, v14, !IsEmpty);
  }
}

void sub_220F948B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_220F94910(a1);
  }
}

id sub_220F94910(uint64_t a1)
{
  v3 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v84 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v83 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v82 - v11;
  v13 = sub_220FC02B0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v85 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v82 - v19;
  v87 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v87, v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v82 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v82 - v30;
  v89 = v1;
  v90 = v3;
  v32 = *(v3 + 72);
  v88 = *&v1[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView];
  sub_220F1B2D0(&v82 - v30);
  v33 = sub_220E5C410(a1 + v32, v31);
  sub_220F95DE0(v31, type metadata accessor for MapScrubberOverlayViewModel);
  v86 = v33;
  if ((v33 & 1) == 0)
  {
    sub_220F95E40(a1 + v32, v31, type metadata accessor for MapScrubberOverlayViewModel);
    sub_220F1B338(v31);
    v34 = sub_220E5C120();
    v36 = v89;
    v37 = sub_220F952F8(v34, v35 & 1);
    v38 = *&v36[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView];
    v39 = (v38 + OBJC_IVAR____TtC11WeatherMaps8HintView_title);
    *v39 = v37;
    v39[1] = v40;

    sub_220EA22B8();
    v41 = *(v38 + OBJC_IVAR____TtC11WeatherMaps8HintView_label);
    sub_220E1966C(0, &qword_2812C5B80);
    v42 = *MEMORY[0x277D76968];
    v43 = *MEMORY[0x277D743F8];
    v44 = v41;
    v45 = sub_220E417BC(v42, 0x8000u, 0, 1, 0, 0, v43);
    [v44 setFont_];
  }

  sub_220E70720(a1 + v90[8], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220EE9DE8(v12);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    v46 = v85;
    (*(v14 + 16))(v85, v20, v13);
    sub_220F1B3C8(v46);
    (*(v14 + 8))(v20, v13);
  }

  v47 = v90;
  v48 = a1;
  v49 = *(a1 + v90[10]);
  v82 = OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView;
  sub_220E34BF4(v49);
  v50 = v89;
  v85 = *&v89[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store];
  v51 = &v85[OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel];
  swift_beginAccess();
  sub_220F95E40(v51 + v47[18], v27, type metadata accessor for MapScrubberOverlayViewModel);
  sub_220F95EA8(v27, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220F95DE0(v23, type metadata accessor for MapScrubberOverlayViewModel);
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v53 = v86 ^ 1;

  v54 = sub_220E1B804();

  if (v54 & 1) == 0 || (, v55 = sub_220E1B804(), , (v55) && (v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] & 1) == 0)
  {
    sub_220F935F0(v88, *(a1 + 1), EnumCaseMultiPayload != 1);
    sub_220F935F0(*&v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView], *(a1 + v90[12]), EnumCaseMultiPayload != 1);
  }

  v56 = sub_220E1B804();

  if (v56)
  {
    v57 = &v50[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState];
    v58 = *(a1 + v90[13]);
    if (v57[3] != v58)
    {
      v59 = v89;
      sub_220F935F0(*&v89[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel], *(a1 + v90[13]), EnumCaseMultiPayload != 1);
      v57[3] = v58;
      if ((v58 & 1) == 0)
      {
        sub_220F935F0(v88, *(a1 + 1), EnumCaseMultiPayload != 1);
        sub_220F935F0(*&v59[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberForecastHintView], *(a1 + v90[12]), EnumCaseMultiPayload != 1);
      }

      v53 = 1;
    }
  }

  v60 = sub_220E1B804();

  if (v60 & 1) == 0 || (v61 = &v89[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState], v89[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberState + 3] != 1) || (v62 = *(a1 + v90[16]), (sub_220E85060()) && v61[1] == *(a1 + 1))
  {
    v67 = v89;
    if ((v53 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v63 = *&v89[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel];
  v64 = &v63[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  v65 = *&v63[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 8];
  if (v65)
  {
    v66 = *v64;
  }

  else
  {
    v66 = 0;
    v65 = 0xE000000000000000;
  }

  LODWORD(v87) = v62;
  if (!v62)
  {

    if (qword_2812C5B30 == -1)
    {
LABEL_41:
      v73 = qword_2812CE4B0;
      v66 = sub_220FBFF80();
      v65 = v74;

      v75 = 1;
      goto LABEL_43;
    }

LABEL_50:
    swift_once();
    goto LABEL_41;
  }

  if (v62 == 1)
  {

    if (qword_2812C5B30 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_50;
  }

  v75 = 0;
LABEL_43:
  sub_220F935F0(v63, v75, 1);
  if (*(v48 + v90[22]) == 2)
  {
    v76 = 257;
  }

  else
  {
    v76 = 256;
  }

  v77 = *v64;
  v78 = *(v64 + 1);
  *v64 = v66;
  *(v64 + 1) = v65;
  *(v64 + 2) = 0;
  *(v64 + 3) = 0;
  *(v64 + 16) = v76;
  sub_220E3B0C4(v77, v78);
  sub_220E9BFF8();
  v79 = *(v48 + 1);
  if (v61[1] == v79)
  {
    v80 = v61[2];
    v81 = v80 ^ sub_220EE3BB8() | v53;
    *v61 = v87;
    v61[1] = v79;
    v61[2] = sub_220EE3BB8();
    v67 = v89;
    if ((v81 & 1) == 0)
    {
LABEL_26:
      if (*(v48 + 2) == 1)
      {
        sub_220E379FC();
        v70 = v83;
        sub_220F95E40(v51, v83, type metadata accessor for ScrubberStore.ViewModel);
        *(v70 + 2) = 0;
        v71 = v84;
        sub_220F95E40(v70, v84, type metadata accessor for ScrubberStore.ViewModel);
        sub_220EE3AE8(v71);
        sub_220F95DE0(v70, type metadata accessor for ScrubberStore.ViewModel);
      }

      v72 = OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer;
      if (*&v67[OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer])
      {
        goto LABEL_29;
      }

      if (sub_220EE59F8())
      {
        sub_220F954D8();
      }

      else if (*&v67[v72])
      {
LABEL_29:
        if (!sub_220EE59F8())
        {
          sub_220F93C70();
        }
      }

      return sub_220F92CAC();
    }
  }

  else
  {
    *v61 = v87;
    v61[1] = v79;
    v61[2] = sub_220EE3BB8();
    v67 = v89;
  }

LABEL_24:
  result = [v67 view];
  if (result)
  {
    v69 = result;
    [result setNeedsLayout];

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F952F8(uint64_t a1, char a2)
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

void sub_220F954D8()
{
  sub_220F93C70();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_220F95F0C;
  v10[5] = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_220E7F8F4;
  v10[3] = &block_descriptor_37;
  v3 = _Block_copy(v10);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:7.0];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_hideTimer) = v4;

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v6 = sub_220FC17A0();
  __swift_project_value_buffer(v6, qword_2812C5ED0);
  v7 = sub_220FC1780();
  v8 = sub_220FC2E30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_220E15000, v7, v8, "Started scrubber timer", v9, 2u);
    MEMORY[0x223D9DDF0](v9, -1, -1);
  }
}

void sub_220F956A0(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberSupportedRegionLabel);

    [v10 setFrame_];
  }
}

uint64_t sub_220F95748()
{
  v0 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - v6;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v8 = sub_220FC17A0();
  __swift_project_value_buffer(v8, qword_2812C5ED0);
  v9 = sub_220FC1780();
  v10 = sub_220FC2E30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_220E15000, v9, v10, "Scrubber timer triggering", v11, 2u);
    MEMORY[0x223D9DDF0](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_scrubberView);

    sub_220E379FC();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(result + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);

    v18 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    swift_beginAccess();
    sub_220F95E40(v17 + v18, v7, type metadata accessor for ScrubberStore.ViewModel);
    if (v7[1] == 1)
    {
      v19 = v7[*(v0 + 84)];

      if ((v19 & 1) == 0 || !sub_220EE3BB8())
      {
        v7[1] = 0;
        *&v7[*(v0 + 60)] = 0;
      }
    }

    else
    {
    }

    sub_220F95E40(v7, v3, type metadata accessor for ScrubberStore.ViewModel);
    sub_220EE3AE8(v3);
    sub_220F95DE0(v7, type metadata accessor for ScrubberStore.ViewModel);
  }

  return result;
}

id sub_220F95B18()
{
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id sub_220F95B98(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_220F95C54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F95CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220F95D74(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v3;
    sub_220F03D00(v2, &v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F95DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220F95E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220F95EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F95F4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220EE9E94(a2, v11);
  ObjectType = swift_getObjectType();
  v13 = (*(a1 + 40))(ObjectType, a1);
  v14 = type metadata accessor for WeatherMapOverlayAnimation();
  swift_allocObject();
  v15 = swift_unknownObjectRetain();
  result = sub_220EE8ED4(v15, a1, v11, v13, a3);
  a4[3] = v14;
  a4[4] = &off_283482A88;
  *a4 = result;
  return result;
}

id sub_220F9607C(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_model];
  v8 = a1[1];
  v7 = a1[2];
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = *a1;
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 4);
  v11 = *(a1 + 5);
  *v6 = v9;
  sub_220F30FE8(&v19, v17);
  sub_220F30FE8(&v18, v17);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v12 = v10;
  v13 = v11;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F961A4();
  sub_220ED18D8(&v19);
  sub_220ED18D8(&v18);

  return v14;
}

void sub_220F961A4()
{
  v1 = v0;
  sub_220E41E50();
  v2 = sub_220FC3150();
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel];
  v8 = v2;
  [v3 setFont_];
  v4 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_model];
  [v3 setTextColor_];
  v5 = sub_220FC26C0();
  [v3 setText_];

  [v3 setTextAlignment_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel];
  [v6 setFont_];

  [v6 setTextColor_];
  v7 = sub_220FC26C0();
  [v6 setText_];

  [v6 setTextAlignment_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setMinimumScaleFactor_];
  [v1 addSubview_];
  [v1 addSubview_];
}

void sub_220F96374()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_220FC3740();
  __break(1u);
}

void sub_220F96434()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  OUTLINED_FUNCTION_0_62();
  v1 = CGRectGetWidth(v18) + -12.0 + -4.0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_lowLabel];
  OUTLINED_FUNCTION_0_62();
  CGRectGetHeight(v19);
  [v2 bounds];
  [v2 setBounds_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationLowHighLabelsView_highLabel];
  OUTLINED_FUNCTION_0_62();
  CGRectGetHeight(v20);
  [v3 bounds];
  [v3 setBounds_];
  OUTLINED_FUNCTION_0_62();
  v4 = CGRectGetWidth(v21) * 0.5;
  OUTLINED_FUNCTION_0_62();
  v5 = CGRectGetHeight(v22) * 0.5 + 2.0;
  v6 = v1 * 0.25;
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    [v2 setCenter_];
    v7 = v4 - v6;
  }

  else
  {
    [v2 setCenter_];
    v7 = v6 + v4;
  }

  [v3 setCenter_];
  sub_220F966A0();
  v9 = v8;
  sub_220F966A0();
  if (v10 < v9)
  {
    v9 = v10;
  }

  v11 = [v2 font];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 fontWithSize_];

    [v2 setFont_];
    v14 = [v3 font];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 fontWithSize_];

      [v3 setFont_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_220F966A0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_220F96950(v0);
  if (v2)
  {
    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  v4 = [v0 font];
  [v1 setFont_];

  v5 = v1;
  [v5 sizeToFit];
  v6 = [v0 font];
  if (v6)
  {
    v7 = v6;
    [v6 pointSize];

    [v0 bounds];
    [v5 bounds];

    v8 = [v0 font];
    if (v8)
    {
      v9 = v8;
      [v8 pointSize];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F96950(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_220FC2700();

  return v3;
}

uint64_t (*sub_220F969B4(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_220F97BC8(v4, a2);
  return sub_220F98264;
}

uint64_t (*sub_220F96A18(void *a1, char a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_220F97C58(v4, a2 & 1);
  return sub_220F96A7C;
}

void sub_220F96A80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static WeatherMapSessionStatistics.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))))
  {
    return a1[2].i64[0] == a2[2].i64[0];
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t _s11WeatherMaps0A18MapStallStatisticsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return a1[2] == a2[2];
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

__n128 WeatherMapSessionStatistics.responseCounters.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

Swift::String __swiftcall WeatherMapSessionStatistics.description()()
{
  sub_220FC35C0();
  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60]();
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60](0xD00000000000001ALL);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  MEMORY[0x223D9BD60](47, 0xE100000000000000);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  MEMORY[0x223D9BD60](47, 0xE100000000000000);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_6_32();
  v0 = OUTLINED_FUNCTION_0_87();
  MEMORY[0x223D9BD60](v0);

  MEMORY[0x223D9BD60](29549, 0xE200000000000000);
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall WeatherMapStallStatistics.description()()
{
  sub_220FC35C0();
  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60]();
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_11_23();
  MEMORY[0x223D9BD60](0xD000000000000013);
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_7_30();

  OUTLINED_FUNCTION_6_32();
  v0 = OUTLINED_FUNCTION_0_87();
  MEMORY[0x223D9BD60](v0);

  MEMORY[0x223D9BD60](29549, 0xE200000000000000);
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_220F96DE8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_220F96E34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_220F96DE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_220F96EB0()
{
  sub_220FC1180();

  OUTLINED_FUNCTION_5_37();
}

uint64_t sub_220F96F2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v4 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  v5 = sub_220F1AE38(a2);
  if (__OFADD__(*(v4 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9F9D0);
  if ((sub_220FC3710() & 1) == 0)
  {
LABEL_5:
    *(a1 + 24) = v4;
    if ((v8 & 1) == 0)
    {
      sub_220E98744(v7, a2, 0, v4);
    }

    v11 = *(v4 + 56);
    v12 = *(v11 + 8 * v7);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v11 + 8 * v7) = v14;
      return swift_endAccess();
    }

    goto LABEL_10;
  }

  v9 = sub_220F1AE38(a2);
  if ((v8 & 1) == (v10 & 1))
  {
    v7 = v9;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

uint64_t sub_220F97060()
{
  sub_220FC1180();

  OUTLINED_FUNCTION_5_37();
}

uint64_t sub_220F970E0(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  v7 = sub_220F1AE34(a2 & 1);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9C0);
  if ((sub_220FC3710() & 1) == 0)
  {
LABEL_5:
    *(a1 + 40) = v6;
    if ((v10 & 1) == 0)
    {
      sub_220E98380(v9, a2 & 1, 0, 0, v6);
    }

    v13 = (*(v6 + 56) + 16 * v9);
    if (!__OFADD__(*v13, a3))
    {
      *v13 += a3;
      v14 = v13[1];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        v13[1] = v16;
        return swift_endAccess();
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_220F1AE34(a2 & 1);
  if ((v10 & 1) == (v12 & 1))
  {
    v9 = v11;
    goto LABEL_5;
  }

LABEL_13:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

void sub_220F97234(void *a1@<X8>)
{
  v3 = sub_220F977D4(0, 1);
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 24);
  if (*(v6 + 16) && (v7 = sub_220F1AE38(2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v10)
  {
    sub_220F1AE38(4);
    if (v11)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = __OFADD__(v9, v10);
  v13 = v9 + v10;
  if (v12)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_51();
  if (v14)
  {
    sub_220F1AE38(5);
    if (v15)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v14 = 0;
    }
  }

  v12 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v12)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_51();
  if (v17)
  {
    sub_220F1AE38(6);
    if (v18)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v12)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_2_51();
  if (v20 && (v21 = sub_220F1AE38(0), (v22 & 1) != 0))
  {
    v23 = *(*(v6 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v24 && (v25 = sub_220F1AE38(3), (v26 & 1) != 0))
  {
    v27 = *(*(v6 + 56) + 8 * v25);
  }

  else
  {
    v27 = 0;
  }

  OUTLINED_FUNCTION_2_51();
  if (v28)
  {
    sub_220F1AE38(1);
    if (v29)
    {
      OUTLINED_FUNCTION_10_30();
    }

    else
    {
      v28 = 0;
    }
  }

  if (v5)
  {
    v30 = -1;
  }

  else
  {
    v30 = v3;
  }

  *a1 = v23;
  a1[1] = v27;
  a1[2] = v28;
  a1[3] = v19;
  a1[4] = v30;
}

void sub_220F973C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_220FC1350();
  v6 = aBlock[6];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v5;
  aBlock[4] = sub_220F981B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F97760;
  aBlock[3] = &block_descriptor_28;
  v8 = _Block_copy(aBlock);

  [v6 getAllTasksWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_220F974FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v31 = a2;
  v32 = sub_220FBFD70();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220F43CDC(a1);
  result = sub_220F43CDC(a1);
  v29 = a4;
  v30 = a3;
  v28 = v11;
  if (result)
  {
    v13 = result;
    if (result >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = (v7 + 8);
      while (1)
      {
        v17 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x223D9CB30](v15, a1) : *(a1 + 8 * v15 + 32);
        v18 = v17;
        v19 = [v17 _incompleteTaskMetrics];
        v20 = [v19 taskInterval];
        sub_220FBFD50();

        sub_220FBFD60();
        v22 = v21;
        result = (*v16)(v10, v32);
        v23 = v22 * 1000.0;
        if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v23 <= -9.22337204e18)
        {
          goto LABEL_21;
        }

        if (v23 >= 9.22337204e18)
        {
          goto LABEL_22;
        }

        if (v23 >= 10001)
        {
          if (__OFADD__(v14++, 1))
          {
            goto LABEL_23;
          }

          sub_220F97060();
        }

        ++v15;

        if (v13 == v15)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
LABEL_16:
    v25 = sub_220F977D4(1, 1);
    if (v26)
    {
      v27 = -1;
    }

    else
    {
      v27 = v25;
    }

    v33[0] = v28;
    v33[1] = v14;
    v33[2] = v27;
    return v30(v33);
  }

  return result;
}

uint64_t sub_220F97760(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_220F981DC();
  v2 = sub_220FC2970();

  v1(v2);
}

uint64_t sub_220F977D4(char a1, char a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = 0;
  v8 = *(v4 + 40);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = a1 & 1;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v14 >= v12)
        {
          return 0;
        }

        v11 = *(v8 + 64 + 8 * v14);
        ++v7;
        if (v11)
        {
          v7 = v14;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_22:
      v23 = -1;
      if ((a2 & 1) == 0)
      {
        return v23;
      }

      goto LABEL_23;
    }

LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v3 = *(*(v8 + 48) + (v15 | (v7 << 6)));
    if (v3 == v13)
    {
      v16 = *(v4 + 40);
      if (*(v16 + 16))
      {
        result = sub_220F1AE34(v3);
        if (v18)
        {
          break;
        }
      }
    }
  }

  v19 = (*(v16 + 56) + 16 * result);
  v20 = v19[1];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = *v19;
  if (v21 != 0x8000000000000000 || v20 != -1)
  {
    v23 = v21 / v20;
    if ((a2 & 1) == 0)
    {
      return v23;
    }

LABEL_23:

    v24 = sub_220F96E60();
    v26 = sub_220F96A18(v27, v3);
    if ((*(v25 + 16) & 1) == 0)
    {
      *v25 = 0;
      *(v25 + 8) = 0;
    }

    (v26)(v27, 0);
    (v24)(v28, 0);

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F97998()
{

  return v0;
}

uint64_t sub_220F979D8()
{
  sub_220F97998();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_220F97A18(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_220F97AF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t (*sub_220F97BC8(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_220F98160(v4);
  v4[9] = sub_220F97D4C(v4 + 4, a2);
  return sub_220F9826C;
}

uint64_t (*sub_220F97C58(void *a1, char a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_220F98188(v4);
  v4[9] = sub_220F97F7C(v4 + 4, a2 & 1);
  return sub_220F97CE8;
}

void sub_220F97CEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_220F97D4C(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[1] = a2;
  v6[2] = v2;
  v7 = *v2;
  v8 = sub_220F1937C();
  *(v6 + 32) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D980);
  if (sub_220FC3710())
  {
    v12 = sub_220F1937C();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    type metadata accessor for MTLPixelFormat(0);
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[3] = v10;
  if (v11)
  {
    v14 = *(*(*v3 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *v6 = v14;
  return sub_220F97E74;
}

void sub_220F97E74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_220E9833C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    type metadata accessor for MTLPixelFormat(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9E0);
    sub_220E1A1FC(&qword_27CF9F390, type metadata accessor for MTLPixelFormat);
    sub_220FC3730();
  }

  free(v1);
}

void (*sub_220F97F7C(void *a1, char a2))(__int128 **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[3] = v2;
  *(v6 + 17) = a2;
  v7 = *v2;
  v8 = sub_220F1AE34(a2 & 1);
  *(v6 + 18) = v9 & 1;
  v10 = v9 ^ 1;
  if (__OFADD__(*(v7 + 16), (v9 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9C0);
  if (sub_220FC3710())
  {
    v13 = sub_220F1AE34(a2 & 1);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[4] = v11;
  v15 = 0uLL;
  if (v12)
  {
    v15 = *(*(*v3 + 56) + 16 * v11);
  }

  *v6 = v15;
  *(v6 + 16) = v10 & 1;
  return sub_220F980B4;
}

void sub_220F980B4(__int128 **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 18);
  if ((*a1)[1])
  {
    if (*(*a1 + 18))
    {
      sub_220E1E1FC();
      sub_220FC3730();
    }
  }

  else
  {
    v4 = *(v1 + 4);
    v5 = **(v1 + 3);
    if (v3)
    {
      *(*(v5 + 56) + 16 * v4) = v2;
    }

    else
    {
      sub_220E98380(v4, *(v1 + 17) & 1, v2, *(&v2 + 1), v5);
    }
  }

  free(v1);
}

uint64_t (*sub_220F98160(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_220F98244;
}

void (*sub_220F98188(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_220F981B0;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220F981DC()
{
  result = qword_27CF9F9C8;
  if (!qword_27CF9F9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9F9C8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_32()
{

  JUMPOUT(0x223D9BD60);
}

BOOL sub_220F982A8()
{
  v0 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  sub_220FC07D0();
  (*(v2 + 104))(v7, *MEMORY[0x277CE3390], v0);
  sub_220F995E8();
  v12 = sub_220FC26B0();
  v13 = *(v2 + 8);
  v13(v7, v0);
  v13(v11, v0);
  return (v12 & 1) == 0;
}

uint64_t sub_220F983E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4();
  v30 = v7 - v8;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_12_0();
  v29 = v11;
  v12 = sub_220FC0800();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  result = sub_220FC0980();
  v18 = 0;
  v31 = *(result + 16);
  v28 = *MEMORY[0x277CE3390];
  v19 = (v4 + 104);
  v20 = (v4 + 8);
  v27 = v19;
  while (1)
  {
    if (v31 == v18)
    {

      v24 = 1;
      v25 = a1;
      return __swift_storeEnumTagSinglePayload(v25, v24, 1, v12);
    }

    if (v18 >= *(result + 16))
    {
      break;
    }

    v21 = result;
    (*(v14 + 16))(v1, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v12);
    sub_220FC07D0();
    (*v27)(v30, v28, v2);
    sub_220F995E8();
    v22 = sub_220FC26B0();
    v23 = *v20;
    (*v20)(v30, v2);
    v23(v29, v2);
    if ((v22 & 1) == 0)
    {

      v25 = a1;
      (*(v14 + 32))(a1, v1, v12);
      v24 = 0;
      return __swift_storeEnumTagSinglePayload(v25, v24, 1, v12);
    }

    ++v18;
    (*(v14 + 8))(v1, v12);
    result = v21;
  }

  __break(1u);
  return result;
}

void sub_220F986A0()
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  sub_220FC07F0();
  sub_220FC0210();
  v3 = OUTLINED_FUNCTION_10_31();
  v4(v3);
  if (v0 <= 0.0)
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_46(v0 / 60.0);
  if (!v7 & v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_220F987A4@<X0>(uint64_t a1@<X8>)
{
  v59[0] = a1;
  v67 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v69 = v2;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  v66 = v5 - v6;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_12_0();
  v65 = v9;
  v72 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v70 = v10;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_12_0();
  v73 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630);
  OUTLINED_FUNCTION_6();
  v29 = v28;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30, v31);
  v33 = v59 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C0) - 8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_62();
  (*(v29 + 16))(v33, v74, v27);
  OUTLINED_FUNCTION_3_49(&qword_2812CA250);
  sub_220FC28E0();
  v37 = *(v34 + 44);
  v38 = v27;
  v39 = OUTLINED_FUNCTION_5_38(&qword_2812CA248);
  v40 = v18;
  v74 = (v18 + 32);
  ++v70;
  v71 = (v18 + 16);
  v62 = *MEMORY[0x277CE3390];
  v60 = (v69 + 8);
  v61 = (v69 + 104);
  v41 = v37;
  v42 = (v40 + 8);
  v63 = v16;
  v64 = v15;
  v59[1] = v39;
  while (1)
  {
    sub_220FC2CE0();
    if (*(v1 + v41) == v75[0])
    {
      sub_220E45374(v1, &qword_27CF9E6C0);
      v56 = 1;
      v57 = v59[0];
      return __swift_storeEnumTagSinglePayload(v57, v56, 1, v16);
    }

    v43 = sub_220FC2D00();
    v44 = v73;
    (*v71)(v73);
    v43(v75, 0);
    sub_220FC2CF0();
    v69 = *v74;
    (v69)(v23, v44, v16);
    sub_220FC0520();
    sub_220FC0210();
    v46 = v45;
    (*v70)(v15, v72);
    if (v46 >= -3600.0)
    {
      v47 = v65;
      sub_220FC0500();
      v49 = v66;
      v48 = v67;
      (*v61)(v66, v62, v67);
      sub_220F995E8();
      v68 = sub_220FC26B0();
      v50 = v41;
      v51 = v38;
      v52 = v23;
      v53 = *v60;
      v54 = v49;
      v16 = v63;
      (*v60)(v54, v48);
      v55 = v47;
      v15 = v64;
      v53(v55, v48);
      v23 = v52;
      v38 = v51;
      v41 = v50;
      if ((v68 & 1) == 0)
      {
        break;
      }
    }

    (*v42)(v23, v16);
  }

  sub_220E45374(v1, &qword_27CF9E6C0);
  v57 = v59[0];
  (v69)(v59[0], v23, v16);
  v56 = 0;
  return __swift_storeEnumTagSinglePayload(v57, v56, 1, v16);
}

void sub_220F98D08()
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  sub_220FC0520();
  sub_220FC0210();
  v3 = OUTLINED_FUNCTION_10_31();
  v4(v3);
  if (v0 <= 0.0)
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_46(v0 / 3600.0);
  if (!v7 & v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_2_24();
  if (!v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_220F98E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_62();
  v3 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - v13;
  sub_220FC07E0();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_220E45374(v0, &qword_27CF9EBC0);
LABEL_5:
    sub_220FC07F0();
    v16 = sub_220FC01F0();
    (*(v5 + 8))(v10, v3);
    return v16 & 1;
  }

  (*(v5 + 32))(v14, v0, v3);
  v15 = sub_220FC01F0();
  (*(v5 + 8))(v14, v3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = 0;
  return v16 & 1;
}

void Forecast<>.numberOfHoursWithPrecipitation(withinHoursFromNow:minimumChance:)(uint64_t a1, double a2)
{
  v70 = a1;
  v69 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v71 = v5;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  v68 = v8 - v9;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_12_0();
  v67 = v12;
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v76 = v13;
  v77 = v14;
  MEMORY[0x28223BE20](v13, v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  v16 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_3();
  v75 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630);
  OUTLINED_FUNCTION_6();
  v25 = v24;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E6C0) - 8;
  OUTLINED_FUNCTION_5();
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v63 - v34;
  (*(v25 + 16))(v29, v2, v23, v33);
  v36 = v23;
  OUTLINED_FUNCTION_3_49(&qword_2812CA250);
  sub_220FC28E0();
  v37 = *(v30 + 44);
  v38 = OUTLINED_FUNCTION_5_38(&qword_2812CA248);
  v39 = 0;
  v74 = (v18 + 16);
  ++v77;
  v65 = *MEMORY[0x277CE3390];
  v64 = (v71 + 104);
  v63 = (v71 + 8);
  v40 = (v18 + 8);
  v66 = v36;
  v72 = v38;
  v73 = v37;
  do
  {
    sub_220FC2CE0();
    if (*&v35[v37] == v78[0])
    {
      sub_220E45374(v35, &qword_27CF9E6C0);
      return;
    }

    v41 = sub_220FC2D00();
    v42 = v75;
    (*v74)(v75);
    v41(v78, 0);
    sub_220FC2CF0();
    sub_220FC0520();
    sub_220FC0210();
    v44 = v43;
    v45 = *v77;
    (*v77)(v3, v76);
    if (v44 < -3600.0)
    {
      goto LABEL_16;
    }

    sub_220FC0520();
    sub_220FC0210();
    v47 = v46;
    v45(v3, v76);
    if (v47 <= 0.0)
    {
      if (v70 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v48 = OUTLINED_FUNCTION_4_46(v47 / 3600.0);
      if (!v50 & v49)
      {
        goto LABEL_22;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_2_24();
      if (!v52)
      {
        goto LABEL_24;
      }

      if (v51 <= 1)
      {
        if (v70 < 1)
        {
          goto LABEL_16;
        }
      }

      else if (v51 > v70)
      {
        goto LABEL_16;
      }
    }

    v53 = v67;
    sub_220FC0500();
    v54 = v16;
    v56 = v68;
    v55 = v69;
    (*v64)(v68, v65, v69);
    sub_220F995E8();
    LODWORD(v71) = sub_220FC26B0();
    v57 = *v63;
    v58 = v56;
    v16 = v54;
    v42 = v75;
    (*v63)(v58, v55);
    v57(v53, v55);
    if (v71)
    {
LABEL_16:
      (*v40)(v42, v16);
      v59 = 0;
      goto LABEL_17;
    }

    sub_220FC0510();
    v62 = v61;
    (*v40)(v42, v16);
    v59 = v62 >= a2;
LABEL_17:
    v60 = __OFADD__(v39, v59);
    v39 += v59;
    v37 = v73;
  }

  while (!v60);
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_220F99598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E630);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220F995E8()
{
  result = qword_2812CA258;
  if (!qword_2812CA258)
  {
    sub_220FC0820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA258);
  }

  return result;
}

id sub_220F99664()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2812CE4B0 = result;
  return result;
}

unint64_t MapLocationAccessibilityModel.OverlayDescriptionKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

WeatherMaps::MapLocationAccessibilityModel::OverlayDescriptionKey_optional __swiftcall MapLocationAccessibilityModel.OverlayDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220FC37A0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220F997C8@<X0>(unint64_t *a1@<X8>)
{
  result = MapLocationAccessibilityModel.OverlayDescriptionKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MapLocationAccessibilityModel.accessibilityDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription);

  return v1;
}

uint64_t MapLocationAccessibilityModel.overlayDescriptionKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_overlayDescriptionKey);

  return v1;
}

uint64_t MapLocationAccessibilityModel.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_expiration;
  v4 = sub_220FC02B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_220F99AAC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_220FC02B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_location] = a1;
  v16 = &v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = 0xD000000000000022;
  v18 = "n";
  switch(v15)
  {
    case 1:
      v18 = "ibilityDescription";
      v17 = 0xD000000000000025;
      break;
    case 2:
      v18 = "essibilityDescription";
      v17 = 0xD000000000000023;
      break;
    case 3:
      v18 = "sibilityDescription";
      v17 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  v19 = &v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_overlayDescriptionKey];
  *v19 = v17;
  v19[1] = v18 | 0x8000000000000000;
  v20 = a1;
  sub_220FC0200();
  (*(v11 + 32))(&v4[OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_expiration], v14, v10);
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id MapLocationAccessibilityModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapLocationAccessibilityModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_220F99D38()
{
  result = qword_27CF9FA00;
  if (!qword_27CF9FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FA00);
  }

  return result;
}

uint64_t type metadata accessor for MapLocationAccessibilityModel()
{
  result = qword_2812C6458;
  if (!qword_2812C6458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F99E84()
{
  result = sub_220FC02B0();
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

_BYTE *storeEnumTagSinglePayload for MapLocationAccessibilityModel.OverlayDescriptionKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_220F9A02C()
{
  if (v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v3 = sub_220FC26C0();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v1 = objc_msgSendSuper2(&v5, sel_actionForKey_, v3);

  return v1;
}

id sub_220F9A134()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_220F9A1A0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_220FC3920();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_220F9A288(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_220F9A350@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_220FC0090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];

  v13 = sub_220FC2970();
  sub_220EF539C(v13, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_220F9A55C(v5);
    v14 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_220FC0060();
    (*(v7 + 8))(v10, v6);
    v14 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v6);
}

uint64_t sub_220F9A55C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F9A5C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220F9A604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220F9A698(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 50))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (*(a1 + 48) & 0x3E00 | (*(a1 + 48) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 48) >> 1))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_220F9A6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

void sub_220F9A7CC()
{
  sub_220F9A854();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220F9A854()
{
  if (!qword_27CF9FA20)
  {
    type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF9FA20);
    }
  }
}

unint64_t sub_220F9A948()
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
  if (v1 <= 0x3F)
  {
    result = sub_220E31740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_220F9AA1C()
{
  sub_220F9AB28();
  if (v0 <= 0x3F)
  {
    sub_220F9AB8C();
    if (v1 <= 0x3F)
    {
      sub_220F322EC(319, &qword_27CF9D198);
      if (v2 <= 0x3F)
      {
        sub_220F322EC(319, &qword_27CF9FA58);
        if (v3 <= 0x3F)
        {
          type metadata accessor for WeatherMapAnnotationBackground(319);
          if (v4 <= 0x3F)
          {
            sub_220E31740();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_220F9AB28()
{
  if (!qword_27CF9FA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CA78);
    v0 = sub_220FC2A10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9FA48);
    }
  }
}

void sub_220F9AB8C()
{
  if (!qword_27CF9FA50)
  {
    v0 = sub_220FC2D30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9FA50);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_19(*(a1 + 8));
  }

  type metadata accessor for WeatherMapAnnotationBackground(0);
  v5 = OUTLINED_FUNCTION_2_52(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_0_88();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for WeatherMapAnnotationBackground(0);
    v5 = OUTLINED_FUNCTION_2_52(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_220F9AD10()
{
  sub_220F322EC(319, &qword_2812C5DC0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RenderingMode(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WeatherMapAnnotationBackground(319);
      if (v2 <= 0x3F)
      {
        sub_220E31740();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_220F9ADEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_220F9AE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F9AE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_220F9AEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F9AF24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model;
  swift_beginAccess();
  sub_220E3D224(a1, v1 + v3);
  swift_endAccess();
  sub_220F9AFA4();
  [v1 setNeedsDisplay];
  OUTLINED_FUNCTION_0_89();
  return sub_220F9BAC4(a1, v4);
}

void sub_220F9AFA4()
{
  v1 = v0;
  v38 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel(0);
  MEMORY[0x28223BE20](v38, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMapAnnotationBackground(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model;
  swift_beginAccess();
  sub_220F9BA04(&v1[v21], v20, type metadata accessor for WeatherMapAnnotationContentViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220F9BA64(v20, v8, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel);
    sub_220F9BA04(&v8[*(v5 + 28)], v12, type metadata accessor for WeatherMapAnnotationBackground);
    sub_220F85050(v12);
    v26 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27)
    {
      swift_endAccess();
      [v27 removeFromSuperlayer];
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
      v29 = v8;
LABEL_9:
      sub_220F9BAC4(v29, v28);
LABEL_15:
      v36 = *&v1[v26];
      *&v1[v26] = 0;

      return;
    }

    v34 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleIconModel;
    v35 = v8;
LABEL_14:
    sub_220F9BAC4(v35, v34);
    swift_endAccess();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_220F9BA64(v20, v4, type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel);
    sub_220F9BA04(&v4[*(v38 + 28)], v12, type metadata accessor for WeatherMapAnnotationBackground);
    sub_220F85050(v12);
    v26 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
    swift_beginAccess();
    v30 = *&v1[v26];
    if (v30)
    {
      swift_endAccess();
      [v30 removeFromSuperlayer];
      v28 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
      v29 = v4;
      goto LABEL_9;
    }

    v34 = type metadata accessor for WeatherMapAnnotationContentViewModel.TitleWithHeaderFooterModel;
    v35 = v4;
    goto LABEL_14;
  }

  sub_220F9BA64(v20, v16, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
  sub_220F9BA04(&v16[*(v13 + 36)], v12, type metadata accessor for WeatherMapAnnotationBackground);
  sub_220F85050(v12);
  v23 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
  swift_beginAccess();
  v24 = *&v1[v23];
  if (v24)
  {
    v25 = v24;
    sub_220F9B73C(v25, v16);
  }

  else
  {
    v31 = [objc_allocWithZone(type metadata accessor for WeatherMapCircularGradientLayer()) init];
    v32 = *&v1[v23];
    *&v1[v23] = v31;
    v33 = v31;

    sub_220F9B73C(v33, v16);
    v25 = [v1 layer];
    [v25 addSublayer_];
  }

  sub_220F9BAC4(v16, type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel);
}

char *sub_220F9B48C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  *&v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer] = 0;
  sub_220F9BA04(a1, &v1[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_model], type metadata accessor for WeatherMapAnnotationContentViewModel);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 56.0, 56.0);
  v6 = *&v5[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView];
  v7 = v5;
  [v7 addSubview_];
  sub_220F9AFA4();

  OUTLINED_FUNCTION_0_89();
  sub_220F9BAC4(a1, v8);
  return v7;
}

void sub_220F9B58C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F9B638()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC11WeatherMaps41WeatherMapAnnotationContentBackgroundView_scaleLayer;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }
}

id sub_220F9B73C(void *a1, uint64_t a2)
{

  sub_220EC117C(v4);
  v5 = *(a2 + 56);
  v6 = *(a2 + 48);
  if (v5)
  {
    v6 = 0.0;
  }

  sub_220EC10C0(v6);
  v7 = *(a2 + *(type metadata accessor for WeatherMapAnnotationContentViewModel.ScaleModel(0) + 44));
  sub_220EC10DC(v7);
  result = sub_220EC1160(v5 ^ 1u);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    sub_220EC1140(v9, v10);
    v11 = objc_opt_self();
    v12 = [v11 appearance];
    v13 = [v12 semanticContentAttribute];

    result = [v11 userInterfaceLayoutDirectionForSemanticContentAttribute_];
    if (result == 1)
    {
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      CATransform3DMakeScale(&v15, -1.0, 1.0, Width);
      return [a1 setTransform_];
    }
  }

  return result;
}

uint64_t type metadata accessor for WeatherMapAnnotationContentBackgroundView()
{
  result = qword_27CF9FA80;
  if (!qword_27CF9FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F9B95C()
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

uint64_t sub_220F9BA04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F9BA64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220F9BAC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F9BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v25 - v11;
  sub_220E6ED2C(a3, v25 - v11);
  v13 = sub_220FC2AE0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_220F9D97C(v12);
  }

  else
  {
    sub_220FC2AD0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_220FC2A30();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_220FC2770() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_220F9D97C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220F9D97C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_220F9BDD8()
{
  sub_220FC3A40();
  sub_220E2DC10(v2, *v0);
  return sub_220FC3A90();
}

uint64_t sub_220F9BE30()
{
  if (qword_27CF9C1C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v0 = 0;
  v1 = off_27CF9FA90;
  v2 = *(off_27CF9FA90 + 2);
  v3 = off_27CF9FA90 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if (v2)
    {
      v5 = v1[2];
      if (!v5)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v17 = 0;
      MEMORY[0x223D9DE10](&v17, 8);
      v6 = (v17 * v5) >> 64;
      if (v5 > v17 * v5)
      {
        v7 = -v5 % v5;
        if (v7 > v17 * v5)
        {
          do
          {
            v17 = 0;
            MEMORY[0x223D9DE10](&v17, 8);
          }

          while (v7 > v17 * v5);
          v6 = (v17 * v5) >> 64;
        }
      }

      if (v6 >= v1[2])
      {
        goto LABEL_18;
      }

      v8 = &v3[16 * v6];
      v10 = *v8;
      v9 = *(v8 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F37E44(0, *(v4 + 16) + 1, 1, v4);
        v4 = v14;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_220F37E44(v11 > 1, v12 + 1, 1, v4);
        v4 = v15;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    ++v0;
  }

  while (v0 != 16);
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBD0);
  sub_220F9D7D0();
  return sub_220FC28B0();
}

uint64_t AsyncTaskOperation.operationID.getter()
{
  v1 = *(v0 + qword_27CF9FA98);

  return v1;
}

void *sub_220F9C030@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 8);
  result = sub_220F9C148();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    result[2] = v4;
    result[3] = v7;
    result[4] = v8;
    v9 = sub_220F9D7A8;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_220F9C0AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_220F9D780;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_220E1AADC(v4);
  return sub_220F9C1A4(v8, v7);
}

uint64_t sub_220F9C148()
{
  v1 = (v0 + qword_27CF9FAA0);
  swift_beginAccess();
  v2 = *v1;
  sub_220E1AADC(*v1);
  return v2;
}

uint64_t sub_220F9C1A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CF9FAA0);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_220E2DD2C(v6);
}

void sub_220F9C264()
{
  v1 = sub_220FC26C0();
  [v0 willChangeValueForKey_];
}

void sub_220F9C2C0()
{
  v1 = sub_220FC26C0();
  [v0 didChangeValueForKey_];
}

void sub_220F9C32C(char a1)
{
  sub_220F9C264();
  *(v1 + qword_27CF9FAB0) = a1;

  sub_220F9C2C0();
}

uint64_t sub_220F9C36C()
{
  v1 = sub_220FC1450();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v21 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *&v10 = MEMORY[0x28223BE20](v8 - 8, v9).n128_u64[0];
  v12 = &v21 - v11;
  if ([v0 isCancelled])
  {
    result = sub_220F9C148();
    if (result)
    {
      v14 = result;
      v15 = sub_220FC12C0();
      sub_220F9D738(&qword_27CF9FAA8, MEMORY[0x277D6CD00]);
      v16 = swift_allocError();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D6CCF8], v15);
      *v7 = v16;
      swift_storeEnumTagMultiPayload();
      v14(v7);
      sub_220E2DD2C(v14);
      return (*(v3 + 8))(v7, v1);
    }
  }

  else
  {
    sub_220F9C32C(1);
    v18 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v0;
    v20 = v0;
    sub_220F9BB1C(0, 0, v12, &unk_220FD9268, v19);
  }

  return result;
}

uint64_t sub_220F9C610()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v4 = v1;
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_220F9C77C;

  return v7(sub_220F9DA7C, v2);
}

uint64_t sub_220F9C77C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_220F9C884(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220F9C930;

  return sub_220F9C5F0(a1, v3, v4, v5);
}

uint64_t sub_220F9C930()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void (*sub_220F9CA1C(uint64_t a1))(uint64_t)
{
  sub_220F9C32C(2);
  result = sub_220F9C148();
  if (result)
  {
    v3 = result;
    result(a1);

    return sub_220E2DD2C(v3);
  }

  return result;
}

void sub_220F9CA94(void *a1)
{
  v1 = a1;
  sub_220F9C36C();
}

uint64_t sub_220F9CAE4(void *a1)
{
  v1 = a1;
  v2 = sub_220F9CB18();

  return v2 & 1;
}

id sub_220F9CB18()
{
  if (v0[qword_27CF9FAB0])
  {
    return 0;
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncTaskOperation();
  return objc_msgSendSuper2(&v2, sel_isReady);
}

id sub_220F9CCA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_220FC2C00();

  return v3;
}

id AsyncTaskOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncTaskOperation.init()()
{
  v1 = &v0[qword_27CF9FA98];
  *v1 = sub_220F9BE30();
  v1[1] = v2;
  v3 = &v0[qword_27CF9FAA0];
  *v3 = 0;
  v3[1] = 0;
  v0[qword_27CF9FAB0] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AsyncTaskOperation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AsyncTaskOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncTaskOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220F9CEA8(uint64_t a1)
{

  v2 = *(a1 + qword_27CF9FAA0);

  return sub_220E2DD2C(v2);
}

uint64_t dispatch thunk of AsyncTaskOperation.perform(completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220F9DA84;

  return v9(a1, a2);
}

_BYTE *sub_220F9D0F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220F9D1F0()
{
  result = sub_220FC27E0();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_220F9D900(result, 0);
  v3 = sub_220F9D834(&v4, v2 + 4, v1, 0xD000000000000010, 0x8000000220FE72D0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  off_27CF9FA90 = v2;
  return result;
}

uint64_t sub_220F9D290(uint64_t a1)
{
  v2 = sub_220FC0460();
  OUTLINED_FUNCTION_6();
  v38 = v3;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v42 = &v33 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBB8);
  result = sub_220FC3590();
  v12 = result;
  v37 = *(a1 + 16);
  if (!v37)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v41 = result + 56;
  v14 = *(v38 + 80);
  v35 = a1;
  v36 = a1 + ((v14 + 32) & ~v14);
  v40 = v38 + 16;
  v15 = (v38 + 8);
  v34 = (v38 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v38 + 72);
    v39 = v13 + 1;
    v17 = *(v38 + 16);
    v17(v42, v36 + v16 * v13, v2);
    OUTLINED_FUNCTION_0_90();
    sub_220F9D738(&qword_27CF9FBC0, v18);
    v19 = sub_220FC2640();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v41 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v7, *(v12 + 48) + v21 * v16, v2);
      OUTLINED_FUNCTION_0_90();
      sub_220F9D738(&qword_27CF9FBC8, v26);
      v27 = sub_220FC26B0();
      v28 = *v15;
      (*v15)(v7, v2);
      if (v27)
      {
        result = (v28)(v42, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v29 = v42;
    *(v41 + 8 * v22) = v24 | v23;
    result = (*v34)(*(v12 + 48) + v21 * v16, v29, v2);
    v30 = *(v12 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v32;
LABEL_12:
    v13 = v39;
    a1 = v35;
    if (v39 == v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220F9D5A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D008);
  result = sub_220FC3590();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_220FC3A40();

    sub_220FC27D0();
    result = sub_220FC3A90();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_220FC3940() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_220F9D738(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220F9D7D0()
{
  result = qword_27CF9FBD8;
  if (!qword_27CF9FBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FBD8);
  }

  return result;
}

uint64_t sub_220F9D834(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_220FC2820();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220F9D900(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_220F9D97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F9D9E4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_5(v1);

  return v4(v3);
}

uint64_t sub_220F9DA88(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 32); v1; --v1)
  {
    memcpy(__dst, i, sizeof(__dst));
    sub_220E56868(__dst, &v5);
    sub_220F1505C(v6);
    v3 = v6[0];
    v4 = v6[1];

    sub_220E31784(v6);
    MEMORY[0x223D9BD60](v3, v4);

    result = sub_220E56918(__dst);
    i += 184;
  }

  return result;
}

uint64_t sub_220F9DB44()
{
  v0 = sub_220FC37A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220F9DB90(char a1)
{
  if (!a1)
  {
    return 0x6F70707553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x707553796C6C7566;
}

uint64_t sub_220F9DC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F9DB44();
  *a1 = result;
  return result;
}

uint64_t sub_220F9DC54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F9DB90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_220F9DC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v8 = sub_220FC17A0();
  __swift_project_value_buffer(v8, qword_2812C5ED0);

  sub_220EA10E4(a2, a3);
  v9 = sub_220FC1780();
  v10 = sub_220FC2E30();
  sub_220E5E3D0(a2, a3);

  v11 = &qword_2812C8000;
  if (os_log_type_enabled(v9, v10))
  {
    v44 = v10;
    v45 = a1;
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v12 = 136447234;
    v13 = (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion);
    swift_beginAccess();
    v14 = v13[3];
    if (v14)
    {
      v15 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v16 = v15[1];
      v17 = v15[2];
      v47 = *v15;
      v48 = v16;

      sub_220F9DA88(v17);
      v18 = v47;
      v19 = v48;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v47 = v18;
    v48 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
    v20 = sub_220FC2750();
    v22 = sub_220E20FF8(v20, v21, &v46);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2082;
    v23 = v13[3];
    if (v23)
    {
      v24 = __swift_project_boxed_opaque_existential_1(v13, v23);
      v25 = v24[1];
      v26 = v24[2];
      v47 = *v24;
      v48 = v25;

      sub_220F9DA88(v26);
      v27 = v47;
      v28 = v48;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v47 = v27;
    v48 = v28;
    v29 = sub_220FC2750();
    v31 = sub_220E20FF8(v29, v30, &v46);

    *(v12 + 14) = v31;
    *(v12 + 22) = 2050;
    *(v12 + 24) = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel);
    *(v12 + 32) = 2082;
    v47 = a2;
    v48 = a3;
    sub_220EA10E4(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
    v32 = sub_220FC2750();
    v34 = sub_220E20FF8(v32, v33, &v46);

    *(v12 + 34) = v34;
    *(v12 + 42) = 2082;
    v11 = &qword_2812C8000;
    v35 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8);
    v47 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode);
    v48 = v35;
    sub_220EA10E4(v47, v35);
    v36 = sub_220FC2750();
    v38 = sub_220E20FF8(v36, v37, &v46);

    *(v12 + 44) = v38;
    _os_log_impl(&dword_220E15000, v9, v44, "Metadata: Updating active region. activeRegion=%{public}s, currentActiveRegion=%{public}s), currentZoomLevel=%{public}f, activeCountryCode=%{public}s, currentActiveCountryCode=%{public}s", v12, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v43, -1, -1);
    MEMORY[0x223D9DDF0](v12, -1, -1);

    a1 = v45;
  }

  else
  {
  }

  v39 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion;
  swift_beginAccess();
  sub_220FA3168(a1, v4 + v39);
  swift_endAccess();
  v40 = (v4 + v11[175]);
  v41 = *v40;
  v42 = v40[1];
  *v40 = a2;
  v40[1] = a3;
  sub_220EA10E4(a2, a3);
  sub_220E5E3D0(v41, v42);
  sub_220F9E050(0, 0, 0);
}

void sub_220F9E050(int a1, void (*a2)(uint64_t, uint64_t (*)(void), void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ScrubberStore.ViewModel(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v104 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v104 = v8;
    v105 = v15;
    v106 = v12;
    HIDWORD(v111) = a1;
    v110 = a3;
    v18 = (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion);
    swift_beginAccess();
    sub_220ED6038(v18, v118, &qword_27CF9FBE8);
    v108 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
    v117[0] = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind);
    v19 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest);

    sub_220F9EFA0(v118, v117, v19, v119);
    memcpy(v123, v119, 0xB9uLL);

    sub_220E3B2DC(v118, &qword_27CF9FBE8);
    memcpy(v124, v123, sizeof(v124));
    v20 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlaySupportedRegion;
    HIDWORD(v114) = v123[184];
    if ((sub_220E85060() & 1) == 0)
    {
      v21 = BYTE4(v114);
      sub_220FA2C68(v4, SHIDWORD(v114), v17);
      *(v4 + v20) = v21;
    }

    v113 = v17;
    v22 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay;
    memcpy(v120, (v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay), sizeof(v120));
    memcpy(v121, v123, sizeof(v121));
    nullsub_1(v121);
    memcpy(v119, v120, 0xB8uLL);
    memcpy(&v119[23], v121, 0xB8uLL);
    memcpy(v122, v120, 0xB8uLL);
    if (sub_220E2CDDC(v122) == 1)
    {
      memcpy(v117, &v119[23], 0xB8uLL);
      if (sub_220E2CDDC(v117) == 1)
      {
        memcpy(v125, v119, 0xB8uLL);
        sub_220ED6038(v123, v118, &qword_27CF9FBF0);
        sub_220ED6038(v123, v118, &qword_27CF9FBF0);
        sub_220ED6038(v120, v118, &qword_27CF9FBF8);
        sub_220E3B2DC(v125, &qword_27CF9FBF8);
LABEL_16:
        if ((v111 & 0x100000000) == 0)
        {
          sub_220E3B2DC(v123, &qword_27CF9FBF0);
          if (qword_2812C5EC8 != -1)
          {
LABEL_64:
            swift_once();
          }

          v28 = sub_220FC17A0();
          __swift_project_value_buffer(v28, qword_2812C5ED0);
          sub_220ED6038(v123, v119, &qword_27CF9FBF0);
          v29 = sub_220FC1780();
          v30 = sub_220FC2E30();
          sub_220E3B2DC(v123, &qword_27CF9FBF0);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v116[0] = v32;
            *v31 = 136446466;
            memcpy(v118, v124, 0xB8uLL);
            sub_220E568C4();
            v33 = sub_220FC38F0();
            v35 = v34;
            memcpy(v119, v118, 0xB8uLL);
            sub_220E56918(v119);
            v36 = sub_220E20FF8(v33, v35, v116);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2082;
            v118[0] = BYTE4(v114);
            v37 = sub_220FC2750();
            v39 = sub_220E20FF8(v37, v38, v116);

            *(v31 + 14) = v39;
            _os_log_impl(&dword_220E15000, v29, v30, "Metadata: Not notifying delegate, overlay did not change. overlay=%{public}s, supportedRegion=%{public}s", v31, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v32, -1, -1);
            MEMORY[0x223D9DDF0](v31, -1, -1);
          }

          else
          {

            sub_220E3B2DC(v123, &qword_27CF9FBF0);
          }

          if (a2)
          {
            a2(3, nullsub_1, 0);
          }

LABEL_55:
          swift_unknownObjectRelease();
          return;
        }

LABEL_20:
        memcpy(v118, (v4 + v22), 0xB8uLL);
        memcpy((v4 + v22), v121, 0xB8uLL);
        sub_220E3B2DC(v118, &qword_27CF9FBF8);
        v40 = v18[3];
        if (!v40)
        {
          v109 = 0;
          LODWORD(v112) = 1;
LABEL_36:
          if (qword_2812C5EC8 != -1)
          {
LABEL_59:
            swift_once();
          }

          v52 = sub_220FC17A0();
          __swift_project_value_buffer(v52, qword_2812C5ED0);
          sub_220ED6038(v123, v119, &qword_27CF9FBF0);
          v53 = sub_220FC1780();
          v54 = sub_220FC2E30();
          sub_220E3B2DC(v123, &qword_27CF9FBF0);
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v115[0] = v56;
            *v55 = 136446722;
            memcpy(v116, v124, sizeof(v116));
            sub_220E56868(v123, v119);
            sub_220E568C4();
            v57 = sub_220FC38F0();
            v59 = v58;
            memcpy(v119, v116, 0xB8uLL);
            sub_220E56918(v119);
            v60 = sub_220E20FF8(v57, v59, v115);

            *(v55 + 4) = v60;
            *(v55 + 12) = 2082;
            LOBYTE(v116[0]) = BYTE4(v114);
            v61 = sub_220FC2750();
            v63 = sub_220E20FF8(v61, v62, v115);

            *(v55 + 14) = v63;
            *(v55 + 22) = 2050;
            v64 = v109;
            if (v112)
            {
              v64 = 0;
            }

            *(v55 + 24) = v64;
            _os_log_impl(&dword_220E15000, v53, v54, "Metadata: Notifying delegate with new overlay metadata. overlay=%{public}s, supportedRegion=%{public}s, forecastHourCount=%{public}ld", v55, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v56, -1, -1);
            MEMORY[0x223D9DDF0](v55, -1, -1);
          }

          v65 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode);
          v66 = *(v4 + v108);
          v107 = *(v4 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8);
          v108 = v65;
          sub_220EA10E4(v65, v107);
          v67 = sub_220FC1780();
          v68 = sub_220FC2E30();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v119[0] = v70;
            *v69 = 136446466;
            LOBYTE(v116[0]) = v66;
            sub_220E561E0();
            v71 = sub_220FC38F0();
            v73 = sub_220E20FF8(v71, v72, v119);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2082;
            LOBYTE(v116[0]) = BYTE4(v114);
            v74 = sub_220FC2750();
            v76 = sub_220E20FF8(v74, v75, v119);

            *(v69 + 14) = v76;
            _os_log_impl(&dword_220E15000, v67, v68, "Receiving new overlay metadata. Will transition to new overlay. overlayKind=%{public}s, supportedRegion=%{public}s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D9DDF0](v70, -1, -1);
            MEMORY[0x223D9DDF0](v69, -1, -1);
          }

          v77 = v113;
          if ((v112 & 1) == 0)
          {
            v78 = swift_unknownObjectWeakLoadStrong();
            if (v78)
            {
              v79 = *(v78 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
              v80 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
              swift_beginAccess();
              v81 = v105;
              sub_220FA2EDC(v79 + v80, v105, type metadata accessor for ScrubberStore.ViewModel);
              v82 = v81 + *(v104 + 68);
              *v82 = v109;
              *(v82 + 8) = 0;
              v83 = v106;
              sub_220FA2EDC(v81, v106, type metadata accessor for ScrubberStore.ViewModel);

              sub_220EE3AE8(v83);
              sub_220FA2F3C(v81, type metadata accessor for ScrubberStore.ViewModel);
              swift_unknownObjectRelease();
            }
          }

          __swift_project_boxed_opaque_existential_1(v77 + 31, v77[34]);
          v84 = v77[59];
          sub_220FC0AB0();
          sub_220FC0A90();
          if (qword_2812CA238 != -1)
          {
            swift_once();
          }

          sub_220FC0A80();

          v85 = a2;
          if (LOBYTE(v116[0]) == 1)
          {
            LOBYTE(v116[0]) = v66;
            v86 = sub_220EA20A0(v116, v84);
          }

          else
          {
            LOBYTE(v116[0]) = v66;
            v86 = sub_220F5F40C(v116, v84);
          }

          v112 = v86;
          v90 = v87;
          v106 = v88;
          v109 = v89;
          v91 = v87 & 0x100;
          LOBYTE(v116[0]) = v66;
          v92 = v113;
          LODWORD(v105) = *(v113 + 480);
          v93 = *(v113 + 472);
          v94 = swift_allocObject();
          swift_weakInit();
          v95 = swift_allocObject();
          *(v95 + 16) = v94;
          *(v95 + 24) = BYTE4(v111) & 1;
          v96 = v110;
          *(v95 + 32) = v85;
          *(v95 + 40) = v96;
          v97 = BYTE4(v114);
          *(v95 + 48) = BYTE4(v114);

          sub_220F6DA88(v85);
          LOBYTE(v102) = v97;
          v101 = v93;
          LOBYTE(v100) = v105;
          v99 = v107;
          v98 = v108;
          sub_220F640D4(v116, v108, v107, v124, v112, v91 & 0xFFFFFFFE | v90 & 1, v106, v109, v100, v92, &off_283486100, v101, v102, sub_220FA2EC8, v95, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);

          sub_220E5E3D0(v98, v99);
          sub_220E3B2DC(v123, &qword_27CF9FBF0);
          goto LABEL_55;
        }

        v41 = __swift_project_boxed_opaque_existential_1(v18, v40);
        v42 = 0;
        v109 = 0;
        v43 = v41[2];
        v44 = *(v43 + 16);
        v45 = v43 + 32;
        LODWORD(v112) = 1;
        while (2)
        {
          for (i = (v45 + 184 * v42); ; i += 184)
          {
            if (v44 == v42)
            {
              goto LABEL_36;
            }

            if (v42 >= v44)
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (__OFADD__(v42, 1))
            {
              goto LABEL_58;
            }

            memmove(v119, i, 0xB8uLL);
            if (sub_220E435CC(v119) == 2)
            {
              break;
            }

            ++v42;
          }

          v47 = sub_220E22B0C(v119);
          v48 = *(v47 + 152);
          if (*(v47 + 160))
          {
            v48 = 0;
          }

          v49 = __OFSUB__(*v47, v48);
          v50 = *v47 - v48;
          if (v49)
          {
            __break(1u);
          }

          else
          {
            v51 = rint(*(v47 + 8) * v50 / 3600.0);
            if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v51 > -9.22337204e18)
              {
                if (v51 < 9.22337204e18)
                {
                  LODWORD(v112) = 0;
                  v109 = v51;
                  ++v42;
                  continue;
                }

                goto LABEL_63;
              }

LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      memcpy(v116, &v119[23], sizeof(v116));
      if (sub_220E2CDDC(v116) != 1)
      {
        memcpy(v115, &v119[23], sizeof(v115));
        memcpy(v117, &v119[23], 0xB8uLL);
        memcpy(v125, v119, 0xB8uLL);
        sub_220ED6038(v123, v118, &qword_27CF9FBF0);
        sub_220ED6038(v123, v118, &qword_27CF9FBF0);
        sub_220ED6038(v120, v118, &qword_27CF9FBF8);
        sub_220ED6038(v123, v118, &qword_27CF9FBF0);
        sub_220ED6038(v120, v118, &qword_27CF9FBF8);
        v27 = sub_220F17000(v125);
        sub_220E3B2DC(v123, &qword_27CF9FBF0);
        sub_220E3B2DC(v120, &qword_27CF9FBF8);
        sub_220E3B2DC(v115, &qword_27CF9FBF8);
        memcpy(v118, v119, 0xB8uLL);
        sub_220E3B2DC(v118, &qword_27CF9FBF8);
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    memcpy(v118, v119, sizeof(v118));
    sub_220ED6038(v123, v117, &qword_27CF9FBF0);
    sub_220ED6038(v123, v117, &qword_27CF9FBF0);
    sub_220ED6038(v120, v117, &qword_27CF9FBF8);
    sub_220E3B2DC(v118, &qword_27CF9FC00);
    goto LABEL_20;
  }

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v23 = sub_220FC17A0();
  __swift_project_value_buffer(v23, qword_2812C5ED0);
  v24 = sub_220FC1780();
  v25 = sub_220FC2E30();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_220E15000, v24, v25, "Metadata: Not calling delegate - delegate is nil", v26, 2u);
    MEMORY[0x223D9DDF0](v26, -1, -1);
  }

  if (a2)
  {
    a2(3, nullsub_1, 0);
  }
}

void sub_220F9EFA0(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  LOBYTE(v84[0]) = *a2;
  sub_220FA0E08(v84, a1, a3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v84, __src, 0xB9uLL);
  if (sub_220E2CDDC(v84) != 1)
  {
    v71 = v84[0];
    v72 = v84[1];
    v69 = v84[2];
    v70 = v84[3];
    v67 = v84[4];
    v68 = v84[5];
    v65 = v84[6];
    v66 = v84[7];
    v63 = v84[8];
    v64 = v84[9];
    v11 = *(&v84[10] + 1);
    v10 = *&v84[10];
    v12 = *&v84[11];
    v33 = BYTE8(v84[11]);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v34 = sub_220FC17A0();
    __swift_project_value_buffer(v34, qword_2812C5ED0);
    memcpy(v75, __dst, 0xB9uLL);
    sub_220ED6038(v75, v74, &qword_27CF9FBF0);
    v35 = sub_220FC1780();
    v36 = sub_220FC2E30();
    sub_220E3B2DC(__src, &qword_27CF9FC08);
    if (os_log_type_enabled(v35, v36))
    {
      v62 = v33;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v79 = v38;
      *v37 = 136446210;
      *v80 = v71;
      *&v80[16] = v72;
      *&v80[32] = v69;
      *&v80[48] = v70;
      *&v80[64] = v67;
      *&v80[80] = v68;
      *&v80[96] = v65;
      *&v80[112] = v66;
      *&v80[128] = v63;
      *&v80[144] = v64;
      *&v80[160] = v10;
      *&v80[168] = v11;
      *&v80[176] = v12;
      memcpy(v74, __dst, 0xB9uLL);
      sub_220ED6038(v74, v73, &qword_27CF9FBF0);
      sub_220E568C4();
      v39 = sub_220FC38F0();
      v40 = v11;
      v41 = v10;
      v42 = v12;
      v44 = v43;
      memcpy(v73, v80, 0xB8uLL);
      sub_220E56918(v73);
      v45 = sub_220E20FF8(v39, v44, v79);
      v12 = v42;
      v10 = v41;
      v11 = v40;

      *(v37 + 4) = v45;
      _os_log_impl(&dword_220E15000, v35, v36, "Metadata: returning overriden overlay=%{public}s)", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223D9DDF0](v38, -1, -1);
      v46 = v37;
      v33 = v62;
      MEMORY[0x223D9DDF0](v46, -1, -1);

      v24 = v63;
      v23 = v64;
      v26 = v65;
      v25 = v66;
      v28 = v67;
      v27 = v68;
      v30 = v69;
      v29 = v70;
      v32 = v71;
      v31 = v72;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  sub_220ED6038(a1, &v81, &qword_27CF9FBE8);
  if (v82)
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v81, v82)[2];
    LOBYTE(v75[0]) = v8;

    sub_220FA1208(v75, v9, v73);
    memcpy(v74, v73, 0xB8uLL);

    __swift_destroy_boxed_opaque_existential_0(&v81);
    memcpy(v75, v73, 0xB8uLL);
    if (sub_220E2CDDC(v75) != 1)
    {
      v71 = v75[0];
      v72 = v75[1];
      v69 = v75[2];
      v70 = v75[3];
      v67 = v75[4];
      v68 = v75[5];
      v65 = v75[6];
      v66 = v75[7];
      v63 = v75[8];
      v64 = v75[9];
      v11 = *(&v75[10] + 1);
      v10 = *&v75[10];
      v12 = *&v75[11];
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v13 = sub_220FC17A0();
      __swift_project_value_buffer(v13, qword_2812C5ED0);
      memcpy(v80, v74, sizeof(v80));
      sub_220E56868(v80, v79);
      v14 = sub_220FC1780();
      v15 = sub_220FC2E30();
      sub_220E3B2DC(v73, &qword_27CF9FBF8);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v77 = v17;
        *v16 = 136446210;
        *v76 = v71;
        *&v76[16] = v72;
        *&v76[32] = v69;
        *&v76[48] = v70;
        *&v76[64] = v67;
        *&v76[80] = v68;
        *&v76[96] = v65;
        *&v76[112] = v66;
        *&v76[128] = v63;
        *&v76[144] = v64;
        *&v76[160] = v10;
        *&v76[168] = v11;
        *&v76[176] = v12;
        memcpy(v78, v74, sizeof(v78));
        sub_220E56868(v78, v79);
        sub_220E568C4();
        v18 = sub_220FC38F0();
        v19 = v12;
        v21 = v20;
        memcpy(v79, v76, sizeof(v79));
        sub_220E56918(v79);
        v22 = sub_220E20FF8(v18, v21, &v77);
        v12 = v19;

        *(v16 + 4) = v22;
        _os_log_impl(&dword_220E15000, v14, v15, "Metadata: Found supported overlay: %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x223D9DDF0](v17, -1, -1);
        MEMORY[0x223D9DDF0](v16, -1, -1);

        v24 = v63;
        v23 = v64;
        v26 = v65;
        v25 = v66;
        v28 = v67;
        v27 = v68;
        v30 = v69;
        v29 = v70;
        v32 = v71;
        v31 = v72;
        v33 = 2;
        goto LABEL_31;
      }

      v33 = 2;
LABEL_21:
      v32 = v71;
      v31 = v72;
      v30 = v69;
      v29 = v70;
      v28 = v67;
      v27 = v68;
      v26 = v65;
      v25 = v66;
      v24 = v63;
      v23 = v64;
      goto LABEL_31;
    }
  }

  else
  {
    sub_220E3B2DC(&v81, &qword_27CF9FBE8);
  }

  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v47 = sub_220FC17A0();
  __swift_project_value_buffer(v47, qword_2812C5ED0);
  sub_220ED6038(a1, v78, &qword_27CF9FBE8);
  v48 = sub_220FC1780();
  v49 = sub_220FC2E30();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v79 = v51;
    *v50 = 136446210;
    sub_220ED6038(v78, v74, &qword_27CF9FBE8);
    if (*(&v74[1] + 1))
    {
      v52 = __swift_project_boxed_opaque_existential_1(v74, *(&v74[1] + 1));
      v53 = v52[1];
      v54 = v52[2];
      *v80 = *v52;
      *&v80[8] = v53;

      sub_220F9DA88(v54);
      v56 = *&v80[8];
      v55 = *v80;
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      sub_220E3B2DC(v74, &qword_27CF9FBE8);
      v55 = 0;
      v56 = 0;
    }

    *&v74[0] = v55;
    *(&v74[0] + 1) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
    v57 = sub_220FC2750();
    v59 = v58;
    sub_220E3B2DC(v78, &qword_27CF9FBE8);
    v60 = sub_220E20FF8(v57, v59, v79);

    *(v50 + 4) = v60;
    _os_log_impl(&dword_220E15000, v48, v49, "Metadata: No supported overlay found: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x223D9DDF0](v51, -1, -1);
    MEMORY[0x223D9DDF0](v50, -1, -1);
  }

  else
  {

    sub_220E3B2DC(v78, &qword_27CF9FBE8);
  }

  switch(v8)
  {
    case 1:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F539AC();
      break;
    case 3:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220FA2F94(v79);
      memcpy(v80, v79, 0x80uLL);
      sub_220F538F4(v80);
      break;
    case 4:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F53A24();
      break;
    case 5:
      __swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      sub_220F53AB4();
      break;
    default:
      v61 = *__swift_project_boxed_opaque_existential_1((v5 + 96), *(v5 + 120));
      memcpy(v80, (v61 + 16), 0xA1uLL);
      memmove(v74, (v61 + 16), 0xA1uLL);
      sub_220F3D810(v74);
      sub_220E21C98(v80, v79);
      break;
  }

  v32 = v74[0];
  v31 = v74[1];
  v30 = v74[2];
  v29 = v74[3];
  v28 = v74[4];
  v27 = v74[5];
  v26 = v74[6];
  v25 = v74[7];
  v24 = v74[8];
  v23 = v74[9];
  v12 = *&v74[11];
  v33 = 0;
  v11 = *(&v74[10] + 1);
  v10 = *&v74[10];
LABEL_31:
  *a4 = v32;
  *(a4 + 16) = v31;
  *(a4 + 32) = v30;
  *(a4 + 48) = v29;
  *(a4 + 64) = v28;
  *(a4 + 80) = v27;
  *(a4 + 96) = v26;
  *(a4 + 112) = v25;
  *(a4 + 128) = v24;
  *(a4 + 144) = v23;
  *(a4 + 160) = v10;
  *(a4 + 168) = v11;
  *(a4 + 176) = v12;
  *(a4 + 184) = v33;
}

uint64_t sub_220F9F91C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v83 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v80 = &v73 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v73 - v26;
  v28 = *a1;
  v81 = *(a1 + 8);
  v82 = v28;
  LODWORD(a1) = *(a1 + 16);
  v30 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect);
  v31 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 8);
  v32 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 16);
  v33 = *(v1 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 24);
  v34 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  sub_220ED6038(v1 + v34, v27, &unk_27CF9D6D0);
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v35 = sub_220FC17A0();
  __swift_project_value_buffer(v35, qword_2812C5ED0);
  sub_220ED6038(v27, v23, &unk_27CF9D6D0);
  OUTLINED_FUNCTION_7_31();
  v36 = sub_220FC1780();
  v37 = sub_220FC2E30();
  if (os_log_type_enabled(v36, v37))
  {
    v76 = v37;
    v77 = v36;
    v78 = v19;
    v79 = a1;
    a1 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v88 = v75;
    *a1 = 136381699;
    *&v85 = v30;
    *(&v85 + 1) = v31;
    v86 = v32;
    v87 = v33;
    type metadata accessor for MKMapRect(0);
    sub_220FA3120(&qword_2812C5B10, type metadata accessor for MKMapRect);
    v38 = sub_220FC38F0();
    v40 = sub_220E20FF8(v38, v39, &v88);

    *(a1 + 4) = v40;
    *(a1 + 12) = 2160;
    *(a1 + 14) = 1752392040;
    *(a1 + 22) = 2081;
    sub_220ED6038(v23, v15, &unk_27CF9D6D0);
    v41 = sub_220FC1070();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v41);
    if (EnumTagSinglePayload == 1)
    {
      sub_220E3B2DC(v15, &unk_27CF9D6D0);
      v43 = 0uLL;
    }

    else
    {
      sub_220FC0FE0();
      v73 = v47;
      v74 = v48;
      (*(*(v41 - 8) + 8))(v15, v41);
      *&v43 = v73;
      *(&v43 + 1) = v74;
    }

    v85 = v43;
    LOBYTE(v86) = EnumTagSinglePayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC20);
    v49 = sub_220FC2750();
    v51 = v50;
    sub_220E3B2DC(v23, &unk_27CF9D6D0);
    v52 = sub_220E20FF8(v49, v51, &v88);

    *(a1 + 24) = v52;
    *(a1 + 32) = 2160;
    *(a1 + 34) = 1752392040;
    *(a1 + 42) = 2081;
    v53 = v78;
    v54 = v80;
    sub_220ED6038(v78, v80, &unk_27CF9D6D0);
    if (__swift_getEnumTagSinglePayload(v54, 1, v41) == 1)
    {
      sub_220E3B2DC(v54, &unk_27CF9D6D0);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v57 = v54;
      v55 = sub_220FC1040();
      v56 = v58;
      (*(*(v41 - 8) + 8))(v57, v41);
    }

    v46 = v84;
    *&v85 = v55;
    *(&v85 + 1) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
    v59 = sub_220FC2750();
    v61 = v60;
    sub_220E3B2DC(v53, &unk_27CF9D6D0);
    v62 = sub_220E20FF8(v59, v61, &v88);

    *(a1 + 44) = v62;
    v63 = v77;
    _os_log_impl(&dword_220E15000, v77, v76, "Refresh overlay metadata. visibleMapRect=%{private}s, airQualityLocation.coordinate=%{private,mask.hash}s, airQualityLocation.name=%{private,mask.hash}s", a1, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();

    LOBYTE(a1) = v79;
  }

  else
  {

    sub_220E3B2DC(v19, &unk_27CF9D6D0);
    v44 = sub_220E3B2DC(v23, &unk_27CF9D6D0);
    v46 = v84;
  }

  MEMORY[0x28223BE20](v44, v45);
  *(&v73 - 2) = v27;
  *(&v73 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
  sub_220FC1570();
  v64 = swift_allocObject();
  *(v64 + 16) = v2;
  *(v64 + 24) = v30;
  *(v64 + 32) = v31;
  *(v64 + 40) = v32;
  *(v64 + 48) = v33;
  v66 = v81;
  v65 = v82;
  *(v64 + 56) = v82;
  *(v64 + 64) = v66;
  *(v64 + 72) = a1;

  sub_220E5AFB8(v65, v66, a1);
  v67 = sub_220FC13B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC18);
  sub_220FC1480();

  sub_220E1AAEC();
  v68 = sub_220FC2FC0();
  OUTLINED_FUNCTION_7_31();
  v69 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v70 = swift_allocObject();
  sub_220F04F80(v46, v70 + v69);
  *(v70 + ((v7 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_220FA302C;
  *(v71 + 24) = v70;

  sub_220FC1490();

  return sub_220E3B2DC(v27, &unk_27CF9D6D0);
}

uint64_t sub_220FA012C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = sub_220FC1070();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220ED6038(a1, v7, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_220E3B2DC(v7, &unk_27CF9D6D0);
    v15 = xmmword_220FC9A00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC28);
    swift_allocObject();
    return sub_220FC14E0();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    sub_220FC0F60();
    v13 = sub_220FC1460();

    (*(v9 + 8))(v12, v8);
  }

  return v13;
}

uint64_t sub_220FA0348(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = *a1;
  v11 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_220F78310(v10, v11, a3, a4, a5, a6);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  sub_220EA10E4(v10, v11);
  v13 = sub_220FC13B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC18);
  v14 = sub_220FC1490();

  return v14;
}

uint64_t sub_220FA0478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;

  return sub_220EA10E4(a2, a3);
}

void sub_220FA04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a2;
  v90 = a3;
  *&v88 = a1;
  v7 = sub_220FC1070();
  v92 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  *&v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v86 = &v85 - v15;
  MEMORY[0x28223BE20](v16, v17);
  *&v93 = &v85 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v85 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v85 - v30;
  v32 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  v33 = *(v28 + 56);
  sub_220ED6038(a4, v31, &unk_27CF9D6D0);
  sub_220ED6038(a5 + v32, &v31[v33], &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v7) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v31[v33], 1, v7) == 1)
    {
      sub_220E3B2DC(v31, &unk_27CF9D6D0);
LABEL_14:
      sub_220EF572C(v88, &v94);
      sub_220F9DC80(&v94, v89, v90);
      v43 = &qword_27CF9FBE8;
      v42 = &v94;
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_220ED6038(v31, v26, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(&v31[v33], 1, v7) == 1)
  {
    (*(v92 + 8))(v26, v7);
LABEL_6:
    sub_220E3B2DC(v31, &qword_27CF9EC10);
    goto LABEL_7;
  }

  v44 = v92;
  v45 = *(v92 + 32);
  *&v85 = v32;
  v46 = a5;
  v47 = v91;
  v45(v91, &v31[v33], v7);
  sub_220FA3120(&qword_2812CA078, MEMORY[0x277D7AB60]);
  v48 = sub_220FC26B0();
  v49 = *(v44 + 8);
  v50 = v47;
  a5 = v46;
  v32 = v85;
  v49(v50, v7);
  v49(v26, v7);
  sub_220E3B2DC(v31, &unk_27CF9D6D0);
  if (v48)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v34 = sub_220FC17A0();
  __swift_project_value_buffer(v34, qword_2812C5ED0);
  sub_220ED6038(a4, v22, &unk_27CF9D6D0);
  v35 = v93;
  sub_220ED6038(a4, v93, &unk_27CF9D6D0);

  v36 = sub_220FC1780();
  v37 = sub_220FC2E30();

  if (!os_log_type_enabled(v36, v37))
  {

    sub_220E3B2DC(v35, &unk_27CF9D6D0);
    v42 = v22;
    v43 = &unk_27CF9D6D0;
LABEL_15:
    sub_220E3B2DC(v42, v43);
    return;
  }

  v38 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v96 = v89;
  *v38 = 141559811;
  *(v38 + 4) = 1752392040;
  *(v38 + 12) = 2081;
  v39 = v86;
  sub_220ED6038(v22, v86, &unk_27CF9D6D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v7);
  LODWORD(v90) = v37;
  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v39, &unk_27CF9D6D0);
    v41 = 0uLL;
  }

  else
  {
    sub_220FC0FE0();
    v85 = v51;
    v88 = v52;
    (*(v92 + 8))(v39, v7);
    *&v41 = v85;
    *(&v41 + 1) = v88;
  }

  v94 = v41;
  v95 = EnumTagSinglePayload == 1;
  *&v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC20);
  v53 = sub_220FC2750();
  v55 = v54;
  sub_220E3B2DC(v22, &unk_27CF9D6D0);
  v56 = sub_220E20FF8(v53, v55, &v96);

  *(v38 + 14) = v56;
  *(v38 + 22) = 2160;
  *(v38 + 24) = 1752392040;
  *(v38 + 32) = 2081;
  v57 = v87;
  sub_220ED6038(v93, v87, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v7) == 1)
  {
    sub_220E3B2DC(v57, &unk_27CF9D6D0);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v58 = sub_220FC1040();
    v59 = v60;
    (*(v92 + 8))(v57, v7);
  }

  *&v94 = v58;
  *(&v94 + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
  v61 = sub_220FC2750();
  v63 = v62;
  sub_220E3B2DC(v93, &unk_27CF9D6D0);
  v64 = sub_220E20FF8(v61, v63, &v96);

  *(v38 + 34) = v64;
  *(v38 + 42) = 2160;
  *(v38 + 44) = 1752392040;
  *(v38 + 52) = 2081;
  v65 = __swift_getEnumTagSinglePayload(a5 + v32, 1, v7);
  v66 = 0uLL;
  if (!v65)
  {
    v67 = v32;
    v68 = v91;
    v69 = v92;
    (*(v92 + 16))(v91, a5 + v67, v7, 0);
    sub_220FC0FE0();
    v87 = v70;
    v93 = v71;
    v72 = v69;
    v32 = v67;
    (*(v72 + 8))(v68, v7);
    *&v66 = v87;
    *(&v66 + 1) = v93;
  }

  v94 = v66;
  v95 = v65 != 0;
  v73 = sub_220FC2750();
  v75 = sub_220E20FF8(v73, v74, &v96);

  *(v38 + 54) = v75;
  *(v38 + 62) = 2160;
  *(v38 + 64) = 1752392040;
  *(v38 + 72) = 2081;
  if (__swift_getEnumTagSinglePayload(a5 + v32, 1, v7))
  {
    v76 = 0;
    v77 = 0;
  }

  else
  {
    v79 = v91;
    v78 = v92;
    (*(v92 + 16))(v91, a5 + v32, v7);
    v76 = sub_220FC1040();
    v77 = v80;
    (*(v78 + 8))(v79, v7);
  }

  *&v94 = v76;
  *(&v94 + 1) = v77;
  v81 = sub_220FC2750();
  v83 = sub_220E20FF8(v81, v82, &v96);

  *(v38 + 74) = v83;
  _os_log_impl(&dword_220E15000, v36, v90, "Ignore metadata update, airQuality location no longer matches. airQualityLocation.coordinate=%{private,mask.hash}s, airQualityLocation.name=%{private,mask.hash}s, activeAirQualityLocation.coordinate=%{private,mask.hash}s, activeAirQualityLocation.name=%{private,mask.hash}s ", v38, 0x52u);
  v84 = v89;
  swift_arrayDestroy();
  MEMORY[0x223D9DDF0](v84, -1, -1);
  MEMORY[0x223D9DDF0](v38, -1, -1);
}

void *sub_220FA0E08@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if ((v6 - 3) < 3)
  {
    goto LABEL_2;
  }

  v7 = v4;
  if (*a1)
  {
    sub_220ED6038(a2, v25, &qword_27CF9FBE8);
    if (v26)
    {
      v10 = __swift_project_boxed_opaque_existential_1(v25, v26)[2];
      v11 = *(v10 + 16);
      v12 = (v10 + 32);
      if (v11)
      {
        while (2)
        {
          memcpy(__dst, v12, sizeof(__dst));
          memmove(v24, v12, 0xB8uLL);
          nullsub_1(v24);
          memcpy(v31, __dst, 0xB8uLL);
          v13 = sub_220E435CC(v31);
          sub_220E22B0C(v31);
          switch(v13)
          {
            case 1:
              if (v6 == 2)
              {
                goto LABEL_7;
              }

              goto LABEL_12;
            case 2:
              if (v6 == 1)
              {
                goto LABEL_7;
              }

LABEL_12:
              *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = v6;
              sub_220E56868(__dst, v29);
              __swift_destroy_boxed_opaque_existential_0(v25);
              v14 = v24;
              goto LABEL_27;
            default:
LABEL_7:
              v12 += 184;
              if (!--v11)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_220E3B2DC(v25, &qword_27CF9FBE8);
    }

    if (v6 == 1)
    {
      *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = 1;
      __swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
      sub_220F539AC();
      goto LABEL_28;
    }

    *(v7 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = v6;
    v19 = *__swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
    memcpy(v24, (v19 + 16), 0xA1uLL);
    memmove(v31, (v19 + 16), 0xA1uLL);
    sub_220F3D810(v31);
    sub_220E21C98(v24, __dst);
    v14 = v31;
LABEL_27:
    memcpy(v27, v14, sizeof(v27));
LABEL_28:
    sub_220ED6038(a2, v31, &qword_27CF9FBE8);
    if (*(&v31[1] + 1))
    {
      sub_220E1E72C(v31, v25);
      if (*(a3 + 16))
      {
        v20 = __swift_project_boxed_opaque_existential_1(v25, v26);
        sub_220FA28AC(*v20, v20[1], v20[2], v20[3], a3);
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_0(v25);
        memcpy(v24, v27, 0xB8uLL);
        v24[184] = v22;
LABEL_34:
        nullsub_1(v24);
        memcpy(v31, v24, 0xB9uLL);
        return memcpy(a4, v31, 0xB9uLL);
      }

      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_220E3B2DC(v31, &qword_27CF9FBE8);
    }

    memcpy(v24, v27, 0xB8uLL);
    v24[184] = 2;
    goto LABEL_34;
  }

  sub_220ED6038(a2, v31, &qword_27CF9FBE8);
  if (*(&v31[1] + 1))
  {
    v15 = __swift_project_boxed_opaque_existential_1(v31, *(&v31[1] + 1))[2];
    v24[0] = 0;

    sub_220FA1208(v24, v15, __src);

    __swift_destroy_boxed_opaque_existential_0(v31);
    memcpy(v29, __src, sizeof(v29));
    if (sub_220E2CDDC(v29) != 1)
    {
      memcpy(__dst, v29, sizeof(__dst));
      v16 = sub_220E435CC(__dst);
      if (v16 == 2)
      {
        sub_220E22B0C(__dst);
        v17 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
        v18 = 2;
      }

      else
      {
        if (v16 != 1)
        {
LABEL_26:
          v14 = __src;
          goto LABEL_27;
        }

        sub_220E22B0C(__dst);
        v17 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind;
        v18 = 1;
      }

      *(v7 + v17) = v18;
      goto LABEL_26;
    }
  }

  else
  {
    sub_220E3B2DC(v31, &qword_27CF9FBE8);
  }

LABEL_2:
  sub_220FA2FAC(v31);
  return memcpy(a4, v31, 0xB9uLL);
}

void *sub_220FA1208@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = v5 - 3;
    v7 = *(a2 + 16);
    v8 = (a2 + 32);
    if (!v7)
    {
LABEL_16:
      sub_220E78488(v21);
      return memcpy(a3, v21, 0xB8uLL);
    }

    while (1)
    {
      memcpy(__dst, v8, sizeof(__dst));
      memcpy(v18, v8, sizeof(v18));
      nullsub_1(v18);
      memcpy(v20, __dst, sizeof(v20));
      v9 = sub_220E435CC(v20);
      sub_220E22B0C(v20);
      switch(v9)
      {
        case 1:
          if (v6 < 3 || v5 != 1)
          {
            goto LABEL_15;
          }

          memcpy(v16, __dst, sizeof(v16));
          v11 = sub_220E22B0C(v16);
          v12 = &qword_27CF9E3A0;
          goto LABEL_21;
        case 2:
          if (v6 < 3 || v5 != 2)
          {
            goto LABEL_15;
          }

          memcpy(v16, __dst, sizeof(v16));
          v14 = sub_220E22B0C(v16);
          sub_220E21C98(v14, v21);
          goto LABEL_22;
        case 3:
          if (v5 != 4)
          {
            goto LABEL_15;
          }

          memcpy(v16, __dst, sizeof(v16));
          v11 = sub_220E22B0C(v16);
          v12 = &unk_27CF9FC10;
          goto LABEL_21;
        case 4:
          if (v5 != 5)
          {
            goto LABEL_15;
          }

          memcpy(v16, __dst, sizeof(v16));
          v11 = sub_220E22B0C(v16);
          v12 = &qword_27CF9E398;
LABEL_21:
          sub_220ED6038(v11, v21, v12);
          goto LABEL_22;
        default:
          if (v5 == 3)
          {
            memcpy(v16, __dst, sizeof(v16));
            v13 = sub_220E22B0C(v16);
            sub_220E21C60(v13, v21);
LABEL_22:
            v10 = v18;
LABEL_23:
            memcpy(v21, v10, sizeof(v21));
            return memcpy(a3, v21, 0xB8uLL);
          }

LABEL_15:
          v8 += 184;
          if (!--v7)
          {
            goto LABEL_16;
          }

          break;
      }
    }
  }

  LOBYTE(v21[0]) = 1;
  sub_220FA1208(__src, v21, a2);
  memcpy(v20, __src, sizeof(v20));
  if (sub_220E2CDDC(v20) != 1)
  {
    v10 = __src;
    goto LABEL_23;
  }

  v18[0] = 2;
  sub_220FA1208(v21, v18, a2);
  return memcpy(a3, v21, 0xB8uLL);
}

uint64_t sub_220FA1484()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation, &unk_27CF9D6D0);
  sub_220E5E3D0(*(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode), *(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode + 8));
  memcpy(__dst, (v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay), sizeof(__dst));
  sub_220E3B2DC(__dst, &qword_27CF9FBF8);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion, &qword_27CF9FBE8);

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_delegate);
  return v0;
}

uint64_t sub_220FA1568()
{
  sub_220FA1484();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapOverlayMetadataManager()
{
  result = qword_2812C8558;
  if (!qword_2812C8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220FA1614()
{
  sub_220E9E318();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SupportedRegion(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220FA17F0()
{
  result = qword_27CF9FBE0;
  if (!qword_27CF9FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9FBE0);
  }

  return result;
}

uint64_t sub_220FA1844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v34[-v11];
  v13 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v23 = v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_3();
  v28 = (v27 - v26);
  v29 = *a2;
  v36 = *(a2 + 8);
  v37 = v29;
  v35 = *(a2 + 16);
  sub_220E1AAEC();
  *v28 = sub_220FC2FC0();
  (*(v23 + 104))(v28, *MEMORY[0x277D85200], v21);
  LOBYTE(a2) = sub_220FC23E0();
  result = (*(v23 + 8))(v28, v21);
  if ((a2 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v31 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  swift_beginAccess();
  sub_220ED6038(v3 + v31, v12, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220E3B2DC(v12, &unk_27CF9D6D0);
    v32 = v38;
  }

  else
  {
    (*(v15 + 32))(v20, v12, v13);
    v32 = v38;
    v33 = sub_220FC1010();
    result = (*(v15 + 8))(v20, v13);
    if (v33)
    {
      return result;
    }
  }

  (*(v15 + 16))(v8, v32, v13);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_220EA01C0(v8, v3 + v31);
  swift_endAccess();
  v39[0] = v37;
  v39[1] = v36;
  v40 = v35;
  return sub_220F9F91C(v39);
}

void sub_220FA1B7C(unsigned __int8 *a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t (*)(void), void), uint64_t a5)
{
  v6 = v5;
  v12 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  v20 = *a1;
  sub_220E1AAEC();
  *v19 = sub_220FC2FC0();
  (*(v14 + 104))(v19, *MEMORY[0x277D85200], v12);
  LOBYTE(a1) = sub_220FC23E0();
  v22 = *(v14 + 8);
  v21 = (v14 + 8);
  v22(v19, v12);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (a2)
  {
    *(v6 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest) = a2;
  }

  if (!v20)
  {
    v34 = *(v6 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest);
    if (*(v34 + 16))
    {
      v35 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion;
      swift_beginAccess();
      sub_220ED6038(v6 + v35, &v55, &qword_27CF9FBE8);
      if (v56)
      {
        v54 = a4;
        v36 = a5;
        sub_220E1E72C(&v55, __dst);
        v37 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
        v38 = *v37;
        v39 = v37[1];
        v40 = v37[2];
        v41 = v37[3];

        sub_220FA28AC(v38, v39, v40, v41, v34);
        LOBYTE(v38) = v42;

        if (!v38)
        {

          a5 = v36;
          a4 = v54;
LABEL_38:
          LOBYTE(v55) = 2;
          sub_220FA1B7C(&v55, a2, a3 & 1, a4, a5);
          __swift_destroy_boxed_opaque_existential_0(__dst);
          return;
        }

        a5 = v36;
        a4 = v54;
        v52 = sub_220FC3940();

        if (v52)
        {
          goto LABEL_38;
        }

        __swift_destroy_boxed_opaque_existential_0(__dst);
      }

      else
      {
        sub_220E3B2DC(&v55, &qword_27CF9FBE8);
      }
    }
  }

  v21 = &qword_2812C8000;
  if (a3)
  {
LABEL_6:
    if (qword_2812C5EC8 == -1)
    {
LABEL_7:
      v23 = sub_220FC17A0();
      __swift_project_value_buffer(v23, qword_2812C5ED0);
      v24 = sub_220FC1780();
      v25 = sub_220FC2E30();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v53 = a5;
        v27 = swift_slowAlloc();
        __dst[0] = v27;
        *v26 = 136446210;
        LOBYTE(v55) = v20;
        sub_220E561E0();
        v28 = sub_220FC38F0();
        v30 = a3;
        v31 = a4;
        v32 = sub_220E20FF8(v28, v29, __dst);

        *(v26 + 4) = v32;
        a4 = v31;
        a3 = v30;
        v21 = &qword_2812C8000;
        _os_log_impl(&dword_220E15000, v24, v25, "Metadata: Updating overlayKind. overlayKind=%{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        a5 = v53;
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_15();
      }

      *(v6 + v21[178]) = v20;
      memcpy(__dst, (v6 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay), sizeof(__dst));
      if (sub_220E2CDDC(__dst) != 1)
      {
        sub_220F9E050(a3 & 1, a4, a5);
      }

      return;
    }

LABEL_42:
    OUTLINED_FUNCTION_16();
    goto LABEL_7;
  }

  v33 = *(v6 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind);
  switch(v20)
  {
    case 5:
      if (v33 != 5)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v33 != 4)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v33 != 3)
      {
        goto LABEL_6;
      }

      break;
    default:
      if ((v33 - 6) > 0xFFFFFFFC || v20 != v33)
      {
        goto LABEL_6;
      }

      break;
  }

  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v44 = sub_220FC17A0();
  __swift_project_value_buffer(v44, qword_2812C5ED0);
  v45 = sub_220FC1780();
  v46 = sub_220FC2E30();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    __dst[0] = v48;
    *v47 = 136446210;
    LOBYTE(v55) = v20;
    sub_220E561E0();
    v49 = sub_220FC38F0();
    v51 = sub_220E20FF8(v49, v50, __dst);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_220E15000, v45, v46, "Metadata: Not updating overlayKind as it's the same. overlayKind=%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  if (a4)
  {
    a4(3, nullsub_1, 0);
  }
}

void sub_220FA2190(uint64_t a1, uint64_t a2)
{
  v8 = v2;
  OUTLINED_FUNCTION_5_39();
  v11 = sub_220FC23C0();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  sub_220E1AAEC();
  *v18 = sub_220FC2FC0();
  (*(v13 + 104))(v18, *MEMORY[0x277D85200], v11);
  LOBYTE(a2) = sub_220FC23E0();
  (*(v13 + 8))(v18, v11);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_16();
    goto LABEL_14;
  }

  *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest) = a1;

  v22 = (v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect);
  v23 = *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect) == v7 && *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect + 8) == v6;
  if (!v23 || (v22[2] == v5 ? (v24 = v22[3] == v4) : (v24 = 0), !v24 || *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel) != v3))
  {
    *v22 = v7;
    v22[1] = v6;
    v22[2] = v5;
    v22[3] = v4;
    *(v8 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel) = v3;
    v29[0] = v19;
    v29[1] = v20;
    v30 = v21;
    sub_220F9F91C(v29);
    return;
  }

  if (qword_2812C5EC8 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v25 = sub_220FC17A0();
  __swift_project_value_buffer(v25, qword_2812C5ED0);
  v26 = sub_220FC1780();
  v27 = sub_220FC2E30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_220E15000, v26, v27, "Metadata: No need to update metadata - VisibleMapRect & ZoomLevel did not change", v28, 2u);
    OUTLINED_FUNCTION_15();
  }
}

uint64_t sub_220FA23F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_39();
  v10 = *v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
  sub_220FC1570();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v6;
  *(v15 + 32) = v5;
  *(v15 + 40) = v4;
  *(v15 + 48) = v12;
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  *(v15 + 65) = v10;
  *(v15 + 72) = v3;
  *(v15 + 80) = a3;
  sub_220E5AFB8(v12, v13, v14);

  v16 = sub_220FC13B0();
  v17 = sub_220FC14A0();

  return v17;
}

uint64_t sub_220FA2568(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_220FC0F60();
  v1 = sub_220FC1460();

  return v1;
}

uint64_t sub_220FA25D8(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v16 = *a1;
  v17 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F548);
  sub_220FC1570();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a11;
  *(v18 + 32) = a7;
  *(v18 + 40) = a12;
  *(v18 + 48) = v16;
  *(v18 + 56) = v17;

  sub_220EA10E4(v16, v17);
  v19 = sub_220FC13B0();
  v20 = sub_220FC1490();

  return v20;
}

uint64_t sub_220FA27C4@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_220EF572C(*a1, v13);
  v15 = a2;
  sub_220F9EFA0(v13, &v15, a3, v12);
  memcpy(__dst, v12, sizeof(__dst));
  LOBYTE(a3) = v12[184];
  sub_220E3B2DC(v13, &qword_27CF9FBE8);
  memcpy(a6, __dst, 0xB8uLL);
  *(a6 + 184) = a4;
  *(a6 + 192) = a5;
  *(a6 + 200) = a2;
  *(a6 + 201) = a3;
  return sub_220EA10E4(a4, a5);
}

void sub_220FA28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = sub_220FC10C0();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for WeatherMapOverlayRegionMetadata;
  v43 = &off_2834842F0;
  v14 = swift_allocObject();
  v41[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  if (!*(__swift_project_boxed_opaque_existential_1(v41, &type metadata for WeatherMapOverlayRegionMetadata)[3] + 16) || (v34 = *(a5 + 16)) == 0)
  {

    goto LABEL_18;
  }

  v32 = a5 + 32;
  v37 = *MEMORY[0x277CBF258];
  v36 = (v10 + 104);
  v15 = (v10 + 8);

  v33 = 0;
  v16 = 0;
  v17 = v38;
  while (2)
  {
    v35 = v16 + 1;
    v18 = MKMapPointForCoordinate(*(v32 + 16 * v16));
    v19 = *(__swift_project_boxed_opaque_existential_1(v41, v42)[3] + 16);

    v21 = (v20 + 40);
    v39 = -v19;
    v40 = v20;
    v22 = -1;
    do
    {
      if (v39 + v22 == -1)
      {

        if (!__OFADD__(v33, 1))
        {
          ++v33;
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      if (++v22 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v23 = *(v21 - 1);
      v24 = 0x277CD4EE0;
      if (*v21)
      {
        v25 = &selRef_initWithMultiPolygon_;
      }

      else
      {
        v24 = 0x277CD4F20;
        v25 = &selRef_initWithPolygon_;
      }

      v26 = objc_allocWithZone(*v24);
      v27 = v23;
      v28 = [v26 *v25];
      [v28 pointForMapPoint_];
      v29 = [v28 path];

      if (!v29)
      {
        goto LABEL_21;
      }

      v21 += 16;
      (*v36)(v13, v37, v17);
      v45 = 0;
      v46 = 0;
      v44 = 0x3FF0000000000000;
      v47 = 0x3FF0000000000000;
      v48 = 0;
      v49 = 0;
      v30 = sub_220FC3350();

      (*v15)(v13, v17);
    }

    while ((v30 & 1) == 0);

LABEL_15:
    v16 = v35;
    if (v35 != v34)
    {
      continue;
    }

    break;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_220FA2C68(uint64_t a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25[-v7];
  v9 = type metadata accessor for WeatherMapOverlay();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25[-v16];
  if (*(a3 + 408))
  {
    v26 = a2;
    v18 = *(a3 + 416);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 8);
    swift_unknownObjectRetain();
    v20(ObjectType, v18);
    swift_unknownObjectRelease();
    sub_220EE5C4C(v13, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
      sub_220FA2EDC(v17, v8, type metadata accessor for WeatherMapOverlay);
      v23 = __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      MEMORY[0x28223BE20](v23, v24);
      *&v25[-32] = v8;
      *&v25[-24] = v22;
      v25[-16] = 0;
      v25[-15] = v26;

      sub_220EE41AC(sub_220EE5D08);
      swift_unknownObjectRelease();

      sub_220FA2F3C(v17, type metadata accessor for WeatherMapOverlay);
      return sub_220E3B2DC(v8, &unk_27CF9EB80);
    }

    else
    {
      return sub_220FA2F3C(v17, type metadata accessor for WeatherMapOverlay);
    }
  }

  return result;
}

uint64_t sub_220FA2EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220FA2F3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_220FA2F94(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_220FA2FAC(uint64_t a1)
{
  bzero(a1, 0xA0uLL);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0x1FFFFFFFELL;
  *(a1 + 184) = 0;
}

void sub_220FA302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_29(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_220FA04C0(a1, a2, a3, v3 + v12, v13);
}

uint64_t sub_220FA3120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220FA3168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FBE8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220FA32A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 202))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_220FA32F0(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 100) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[202] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[202] = 0;
    }

    if (a2)
    {
      v4 = 2 * -a2;
      bzero(a1, 0xA0uLL);
      *(a1 + 21) = 0;
      *(a1 + 22) = 0;
      *(a1 + 20) = v4;
    }
  }
}

void sub_220FA339C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v8[4] = sub_220F20A14;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_220F2A93C;
    v8[3] = &block_descriptor_29;
    v7 = _Block_copy(v8);

    [v3 addCompletedHandler_];
    _Block_release(v7);
  }
}

uint64_t sub_220FA3484(char a1)
{
  sub_220E1E2A8(v1 + 16, v5);
  type metadata accessor for OverlayGeneratorContext();
  v3 = swift_allocObject();
  sub_220FA34E8(v5, a1);
  return v3;
}

uint64_t sub_220FA34E8(void *a1, char a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v8, v5, v6);
  *(v2 + 16) = [*(*__swift_project_boxed_opaque_existential_1(v8 v8[3]) + 24)];
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_220E1E2A8(a1, v2 + 24);
  *(v2 + 64) = a2;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

id sub_220FA35A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_220FA339C(a1, a2);
    sub_220E2DD2C(a1);
  }

  result = *(v2 + 16);
  if (result)
  {

    return [result commit];
  }

  return result;
}

uint64_t sub_220FA3628()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for LocationPicker()
{
  result = qword_2812C7368;
  if (!qword_2812C7368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220FA373C()
{
  sub_220FA3800();
  if (v0 <= 0x3F)
  {
    sub_220FA3864();
    if (v1 <= 0x3F)
    {
      sub_220FA38AC();
      if (v2 <= 0x3F)
      {
        sub_220FA3908();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220FA3800()
{
  if (!qword_2812C5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CFD0);
    v0 = sub_220FC22D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5E10);
    }
  }
}

unint64_t sub_220FA3864()
{
  result = qword_2812C5AD0;
  if (!qword_2812C5AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812C5AD0);
  }

  return result;
}

void sub_220FA38AC()
{
  if (!qword_2812C5E58)
  {
    sub_220E82260();
    v0 = sub_220FC1B20();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5E58);
    }
  }
}

void sub_220FA3908()
{
  if (!qword_2812C5E70)
  {
    sub_220FC1BA0();
    v0 = sub_220FC1AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5E70);
    }
  }
}

uint64_t sub_220FA397C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for LocationPicker();
  sub_220E93294(v1 + *(v14 + 36), v13, &unk_27CF9D6F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1BA0();
    OUTLINED_FUNCTION_2();
    return (*(v15 + 32))(a1, v13);
  }

  else
  {
    sub_220FC2E20();
    v17 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}