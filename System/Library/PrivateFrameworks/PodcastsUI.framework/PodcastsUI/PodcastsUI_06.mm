id CADisplayLink.init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayLinkHandler();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC10PodcastsUIP33_F2E0E53B2EE06FB9F5D0B47C18CD8DEC18DisplayLinkHandler__handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v5;
  v12.super_class = v4;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v7 selector:sel_handleDisplayLinkFired_];
  swift_beginAccess();
  v9 = v8;
  v10 = v7;
  objc_setAssociatedObject(v9, &unk_27CD87760, v10, 1);
  swift_endAccess();

  return v9;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  if (v6 < COERCE_DOUBLE(1))
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    v6 = v9;
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v10;
}

{
  [a2 displayScale];
  if (v5 < COERCE_DOUBLE(1))
  {
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v8 = v7;

    v5 = v8;
  }

  return CGFloat.rounded(_:toScale:)(a1, v5, a3);
}

BOOL _s12CoreGraphics7CGFloatV10PodcastsUIE3eetoiySbAC_ACtFZ_0(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = fabs(a2);
  if (v3 < v2)
  {
    v2 = v3;
  }

  if ((*&v2 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v4 = NAN;
  }

  else if (*&v2 >> 52)
  {
    v4 = COERCE_DOUBLE(*&v2 & 0x7FF0000000000000) * 2.22044605e-16;
  }

  else
  {
    *&v4 = 1;
  }

  return vabdd_f64(a1, a2) < v4;
}

unint64_t sub_21B439A24(uint64_t a1)
{
  result = sub_21B439A4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B439A4C()
{
  result = qword_27CD87778;
  if (!qword_27CD87778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87778);
  }

  return result;
}

unint64_t sub_21B439AA0(uint64_t a1)
{
  *(a1 + 8) = sub_21B439AD0();
  result = sub_21B439B24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B439AD0()
{
  result = qword_27CD87780;
  if (!qword_27CD87780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87780);
  }

  return result;
}

unint64_t sub_21B439B24()
{
  result = qword_27CD87788;
  if (!qword_27CD87788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87788);
  }

  return result;
}

BOOL _sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a1);
  v5 = fabs(a3);
  if (v5 < v4)
  {
    v4 = v5;
  }

  v6 = v4;
  if ((*&v4 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    return 0;
  }

  v7 = COERCE_DOUBLE(*&v4 & 0x7FF0000000000000) * 2.22044605e-16;
  if (!(*&v6 >> 52))
  {
    v7 = COERCE_DOUBLE(1);
  }

  if (vabdd_f64(a1, a3) >= v7)
  {
    return 0;
  }

  v8 = fabs(a2);
  v9 = fabs(a4);
  if (v9 < v8)
  {
    v8 = v9;
  }

  if ((*&v8 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v10 = NAN;
  }

  else if (*&v8 >> 52)
  {
    v10 = COERCE_DOUBLE(*&v8 & 0x7FF0000000000000) * 2.22044605e-16;
  }

  else
  {
    *&v10 = 1;
  }

  return vabdd_f64(a2, a4) < v10;
}

unint64_t sub_21B439C44(uint64_t a1)
{
  result = sub_21B439C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B439C6C()
{
  result = qword_27CD87790;
  if (!qword_27CD87790)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87790);
  }

  return result;
}

BOOL static CGRect.==~ infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (!_sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(a1, a2, a5, a6))
  {
    return 0;
  }

  return _sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(a3, a4, a7, a8);
}

BOOL sub_21B439D3C(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!_sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return _sSo7CGPointV10PodcastsUIE3eetoiySbAB_ABtFZ_0(v2, v3, v4, v5);
}

void *sub_21B439E08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21B439E34@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

CGFloat CGRect.applyingLayoutDirection(_:inBounds:)(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (a1 == 1)
    {
      MaxX = CGRectGetMaxX(*&a2);
      v19.origin.x = a6;
      v19.origin.y = a7;
      v19.size.width = a8;
      v19.size.height = a9;
      v14 = MaxX - CGRectGetMinX(v19);
      v20.origin.x = a6;
      v20.origin.y = a7;
      v20.size.width = a8;
      v20.size.height = a9;
      return v14 - CGRectGetWidth(v20);
    }

    else
    {
      type metadata accessor for UIUserInterfaceLayoutDirection(0);
      v18[3] = v16;
      v18[0] = a1;
      unrecognizedEnumValueEncountered(_:)(v18);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  return a6;
}

CGFloat CGRect.aspectFit(in:scale:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v23 = fabs(CGRectGetWidth(*&a1));
  if (v23 <= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = v24;
  if ((*&v24 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_8;
  }

  v26 = COERCE_DOUBLE(*&v24 & 0x7FF0000000000000) * 2.22044605e-16;
  if (!(*&v25 >> 52))
  {
    v26 = COERCE_DOUBLE(1);
  }

  if (v23 >= v26)
  {
LABEL_8:
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    v27 = fabs(CGRectGetHeight(v34));
    if (v27 <= 0.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = v28;
    if ((*&v28 & 0x7FF0000000000000) == 0x7FF0000000000000)
    {
      goto LABEL_15;
    }

    v30 = COERCE_DOUBLE(*&v28 & 0x7FF0000000000000) * 2.22044605e-16;
    if (!(*&v29 >> 52))
    {
      v30 = COERCE_DOUBLE(1);
    }

    if (v27 >= v30)
    {
LABEL_15:
      v35.origin.x = a1;
      v35.origin.y = a2;
      v35.size.width = a3;
      v35.size.height = a4;
      CGRectGetWidth(v35);
      v36.origin.x = a6;
      v36.origin.y = a7;
      v36.size.width = a8;
      v36.size.height = a9;
      CGRectGetWidth(v36);
      v37.origin.x = a1;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      CGRectGetHeight(v37);
      v38.origin.x = a6;
      v38.origin.y = a7;
      v38.size.width = a8;
      v38.size.height = a9;
      CGRectGetHeight(v38);
      UIRectCenteredXInRectScale();
      UIRectCenteredYInRectScale();
      return v31;
    }
  }

  return a6;
}

double CGRect.centeringAlong(axes:bounds:scale:)(uint64_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = *a1;
  if (*a1)
  {
    UIRectCenteredXInRectScale();
    a7 = v8;
  }

  if ((v7 & 2) != 0)
  {
    UIRectCenteredYInRectScale();
    return v9;
  }

  return a7;
}

CGFloat CGRect.removingLayoutDirection(_:inBounds:)(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1)
  {
    if (a1 == 1)
    {
      MaxX = CGRectGetMaxX(*&a2);
      v18.origin.x = a6;
      v18.origin.y = a7;
      v18.size.width = a8;
      v18.size.height = a9;
      return MaxX - CGRectGetMaxX(v18);
    }

    else
    {
      type metadata accessor for UIUserInterfaceLayoutDirection(0);
      v17[3] = v15;
      v17[0] = a1;
      unrecognizedEnumValueEncountered(_:)(v17);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  return a6;
}

unint64_t sub_21B43A2F4(uint64_t a1)
{
  result = sub_21B43A31C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B43A31C()
{
  result = qword_27CD87798;
  if (!qword_27CD87798)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87798);
  }

  return result;
}

unint64_t sub_21B43A378()
{
  result = qword_27CD877A0;
  if (!qword_27CD877A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD877A0);
  }

  return result;
}

unint64_t sub_21B43A3D0()
{
  result = qword_27CD877A8;
  if (!qword_27CD877A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD877A8);
  }

  return result;
}

unint64_t sub_21B43A428()
{
  result = qword_2812004C0;
  if (!qword_2812004C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812004C0);
  }

  return result;
}

unint64_t sub_21B43A480()
{
  result = qword_2812004B8;
  if (!qword_2812004B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812004B8);
  }

  return result;
}

uint64_t CGSize.fitting(_:mode:aspectRule:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_21B4C66C8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 3) < 0xA)
  {
    return CGSize.fitting(_:aspectRule:)(a2, a3, a4);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v13 = MEMORY[0x277D3D6C8];
      goto LABEL_8;
    }

    if (a1 == 2)
    {
      v13 = MEMORY[0x277D3D6C0];
LABEL_8:
      v14 = result;
      (*(v9 + 104))(v12, *v13, result);
      CGSize.fitting(_:aspectRule:)(v12, a3, a4);
      return (*(v9 + 8))(v12, v14);
    }

    type metadata accessor for ContentMode(0);
    v16[3] = v15;
    v16[0] = a1;
    unrecognizedEnumValueEncountered(_:)(v16);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

float64x2_t static CGSize.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

unint64_t sub_21B43A6BC(uint64_t a1)
{
  result = sub_21B43A6E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B43A6E4()
{
  result = qword_2811FCC58;
  if (!qword_2811FCC58)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCC58);
  }

  return result;
}

id static NSBundle.podcastsUI.getter()
{
  if (qword_2812003F8 != -1)
  {
    swift_once();
  }

  v1 = qword_281200400;

  return v1;
}

uint64_t NSBundle.resourcesPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 resourcePath];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21B4C9708();
    v7 = v6;

    MEMORY[0x21CEF0D50](v5, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_21B4C75F8();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t static URL.systemImage(_:)(uint64_t a1, uint64_t a2)
{
  sub_21B4CA338();

  MEMORY[0x21CEF2F30](a1, a2);
  sub_21B4C5718();
}

uint64_t ActionDispatcher.dispatch(_:withMetrics:asPartOf:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B4C8588();
  MEMORY[0x28223BE20](v7 - 8);
  v32 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_21B4C8CD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B4C88A8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v30 - v20;
  if (*a2)
  {
    v30[2] = a4;
    v31 = v18;
    sub_21B4C87E8();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      (*(v13 + 16))(v21, v15, v12);
      v28 = v31;
      (*(v17 + 104))(v21, *MEMORY[0x277D21E10], v31);
      v27 = sub_21B4C88B8();
      (*(v17 + 8))(v21, v28);
      (*(v13 + 8))(v15, v12);
      return v27;
    }

    sub_21B3F2D94(v11, &qword_27CD877B0);
    if (qword_2811FCEE8 != -1)
    {
      swift_once();
    }

    v22 = sub_21B4C94B8();
    v30[1] = __swift_project_value_buffer(v22, qword_2811FCEF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    v23 = a1[3];
    v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
    v33[3] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v24, v23);
    sub_21B4C8558();
    sub_21B3F2D94(v33, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C92B8();

    sub_21B4C8CC8();
    v26 = v31;
    (*(v17 + 104))(v21, *MEMORY[0x277D21E10], v31);
  }

  else
  {
    v26 = v18;
    (*(v17 + 104))(v21, *MEMORY[0x277D21E18], v18, v19);
  }

  v27 = sub_21B4C88B8();
  (*(v17 + 8))(v21, v26);
  return v27;
}

uint64_t ActionDispatcher.dispatch(_:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_21B4C9A18();
  v6[8] = sub_21B4C9A08();
  v8 = sub_21B4C99C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_21B43AF00, v8, v7);
}

uint64_t sub_21B43AF00()
{
  *(v0 + 88) = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877C0);
  v2 = sub_21B43B19C();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_21B43AFE0;
  v4 = *(v0 + 16);

  return MEMORY[0x282180360](v4, v1, v2);
}

uint64_t sub_21B43AFE0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_21B43B138;
  }

  else
  {
    v5 = sub_21B3A083C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B43B138()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21B43B19C()
{
  result = qword_27CD877C8;
  if (!qword_27CD877C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD877C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD877C8);
  }

  return result;
}

uint64_t sub_21B43B200(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a3;
  LODWORD(v32) = a2;
  v9 = sub_21B4C8588();
  MEMORY[0x28223BE20](v9 - 8);
  v31[1] = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  v14 = sub_21B4C8CD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877D0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v31 - v20;
  v37 = a5;
  v38 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (v32)
  {
    v32 = v21;
    sub_21B4C87E8();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_21B3F2D94(v13, &qword_27CD877B0);
      if (qword_2811FCEE8 != -1)
      {
        swift_once();
      }

      v23 = sub_21B4C94B8();
      __swift_project_value_buffer(v23, qword_2811FCEF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
      sub_21B4C85A8();
      *(swift_allocObject() + 16) = xmmword_21B4D2830;
      sub_21B4C8578();
      sub_21B4C8568();
      v24 = v37;
      v25 = __swift_project_boxed_opaque_existential_1(v36, v37);
      v35[3] = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(v35);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      sub_21B4C8558();
      sub_21B3F2D94(v35, &qword_27CD86E70);
      sub_21B4C8568();
      sub_21B4C8598();
      sub_21B4C92B8();

      v27 = v32;
      sub_21B4C8CC8();
      (*(v19 + 104))(v27, *MEMORY[0x277D21E10], v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877D8);
      v28 = sub_21B4C88B8();
      (*(v19 + 8))(v27, v18);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v29 = v32;
      (*(v15 + 16))(v32, v17, v14);
      (*(v19 + 104))(v29, *MEMORY[0x277D21E10], v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877D8);
      v28 = sub_21B4C88B8();
      (*(v19 + 8))(v29, v18);
      (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    (*(v19 + 104))(v21, *MEMORY[0x277D21E18], v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877D8);
    v28 = sub_21B4C88B8();
    (*(v19 + 8))(v21, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v28;
}

uint64_t static ActionMetrics.dismiss(targetID:targetType:actionContext:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v70 = a6;
  v71 = a7;
  v68 = a5;
  v69 = a3;
  v76 = a9;
  v14 = sub_21B4C8A58();
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = &v67 - v17;
  v18 = sub_21B4C8A38();
  v77 = *(v18 - 8);
  v78 = v18;
  MEMORY[0x28223BE20](v18);
  v79 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E8);
  v20 = *(sub_21B4C8628() - 8);
  v73 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_21B4D2830;
  v21 = sub_21B4C66F8();
  v23 = v22;
  v84 = a8;

  v24 = sub_21B4C6058();
  v26 = v25;
  v27 = MEMORY[0x277D837D0];
  v83 = MEMORY[0x277D837D0];
  *&v82 = a1;
  *(&v82 + 1) = a2;
  sub_21B36EE80(&v82, v81);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = a8;
  sub_21B3749CC(v81, v24, v26, isUniquelyReferenced_nonNull_native);

  v29 = v80;
  v84 = v80;
  v30 = sub_21B4C5F78();
  v32 = v31;
  v83 = v27;
  *&v82 = v69;
  *(&v82 + 1) = a4;
  sub_21B36EE80(&v82, v81);

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v29;
  sub_21B3749CC(v81, v30, v32, v33);

  v34 = v80;
  v84 = v80;
  v35 = sub_21B4C5F58();
  v37 = v36;
  v83 = v27;
  *&v82 = v21;
  *(&v82 + 1) = v23;
  v38 = v70;
  sub_21B36EE80(&v82, v81);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v34;
  sub_21B3749CC(v81, v35, v37, v39);

  v40 = v80;
  v84 = v80;
  v41 = sub_21B4C5FD8();
  v43 = v41;
  v44 = v42;
  if (v38)
  {
    v83 = v27;
    *&v82 = v68;
    *(&v82 + 1) = v38;
    sub_21B36EE80(&v82, v81);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v40;
    sub_21B3749CC(v81, v43, v44, v45);

    v84 = v80;
  }

  else
  {
    sub_21B43D280(v41, v42, &v82);

    sub_21B3F2D94(&v82, &qword_27CD86E70);
  }

  v46 = sub_21B4C5FB8();
  sub_21B43D280(v46, v47, &v82);

  sub_21B3F2D94(&v82, &qword_27CD86E70);
  v48 = sub_21B4C6068();
  sub_21B43D074(v71, v48, v49);

  v50 = v79;
  sub_21B4C89D8();
  v51 = a10[3];
  *&v82 = a10[2];
  *&v81[0] = v51;
  v52 = a10[4];
  sub_21B36C7AC(&v82, &v80, &qword_27CD877F0);
  sub_21B36C7AC(v81, &v80, &qword_27CD877F8);

  sub_21B371F28(v52);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v53 = qword_2811FD5E0;
  v54 = *algn_2811FD5E8;
  v56 = v77;
  v55 = v78;
  v57 = v72;
  (*(v77 + 16))(v72, v50, v78);
  (*(v56 + 56))(v57, 0, 1, v55);
  sub_21B43CE50(v57, v53, v54);
  sub_21B3F2D94(v57, &qword_27CD877E0);
  v58 = sub_21B4C6018();
  v59 = v84;
  sub_21B38E154(v58, v60, v84);
  v62 = v61;

  if (!v62)
  {

    if (!v52)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v52)
  {
LABEL_8:

    v52(v59);
    sub_21B36F6F4(v52);
  }

LABEL_10:
  v63 = *(v82 + 16);

  if (v63)
  {
    sub_21B373518(v50);
    if (v64)
    {
    }
  }

  if (*(*&v81[0] + 16))
  {
    sub_21B373518(v79);
    if (v65)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v82, &qword_27CD877F0);
  sub_21B3F2D94(v81, &qword_27CD877F8);
  sub_21B36F6F4(v52);
  (*(v77 + 8))(v79, v78);

  sub_21B4C8A48();
  return sub_21B4C8708();
}

uint64_t static ActionMetrics.flowAction(targetID:targetType:actionContext:actionResult:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  v74 = a8;
  v71 = a7;
  v73 = a6;
  v70 = a5;
  v77 = a3;
  v80 = a9;
  v75 = a10;
  v15 = sub_21B4C8A58();
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v70 - v18;
  v19 = sub_21B4C8A38();
  v81 = *(v19 - 8);
  v82 = v19;
  MEMORY[0x28223BE20](v19);
  v83 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E8);
  v21 = *(sub_21B4C8628() - 8);
  v76 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_21B4D2830;
  v22 = sub_21B4C6708();
  v24 = v23;

  v25 = sub_21B4C6058();
  v27 = v26;
  v28 = MEMORY[0x277D837D0];
  v87 = MEMORY[0x277D837D0];
  *&v86 = a1;
  *(&v86 + 1) = a2;
  sub_21B36EE80(&v86, v85);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = a11;
  sub_21B3749CC(v85, v25, v27, isUniquelyReferenced_nonNull_native);

  v30 = v84;
  v31 = sub_21B4C5F78();
  v33 = v32;
  v87 = v28;
  *&v86 = v77;
  *(&v86 + 1) = a4;
  sub_21B36EE80(&v86, v85);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v30;
  sub_21B3749CC(v85, v31, v33, v34);

  v35 = v84;
  v36 = sub_21B4C5F58();
  v38 = v37;
  v87 = v28;
  *&v86 = v22;
  *(&v86 + 1) = v24;
  sub_21B36EE80(&v86, v85);
  v77 = v24;
  v39 = v73;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v35;
  sub_21B3749CC(v85, v36, v38, v40);

  v41 = v84;
  v88 = v84;
  v42 = sub_21B4C5FD8();
  v44 = v42;
  v45 = v43;
  if (v39)
  {
    v87 = v28;
    *&v86 = v70;
    *(&v86 + 1) = v39;
    sub_21B36EE80(&v86, v85);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v41;
    sub_21B3749CC(v85, v44, v45, v46);

    v88 = v84;
  }

  else
  {
    sub_21B43D280(v42, v43, &v86);

    sub_21B3F2D94(&v86, &qword_27CD86E70);
  }

  v47 = sub_21B4C5FB8();
  v49 = v47;
  v50 = v48;
  v51 = v83;
  if (v74)
  {
    v87 = v28;
    *&v86 = v71;
    *(&v86 + 1) = v74;
    sub_21B36EE80(&v86, v85);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v88;
    sub_21B3749CC(v85, v49, v50, v52);

    v88 = v84;
  }

  else
  {
    sub_21B43D280(v47, v48, &v86);

    sub_21B3F2D94(&v86, &qword_27CD86E70);
  }

  v53 = sub_21B4C6068();
  sub_21B43D074(v75, v53, v54);

  sub_21B4C89D8();
  v55 = a12[3];
  *&v86 = a12[2];
  *&v85[0] = v55;
  v56 = a12[4];
  sub_21B36C7AC(&v86, &v84, &qword_27CD877F0);
  sub_21B36C7AC(v85, &v84, &qword_27CD877F8);

  sub_21B371F28(v56);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v57 = qword_2811FD5E0;
  v58 = *algn_2811FD5E8;
  v60 = v81;
  v59 = v82;
  v61 = v72;
  (*(v81 + 16))(v72, v51, v82);
  (*(v60 + 56))(v61, 0, 1, v59);
  sub_21B43CE50(v61, v57, v58);
  sub_21B3F2D94(v61, &qword_27CD877E0);
  v62 = sub_21B4C6018();
  sub_21B38E154(v62, v63, v88);
  v65 = v64;

  if (!v65)
  {

    if (!v56)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v56)
  {
LABEL_11:

    v56(v88);
    sub_21B36F6F4(v56);
  }

LABEL_13:
  v66 = *(v86 + 16);

  if (v66)
  {
    sub_21B373518(v51);
    if (v67)
    {
    }
  }

  if (*(*&v85[0] + 16))
  {
    sub_21B373518(v83);
    if (v68)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v86, &qword_27CD877F0);
  sub_21B3F2D94(v85, &qword_27CD877F8);
  sub_21B36F6F4(v56);
  (*(v81 + 8))(v83, v82);

  sub_21B4C8A48();
  return sub_21B4C8708();
}

uint64_t static ActionMetrics.play(adamID:targetType:fields:configuration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_21B4C8A58();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = sub_21B4C8A38();
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v72 - v25;
  if (a2 & 1) != 0 || (v80 = v26, (sub_21B4C7228()))
  {

    return MEMORY[0x28217EF20](v24);
  }

  v78 = v16;
  v79 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E8);
  v27 = *(sub_21B4C8628() - 8);
  v74 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_21B4D2830;
  *&v85 = a1;
  sub_21B391890();
  v28 = sub_21B4CA268();
  v30 = v29;
  v75 = sub_21B4C66E8();
  v73 = v22;
  v31 = a3;
  v33 = v32;
  v34 = sub_21B4C5748();
  (*(*(v34 - 8) + 56))(v80, 1, 1, v34);
  v87 = a5;

  v35 = sub_21B4C6058();
  v37 = v36;
  v86 = MEMORY[0x277D837D0];
  *&v85 = v28;
  *(&v85 + 1) = v30;
  sub_21B36EE80(&v85, v84);
  v76 = v30;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = a5;
  sub_21B3749CC(v84, v35, v37, isUniquelyReferenced_nonNull_native);

  v39 = v83;
  v87 = v83;
  v40 = sub_21B4C5F78();
  v42 = v41;
  v43 = MEMORY[0x277D837D0];
  v86 = MEMORY[0x277D837D0];
  *&v85 = v31;
  *(&v85 + 1) = a4;
  v44 = v73;
  sub_21B36EE80(&v85, v84);

  v45 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v39;
  sub_21B3749CC(v84, v40, v42, v45);

  v46 = v83;
  v87 = v83;
  v47 = sub_21B4C5F58();
  v49 = v48;
  v86 = v43;
  *&v85 = v75;
  *(&v85 + 1) = v33;
  sub_21B36EE80(&v85, v84);
  v75 = v33;

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v46;
  sub_21B3749CC(v84, v47, v49, v50);

  v87 = v83;
  v51 = sub_21B4C5FD8();
  sub_21B43D280(v51, v52, &v85);

  sub_21B3F2D94(&v85, &qword_27CD86E70);
  v53 = sub_21B4C5FB8();
  sub_21B43D280(v53, v54, &v85);

  sub_21B3F2D94(&v85, &qword_27CD86E70);
  v55 = sub_21B4C6068();
  sub_21B43D074(v80, v55, v56);

  sub_21B4C89D8();
  v57 = a6[3];
  *&v85 = a6[2];
  *&v84[0] = v57;
  v58 = a6[4];
  sub_21B36C7AC(&v85, &v83, &qword_27CD877F0);
  sub_21B36C7AC(v84, &v83, &qword_27CD877F8);

  sub_21B371F28(v58);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v59 = qword_2811FD5E0;
  v60 = *algn_2811FD5E8;
  v62 = v81;
  v61 = v82;
  (*(v81 + 16))(v19, v44, v82);
  (*(v62 + 56))(v19, 0, 1, v61);
  sub_21B43CE50(v19, v59, v60);
  sub_21B3F2D94(v19, &qword_27CD877E0);
  v63 = sub_21B4C6018();
  v64 = v87;
  sub_21B38E154(v63, v65, v87);
  v67 = v66;

  if (v67)
  {
    if (!v58)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v58)
  {
LABEL_10:

    v58(v64);
    sub_21B36F6F4(v58);
  }

LABEL_12:
  v68 = *(v85 + 16);

  if (v68)
  {
    sub_21B373518(v44);
    if (v69)
    {
    }
  }

  if (*(*&v84[0] + 16))
  {
    sub_21B373518(v44);
    if (v70)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v85, &qword_27CD877F0);
  sub_21B3F2D94(v84, &qword_27CD877F8);
  sub_21B36F6F4(v58);
  (*(v81 + 8))(v44, v82);

  sub_21B3F2D94(v80, &qword_27CD86E60);
  sub_21B4C8A48();
  return sub_21B4C8708();
}

void *sub_21B43CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21B36CEF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21B36D428(*(a3 + 56) + 32 * v4, v9);
  sub_21B36D428(v9, v8);
  v6 = sub_21B43D4D4(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_21B43CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_21B4C8A38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B36C7AC(a1, v8, &qword_27CD877E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21B3F2D94(v8, &qword_27CD877E0);
    sub_21B43D280(a2, a3, &v15);
    return sub_21B3F2D94(&v15, &qword_27CD86E70);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_21B39472C();

    sub_21B4C98C8();
    v16 = MEMORY[0x277D837D0];
    v15 = v14;
    sub_21B38E018(&v15, a2, a3);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_21B43D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = sub_21B4C5748();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B36C7AC(a1, v8, &qword_27CD86E60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21B3F2D94(v8, &qword_27CD86E60);
    sub_21B43D280(a2, a3, v14);
    return sub_21B3F2D94(v14, &qword_27CD86E70);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);

    sub_21B4C6E88();
    sub_21B38E018(v14, a2, a3);
    return (*(v10 + 8))(v12, v9);
  }
}

double sub_21B43D280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21B36CEF8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B3935DC();
      v10 = v12;
    }

    sub_21B36EE80((*(v10 + 56) + 32 * v8), a3);
    sub_21B43D324(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21B43D324(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B4CA2B8() + 1) & ~v5;
    do
    {
      sub_21B4CA6E8();

      sub_21B4C9658();
      v10 = sub_21B4CA738();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_21B43D4D4(uint64_t a1)
{
  sub_21B36D428(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87800);
  if (swift_dynamicCast())
  {
    v2 = *(v8 + 16);
    if (v2)
    {
      v3 = v8 + 32;
      v4 = MEMORY[0x277D84F90];
      do
      {
        sub_21B36D428(v3, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB0);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_21B3F2864(0, v4[2] + 1, 1, v4);
          }

          v6 = v4[2];
          v5 = v4[3];
          if (v6 >= v5 >> 1)
          {
            v4 = sub_21B3F2864((v5 > 1), v6 + 1, 1, v4);
          }

          v4[2] = v6 + 1;
          v4[v6 + 4] = v8;
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  return v4;
}

uint64_t BaseObjectGraph.addingMetricsFieldsContext(_:)(uint64_t a1)
{
  v2 = sub_21B4C8CD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C84C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_21B4C84B8();
  v11 = sub_21B4C8838();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_21B43D7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BaseObjectGraph.addingClickLocationTracker(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_21B4C8CD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_21B4C84C8();
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    type metadata accessor for ClickLocationTracker();
    v14 = swift_allocObject();
    v15 = sub_21B37AC24(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87808);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 16) = v15;
    *(v14 + 16) = v16;
  }

  type metadata accessor for ClickLocationTracker();
  v27 = v14;

  sub_21B4C84B8();
  sub_21B4C8838();
  v23 = *(v26 + 8);
  v24 = v11;
  v26 += 8;
  v23(v13, v11);

  sub_21B4C87E8();
  v17 = *(v6 + 48);
  if (v17(v4, 1, v5) == 1)
  {
    sub_21B4C8CC8();
    if (v17(v4, 1, v5) != 1)
    {
      sub_21B43D7F0(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
  }

  v27 = v14;
  v18 = v24;
  if (qword_2811FD140 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810);
  __swift_project_value_buffer(v19, qword_2811FD148);
  sub_21B4C8CB8();
  (*(v6 + 16))(v25, v10, v5);
  sub_21B4C84B8();
  v20 = sub_21B4C8838();
  v23(v13, v18);
  (*(v6 + 8))(v10, v5);

  return v20;
}

uint64_t sub_21B43DCA4(_OWORD *a1, void (*a2)(__int128 *))
{
  v24 = a2;
  v25 = sub_21B4C84C8();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_21B4C8CD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = a1[1];
  v31[0] = *a1;
  v31[1] = v16;
  v17 = a1[3];
  v19 = *a1;
  v18 = a1[1];
  v31[2] = a1[2];
  v31[3] = v17;
  v27 = v19;
  v28 = v18;
  v20 = a1[3];
  v29 = a1[2];
  v30 = v20;
  sub_21B39E5DC(v31, v26);
  sub_21B4C87E8();
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    sub_21B4C8CC8();
    if (v21(v8, 1, v9) != 1)
    {
      sub_21B43D7F0(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  v24(&v27);
  (*(v10 + 16))(v12, v15, v9);
  sub_21B4C84B8();
  v22 = sub_21B4C8838();
  (*(v3 + 8))(v5, v25);
  (*(v10 + 8))(v15, v9);
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  sub_21B39FE70(v26);
  return v22;
}

uint64_t BaseObjectGraph.addingImpressionsTracker(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87818);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_21B4C8CD8();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v10;
  v11 = sub_21B4C84C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C8FC8();
  v34 = a1;

  sub_21B4C84B8();
  sub_21B4C8838();
  v15 = *(v12 + 8);
  v15(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87820);
  v34 = a1;
  v35 = MEMORY[0x277D22248];
  swift_retain_n();
  sub_21B4C84B8();
  v16 = sub_21B4C8838();
  v28 = v15;
  v29 = v11;
  v15(v14, v11);
  v17 = v25;

  v26 = v16;
  sub_21B4C87E8();
  v18 = *(v17 + 48);
  v19 = v6;
  if (v18(v6, 1, v7) == 1)
  {
    v20 = v27;
    sub_21B4C8CC8();
    if (v18(v19, 1, v7) != 1)
    {
      sub_21B43D7F0(v19);
    }
  }

  else
  {
    v20 = v27;
    (*(v17 + 32))(v27, v19, v7);
  }

  v34 = a1;
  v35 = MEMORY[0x277D22248];

  v21 = v31;
  sub_21B4C8C98();
  sub_21B4C8CB8();
  (*(v32 + 8))(v21, v33);

  (*(v17 + 16))(v30, v20, v7);
  sub_21B4C84B8();
  v22 = sub_21B4C8838();
  v28(v14, v29);
  (*(v17 + 8))(v20, v7);

  return v22;
}

uint64_t BaseObjectGraph.addingImpressionsCalculator(_:)(uint64_t a1)
{
  v2 = sub_21B4C84C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicImpressionsCalculator();
  v8[1] = a1;

  sub_21B4C84B8();
  v6 = sub_21B4C8838();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t BaseObjectGraph.addingPageContextTracker(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_21B4C8CD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = sub_21B4C84C8();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    sub_21B4C6868();
    v14 = sub_21B4C6848();
  }

  sub_21B4C6868();
  v25 = v14;

  sub_21B4C84B8();
  sub_21B4C8838();
  v21 = *(v24 + 8);
  v22 = v11;
  v24 += 8;
  v21(v13, v11);

  sub_21B4C87E8();
  v15 = *(v6 + 48);
  if (v15(v4, 1, v5) == 1)
  {
    sub_21B4C8CC8();
    if (v15(v4, 1, v5) != 1)
    {
      sub_21B43D7F0(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
  }

  v25 = v14;
  v16 = v22;
  if (qword_2811FD160 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87828);
  __swift_project_value_buffer(v17, qword_2811FD168);
  sub_21B4C8CB8();
  (*(v6 + 16))(v23, v10, v5);
  sub_21B4C84B8();
  v18 = sub_21B4C8838();
  v21(v13, v16);
  (*(v6 + 8))(v10, v5);

  return v18;
}

uint64_t BaseObjectGraph.addingSearchFiltersTracker(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_21B4C8CD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = sub_21B4C84C8();
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    type metadata accessor for SearchFiltersTracker();
    v14 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87830);
    v15 = swift_allocObject();
    *(v15 + 36) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 2;
    *(v14 + 16) = v15;
  }

  type metadata accessor for SearchFiltersTracker();
  v26 = v14;

  sub_21B4C84B8();
  sub_21B4C8838();
  v22 = *(v25 + 8);
  v23 = v11;
  v25 += 8;
  v22(v13, v11);

  sub_21B4C87E8();
  v16 = *(v6 + 48);
  if (v16(v4, 1, v5) == 1)
  {
    sub_21B4C8CC8();
    if (v16(v4, 1, v5) != 1)
    {
      sub_21B43D7F0(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
  }

  v26 = v14;
  v17 = v23;
  if (qword_2811FD118 != -1)
  {
    swift_once();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87838);
  __swift_project_value_buffer(v18, qword_2811FD120);
  sub_21B4C8CB8();
  (*(v6 + 16))(v24, v10, v5);
  sub_21B4C84B8();
  v19 = sub_21B4C8838();
  v22(v13, v17);
  (*(v6 + 8))(v10, v5);

  return v19;
}

void sub_21B43ED30(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t Dependency.init<A>(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NamedDependencies();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_21B4C84A8();
}

uint64_t sub_21B43EE8C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v3 = sub_21B4C9958();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_21B4404D8(v3, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  return v5;
}

uint64_t NamedDependencies.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_21B4C95D8();
  v2 = sub_21B4407C4();

  *a1 = v2;
  return result;
}

void NamedDependencies.adding(_:for:)(void *a1@<X8>)
{
  v3 = *v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_21B4C95D8();
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_21B440840(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_21B43F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v19 = a1;
  v20 = a6;
  v10 = sub_21B4CA188();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v16 + 16))(&v19 - v15, a2, AssociatedTypeWitness, v14);
  v17 = *(a5 - 8);
  (*(v17 + 16))(v12, a3, a5);
  (*(v17 + 56))(v12, 0, 1, a5);
  swift_getAssociatedConformanceWitness();
  sub_21B4C95D8();
  sub_21B4C95F8();
  *v20 = a4;
}

uint64_t BaseObjectGraph.satisfying<A>(_:named:construction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v14 = type metadata accessor for NamedDependencies();
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  *(v16 + 3) = a6;
  *(v16 + 4) = v20;
  *(v16 + 5) = a4;
  (*(v11 + 32))(&v16[v15], v13, AssociatedTypeWitness);

  v17 = BaseObjectGraph.satisfying<A>(_:with:)(v14, sub_21B440864, v16, v14);

  return v17;
}

uint64_t sub_21B43F4D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v13[1] = a3;
  v13[0] = a5;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NamedDependencies();
  sub_21B4C87E8();
  v11 = v14;
  if (!v14)
  {
    sub_21B43EE8C(a4);
    NamedDependencies.init(_:)(&v15);
    v11 = v15;
  }

  v15 = v11;
  a2(a1);
  NamedDependencies.adding(_:for:)(v13[0]);
  (*(v8 + 8))(v10, a4);
}

uint64_t BaseObjectGraph.satisfying<A>(_:named:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, v13, v10);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = (*(v8 + 32))(v15 + v14, v11, a4);
  v17 = BaseObjectGraph.satisfying<A>(_:named:construction:)(v16, a2, sub_21B440910, v15, a4, a5);

  return v17;
}

uint64_t BaseObjectGraph.satisfyingAll<A>(_:producer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for NamedDependencies();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a2;
  v12[6] = a3;

  v13 = BaseObjectGraph.satisfying<A>(_:with:)(v11, sub_21B440950, v12, v11);

  return v13;
}

uint64_t sub_21B43F868@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a6;
  v23 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = type metadata accessor for NamedDependencies();
  sub_21B4C87E8();
  v11 = v28;
  v26 = a4;
  if (!v28)
  {
    sub_21B43EE8C(a3);
    NamedDependencies.init(_:)(v27);
    v11 = v27[0];
  }

  v12 = v23(a1);
  v13 = swift_checkMetadataState();
  sub_21B4CA348();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v15 = sub_21B4C9BA8();
  v23 = v12;
  v27[0] = v12;
  v16 = sub_21B4C95B8();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x21CEF32B0](v27, v15, v13, v16, AssociatedConformanceWitness, WitnessTable);
  LOBYTE(v12) = sub_21B4C9B88();

  if (v12)
  {

    v27[0] = v23;
    v28 = v11;
    MEMORY[0x28223BE20](v18);
    v19 = v26;
    *(&v22 - 4) = a3;
    *(&v22 - 3) = v19;
    v21 = a5;
    sub_21B4C95D8();
    swift_getWitnessTable();
    sub_21B4C98B8();
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_21B4CA338();
    MEMORY[0x21CEF2F30](0xD00000000000006DLL, 0x800000021B4E01A0);
    v28 = v23;
    swift_getWitnessTable();
    sub_21B4CA5D8();
    MEMORY[0x21CEF2F30](0x657463657078450ALL, 0xEA00000000003A64);
    v28 = v15;
    sub_21B4C9B98();
    swift_getWitnessTable();
    sub_21B4CA5D8();
    result = sub_21B4CA488();
    __break(1u);
  }

  return result;
}

uint64_t BaseObjectGraph.satisfyingAll<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for NamedDependencies();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a2;

  v11 = BaseObjectGraph.satisfying<A>(_:with:)(v9, sub_21B440974, v10, v9);

  return v11;
}

uint64_t sub_21B43FD44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = type metadata accessor for NamedDependencies();
  sub_21B4C87E8();
  v10 = v26;
  if (!v26)
  {
    sub_21B43EE8C(a2);
    NamedDependencies.init(_:)(v25);
    v10 = v25[0];
  }

  v22 = v10;
  v11 = swift_checkMetadataState();
  sub_21B4CA348();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_21B4C9BA8();
  v25[0] = a1;
  v14 = sub_21B4C95B8();

  WitnessTable = swift_getWitnessTable();
  v21[1] = v14;
  MEMORY[0x21CEF32B0](v25, v13, v11, v14, AssociatedConformanceWitness, WitnessTable);
  v16 = a1;
  v17 = sub_21B4C9B88();

  if (v17)
  {

    v25[0] = v16;
    v26 = v22;
    MEMORY[0x28223BE20](v18);
    v21[-4] = a2;
    v21[-3] = a3;
    v20 = a4;
    sub_21B4C95D8();
    swift_getWitnessTable();
    sub_21B4C98B8();
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_21B4CA338();
    MEMORY[0x21CEF2F30](0xD00000000000006DLL, 0x800000021B4E01A0);
    v26 = v16;
    swift_getWitnessTable();
    sub_21B4CA5D8();
    MEMORY[0x21CEF2F30](0x657463657078450ALL, 0xEA00000000003A64);
    v26 = v13;
    sub_21B4C9B98();
    swift_getWitnessTable();
    sub_21B4CA5D8();
    result = sub_21B4CA488();
    __break(1u);
  }

  return result;
}

void sub_21B440138(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for NamedDependencies();
  NamedDependencies.adding(_:for:)(a1);
}

uint64_t sub_21B440240@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  *a3 = result;
  return result;
}

uint64_t sub_21B4402A0@<X0>(uint64_t *a1@<X8>)
{
  (*(v1 + 32))();

  return NamedDependencies.init(_:)(a1);
}

unint64_t sub_21B4402F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C9628();

  return sub_21B440350(a1, v6, a2, a3);
}

unint64_t sub_21B440350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_21B4C96B8();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_21B4404D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21B4C9998())
  {
    sub_21B4CA4F8();
    v13 = sub_21B4CA4E8();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21B4C9998();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21B4C9978())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21B4CA358();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21B4402F4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_21B4407C4()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_21B4CA3C8();
  return sub_21B4CA3B8();
}

uint64_t sub_21B440864@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_21B43F4D0(a1, *(v2 + 32), (v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80))), v5, a2);
}

uint64_t sub_21B4409C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t BaseObjectGraph.withName(_:)()
{
  sub_21B4C8868();

  v0 = sub_21B4C8878();

  sub_21B4C8818();
  return v0;
}

uint64_t BaseObjectGraph.satisfyingIfPresent<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B4CA188();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7, v13);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v11 + 32))(v15, v10, a3);
    v3 = BaseObjectGraph.satisfying<A>(_:with:)(a1, v15, a3);
    (*(v11 + 8))(v15, a3);
  }

  return v3;
}

uint64_t BaseObjectGraph.satisfyingIfPresent<A>(_:with:)(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_21B4CA188();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v4, v15);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v17, v12, a4);
    v5 = BaseObjectGraph.satisfying<A>(_:with:)(a1, v17, a4);
    (*(v13 + 8))(v17, a4);
  }

  return v5;
}

uint64_t BaseObjectGraph.satisfying<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21B4C84D8();
  v7 = BaseObjectGraph.satisfying<A>(_:with:)(a1, v6, a2);
  (*(v4 + 8))(v6, a2);
  return v7;
}

uint64_t BaseObjectGraph.chainingIntentDispatcher(dispatcher:)(void (*a1)(uint64_t, double))
{
  v3 = sub_21B4C84C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21B4410E0(v1, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87870);
  sub_21B3F821C(v11, v10);
  sub_21B4C84B8();
  v7 = sub_21B4C8838();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_21B4410E0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21B4C8EF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18[-v12 - 8];
  a2(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87870);
  sub_21B4C87E8();
  if (v20)
  {
    sub_21B36D484(&v19, v21);
    sub_21B3F821C(v21, &v19);
    (*(v7 + 16))(v9, v13, v6);
    sub_21B44134C(&v19, v18);
    sub_21B4C8EE8();
    sub_21B4412E4(&v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(v7 + 8))(v13, v6);
    (*(v7 + 32))(v13, v9, v6);
  }

  else
  {
    sub_21B4412E4(&v19);
  }

  v14 = MEMORY[0x277D22188];
  a3[3] = v6;
  a3[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(v7 + 32))(boxed_opaque_existential_1, v13, v6);
}

uint64_t sub_21B4412E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B44134C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConcurrencyActionImplmenetation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v25 - v8;
  v27 = &v25 - v8;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877C0);
  v28 = sub_21B4C9438();
  v17 = sub_21B4C9A58();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v29, a3);
  (*(v6 + 16))(v9, v30, AssociatedTypeWitness);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = (v11 + v18 + *(v6 + 80)) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v31;
  *(v21 + 4) = a3;
  *(v21 + 5) = v22;
  (*(v10 + 32))(&v21[v18], v13, a3);
  (*(v6 + 32))(&v21[v19], v27, v26);
  *&v21[v20] = v32;
  v23 = v28;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_21B441C64(0, 0, v16, &unk_21B4D5BB8, v21);

  sub_21B385E00(v16);
  return v23;
}

uint64_t sub_21B4416D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v12 = sub_21B4C8718();
  v8[3] = v12;
  v8[4] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[5] = v13;
  v16 = (*(v18 + 16) + **(v18 + 16));
  v14 = swift_task_alloc();
  v8[6] = v14;
  *v14 = v8;
  v14[1] = sub_21B441888;

  return v16(v13, a5, a6, a8);
}

uint64_t sub_21B441888()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21B441A2C;
  }

  else
  {
    v2 = sub_21B44199C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B44199C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_21B4C9418();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B441A2C()
{
  v1 = *(v0 + 56);
  sub_21B4C93F8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B441AA4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = v5 + *(*(v4 - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21B40998C;

  return sub_21B4416D8(a1, v10, v11, v1 + v5, v1 + v8, v12, v13, v4);
}

uint64_t sub_21B441C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21B389F80(a3, v25 - v10);
  v12 = sub_21B4C9A58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21B385E00(v11);
  }

  else
  {
    sub_21B4C9A48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21B4C99C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21B4C9778() + 32;
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

uint64_t dispatch thunk of ConcurrencyActionImplmenetation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21B40998C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t DynamicImpressionsTracker.init(configuration:)(uint64_t a1)
{
  v2 = sub_21B4C8F98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  v6 = sub_21B4C8FD8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t ImpressionMetrics.ID.withIndex(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C8B08();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  return sub_21B4C8AB8();
}

uint64_t ImpressionMetrics.ID.withParent(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_21B4C8B08();
    (*(*(v7 - 8) + 16))(a3, v4, v7);

    return sub_21B4C8AE8();
  }

  else
  {
LABEL_6:
    v9 = sub_21B4C8B08();
    v10 = *(*(v9 - 8) + 16);

    return v10(a3, v4, v9);
  }
}

uint64_t ImpressionMetrics.ID.withUniqueID(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    sub_21B4C8AD8();
    sub_21B4C8AF8();
    sub_21B4C8AA8();

    return sub_21B4C8AC8();
  }

  else
  {
LABEL_8:
    v7 = sub_21B4C8B08();
    v8 = *(*(v7 - 8) + 16);

    return v8(a3, v3, v7);
  }
}

uint64_t static ImpressionMetrics.bubbleTip(id:uniqueID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_21B4C8A58();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21B4C8B08();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_21B4C5F68();
  v12 = v11;
  v13 = sub_21B4C6768();
  v14 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = v13;
  *(&v30 + 1) = v15;
  sub_21B36EE80(&v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v29, v10, v12, isUniquelyReferenced_nonNull_native);

  v17 = sub_21B4C60B8();
  v19 = v17;
  v20 = v18;
  if (a6)
  {
    v31 = v14;
    *&v30 = a5;
    *(&v30 + 1) = a6;
    sub_21B36EE80(&v30, v29);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_21B3749CC(v29, v19, v20, v21);
  }

  else
  {
    sub_21B43D280(v17, v18, &v30);

    sub_21B3F9F3C(&v30);
  }

  v22 = sub_21B4C5F88();
  v24 = v23;
  v25 = sub_21B4C6768();
  v31 = v14;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  sub_21B36EE80(&v30, v29);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v29, v22, v24, v27);

  sub_21B4C8AC8();
  sub_21B4C8A48();
  return sub_21B4C8B18();
}

uint64_t JSONTypeCluster<>.makeInstance(byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v36 = a4;
  v35 = a2;
  v33 = a5;
  v40 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21B4CA188();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = sub_21B4C8518();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_21B4C8528();
  v17 = sub_21B4C8508();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  if (!v19)
  {
    v25 = sub_21B4C94E8();
    sub_21B4107C0();
    swift_allocError();
    v27 = v26;
    v28 = swift_getAssociatedTypeWitness();
    *v27 = 0x646E696B24;
    v27[1] = 0xE500000000000000;
    v27[2] = v28;
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D22530], v25);
    return swift_willThrow();
  }

  v38 = v17;
  v39 = v19;

  sub_21B4C98D8();
  v20 = v37;
  if ((*(v37 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v31 + 8))(v9, v32);
    v21 = sub_21B4C94E8();
    sub_21B4107C0();
    swift_allocError();
    v23 = v22;
    v24 = swift_getAssociatedTypeWitness();
    *v23 = v17;
    v23[1] = v19;
    v23[2] = v24;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D22528], v21);
    return swift_willThrow();
  }

  (*(v20 + 32))(v12, v9, AssociatedTypeWitness);
  sub_21B4C8888();
  return (*(v20 + 8))(v12, AssociatedTypeWitness);
}

uint64_t JSONTypeCluster<>.tryToMakeInstance(byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  JSONTypeCluster<>.makeInstance(byDeserializing:using:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 56);

  return v7(a5, 0, 1, AssociatedTypeWitness);
}

uint64_t MetricsData.init(eventType:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v27 = a2;
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v10 = qword_2811FD5E0;
  v11 = *algn_2811FD5E8;
  v12 = sub_21B4C8A38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v26 = a1;
  v14(v9, a1, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_21B43CE50(v9, v10, v11);
  sub_21B3F2D94(v9, &qword_27CD877E0);
  v15 = sub_21B4C6018();
  v16 = v27;
  v17 = sub_21B374E9C(v15);
  v19 = v18;

  if (!v19)
  {
    v17 = *a3;
  }

  v25[0] = v17;
  v20 = a3[4];
  if (v20)
  {

    v20(v16);
    sub_21B36F6F4(v20);
  }

  v30 = a3[2];
  v21 = *(v30 + 16);

  if (v21)
  {
    sub_21B373518(v26);
    if (v22)
    {
    }
  }

  v29 = a3[3];
  if (*(v29 + 16))
  {
    sub_21B373518(v26);
    if (v23)
    {
    }
  }

  sub_21B4C8618();
  v28 = *a3;
  sub_21B3F2D94(&v28, &qword_27CD87880);
  sub_21B3F2D94(&v30, &qword_27CD877F0);
  sub_21B3F2D94(&v29, &qword_27CD877F8);
  sub_21B36F6F4(v20);
  (*(v13 + 8))(v26, v12);
}

void sub_21B44307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6, v14);
      (*(v7 + 32))(v9, v16, v6);
      v28(v12, v9);
      (*(v7 + 8))(v12, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t MetricsData.addingIncludedField(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87888);
  v5 = sub_21B4C9148();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B4D2830;
  (*(v6 + 16))(v8 + v7, a1, v5);
  v9 = sub_21B44A928(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  v10 = sub_21B4C85F8();
  sub_21B44307C(v9, v10, MEMORY[0x277D22320], sub_21B444F48);
  v11 = sub_21B4C8628();
  (*(*(v11 - 8) + 16))(a2, v2, v11);
  return sub_21B4C8608();
}

uint64_t MetricsData.removingIncludedFields(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C85F8();
  if (*(a1 + 16) <= *(v5 + 16) >> 3)
  {
    sub_21B449DEC(a1, &qword_27CD878D8, &unk_21B4D5C58, MEMORY[0x277D22320], sub_21B44A008);
  }

  else
  {
    sub_21B44792C(a1, v5);
  }

  v6 = sub_21B4C8628();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return sub_21B4C8608();
}

uint64_t MetricsData.removingIncludedField(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87888);
  v6 = sub_21B4C9148();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21B4D2830;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = sub_21B44A928(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v11 = sub_21B4C85F8();
  if (*(v10 + 16) <= *(v11 + 16) >> 3)
  {
    sub_21B449DEC(v10, &qword_27CD878D8, &unk_21B4D5C58, MEMORY[0x277D22320], sub_21B44A008);
  }

  else
  {
    sub_21B44792C(v10, v11);
  }

  v12 = sub_21B4C8628();
  (*(*(v12 - 8) + 16))(a2, v3, v12);
  sub_21B4C8608();
}

uint64_t sub_21B443770@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C8628();
  (*(*(v5 - 8) + 16))(a2, v2, v5);

  return a1(v6);
}

uint64_t sub_21B443844@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(char *, char *)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = a1();

  sub_21B44307C(v11, v10, a2, a3);
  v13 = v12;
  v14 = sub_21B4C8628();
  (*(*(v14 - 8) + 16))(a5, v5, v14);
  return a4(v13);
}

uint64_t MetricsData.addingExcludedField(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87890);
  v5 = sub_21B4C90C8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B4D2830;
  (*(v6 + 16))(v8 + v7, a1, v5);
  v9 = sub_21B44AC48(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  v10 = sub_21B4C85D8();
  sub_21B44307C(v9, v10, MEMORY[0x277D22300], sub_21B445228);
  v11 = sub_21B4C8628();
  (*(*(v11 - 8) + 16))(a2, v2, v11);
  return sub_21B4C85E8();
}

uint64_t MetricsData.removingExcludedFields(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C85D8();
  if (*(a1 + 16) <= *(v5 + 16) >> 3)
  {
    sub_21B449DEC(a1, &qword_27CD878B8, &unk_21B4D5C48, MEMORY[0x277D22300], sub_21B44A318);
  }

  else
  {
    sub_21B448390(a1, v5);
  }

  v6 = sub_21B4C8628();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return sub_21B4C85E8();
}

uint64_t MetricsData.removingExcludedField(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87890);
  v6 = sub_21B4C90C8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21B4D2830;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = sub_21B44AC48(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v11 = sub_21B4C85D8();
  if (*(v10 + 16) <= *(v11 + 16) >> 3)
  {
    sub_21B449DEC(v10, &qword_27CD878B8, &unk_21B4D5C48, MEMORY[0x277D22300], sub_21B44A318);
  }

  else
  {
    sub_21B448390(v10, v11);
  }

  v12 = sub_21B4C8628();
  (*(*(v12 - 8) + 16))(a2, v3, v12);
  sub_21B4C85E8();
}

uint64_t static MetricsData.impressionsData(eventVersion:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v40[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v40 - v8;
  v10 = sub_21B4C8A38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_21B4C5FC8();
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v47 = sub_21B377824();
  *&v46 = v17;
  sub_21B36EE80(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = a2;
  sub_21B3749CC(v45, v14, v16, isUniquelyReferenced_nonNull_native);

  v19 = v44;
  v20 = sub_21B4C5FE8();
  v22 = v21;
  v23 = sub_21B4C6CF8();
  v47 = MEMORY[0x277D837D0];
  *&v46 = v23;
  *(&v46 + 1) = v24;
  sub_21B36EE80(&v46, v45);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v19;
  sub_21B3749CC(v45, v20, v22, v25);

  sub_21B4C8988();
  v26 = a3[1];
  v40[0] = *a3;
  v27 = a3[3];
  *&v46 = a3[2];
  *&v45[0] = v27;
  v28 = a3[4];
  sub_21B36C7AC(&v46, &v44, &qword_27CD877F0);
  sub_21B36C7AC(v45, &v44, &qword_27CD877F8);
  v42 = v26;

  sub_21B371F28(v28);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v29 = qword_2811FD5E0;
  v30 = *algn_2811FD5E8;
  (*(v11 + 16))(v9, v13, v10);
  v31 = *(v11 + 56);
  v41 = v10;
  v31(v9, 0, 1, v10);
  sub_21B43CE50(v9, v29, v30);
  sub_21B3F2D94(v9, &qword_27CD877E0);
  v32 = sub_21B4C6018();
  v33 = v43;
  sub_21B374E9C(v32);
  v35 = v34;

  if (!v35)
  {

    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v28)
  {
LABEL_5:

    v28(v33);
    sub_21B36F6F4(v28);
  }

LABEL_7:
  v36 = *(v46 + 16);

  if (v36)
  {
    sub_21B373518(v13);
    if (v37)
    {
    }
  }

  if (*(*&v45[0] + 16))
  {
    sub_21B373518(v13);
    if (v38)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v46, &qword_27CD877F0);
  sub_21B3F2D94(v45, &qword_27CD877F8);
  sub_21B36F6F4(v28);
  (*(v11 + 8))(v13, v41);
}

uint64_t static MetricsData.pageData(fields:configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_21B4C8A38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C89C8();
  v12 = a2[1];
  v26[0] = *a2;
  v13 = a2[2];
  v31 = a2[3];
  v32 = v13;
  v14 = a2[4];
  v30 = a1;

  sub_21B36C7AC(&v32, v29, &qword_27CD877F0);
  sub_21B36C7AC(&v31, v29, &qword_27CD877F8);
  v28 = v12;

  sub_21B371F28(v14);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v15 = qword_2811FD5E0;
  v16 = *algn_2811FD5E8;
  (*(v9 + 16))(v7, v11, v8);
  v17 = *(v9 + 56);
  v27 = v8;
  v17(v7, 0, 1, v8);
  sub_21B43CE50(v7, v15, v16);
  sub_21B3F2D94(v7, &qword_27CD877E0);
  v18 = sub_21B4C6018();
  v19 = v30;
  sub_21B374E9C(v18);
  v21 = v20;

  if (!v21)
  {

    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v14)
  {
LABEL_5:

    v14(v19);
    sub_21B36F6F4(v14);
  }

LABEL_7:
  v22 = *(v32 + 16);

  if (v22)
  {
    sub_21B373518(v11);
    if (v23)
    {
    }
  }

  if (*(v31 + 16))
  {
    sub_21B373518(v11);
    if (v24)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v32, &qword_27CD877F0);
  sub_21B3F2D94(&v31, &qword_27CD877F8);
  sub_21B36F6F4(v14);
  (*(v9 + 8))(v11, v27);
}

uint64_t static MetricsData.searchData(targetType:term:prefix:actionType:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  v68 = a7;
  v69 = a6;
  v67 = a5;
  v72 = a9;
  v70 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v66 - v18;
  v75 = sub_21B4C8A38();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a11;

  v20 = sub_21B4C5F78();
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  v80 = MEMORY[0x277D837D0];
  *&v79 = a1;
  *(&v79 + 1) = a2;
  sub_21B36EE80(&v79, v78);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = a11;
  sub_21B3749CC(v78, v20, v22, isUniquelyReferenced_nonNull_native);

  v25 = v77;
  v81 = v77;
  v26 = sub_21B4C60C8();
  v28 = v27;
  v80 = v23;
  *&v79 = a3;
  *(&v79 + 1) = a4;
  sub_21B36EE80(&v79, v78);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v25;
  sub_21B3749CC(v78, v26, v28, v29);

  v30 = v77;
  v81 = v77;
  v31 = sub_21B4C5F58();
  v33 = v32;
  v80 = v23;
  *&v79 = v68;
  *(&v79 + 1) = a8;
  sub_21B36EE80(&v79, v78);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v30;
  sub_21B3749CC(v78, v31, v33, v34);
  v35 = v69;

  v81 = v77;
  v36 = sub_21B4C6068();
  sub_21B43D074(v70, v36, v37);

  if (v35)
  {

    v38 = sub_21B4C6078();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B4D2830;
    *(inited + 32) = sub_21B4C6098();
    *(inited + 72) = v23;
    v42 = v67;
    *(inited + 40) = v43;
    *(inited + 48) = v42;
    *(inited + 56) = v35;
    v44 = sub_21B40D384(inited);
    swift_setDeallocating();
    sub_21B3F2D94(inited + 32, &qword_27CD86FA0);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB0);
    *&v79 = v44;
    sub_21B36EE80(&v79, v78);
    v45 = v81;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v45;
    sub_21B3749CC(v78, v38, v40, v46);

    v47 = v77;
    v81 = v77;
  }

  else
  {
    v47 = v81;
  }

  v48 = v73;
  sub_21B4C8A18();
  v49 = a12[3];
  *&v79 = a12[2];
  v77 = v47;
  *&v78[0] = v49;
  v50 = a12[4];
  sub_21B36C7AC(&v79, v76, &qword_27CD877F0);
  sub_21B36C7AC(v78, v76, &qword_27CD877F8);

  sub_21B371F28(v50);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v51 = qword_2811FD5E0;
  v52 = *algn_2811FD5E8;
  v53 = v74;
  v54 = v71;
  v55 = v48;
  v56 = v75;
  (*(v74 + 16))(v71, v55, v75);
  (*(v53 + 56))(v54, 0, 1, v56);
  sub_21B43CE50(v54, v51, v52);
  sub_21B3F2D94(v54, &qword_27CD877E0);
  v57 = sub_21B4C6018();
  v58 = v77;
  sub_21B374E9C(v57);
  v60 = v59;

  if (!v60)
  {
  }

  v61 = v73;
  if (v50)
  {

    v50(v58);
    sub_21B36F6F4(v50);
  }

  v62 = *(v79 + 16);

  if (v62)
  {
    sub_21B373518(v61);
    if (v63)
    {
    }
  }

  if (*(*&v78[0] + 16))
  {
    sub_21B373518(v61);
    if (v64)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v79, &qword_27CD877F0);
  sub_21B3F2D94(v78, &qword_27CD877F8);
  sub_21B36F6F4(v50);
  (*(v74 + 8))(v61, v75);
}

uint64_t sub_21B444C28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21B4CA6E8();
  sub_21B4C9658();
  v8 = sub_21B4CA738();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21B4CA608() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21B446098(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21B444D78(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v8 = *v4;
  sub_21B4CA6E8();
  v26 = a3;
  sub_21B4C72E8();
  v9 = sub_21B4CA738();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_21B439118(*v13, v15, *(v13 + 16));
      v17 = MEMORY[0x21CEF0A20](v14, v15, v16, a2, v26, a4);
      sub_21B43913C(v14, v15, v16);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21B43913C(a2, v26, a4);
    v20 = *(v8 + 48) + 24 * v11;
    v21 = *v20;
    v22 = *(v20 + 8);
    *a1 = *v20;
    *(a1 + 8) = v22;
    v23 = *(v20 + 16);
    *(a1 + 16) = v23;
    sub_21B439118(v21, v22, v23);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_21B439118(a2, v26, a4);
    sub_21B446218(a2, v26, a4, v11, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = a2;
    *(a1 + 8) = v26;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_21B444F48(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21B4C9148();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
  v33 = a2;
  v11 = sub_21B4C9628();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
      v21 = sub_21B4C96B8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_21B4463D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21B445228(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21B4C90C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
  v33 = a2;
  v11 = sub_21B4C9628();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
      v21 = sub_21B4C96B8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_21B4466A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21B445508()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E8);
  result = sub_21B4CA308();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21B4CA6E8();
      sub_21B4C9658();
      result = sub_21B4CA738();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21B445768()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E0);
  result = sub_21B4CA308();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_21B4CA6E8();
      sub_21B4C72E8();
      result = sub_21B4CA738();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21B4459E0()
{
  v1 = v0;
  v35 = sub_21B4C9148();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878A0);
  result = sub_21B4CA308();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
      result = sub_21B4C9628();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21B445D3C()
{
  v1 = v0;
  v35 = sub_21B4C90C8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D0);
  result = sub_21B4CA308();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
      result = sub_21B4C9628();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21B446098(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21B445508();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21B446968();
      goto LABEL_16;
    }

    sub_21B446E64();
  }

  v10 = *v4;
  sub_21B4CA6E8();
  sub_21B4C9658();
  result = sub_21B4CA738();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21B4CA608();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21B4CA678();
  __break(1u);
  return result;
}

void sub_21B446218(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_21B445768();
  }

  else
  {
    if (v10 > v9)
    {
      sub_21B446AC4();
      goto LABEL_12;
    }

    sub_21B44709C();
  }

  v11 = *v5;
  sub_21B4CA6E8();
  sub_21B4C72E8();
  v12 = sub_21B4CA738();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_21B439118(*v15, v17, *(v15 + 16));
      v19 = MEMORY[0x21CEF0A20](v16, v17, v18, a1, a2, a3);
      sub_21B43913C(v16, v17, v18);
      if (v19)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21B4CA678();
  __break(1u);
}

uint64_t sub_21B4463D8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21B4C9148();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21B4459E0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_21B446C2C(MEMORY[0x277D22320], &qword_27CD878A0);
      goto LABEL_12;
    }

    sub_21B4472F4();
  }

  v13 = *v3;
  sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
  v14 = sub_21B4C9628();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
      v22 = sub_21B4C96B8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21B4CA678();
  __break(1u);
  return result;
}

uint64_t sub_21B4466A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21B4C90C8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21B445D3C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_21B446C2C(MEMORY[0x277D22300], &qword_27CD878D0);
      goto LABEL_12;
    }

    sub_21B447610();
  }

  v13 = *v3;
  sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
  v14 = sub_21B4C9628();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
      v22 = sub_21B4C96B8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21B4CA678();
  __break(1u);
  return result;
}

void *sub_21B446968()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E8);
  v2 = *v0;
  v3 = sub_21B4CA2F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B446AC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E0);
  v2 = *v0;
  v3 = sub_21B4CA2F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_21B439118(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B446C2C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_21B4CA2F8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_21B446E64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E8);
  result = sub_21B4CA308();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_21B4CA6E8();

      sub_21B4C9658();
      result = sub_21B4CA738();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B44709C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878E0);
  result = sub_21B4CA308();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_21B4CA6E8();
      sub_21B439118(v18, v19, v20);
      sub_21B4C72E8();
      result = sub_21B4CA738();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B4472F4()
{
  v1 = v0;
  v32 = sub_21B4C9148();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878A0);
  v6 = sub_21B4CA308();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
      result = sub_21B4C9628();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21B447610()
{
  v1 = v0;
  v32 = sub_21B4C90C8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D0);
  v6 = sub_21B4CA308();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
      result = sub_21B4C9628();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21B44792C(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_21B4C9148();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_21B3F2D94(v30, &qword_27CD878D8);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
    v32 = sub_21B4C9628();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
    v36 = sub_21B4C96B8();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_21B3F2D94(v24, &qword_27CD878D8);
        a2 = sub_21B44979C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_21B4C9628();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_21B4C96B8();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_21B4C96B8();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_21B448DF4(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x21CEF5710](v63, -1, -1);
LABEL_52:
  sub_21B439160();
  return a2;
}

uint64_t sub_21B448390(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_21B4C90C8();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_21B3F2D94(v30, &qword_27CD878B8);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
    v32 = sub_21B4C9628();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
    v36 = sub_21B4C96B8();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_21B3F2D94(v24, &qword_27CD878B8);
        a2 = sub_21B449AC4(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_21B4C9628();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_21B4C96B8();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_21B4C96B8();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_21B4492C8(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x21CEF5710](v63, -1, -1);
LABEL_52:
  sub_21B439160();
  return a2;
}

void sub_21B448DF4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_21B4C9148();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_21B3F2D94(v11, &qword_27CD878D8);
          v45 = v61;

          sub_21B44979C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
        v35 = sub_21B4C9628();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
        v43 = sub_21B4C96B8();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_21B4492C8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_21B4C90C8();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_21B3F2D94(v11, &qword_27CD878B8);
          v45 = v61;

          sub_21B449AC4(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
        v35 = sub_21B4C9628();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
        v43 = sub_21B4C96B8();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_21B44979C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_21B4C9148();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878A0);
  result = sub_21B4CA318();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
    result = sub_21B4C9628();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21B449AC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_21B4C90C8();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D0);
  result = sub_21B4CA318();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
    result = sub_21B4C9628();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_21B449DEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, double), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      sub_21B3F2D94(v11, v24);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21B44A008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C9148();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
  v30 = a1;
  v10 = sub_21B4C9628();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
      v18 = sub_21B4C96B8();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21B446C2C(MEMORY[0x277D22320], &qword_27CD878A0);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    sub_21B44A628(v12, MEMORY[0x277D22320], &qword_2811FCFD0, MEMORY[0x277D22320], MEMORY[0x277D22328]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

uint64_t sub_21B44A318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C90C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
  v30 = a1;
  v10 = sub_21B4C9628();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
      v18 = sub_21B4C96B8();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21B446C2C(MEMORY[0x277D22300], &qword_27CD878D0);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    sub_21B44A628(v12, MEMORY[0x277D22300], &qword_27CD878C0, MEMORY[0x277D22300], MEMORY[0x277D22308]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

void sub_21B44A628(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_21B4CA2B8();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_21B44AF68(v40, v41);
        v24 = sub_21B4C9628();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

uint64_t sub_21B44A928(uint64_t a1)
{
  v2 = sub_21B4C9148();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878A0);
    v9 = sub_21B4CA318();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21B44AF68(&qword_2811FCFD0, MEMORY[0x277D22320]);
      v16 = sub_21B4C9628();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21B44AF68(&qword_2811FCFC8, MEMORY[0x277D22320]);
          v23 = sub_21B4C96B8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B44AC48(uint64_t a1)
{
  v2 = sub_21B4C90C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878D0);
    v9 = sub_21B4CA318();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21B44AF68(&qword_27CD878C0, MEMORY[0x277D22300]);
      v16 = sub_21B4C9628();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21B44AF68(&qword_27CD878C8, MEMORY[0x277D22300]);
          v23 = sub_21B4C96B8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B44AF68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B44AFD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87900);
  sub_21B4C8A38();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B4D38F0;
  sub_21B4C8998();
  sub_21B4C89A8();
  v1 = sub_21B3A7750(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27CD878F0 = v1;
  return result;
}

uint64_t sub_21B44B100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87900);
  v0 = sub_21B4C8A38();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B4D2830;
  sub_21B4C8968();
  v4 = sub_21B3A7750(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  result = swift_deallocClassInstance();
  qword_27CD878F8 = v4;
  return result;
}

uint64_t sub_21B44B230(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_21B44B294@<X0>(void *a1@<X8>)
{
  sub_21B39472C();
  result = sub_21B4C98C8();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B44B2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_21B4C8C68();
  if (*(v8 + 16) && (v9 = sub_21B36CEF8(a1, a2), (v10 & 1) != 0))
  {
    sub_21B36D428(*(v8 + 56) + 32 * v9, v13);

    sub_21B36EE80(v13, v14);
    sub_21B36D428(v14, v13);
    sub_21B4C6E98();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {

    v12 = *(*(a3 - 8) + 56);

    return v12(a4, 1, 1, a3);
  }
}

Swift::Void __swiftcall MetricsFieldsContext.addChildClickLocation(_:)(PodcastsUI::ClickLocationElement *a1)
{
  uniqueID = a1->_uniqueID;
  id = a1->id;
  v10 = uniqueID;
  v2 = *&a1->position;
  parentUniqueID = a1->parentUniqueID;
  v12 = v2;
  if (qword_2811FD140 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810);
  __swift_project_value_buffer(v3, qword_2811FD148);
  type metadata accessor for ClickLocationTracker();
  sub_21B4C8CE8();
  if (v8)
  {
    if (qword_2811FD0F8 != -1)
    {
      swift_once();
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
    __swift_project_value_buffer(v4, qword_2811FD100);
    sub_21B4C8CE8();
    v5 = v7[0];
    sub_21B39E5DC(&id, v7);

    v7[0] = id;
    v7[1] = v10;
    v7[3] = v12;
    v7[2] = v5;
    v6[0] = id;
    v6[1] = v10;
    v6[2] = v5;
    v6[3] = v12;
    MetricsFieldsContext.setClickLocation(_:)(v6);

    sub_21B39FE70(v7);
  }
}

Swift::Void __swiftcall MetricsFieldsContext.replaceClickLocation(with:)(PodcastsUI::ClickLocationElement *with)
{
  uniqueID = with->_uniqueID;
  id = with->id;
  v34 = uniqueID;
  v2 = *&with->position;
  parentUniqueID = with->parentUniqueID;
  v36 = v2;
  if (qword_2811FD140 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810);
  __swift_project_value_buffer(v3, qword_2811FD148);
  type metadata accessor for ClickLocationTracker();
  sub_21B4C8CE8();
  if (*&v32[0])
  {
    if (qword_2811FD0F8 != -1)
    {
      swift_once();
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
    __swift_project_value_buffer(v4, qword_2811FD100);
    v5 = sub_21B4C8CE8();
    v6 = *(&v32[0] + 1);
    if (*(&v32[0] + 1))
    {
      v7 = *&v32[0];
      v8 = *(*&v32[0] + 16);
      MEMORY[0x28223BE20](v5);

      os_unfair_lock_lock((v8 + 24));
      sub_21B39DFE0((v8 + 16), v32);
      os_unfair_lock_unlock((v8 + 24));

      v28 = v32[0];
      v29 = v32[1];
      v30 = v32[2];
      v31 = v32[3];

      v9._countAndFlagsBits = v7;
      v9._object = v6;
      ClickLocationTracker.parent(of:)(&v24, v9);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    v20 = v24;
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v10 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      if (*(&v21 + 1))
      {
        v10 = *(&v21 + 1);
        v11 = v21;
      }

      else
      {
        v11 = v20;
      }

      sub_21B39FBB0(&v20);
    }

    else
    {
      v11 = 0;
    }

    v18 = id;
    v19 = v34;
    v12 = *(&v36 + 1);
    sub_21B39E5DC(&id, v15);

    if (*(&v28 + 1))
    {
      v13 = v31;
      sub_21B39FBB0(&v28);
    }

    else
    {
      v13 = v36;
    }

    v15[0] = v18;
    v15[1] = v19;
    *&v16 = v11;
    *(&v16 + 1) = v10;
    *&v17 = v13;
    *(&v17 + 1) = v12;
    v14[0] = v18;
    v14[1] = v19;
    v14[2] = v16;
    v14[3] = v17;
    MetricsFieldsContext.setClickLocation(_:)(v14);

    sub_21B39FE70(v15);
  }
}

uint64_t MetricsFieldsContext.addValue<A>(_:forProperty:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21B4CA188();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v9 + 48))(v8, 1, a3) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v13, v8, a3);
  sub_21B4C8CB8();
  return (*(v9 + 8))(v13, a3);
}

uint64_t MetricsFieldsContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_21B4CA188();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v16 = sub_21B4C8CD8();
    return (*(*(v16 - 8) + 16))(a3, v3, v16);
  }

  else
  {
    (*(v11 + 32))(v15, v10, a2);
    sub_21B4C8C88();
    return (*(v11 + 8))(v15, a2);
  }
}

Swift::Void __swiftcall MetricsFieldsContext.setClickLocation(_:)(PodcastsUI::ClickLocationElement *a1)
{
  uniqueID = a1->_uniqueID;
  if (qword_2811FD140 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810);
  __swift_project_value_buffer(v1, qword_2811FD148);
  type metadata accessor for ClickLocationTracker();
  v2 = sub_21B4C8CE8();
  if (v6)
  {
    v3 = *(v6 + 16);
    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock((v3 + 24));
    sub_21B39DFFC((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    if (!uniqueID.value._object)
    {
    }

    v4 = qword_2811FD0F8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
    __swift_project_value_buffer(v5, qword_2811FD100);
    sub_21B4C8CB8();
  }
}

uint64_t sub_21B44BED8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B4C8CD8();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  return a2(a1);
}

uint64_t sub_21B44C058()
{
  v0 = sub_21B4C9498();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B4C94B8();
  __swift_allocate_value_buffer(v4, qword_2811FCF38);
  __swift_project_value_buffer(v4, qword_2811FCF38);
  if (qword_2811FCEA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2811FCEA8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_21B4C94A8();
}

uint64_t PageID.init(type:id:)()
{
  MEMORY[0x21CEF2F30](95, 0xE100000000000000);
  sub_21B44C2F8();
  v0 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v0);

  return sub_21B4C92C8();
}

unint64_t sub_21B44C2F8()
{
  result = qword_2812005A8;
  if (!qword_2812005A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812005A8);
  }

  return result;
}

uint64_t PageID.init(type:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x21CEF2F30](95, 0xE100000000000000);
  MEMORY[0x21CEF2F30](a3, a4);

  return sub_21B4C92C8();
}

uint64_t PageID.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_21B4C8648())
  {
    v4 = sub_21B4C6038();
    v5 = sub_21B374E9C(v4);
    v7 = v6;

    if (v7)
    {
      v8 = sub_21B4C6048();
      sub_21B374E9C(v8);
      v10 = v9;

      if (v10)
      {
        MEMORY[0x21CEF2F30](95, 0xE100000000000000);
        MEMORY[0x21CEF2F30](v5, v7);

        sub_21B4C92C8();
        v11 = sub_21B4C86A8();
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = 0;
        goto LABEL_8;
      }
    }

    v14 = sub_21B4C86A8();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    v13 = sub_21B4C86A8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v12 = 1;
LABEL_8:
  v15 = sub_21B4C92D8();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, v12, 1, v15);
}

uint64_t static PageID.searchResults(id:)(uint64_t a1, uint64_t a2)
{
  sub_21B4C65B8();
  MEMORY[0x21CEF2F30](95, 0xE100000000000000);
  MEMORY[0x21CEF2F30](a1, a2);

  return sub_21B4C92C8();
}

{
  v4 = sub_21B4C5888();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    sub_21B4C5878();
    sub_21B4C5868();
    (*(v5 + 8))(v7, v4);
    v9 = sub_21B4C9648();
    v11 = v10;

    v16 = v9;
    v17 = v11;
    v15[2] = 45;
    v15[3] = 0xE100000000000000;
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_21B3A5DF0();
    a1 = sub_21B4CA218();
    v8 = v12;
  }

  v16 = sub_21B4C65B8();
  v17 = v13;
  MEMORY[0x21CEF2F30](95, 0xE100000000000000);
  MEMORY[0x21CEF2F30](a1, v8);
  sub_21B4C92C8();
}

uint64_t Promise.mapError(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21B4C9438();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  swift_retain_n();
  sub_21B4C93E8();

  return v5;
}

uint64_t sub_21B44C9C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(*a4 + *MEMORY[0x277D224B0]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  v9(v6);
  sub_21B4C9418();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Promise.flatMapError<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21B4C9438();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = v10;

  sub_21B3F821C(a1, v14);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v10;
  sub_21B36D484(v14, (v12 + 7));

  sub_21B4C93E8();

  return v10;
}

uint64_t sub_21B44CC4C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a2();
  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = a7;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = a4;
  swift_retain_n();
  sub_21B4C9278();
  swift_unknownObjectRelease();
}

uint64_t Promise.init(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B3F821C(a1, v10);
  v7 = swift_allocObject();
  v7[2] = *(v3 + *MEMORY[0x277D224B0]);
  v7[3] = a2;
  v7[4] = a3;
  v8 = sub_21B4C93C8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_21B44CE50(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a1(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t sub_21B44CF7C(void *a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86970);
  v4 = sub_21B4CA748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  *(&v10 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21B44D0A4(void *a1)
{
  sub_21B4C9E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B4D2830;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
  v4 = sub_21B4C9758();
  v6 = v5;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_21B376BD4();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_21B4C7348();
}

uint64_t sub_21B44D1CC(void *a1)
{
  sub_21B4C7388();

  return sub_21B44D0A4(a1);
}

NSAttributedString_optional __swiftcall MTEpisode.lazyAttributedDescription()()
{
  v1 = [v0 attributedDescriptionFromHTML];
  if (!v1)
  {
    v3 = sub_21B44D3B0();
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 privateQueueContext];

    v6 = [v0 objectID];
    v7 = swift_allocObject();
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v3;
    v11[4] = sub_21B44D5E0;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_21B36CDB8;
    v11[3] = &block_descriptor_3;
    v8 = _Block_copy(v11);
    v9 = v3;
    v10 = v5;

    [v10 performBlock_];
    _Block_release(v8);

    v1 = v3;
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_21B44D3B0()
{
  if (![v0 itemDescriptionHasHTML])
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v0 itemDescription];
  sub_21B371730(MEMORY[0x277D84F90]);
  v3 = sub_21B4C9578();

  v4 = [v1 safeAttributedStringWithHTML:v2 attributes:v3];

  v5 = [v4 attributedStringWithDefaultLineSpacing];
  v6 = [v5 attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters];

  return v6;
}

void sub_21B44D4C8(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v5 = [a1 existingObjectWithID:a2 error:v14];
  v6 = v14[0];
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = v6;
      [v9 setAttributedDescriptionFromHTML_];
      [a1 saveInCurrentBlock];
    }

    else
    {
      v13 = v6;
    }
  }

  else
  {
    v11 = v14[0];
    v12 = sub_21B4C55D8();

    swift_willThrow();
  }
}

id sub_21B44D5EC(void *a1)
{
  v1 = a1;
  v2 = MTEpisode.lazyAttributedDescription()();

  return v2;
}

uint64_t sub_21B44D630(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87650);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B3F2DF4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_21B4509AC(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B3F2DF4(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_21B450A1C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_21B44D848(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21B4CA4B8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_21B3F2E94(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x21CEF3AB0](i, a1);
        sub_21B3F12CC(0, &qword_2811FCD98);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_21B3F2E94((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_21B36EE80(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_21B3F12CC(0, &qword_2811FCD98);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21B3F2E94((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_21B36EE80(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B44DA48()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  if (([objc_opt_self() isPodcastsApp] & 1) == 0 && (objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase) & 1) == 0)
  {

    return 0;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainQueueContext];

  MEMORY[0x28223BE20](v4);
  sub_21B4C9F58();
  if (v9 != 1)
  {

    return 0;
  }

  sub_21B4C6E48();
  v5 = sub_21B4C6E28();
  v6 = MEMORY[0x21CEF0580]();

  if ((v6 & 1) == 0)
  {
    sub_21B4C6FB8();
    v7 = sub_21B4C6FA8();
    sub_21B4C6F98();
  }

  sub_21B450294(v1);

  return 1;
}

id MPMediaLibrary.item(for:)(void *a1)
{
  v2 = [a1 persistentID];
  if ((v2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = v2;
  if (![v1 itemExistsWithPersistentID_])
  {
    return 0;
  }

  else
  {
    return [v1 itemWithPersistentID_];
  }
}

MPMediaItem_optional __swiftcall MPMediaLibrary.item(for:)(Swift::UInt64 a1)
{
  if ([v1 itemExistsWithPersistentID_])
  {
    v4 = [v1 itemWithPersistentID_];
  }

  else
  {
    v4 = 0;
  }

  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_21B44DD28@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, char **a7@<X7>, _BYTE *a8@<X8>)
{
  v101 = a7;
  v102 = a2;
  v97 = a6;
  v104 = a4;
  v95 = a8;
  v11 = sub_21B4C7558();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v90 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - v18;
  if (os_feature_enabled_serial_sort_auto_downloads())
  {
    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_9:
    v23 = sub_21B4C9F18();
    goto LABEL_11;
  }

  if (a1)
  {
    v20 = sub_21B4C96C8();
    v21 = [v102 podcastForUuid_];

    if (v21)
    {
      v22 = [v21 isSerialShowTypeInFeed];

      if (v22)
      {
        if (*a3 == 0x100000001)
        {
          *a3 = 0;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v23 = sub_21B4C9F28();
LABEL_11:
  v24 = v23;
  v91 = v13;
  v92 = v19;
  v25 = v97;
  v90 = v16;
  if (v23 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B4CA4B8())
  {
    v27 = 0;
    v99 = v24 & 0xFFFFFFFFFFFFFF8;
    v100 = v24 & 0xC000000000000001;
    v96 = a5;
    while (1)
    {
      if (v100)
      {
        v28 = MEMORY[0x21CEF3AB0](v27, v24);
      }

      else
      {
        if (v27 >= *(v99 + 16))
        {
          goto LABEL_50;
        }

        v28 = *(v24 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v30 = [v102 objectWithID_];
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (!v31)
      {

        v59 = v90;
        sub_21B4C7508();
        v69 = v29;
        v70 = sub_21B4C7538();
        v71 = sub_21B4C9CE8();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412290;
          *(v72 + 4) = v69;
          *v73 = v69;
          v74 = v69;
          _os_log_impl(&dword_21B365000, v70, v71, "Couldn't fetch episode with managed object ID %@ for removal.", v72, 0xCu);
          sub_21B4508D4(v73);
          MEMORY[0x21CEF5710](v73, -1, -1);
          MEMORY[0x21CEF5710](v72, -1, -1);
        }

        else
        {
          v74 = v70;
          v70 = v69;
        }

        goto LABEL_48;
      }

      v32 = v31;
      v103 = v27 + 1;
      v33 = v29;
      v34 = [v31 persistentID];
      if ((v34 & 0x8000000000000000) != 0 || (v35 = v34, ![v104 itemExistsWithPersistentID_]) || (v36 = objc_msgSend(v104, sel_itemWithPersistentID_, v35)) == 0)
      {
        v53 = 0x3E7974706D453CLL;

        v54 = sub_21B4CA0F8();
        if (v55)
        {
          v56 = 0xE700000000000000;
          v57 = 0x3E7974706D453CLL;
        }

        else
        {
          aBlock[0] = v54;
          sub_21B391890();
          v57 = sub_21B4CA268();
          v56 = v58;
        }

        v59 = v92;
        sub_21B4C7508();
        v60 = v30;

        v61 = sub_21B4C7538();
        v62 = sub_21B4C9CE8();

        if (os_log_type_enabled(v61, v62))
        {
          v104 = v57;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          aBlock[0] = v64;
          *v63 = 134218498;
          *(v63 + 4) = [v32 persistentID];

          *(v63 + 12) = 2080;
          v65 = [v32 uuid];
          if (v65)
          {
            v66 = v65;
            v53 = sub_21B4C9708();
            v68 = v67;
          }

          else
          {
            v68 = 0xE700000000000000;
          }

          v75 = sub_21B36CF74(v53, v68, aBlock);

          *(v63 + 14) = v75;
          *(v63 + 22) = 2080;
          v76 = sub_21B36CF74(v104, v56, aBlock);

          *(v63 + 24) = v76;
          _os_log_impl(&dword_21B365000, v61, v62, "Couldn't resolve media item with persistentID %lld for removal. UUID: %s; AdamID: %s.", v63, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CEF5710](v64, -1, -1);
          MEMORY[0x21CEF5710](v63, -1, -1);

          result = (*(v93 + 8))(v92, v94);
LABEL_57:
          *v95 = 0;
          return result;
        }

LABEL_48:
        result = (*(v93 + 8))(v59, v94);
        goto LABEL_57;
      }

      v37 = v36;
      swift_beginAccess();
      v38 = v33;
      MEMORY[0x21CEF3050]();
      if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
        v25 = v97;
      }

      sub_21B4C9988();
      swift_endAccess();
      v39 = v37;
      MEMORY[0x21CEF3050]();
      if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
        v25 = v97;
      }

      sub_21B4C9988();
      v40 = [v32 uuid];
      if (v40)
      {
        v41 = v40;
        v98 = sub_21B4C9708();
        v43 = v42;

        v44 = v101;
        v45 = *v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v45;
        v47 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = sub_21B36CCAC(0, *(v45 + 2) + 1, 1, v45);
          *v101 = v45;
        }

        v49 = *(v45 + 2);
        v48 = *(v45 + 3);
        if (v49 >= v48 >> 1)
        {
          v52 = sub_21B36CCAC((v48 > 1), v49 + 1, 1, v45);
          *v101 = v52;
        }

        v50 = *v101;
        *(v50 + 2) = v49 + 1;
        v51 = &v50[16 * v49];
        v25 = v97;
        *(v51 + 4) = v98;
        *(v51 + 5) = v43;
        a5 = v96;
      }

      else
      {
      }

      ++v27;
      if (v103 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:

  sub_21B44D848(v78);

  v79 = sub_21B4C9918();

  v80 = [v104 removeItems_];

  if ((v80 & 1) == 0)
  {
    v86 = v91;
    sub_21B4C7508();
    v87 = sub_21B4C7538();
    v88 = sub_21B4C9CE8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_21B365000, v87, v88, "Failed to remove episode assets from Media Library.", v89, 2u);
      MEMORY[0x21CEF5710](v89, -1, -1);
    }

    result = (*(v93 + 8))(v86, v94);
    goto LABEL_57;
  }

  v81 = swift_allocObject();
  *(v81 + 16) = 1;
  v82 = swift_allocObject();
  v83 = v102;
  v82[2] = v102;
  v82[3] = a5;
  v82[4] = v81;
  aBlock[4] = sub_21B45093C;
  aBlock[5] = v82;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_4;
  v84 = _Block_copy(aBlock);
  v85 = v83;

  [v85 performBlockAndWaitWithSave_];
  _Block_release(v84);
  swift_beginAccess();
  *v95 = *(v81 + 16);
}

uint64_t sub_21B44E6DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C7558();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = *MEMORY[0x277D3DCF8];
  sub_21B3F12CC(0, &qword_2811FCD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21B4D2830;
  swift_beginAccess();
  v12 = *(a2 + 16);
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87960);
  *(v11 + 64) = sub_21B450948();
  *(v11 + 32) = v12;
  v13 = v10;

  v14 = sub_21B4C9C68();
  v15 = sub_21B4C9918();
  v16 = [a1 objectsInEntity:v13 predicate:v14 sortDescriptors:v15];

  if (v16)
  {
    sub_21B3F12CC(0, &qword_2811FCD38);
    v17 = sub_21B4C9928();

    v18 = sub_21B44EB14(v17);

    if (v18)
    {
      if (v18 >> 62)
      {
        result = sub_21B4CA4B8();
        v20 = result;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
LABEL_5:
          if (v20 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v20; ++i)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x21CEF3AB0](i, v18);
            }

            else
            {
              v22 = *(v18 + 8 * i + 32);
            }

            v23 = v22;
            [v22 setAssetURL_];
          }
        }
      }
    }
  }

  sub_21B4C7508();

  v24 = sub_21B4C7538();
  v25 = sub_21B4C9CE8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36[0] = v27;
    *v26 = 136315138;
    swift_beginAccess();
    v28 = sub_21B3F12CC(0, &qword_281200508);

    v30 = MEMORY[0x21CEF3080](v29, v28);
    v35 = v6;
    v31 = a3;
    v33 = v32;

    v34 = sub_21B36CF74(v30, v33, v36);
    a3 = v31;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_21B365000, v24, v25, "Failed to update episode asset URLs for objectIDs %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x21CEF5710](v27, -1, -1);
    MEMORY[0x21CEF5710](v26, -1, -1);

    (*(v7 + 8))(v9, v35);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  result = swift_beginAccess();
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_21B44EB14(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_21B4CA418();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B4CA4B8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CEF3AB0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_21B4CA3E8();
      sub_21B4CA428();
      sub_21B4CA438();
      sub_21B4CA3F8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_21B4CA4B8();
    sub_21B4CA418();
  }

  return v8;
}

uint64_t MPMediaLibrary.remove(episodeIDs:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21B4C7558();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_21B4C9F88();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B44ED9C, 0, 0);
}

uint64_t sub_21B44ED9C()
{
  v0[11] = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_21B44EE54;
  v3 = v0[2];
  v2 = v0[3];

  return sub_21B4503F8(v3, v2);
}

uint64_t sub_21B44EE54()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B44F134, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 112) = v3;
    *v3 = v2;
    v3[1] = sub_21B44EFD0;
    v4 = *(v2 + 32);
    v5 = *(v2 + 16);

    return sub_21B44F6FC(v5, v4);
  }
}

uint64_t sub_21B44EFD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 120) = a1;

    return MEMORY[0x2822009F8](sub_21B44F1B0, 0, 0);
  }
}

uint64_t sub_21B44F134()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21B44F1B0()
{
  v1 = v0[4];
  sub_21B44D848(v0[15]);

  v2 = sub_21B4C9918();

  LODWORD(v1) = [v1 removeItems_];

  if (v1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[2];
    v7 = v0[3];
    v8 = swift_allocObject();
    v0[16] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    (*(v4 + 104))(v3, *MEMORY[0x277CBE110], v5);
    v9 = v7;

    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_21B44F428;
    v11 = v0[10];
    v12 = MEMORY[0x277D839B0];

    return MEMORY[0x28210EE50](v0 + 19, v11, sub_21B45086C, v8, v12);
  }

  else
  {
    sub_21B4C7508();
    v13 = sub_21B4C7538();
    v14 = sub_21B4C9CE8();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21B365000, v13, v14, "Failed to remove episode assets from Media Library.", v19, 2u);
      MEMORY[0x21CEF5710](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_21B44F428()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21B44F688;
  }

  else
  {
    v5 = sub_21B44F5BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B44F5BC()
{
  v1 = *(v0 + 152);
  sub_21B4C6E48();
  v2 = sub_21B4C6E28();
  v3 = MEMORY[0x21CEF0580]();

  if ((v3 & 1) == 0 && v1)
  {
    sub_21B4C6FB8();
    v4 = sub_21B4C6FA8();
    sub_21B4C6F98();
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_21B44F688()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21B44F6FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21B4C9F88();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B44F7C0, 0, 0);
}

uint64_t sub_21B44F7C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7 = v4;

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87958);
  *v8 = v0;
  v8[1] = sub_21B44F900;
  v10 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v10, sub_21B450888, v6, v9);
}

uint64_t sub_21B44F900()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21B44FBE8;
  }

  else
  {
    v5 = sub_21B44FA94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B44FA94()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if ([*(v0 + 32) itemExistsWithPersistentID_] && objc_msgSend(*(v0 + 32), sel_itemWithPersistentID_, v5))
      {
        MEMORY[0x21CEF3050]();
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21B4C9948();
        }

        sub_21B4C9988();
        v2 = v9;
      }

      --v3;
    }

    while (v3);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_21B44FBE8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21B44FC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B4C9F78();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      result = sub_21B4CA4B8();
      v5 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CEF3AB0](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [v7 setAssetURL_];
        }
      }
    }

    *a1 = 1;
  }

  return result;
}

unint64_t sub_21B44FD4C@<X0>(char **a1@<X8>)
{
  result = sub_21B4C9F78();
  if (!v1)
  {
    v4 = result;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v6 = sub_21B4CA4B8();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v20 = MEMORY[0x277D84F90];
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x21CEF3AB0](v8, v4);
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v8 >= *(v5 + 16))
              {
                goto LABEL_22;
              }

              v9 = *(v4 + 8 * v8 + 32);
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v10 = v9;
            v11 = [v10 uuid];
            if (v11)
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v19 = a1;
          v12 = v11;
          v13 = sub_21B4C9708();
          v18 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_21B36CCAC(0, *(v20 + 2) + 1, 1, v20);
          }

          v16 = *(v20 + 2);
          v15 = *(v20 + 3);
          if (v16 >= v15 >> 1)
          {
            v20 = sub_21B36CCAC((v15 > 1), v16 + 1, 1, v20);
          }

          *(v20 + 2) = v16 + 1;
          v17 = &v20[16 * v16];
          a1 = v19;
          *(v17 + 4) = v13;
          *(v17 + 5) = v18;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v20 = MEMORY[0x277D84F90];
LABEL_25:

    *a1 = v20;
  }

  return result;
}

unint64_t sub_21B44FF3C@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  result = sub_21B4C9F78();
  if (v1)
  {
    return result;
  }

  v5 = result;
  if (result >> 62)
  {
    v6 = sub_21B4CA4B8();
    v29 = a1;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = a1;
    if (v6)
    {
LABEL_4:
      result = sub_21B3F2EE4(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = [MEMORY[0x21CEF3AB0](i v5)];
          swift_unknownObjectRelease();
          v10 = v3[2];
          v9 = v3[3];
          if (v10 >= v9 >> 1)
          {
            sub_21B3F2EE4((v9 > 1), v10 + 1, 1);
          }

          v3[2] = v10 + 1;
          v3[v10 + 4] = v8;
        }
      }

      else
      {
        v11 = 32;
        do
        {
          v12 = [*(v5 + v11) persistentID];
          v30 = v3;
          v14 = v3[2];
          v13 = v3[3];
          if (v14 >= v13 >> 1)
          {
            v15 = v12;
            sub_21B3F2EE4((v13 > 1), v14 + 1, 1);
            v12 = v15;
            v3 = v30;
          }

          v3[2] = v14 + 1;
          v3[v14 + 4] = v12;
          v11 += 8;
          --v6;
        }

        while (v6);
      }
    }
  }

  v16 = v3[2];
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v3 + 4;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v23 = *v18++;
      v22 = v23;
      if (v23 >= 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B3F2EE4(0, *(v19 + 16) + 1, 1);
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21B3F2EE4((v20 > 1), v21 + 1, 1);
        }

        *(v19 + 16) = v21 + 1;
        *(v19 + 8 * v21 + 32) = v22;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v24 = *(v19 + 16);
  if (v24)
  {
    v31 = v17;
    result = sub_21B3F2EB4(0, v24, 0);
    for (j = 32; ; j += 8)
    {
      v26 = *(v19 + j);
      if (v26 < 0)
      {
        break;
      }

      v28 = *(v31 + 16);
      v27 = *(v31 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_21B3F2EB4((v27 > 1), v28 + 1, 1);
      }

      *(v31 + 16) = v28 + 1;
      *(v31 + 8 * v28 + 32) = v26;
      if (!--v24)
      {

        *v29 = v31;
        return result;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  *v29 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21B450264@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21B450294(uint64_t a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_21B4C6D58();
  v3 = v2;
  v4 = sub_21B4C6D28();
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = v4;
    v14 = v3;
    v16 = MEMORY[0x277D84F90];
    sub_21B3F2E74(0, v6, 0);
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v16 + 16);
      v11 = *(v16 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_21B3F2E74((v11 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v12 = v16 + 24 * v10;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      *(v12 + 48) = 2;
      v7 += 2;
      --v6;
    }

    while (v6);
    v5 = v13;
    v3 = v14;
  }

  v15 = sub_21B4C6D48();

  sub_21B4C6D38();
}

uint64_t sub_21B4503F8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21B4C9F88();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4504B8, 0, 0);
}

uint64_t sub_21B4504B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7 = v4;

  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
  *v8 = v0;
  v8[1] = sub_21B4505F8;
  v10 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v10, sub_21B4508A4, v6, v9);
}

uint64_t sub_21B4505F8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21B450808;
  }

  else
  {
    v5 = sub_21B45078C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B45078C()
{
  sub_21B450294(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B450808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4508D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B450948()
{
  result = qword_27CD87968;
  if (!qword_27CD87968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87968);
  }

  return result;
}

uint64_t sub_21B4509AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B450A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id MPMediaLibrary.podcastsAssetsAsPercentageOfTotalVolumeSpace.getter()
{
  v1 = v0;
  v2 = sub_21B4C5748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 databasePath];
  if (result)
  {
    v8 = result;
    sub_21B4C9708();

    sub_21B4C5668();

    _sSo14MPMediaLibraryC10PodcastsUIE05totalC14AssetsFileSizeSivg_0();
    sub_21B4C5618();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MPMediaLibrary.checkSizeOfEpisodesToBeDeleted(for:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_21B4C7558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C7528();
  v15 = sub_21B4C7538();
  v16 = sub_21B4C9CC8();
  v17 = os_log_type_enabled(v15, v16);
  v37 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v35 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = a3;
    v21 = v20;
    v38 = a1;
    v39 = v20;
    *v19 = 136315138;
    type metadata accessor for MTPodcastEpisodeLimit(0);
    v22 = sub_21B4C9758();
    v24 = sub_21B36CF74(v22, v23, &v39);
    v34 = v11;
    v25 = v10;
    v26 = a2;
    v27 = v24;

    *(v19 + 4) = v27;
    a2 = v26;
    v10 = v25;
    _os_log_impl(&dword_21B365000, v15, v16, "Checking the size of episodes to be deleted for episode limit: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v28 = v21;
    a3 = v36;
    MEMORY[0x21CEF5710](v28, -1, -1);
    MEMORY[0x21CEF5710](v19, -1, -1);

    (*(v35 + 8))(v14, v34);
    if ((sub_21B451C08() & 1) == 0)
    {
      return a2(0);
    }
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    if ((sub_21B451C08() & 1) == 0)
    {
      return a2(0);
    }
  }

  sub_21B4C9A38();
  v30 = sub_21B4C9A58();
  (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v32 = v37;
  v31[4] = v4;
  v31[5] = v32;
  v31[6] = a2;
  v31[7] = a3;
  v33 = v4;

  sub_21B43614C(0, 0, v10, &unk_21B4D5D30, v31);
}

uint64_t sub_21B450EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v9 = sub_21B4C8208();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = sub_21B4C8248();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v11 = sub_21B4C7558();
  v7[18] = v11;
  v7[19] = *(v11 - 8);
  v7[20] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[21] = v12;
  *v12 = v7;
  v12[1] = sub_21B451094;

  return sub_21B451E54(a5);
}

uint64_t sub_21B451094(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_21B4513D0;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_21B4511BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B4511BC()
{
  v1 = v0[23];
  v2 = v0[17];
  v13 = v0[16];
  v3 = v0[14];
  v14 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  sub_21B3F12CC(0, &qword_281200500);
  v12 = sub_21B4C9DB8();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[6] = sub_21B452318;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21B36CDB8;
  v0[5] = &block_descriptor_5;
  v9 = _Block_copy(v0 + 2);

  sub_21B4C8228();
  v0[8] = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21B4513D0()
{
  v32 = v0;
  v1 = v0[22];
  sub_21B4C7528();
  v2 = v1;
  v3 = sub_21B4C7538();
  v4 = sub_21B4C9CE8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[19];
    v30 = v0[20];
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v0[9] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    v11 = sub_21B4C9758();
    v13 = sub_21B36CF74(v11, v12, &v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_21B365000, v3, v4, "Encountered a critical error while computing the size of episodes to be deleted. Returning 0 bytes reclaimed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CEF5710](v9, -1, -1);
    MEMORY[0x21CEF5710](v8, -1, -1);

    (*(v6 + 8))(v30, v7);
  }

  else
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];

    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[14];
  v29 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[11];
  sub_21B3F12CC(0, &qword_281200500);
  v28 = sub_21B4C9DB8();
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = 0;
  v0[6] = sub_21B452318;
  v0[7] = v24;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21B36CDB8;
  v0[5] = &block_descriptor_5;
  v25 = _Block_copy(v0 + 2);

  sub_21B4C8228();
  v0[8] = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B428450();
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v17, v19, v25);
  _Block_release(v25);

  (*(v21 + 8))(v19, v20);
  (*(v18 + 8))(v17, v29);

  v26 = v0[1];

  return v26();
}

uint64_t sub_21B451748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_21B4517EC;

  return MEMORY[0x28219E298](a3, a2);
}

uint64_t sub_21B4517EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_21B451938, 0, 0);
  }
}

unint64_t _sSo14MPMediaLibraryC10PodcastsUIE4size2ofSiSaySo0A4ItemCG_tF_0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
LABEL_18:
    result = sub_21B4CA4B8();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *MEMORY[0x277CD5748];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CEF3AB0](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      if ([v6 valueForProperty_])
      {
        sub_21B4CA278();

        swift_unknownObjectRelease();
      }

      else
      {

        v10 = 0u;
        v11 = 0u;
      }

      v12[0] = v10;
      v12[1] = v11;
      if (*(&v11 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = __OFADD__(v3, v9);
          v3 += v9;
          if (v8)
          {
            __break(1u);
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_21B3F9F3C(v12);
      }

      if (v2 == ++v4)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}