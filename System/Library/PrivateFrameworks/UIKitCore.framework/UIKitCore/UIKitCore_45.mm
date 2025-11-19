void (*sub_188F8ECD8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18A4A4398();
  return sub_188E263E8;
}

uint64_t sub_188F8ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_188F8FD74();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_188F8EDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_188F8FD74();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_188F8EE2C(uint64_t a1)
{
  v2 = sub_188F8FD74();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_188F8EE78()
{
  v1 = sub_18A4A6178();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = v6;
  v9 = v5;
  v10 = v7;

  sub_188F8FD0C(v5, v7);
  sub_18A4A60F8();
  sub_188F8FD20();
  sub_188F8FD74();
  sub_18A4A5D08();
  (*(v2 + 8))(v4, v1);
  sub_188F8FC28(v5, v7);
}

id sub_188F8EFD0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(UIView) init];
  v4 = sub_189071924();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  sub_188F4D864(v4, sub_188F8FFB8, v5);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_188F8F080()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938758);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938748);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938760);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA938750, &qword_1EA938748);
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_188F8F214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938748);
  sub_188A34360(&qword_1EA938750, &qword_1EA938748);
  return sub_18A4A5618();
}

id sub_188F8F324()
{
  v1 = OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView;
  v2 = *&v0[OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView];
  }

  else
  {
    v4 = [v0 shapePath];
    if ([v4 _isRoundedRect])
    {
      [v4 _cornerRadius];
      v6 = v5;

      v7 = 0;
      v8 = v6;
    }

    else
    {
      v8 = [v4 CGPath];

      v7 = 1;
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF30));
    v11 = v8;
    v12 = v0;
    v13 = sub_1890F8428(v11, v7, sub_188F8FC20, v9);
    v14 = *&v0[v1];
    *&v12[v1] = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_188F8F470(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setGlassContentTraitCollection_];
  }
}

void sub_188F8F55C()
{
  v1 = sub_188F8F324();
  v2 = *(v0 + OBJC_IVAR____UIPopoverGlassBackground_shapePath);
  if ([v2 _isRoundedRect])
  {
    [v2 _cornerRadius];
    v4 = v3;

    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = [v2 CGPath];

    v5 = 1;
  }

  v7 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v9 = v7[8];
  v7[8] = v5;
  sub_188F8FC28(v8, v9);
  sub_18A4A5528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF30);
  sub_188A34360(&qword_1EA930310, &unk_1EA93CF30);
  sub_18A4A58B8();
}

unint64_t type metadata accessor for _UIPopoverGlassBackground()
{
  result = qword_1EA938728;
  if (!qword_1EA938728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA938728);
  }

  return result;
}

char *sub_188F8F9BC()
{
  *&v0[OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView] = 0;
  v1 = OBJC_IVAR____UIPopoverGlassBackground_shapePath;
  *&v0[v1] = [objc_allocWithZone(UIBezierPath) init];
  *&v0[OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent] = 0;
  swift_unknownObjectWeakInit();
  v18.receiver = v0;
  v18.super_class = _UIPopoverGlassBackground;
  v2 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = sub_188F8F324();
  [v3 setAutoresizingMask_];

  v4 = OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView;
  v5 = *&v2[OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView];
  [v2 bounds];
  [v5 setFrame_];

  v6 = *&v2[v4];
  v7 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v12 = v6;
    v13 = v7;
  }

  if (sub_18A4A46F8())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_188A34360(&qword_1EA930310, &unk_1EA93CF30);
    v14 = v6;
    sub_18A4A4708();
  }

  v15 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v16 = *&v7[v15];
  *&v7[v15] = 0;
  sub_188F2461C(v16);

  [v2 addSubview_];
  return v2;
}

void sub_188F8FC28(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit27PopoverGlassBackgroundShapeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_188F8FC58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188F8FCA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188F8FD0C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_188F8FD20()
{
  result = qword_1EA938730;
  if (!qword_1EA938730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938730);
  }

  return result;
}

unint64_t sub_188F8FD74()
{
  result = qword_1EA9302F0;
  if (!qword_1EA9302F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9302F0);
  }

  return result;
}

unint64_t sub_188F8FE30()
{
  result = qword_1EA930108;
  if (!qword_1EA930108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930108);
  }

  return result;
}

unint64_t sub_188F8FE84(uint64_t a1)
{
  result = sub_188F8FD20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F8FEB0()
{
  result = qword_1EA9302E8;
  if (!qword_1EA9302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9302E8);
  }

  return result;
}

unint64_t sub_188F8FF08()
{
  result = qword_1EA9302E0;
  if (!qword_1EA9302E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9302E0);
  }

  return result;
}

uint64_t sub_188F8FF5C(uint64_t a1)
{
  v2 = sub_18A4A4E78();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188F8FFB8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 traitCollection];
  v2();
}

id UISceneSessionActivationRequest.role.getter()
{
  v1 = [*(*v0 + 16) role];

  return v1;
}

id UISceneSessionActivationRequest.session.getter()
{
  v1 = [*(*v0 + 16) session];

  return v1;
}

id UISceneSessionActivationRequest.userActivity.getter()
{
  v1 = [*(*v0 + 16) userActivity];

  return v1;
}

void UISceneSessionActivationRequest.userActivity.setter(void *a1)
{
  sub_188F91008(a1, &selRef_setUserActivity_);
}

void (*UISceneSessionActivationRequest.userActivity.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) userActivity];
  return sub_188F90168;
}

id UISceneSessionActivationRequest.options.getter()
{
  v1 = [*(*v0 + 16) options];

  return v1;
}

void UISceneSessionActivationRequest.options.setter(void *a1)
{
  sub_188F91008(a1, &selRef_setOptions_);
}

void (*UISceneSessionActivationRequest.options.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) options];
  return sub_188F90250;
}

void sub_188F9025C(uint64_t *a1, char a2, SEL *a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_188F91008(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_188F91008(*a1, a3);
    v5 = v6;
  }
}

uint64_t sub_188F90300@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, SEL *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = [objc_opt_self() *a4];
  [v9 setUserActivity_];
  [v9 setOptions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938768);
  result = swift_allocObject();
  *(result + 16) = v9;
  *a5 = result;
  return result;
}

uint64_t UISceneSessionActivationRequest.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

void UIApplication.activateSceneSession(for:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 16);
  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_188F90544;
    v9[3] = &block_descriptor_49;
    v6 = _Block_copy(v9);
    v7 = v4;
    sub_188A52E38(a2);
  }

  else
  {
    v8 = v4;
    v6 = 0;
  }

  [v3 activateSceneSessionForRequest:v4 errorHandler:v6];
  _Block_release(v6);
}

void sub_188F90544(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void UISceneSessionActivationRequest.subscript.getter(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 16);
  UISceneSessionActivationRequest.subscript.getter(a1, a2);
}

{
  v5 = [v2 _definitionPayloadStorage];
  sub_1891FBAF8(a1, a2);
}

uint64_t UISceneSessionActivationRequest.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v15, a1, v9, v18);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    v21 = *(v10 + 8);
    v21(a1, v9);
    return (v21)(v15, v9);
  }

  else
  {
    (*(v16 + 32))(v20, v15, a4);
    v23 = *(*v5 + 16);
    (*(v16 + 16))(v12, v20, a4);
    (*(v16 + 56))(v12, 0, 1, a4);
    v24 = v23;
    UISceneSessionActivationRequest.subscript.setter(v12, a2, v25, a4, v26);

    (*(v10 + 8))(a1, v9);
    return (*(v16 + 8))(v20, a4);
  }
}

{
  v22[1] = a5;
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    v19 = *(v11 + 8);
    v19(a1, v10);
    return (v19)(v13, v10);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a4);
    v21 = [v5 _definitionPayloadStorage];
    sub_1891FBCD0(v18, 0, 0, a2, a3, a4);

    (*(v11 + 8))(a1, v10);
    return (*(v14 + 8))(v18, a4);
  }
}

void (*UISceneSessionActivationRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_18A4A7D38();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  UISceneSessionActivationRequest.subscript.getter(a4, v17);
  return sub_188F90CFC;
}

{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_18A4A7D38();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  UISceneSessionActivationRequest.subscript.getter(a4, v17);
  return sub_188F90F24;
}

void sub_188F90CFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[3];
    v9 = v2[1];
    v8 = v2[2];
    v10 = *v2;
    (*(v6 + 16))((*a1)[7], v4, v5);
    UISceneSessionActivationRequest.subscript.setter(v3, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UISceneSessionActivationRequest.subscript.setter((*a1)[8], *v2, v2[1], v2[2], v2[3]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_188F90F24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[3];
    v9 = v2[1];
    v8 = v2[2];
    v10 = *v2;
    (*(v6 + 16))((*a1)[7], v4, v5);
    UISceneSessionActivationRequest.subscript.setter(v3, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UISceneSessionActivationRequest.subscript.setter((*a1)[8], *v2, v2[1], v2[2], v2[3]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_188F91008(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188F91158();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938768);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

unint64_t sub_188F910F4()
{
  result = qword_1EA938770;
  if (!qword_1EA938770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938770);
  }

  return result;
}

unint64_t sub_188F91158()
{
  result = qword_1EA938778;
  if (!qword_1EA938778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA938778);
  }

  return result;
}

uint64_t sub_188F911A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_18A4A80E8();

    v2 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_18A4A80E8();

    v2 = 0xD00000000000001CLL;
LABEL_5:
    v5 = v2;
    v3 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return v5;
  }

  if (a1)
  {
    return 0x646E65707375732ELL;
  }

  else
  {
    return 0x656C64692ELL;
  }
}

uint64_t sub_188F912C4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2 == 0.0)
  {
    if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 1)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_188F9133C(double a1)
{
  v3 = OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress);
  *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v4 != a1)
    {
      v6 = result;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = [Strong isTracking];
      }

      else
      {
        v9 = 0;
      }

      [v6 scrollAwayInteraction:v1 progressDidChange:v9 tracking:*(v1 + v3)];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_188F9161C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIScrollAwayInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188F916AC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_188F916E8()
{
  result = qword_1EA938830;
  if (!qword_1EA938830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938830);
  }

  return result;
}

void sub_188F9173C(void *a1)
{
  [a1 contentSize];
  v4 = v3;
  v6 = v5;
  [a1 adjustedContentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [a1 isDecelerating];
  v16 = &selRef__animationTargetContentOffset;
  if (!v15)
  {
    v16 = &selRef_contentOffset;
  }

  [a1 *v16];
  v18 = v17;
  v20 = v19;
  v21 = OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction;
  v22 = *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_direction);
  [a1 bounds];
  if (v22 <= 1)
  {
    v27 = -v8;
    v23 = v6 + v12 - CGRectGetHeight(*&v23);
    if (v23 < v27)
    {
      v4 = v27;
    }

    else
    {
      v4 = v23;
    }

    v28 = v20;
    if (v4 >= v27)
    {
LABEL_13:
      v30 = v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
      if (*(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state + 8) > 1u)
      {
        goto LABEL_41;
      }

      v31 = v28 - *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_lastContentOffset + 8);
      if (v28 >= v27)
      {
        if (v4 < v28 && v31 < 0.0)
        {
          v31 = 0.0;
        }
      }

      else
      {
        v31 = fmin(v31, 0.0);
      }

      v32 = *(v1 + v21);
      if ((v32 & 0xFD) != 0)
      {
        v33 = v31;
      }

      else
      {
        v33 = -v31;
      }

      if (*(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state + 8))
      {
        goto LABEL_23;
      }

      v37 = *v30;
      v38 = v33;
      if ((*&v33 & 0x8000000000000000) != 0)
      {
        if ((*&v37 & 0x8000000000000000) == 0)
        {
LABEL_37:
          v39 = OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_activationDistanceThreshold;
          if (fabs(v38) < *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_activationDistanceThreshold))
          {
            *v30 = v38;
            *(v30 + 8) = 0;
            goto LABEL_41;
          }

          if ((v32 | 2) == 2)
          {
            v43 = v28 <= v27;
          }

          else
          {
            v43 = v4 <= v28;
          }

          [a1 bounds];
          if (v32 > 1)
          {
            Width = CGRectGetWidth(*&v44);
          }

          else
          {
            Width = CGRectGetHeight(*&v44);
          }

          v49 = v33 > 0.0 && v43;
          if (v49 && *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress) != 0.0)
          {
            *v30 = 1;
            *(v30 + 8) = 2;
            sub_188F9133C(0.0);
          }

          else
          {
            v50 = *(v1 + v39);
            if (v50 <= v38 && Width <= v4 - v27)
            {
              v52 = *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress);
              *v30 = v52;
              *(v30 + 8) = 1;
              if (v38 - v50 > 0.0)
              {
                v33 = v38 - v50;
              }

              else
              {
                v33 = 0.0;
              }

              v34 = v52;
LABEL_25:
              if ((*(v1 + v21) | 2) == 2)
              {
                v35 = v4 <= v28;
              }

              else
              {
                v35 = v28 <= v27;
              }

              if (!v35 || v33 >= 0.0 || v34 == 0.0)
              {
                v40 = *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress);
                if (v40 == 1.0)
                {
                  goto LABEL_41;
                }

                v41 = _UIClamp_1(v40 + v33 / *(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_activeDistance));
                if (v40 == v41)
                {
                  goto LABEL_41;
                }

                v53 = v41;
                v36 = 1.0;
                if (v53 == 1.0)
                {
                  *v30 = 1;
                  *(v30 + 8) = 2;
                }

                else
                {
                  v36 = v53;
                }

                goto LABEL_33;
              }

              *v30 = 1;
              *(v30 + 8) = 2;
              if (*(v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress) != 0.0)
              {
                v36 = 0.0;
LABEL_33:
                sub_188F9133C(v36);
              }

LABEL_41:
              v42 = (v1 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_lastContentOffset);
              *v42 = v18;
              v42[1] = v20;
              return;
            }
          }

LABEL_23:
          if (*(v30 + 8) != 1)
          {
            goto LABEL_41;
          }

          v34 = *v30;
          goto LABEL_25;
        }
      }

      else if ((*&v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v38 = v33 + v37;
      goto LABEL_37;
    }

    __break(1u);
  }

  v27 = -v10;
  v29 = v4 + v14 - CGRectGetWidth(*&v23);
  if (v29 < -v10)
  {
    v4 = -v10;
  }

  else
  {
    v4 = v29;
  }

  v28 = v18;
  if (v4 >= v27)
  {
    goto LABEL_13;
  }

  __break(1u);
}

void *sub_188F91AD8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong _removeScrollViewScrollObserver_];
    }

    sub_188C3DB7C(0);
    v4 = v0 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state;
    *v4 = 0;
    *(v4 + 8) = 2;
    v5 = floor(*(v0 + OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress));

    return sub_188F9133C(v5);
  }

  return result;
}

BOOL sub_188F91B80()
{
  v1 = v0;
  v2 = [v0 isSearchActive];
  v3 = [(_UINavigationBarItemStackEntry *)v0 _typedStorage];
  if (v2)
  {
    v4 = sub_18901F25C();
  }

  else
  {
    v4 = sub_18901F250();
  }

  v5 = v4;

  if (v5)
  {
    sub_188B39358();
    v7 = v6;

    return v7 & 1;
  }

  else
  {
    v9 = [v1 activeLayout];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = [(_UINavigationBarLayout *)v9 isVariableHeight];

    return v11;
  }
}

void sub_188F91C40(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 isSearchActive];
  v5 = [(_UINavigationBarItemStackEntry *)v2 _typedStorage];
  if (v4)
  {
    v6 = sub_18901F25C();
  }

  else
  {
    v6 = sub_18901F250();
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_1891687FC(a1);
    if (v8)
    {
      v9 = v8;
      if (v8[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active])
      {
        swift_beginAccess();
        v10 = *(v7 + 392);
        if (v10 >> 62)
        {
          v11 = sub_18A4A7F68();
          if (v11)
          {
LABEL_9:
            if (v11 < 1)
            {
              __break(1u);
            }

            else
            {
              v12 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority;

              v13 = 0;
              v14 = 0.0;
              do
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v16 = sub_188E4A488(v13, v10);
                }

                else
                {
                  v16 = *(v10 + 8 * v13 + 32);
                }

                v17 = &OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight;
                if (qword_18A656938[v16[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority]] >= qword_18A656938[v9[v12]] || (v15 = 0.0, v17 = &OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight, (v16[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0))
                {
                  v15 = *&v16[*v17];
                }

                ++v13;

                v14 = v14 + v15;
              }

              while (v11 != v13);
            }

            return;
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_9;
          }
        }

        return;
      }
    }

    return;
  }

  v18 = [v2 activeLayout];
  if (v18)
  {
    v19 = v18;
    [(_UINavigationBarLayout *)v18 layoutHeightRevealingPart:a1];
  }
}

void sub_188F91EB0(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 isSearchActive];
  v5 = [(_UINavigationBarItemStackEntry *)v2 _typedStorage];
  if (v4)
  {
    v6 = sub_18901F25C();
  }

  else
  {
    v6 = sub_18901F250();
  }

  v7 = v6;

  if (v7)
  {
    v8 = sub_1891687FC(a1);
    if (v8)
    {
      v9 = v8;
      if (v8[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active])
      {
        swift_beginAccess();
        v10 = *(v7 + 400);
        if (v10 >> 62)
        {
          v11 = sub_18A4A7F68();
          if (v11)
          {
LABEL_9:
            if (v11 < 1)
            {
              __break(1u);
            }

            else
            {
              v12 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order;

              v13 = 0;
              v14 = 0.0;
              do
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v16 = sub_188E4A488(v13, v10);
                }

                else
                {
                  v16 = *(v10 + 8 * v13 + 32);
                }

                if (qword_18A6569B8[v16[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order]] >= qword_18A6569B8[v9[v12]])
                {
                  v15 = *&v16[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];

                  v14 = v14 + v15;
                }

                else
                {
                }

                ++v13;
              }

              while (v11 != v13);
            }

            return;
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_9;
          }
        }

        return;
      }
    }

    return;
  }

  v17 = [v2 activeLayout];
  if (v17)
  {
    v18 = v17;
    [(_UINavigationBarLayout *)v17 layoutHeightStackingPart:a1];
  }
}

uint64_t sub_188F92168()
{
  v1 = v0;
  if (_UISMCBarsEnabled())
  {
    v2 = [(_UINavigationBarItemStackEntry *)v0 _typedStorage];
    v3 = sub_18901F250();

    v4 = [(_UINavigationBarItemStackEntry *)v1 _typedStorage];
    v5 = sub_18901F25C();
  }

  else
  {
    v3 = [v0 normalLayout];
    v5 = [v0 searchLayout];
  }

  v6 = 3176496;
  v26.receiver = v1;
  v26.super_class = _UINavigationBarItemStackEntry;
  v7 = objc_msgSendSuper2(&v26, sel_description);
  v8 = sub_18A4A7288();
  v10 = v9;

  v27 = v8;
  v28 = v10;
  if (![v1 isSearchActive])
  {
    sub_18A4A80E8();

    v25[0] = 0xD000000000000016;
    v25[1] = 0x800000018A6987D0;
    if (v3)
    {
      sub_188F9257C();
      swift_unknownObjectRetain();
      v14 = sub_18A4A7418();
      MEMORY[0x18CFE22D0](v14);
      swift_unknownObjectRelease();

      v15 = 30768;
      v16 = 0xE200000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 3176496;
    }

    MEMORY[0x18CFE22D0](v15, v16);

    MEMORY[0x18CFE22D0](0x4C68637261657320, 0xEE003D74756F7961);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_14:
    v18 = 0xE300000000000000;
    goto LABEL_15;
  }

  sub_18A4A80E8();

  strcpy(v25, " normalLayout=");
  HIBYTE(v25[1]) = -18;
  if (v3)
  {
    sub_188F9257C();
    swift_unknownObjectRetain();
    v11 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v11);
    swift_unknownObjectRelease();

    v12 = 30768;
    v13 = 0xE200000000000000;
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 3176496;
  }

  MEMORY[0x18CFE22D0](v12, v13);

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6987F0);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_188F9257C();
  swift_unknownObjectRetain();
  v17 = sub_18A4A7418();
  MEMORY[0x18CFE22D0](v17);
  swift_unknownObjectRelease();

  v6 = 30768;
  v18 = 0xE200000000000000;
LABEL_15:
  MEMORY[0x18CFE22D0](v6, v18);

  MEMORY[0x18CFE22D0](v25[0], v25[1]);

  v19 = [v1 item];
  v20 = [v19 description];
  v21 = sub_18A4A7288();
  v23 = v22;

  MEMORY[0x18CFE22D0](v21, v23);

  MEMORY[0x18CFE22D0](0x3D6D65746920, 0xE600000000000000);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v27;
}

unint64_t sub_188F9257C()
{
  result = qword_1EA931320;
  if (!qword_1EA931320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA931320);
  }

  return result;
}

double sub_188F925F0@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_18A4A4CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = sub_18A4A5318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_18A4A4698();
    sub_18A4A4ED8();
    v36 = v15;
    (*(v10 + 8))(v12, v9);
    [v14 _safeAreaCornerInsets];
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    v23 = v43;
    v22 = v44;
    v24 = *(v3 + 104);
    v24(v8, *MEMORY[0x1E697E7D0], v2);
    v24(v5, *MEMORY[0x1E697E7D8], v2);
    v25 = sub_18A4A4CC8();
    v26 = *(v3 + 8);
    v27 = v26(v5, v2);
    if (v25)
    {
      v30.n128_f64[0] = v18;
      v31.n128_f64[0] = v19;
      v18 = v20;
      v19 = v21;
      v28.n128_f64[0] = v16;
      v29.n128_f64[0] = v17;
      v16 = v23;
      v17 = v22;
    }

    else
    {
      v30.n128_f64[0] = v20;
      v31.n128_f64[0] = v21;
      v28.n128_f64[0] = v23;
      v29.n128_f64[0] = v22;
    }

    MEMORY[0x18CFE0610](v45, v27, v16, v17, v28, v29, v18, v19, v30, v31);
    v26(v8, v2);
    sub_1891C6D84(v36);
  }

  else
  {
    sub_18A4A56D8();
  }

  v32 = v45[1];
  *a1 = v45[0];
  a1[1] = v32;
  result = *&v46;
  v34 = v47;
  a1[2] = v46;
  a1[3] = v34;
  return result;
}

uint64_t sub_188F9292C()
{
  v0 = sub_18A4A5318();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_18A4A6CD8();
    if ((sub_18A4A53A8() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (qword_1EA931D80 != -1)
    {
      swift_once();
    }

    if (byte_1EA938900 == 1 && (sub_18A4A4698(), v6 = sub_18A4A5268(), (*(v1 + 8))(v3, v0), v6 != sub_18A4A5B88()))
    {
      v8 = sub_18A4A5B98();
      sub_18A4A5B88();
      v9 = sub_18A4A5B88();

      return v9 == v8;
    }

    else
    {
LABEL_7:
      v7 = sub_189122384(v5);

      if (v7)
      {

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall UIHostingViewBase.setKeyboardFrame(_:seed:)(__C::CGRect_optional *_, Swift::UInt32 seed)
{
  if (*(v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed) != seed)
  {
    return 0;
  }

  v3 = v2;
  y = _->value.origin.y;
  height = _->value.size.height;
  v7 = v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame;
  is_nil = _->is_nil;
  if (is_nil)
  {
    if (*(v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame + 32))
    {
      return 0;
    }
  }

  else if ((*(v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame + 32) & 1) == 0 && CGRectEqualToRect(_->value, *v7))
  {
    return 0;
  }

  v9 = UIHostingViewBase._keyboardSafeAreaHeight.getter();
  if ((UIHostingViewBase._shouldUpdateKeyboardSafeArea.getter() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if ((sub_18A4A4D08() & ~v11) != 0)
  {
    v12 = *(v7 + 24);
    v13 = *(v7 + 32);
    if (((v12 > 0.0) & ~v13 & (is_nil || height == 0.0)) != 0)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + v10);
  if ((sub_18A4A4D08() & ~v14) != 0)
  {
LABEL_11:
    v7 = v3 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inactiveKeyboardFrame;
  }

  v12 = *(v7 + 24);
  v13 = *(v7 + 32);
LABEL_13:
  v15 = *(v7 + 8);
  origin = _->value.origin;
  size = _->value.size;
  *(v7 + 32) = _->is_nil;
  *v7 = origin;
  *(v7 + 16) = size;
  if (v13)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v12;
  }

  if (v13)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v15;
  }

  if (is_nil)
  {
    result = 0;
    if (v18 == 0.0 || v19 == 0.0)
    {
      return result;
    }
  }

  else if (v18 == height || v19 == y)
  {
    return 0;
  }

  v22 = UIHostingViewBase._keyboardSafeAreaHeight.getter();
  if (v9 == v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
  swift_beginAccess();
  *(v3 + v24) = 1;
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5578();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }

  v25 = v3 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    (*(v26 + 32))(v3, ObjectType, v26, v9, v23);
    swift_unknownObjectRelease();
  }

  return 1;
}

id sub_188F92D84()
{
  v0 = _UIMainBundleIdentifier();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = sub_18A4A7288();
  v4 = v3;

  if (v2 == 0xD000000000000010 && 0x800000018A698A20 == v4)
  {
    goto LABEL_13;
  }

  v5 = sub_18A4A86C8();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v7 = _UIMainBundleIdentifier();
    if (v7)
    {
      v8 = v7;
      v9 = sub_18A4A7288();
      v11 = v10;

      if (v9 == 0xD000000000000010 && 0x800000018A698A00 == v11)
      {
        goto LABEL_13;
      }

      v12 = sub_18A4A86C8();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    result = _UIMainBundleIdentifier();
    if (!result)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v14 = result;
    v15 = sub_18A4A7288();
    v17 = v16;

    if (v15 != 0xD000000000000011 || 0x800000018A6989E0 != v17)
    {
      v13 = sub_18A4A86C8();
      goto LABEL_14;
    }

LABEL_13:
    v13 = 1;
LABEL_14:

    goto LABEL_15;
  }

LABEL_9:
  v13 = 1;
LABEL_15:
  byte_1EA938900 = v13 & 1;
  return result;
}

void sub_188F92F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (sub_18A4A46F8())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getObjectType();
      if (sub_18A4A5878())
      {
        sub_188F93E70();
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard;
        if (*(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard))
        {
          sub_188F93CCC();
          swift_unknownObjectRelease();

          *(v0 + v6) = 1;
        }

        else
        {
          *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard) = 1;
          v7 = sub_18A4A5CC8();
          (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
          sub_18A4A58C8();
          sub_188F93A54(v3);
          sub_188F930DC();
          swift_unknownObjectRelease();

          *(v0 + v6) = 0;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_188F930DC()
{
  [v0 _updateSafeAreaInsets];
  v1 = [v0 subviews];
  sub_188AF7A44();
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    v3 = sub_18A4A7F68();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_188E49300(i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    sub_188F930DC();
  }

LABEL_10:
}

id sub_188F93284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICoreHostingKeyboardTrackingElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188F932B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 53) | (*(v0 + 55) << 16);
  v3 = *(v0 + 56);
  if (v2 >> 22)
  {
    if (v2 >> 22 == 1)
    {
      sub_18A4A80E8();

      v4 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v4);

      MEMORY[0x18CFE22D0](0x20726F6620, 0xE500000000000000);
      v5 = [v1 description];
      v6 = sub_18A4A7288();
      v8 = v7;

      MEMORY[0x18CFE22D0](v6, v8);

      return 0xD000000000000025;
    }

    else
    {
      if (*(v0 + 16) | v1 | *v0 | *(v0 + 32) | *(v0 + 24) | *(v0 + 40) | v3)
      {
        v14 = 0;
      }

      else
      {
        v14 = (*(v0 + 48) | ((*(v0 + 49) | ((*&v2 & 0xFFFFFFLL) << 32)) << 8)) == 0x8000000000000000;
      }

      if (v14)
      {
        return 0xD000000000000035;
      }

      else
      {
        return 0xD000000000000034;
      }
    }
  }

  else
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000025, 0x800000018A6988A0);
    type metadata accessor for CGSize(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0x3A656D617266202CLL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389A0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0x20726F6620, 0xE500000000000000);
    v10 = [v3 description];
    v11 = sub_18A4A7288();
    v13 = v12;

    MEMORY[0x18CFE22D0](v11, v13);

    MEMORY[0x18CFE22D0](8238, 0xE200000000000000);
    return 0;
  }
}

void sub_188F935D8()
{
  if (qword_1ED48CC48 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED48CC50;
  v1 = sub_18A4A7258();
  v2 = [v0 BOOLForKey_];

  byte_1EA930E71 = v2;
}

uint64_t sub_188F93684()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA938908);
  __swift_project_value_buffer(v0, qword_1EA938908);
  return sub_18A4A4368();
}

void sub_188F93704()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_18A4A7258();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED48CC50 = v2;
}

void sub_188F937A0(uint64_t a1, void *a2)
{
  if (qword_1ED48D128 != -1)
  {
    v16 = a2;
    swift_once();
    a2 = v16;
  }

  if (byte_1EA930E71 == 1)
  {
    v2 = qword_1EA931D90;
    v3 = a2;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_18A4A4378();
    __swift_project_value_buffer(v4, qword_1EA938908);
    v5 = v3;
    oslog = sub_18A4A4358();
    v6 = sub_18A4A7998();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315138;
      v18 = v8;
      v9 = v5;
      sub_18A4A80E8();

      v10 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v10);

      MEMORY[0x18CFE22D0](0x20726F6620, 0xE500000000000000);
      v11 = [v9 description];
      v12 = sub_18A4A7288();
      v14 = v13;

      MEMORY[0x18CFE22D0](v12, v14);

      v15 = sub_1891D69C0(0xD000000000000025, 0x800000018A698870, &v18);

      *(v7 + 4) = v15;
      _os_log_impl(&dword_188A29000, oslog, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x18CFEA5B0](v8, -1, -1);
      MEMORY[0x18CFEA5B0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_188F93A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188F93ABC(__int128 *a1, void *a2, double a3, double a4)
{
  if (qword_1ED48D128 != -1)
  {
    v18 = a1;
    v19 = a2;
    v20 = a4;
    v21 = a3;
    swift_once();
    a3 = v21;
    a4 = v20;
    a1 = v18;
    a2 = v19;
  }

  if (byte_1EA930E71 == 1)
  {
    v23 = *(a1 + 32);
    v24 = a3;
    v25 = a4;
    v4 = a1[1];
    v26 = *a1;
    v27 = v4;
    v28 = v23 & 1;
    v29 = a2;
    v5 = qword_1EA931D90;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_18A4A4378();
    __swift_project_value_buffer(v7, qword_1EA938908);
    v8 = v6;
    v9 = sub_18A4A4358();
    v10 = sub_18A4A7998();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = v8;
      v14 = sub_188F932B8();
      v16 = v15;

      v17 = sub_1891D69C0(v14, v16, &v22);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_188A29000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x18CFEA5B0](v12, -1, -1);
      MEMORY[0x18CFEA5B0](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_188F93CCC()
{
  if (qword_1ED48D128 != -1)
  {
    swift_once();
  }

  if (byte_1EA930E71 == 1)
  {
    if (qword_1EA931D90 != -1)
    {
      swift_once();
    }

    v0 = sub_18A4A4378();
    __swift_project_value_buffer(v0, qword_1EA938908);
    oslog = sub_18A4A4358();
    v1 = sub_18A4A7998();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v5 = v3;
      *v2 = 136315138;
      *(v2 + 4) = sub_1891D69C0(0xD000000000000034, 0x800000018A6988D0, &v5);
      _os_log_impl(&dword_188A29000, oslog, v1, "%s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v3);
      MEMORY[0x18CFEA5B0](v3, -1, -1);
      MEMORY[0x18CFEA5B0](v2, -1, -1);
    }

    else
    {
    }
  }
}

void sub_188F93E70()
{
  if (qword_1ED48D128 != -1)
  {
    swift_once();
  }

  if (byte_1EA930E71 == 1)
  {
    if (qword_1EA931D90 != -1)
    {
      swift_once();
    }

    v0 = sub_18A4A4378();
    __swift_project_value_buffer(v0, qword_1EA938908);
    oslog = sub_18A4A4358();
    v1 = sub_18A4A7998();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v5 = v3;
      *v2 = 136315138;
      *(v2 + 4) = sub_1891D69C0(0xD000000000000035, 0x800000018A698910, &v5);
      _os_log_impl(&dword_188A29000, oslog, v1, "%s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v3);
      MEMORY[0x18CFEA5B0](v3, -1, -1);
      MEMORY[0x18CFEA5B0](v2, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t get_enum_tag_for_layout_string_5UIKit17UIHostingViewBaseC11KeyboardLog33_B3F18ED93D1B0080D7FD42319799B518LLO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_188F94030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_188F94080(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188F940F0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 48) = *(result + 48) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_18A656A30;
  }

  return result;
}

void sub_188F94140(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for PlatterItemView();
  v4 = sub_188C46918(&qword_1EA931380, type metadata accessor for PlatterItemView);
  v5 = 0;
  v12[1] = MEMORY[0x18CFE2700](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_188E70648(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_188F94284(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for DetectionPattern(0);
  v4 = v3;
  v5 = sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v6 = 0;
  v13[1] = MEMORY[0x18CFE2700](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_188E71250(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_188F943C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_18A4A7F68();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  type metadata accessor for DetectionPattern(0);
  v8 = v7;
  v9 = sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v10 = MEMORY[0x18CFE2700](v6, v8, v9);
  v20 = v10;
  sub_188FC9AB8(a1, a2, a3, v21);
  v16 = v21[0];
  v17 = v21[1];
  v18 = v21[2];
  v19 = v22;
  sub_189037F48();
  if (v11)
  {
    v12 = v11;
    do
    {
      sub_188E71250(&v15, v12);

      sub_189037F48();
      v12 = v13;
    }

    while (v13);
    v10 = v20;
  }

  sub_188E036A4();

  return v10;
}

uint64_t sub_188F9450C(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938A00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - v16;
  v18 = sub_188C46918(&qword_1EA92F6E8, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v23 = MEMORY[0x18CFE2700](1, v2, v18);
  sub_188F9963C(a1, v14);
  v19 = *(v3 + 56);
  v19(v14, 0, 1, v2);
  v19(v17, 1, 1, v2);
  sub_188F996FC(v14, v17);
  sub_188F9976C(v17, v11);
  v19(v17, 1, 1, v2);
  v20 = *(v3 + 48);
  while (v20(v11, 1, v2) != 1)
  {
    sub_188F9963C(v11, v5);
    sub_188E72A40(v8, v5);
    sub_188F996A0(v8);
    sub_188F9976C(v17, v11);
    v19(v17, 1, 1, v2);
  }

  sub_188A3F5FC(v17, &qword_1EA938A00);
  return v23;
}

uint64_t sub_188F94800(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_188C46918(&qword_1EA92F6E8, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  result = MEMORY[0x18CFE2700](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_188F996A0(v8))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_188F995D8(*(a1 + 48) + *(v3 + 72) * (v21 | (v20 << 6)), v11);
    sub_188F9963C(v11, v5);
    sub_188E72A40(v8, v5);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F94A10(uint64_t a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_188B00858(a1), (v4 & 1) != 0) && (sub_188A55598(*(v2 + 56) + 32 * v3, v7), (swift_dynamicCast() & 1) != 0))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188F94A90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) && (v5 = sub_188B00858(a1), (v6 & 1) != 0) && (sub_188A55598(*(a2 + 56) + 32 * v5, v9), __swift_instantiateConcreteTypeFromMangledNameV2(a3), (swift_dynamicCast() & 1) != 0))
  {
    return v8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t UIPasteboard.DetectedValues.patterns.getter()
{

  sub_188F94284(v0);
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
  result = MEMORY[0x18CFE2700](v3, v4, MEMORY[0x1E69E6930]);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 56);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(v2 + 48) + ((v11 << 9) | (8 * v12)));
    sub_188F95308(&v13);
    sub_188E70FFC(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(v2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F94C74(void *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_188B00858(*a1), (v4 & 1) != 0) && (sub_188A55598(*(v2 + 56) + 32 * v3, v7), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t UIPasteboard.DetectedValues.number.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_188B00858(@"com.apple.uikit.pasteboard-detection-pattern.number");
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_188A55598(*(v1 + 56) + 32 * v2, v8);
  sub_188A34624(0, &qword_1ED48FD80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v7 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_188F94EA0(void *a1, uint64_t *a2)
{
  v3 = *v2;
  if (*(v3 + 16) && (v5 = sub_188B00858(*a1), (v6 & 1) != 0) && (sub_188A55598(*(v3 + 56) + 32 * v5, v9), __swift_instantiateConcreteTypeFromMangledNameV2(a2), swift_dynamicCast()))
  {
    return v8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

UIPasteboardDetectionPattern sub_188F94F3C@<X0>(UIPasteboardDetectionPattern *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
  v2 = sub_18A4A7248();

  if (v2)
  {
    v3 = &UIPasteboardDetectionPatternProbableWebURL;
  }

  else
  {
    swift_getKeyPath();
    v4 = sub_18A4A7248();

    if (v4)
    {
      v3 = &UIPasteboardDetectionPatternProbableWebSearch;
    }

    else
    {
      swift_getKeyPath();
      v5 = sub_18A4A7248();

      if (v5)
      {
        v3 = &UIPasteboardDetectionPatternNumber;
      }

      else
      {
        swift_getKeyPath();
        v6 = sub_18A4A7248();

        if (v6)
        {
          v3 = &UIPasteboardDetectionPatternLink;
        }

        else
        {
          swift_getKeyPath();
          v7 = sub_18A4A7248();

          if (v7)
          {
            v3 = &UIPasteboardDetectionPatternPhoneNumber;
          }

          else
          {
            swift_getKeyPath();
            v8 = sub_18A4A7248();

            if (v8)
            {
              v3 = &UIPasteboardDetectionPatternEmailAddress;
            }

            else
            {
              swift_getKeyPath();
              v9 = sub_18A4A7248();

              if (v9)
              {
                v3 = &UIPasteboardDetectionPatternPostalAddress;
              }

              else
              {
                swift_getKeyPath();
                v10 = sub_18A4A7248();

                if (v10)
                {
                  v3 = &UIPasteboardDetectionPatternCalendarEvent;
                }

                else
                {
                  swift_getKeyPath();
                  v11 = sub_18A4A7248();

                  if (v11)
                  {
                    v3 = &UIPasteboardDetectionPatternShipmentTrackingNumber;
                  }

                  else
                  {
                    swift_getKeyPath();
                    v12 = sub_18A4A7248();

                    if (v12)
                    {
                      v3 = &UIPasteboardDetectionPatternFlightNumber;
                    }

                    else
                    {
                      swift_getKeyPath();
                      v13 = sub_18A4A7248();

                      if ((v13 & 1) == 0)
                      {
                        result = sub_18A4A8398();
                        __break(1u);
                        return result;
                      }

                      v3 = &UIPasteboardDetectionPatternMoneyAmount;
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

  v14 = *v3;
  *a1 = *v3;

  return v14;
}

uint64_t sub_188F95308@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18A4A7288();
  v4 = v3;
  if (v2 == sub_18A4A7288() && v4 == v5)
  {
    goto LABEL_7;
  }

  v7 = sub_18A4A86C8();

  if (v7)
  {
    goto LABEL_8;
  }

  v9 = sub_18A4A7288();
  v11 = v10;
  if (v9 == sub_18A4A7288() && v11 == v12)
  {
    goto LABEL_7;
  }

  v14 = sub_18A4A86C8();

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = sub_18A4A7288();
  v17 = v16;
  if (v15 == sub_18A4A7288() && v17 == v18)
  {
    goto LABEL_7;
  }

  v19 = sub_18A4A86C8();

  if (v19)
  {
    goto LABEL_8;
  }

  v20 = sub_18A4A7288();
  v22 = v21;
  if (v20 == sub_18A4A7288() && v22 == v23)
  {
    goto LABEL_7;
  }

  v24 = sub_18A4A86C8();

  if (v24)
  {
    goto LABEL_8;
  }

  v25 = sub_18A4A7288();
  v27 = v26;
  if (v25 == sub_18A4A7288() && v27 == v28)
  {
    goto LABEL_7;
  }

  v29 = sub_18A4A86C8();

  if (v29)
  {
    goto LABEL_8;
  }

  v30 = sub_18A4A7288();
  v32 = v31;
  if (v30 == sub_18A4A7288() && v32 == v33)
  {
    goto LABEL_7;
  }

  v34 = sub_18A4A86C8();

  if (v34)
  {
    goto LABEL_8;
  }

  v35 = sub_18A4A7288();
  v37 = v36;
  if (v35 == sub_18A4A7288() && v37 == v38)
  {
    goto LABEL_7;
  }

  v39 = sub_18A4A86C8();

  if (v39)
  {
    goto LABEL_8;
  }

  v40 = sub_18A4A7288();
  v42 = v41;
  if (v40 == sub_18A4A7288() && v42 == v43)
  {
    goto LABEL_7;
  }

  v44 = sub_18A4A86C8();

  if (v44)
  {
    goto LABEL_8;
  }

  v45 = sub_18A4A7288();
  v47 = v46;
  if (v45 == sub_18A4A7288() && v47 == v48)
  {
    goto LABEL_7;
  }

  v49 = sub_18A4A86C8();

  if (v49)
  {
    goto LABEL_8;
  }

  v50 = sub_18A4A7288();
  v52 = v51;
  if (v50 == sub_18A4A7288() && v52 == v53)
  {
    goto LABEL_7;
  }

  v54 = sub_18A4A86C8();

  if (v54)
  {
    goto LABEL_8;
  }

  v55 = sub_18A4A7288();
  v57 = v56;
  if (v55 == sub_18A4A7288() && v57 == v58)
  {
LABEL_7:

LABEL_8:
    result = swift_getKeyPath();
    *a1 = result;
    return result;
  }

  v59 = sub_18A4A86C8();

  if (v59)
  {
    goto LABEL_8;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void UIPasteboard.detectPatterns(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v6 = sub_18A4A7798();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_188F98360;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188F95A44;
  v9[3] = &block_descriptor_50;
  v8 = _Block_copy(v9);

  [v3 detectPatternsForPatterns:v6 completionHandler:v8];
  _Block_release(v8);
}

{

  sub_188F943C8(v6, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v7 = sub_18A4A7798();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_188F98380;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188F95A44;
  v10[3] = &block_descriptor_6_4;
  v9 = _Block_copy(v10);

  [v3 detectPatternsForPatterns:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_188F95A44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for DetectionPattern(0);
    sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
    v4 = sub_18A4A77A8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_188F95C84(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v7 = *(a1 + 16);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
    v9 = 0;
    v18 = MEMORY[0x18CFE2700](v7, v8, MEMORY[0x1E69E6930]);
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    if (v12)
    {
      while (1)
      {
        v14 = v9;
LABEL_14:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = *(*(a1 + 48) + ((v14 << 9) | (8 * v15)));
        sub_188F95308(&v16);
        sub_188E70FFC(&v17, v16);

        if (!v12)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v14 >= v13)
      {
        break;
      }

      v12 = *(a1 + 56 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_14;
      }
    }

    a3(v18, 0);
  }

  else
  {
LABEL_20:
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t UIPasteboard.detectedPatterns(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_188F95EB0, 0, 0);
}

uint64_t sub_188F95EB0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_188F960D0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  sub_188F943C8(v9, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v10 = sub_18A4A7798();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_188F998E8;
  *(v11 + 24) = v8;
  v1[14] = sub_188F998DC;
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_188F95A44;
  v1[13] = &block_descriptor_16_1;
  v12 = _Block_copy(v4);

  [v6 detectPatternsForPatterns:v10 completionHandler:v12];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_188F960D0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 128);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

void UIPasteboard.detectPatterns(for:inItemSet:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v12 = sub_18A4A7798();
  sub_188F98388(a2, v11);
  v13 = sub_18A4A2AD8();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_18A4A2AB8();
    (*(v14 + 8))(v11, v13);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188F983F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F9644C;
  aBlock[3] = &block_descriptor_23_0;
  v17 = _Block_copy(aBlock);

  [v5 detectPatternsForPatterns:v12 inItemSet:v15 completionHandler:v17];
  _Block_release(v17);
}

{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;

  sub_188F943C8(v12, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v13 = sub_18A4A7798();

  sub_188F98388(a2, v11);
  v14 = sub_18A4A2AD8();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_18A4A2AB8();
    (*(v15 + 8))(v11, v14);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  aBlock[4] = sub_188F98418;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F9644C;
  aBlock[3] = &block_descriptor_29;
  v18 = _Block_copy(aBlock);

  [v5 detectPatternsForPatterns:v13 inItemSet:v16 completionHandler:v18];
  _Block_release(v18);
}

void sub_188F966C8(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  v3 = a3;
  if (a2)
  {
    v5 = a2;
    v3(a2, 1);

    return;
  }

  if (!a1)
  {
LABEL_27:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_188E6D25C(0, v6, 0);
    v9 = 0;
    v7 = v28;
    v24 = a1 + 32;
LABEL_8:
    v10 = *(v24 + 8 * v9);
    v11 = *(v10 + 16);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AF0);
    v13 = 0;
    v27 = MEMORY[0x18CFE2700](v11, v12, MEMORY[0x1E69E6930]);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = v13;
LABEL_17:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v26 = *(*(v10 + 48) + ((v18 << 9) | (8 * v19)));
      sub_188F95308(&v25);
      sub_188E70FFC(&v26, v25);
    }

    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        v20 = v27;
        v28 = v7;
        v22 = v7[2];
        v21 = v7[3];
        if (v22 >= v21 >> 1)
        {
          sub_188E6D25C((v21 > 1), v22 + 1, 1);
          v7 = v28;
        }

        ++v9;
        v7[2] = v22 + 1;
        v7[v22 + 4] = v20;
        if (v9 == v6)
        {
          v3 = a3;
          goto LABEL_23;
        }

        goto LABEL_8;
      }

      v16 = *(v10 + 56 + 8 * v18);
      ++v13;
      if (v16)
      {
        v13 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_23:
  v3(v7, 0);
}

uint64_t UIPasteboard.detectedPatterns(for:inItemSet:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_188F96994, 0, 0);
}

uint64_t sub_188F96994()
{
  v1 = v0 + 2;
  v2 = v0[12];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_188F998FC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  UIPasteboard.detectPatterns(for:inItemSet:completionHandler:)(v3, v2, sub_188F998E8, v5);

  return MEMORY[0x1EEE6DEC8](v1);
}

void UIPasteboard.detectValues(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v6 = sub_18A4A7798();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_188F98420;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188F96CA8;
  v9[3] = &block_descriptor_39_1;
  v8 = _Block_copy(v9);

  [v3 detectValuesForPatterns:v6 completionHandler:v8];
  _Block_release(v8);
}

{

  sub_188F943C8(v6, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v7 = sub_18A4A7798();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_188F98440;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188F96CA8;
  v10[3] = &block_descriptor_45_0;
  v9 = _Block_copy(v10);

  [v3 detectValuesForPatterns:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_188F96BD4(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    a3(a1, 0);
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188F96CA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for DetectionPattern(0);
    sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
    v4 = sub_18A4A70A8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_188F96EF4(void *a1, id a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a2;
    v6 = 1;
    v4 = a2;
LABEL_5:
    a3(&v5);
    sub_188F99884(v5, v6);
    return;
  }

  if (a1)
  {
    v5 = a1;
    v6 = 0;

    goto LABEL_5;
  }

  sub_18A4A8398();
  __break(1u);
}

uint64_t UIPasteboard.detectedValues(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_188F96FD4, 0, 0);
}

uint64_t sub_188F96FD4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_188F971F4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  sub_188F943C8(v9, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v10 = sub_18A4A7798();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_188F98448;
  *(v11 + 24) = v8;
  v1[14] = sub_188F998E0;
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_188F96CA8;
  v1[13] = &block_descriptor_55_2;
  v12 = _Block_copy(v4);

  [v6 detectValuesForPatterns:v10 completionHandler:v12];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_188F971F4()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v0 + 136) = *(*v0 + 128);
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_188F97314(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934748);
    v4 = swift_allocError();
    *v5 = v3;
    v6 = v3;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {
    **(*(a2 + 64) + 40) = v3;

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

void UIPasteboard.detectValues(for:inItemSet:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v12 = sub_18A4A7798();
  sub_188F98388(a2, v11);
  v13 = sub_18A4A2AD8();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_18A4A2AB8();
    (*(v14 + 8))(v11, v13);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188F98450;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F976F0;
  aBlock[3] = &block_descriptor_62_1;
  v17 = _Block_copy(aBlock);

  [v5 detectValuesForPatterns:v12 inItemSet:v15 completionHandler:v17];
  _Block_release(v17);
}

{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;

  sub_188F943C8(v12, sub_188F94F3C, 0);
  type metadata accessor for DetectionPattern(0);
  sub_188C46918(&qword_1EA933098, type metadata accessor for DetectionPattern);
  v13 = sub_18A4A7798();

  sub_188F98388(a2, v11);
  v14 = sub_18A4A2AD8();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v16 = sub_18A4A2AB8();
    (*(v15 + 8))(v11, v14);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  aBlock[4] = sub_188F98470;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F976F0;
  aBlock[3] = &block_descriptor_68_0;
  v18 = _Block_copy(aBlock);

  [v5 detectValuesForPatterns:v13 inItemSet:v16 completionHandler:v18];
  _Block_release(v18);
}

void sub_188F9761C(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    a3(a1, 0);
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188F97704(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v5 = sub_18A4A7548();
  }

  v7 = a3;
  v6(v5, a3);
}

void sub_188F97A04(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = *(a1 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_188E6D27C(0, v6, 0);
      v7 = v13;
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v12 = v13[2];
        v11 = v13[3];

        if (v12 >= v11 >> 1)
        {
          sub_188E6D27C((v11 > 1), v12 + 1, 1);
        }

        v13[2] = v12 + 1;
        v13[v12 + 4] = v10;
        ++v9;
        --v6;
      }

      while (v6);
    }

    a3(v7, 0);
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t UIPasteboard.detectedValues(for:inItemSet:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_188F97BD4, 0, 0);
}

uint64_t sub_188F97BD4()
{
  v1 = v0 + 2;
  v2 = v0[12];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_188F97CCC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  UIPasteboard.detectValues(for:inItemSet:completionHandler:)(v3, v2, sub_188F98478, v5);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_188F97CCC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 80);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_188F97E0C(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934748);
    v5 = swift_allocError();
    *v6 = a1;
    v7 = a1;

    return MEMORY[0x1EEE6DEE8](a3, v5);
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;

    return MEMORY[0x1EEE6DEE0](a3);
  }
}

uint64_t UIPasteboard.ChangedMessage.typesAdded.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UIPasteboard.ChangedMessage.typesRemoved.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t UIPasteboard.ChangedMessage.init(typesAdded:typesRemoved:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static UIPasteboard.ChangedMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  v2 = sub_18A4A2448();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v3 + 16) || (v4 = sub_188BBA050(v13), (v5 & 1) == 0))
  {

    sub_188BBA15C(v13);
LABEL_13:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_14;
  }

  sub_188A55598(*(v3 + 56) + 32 * v4, &v14);
  sub_188BBA15C(v13);

  if (!*(&v15 + 1))
  {
LABEL_14:
    result = sub_188A3F5FC(&v14, &qword_1EA934050);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = v13[0];
  v8 = sub_18A4A2448();
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v8;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v9 + 16) || (v10 = sub_188BBA050(v13), (v11 & 1) == 0))
  {

    sub_188BBA15C(v13);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_18;
  }

  sub_188A55598(*(v9 + 56) + 32 * v10, &v14);
  sub_188BBA15C(v13);

  if (!*(&v15 + 1))
  {
LABEL_18:

    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v12 = v13[0];
    *a1 = v7;
    a1[1] = v12;
    return result;
  }

LABEL_15:
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t static UIPasteboard.ChangedMessage.makeNotification(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  sub_18A4A7288();

  v4 = @"UIPasteboardChangedNotification";
  sub_18A4A8048();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  *(inited + 96) = v5;
  *(inited + 72) = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  *(inited + 168) = v5;
  *(inited + 144) = v1;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D78);
  swift_arrayDestroy();
  return sub_18A4A2428();
}

uint64_t sub_188F98388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F98498(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &qword_1ED48F680);
    v5 = sub_188C09790(&qword_1EA9389F0, &qword_1ED48F680);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E49300(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188E70E0C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188F98620(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934940);
  v4 = sub_188F994AC();
  result = MEMORY[0x18CFE2700](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      sub_188C46860(v8, v7, v9);
      sub_188E70870(v10, v8, v7, v9);
      sub_188C46874(v10[0], v10[1], v11);
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_188F986DC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &qword_1EA9342F0);
    v5 = sub_188C09790(&qword_1EA941110, &qword_1EA9342F0);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E4983C(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188E70E30(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188F98834(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_188F99584();
  result = MEMORY[0x18CFE2700](v2, &_s20GlassGroupDescriptorVN, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      sub_188E70E54(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_188F988DC(uint64_t a1)
{
  v2 = sub_18A4A29D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_188C46918(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x18CFE2700](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_188E71370(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_188F98A78(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &qword_1ED48D5A0);
    v5 = sub_188C09790(&qword_1EA930940, &qword_1ED48D5A0);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E4A2AC(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188E71674(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188F98BD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MarkerFormat(0);
  v4 = v3;
  v5 = sub_188C46918(&qword_1EA933918, type metadata accessor for MarkerFormat);
  result = MEMORY[0x18CFE2700](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_188E71B98(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_188F98C8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TextAlignment(0);
  v4 = v3;
  v5 = sub_188C46918(&qword_1EA933088, type metadata accessor for TextAlignment);
  result = MEMORY[0x18CFE2700](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_188E71B70(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_188F98D48(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for TextList(0);
  v4 = v3;
  v5 = sub_188C46918(&qword_1EA933078, type metadata accessor for TextList);
  result = MEMORY[0x18CFE2700](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_188E71B48(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_188F98E38(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &unk_1EA934368);
    v5 = sub_188C09790(&qword_1EA938A18, &unk_1EA934368);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E4AFD0(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188E71FAC(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188F98FC4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x18CFE2700](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;

      a4(&v12, v11);

      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_188F99060(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &qword_1EA934360);
    v5 = sub_188C09790(&qword_1EA938A08, &qword_1EA934360);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E4AFE4(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188E7213C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188F991B8(uint64_t a1)
{
  v2 = sub_18A4A2B48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_188C46918(&qword_1EA92F720, MEMORY[0x1E6969C28]);
  result = MEMORY[0x18CFE2700](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_188E723D4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_188F99354(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {
    v4 = sub_188A34624(0, &qword_1ED48FD98);
    v5 = sub_188C09790(&qword_1ED48FD90, &qword_1ED48FD98);
    result = MEMORY[0x18CFE2700](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_188E4A9D8(v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_188D071DC(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18A4A7F68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_188F994AC()
{
  result = qword_1EA930C20;
  if (!qword_1EA930C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934940);
    sub_188F99530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930C20);
  }

  return result;
}

unint64_t sub_188F99530()
{
  result = qword_1EA930C28;
  if (!qword_1EA930C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930C28);
  }

  return result;
}

unint64_t sub_188F99584()
{
  result = qword_1ED48CC28;
  if (!qword_1ED48CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC28);
  }

  return result;
}

uint64_t sub_188F995D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F9963C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F996A0(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188F996FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F9976C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_188F997DC()
{
  result = qword_1EA938A10;
  if (!qword_1EA938A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938A10);
  }

  return result;
}

unint64_t sub_188F99830()
{
  result = qword_1EA938A20;
  if (!qword_1EA938A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938A20);
  }

  return result;
}

void sub_188F99884(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  result = sub_188F94A10(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void __swiftcall _UIIntelligenceSystemLightView.init(frame:preferringAudioReactivity:)(_UIIntelligenceSystemLightView *__return_ptr retstr, __C::CGRect frame, Swift::Bool preferringAudioReactivity)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v8 initWithFrame:preferringAudioReactivity preferringAudioReactivity:{x, y, width, height}];
}

id _UIIntelligenceSystemLightView.init(frame:serviceIdentity:sceneSpecification:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:a1 serviceIdentity:a2 sceneSpecification:{a3, a4, a5, a6}];

  return v8;
}

uint64_t sub_188F99A78(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_188F99BEC(v3);
}

uint64_t sub_188F99B38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_188F99BEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t UITransitionComponentSystemView.inputModelBuilder.getter()
{
  v0 = sub_188FA8C40();

  return v0;
}

uint64_t UITransitionComponentSystemView.responseHandler.getter()
{
  v0 = sub_188FA8C70();

  return v0;
}

id UITransitionComponentSystemView.__allocating_init(rootComponent:inputModelBuilder:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_188FA8EEC(a1, a2, a3, a4, a5);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v7;
}

id UITransitionComponentSystemView.init(rootComponent:inputModelBuilder:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_188FA8CA0(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_188F99F68@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  atomic_fetch_add_explicit(&qword_1EA940948, 1uLL, memory_order_relaxed);
  v5 = swift_endAccess();
  v6 = qword_1EA940948;
  v7 = a1(v5);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v8);
  *(v2 + v8) = 0x8000000000000000;
  sub_188E9F81C(v7, v6, isUniquelyReferenced_nonNull_native);
  *(v2 + v8) = v11;
  swift_endAccess();
  swift_beginAccess();
  sub_188E71278(&v11, v6);
  result = swift_endAccess();
  *a2 = v6;
  return result;
}

uint64_t sub_188F9A0B0(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v5 = sub_188E8B63C(v3);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA4288();
      v9 = v11;
    }

    sub_188F9DF58(v7, v9);
    *(v2 + v4) = v9;
  }

  return swift_endAccess();
}

void sub_188F9A180(uint64_t a1@<X8>)
{
  v3 = [v1 hitTest:0 withEvent:?];
  if (!v3)
  {
    v14 = 0;
    v17 = 1;
LABEL_15:
    *a1 = v14;
    *(a1 + 8) = v17;
    return;
  }

  v4 = v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v14 = *(*(v6 + 48) + v13);
      v15 = *(*(v6 + 56) + v13);
      sub_188FA8F58();
      v16 = v15;
      if (sub_18A4A7C88())
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_15;
  }

LABEL_6:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      v14 = 0;
      v17 = 1;
      goto LABEL_13;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_188F9A360(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_188FB7560(a3, a1, *((v6 & v5) + 0x50), *(*((v6 & v5) + 0x58) + 8));
  return swift_endAccess();
}

uint64_t sub_188F9A41C(void (*a1)(void))
{
  v3 = MEMORY[0x1E69E7D40];
  type metadata accessor for UITransitionComponentResponseContext();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  a1();
  v12 = v1;
  sub_188E92464(sub_188FA9B88, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_188F29A68(AssociatedTypeWitness, sub_188FA9BB0, &v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = *v3 & *v1;
  v7 = *(v6 + 0x98);
  if (*(v1 + v7) == 1)
  {
    *(v1 + v7) = 0;
    v14 = v1;
    sub_188F9A41C(sub_188FA8FAC, v13);
    v6 = *v3 & *v1;
  }

  if (*(v1 + *(v6 + 160)) == 1)
  {
    sub_188F9A80C();
  }
}

uint64_t sub_188F9A658(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x58) + 8);
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(a2 + *((v5 & v4) + 0x68)))(v10);
  swift_beginAccess();
  (*(v6 + 64))(v12, a1, v7, v6);
  swift_endAccess();
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_188F9A80C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *((*v1 & *v0) + 0xA8);
  swift_beginAccess();
  *(v0 + v4) = MEMORY[0x1E69E7CC0];

  sub_188F9A8D4(v3);
}

void sub_188F9A8D4(uint64_t a1)
{
  v94 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v87 = sub_18A4A29D8();
  v103 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *((v3 & v2) + 0x58);
  v6 = *((v3 & v2) + 0x50);
  v90 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  v93 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = &v84 - v8;
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v101 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  *(v1 + *((v3 & v2) + 0xA0)) = 0;
  v96 = v1;
  sub_188F99B38(&v84 - v22);
  v24 = *(v5 + 24);
  v89 = v5;
  v24(&v107, v6, v5);
  v25 = *(v20 + 8);
  v95 = v6;
  v25(v23, v6);
  v97 = v107;
  v26 = *(v94 + 16);
  v85 = v9;
  if (v26)
  {
    v27 = *(v9 + 72);
    v100 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v28 = v94 + v100;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v94 + v100;
    v31 = v26;
    v32 = updated;
    do
    {
      sub_188FA9C08(v30, v19, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      if (v19[*(v32 + 20)])
      {
        sub_188FA962C(v19, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      }

      else
      {
        sub_188FA968C(v19, v102, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v107 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_188E6D2E0(0, *(v29 + 16) + 1, 1);
          v29 = v107;
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_188E6D2E0(v34 > 1, v35 + 1, 1);
          v29 = v107;
        }

        *(v29 + 16) = v35 + 1;
        sub_188FA968C(v102, v29 + v100 + v35 * v27, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
        v32 = updated;
      }

      v30 += v27;
      --v31;
    }

    while (v31);
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v88;
    v38 = v98;
    do
    {
      sub_188FA9C08(v28, v38, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      if (*(v38 + *(v32 + 20)) == 1)
      {
        sub_188FA968C(v38, v37, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v107 = v36;
        if ((v39 & 1) == 0)
        {
          sub_188E6D2E0(0, *(v36 + 16) + 1, 1);
          v36 = v107;
        }

        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_188E6D2E0(v40 > 1, v41 + 1, 1);
          v36 = v107;
        }

        *(v36 + 16) = v41 + 1;
        sub_188FA968C(v37, v36 + v100 + v41 * v27, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
        v38 = v98;
      }

      else
      {
        sub_188FA962C(v38, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      }

      v28 += v27;
      --v26;
    }

    while (v26);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
  }

  updated = v29;
  type metadata accessor for UITransitionGroupAnimation();
  v42 = swift_allocObject();
  v43 = 0;
  *(v42 + 16) = 0;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  *(v42 + 24) = 0;
  v100 = v42;
  v44 = v96;
  v45 = v97 + 64;
  v46 = 1 << *(v97 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v97 + 64);
  v49 = MEMORY[0x1E69E7D40];
  v102 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x90);
  v50 = (v46 + 63) >> 6;
  while (v48)
  {
LABEL_30:
    v52 = __clz(__rbit64(v48)) | (v43 << 6);
    v53 = *(*(v97 + 48) + 8 * v52);
    v48 &= v48 - 1;
    v54 = *(v97 + 56) + 232 * v52;
    v118 = *(v54 + 176);
    v119 = *(v54 + 192);
    v120 = *(v54 + 208);
    v121 = *(v54 + 224);
    v114 = *(v54 + 112);
    v115 = *(v54 + 128);
    v116 = *(v54 + 144);
    v117 = *(v54 + 160);
    v110 = *(v54 + 48);
    v111 = *(v54 + 64);
    v112 = *(v54 + 80);
    v113 = *(v54 + 96);
    v107 = *v54;
    v108 = *(v54 + 16);
    v109 = *(v54 + 32);
    v55 = *((*v49 & *v44) + 0x78);
    swift_beginAccess();
    v56 = *(v44 + v55);
    if (*(v56 + 16))
    {
      v57 = sub_188E8B63C(v53);
      if (v58)
      {
        v59 = *(*(v56 + 56) + 8 * v57);
        v60 = *((*v49 & *v44) + 0x90);
        swift_beginAccess();
        v61 = sub_18907F9C4(v53, *(v44 + v60));
        v62 = v59;
        v63 = v62;
        if (v61)
        {
          v64 = [v62 superview];
          if (v64)
          {

            LODWORD(v98) = v61;
            swift_beginAccess();
            LOBYTE(v61) = v98;
            sub_189221CE4(v53, &v104);
            swift_endAccess();
          }
        }

        v104 = v53;
        v105[12] = v119;
        v105[13] = v120;
        v106 = v121;
        v105[8] = v115;
        v105[9] = v116;
        v105[10] = v117;
        v105[11] = v118;
        v105[4] = v111;
        v105[5] = v112;
        v105[6] = v113;
        v105[7] = v114;
        v105[0] = v107;
        v105[1] = v108;
        v105[2] = v109;
        v105[3] = v110;
        sub_1892188FC(v105, v63, v100, !v61);

        v44 = v96;
        v49 = MEMORY[0x1E69E7D40];
      }
    }
  }

  while (1)
  {
    v51 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v51 >= v50)
    {
      break;
    }

    v48 = *(v45 + 8 * v51);
    ++v43;
    if (v48)
    {
      v43 = v51;
      goto LABEL_30;
    }
  }

  v65 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v66 = swift_allocObject();
  v67 = v89;
  v66[2] = v95;
  v66[3] = v67;
  v66[4] = v65;
  v66[5] = v36;

  sub_188F0E968(sub_188FA96F4, v66);
  v68 = updated;

  v69 = *(v68 + 16);
  if (v69)
  {
    *&v107 = MEMORY[0x1E69E7CC0];
    v70 = v68;
    sub_188E6D29C(0, v69, 0);
    v71 = v107;
    v72 = v86;
    v73 = v70 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v102 = *(v85 + 72);
    v74 = (v103 + 32);
    v75 = v87;
    do
    {
      v76 = v101;
      sub_188FA9C08(v73, v101, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      v77 = *v74;
      (*v74)(v72, v76, v75);
      *&v107 = v71;
      v79 = *(v71 + 16);
      v78 = *(v71 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_188E6D29C(v78 > 1, v79 + 1, 1);
        v71 = v107;
      }

      *(v71 + 16) = v79 + 1;
      v77((v71 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v79), v72, v75);
      v73 += v102;
      --v69;
    }

    while (v69);

    v44 = v96;
  }

  else
  {

    v71 = MEMORY[0x1E69E7CC0];
  }

  v80 = sub_188F988DC(v71);

  v107 = v80;
  LOBYTE(v108) = 0;
  v81 = v93;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = v91;
  (*(AssociatedConformanceWitness + 16))(&v107, v81, AssociatedConformanceWitness);
  sub_188FA9700(v107, *(&v107 + 1), v108);
  *&v108 = v44;
  *(&v108 + 1) = v83;
  sub_188F9A41C(sub_188FA8FA4, &v107);

  (*(v92 + 8))(v83, v81);
}

id UITransitionComponentSystemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UITransitionComponentSystemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UITransitionComponentSystemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188F9B550(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t sub_188F9B708()
{
  v0 = sub_188FA8C70();

  return v0;
}

uint64_t sub_188F9B744()
{
  v0 = sub_188FA8C40();

  return v0;
}

uint64_t sub_188F9B780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v10 = sub_188FA8EEC(a1, a2, a3, a4, a5);
  result = (*(*(*(a6 + 80) - 8) + 8))(a1);
  *a7 = v10;
  return result;
}

void sub_188F9B8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  v7 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A29D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = MEMORY[0x1E69E7D40];
  v29 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0));

  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = a2;
    v28 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_188E6D29C(0, v15, 0);
    v16 = v32;
    v17 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v30 = *(v7 + 72);
    v18 = (v10 + 32);
    do
    {
      v19 = v31;
      sub_188FA9C08(v17, v31, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
      v20 = *v18;
      (*v18)(v12, v19, v9);
      v32 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_188E6D29C(v21 > 1, v22 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v22 + 1;
      v20((v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22), v12, v9);
      v17 += v30;
      --v15;
    }

    while (v15);
    LOBYTE(a1) = v28;
    v14 = MEMORY[0x1E69E7D40];
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  v32 = v16;
  sub_18920BA18(v29);
  v24 = sub_188F988DC(v32);

  v25 = swift_unknownObjectUnownedLoadStrong();
  *(v25 + *((*v14 & *v25) + 0xB0)) = v23;

  v26 = swift_unknownObjectUnownedLoadStrong();
  v32 = v24;
  v33 = (a1 & 1);
  v34 = 0;
  sub_188F9BBF8(&v32);

  sub_188FA9700(v32, v33, v34);
}

uint64_t sub_188F9BBF8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  v7 = *(*(v1 + v6) + 16);
  v8 = *((*v5 & *v1) + 0x80);
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_188FA970C(v2, v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188E4C2A8(0, *(v9 + 2) + 1, 1, v9);
    *(v1 + v8) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4C2A8((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = v2;
  *(v13 + 5) = v3;
  v13[48] = v4;
  *(v1 + v8) = v9;
  swift_endAccess();
  if (v7)
  {
    return sub_188F9C140();
  }

  if ((sub_189045788(0) & 1) == 0)
  {
    return sub_188F9C140();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_188FA9B5C;
  *(v16 + 24) = v14;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  LOBYTE(v15) = [v15 addCommitHandler:v17 forPhase:0];
  _Block_release(v17);

  if ((v15 & 1) == 0)
  {
    return sub_188F9C140();
  }

  return result;
}

uint64_t sub_188F9BE60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  updated = type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo(0);
  v7 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0)) = 1;
  sub_188A3F29C(a1, v5, &qword_1EA938E28);
  if ((*(v7 + 48))(v5, 1, updated) == 1)
  {
    return sub_188FA9C70(v5);
  }

  sub_188FA968C(v5, v12, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
  sub_188FA9C08(v12, v9, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
  v15 = *((*v13 & *v1) + 0xA8);
  swift_beginAccess();
  v16 = *(v1 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_188E4C258(0, v16[2] + 1, 1, v16);
    *(v1 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_188E4C258(v18 > 1, v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  sub_188FA968C(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
  *(v1 + v15) = v16;
  swift_endAccess();
  return sub_188FA962C(v12, type metadata accessor for UILayoutComponentResponse.UpdateOutputModelCallbackInfo);
}

uint64_t sub_188F9C140()
{
  sub_188F9A41C(sub_188FA9B80, &v3);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_188F9C1D0(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x58) + 8);
  v24 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v25 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = *((v5 & v4) + 0x80);
  result = swift_beginAccess();
  v26 = a2;
  v13 = *(a2 + v11);
  v14 = *(v13 + 16);
  if (v14)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 16);
    v22 = AssociatedConformanceWitness + 16;

    v19 = v13;
    v20 = a1;
    v15 = (v13 + 48);
    do
    {
      v17 = *(v15 - 2);
      v16 = *(v15 - 1);
      v18 = *v15;
      v15 += 24;
      v27[0] = v17;
      v27[1] = v16;
      v28 = v18;
      sub_188FA970C(v17, v16, v18);
      v21(v27, AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_beginAccess();
      sub_188FB7560(v10, v20, v24, v25);
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      swift_endAccess();
      sub_188FA9700(v17, v16, v18);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_188F9C424(uint64_t *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = *((v5 & v4) + 0x78);
  result = swift_beginAccess();
  v13 = *(v2 + v11);
  if (*(v13 + 16))
  {
    result = sub_188E8B63C(v10);
    if (v14)
    {
      v15 = *(*(v13 + 56) + 8 * result);
      v20 = v10;
      v21 = v15;
      LOBYTE(v22) = 1;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = *(AssociatedConformanceWitness + 16);
      v18 = v15;
      v17(&v20, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_188FA9700(v20, v21, v22);
      v22 = v2;
      v23 = v9;
      sub_188F9A41C(sub_188FA8FA4, &v20);

      return (*(v7 + 8))(v9, AssociatedTypeWitness);
    }
  }

  return result;
}

unint64_t sub_188F9C650(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9C838(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9C9CC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_18A4A7C78();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

uint64_t sub_188F9CB64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_188C46270(*(a2 + 48) + 40 * v6, v22);
      sub_18A4A8888();
      sub_18A4A8038();
      v9 = sub_18A4A88E8();
      result = sub_188C4D06C(v22);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = v11 + 40 * v3;
        v13 = (v11 + 40 * v6);
        if (v3 != v6 || v12 >= v13 + 40)
        {
          v14 = *v13;
          v15 = v13[1];
          *(v12 + 32) = *(v13 + 4);
          *v12 = v14;
          *(v12 + 16) = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_188F9CD1C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + (v3 << 8);
        v15 = (v14 + (v6 << 8));
        if (v3 << 8 != v6 << 8 || (v3 = v6, result >= v15 + 256))
        {
          result = memmove(result, v15, 0x100uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_188F9CEBC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 160 * v3;
        v15 = (v14 + 160 * v6);
        if (v3 != v6 || result >= v15 + 160)
        {
          result = memmove(result, v15, 0xA0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9D054(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A7288();
      sub_18A4A8888();
      v12 = v11;
      sub_18A4A7348();
      v13 = sub_18A4A88E8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_188F9D228(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      v10 = v9;

      sub_18A4A7348();
      v11 = sub_18A4A88E8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = v13 + 24 * v3;
        v15 = (v13 + 24 * v6);
        if (v3 != v6 || v14 >= v15 + 24)
        {
          v16 = *v15;
          *(v14 + 16) = *(v15 + 2);
          *v14 = v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 80 * v3);
        v19 = (v17 + 80 * v6);
        if (v3 != v6 || v18 >= v19 + 80)
        {
          memmove(v18, v19, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_188F9D40C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_188F9D5A4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_18A4A8878();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9D734(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v11);
      MEMORY[0x18CFE37E0](v12);
      result = sub_18A4A88E8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + v9);
        if (16 * v3 != v9 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9D8E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_18A4A8888();

      sub_18A4A7348();
      v11 = sub_18A4A88E8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9DAA4(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for UITextEffectView.EffectID();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_18A4A7ED8() + 1) & ~v7;
    v11 = *(v4 + 72);
    v27 = a2 + 64;
    v12 = v28;
    do
    {
      v13 = v11;
      v14 = v11 * v8;
      sub_188FA9C08(*(a2 + 48) + v11 * v8, v12, type metadata accessor for UITextEffectView.EffectID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188FA9588(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      v15 = sub_18A4A88E8();
      sub_188FA962C(v12, type metadata accessor for UITextEffectView.EffectID);
      v16 = v15 & v9;
      if (a1 >= v10)
      {
        if (v16 < v10)
        {
          v6 = v27;
          v11 = v13;
          goto LABEL_4;
        }

        v11 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v13;
        if (v16 >= v10 || a1 >= v16)
        {
LABEL_11:
          if (v11 * a1 < v14 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v14 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v27;
          }

          else
          {
            v17 = v11 * a1 == v14;
            v6 = v27;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = v18 + 40 * a1;
          v20 = (v18 + 40 * v8);
          if (a1 != v8 || v19 >= v20 + 40)
          {
            v21 = *v20;
            v22 = v20[1];
            *(v19 + 32) = *(v20 + 4);
            *v19 = v21;
            *(v19 + 16) = v22;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v27;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_188F9DDC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_18A4A8878();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9DF58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE3810](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9E100(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_18A4A8878();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9E27C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_18A4A8878();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9E3EC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_18A4A8888();
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = 3;
        }

        MEMORY[0x18CFE37E0](v13);
        v15 = v11;
        sub_18A4A7C98();
      }

      else
      {
        MEMORY[0x18CFE37E0](v12 != 0);
        sub_18A4A7288();
        v14 = v11;
        sub_18A4A7348();
      }

      v16 = sub_18A4A88E8();

      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v17)
      {
LABEL_16:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + v9);
        if (16 * v3 != v9 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

void sub_188F9E614(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A7288();
      sub_18A4A8888();
      v11 = v10;
      sub_18A4A7348();
      v12 = sub_18A4A88E8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_188F9E7DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_18A4A8878();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 32 * v3;
      if (v3 < v6 || result >= v15 + 32 * v6 + 32)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9E96C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_18A4A8878();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_188F9EADC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v10);
      MEMORY[0x18CFE37E0](v11);
      result = sub_18A4A88E8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v3);
      v15 = (v13 + 16 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for UITextEffectView.EffectID() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9ECBC(unint64_t a1, uint64_t a2)
{
  v29 = _s8CacheKeyVMa();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = a1;
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_18A4A7ED8();
    v5 = a1;
    v13 = (v12 + 1) & v11;
    v14 = *(v4 + 72);
    v28 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v10;
      v17 = v5;
      sub_188FA9C08(*(a2 + 48) + v14 * v10, v7, _s8CacheKeyVMa);
      sub_18A4A8888();
      sub_18A4A7348();
      sub_18A4A2DB8();
      sub_188E904A0();
      sub_18A4A71A8();
      v18 = sub_18A4A88E8();
      sub_188FA962C(v7, _s8CacheKeyVMa);
      v5 = v17;
      v19 = v18 & v11;
      if (v17 >= v13)
      {
        if (v19 < v13)
        {
          v8 = v28;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (v17 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v19 >= v13 || v17 >= v19)
        {
LABEL_11:
          if (v14 * v17 < v16 || *(a2 + 48) + v14 * v17 >= (*(a2 + 48) + v16 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v17;
            v8 = v28;
          }

          else
          {
            v20 = v14 * v17 == v16;
            v8 = v28;
            if (!v20)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v17;
            }
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 8 * v5);
          v23 = (v21 + 8 * v10);
          if (v5 != v10 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            v5 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v28;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

void sub_188F9EFCC(int64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_18A4A7ED8() + 1) & ~v7;
    v11 = *(v4 + 72);
    v25 = a2 + 64;
    v12 = v26;
    do
    {
      v13 = v11;
      v14 = v11 * v8;
      sub_188FA9C08(*(a2 + 48) + v11 * v8, v12, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188FA9588(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      v15 = sub_18A4A88E8();
      sub_188FA962C(v12, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v16 = v15 & v9;
      if (a1 >= v10)
      {
        if (v16 < v10)
        {
          v6 = v25;
          v11 = v13;
          goto LABEL_4;
        }

        v11 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v13;
        if (v16 >= v10 || a1 >= v16)
        {
LABEL_11:
          if (v11 * a1 < v14 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v14 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v25;
          }

          else
          {
            v17 = v11 * a1 == v14;
            v6 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 72 * a1);
          v20 = (v18 + 72 * v8);
          if (72 * a1 < (72 * v8) || v19 >= v20 + 72 || a1 != v8)
          {
            memmove(v19, v20, 0x48uLL);
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v25;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_188F9F2FC(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_18A4A7ED8();
    v27 = v10;
    v28 = (v11 + 1) & v10;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_188FA9C08(*(a2 + 48) + v12 * v9, v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_18A4A8888();
      sub_18A4A29D8();
      sub_188FA9588(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      v14 = sub_18A4A88E8();
      sub_188FA962C(v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v15 = v14 & v10;
      if (a1 >= v28)
      {
        if (v15 >= v28 && a1 >= v15)
        {
LABEL_11:
          if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 * a1 != v13)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16 = *(a2 + 56);
          v17 = *(*(type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0) - 8) + 72);
          v18 = v17 * a1;
          v19 = v16 + v17 * a1;
          v20 = v17 * v9;
          v21 = v16 + v17 * v9 + v17;
          if (v18 < v20 || v19 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
            v10 = v27;
          }

          else
          {
            a1 = v9;
            v10 = v27;
            if (v18 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
              a1 = v9;
            }
          }
        }
      }

      else if (v15 >= v28 || a1 >= v15)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_188F9F628(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_18A4A8888();

      sub_18A4A7348();
      v9 = sub_18A4A88E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188F9F7D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v10);
      result = sub_18A4A88E8();
      v11 = result & v7;
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
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
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

void sub_188F9F96C(int64_t a1, uint64_t a2)
{
  v38 = sub_18A4A29D8();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_18A4A7ED8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_188FA9588(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      v22 = sub_18A4A7198();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_188F9FC8C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188F9FE20(int64_t a1, uint64_t a2)
{
  v38 = sub_18A4A5448();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_18A4A7ED8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_188FA9588(&unk_1EA938B20, MEMORY[0x1E697F7A0]);
      v22 = sub_18A4A7198();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_188FA0140(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    v24 = v2;
    do
    {
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_18A4A8888();
      if (v12 < 0)
      {
        MEMORY[0x18CFE37E0](1);
        MEMORY[0x18CFE37E0](v11);
        sub_18A4A7E18();
        v2 = v24;

        sub_18A4A71A8();
      }

      else
      {
        MEMORY[0x18CFE37E0](0);
        MEMORY[0x18CFE37E0](v11);
      }

      v13 = sub_18A4A88E8();
      result = sub_188E90548(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(v2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(v2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_188FA0380(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_18A4A7ED8() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_18A4A8878();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      if (v4 < v7 || *(a2 + 56) + 8 * v4 >= *(a2 + 56) + 8 * v7 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a3);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v4 == v7)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_188FA053C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1E0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA069C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B40);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA0830()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C230);
  v4 = *v0;
  v5 = sub_18A4A8458();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_188A3F29C(*(v4 + 56) + v22, v27, &unk_1EA935770);
        v23 = v29;
        *(*(v29 + 48) + v19) = v20;
        result = sub_188A3F704(v21, *(v23 + 56) + v22, &unk_1EA935770);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_188FA0A7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B80);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_188FA0BF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C80);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_188FA0D8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BD0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_188FA0EFC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        sub_188C46604(*(v3 + 48) + 48 * v18, &v23);
        v19 = *(*(v3 + 56) + 8 * v18);
        v20 = (*(v5 + 48) + 48 * v18);
        v21 = v23;
        v22 = v24[0];
        *(v20 + 25) = *(v24 + 9);
        *v20 = v21;
        v20[1] = v22;
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_188FA107C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BE0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        sub_188C46270(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_188FA1210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E08);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188C46270(*(v2 + 56) + 40 * v17, v22);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = *(v4 + 56) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_188FA13A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C260);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        sub_188C46270(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA1534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D90);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v18[3] = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 8));
      v31 = v17[12];
      v32 = v17[13];
      *v33 = v17[14];
      *&v33[9] = *(v17 + 233);
      v27 = v17[8];
      v28 = v17[9];
      v29 = v17[10];
      v30 = v17[11];
      v23 = v17[4];
      v24 = v17[5];
      v25 = v17[6];
      v26 = v17[7];
      v19 = *v17;
      v20 = v17[1];
      v21 = v17[2];
      v22 = v17[3];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v18 = (*(v4 + 56) + (v14 << 8));
      v18[12] = v31;
      v18[13] = v32;
      v18[14] = *v33;
      *(v18 + 233) = *&v33[9];
      v18[8] = v27;
      v18[9] = v28;
      v18[10] = v29;
      v18[11] = v30;
      v18[4] = v23;
      v18[5] = v24;
      v18[6] = v25;
      v18[7] = v26;
      *v18 = v19;
      v18[1] = v20;
      v18[2] = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_188FA1728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D88);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v18 + 16) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 216 * v14;
      v29 = *(v17 + 160);
      v30 = *(v17 + 176);
      v31 = *(v17 + 192);
      v32 = *(v17 + 208);
      v25 = *(v17 + 96);
      v26 = *(v17 + 112);
      v27 = *(v17 + 128);
      v28 = *(v17 + 144);
      v21 = *(v17 + 32);
      v22 = *(v17 + 48);
      v23 = *(v17 + 64);
      v24 = *(v17 + 80);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v18 = *(v4 + 56) + 216 * v14;
      *(v18 + 160) = v29;
      *(v18 + 176) = v30;
      *(v18 + 192) = v31;
      *(v18 + 208) = v32;
      *(v18 + 96) = v25;
      *(v18 + 112) = v26;
      *(v18 + 128) = v27;
      *(v18 + 144) = v28;
      *(v18 + 32) = v21;
      *(v18 + 48) = v22;
      *(v18 + 64) = v23;
      *(v18 + 80) = v24;
      *v18 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_188FA190C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D80);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v18[1] = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 160 * v14);
      v25 = v17[6];
      v26 = v17[7];
      v27 = v17[8];
      v28 = v17[9];
      v21 = v17[2];
      v22 = v17[3];
      v23 = v17[4];
      v24 = v17[5];
      v19 = *v17;
      v20 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v18 = (*(v4 + 56) + 160 * v14);
      v18[6] = v25;
      v18[7] = v26;
      v18[8] = v27;
      v18[9] = v28;
      v18[2] = v21;
      v18[3] = v22;
      v18[4] = v23;
      v18[5] = v24;
      *v18 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_188FA1AB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D98);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188BBA230(*(v2 + 56) + 40 * v17, v22);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = *(v4 + 56) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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