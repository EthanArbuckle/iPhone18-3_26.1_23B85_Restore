void sub_188E2A6CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&unk_1ED490C70, type metadata accessor for UIUserInterfaceActiveAppearance);
  v4(v1, &type metadata for UITraitActiveAppearance, &type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.toolbarItemPresentationSize.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932248, type metadata accessor for UINSToolbarItemPresentationSize);
  v4(&v7, &type metadata for UITraitToolbarItemPresentationSize, &type metadata for UITraitToolbarItemPresentationSize, &protocol witness table for UITraitToolbarItemPresentationSize, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2A9DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.toolbarItemPresentationSize.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.toolbarItemPresentationSize.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932248, type metadata accessor for UINSToolbarItemPresentationSize);
  return v5(&v8, &type metadata for UITraitToolbarItemPresentationSize, &type metadata for UITraitToolbarItemPresentationSize, &protocol witness table for UITraitToolbarItemPresentationSize, v6, a2, a3);
}

void (*UIMutableTraits.toolbarItemPresentationSize.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932248, type metadata accessor for UINSToolbarItemPresentationSize);
  v8(&type metadata for UITraitToolbarItemPresentationSize, &type metadata for UITraitToolbarItemPresentationSize, &protocol witness table for UITraitToolbarItemPresentationSize, v9, a2, a3);
  return sub_188E2ABE4;
}

void sub_188E2ABE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932248, type metadata accessor for UINSToolbarItemPresentationSize);
  v4(v1, &type metadata for UITraitToolbarItemPresentationSize, &type metadata for UITraitToolbarItemPresentationSize, &protocol witness table for UITraitToolbarItemPresentationSize, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.imageDynamicRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932250, type metadata accessor for DynamicRange);
  v4(&v7, &type metadata for UITraitImageDynamicRange, &type metadata for UITraitImageDynamicRange, &protocol witness table for UITraitImageDynamicRange, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2AEA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.imageDynamicRange.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.imageDynamicRange.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932250, type metadata accessor for DynamicRange);
  return v5(&v8, &type metadata for UITraitImageDynamicRange, &type metadata for UITraitImageDynamicRange, &protocol witness table for UITraitImageDynamicRange, v6, a2, a3);
}

void (*UIMutableTraits.imageDynamicRange.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932250, type metadata accessor for DynamicRange);
  v8(&type metadata for UITraitImageDynamicRange, &type metadata for UITraitImageDynamicRange, &protocol witness table for UITraitImageDynamicRange, v9, a2, a3);
  return sub_188E2B0A8;
}

void sub_188E2B0A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932250, type metadata accessor for DynamicRange);
  v4(v1, &type metadata for UITraitImageDynamicRange, &type metadata for UITraitImageDynamicRange, &protocol witness table for UITraitImageDynamicRange, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.sceneCaptureState.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932258, type metadata accessor for UISceneCaptureState);
  v4(&v7, &type metadata for UITraitSceneCaptureState, &type metadata for UITraitSceneCaptureState, &protocol witness table for UITraitSceneCaptureState, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2B364@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.sceneCaptureState.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.sceneCaptureState.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932258, type metadata accessor for UISceneCaptureState);
  return v5(&v8, &type metadata for UITraitSceneCaptureState, &type metadata for UITraitSceneCaptureState, &protocol witness table for UITraitSceneCaptureState, v6, a2, a3);
}

void (*UIMutableTraits.sceneCaptureState.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932258, type metadata accessor for UISceneCaptureState);
  v8(&type metadata for UITraitSceneCaptureState, &type metadata for UITraitSceneCaptureState, &protocol witness table for UITraitSceneCaptureState, v9, a2, a3);
  return sub_188E2B56C;
}

void sub_188E2B56C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932258, type metadata accessor for UISceneCaptureState);
  v4(v1, &type metadata for UITraitSceneCaptureState, &type metadata for UITraitSceneCaptureState, &protocol witness table for UITraitSceneCaptureState, v5, v3, v2);

  free(v1);
}

uint64_t static UITraitTypesettingLanguage.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED491528 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  v3 = __swift_project_value_buffer(v2, qword_1ED491530);
  return sub_188A3F29C(v3, a1, &qword_1EA932260);
}

id UITraitCollection.init(typesettingLanguage:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_188A3F29C(a1, &v7 - v3, &qword_1EA932260);
  v5 = sub_188E1E258(v4);
  sub_188A3F5FC(a1, &qword_1EA932260);
  return v5;
}

uint64_t static UITraitTypesettingLanguage._value(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {

    sub_18A4A2A28();
    v3 = sub_18A4A2A48();
    (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_188E2B8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    sub_18A4A2A28();
    v3 = sub_18A4A2A48();
    (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_188E2BA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_188A3F29C(a1, &v11 - v8, &qword_1EA932260);
  return UIMutableTraits.typesettingLanguage.setter(v9, v5, v6);
}

void (*UIMutableTraits.typesettingLanguage.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA932260) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  (*(a3 + 200))(&type metadata for UITraitTypesettingLanguage, &type metadata for UITraitTypesettingLanguage, &protocol witness table for UITraitTypesettingLanguage, a2, a3);
  return sub_188E2BBF8;
}

void sub_188E2BBF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_188A3F29C((*a1)[4], v3, &qword_1EA932260);
    UIMutableTraits.typesettingLanguage.setter(v3, v6, v5);
    sub_188A3F5FC(v4, &qword_1EA932260);
  }

  else
  {
    UIMutableTraits.typesettingLanguage.setter((*a1)[4], v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_188E2BDE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.resolvesNaturalAlignmentWithBaseWritingDirection.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t (*UIMutableTraits.resolvesNaturalAlignmentWithBaseWritingDirection.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  (*(a3 + 8))(&type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, &type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, &protocol witness table for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, a2, a3);
  *(a1 + 25) = (*(a1 + 24) == 2) | *(a1 + 24) & 1;
  return sub_188E2BF30;
}

uint64_t sub_188E2BF30(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return (*(v1 + 16))(a1 + 3, &type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, &type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, &protocol witness table for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, v2);
}

uint64_t UIMutableTraits.touchLevel.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932268, type metadata accessor for UIScreenTouchLevel);
  v4(&v7, &type metadata for UITraitTouchLevel, &type metadata for UITraitTouchLevel, &protocol witness table for UITraitTouchLevel, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2C1D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.touchLevel.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.touchLevel.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932268, type metadata accessor for UIScreenTouchLevel);
  return v5(&v8, &type metadata for UITraitTouchLevel, &type metadata for UITraitTouchLevel, &protocol witness table for UITraitTouchLevel, v6, a2, a3);
}

void (*UIMutableTraits.touchLevel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932268, type metadata accessor for UIScreenTouchLevel);
  v8(&type metadata for UITraitTouchLevel, &type metadata for UITraitTouchLevel, &protocol witness table for UITraitTouchLevel, v9, a2, a3);
  return sub_188E2C3E0;
}

void sub_188E2C3E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932268, type metadata accessor for UIScreenTouchLevel);
  v4(v1, &type metadata for UITraitTouchLevel, &type metadata for UITraitTouchLevel, &protocol witness table for UITraitTouchLevel, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E2C5AC@<X0>(void *a1@<X8>)
{
  if (qword_1EA931998 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EA9319A0;
  return result;
}

uint64_t sub_188E2C6B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.artworkSubtype.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t (*UIMutableTraits.artworkSubtype.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = (*(a3 + 128))(&type metadata for UITraitArtworkSubtype, &type metadata for UITraitArtworkSubtype, &protocol witness table for UITraitArtworkSubtype, a2, a3);
  return sub_188E2C7C0;
}

void sub_188E2C820(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_1ED48E718 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED48E720;
  [v5 *a2];
  v7 = v6;

  *a3 = v7;
}

double sub_188E2C8CC(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

double sub_188E2CA10@<D0>(void *a1@<X2>, double *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t sub_188E2CB08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = UIMutableTraits.displayCornerRadius.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

uint64_t (*UIMutableTraits.displayCornerRadius.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  *a1 = (*(a3 + 32))(&type metadata for UITraitDisplayCornerRadius, &type metadata for UITraitDisplayCornerRadius, &protocol witness table for UITraitDisplayCornerRadius, a2, a3);
  return sub_188E2CC18;
}

uint64_t UIMutableTraits._presentationSemanticContext.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932270, type metadata accessor for _UIUserInterfacePresentationSemanticContext);
  v4(&v7, &type metadata for UITraitPresentationSemanticContext, &type metadata for UITraitPresentationSemanticContext, &protocol witness table for UITraitPresentationSemanticContext, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2CFD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._presentationSemanticContext.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._presentationSemanticContext.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932270, type metadata accessor for _UIUserInterfacePresentationSemanticContext);
  return v5(&v8, &type metadata for UITraitPresentationSemanticContext, &type metadata for UITraitPresentationSemanticContext, &protocol witness table for UITraitPresentationSemanticContext, v6, a2, a3);
}

void (*UIMutableTraits._presentationSemanticContext.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932270, type metadata accessor for _UIUserInterfacePresentationSemanticContext);
  v8(&type metadata for UITraitPresentationSemanticContext, &type metadata for UITraitPresentationSemanticContext, &protocol witness table for UITraitPresentationSemanticContext, v9, a2, a3);
  return sub_188E2D1E0;
}

void sub_188E2D1E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932270, type metadata accessor for _UIUserInterfacePresentationSemanticContext);
  v4(v1, &type metadata for UITraitPresentationSemanticContext, &type metadata for UITraitPresentationSemanticContext, &protocol witness table for UITraitPresentationSemanticContext, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits._splitViewControllerContext.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932278, type metadata accessor for _UISplitViewControllerContext);
  v4(&v7, &type metadata for UITraitSplitViewControllerContext, &type metadata for UITraitSplitViewControllerContext, &protocol witness table for UITraitSplitViewControllerContext, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2D4F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._splitViewControllerContext.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._splitViewControllerContext.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932278, type metadata accessor for _UISplitViewControllerContext);
  return v5(&v8, &type metadata for UITraitSplitViewControllerContext, &type metadata for UITraitSplitViewControllerContext, &protocol witness table for UITraitSplitViewControllerContext, v6, a2, a3);
}

void (*UIMutableTraits._splitViewControllerContext.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932278, type metadata accessor for _UISplitViewControllerContext);
  v8(&type metadata for UITraitSplitViewControllerContext, &type metadata for UITraitSplitViewControllerContext, &protocol witness table for UITraitSplitViewControllerContext, v9, a2, a3);
  return sub_188E2D6F8;
}

void sub_188E2D6F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932278, type metadata accessor for _UISplitViewControllerContext);
  v4(v1, &type metadata for UITraitSplitViewControllerContext, &type metadata for UITraitSplitViewControllerContext, &protocol witness table for UITraitSplitViewControllerContext, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E2D95C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._vibrancy.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits._vibrancy.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1ED48E990, type metadata accessor for _UIUserInterfaceVibrancy);
  v8(&type metadata for UITraitVibrancy, &type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, v9, a2, a3);
  return sub_188E2DAB8;
}

void sub_188E2DAB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1ED48E990, type metadata accessor for _UIUserInterfaceVibrancy);
  v4(v1, &type metadata for UITraitVibrancy, &type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits._userInterfaceRenderingMode.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(qword_1ED48C278, type metadata accessor for _UIUserInterfaceRenderingMode);
  v4(&v7, &type metadata for UITraitUserInterfaceRenderingMode, &type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2DDC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._userInterfaceRenderingMode.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._userInterfaceRenderingMode.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(qword_1ED48C278, type metadata accessor for _UIUserInterfaceRenderingMode);
  return v5(&v8, &type metadata for UITraitUserInterfaceRenderingMode, &type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, v6, a2, a3);
}

void (*UIMutableTraits._userInterfaceRenderingMode.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(qword_1ED48C278, type metadata accessor for _UIUserInterfaceRenderingMode);
  v8(&type metadata for UITraitUserInterfaceRenderingMode, &type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, v9, a2, a3);
  return sub_188E2DFD0;
}

void sub_188E2DFD0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(qword_1ED48C278, type metadata accessor for _UIUserInterfaceRenderingMode);
  v4(v1, &type metadata for UITraitUserInterfaceRenderingMode, &type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits._focusSystemState.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932280, type metadata accessor for _UITraitCollectionFocusSystemState);
  v4(&v7, &type metadata for UITraitFocusSystemState, &type metadata for UITraitFocusSystemState, &protocol witness table for UITraitFocusSystemState, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2E2E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._focusSystemState.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._focusSystemState.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932280, type metadata accessor for _UITraitCollectionFocusSystemState);
  return v5(&v8, &type metadata for UITraitFocusSystemState, &type metadata for UITraitFocusSystemState, &protocol witness table for UITraitFocusSystemState, v6, a2, a3);
}

void (*UIMutableTraits._focusSystemState.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932280, type metadata accessor for _UITraitCollectionFocusSystemState);
  v8(&type metadata for UITraitFocusSystemState, &type metadata for UITraitFocusSystemState, &protocol witness table for UITraitFocusSystemState, v9, a2, a3);
  return sub_188E2E4E8;
}

void sub_188E2E4E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932280, type metadata accessor for _UITraitCollectionFocusSystemState);
  v4(v1, &type metadata for UITraitFocusSystemState, &type metadata for UITraitFocusSystemState, &protocol witness table for UITraitFocusSystemState, v5, v3, v2);

  free(v1);
}

void sub_188E2E5C4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  if (qword_1ED48E718 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED48E720;
  v6 = a2();

  *a3 = v6;
}

uint64_t UIMutableTraits._backlightLuminance.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932288, type metadata accessor for _UIBacklightLuminance);
  v4(&v7, &type metadata for UITraitBacklightLuminance, &type metadata for UITraitBacklightLuminance, &protocol witness table for UITraitBacklightLuminance, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2E984@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._backlightLuminance.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._backlightLuminance.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932288, type metadata accessor for _UIBacklightLuminance);
  return v5(&v8, &type metadata for UITraitBacklightLuminance, &type metadata for UITraitBacklightLuminance, &protocol witness table for UITraitBacklightLuminance, v6, a2, a3);
}

void (*UIMutableTraits._backlightLuminance.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932288, type metadata accessor for _UIBacklightLuminance);
  v8(&type metadata for UITraitBacklightLuminance, &type metadata for UITraitBacklightLuminance, &protocol witness table for UITraitBacklightLuminance, v9, a2, a3);
  return sub_188E2EB8C;
}

void sub_188E2EB8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932288, type metadata accessor for _UIBacklightLuminance);
  v4(v1, &type metadata for UITraitBacklightLuminance, &type metadata for UITraitBacklightLuminance, &protocol witness table for UITraitBacklightLuminance, v5, v3, v2);

  free(v1);
}

void sub_188E2EC5C(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_1ED48E718 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED48E720;
  v6 = [v5 *a2];

  *a3 = v6;
}

uint64_t sub_188E2ED00(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_188E2EDD8(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

id sub_188E2EE48(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [objc_opt_self() affectsColorAppearance];
  *a3 = result;
  return result;
}

uint64_t sub_188E2EEA4(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_188E2EF20@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t sub_188E2EFE8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

uint64_t UIMutableTraits._interfaceProtectionState.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932290, type metadata accessor for _UIInterfaceProtectionState);
  v4(&v7, &type metadata for _UITraitInterfaceProtectionState, &type metadata for _UITraitInterfaceProtectionState, &protocol witness table for _UITraitInterfaceProtectionState, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2F0E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._interfaceProtectionState.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits._interfaceProtectionState.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932290, type metadata accessor for _UIInterfaceProtectionState);
  return v5(&v8, &type metadata for _UITraitInterfaceProtectionState, &type metadata for _UITraitInterfaceProtectionState, &protocol witness table for _UITraitInterfaceProtectionState, v6, a2, a3);
}

void (*UIMutableTraits._interfaceProtectionState.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932290, type metadata accessor for _UIInterfaceProtectionState);
  v8(&type metadata for _UITraitInterfaceProtectionState, &type metadata for _UITraitInterfaceProtectionState, &protocol witness table for _UITraitInterfaceProtectionState, v9, a2, a3);
  return sub_188E2F2E8;
}

void sub_188E2F2E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932290, type metadata accessor for _UIInterfaceProtectionState);
  v4(v1, &type metadata for _UITraitInterfaceProtectionState, &type metadata for _UITraitInterfaceProtectionState, &protocol witness table for _UITraitInterfaceProtectionState, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.headroomUsageLimit.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932298, type metadata accessor for UIHDRHeadroomUsageLimit);
  v4(&v7, &type metadata for UITraitHDRHeadroomUsageLimit, &type metadata for UITraitHDRHeadroomUsageLimit, &protocol witness table for UITraitHDRHeadroomUsageLimit, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2F4E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.headroomUsageLimit.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.headroomUsageLimit.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932298, type metadata accessor for UIHDRHeadroomUsageLimit);
  return v5(&v8, &type metadata for UITraitHDRHeadroomUsageLimit, &type metadata for UITraitHDRHeadroomUsageLimit, &protocol witness table for UITraitHDRHeadroomUsageLimit, v6, a2, a3);
}

void (*UIMutableTraits.headroomUsageLimit.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188AFC388(&qword_1EA932298, type metadata accessor for UIHDRHeadroomUsageLimit);
  v8(&type metadata for UITraitHDRHeadroomUsageLimit, &type metadata for UITraitHDRHeadroomUsageLimit, &protocol witness table for UITraitHDRHeadroomUsageLimit, v9, a2, a3);
  return sub_188E2F6E8;
}

void sub_188E2F6E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932298, type metadata accessor for UIHDRHeadroomUsageLimit);
  v4(v1, &type metadata for UITraitHDRHeadroomUsageLimit, &type metadata for UITraitHDRHeadroomUsageLimit, &protocol witness table for UITraitHDRHeadroomUsageLimit, v5, v3, v2);

  free(v1);
}

id sub_188E2F7BC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  result = [v4 respondsToSelector_];
  if (result)
  {
    v6 = [v4 *a3];
    v7 = sub_18A4A7288();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_188E2F860(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  result = [v4 respondsToSelector_];
  if (result)
  {
    return [v4 *a3];
  }

  __break(1u);
  return result;
}

uint64_t sub_188E2F8BC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x18CFE2690](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_188E2F910(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x18CFE26A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_188E2F990()
{
  swift_getWitnessTable();

  return sub_18A4A3238();
}

uint64_t sub_188E2FA10@<X0>(uint64_t *a1@<X8>)
{
  sub_18A4A7288();
  v2 = sub_18A4A7258();

  *a1 = v2;
  return result;
}

uint64_t sub_188E2FA54(uint64_t a1)
{
  v2 = sub_188AFC388(&qword_1EA9338D8, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_188E2FAC0(uint64_t a1)
{
  v2 = sub_188AFC388(&qword_1EA9338D8, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_188E2FB30(uint64_t a1)
{
  v2 = sub_188AFC388(&qword_1EA933910, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

BOOL sub_188E2FBB8(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_188E2FBE8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_188E2FC14@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_188E2FC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_188E2FCF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A8958();
  *a1 = result;
  return result;
}

uint64_t sub_188E2FD18()
{
  sub_18A4A8888();
  sub_18A4A88B8();
  return sub_18A4A88E8();
}

uint64_t sub_188E2FD8C()
{
  sub_18A4A8888();
  sub_18A4A88B8();
  return sub_18A4A88E8();
}

uint64_t sub_188E2FDD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1891FBADC();

  *a1 = v2;
  return result;
}

uint64_t sub_188E2FE10()
{
  sub_188AFC388(&qword_1EA932FA0, type metadata accessor for Identifier);
  sub_188AFC388(&qword_1EA932FA8, type metadata accessor for Identifier);

  return sub_18A4A8518();
}

uint64_t sub_188E2FEDC(uint64_t a1)
{
  v2 = sub_188AFC388(&qword_1EA933910, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_188E2FF48(uint64_t a1)
{
  v2 = sub_188AFC388(&qword_1EA933910, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_188E2FFB4(void *a1, uint64_t a2)
{
  v4 = sub_188AFC388(&qword_1EA933910, type metadata accessor for UISSceneConnectionValueError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_188E30068(uint64_t a1, uint64_t a2)
{
  v4 = sub_188AFC388(&qword_1EA933910, type metadata accessor for UISSceneConnectionValueError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_188E300E4()
{
  sub_18A4A8888();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_188E30144@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1891FB644(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_188E30240()
{
  sub_188AFC388(&qword_1EA9330C8, type metadata accessor for UIContentSizeCategory);
  sub_188AFC388(&unk_1EA9330D0, type metadata accessor for UIContentSizeCategory);

  return sub_18A4A8518();
}

uint64_t sub_188E302FC()
{
  sub_188AFC388(&qword_1EA932FB0, type metadata accessor for CALayerCornerCurve);
  sub_188AFC388(&unk_1EA932FB8, type metadata accessor for CALayerCornerCurve);

  return sub_18A4A8518();
}

uint64_t sub_188E303B8()
{
  sub_188AFC388(&qword_1EA933038, type metadata accessor for Weight);
  sub_188AFC388(&qword_1EA933040, type metadata accessor for Weight);
  sub_188C11B34();
  return sub_18A4A8518();
}

uint64_t sub_188E30480()
{
  sub_188AFC388(&qword_1EA932FE0, _s3__C10IdentifierVMa_1);
  sub_188AFC388(&qword_1EA932FE8, _s3__C10IdentifierVMa_1);

  return sub_18A4A8518();
}

uint64_t sub_188E3053C()
{
  sub_188AFC388(&qword_1EA933970, type metadata accessor for Name);
  sub_188AFC388(&qword_1EA933978, type metadata accessor for Name);

  return sub_18A4A8518();
}

uint64_t sub_188E305F8()
{
  sub_188AFC388(&qword_1ED48E360, type metadata accessor for Key);
  sub_188AFC388(&qword_1EA9330C0, type metadata accessor for Key);

  return sub_18A4A8518();
}

uint64_t sub_188E306B4()
{
  sub_188AFC388(&unk_1EA935D50, type metadata accessor for OpenExternalURLOptionsKey);
  sub_188AFC388(&qword_1EA933940, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_18A4A8518();
}

uint64_t sub_188E30770()
{
  sub_188AFC388(&qword_1EA932FD0, _s3__C10IdentifierVMa_0);
  sub_188AFC388(&qword_1EA932FD8, _s3__C10IdentifierVMa_0);

  return sub_18A4A8518();
}

uint64_t sub_188E3082C()
{
  sub_188AFC388(&qword_1EA933018, type metadata accessor for UILayoutPriority);
  sub_188AFC388(&qword_1EA933020, type metadata accessor for UILayoutPriority);
  return sub_18A4A8518();
}

uint64_t sub_188E308E8()
{
  sub_188AFC388(&qword_1EA933958, type metadata accessor for CIImageOption);
  sub_188AFC388(&qword_1EA933960, type metadata accessor for CIImageOption);

  return sub_18A4A8518();
}

uint64_t sub_188E309A4()
{
  sub_188AFC388(&qword_1EA933948, type metadata accessor for CIContextOption);
  sub_188AFC388(&qword_1EA933950, type metadata accessor for CIContextOption);

  return sub_18A4A8518();
}

uint64_t sub_188E30A60()
{
  sub_188AFC388(&qword_1EA933000, type metadata accessor for Level);
  sub_188AFC388(&unk_1EA933008, type metadata accessor for Level);
  sub_188C11B34();
  return sub_18A4A8518();
}

uint64_t sub_188E30B28()
{
  sub_188AFC388(&qword_1EA933980, type metadata accessor for Mode);
  sub_188AFC388(&qword_1EA933988, type metadata accessor for Mode);

  return sub_18A4A8518();
}

uint64_t sub_188E30BE4()
{
  sub_188AFC388(&qword_1EA9330A8, type metadata accessor for URLThumbnailDictionaryItem);
  sub_188AFC388(&unk_1EA9330B0, type metadata accessor for URLThumbnailDictionaryItem);

  return sub_18A4A8518();
}

uint64_t sub_188E30CA0()
{
  sub_188AFC388(&qword_1EA9410D0, type metadata accessor for ComponentKey);
  sub_188AFC388(&qword_1EA933060, type metadata accessor for ComponentKey);

  return sub_18A4A8518();
}

uint64_t sub_188E30D5C()
{
  sub_188AFC388(&qword_1EA933098, type metadata accessor for DetectionPattern);
  sub_188AFC388(&qword_1EA9330A0, type metadata accessor for DetectionPattern);

  return sub_18A4A8518();
}

uint64_t sub_188E30E18()
{
  sub_188AFC388(&qword_1EA933088, type metadata accessor for TextAlignment);
  sub_188AFC388(&qword_1EA933090, type metadata accessor for TextAlignment);

  return sub_18A4A8518();
}

uint64_t sub_188E30ED4()
{
  sub_188AFC388(&qword_1EA933078, type metadata accessor for TextList);
  sub_188AFC388(&qword_1EA933080, type metadata accessor for TextList);

  return sub_18A4A8518();
}

uint64_t sub_188E30F90()
{
  sub_188AFC388(&qword_1EA933068, type metadata accessor for Highlight);
  sub_188AFC388(&qword_1EA933070, type metadata accessor for Highlight);

  return sub_18A4A8518();
}

uint64_t sub_188E3104C()
{
  sub_188AFC388(&qword_1EA933918, type metadata accessor for MarkerFormat);
  sub_188AFC388(&unk_1EA933920, type metadata accessor for MarkerFormat);

  return sub_18A4A8518();
}

uint64_t sub_188E311C4()
{
  sub_18A4A8888();
  swift_getWitnessTable();
  sub_18A4A3248();
  return sub_18A4A88E8();
}

uint64_t sub_188E31228()
{
  sub_188AFC388(&qword_1EA92FB70, type metadata accessor for UIConfigurationStateCustomKey);
  sub_188AFC388(&qword_1EA932FC8, type metadata accessor for UIConfigurationStateCustomKey);

  return sub_18A4A8518();
}

uint64_t sub_188E312E4()
{
  sub_188AFC388(&unk_1EA92FD78, type metadata accessor for AttributeName);
  sub_188AFC388(&unk_1EA933930, type metadata accessor for AttributeName);

  return sub_18A4A8518();
}

uint64_t sub_188E313A0()
{
  sub_188AFC388(&qword_1EA933048, type metadata accessor for TextEffectStyle);
  sub_188AFC388(&unk_1EA933050, type metadata accessor for TextEffectStyle);

  return sub_18A4A8518();
}

uint64_t sub_188E3145C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188A34624(0, &qword_1EA933968);
  v4 = v2;
  v5 = v3;
  v6 = sub_18A4A7C88();

  return v6 & 1;
}

uint64_t sub_188E314D0()
{
  sub_188AFC388(&qword_1EA933028, type metadata accessor for Width);
  sub_188AFC388(&qword_1EA933030, type metadata accessor for Width);
  sub_188C11B34();
  return sub_18A4A8518();
}

uint64_t sub_188E31598()
{
  sub_188AFC388(&qword_1EA932FF0, type metadata accessor for UIAccessibilityTraits);
  sub_188AFC388(&qword_1EA932FF8, type metadata accessor for UIAccessibilityTraits);
  return sub_18A4A8518();
}

uint64_t sub_188E31654()
{
  swift_getWitnessTable();

  return sub_18A4A3238();
}

uint64_t sub_188E31720()
{
  v0 = sub_18A4A7288();
  v1 = MEMORY[0x18CFE2340](v0);

  return v1;
}

uint64_t sub_188E3175C()
{
  sub_18A4A7288();
  sub_18A4A7348();
}

uint64_t sub_188E317C0(uint64_t a1)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A480);
  v12[0] = a1;
  sub_188A55598(v12, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v3 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v3)
  {
    *&v10 = a1;

    v4 = sub_18A4A8778();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v5 = *v1;
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v6 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v7 = sub_188A78A74(&type metadata for ScrollPocketContainerModelTrait, sub_188AD7C3C);
  os_unfair_lock_unlock(v6[2]);
  [v5 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188E3199C(uint64_t a1)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933150);
  v12[0] = a1;
  sub_188A55598(v12, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v3 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v3)
  {
    *&v10 = a1;

    v4 = sub_18A4A8778();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v5 = *v1;
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v6 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v7 = sub_188A75858(&type metadata for ScrollPocketCollectorModelTrait, sub_188AD9430);
  os_unfair_lock_unlock(v6[2]);
  [v5 _setObject_forTraitToken_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v8, a1, a3, a4);
  [*v4 _setCGFloatValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v8, a1, a3, a4);
  [*v4 _setCGFloatValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v8, a1, a3, a4);
  [*v4 _setNSIntegerValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  [*v5 _setCGFloatValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  [*v5 _setCGFloatValue_forTraitToken_];
  return swift_unknownObjectRelease();
}

uint64_t sub_188E31F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v18[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v18);
  v8(a1, a3, a4);
  sub_188A55598(v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v16[0] = v16[2];
  v16[1] = v17;
  v9 = *(&v17 + 1);
  sub_188A3F5FC(v16, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;

    *v4 = v13;
  }

  v14 = v12;
  [v14 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188E32140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v13, a1, a3, a4);
  v7 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = v9;
  [v11 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t sub_188E32264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v13, a1, a3, a4);
  v7 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = v9;
  [v11 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t sub_188E32388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v13, a1, a3, a4);
  v7 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = v9;
  [v11 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t sub_188E324AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  v19[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v19);
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  sub_188A55598(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v17[0] = v17[2];
  v17[1] = v18;
  v10 = *(&v18 + 1);
  sub_188A3F5FC(v17, &qword_1EA934050);
  if (v10)
  {
    v11 = sub_18A4A86A8();
  }

  else
  {
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = [(_UITraitOverrides *)*(*v6 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;

    *v6 = v14;
  }

  v15 = v13;
  [v15 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188E326D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = [(_UITraitOverrides *)*(*v6 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    *v6 = v12;
  }

  v13 = v11;
  [v13 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t sub_188E32814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = [(_UITraitOverrides *)*(*v6 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    *v6 = v12;
  }

  v13 = v11;
  [v13 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

unint64_t sub_188E32958()
{
  result = qword_1EA937520;
  if (!qword_1EA937520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA932220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937520);
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

uint64_t dispatch thunk of UIMutableTraits.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 32))();
}

{
  return (*(a5 + 56))();
}

{
  return (*(a5 + 80))();
}

{
  return (*(a5 + 104))();
}

{
  return (*(a5 + 128))();
}

{
  return (*(a5 + 152))();
}

{
  return (*(a5 + 176))();
}

{
  return (*(a5 + 200))();
}

{
  return (*(a5 + 224))();
}

{
  return (*(a5 + 248))();
}

{
  return (*(a5 + 272))();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))();
}

{
  return (*(a6 + 48))();
}

{
  return (*(a6 + 72))();
}

{
  return (*(a6 + 96))();
}

{
  return (*(a6 + 120))();
}

{
  return (*(a6 + 144))();
}

{
  return (*(a6 + 168))();
}

{
  return (*(a6 + 192))();
}

{
  return (*(a6 + 216))();
}

{
  return (*(a6 + 240))();
}

{
  return (*(a6 + 264))();
}

{
  return (*(a6 + 288))();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 40))();
}

{
  return (*(a5 + 88))();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 64))(a1, a2 & 1);
}

{
  return (*(a7 + 112))(a1, a2 & 1);
}

{
  return (*(a7 + 160))(a1, a2 & 1);
}

uint64_t dispatch thunk of UIMutableTraits.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 296))();
}

{
  return (*(a6 + 320))();
}

{
  return (*(a6 + 344))();
}

{
  return (*(a6 + 368))();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 312))();
}

{
  return (*(a7 + 336))();
}

{
  return (*(a7 + 360))();
}

{
  return (*(a7 + 384))();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for _UIIntelligenceLightSourceConfiguration.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _UIIntelligenceLightSourceConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_188E3330C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E3332C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_188E336F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E33714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t _s17TransitionManagerC5EntryC2IDVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s17TransitionManagerC5EntryC2IDVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188E33898(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E338B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_188E352D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_188E35550(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E35570(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 144) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_188E35648(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E35668(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_188E35750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E35770(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t _s13ConfigurationVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188E36638()
{
  result = qword_1EA933900;
  if (!qword_1EA933900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933900);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_188E36808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188E3685C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UIAnimatableTransform.Vector3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIAnimatableTransform.Vector3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_188E36BA4()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA995048);
  __swift_project_value_buffer(v0, qword_1EA995048);
  return sub_18A4A4368();
}

void sub_188E36EBC(void *a1)
{
  v2 = v1;
  v237 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v213 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v213 - v8;
  v10 = [v1 isZoomingIn];
  type metadata accessor for _UIZoomTransitionSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v229 = v9;
  v219 = v5;
  if (v10)
  {
    v239.receiver = ObjCClassFromMetadata;
    v239.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v12 = objc_msgSendSuper2(&v239, sel_rootSettings);
    if (!v12)
    {
      goto LABEL_104;
    }

    v13 = v12;
    v14 = &OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomIn;
  }

  else
  {
    v257.receiver = ObjCClassFromMetadata;
    v257.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v15 = objc_msgSendSuper2(&v257, sel_rootSettings);
    if (!v15)
    {
      goto LABEL_105;
    }

    v13 = v15;
    v14 = &OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOut;
  }

  type metadata accessor for _UIZoomTransitionSpec();
  v16 = *(swift_dynamicCastClassUnconditional() + *v14);

  v258 = v16;
  v17 = *&v16[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general];
  v18 = _s22HybridPropertyAnimatorCMa();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = 2;
  v20 = MEMORY[0x1E69E7CC0];
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_c2Animations] = MEMORY[0x1E69E7CC0];
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionHandlers] = v20;
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_keyframes] = v20;
  v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished] = 0;
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = 0;
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] = 0;
  v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 0;
  v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed] = 0;
  v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion] = 0;
  v21 = objc_allocWithZone(UIViewFloatAnimatableProperty);
  v22 = v17;
  v23 = [v21 init];
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_backgroundProgressValue] = v23;
  v24 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue] = v24;
  v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isProgressValueReversed] = 0;
  v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.0];
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] = v25;
  *&v19[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior] = v17;
  v256.receiver = v19;
  v256.super_class = v18;
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2(&v256, sel_init);
  v27 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator;
  v28 = *&v26[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator];
  v29 = v26;
  [v28 setPausesOnCompletion_];
  [*&v26[v27] setScrubsLinearly_];
  [*&v26[v27] _setShouldLayoutSubviews_];
  [*&v26[v27] _setShouldBeginFromCurrentState_];
  [*&v26[v27] set:0 updatesModelValues:?];
  v30 = *&v26[v27];
  v31 = sub_18A4A7258();
  [v30 set:v31 name:?];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18A64B710;
  v34 = *&v29[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_mainProgressValue];
  *(v33 + 32) = v34;
  sub_188A34624(0, &qword_1ED48F690);
  v35 = v34;
  v36 = sub_18A4A7518();

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v261 = sub_188E3FCF4;
  *(&v261 + 1) = v37;
  aBlock.i64[0] = MEMORY[0x1E69E9820];
  aBlock.i64[1] = 1107296256;
  *&v260 = sub_188A4A8F0;
  *(&v260 + 1) = &block_descriptor_128;
  v38 = _Block_copy(&aBlock);

  v238 = v32;
  [v32 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v38);

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_189200BA0(v29, v39, 1048632);

  v29[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion] = 1;
  v40 = *&v2[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator];
  v230 = OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator;
  *&v2[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator] = v29;
  v41 = v29;

  v42 = v237;
  *&v2[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext] = v237;
  swift_unknownObjectRelease();
  v43 = [swift_unknownObjectRetain() presentationStyle] == -1;
  v44 = OBJC_IVAR____UIZoomTransitionController_isForNavigation;
  v2[OBJC_IVAR____UIZoomTransitionController_isForNavigation] = v43;
  v45 = [v2 dismissInteraction];
  LODWORD(v39) = [v45 isActive];

  v46 = [v2 dismissInteraction];
  [v46 setIsEnabled_];

  v235 = v39;
  if ((v39 & 1) != 0 || ![v42 isInteractive])
  {
    goto LABEL_12;
  }

  if (qword_1EA931C98 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v47 = sub_18A4A4378();
    __swift_project_value_buffer(v47, qword_1EA995048);
    v48 = sub_18A4A4358();
    v49 = sub_18A4A7958();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_188A29000, v48, v49, "Zoom transition gesture started and ended before startInteractiveTransition called.", v50, 2u);
      MEMORY[0x18CFEA5B0](v50, -1, -1);
    }

LABEL_12:
    v236 = [v42 viewControllerForKey_];
    if (!v236)
    {
      break;
    }

    v51 = [v42 viewControllerForKey_];
    if (!v51)
    {
      goto LABEL_100;
    }

    v52 = v51;
    v53 = v44;
    v54 = [v2 isZoomingIn];
    v228 = v41;
    if (v54)
    {
      v55 = v52;
      v56 = v236;
      v57 = [v237 viewForKey_];
      if (!v57)
      {
        goto LABEL_106;
      }

      v58 = &UITransitionContextFromViewKey;
    }

    else
    {
      v56 = v52;
      v55 = v236;
      v57 = [v237 viewForKey_];
      if (!v57)
      {
        goto LABEL_107;
      }

      v58 = &UITransitionContextToViewKey;
    }

    v59 = *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView];
    *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView] = v57;

    v60 = v237;
    v61 = [v237 viewForKey_];
    v62 = *&v2[OBJC_IVAR____UIZoomTransitionController_backgroundView];
    *&v2[OBJC_IVAR____UIZoomTransitionController_backgroundView] = v61;

    v63 = v53[v2];
    v44 = v56;
    if ((v63 & 1) == 0)
    {
      v64 = [v55 activePresentationController];
      if (v64)
      {
        v65 = v64;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v66 = &unk_1EFAB76E0;
        }

        else
        {
          objc_opt_self();
          v67 = swift_dynamicCastObjCClass();
          v234 = v44;
          v68 = v67;

          v66 = &unk_1EFAB7708;
          v69 = v68 == 0;
          v44 = v234;
          if (v69)
          {
            v66 = MEMORY[0x1E69E7CC0];
          }
        }

        *&v2[OBJC_IVAR____UIZoomTransitionController_behaviors] = v66;
      }
    }

    v70 = [v60 containerView];
    v220 = OBJC_IVAR____UIZoomTransitionController_foregroundView;
    v71 = *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView];
    if (!v71)
    {
      goto LABEL_101;
    }

    v72 = v70;
    v73 = v71;
    [v73 setUserInteractionEnabled_];

    v74 = swift_allocObject();
    *(v74 + 16) = v2;
    *(v74 + 24) = v60;
    *(v74 + 32) = v52;
    *(v74 + 40) = v72;
    *(v74 + 48) = v55;
    *(v74 + 56) = v44;
    v75 = v236;
    *(v74 + 64) = v236;
    *(v74 + 72) = &v258;
    *(v74 + 80) = v235;
    v41 = swift_allocObject();
    *(v41 + 2) = sub_188E3FCFC;
    *(v41 + 3) = v74;
    v226 = v74;
    *&v261 = sub_188E3FE50;
    *(&v261 + 1) = v41;
    aBlock.i64[0] = MEMORY[0x1E69E9820];
    aBlock.i64[1] = 1107296256;
    *&v260 = sub_188A4A968;
    *(&v260 + 1) = &block_descriptor_139;
    v42 = _Block_copy(&aBlock);
    v232 = *(&v261 + 1);
    v76 = v55;
    swift_unknownObjectRetain();
    v233 = v52;
    v227 = v75;
    v77 = v44;
    v78 = v76;
    v79 = v2;
    v2 = v2;
    v234 = v72;

    [v238 performWithoutAnimation_];
    _Block_release(v42);
    LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

    if (v72)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v80 = [objc_opt_self() _contextWithSource_zoomed_];
    v81 = v77;
    v82 = v80;
    v231 = v81;

    v83 = [v2 isZoomingIn];
    v84 = sub_188E393C8(v82, v234, v83);

    v255 = 0x3FF0000000000000;
    if ([v2 isZoomingIn])
    {
      v85 = v84;
      v86 = [v78 _showcaseView];
      v87 = v79;
      if (v86)
      {
        v88 = v86;
        v89 = [v86 window];
        if (v89)
        {

          goto LABEL_38;
        }
      }

      v93 = *&v79[v220];
      if (!v93)
      {
        goto LABEL_110;
      }

      v88 = v93;
LABEL_38:
      v94 = v88;
      v95 = [v233 _showcaseView];
      if (v95)
      {
        v96 = v95;
        v97 = [v95 window];
        if (v97)
        {

LABEL_47:
          v236 = v94;
          sub_188E3E318(v85, v96);
          v100 = v99;

          v255 = v100;
          goto LABEL_48;
        }
      }

      v96 = [v233 view];
      if (!v96)
      {
        goto LABEL_112;
      }

      goto LABEL_47;
    }

    v90 = [v78 _showcaseView];
    v87 = v79;
    if (!v90)
    {
      goto LABEL_42;
    }

    v91 = v90;
    v92 = [v90 window];
    if (!v92)
    {

LABEL_42:
      v98 = *&v79[v220];
      if (!v98)
      {
        goto LABEL_111;
      }

      v91 = v98;
      goto LABEL_44;
    }

LABEL_44:
    v236 = v84;
    v85 = v91;
LABEL_48:
    v101 = v78;
    v102 = v84;
    v103 = [v102 _vendAssertionForOverrideAlpha_];
    [v2 setSourceViewHidingAssertion_];

    sub_188E39A28(v101, v102);
    v104 = *&v2[OBJC_IVAR____UIZoomTransitionController_behaviors];
    v105 = *(v104 + 16);
    v106 = (v104 + 32);
    while (v105)
    {
      v107 = *v106++;
      --v105;
      if (v107 == 1)
      {
        goto LABEL_57;
      }
    }

    v108 = *&v2[OBJC_IVAR____UIZoomTransitionController_fallbackSourceView];
    if (v108)
    {
      sub_188A34624(0, &qword_1ED48F680);
      v109 = v102;
      v110 = v108;
      v111 = sub_18A4A7C88();

      v112 = v102;
      if (v111)
      {

        v112 = 0;
      }
    }

    else
    {
      v113 = v102;
      v112 = v102;
    }

    v114 = sub_188E39E28(v112);

    v115 = *&v2[OBJC_IVAR____UIZoomTransitionController_viewToScaleBack];
    *&v2[OBJC_IVAR____UIZoomTransitionController_viewToScaleBack] = v114;

LABEL_57:
    v225 = v102;
    v116 = swift_allocObject();
    v116[2] = v2;
    v116[3] = v101;
    v117 = v234;
    v116[4] = v85;
    v116[5] = v117;
    v116[6] = &v255;
    v118 = swift_allocObject();
    *(v118 + 16) = sub_188E3FD34;
    *(v118 + 24) = v116;
    *&v261 = sub_188E3FE50;
    *(&v261 + 1) = v118;
    aBlock.i64[0] = MEMORY[0x1E69E9820];
    aBlock.i64[1] = 1107296256;
    *&v260 = sub_188A4A968;
    *(&v260 + 1) = &block_descriptor_149;
    v42 = _Block_copy(&aBlock);
    v44 = *(&v261 + 1);
    v41 = v101;
    v119 = v2;
    v120 = v117;
    v121 = v119;
    v2 = v120;
    v234 = v85;

    [v238 performWithoutAnimation_];
    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_96;
    }

    v223 = v41;
    v123 = *&v121[OBJC_IVAR____UIZoomTransitionController_shimAnimationView];
    [v123 setAlpha_];
    v224 = v2;
    [v2 insertSubview:v123 atIndex:0];
    v124 = v230;
    v125 = *&v230[v87];
    if (!v125)
    {
      goto LABEL_102;
    }

    v126 = swift_allocObject();
    v41 = v121;
    swift_unknownObjectWeakInit();
    v127 = *&v125[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator];
    v128 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v129 = swift_allocObject();
    v129[2] = v128;
    v129[3] = sub_188E3FD44;
    v129[4] = v126;
    *&v261 = sub_188E3FD4C;
    *(&v261 + 1) = v129;
    aBlock.i64[0] = MEMORY[0x1E69E9820];
    aBlock.i64[1] = 1107296256;
    *&v260 = sub_188A4A8F0;
    *(&v260 + 1) = &block_descriptor_159;
    v130 = _Block_copy(&aBlock);
    v131 = v125;
    swift_retain_n();

    [v127 addAnimations:v130 delayFactor:0.0];
    _Block_release(v130);

    v132 = *&v124[v87];
    v133 = v229;
    v134 = v236;
    v221 = v116;
    v215 = v87;
    if (v235)
    {
      if (!v132)
      {
        goto LABEL_108;
      }

      v135 = v132;
      sub_1891FCF18();
    }

    else
    {
      if (!v132)
      {
        goto LABEL_109;
      }

      v135 = v132;
      sub_1891FD740();
    }

    v136 = *&v41[OBJC_IVAR____UIZoomTransitionController_morphAnimation];
    v137 = *(v136 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
    v138 = OBJC_IVAR____UIMagicMorphView_milestones;
    swift_beginAccess();
    v230 = v137;
    v216 = "n.fallbackSourceView";
    sub_188F27F18(0, 0xD00000000000001ELL, 0x800000018A68B050);
    swift_endAccess();
    v139 = v234;
    v140 = sub_18923B75C(16.0, 32.0);

    v232 = sub_18923B75C(16.0, 32.0);
    v141 = [v140 _resolvedBackgroundMaterial];
    v222 = v140;
    v236 = v134;
    v217 = v138;
    v218 = v137;
    if (v141)
    {
      swift_getObjectType();
      sub_18901EB8C(&aBlock);
      swift_unknownObjectRelease();
      if (*(&v260 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
        v142 = type metadata accessor for _Glass(0);
        v143 = swift_dynamicCast();
        (*(*(v142 - 8) + 56))(v133, v143 ^ 1u, 1, v142);
        goto LABEL_69;
      }
    }

    else
    {
      *&v261 = 0;
      aBlock = 0u;
      v260 = 0u;
    }

    sub_188A3F5FC(&aBlock, &unk_1EA93C9A0);
    v142 = type metadata accessor for _Glass(0);
    (*(*(v142 - 8) + 56))(v133, 1, 1, v142);
LABEL_69:
    type metadata accessor for _Glass(0);
    v144 = *(v142 - 8);
    v145 = *(v144 + 48);
    if (!v145(v133, 1, v142))
    {
      sub_188A3F5FC(v133, &unk_1EA93BA10);
      v148 = v41;
      goto LABEL_80;
    }

    if ([v232 _resolvedBackgroundMaterial])
    {
      swift_getObjectType();
      sub_18901EB8C(&aBlock);
      swift_unknownObjectRelease();
      v146 = v219;
      if (*(&v260 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
        v147 = swift_dynamicCast();
        (*(v144 + 56))(v146, v147 ^ 1u, 1, v142);
        goto LABEL_76;
      }
    }

    else
    {
      *&v261 = 0;
      aBlock = 0u;
      v260 = 0u;
      v146 = v219;
    }

    sub_188A3F5FC(&aBlock, &unk_1EA93C9A0);
    (*(v144 + 56))(v146, 1, 1, v142);
LABEL_76:
    v149 = v145(v146, 1, v142);
    sub_188A3F5FC(v146, &unk_1EA93BA10);
    sub_188A3F5FC(v133, &unk_1EA93BA10);
    v148 = v41;
    if (v149)
    {
      v150 = 0;
      if ((v235 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_82;
    }

LABEL_80:
    type metadata accessor for _UIMorphAnimationSettingsDomain();
    v240.receiver = swift_getObjCClassFromMetadata();
    v240.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v184 = objc_msgSendSuper2(&v240, sel_rootSettings);
    if (!v184)
    {
      goto LABEL_103;
    }

    v185 = v184;
    type metadata accessor for _UIMorphAnimationSettings();
    v186 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph);

    v187 = objc_allocWithZone(type metadata accessor for _UIZoomTransitionAnimationSpec());
    v188 = sub_188FE0398(v186);
    v189 = v258;
    v258 = v188;

    v150 = 1;
    if ((v235 & 1) == 0)
    {
LABEL_78:
      v151 = *(v136 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);
      v214 = v136;
      v152 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      v229 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      v235 = v150;
      [v151 increment];
      v153 = *&v258[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general];
      v154 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v155 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v156 = swift_allocObject();
      v157 = v237;
      *(v156 + 16) = v155;
      *(v156 + 24) = v157;
      v220 = v148;
      v158 = *(v136 + v152);
      *&v261 = sub_188E3FD60;
      *(&v261 + 1) = v156;
      aBlock.i64[0] = MEMORY[0x1E69E9820];
      aBlock.i64[1] = 1107296256;
      v41 = &v260;
      *&v260 = sub_188A4A8F0;
      *(&v260 + 1) = &block_descriptor_167;
      v159 = _Block_copy(&aBlock);
      swift_retain_n();
      swift_unknownObjectRetain();
      v160 = v153;

      v161 = v158;

      [v161 addCompletion_];
      _Block_release(v159);

      v162 = swift_allocObject();
      *(v162 + 16) = sub_188E3FD58;
      *(v162 + 24) = v154;
      *&v261 = sub_188E3FE58;
      *(&v261 + 1) = v162;
      aBlock.i64[0] = MEMORY[0x1E69E9820];
      aBlock.i64[1] = 1107296256;
      *&v260 = sub_188A4A8F0;
      *(&v260 + 1) = &block_descriptor_174;
      v163 = _Block_copy(&aBlock);
      v164 = v160;

      v165 = swift_allocObject();
      v166 = v214;
      swift_unknownObjectWeakInit();
      *&v261 = sub_188E3FE98;
      *(&v261 + 1) = v165;
      aBlock.i64[0] = MEMORY[0x1E69E9820];
      aBlock.i64[1] = 1107296256;
      *&v260 = sub_188C3DD6C;
      *(&v260 + 1) = &block_descriptor_179;
      v167 = _Block_copy(&aBlock);

      [v238 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v167);
      _Block_release(v163);

      v168 = v258;
      v169 = v258;
      v170 = v168;
      v171 = v220;
      sub_188E3A8A0(v236, v170, v235, 0, 0, 1.0);

      [*(v166 + v229) complete];
      v172 = [v171 isZoomingIn];
      v44 = v228;
      v173 = v224;
      if (v172)
      {
        [v224 bounds];
        v174 = CGRectGetHeight(v263) + -2.0;
        v175 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v176 = type metadata accessor for _UIMagicMorphView.Milestone();
        v177 = objc_allocWithZone(v176);
        v177[OBJC_IVAR____UIMagicMorphMilestone_property] = 1;
        v177[OBJC_IVAR____UIMagicMorphMilestone_comparisonResult] = 0;
        *&v177[OBJC_IVAR____UIMagicMorphMilestone_value] = v174;
        v178 = &v177[OBJC_IVAR____UIMagicMorphMilestone_action];
        *v178 = sub_188E3FDA0;
        v178[1] = v175;
        v254.receiver = v177;
        v254.super_class = v176;
        v179 = objc_msgSendSuper2(&v254, sel_init);
        v181 = v217;
        v180 = v218;
        swift_beginAccess();
        v182 = v179;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v250.i64[0] = *&v180[v181];
        *&v180[v181] = 0x8000000000000000;
        sub_188E9D90C(v182, 0xD00000000000001ELL, v216 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
        *&v180[v181] = v250.i64[0];
        swift_endAccess();
      }

      goto LABEL_93;
    }

LABEL_82:
    v190 = [v148 isZoomingIn];
    v44 = v228;
    v191 = v148;
    v173 = v224;
    if ((v190 & 1) == 0 && (v191[OBJC_IVAR____UIZoomTransitionController_style] & 1) == 0)
    {
      v192 = v215;
      v193 = *&v215[v220];
      if (!v193)
      {
        goto LABEL_113;
      }

      v194 = [v193 layer];
      [v194 cornerRadii];

      if (qword_1EA930F18 != -1)
      {
        swift_once();
      }

      v246 = xmmword_1EA994E60;
      v247 = *algn_1EA994E70;
      v248 = xmmword_1EA994E80;
      v249 = unk_1EA994E90;
      aBlock = v250;
      v260 = v251;
      v261 = v252;
      v262 = v253;
      if (CACornerRadiiEqualToRadii())
      {
        v195 = *&v192[v220];
        if (!v195)
        {
          goto LABEL_115;
        }

        v196 = [v195 layer];
        [v196 cornerRadius];
        v198 = v197;

        CACornerRadiiMake(&v246, v198, v198, v198, v198);
      }

      else
      {
        v246 = v250;
        v247 = v251;
        v248 = v252;
        v249 = v253;
      }

      v199 = *&v192[v220];
      if (!v199)
      {
        goto LABEL_114;
      }

      [v199 _intersectedSceneCornerRadii];
      v242 = v246;
      v243 = v247;
      v244 = v248;
      v245 = v249;
      _UICornerRadiiMax(&v242, &v241, &aBlock);
      v200 = *&v258[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment];
      v201 = swift_allocObject();
      v202 = v260;
      *(v201 + 24) = aBlock;
      *(v201 + 40) = v202;
      v203 = v262;
      *(v201 + 56) = v261;
      v204 = v230;
      *(v201 + 16) = v230;
      *(v201 + 72) = v203;
      *&v244 = sub_188E3FDE4;
      *(&v244 + 1) = v201;
      *&v242 = MEMORY[0x1E69E9820];
      *(&v242 + 1) = 1107296256;
      *&v243 = sub_188A4A8F0;
      *(&v243 + 1) = &block_descriptor_198;
      v205 = _Block_copy(&v242);
      v206 = v204;
      v207 = v200;

      *&v244 = signpost_c2_entryLock_start;
      *(&v244 + 1) = 0;
      *&v242 = MEMORY[0x1E69E9820];
      *(&v242 + 1) = 1107296256;
      *&v243 = sub_188C3DD6C;
      *(&v243 + 1) = &block_descriptor_201;
      v208 = _Block_copy(&v242);
      [v238 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v208);
      _Block_release(v205);
    }

LABEL_93:
    v209 = swift_allocObject();
    v42 = v223;
    *(v209 + 16) = v223;
    v210 = swift_allocObject();
    *(v210 + 16) = sub_188E3FD7C;
    *(v210 + 24) = v209;
    *&v252 = sub_188E3FE50;
    *(&v252 + 1) = v210;
    v250.i64[0] = MEMORY[0x1E69E9820];
    v250.i64[1] = 1107296256;
    *&v251 = sub_188A4A968;
    *(&v251 + 1) = &block_descriptor_189;
    v2 = _Block_copy(&v250);

    [v238 performWithoutAnimation_];
    swift_unknownObjectRelease();

    _Block_release(v2);
    swift_unknownObjectRelease();
    v211 = swift_isEscapingClosureAtFileLocation();

    if ((v211 & 1) == 0)
    {
      v212 = v258;

      return;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
}

void sub_188E38C48(char *a1, void *a2, uint64_t a3, void *a4, void *a5, id a6, void *a7, void **a8, char a9)
{
  if (![a1 isZoomingIn])
  {
LABEL_10:
    v22 = *&a1[OBJC_IVAR____UIZoomTransitionController_backgroundView];
    if (v22)
    {
      v23 = v22;
      [a2 finalFrameForViewController_];
      [v23 _setFrameIgnoringLayerTransform_];
      if (!*&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView])
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      [a4 insertSubview:v23 belowSubview:?];
    }

    v21 = [a6 view];
    if (!v21)
    {
      goto LABEL_57;
    }

    goto LABEL_14;
  }

  v63 = &unk_1EFF73578;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      [v17 finalTransformForViewController_];
      v18 = *&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
      if (!v18)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      [v18 setTransform_];
    }
  }

  v19 = OBJC_IVAR____UIZoomTransitionController_foregroundView;
  v20 = *&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
  if (!v20)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  a6 = v20;
  [a2 finalFrameForViewController_];
  [a6 _setFrameIgnoringLayerTransform_];

  if (!*&a1[v19])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [a4 addSubview_];
  v21 = [a5 &selRef_wantsUnassociatedWindowSceneForKeyboardWindow];
  if (!v21)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_14:
  v24 = v21;
  [v21 layoutIfNeeded];

  v25 = [a5 _showcaseView];
  if (!v25 || (v26 = v25, v27 = [v25 window], v26, !v27))
  {
    a1[OBJC_IVAR____UIZoomTransitionController_style] = 0;
    v35 = *&a1[OBJC_IVAR____UIZoomTransitionController_dimmingView];
    [a4 bounds];
    [v35 setFrame_];
    if (a1[OBJC_IVAR____UIZoomTransitionController_isForNavigation] == 1 && (_UISolariumEnabled() & 1) == 0)
    {
      v36 = [a7 navigationController];
      if (v36)
      {
        v37 = *&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
        if (!v37)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v38 = v36;
        v39 = v37;
        v40 = [v38 view];
        [v39 _setOverrideReparentingContainer_];

        v41 = [v38 toolbar];
        if (!v41)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v42 = v41;
        v43 = [v41 superview];

        v44 = [v38 view];
        v45 = v44;
        if (v43)
        {
          if (v44)
          {
            sub_188A34624(0, &qword_1ED48F680);
            v46 = sub_18A4A7C88();

            if ((v46 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_48;
          }

          v45 = v43;
        }

        else if (!v44)
        {
LABEL_48:
          v57 = [v38 view];

          if (!v57)
          {
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v58 = [v38 toolbar];
          if (!v58)
          {
LABEL_70:
            __break(1u);
            return;
          }

          v59 = v58;
          [v57 insertSubview:v35 aboveSubview:v58];

          goto LABEL_32;
        }

LABEL_53:
        v60 = [v38 view];

        if (!v60)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        [v60 addSubview_];

        goto LABEL_32;
      }
    }

    if (*&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView])
    {
      [a4 insertSubview:v35 belowSubview:?];
LABEL_32:
      v47 = [a4 _shouldReverseLayoutDirection];
      v48 = [a5 view];
      v34 = v48;
      if (!v47)
      {
        if (v48)
        {
          v52 = [a5 tabBarController];
          if (v52)
          {
            v53 = v52;
            v54 = [(UITabBarController *)v52 _sidebarOverlapAmountForZoom];
          }

          else
          {
            v54 = 0.0;
          }

          [v34 _setCropInsets_];
          goto LABEL_45;
        }

        goto LABEL_63;
      }

      if (v48)
      {
        v49 = [a5 tabBarController];
        if (v49)
        {
          v50 = v49;
          v51 = [(UITabBarController *)v49 _sidebarOverlapAmountForZoom];
        }

        else
        {
          v51 = 0.0;
        }

        [v34 _setCropInsets_];
        goto LABEL_45;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_56;
  }

  a1[OBJC_IVAR____UIZoomTransitionController_style] = 1;
  v28 = OBJC_IVAR____UIZoomTransitionController_foregroundView;
  if (!*&a1[OBJC_IVAR____UIZoomTransitionController_foregroundView])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [a4 sendSubviewToBack_];
  v29 = *&a1[v28];
  if (!v29)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v30 = [v29 layer];
  [v30 setZPosition_];

  if ([a1 isZoomingIn])
  {
    type metadata accessor for _UIZoomTransitionSettingsDomain();
    v64.receiver = swift_getObjCClassFromMetadata();
    v64.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v31 = objc_msgSendSuper2(&v64, sel_rootSettings);
    if (v31)
    {
      v32 = v31;
      type metadata accessor for _UIZoomTransitionSpec();
      v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomInShowcase);

      v34 = *a8;
      *a8 = v33;
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  if ((a9 & 1) == 0)
  {
    return;
  }

  v55 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  v56 = sub_18A4A7258();
  [v55 setName_];

  [v55 setMatchesPosition_];
  [v55 setMatchesTransform_];
  [v55 setUserInteractionEnabled_];
  [a4 addSubview_];
  v34 = *&a1[OBJC_IVAR____UIZoomTransitionController_showcasePortal];
  *&a1[OBJC_IVAR____UIZoomTransitionController_showcasePortal] = v55;
LABEL_45:
}

id sub_188E393C8(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [v3 clientTransition];
  v9 = [v8 _viewProvider];

  v10 = v9[2](v9, a1);
  _Block_release(v9);
  if (v10)
  {
    v11 = [v10 traitCollection];
    v12 = sub_188D8440C();

    if (v12)
    {

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {

        v10 = Strong;
      }
    }

    v14 = [sub_18923B75C(16.0 32.0)];
    swift_unknownObjectRelease();

    if ((a3 & 1) == 0)
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = v14;
      v16 = [v15 window];
      if (!v16)
      {
        if (qword_1EA931C98 != -1)
        {
          swift_once();
        }

        v33 = sub_18A4A4378();
        __swift_project_value_buffer(v33, qword_1EA995048);
        v18 = v15;
        v19 = sub_18A4A4358();
        v20 = sub_18A4A7978();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v21 = 136446210;
          v34 = [v18 _conciseParentDescription];
          v35 = sub_18A4A7288();
          v50 = v18;
          v37 = v36;

          v38 = sub_1891D69C0(v35, v37, &v52);

          *(v21 + 4) = v38;
          v27 = "Dismissing a zoom transition to a view not in the view hierarchy will trigger a fallback transition. To correct the error, be sure to a provide a view that's visible and in a window. View: %{public}s";
          goto LABEL_26;
        }

        goto LABEL_27;
      }

LABEL_20:
      v32 = v16;

      goto LABEL_28;
    }

    if (v14)
    {
      v15 = v14;
      v16 = [v15 window];
      if (!v16)
      {
        if (qword_1EA931C98 != -1)
        {
          swift_once();
        }

        v17 = sub_18A4A4378();
        __swift_project_value_buffer(v17, qword_1EA995048);
        v18 = v15;
        v19 = sub_18A4A4358();
        v20 = sub_18A4A7978();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v21 = 136446210;
          v22 = [v18 _conciseParentDescription];
          v23 = sub_18A4A7288();
          v50 = v18;
          v25 = v24;

          v26 = sub_1891D69C0(v23, v25, &v52);

          *(v21 + 4) = v26;
          v27 = "Starting a zoom transition to a view not in the view hierarchy will trigger a fallback transition. To correct the error, be sure to a provide a view that's visible and in a window. View: %{public}s";
LABEL_26:
          _os_log_impl(&dword_188A29000, v19, v20, v27, v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          MEMORY[0x18CFEA5B0](v51, -1, -1);
          MEMORY[0x18CFEA5B0](v21, -1, -1);

          goto LABEL_28;
        }

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_20;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v14 = 0;
    goto LABEL_28;
  }

  if (qword_1EA931C98 != -1)
  {
    swift_once();
  }

  v28 = sub_18A4A4378();
  __swift_project_value_buffer(v28, qword_1EA995048);
  v29 = sub_18A4A4358();
  v30 = sub_18A4A7978();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_188A29000, v29, v30, "Starting a zoom transition from a nil view will trigger a fallback transition. To get the best possible teansition, be sure to provide a view that's visible and in a window.", v31, 2u);
    MEMORY[0x18CFEA5B0](v31, -1, -1);
  }

  v14 = 0;
LABEL_28:
  v39 = *&v4[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (!v39)
  {
LABEL_31:
    if (!v14)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v40 = [v39 isInteractive];
    swift_unknownObjectRelease();
    if (!v40)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  if (!v14)
  {
    goto LABEL_39;
  }

LABEL_34:
  v41 = v14;
  v42 = [v41 window];
  if (!v42)
  {

    goto LABEL_39;
  }

  v43 = v41;
  v44 = [a1 zoomedViewController];
  v45 = [v44 view];

  if (v45)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v46 = sub_18A4A7C88();

    if ((v46 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_39:
    v47 = [a1 zoomedViewController];
    v48 = sub_188E3A594(a2, v47);

    return v48;
  }

LABEL_41:
  [v43 _bringAncestorControlledCollectionSubviewToFrontAmongCoplanarPeers];
  return v43;
}

void sub_188E39A28(void *a1, void *a2)
{
  v5 = [a1 view];
  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____UIZoomTransitionController_fallbackSourceView];
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      v49 = v5;
      v8 = objc_opt_self();
      v9 = a2;
      v10 = [v8 _contextSourceView_zoomedViewController_];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [v2 clientTransition];
      v13 = [v12 _options];

      swift_unknownObjectWeakInit();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        v16 = [Strong alignmentRectProvider];
        if (v16)
        {
          v17 = v16;
          x = (*(v16 + 2))(v16, v11);
          y = v19;
          width = v21;
          height = v23;
          _Block_release(v17);

          MEMORY[0x18CFEA6E0](v50);
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          if (CGRectIsNull(v52))
          {

LABEL_33:
            return;
          }

          v25 = [a1 _showcaseView];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 window];
            if (v27)
            {

LABEL_24:
              v30 = OBJC_IVAR____UIZoomTransitionController_style;
              if (v2[OBJC_IVAR____UIZoomTransitionController_style] == 1)
              {
                [v26 convertRect:v49 fromCoordinateSpace:{x, y, width, height}];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;
                [v26 bounds];
                v61.origin.x = v32;
                v61.origin.y = v34;
                v61.size.width = v36;
                v61.size.height = v38;
                v54 = CGRectIntersection(v53, v61);
                x = v54.origin.x;
                y = v54.origin.y;
                width = v54.size.width;
                height = v54.size.height;
              }

              v55.origin.x = x;
              v55.origin.y = y;
              v55.size.width = width;
              v55.size.height = height;
              MinY = CGRectGetMinY(v55);
              v56.origin.x = x;
              v56.origin.y = y;
              v56.size.width = width;
              v56.size.height = height;
              MinX = CGRectGetMinX(v56);
              v41 = [a1 tabBarController];
              if (v41)
              {
                v42 = v41;
                v43 = [(UITabBarController *)v41 _sidebarOverlapAmountForZoom];
              }

              else
              {
                v43 = 0.0;
              }

              v44 = MinX - v43;
              [v26 bounds];
              v45 = CGRectGetHeight(v57);
              v58.origin.x = x;
              v58.origin.y = y;
              v58.size.width = width;
              v58.size.height = height;
              v46 = v45 - CGRectGetMaxY(v58);
              [v26 bounds];
              v47 = CGRectGetWidth(v59);
              v60.origin.x = x;
              v60.origin.y = y;
              v60.size.width = width;
              v60.size.height = height;
              v48 = v47 - CGRectGetMaxX(v60);
              if (v2[v30] == 1)
              {
                [v26 _setCropInsets_];
              }

              else
              {
                [v26 _setMorphInsets_];
              }

              goto LABEL_33;
            }
          }

          v28 = *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView];
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v49;
          }

          v26 = v29;
          goto LABEL_24;
        }
      }

      MEMORY[0x18CFEA6E0](v50);

      return;
    }
  }
}

id sub_188E39E28(void *a1)
{
  v2 = [a1 _viewControllerForAncestor];
  if (!v2)
  {
    v2 = v1;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    result = [v4 collectionView];
    if (result)
    {
      v7 = result;

LABEL_7:
      return v7;
    }

    __break(1u);
  }

  else
  {
    result = [v2 view];
    v7 = result;
    if (result)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_188E39EF0(_BYTE *a1, void *a2, void *a3, void *a4, double *a5)
{
  if ((a1[OBJC_IVAR____UIZoomTransitionController_style] & 1) == 0)
  {
    sub_188E3A150();
  }

  if (![a1 isZoomingIn])
  {
    goto LABEL_6;
  }

  v10 = [a3 _window];
  if (v10)
  {

LABEL_6:
    sub_188E3A8A0(a3, 0, 0, 0, 0, *a5);
    goto LABEL_7;
  }

  if (qword_1EA931C98 != -1)
  {
    swift_once();
  }

  v11 = sub_18A4A4378();
  __swift_project_value_buffer(v11, qword_1EA995048);
  v12 = a3;
  v13 = sub_18A4A4358();
  v14 = sub_18A4A7978();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = v14;
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v15 = 136446210;
    v16 = [v12 _conciseParentDescription];
    v17 = sub_18A4A7288();
    v19 = v18;

    v20 = sub_1891D69C0(v17, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_188A29000, v13, v23, "Source view was removed from the hierarchy during the transition! Using fallback view. Original View: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x18CFEA5B0](v22, -1, -1);
    MEMORY[0x18CFEA5B0](v15, -1, -1);
  }

  v21 = sub_188E3A594(a4, a2);
  sub_188E3A8A0(v21, 0, 0, 0, 0, *a5);

LABEL_7:
  sub_188E3AF74([a1 isZoomingIn] ^ 1, 0);
}

void sub_188E3A150()
{
  type metadata accessor for _UIZoomTransitionSettingsDomain();
  v47.receiver = swift_getObjCClassFromMetadata();
  v47.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
  v1 = objc_msgSendSuper2(&v47, sel_rootSettings);
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  type metadata accessor for _UIZoomTransitionSpec();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 layer];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 cornerRadii];
  v39 = v44;
  v40 = v43;
  v37 = v46;
  v38 = v45;

  v10 = [v0 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 _intersectedSceneCornerRadii];
  v35 = v44;
  v36 = v43;
  v33 = v46;
  v34 = v45;

  v43 = v40;
  v44 = v39;
  v45 = v38;
  v46 = v37;
  v42[0] = v36;
  v42[1] = v35;
  v42[2] = v34;
  v42[3] = v33;
  _UICornerRadiiMax(&v43, v42, v41);
  v43 = v41[0];
  v44 = v41[1];
  v45 = v41[2];
  v46 = v41[3];
  [v6 setCornerRadii_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 layer];

  [v14 setCornerCurve_];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 layer];

  v18 = [objc_opt_self() blackColor];
  v19 = [v18 CGColor];

  [v17 setShadowColor_];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 layer];

  [v22 setShadowOffset_];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 layer];

  LODWORD(v26) = *(v3 + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_platterShadowOpacity);
  [v25 setShadowOpacity_];

  v27 = [v0 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v27 layer];

  [v29 setShadowRadius_];
  v30 = [v0 view];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 layer];

    [v32 setPunchoutShadow_];
    return;
  }

LABEL_21:
  __break(1u);
}

id sub_188E3A594(void *a1, void *a2)
{
  v5 = OBJC_IVAR____UIZoomTransitionController_fallbackSourceView;
  v6 = *(v2 + OBJC_IVAR____UIZoomTransitionController_fallbackSourceView);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____UIZoomTransitionController_fallbackSourceView);
LABEL_6:
    v26 = v6;
    result = [a2 view];
    if (result)
    {
      v27 = result;
      [a1 insertSubview:v7 belowSubview:result];

      result = [a2 view];
      if (result)
      {
        v28 = result;
        v29 = [result backgroundColor];

        [v7 setBackgroundColor_];
        return v7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for _UIZoomTransitionSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31.receiver = ObjCClassFromMetadata;
  v31.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
  result = objc_msgSendSuper2(&v31, sel_rootSettings);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  type metadata accessor for _UIZoomTransitionSpec();
  v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_fallbackSourceViewWidth);

  v30.receiver = ObjCClassFromMetadata;
  v30.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
  result = objc_msgSendSuper2(&v30, sel_rootSettings);
  if (result)
  {
    v12 = result;
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_fallbackSourceViewWidth);

    [a1 bounds];
    v17 = UIRectCenteredRect(0.0, 0.0, v11, v13, v14, v15, v16);
    v21 = [objc_allocWithZone(UIView) initWithFrame_];
    v22 = [v21 layer];
    v23 = sub_18A4A7258();
    [v22 setName_];

    v24 = [v21 layer];
    [v21 bounds];
    [v24 setCornerRadius_];

    v7 = v21;
    [v7 setAlpha_];
    v25 = *(v2 + v5);
    *(v2 + v5) = v7;

    v6 = 0;
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_188E3A8A0(void *a1, uint64_t a2, int a3, uint64_t (*a4)(), uint64_t (*a5)(), double a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v66 - v15;
  v17 = *(v6 + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext);
  if (v17)
  {
    swift_unknownObjectRetain();
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v18 = [v17 isInteractive];
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v69 = a4;
  v19 = *(v7 + OBJC_IVAR____UIZoomTransitionController_foregroundView);
  if (v19)
  {
    v20 = v19 == a1;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = OBJC_IVAR____UIZoomTransitionController_style;
  v23 = *(v7 + OBJC_IVAR____UIZoomTransitionController_isForNavigation) != 1 || v21 == 0;
  v68 = a3;
  if (v23 || (*(v7 + OBJC_IVAR____UIZoomTransitionController_style) & 1) != 0)
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18A64B710;
    v25 = OBJC_IVAR____UIZoomTransitionController_transitionOverlayView;
    v26 = *(v7 + OBJC_IVAR____UIZoomTransitionController_transitionOverlayView);
    *(v24 + 32) = v26;
    v27 = v26;
    [a1 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [a1 _cropInsets];
    v37 = v29 - v36;
    [a1 _cropInsets];
    [*(v7 + v25) setFrame_];
    v22 = OBJC_IVAR____UIZoomTransitionController_style;
  }

  v39 = *(v7 + v22);
  if (a2)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40 == 1)
  {
    v41 = *(a2 + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general);
  }

  else
  {
    v41 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
    if (!v41)
    {
      __break(1u);
      return;
    }
  }

  if (!v21)
  {
    swift_unknownObjectRetain();
LABEL_34:
    v46 = 0;
    goto LABEL_35;
  }

  swift_unknownObjectRetain();
  v42 = [(UIView *)a1 _typedStorage];
  sub_188A6852C(v70);

  if (v71)
  {
    sub_188A53994(v70, &v72);
    sub_188ACE668(v70);
    if (*(&v73 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
      v43 = type metadata accessor for _Glass(0);
      v44 = swift_dynamicCast();
      (*(*(v43 - 8) + 56))(v16, v44 ^ 1u, 1, v43);
      goto LABEL_32;
    }
  }

  else
  {
    sub_188A3F5FC(v70, &unk_1EA933EC0);
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
  }

  sub_188A3F5FC(&v72, &unk_1EA93C9A0);
  v43 = type metadata accessor for _Glass(0);
  (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
LABEL_32:
  type metadata accessor for _Glass(0);
  v45 = (*(*(v43 - 8) + 48))(v16, 1, v43);
  sub_188A3F5FC(v16, &unk_1EA93BA10);
  if (!v45)
  {
    goto LABEL_34;
  }

  v46 = [objc_opt_self() systemBackgroundColor];
  v47 = v46;
LABEL_35:
  v67 = a5;
  if (a2)
  {
    v48 = *(a2 + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph);
    v49 = *(a2 + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position);
    v50 = *(a2 + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform);
    v51 = v49;
    v52 = v48;
    v53 = v50;
  }

  else
  {
    v50 = 0;
    v49 = 0;
    v48 = 0;
  }

  v54 = type metadata accessor for _UIMagicMorphAnimation.Parameters();
  v55 = objc_allocWithZone(v54);
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring] = v48;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring] = v48;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring] = v48;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring] = v49;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring] = v49;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring] = v50;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_fallbackBackgroundColor] = v46;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_overlayViews] = v24;
  *&v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_contentScale] = a6;
  v56 = &v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions];
  *v56 = v41;
  v56[8] = v40;
  v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing] = 2;
  v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape] = v68 & 1;
  v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_tracksPresentationLayer] = 1;
  v57 = &v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick];
  *v57 = 0;
  v57[1] = 0;
  v58 = &v55[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_animationSmoothness];
  *v58 = 0;
  v58[8] = 1;
  v75.receiver = v55;
  v75.super_class = v54;
  swift_unknownObjectRetain_n();
  v59 = objc_msgSendSuper2(&v75, sel_init);
  swift_unknownObjectRelease();
  v60 = sub_18923B75C(16.0, 32.0);
  v61 = *(v7 + OBJC_IVAR____UIZoomTransitionController_morphAnimation);
  v62 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v63 = *(v61 + v62);
  if (v63 >> 62)
  {
    v64 = sub_18A4A7F68();
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = [v60 _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
  sub_188D7AA34(v65, v59, 0, 0, v69, v67);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_188E3AF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v5 = OBJC_IVAR____UIZoomTransitionController_activeTransitionContext;
  v6 = *&v2[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (!v6)
  {
    goto LABEL_4;
  }

  swift_unknownObjectRetain();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v7 = [v6 isInteractive];
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_4:
    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  if ((a1 & 1) == 0)
  {
LABEL_10:
    v12 = *&v2[OBJC_IVAR____UIZoomTransitionController_viewToScaleBack];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 layer];
      [v14 sublayerTransform];

      if (!CATransform3DIsIdentity(&v60))
      {
        v15 = [v13 layer];
        v16 = *(MEMORY[0x1E69792E8] + 80);
        *&v60.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v60.m33 = v16;
        v17 = *(MEMORY[0x1E69792E8] + 112);
        *&v60.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v60.m43 = v17;
        v18 = *(MEMORY[0x1E69792E8] + 16);
        *&v60.m11 = *MEMORY[0x1E69792E8];
        *&v60.m13 = v18;
        v19 = *(MEMORY[0x1E69792E8] + 48);
        *&v60.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v60.m23 = v19;
        [v15 setSublayerTransform_];

        [(UIView *)v13 _invalidateForSublayerTransformChange];
      }
    }

    v20 = *&v2[OBJC_IVAR____UIZoomTransitionController_backgroundView];
    if (v20)
    {
      [v20 setUserInteractionEnabled_];
    }

    v21 = *&v2[OBJC_IVAR____UIZoomTransitionController_dimmingView];
    v22 = [objc_opt_self() clearColor];
    [v21 setBackgroundColor_];

    sub_188A34624(0, &unk_1EA931120);
    v23 = sub_18A4A7518();
    [v21 setBackgroundEffects_];

    if ((a1 & 1) == 0)
    {
      v24 = *&v2[OBJC_IVAR____UIZoomTransitionController_showcasePortal];
      if (v24)
      {
        [v24 setAlpha_];
      }
    }

LABEL_19:
    v25 = *&v2[v5];
    if (!v25)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____UIZoomTransitionController_behaviors];
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == 1)
    {
      goto LABEL_10;
    }
  }

  v27 = [v2 clientTransition];
  v28 = [v27 _options];

  v29 = *&v2[OBJC_IVAR____UIZoomTransitionController_viewToScaleBack];
  if (v29)
  {
    v30 = v29;
    if (UIAccessibilityIsReduceMotionEnabled() || ![v28 _recedesPresentingView])
    {
    }

    else
    {
      v31 = [v30 layer];
      type metadata accessor for _UIZoomTransitionSettingsDomain();
      v58.receiver = swift_getObjCClassFromMetadata();
      v58.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
      v32 = objc_msgSendSuper2(&v58, sel_rootSettings);
      if (!v32)
      {
        goto LABEL_48;
      }

      v33 = v32;
      type metadata accessor for _UIZoomTransitionSpec();
      v34 = swift_dynamicCastClassUnconditional();
      [v30 bounds];
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;
      v39 = *(v34 + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_recededBackgroundScaleDownPoints);
      v40 = *(v34 + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_recededBackgroundMinScale);
      v41 = CGRectGetWidth(v61) - v39;
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      v42 = v41 / CGRectGetWidth(v62);
      if (v42 <= v40)
      {
        v42 = v40;
      }

      CATransform3DMakeScale(&v60, v42, v42, 1.0);

      v57 = v60;
      [v31 setSublayerTransform_];
    }
  }

  v43 = *&v2[OBJC_IVAR____UIZoomTransitionController_backgroundView];
  if (v43)
  {
    [v43 setUserInteractionEnabled_];
  }

  v44 = *&v2[OBJC_IVAR____UIZoomTransitionController_dimmingView];
  v45 = [v28 dimmingColor];
  if (!v45)
  {
    type metadata accessor for _UIZoomTransitionSettingsDomain();
    v59.receiver = swift_getObjCClassFromMetadata();
    v59.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v46 = objc_msgSendSuper2(&v59, sel_rootSettings);
    if (v46)
    {
      v47 = v46;
      type metadata accessor for _UIZoomTransitionSpec();
      v48 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_dimmingOpacity);

      v45 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:v48];
      goto LABEL_37;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

LABEL_37:
  [v44 setBackgroundColor_];

  v49 = [v28 dimmingVisualEffect];
  if (v49)
  {
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18A64B710;
    *(v51 + 32) = v50;
    sub_188A34624(0, &unk_1EA931120);
    v52 = v50;
    v53 = sub_18A4A7518();

    [v44 setBackgroundEffects_];
  }

  else
  {
    sub_188A34624(0, &unk_1EA931120);
    v54 = sub_18A4A7518();
    [v44 setBackgroundEffects_];
  }

  v25 = *&v2[v5];
  if (!v25)
  {
LABEL_41:
    if (v2[OBJC_IVAR____UIZoomTransitionController_style] != 1)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_20:
  swift_unknownObjectRetain();
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v26 = [v25 isInteractive];
  swift_unknownObjectRelease();
  if (v26)
  {
    goto LABEL_41;
  }

LABEL_42:
  v55 = *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView];
  if (v55)
  {
    v56 = 0.0;
    if ((a1 | a2))
    {
      v56 = 1.0;
    }

    [v55 setAlpha_];
  }
}

void sub_188E3B5F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____UIZoomTransitionController_shimAnimationView);

    [v2 setAlpha_];
  }
}

void sub_188E3B674()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188E3AF74([Strong isZoomingIn], 0);
  }
}

id sub_188E3B6D8(id result)
{
  v2 = OBJC_IVAR____UIZoomTransitionController_activeTransitionContext;
  v3 = *&v1[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return result;
  }

  v5 = v1;
  v6 = result;
  [*&v1[OBJC_IVAR____UIZoomTransitionController_dimmingView] removeFromSuperview];
  [*&v1[OBJC_IVAR____UIZoomTransitionController_shimAnimationView] removeFromSuperview];
  v33 = OBJC_IVAR____UIZoomTransitionController_fallbackSourceView;
  v7 = *&v1[OBJC_IVAR____UIZoomTransitionController_fallbackSourceView];
  if (v7)
  {
    [v7 removeFromSuperview];
  }

  v8 = *&v1[OBJC_IVAR____UIZoomTransitionController_showcasePortal];
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  sub_188E3AF74(0, 1u);
  v32 = OBJC_IVAR____UIZoomTransitionController_style;
  if (v1[OBJC_IVAR____UIZoomTransitionController_style] == 1)
  {
    v9 = *&v1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
    if (v9)
    {
      v10 = v9;
      v11 = [v10 layer];
      [v11 setZPosition_];

      v12 = [v10 superview];
      [v12 bringSubviewToFront_];
    }
  }

  v13 = *&v5[OBJC_IVAR____UIZoomTransitionController_backgroundView];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 layer];
    v16 = *(MEMORY[0x1E69792E8] + 80);
    v34[4] = *(MEMORY[0x1E69792E8] + 64);
    v34[5] = v16;
    v17 = *(MEMORY[0x1E69792E8] + 112);
    v34[6] = *(MEMORY[0x1E69792E8] + 96);
    v34[7] = v17;
    v18 = *(MEMORY[0x1E69792E8] + 16);
    v34[0] = *MEMORY[0x1E69792E8];
    v34[1] = v18;
    v19 = *(MEMORY[0x1E69792E8] + 48);
    v34[2] = *(MEMORY[0x1E69792E8] + 32);
    v34[3] = v19;
    [v15 setSublayerTransform_];

    [v14 setUserInteractionEnabled_];
    v20 = [v14 layer];
    [v20 setZPosition_];
  }

  v21 = [v6 transitionWasCancelled];
  v22 = OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator;
  v23 = *&v5[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator];
  if (!v23)
  {
    __break(1u);
    goto LABEL_31;
  }

  v24 = v21;
  v25 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v26 = *&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (v26)
  {
    if (v26 != 1)
    {
      goto LABEL_20;
    }

    v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] = 0;
    *&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = 0;
    v27 = v23;
    swift_unknownObjectRelease();
    [*&v27[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator] stopAnimation_];
    *&v23[v25] = 2;

    v23 = *&v5[v22];
    if (!v23)
    {
      __break(1u);
LABEL_20:
      if (v26 == 2)
      {
        goto LABEL_21;
      }

LABEL_31:
      result = sub_18A4A8398();
      __break(1u);
      return result;
    }
  }

LABEL_21:
  if (*&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 2)
  {
    *&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v24;
    v28 = 1.0;
    if (v24)
    {
      v28 = 0.0;
    }

    *&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v28;
    v29 = *&v23[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_propertyAnimator];
    v30 = v23;
    [v29 finishAnimationAtPosition_];
    sub_1891FEB20();
  }

  [v6 completeTransition_];
  *&v5[v2] = 0;
  swift_unknownObjectRelease();
  v31 = *&v5[v33];
  *&v5[v33] = 0;

  if (([v5 isZoomingIn] & 1) == 0)
  {
    [v5 setSourceViewHidingAssertion_];
  }

  v5[v32] = 0;
  *&v5[OBJC_IVAR____UIZoomTransitionController_behaviors] = MEMORY[0x1E69E7CC0];

  result = *&v5[OBJC_IVAR____UIZoomTransitionController_foregroundView];
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  return result;
}

void sub_188E3BADC(uint64_t a1)
{
  v2 = objc_opt_self();
  v9 = sub_188E3FE10;
  v10 = a1;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = sub_188A4A8F0;
  v8 = &block_descriptor_215;
  v3 = _Block_copy(&v5);

  v9 = signpost_c2_entryLock_start;
  v10 = 0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = sub_188C3DD6C;
  v8 = &block_descriptor_218;
  v4 = _Block_copy(&v5);
  [v2 _animateByRetargetingAnimations_completion_];
  _Block_release(v4);
  _Block_release(v3);
}

void sub_188E3BC20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EA930F18 != -1)
    {
      swift_once();
    }

    v2 = &v1[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
    v4 = xmmword_1EA994E80;
    v3 = unk_1EA994E90;
    v5 = *algn_1EA994E70;
    *v2 = xmmword_1EA994E60;
    *(v2 + 1) = v5;
    *(v2 + 2) = v4;
    *(v2 + 3) = v3;
    v2[64] = 0;
    sub_188D6180C();
  }
}

uint64_t sub_188E3BCD4(void *a1, _OWORD *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  v6 = a2[3];
  *(v4 + 56) = a2[2];
  *(v4 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188E3FDF0;
  *(v7 + 24) = v4;
  v11[4] = sub_188E3FE50;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A968;
  v11[3] = &block_descriptor_212;
  v8 = _Block_copy(v11);
  v9 = a1;

  UIMM_HFR(v8);
  _Block_release(v8);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_188E3BE38()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 layer];

  [v3 setShadowOpacity_];
  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  if (qword_1EA930F18 != -1)
  {
    swift_once();
  }

  v7[0] = xmmword_1EA994E60;
  v7[1] = *algn_1EA994E70;
  v7[2] = xmmword_1EA994E80;
  v7[3] = unk_1EA994E90;
  [v6 setCornerRadii_];
}

uint64_t sub_188E3C0C8()
{
  v1 = *(v0 + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext);
  if (!v1)
  {
    return 2;
  }

  swift_unknownObjectRetain();
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    swift_unknownObjectRelease();
    return 2;
  }

  v2 = [v1 isInteractive];
  swift_unknownObjectRelease();
  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_188E3C1EC()
{
  if (_UISolariumEnabled())
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext);
  if (v2)
  {
    swift_unknownObjectRetain();
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v3 = [v2 isInteractive];
      swift_unknownObjectRelease();
      return v3 ^ 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_188E3C268(void *a1)
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    swift_unknownObjectRelease();
LABEL_7:
    v3 = *(v1 + OBJC_IVAR____UIZoomTransitionController_toolbarTransitionController);
    v5 = v3;
    return v3;
  }

  v4 = [a1 isInteractive];
  swift_unknownObjectRelease();
  if (v4)
  {
    goto LABEL_7;
  }

  return 0;
}

void sub_188E3C4C8(void *a1)
{
  if (!a1)
  {
    return;
  }

  swift_unknownObjectRetain();
  if ([v1 isZoomingIn])
  {
    v3 = [a1 toKeyboard];
    if (v3)
    {
      v4 = v3;
      v5 = [a1 fromKeyboard];
      if (v5)
      {
        v8 = v5;

        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = [a1 fromKeyboard];
    if (v6)
    {
      v4 = v6;
LABEL_11:
      v7 = *&v1[OBJC_IVAR____UIZoomTransitionController_transitionOverlayView];
      [v7 addSubview_];
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_188E3C77C(void *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = OBJC_IVAR____UIZoomTransitionController_activeTransitionContext;
  v16 = *&v8[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (v16)
  {
    v17 = a1;
    if ([swift_unknownObjectRetain() isInteractive])
    {
      swift_unknownObjectRelease();
      a1 = v17;
    }

    else
    {
      v27 = [v8 isZoomingIn];
      v28 = [v16 transitionWasCancelled];
      swift_unknownObjectRelease();
      a1 = v17;
      if (v27)
      {
        if (v28)
        {
          goto LABEL_23;
        }
      }

      else if (!v28)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = &selRef_verticalMenuCornerRadius;
  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v8 owningViewController];
    if (!v21)
    {
      a3 = 0;
LABEL_35:

      return a3 & 1;
    }

    v22 = v21;
    if (a2 == 1)
    {
      v23 = [v21 _showcaseView];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 window];

        if (v25)
        {

          a3 = 0;
          v26 = v20;
          v20 = v25;
LABEL_34:

          goto LABEL_35;
        }
      }
    }

    v29 = OBJC_IVAR____UIZoomTransitionController_isForNavigation;
    if (v8[OBJC_IVAR____UIZoomTransitionController_isForNavigation] == 1)
    {
      v30 = [v22 navigationController];
      if (v30)
      {
        v31 = v30;
        v26 = v22;
        v32 = [v31 topViewController];
        if (!v32)
        {

          a3 = 0;
          goto LABEL_34;
        }

        v33 = v32;
        sub_188A34624(0, &qword_1ED48D5A0);
        v34 = sub_18A4A7C88();

        if ((v34 & 1) == 0)
        {

          a3 = 0;
          goto LABEL_34;
        }

        if ([v31 _transitionCoordinator])
        {
          swift_unknownObjectRelease();
          v35 = [v31 _isCurrentTransitionPreemptable];

          v18 = &selRef_verticalMenuCornerRadius;
          if ((v35 & 1) == 0 && !*&v8[v15])
          {
            a3 = 0;
            goto LABEL_34;
          }
        }

        else
        {

          v18 = &selRef_verticalMenuCornerRadius;
        }
      }
    }

    if ((a3 & 1) != 0 && (v8[v29] & 1) == 0 && (v36 = [v22 activePresentationController]) != 0 && (v37 = v36, v38 = objc_msgSend(v36, sel__shouldDismiss), v37, !v38))
    {
      a3 = 0;
    }

    else
    {
      v39 = [v8 clientTransition];
      v40 = [v39 _options];

      v41 = [v40 interactiveDismissShouldBegin];
      if (v41)
      {
        v42 = [objc_allocWithZone(UIZoomTransitionInteractionContext) init];
        v43 = [v22 v18[41]];
        [v20 convertPoint:v43 toView:{a4, a5}];
        v45 = v44;
        v47 = v46;

        [v42 setLocation_];
        [v42 setVelocity_];
        [v42 setWillBegin_];
        a3 = v41[2](v41, v42);

        _Block_release(v41);
      }
    }

    v26 = v20;
    v20 = v22;
    goto LABEL_34;
  }

LABEL_23:
  a3 = 0;
  return a3 & 1;
}

uint64_t sub_188E3CC24(void *a1, _OWORD *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  v6 = a2[3];
  *(v4 + 56) = a2[2];
  *(v4 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188E3FE4C;
  *(v7 + 24) = v4;
  v11[4] = sub_188E3FE50;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A968;
  v11[3] = &block_descriptor_122;
  v8 = _Block_copy(v11);
  v9 = a1;

  UIMM_HFR(v8);
  _Block_release(v8);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_188E3CD88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10 = *a2;
  v11 = v3;
  v4 = *(a2 + 48);
  v12 = *(a2 + 32);
  v13 = v4;
  v5 = _UICornerRadiiMaxValue(&v10);
  CACornerRadiiMake(v10.f64, v5, v5, v5, v5);
  v6 = a1 + OBJC_IVAR____UIMagicMorphView_overrideCornerRadii;
  v7 = v13;
  *(v6 + 32) = v12;
  *(v6 + 48) = v7;
  v8 = v11;
  *v6 = v10;
  *(v6 + 16) = v8;
  *(v6 + 64) = 0;
  sub_188D6180C();
  return result;
}

uint64_t sub_188E3CE84(void *a1, char a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188E3FC50;
  *(v13 + 24) = v12;
  v19[4] = sub_188E3FE50;
  v19[5] = v13;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_188A4A968;
  v19[3] = &block_descriptor_97;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a5;

  UIMM_HFR(v14);
  _Block_release(v14);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_188E3D014(void *a1, char a2, void *a3, void *a4, char *a5, double a6)
{
  [a1 originalTrackingViewPosition];
  v13 = v12;
  v15 = v14;
  [a1 translation];
  v69.x = v13;
  v69.y = v15;
  v16 = CGPointApplyAffineTransform(v69, &t1);
  x = v16.x;
  y = v16.y;
  if (a2)
  {
    [a3 setAlpha_];
LABEL_13:
    [a5 setCenter_];
    [a3 transform];
    tx = t1.tx;
    ty = t1.ty;
    v61 = *&t1.c;
    v63 = *&t1.a;
    [a1 transform];
    v56 = *&t1.a;
    v57 = *&t1.c;
    v58 = *&t1.tx;
    *&t1.a = v63;
    *&t1.c = v61;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v56;
    *&t2.c = v57;
    *&t2.tx = v58;
    CGAffineTransformConcat(&v64, &t1, &t2);
    t1 = v64;
    [a5 setTransform_];
    return;
  }

  if (![a1 wantsHeightClamping])
  {
    goto LABEL_13;
  }

  [a1 scale];
  v60 = v19;
  [a3 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [a3 _cropInsets];
  v70.origin.x = UIRectInset(v21, v23, v25, v27, v28, v31, v30, v29);
  v62 = v70.origin.x;
  v32 = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  v59 = CGRectGetHeight(v70);
  v35 = [a4 containerView];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v71.origin.x = v37;
  v71.origin.y = v39;
  v71.size.width = v41;
  v71.size.height = v43;
  v44 = CGRectGetHeight(v71);
  v72.origin.x = v62;
  v72.origin.y = v32;
  v72.size.width = width;
  v72.size.height = height;
  a = CGRectGetHeight(v72);
  v73.origin.x = v62;
  v73.origin.y = v32;
  v73.size.width = width;
  v73.size.height = height;
  v46 = CGRectGetHeight(v73);
  v74.origin.x = v62;
  v74.origin.y = v32;
  v74.size.width = width;
  v74.size.height = height;
  if (CGRectGetWidth(v74) >= v46)
  {
LABEL_12:
    v77.origin.x = v62;
    v77.origin.y = v32;
    v77.size.width = width;
    v77.size.height = height;
    v51 = CGRectGetWidth(v77);
    v52 = &a5[OBJC_IVAR____UIMagicMorphView_overrideBounds];
    v53 = *&a5[OBJC_IVAR____UIMagicMorphView_overrideBounds + 16];
    v67[0] = *&a5[OBJC_IVAR____UIMagicMorphView_overrideBounds];
    v67[1] = v53;
    v68 = a5[OBJC_IVAR____UIMagicMorphView_overrideBounds + 32];
    *v52 = 0;
    *(v52 + 1) = 0;
    *(v52 + 2) = v51;
    *(v52 + 3) = a;
    v52[32] = 0;
    sub_188D794BC(v67);
    v78.origin.x = v62;
    v78.origin.y = v32;
    v78.size.width = width;
    v78.size.height = height;
    y = v16.y + (CGRectGetHeight(v78) - a) * -0.5;
    x = v16.x;
    goto LABEL_13;
  }

  v47 = (v16.y + v60 * v59 * 0.5 - v44) / v60;
  if (v47 <= 0.0)
  {
    v47 = 0.0;
  }

  t1.a = a - v47;
  v75.origin.x = v62;
  v75.origin.y = v32;
  v75.size.width = width;
  v75.size.height = height;
  v48 = CGRectGetHeight(v75) * 0.5;
  v76.origin.x = v62;
  v76.origin.y = v32;
  v76.size.width = width;
  v76.size.height = height;
  v49 = CGRectGetHeight(v76);
  if (v44 * -0.5 <= 0.0 && v48 <= v49)
  {
    sub_1891F04F0(v48, v49, v44 * -0.5, 0.0);
    a = t1.a;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_188E3D44C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188E3AF74(0, 0);
  }
}

void sub_188E3D4A8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_188E3B6D8(a2);
  }
}

uint64_t sub_188E3D564(void *a1, _OWORD *a2, uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a2[1];
  *(v10 + 24) = *a2;
  *(v10 + 40) = v11;
  *(v10 + 56) = a2[2];
  *(v10 + 72) = a4;
  *(v10 + 80) = a5;
  *(v10 + 88) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_188E3FBAC;
  *(v12 + 24) = v10;
  v16[4] = sub_188E3FE50;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_188A4A968;
  v16[3] = &block_descriptor_58;
  v13 = _Block_copy(v16);
  v14 = a1;

  UIMM_HFR(v13);
  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_188E3D6E8(char *a1, __int128 *a2, double a3, double a4)
{
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  v15 = a2[2];
  [a1 setTransform_];
  [a1 setCenter_];
  v8 = &a1[OBJC_IVAR____UIMagicMorphView_overrideBounds];
  v9 = *&a1[OBJC_IVAR____UIMagicMorphView_overrideBounds + 16];
  v13 = *&a1[OBJC_IVAR____UIMagicMorphView_overrideBounds];
  v14 = v9;
  LOBYTE(v15) = a1[OBJC_IVAR____UIMagicMorphView_overrideBounds + 32];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  sub_188D794BC(&v13);
  v16 = 1;
  v10 = &a1[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  v10[64] = 1;
  sub_188D6180C();
  [a1 layoutIfNeeded];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_188E3AF74(1u, 0);
  }
}

void sub_188E3D80C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion);
    *(Strong + OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion) = 0;
    v7 = Strong;

    sub_188E3B6D8(a4);
    v8 = *&v7[OBJC_IVAR____UIZoomTransitionController_morphAnimation];
    sub_188F32950(1);
  }
}

uint64_t sub_188E3D934(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188E3FB44;
  *(v5 + 24) = v4;
  v8[4] = sub_188A4B574;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_48;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  UIMM_HFR(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_188E3DA88(char a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext);
  if (v3)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a1 & 1;
    *(v8 + 24) = v3;
    v17 = sub_188E3FB10;
    v18 = v8;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188A4A8F0;
    v16 = &block_descriptor_18;
    v9 = _Block_copy(&v13);
    swift_unknownObjectRetain_n();

    v17 = signpost_c2_entryLock_start;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188C3DD6C;
    v16 = &block_descriptor_21;
    v10 = _Block_copy(&v13);
    [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v10);
    _Block_release(v9);
    v11 = *(a3 + OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator);
    if (v11)
    {
      v11[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed] = (a1 & 1) == 0;
      v12 = v11;
      sub_188E3DC6C(a2, v12, 0.0);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_188E3DC6C(uint64_t result, _BYTE *a2, double a3)
{
  v3 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state;
  v4 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state];
  if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return result;
  }

  if (v4 != 1)
  {
LABEL_32:
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v6 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning;
  if (a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning])
  {
    return result;
  }

  v7 = a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isReversed];
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_completionPosition] = v7;
  v8 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete;
  v9 = *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete];
  v10 = 1.0;
  if (v7)
  {
    v10 = 0.0;
  }

  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v10;
  v13 = result;
  sub_1891FED38();
  a2[v6] = 1;
  v14 = OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued;
  v15 = v13;
  *&a2[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehaviorWhenContinued] = v13;
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = a3;
  *(v17 + 32) = a2;
  v18 = a2[v6];
  v19 = *&a2[v14];
  v44 = a2;
  v20 = a2;
  v21 = v20;
  v45 = v18;
  if (v19)
  {
    v22 = v20;
    v23 = v15;
    v24 = v19;
  }

  else
  {
    v24 = *&v20[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_springBehavior];
    if (v24)
    {
      v25 = v20;
      swift_unknownObjectRetain_n();
      v26 = v25;
      v27 = v15;
      v18 = v45;
    }

    else
    {
      type metadata accessor for _UIFluidNavigationTransitionsDomain();
      v53.receiver = swift_getObjCClassFromMetadata();
      v53.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
      v18 = v21;
      v28 = v15;
      v29 = objc_msgSendSuper2(&v53, sel_rootSettings);
      if (!v29)
      {
LABEL_31:

        __break(1u);
        goto LABEL_32;
      }

      v30 = v29;
      type metadata accessor for _UIFluidNavigationTransitionsSpec();
      v31 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

      v32 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
      if (!v45)
      {
        v32 = &OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
      }

      v33 = *&v31[*v32];

      v18 = v45;
      v24 = v33;
    }
  }

  swift_unknownObjectRetain_n();
  v34 = UIViewSpringAnimationBehaviorDescribingWithResponseFactor(v24, 1.0);
  swift_unknownObjectRelease();
  if (v18)
  {
LABEL_27:
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    v39[2] = sub_188E3FB24;
    v39[3] = v17;
    v39[4] = v21;
    v50 = sub_188E3FB30;
    v51 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_188A4A8F0;
    v49 = &block_descriptor_33;
    v40 = _Block_copy(&aBlock);
    v41 = v21;
    swift_unknownObjectRetain();

    v42 = swift_allocObject();
    *(v42 + 16) = sub_188E3FB1C;
    *(v42 + 24) = v16;
    v50 = sub_188E3FB3C;
    v51 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_188C3DD6C;
    v49 = &block_descriptor_39;
    v43 = _Block_copy(&aBlock);

    [v38 _animateUsingSpringBehavior_tracking_animations_completion_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v43);
    _Block_release(v40);

    return swift_unknownObjectRelease();
  }

  type metadata accessor for _UIFluidNavigationTransitionsDomain();
  v52.receiver = swift_getObjCClassFromMetadata();
  v52.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  v35 = objc_msgSendSuper2(&v52, sel_rootSettings);
  if (!v35)
  {

    __break(1u);
    goto LABEL_31;
  }

  v36 = v35;
  type metadata accessor for _UIFluidNavigationTransitionsSpec();
  v37 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);

  LOBYTE(v36) = v37[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring];
  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1891FFCB8(v21, *&v44[v8], v9, a3);
  if (*(v21 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) & 1) == 0 && (v44[v6])
  {
    *(v21 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator_isC2Finished) = 1;
    if (*&v44[v3] == 1)
    {
      if (*(v21 + OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__pausesOnCompletion) == 1)
      {
        sub_1891FCF18();
      }

      else
      {
        sub_1891FEB20();
      }
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_188E3E23C(void *a1)
{
  v2 = OBJC_IVAR____UIZoomTransitionController_dismissInteraction;
  v6 = *(v1 + OBJC_IVAR____UIZoomTransitionController_dismissInteraction);
  *(v1 + OBJC_IVAR____UIZoomTransitionController_dismissInteraction) = a1;
  v3 = a1;
  v4 = [v6 view];
  if (v4)
  {
    v5 = v4;
    [v6 setIsEnabled_];
    [v6 setIsEnabled_];
    [v5 removeInteraction_];
    [v5 addInteraction_];
  }

  [*(v1 + v2) setDelegate_];
}

void sub_188E3E318(void *a1, id a2)
{
  [a2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [a2 _cropInsets];
  rect = UIRectInset(v5, v7, v9, v11, v12, v15, v14, v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v36.origin.x = rect;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  Width = CGRectGetWidth(v36);
  v37.origin.x = v23;
  v37.origin.y = v25;
  v37.size.width = v27;
  v37.size.height = v29;
  v31 = vabdd_f64(Width, CGRectGetWidth(v37));
  v38.origin.x = v23;
  v38.origin.y = v25;
  v38.size.width = v27;
  v38.size.height = v29;
  v34 = v31 / CGRectGetWidth(v38);
  v39.origin.x = rect;
  v39.origin.y = v17;
  v39.size.width = v19;
  v39.size.height = v21;
  Height = CGRectGetHeight(v39);
  v40.origin.x = v23;
  v40.origin.y = v25;
  v40.size.width = v27;
  v40.size.height = v29;
  v33 = vabdd_f64(Height, CGRectGetHeight(v40));
  v41.origin.x = v23;
  v41.origin.y = v25;
  v41.size.width = v27;
  v41.size.height = v29;
  if (v33 / CGRectGetHeight(v41) >= v34)
  {
    v44.size.height = v21;
    v44.origin.x = rect;
    v44.origin.y = v17;
    v44.size.width = v19;
    CGRectGetWidth(v44);
    [a1 bounds];
    CGRectGetWidth(v45);
  }

  else
  {
    v42.size.height = v21;
    v42.origin.x = rect;
    v42.origin.y = v17;
    v42.size.width = v19;
    CGRectGetHeight(v42);
    [a1 bounds];
    CGRectGetHeight(v43);
  }
}

void sub_188E3E500()
{
  v1 = [v0 isZoomingIn];
  type metadata accessor for _UIZoomTransitionSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v1)
  {
    v9.receiver = ObjCClassFromMetadata;
    v9.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v3 = objc_msgSendSuper2(&v9, sel_rootSettings);
    if (v3)
    {
      v4 = v3;
      v5 = &OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomIn;
LABEL_6:
      type metadata accessor for _UIZoomTransitionSpec();
      v7 = *(swift_dynamicCastClassUnconditional() + *v5);

      v8 = *&v7[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general];
      [v8 response];

      return;
    }

    __break(1u);
  }

  else
  {
    v10.receiver = ObjCClassFromMetadata;
    v10.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v6 = objc_msgSendSuper2(&v10, sel_rootSettings);
    if (v6)
    {
      v4 = v6;
      v5 = &OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOut;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_188E3E628()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____UIZoomTransitionController_morphAnimation];
  v3 = type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = *&v2[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion];
  v6 = v2;
  [v5 increment];
  v7 = sub_188D845C8();
  [v7 setPaused_];

  v60.receiver = v4;
  v60.super_class = v3;
  v8 = objc_msgSendSuper2(&v60, sel_init);

  v9 = *&v1[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion];
  *&v1[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion] = v8;

  v10 = [v1 owningViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 clientTransition];
    v13 = [v12 _options];

    LOBYTE(v12) = [v13 _popPreemptsPushInSwiftUIEnabled];
    if ((v12 & 1) == 0)
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v17 = [v16 bundlePath];

      v18 = sub_18A4A7288();
      v20 = v19;

      *&v61 = v18;
      *(&v61 + 1) = v20;
      *&aBlock = 0x49557466697753;
      *(&aBlock + 1) = 0xE700000000000000;
      sub_188C72980();
      v14 = sub_18A4A7DC8();

      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v21 = OBJC_IVAR____UIZoomTransitionController_activeTransitionContext;
  if (*&v1[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext] && v14 & 1 | (([v1 isZoomingIn] & 1) == 0))
  {
    v22 = *&v1[v21];
    if (v22)
    {
      [v22 pauseInteractiveTransition];
    }

    v23 = *&v1[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator];
    if (v23)
    {
      v24 = v23;
      sub_1891FCF18();

      v25 = *&v6[OBJC_IVAR____UIMagicMorphAnimation_morphView];
      swift_beginAccess();
      v26 = v25;
      sub_188F27F18(0, 0xD00000000000001ELL, 0x800000018A68B050);
      swift_endAccess();
      v27 = *&v1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
      if (!v27 || (v28 = &v26[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii], (v26[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii + 64] & 1) != 0))
      {

        return;
      }

      v53 = *(v28 + 1);
      v54 = *v28;
      v51 = *(v28 + 3);
      v52 = *(v28 + 2);
      v33 = qword_1EA930F18;
      v34 = v27;
      if (v33 != -1)
      {
        swift_once();
      }

      aBlock = xmmword_1EA994E60;
      v57 = *algn_1EA994E70;
      v58 = xmmword_1EA994E80;
      v59 = unk_1EA994E90;
      v61 = v54;
      v62 = v53;
      v63 = v52;
      v64 = v51;
      if (!CACornerRadiiEqualToRadii())
      {

        return;
      }

      [v34 _intersectedSceneCornerRadii];
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      v37 = v62;
      *(v36 + 24) = v61;
      *(v36 + 40) = v37;
      v38 = v64;
      *(v36 + 56) = v63;
      *(v36 + 16) = v26;
      *(v36 + 72) = v38;
      *&v58 = sub_188E3FC88;
      *(&v58 + 1) = v36;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v57 = sub_188A4A8F0;
      *(&v57 + 1) = &block_descriptor_103;
      v39 = _Block_copy(&aBlock);
      v40 = v26;

      [v35 _performWithoutRetargetingAnimations_];
      _Block_release(v39);
      type metadata accessor for _UIZoomTransitionSettingsDomain();
      v55.receiver = swift_getObjCClassFromMetadata();
      v55.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
      v41 = objc_msgSendSuper2(&v55, sel_rootSettings);
      if (v41)
      {
        v42 = v41;
        type metadata accessor for _UIZoomTransitionSpec();
        v43 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOut);

        v44 = *&v43[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment];
        v45 = swift_allocObject();
        v46 = v62;
        *(v45 + 24) = v61;
        *(v45 + 40) = v46;
        v47 = v64;
        *(v45 + 56) = v63;
        *(v45 + 16) = v40;
        *(v45 + 72) = v47;
        *&v58 = sub_188E3FCE8;
        *(&v58 + 1) = v45;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v57 = sub_188A4A8F0;
        *(&v57 + 1) = &block_descriptor_109;
        v48 = _Block_copy(&aBlock);
        v49 = v40;

        *&v58 = signpost_c2_entryLock_start;
        *(&v58 + 1) = 0;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v57 = sub_188C3DD6C;
        *(&v57 + 1) = &block_descriptor_112;
        v50 = _Block_copy(&aBlock);
        [v35 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v50);
        _Block_release(v48);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v29 = [v1 owningViewController];
    if (v29)
    {
      v30 = v29;
      v31 = OBJC_IVAR____UIZoomTransitionController_isPreempting;
      v1[OBJC_IVAR____UIZoomTransitionController_isPreempting] = 1;
      if (v1[OBJC_IVAR____UIZoomTransitionController_isForNavigation] == 1)
      {
        v32 = [v29 navigationController];
      }

      else
      {
        [v29 dismissViewControllerAnimated:1 completion:0];
        v32 = [v30 activePresentationController];
        [v32 _sendDismissalsAsNeeded];
      }

      v1[v31] = 0;
    }
  }
}

void sub_188E3ED54(void *a1)
{
  v2 = *&v1[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____UIZoomTransitionController_foregroundView];
    if (v3)
    {
      swift_unknownObjectRetain();
      v5 = v3;
      v6 = [v1 isZoomingIn];
      [a1 progressToMinScale];
      if (v6)
      {
        v8 = 1.0 - v7;
      }

      else
      {
        v8 = v7;
      }

      [v2 updateInteractiveTransition_];
      v9 = *&v1[OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator];
      if (v9)
      {
        *&v9[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__fractionComplete] = v8;
        if (*&v9[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__state] == 1 && (v9[OBJC_IVAR____TtCE5UIKitCSo6UIView22HybridPropertyAnimator__isRunning] & 1) == 0)
        {
          v10 = v9;
          sub_189200DAC(0, 0, v10, v10, 1.0);
        }

        v11 = *(*&v1[OBJC_IVAR____UIZoomTransitionController_morphAnimation] + OBJC_IVAR____UIMagicMorphAnimation_morphView);
        v12 = objc_allocWithZone(UIViewSpringAnimationBehaviorSettings);
        v13 = v11;
        v14 = [v12 init];
        [a1 dampingRatio];
        [v14 setDampingRatio_];
        [a1 response];
        [v14 setResponse_];
        [a1 dampingRatio];
        [v14 setTrackingDampingRatio_];
        [a1 response];
        [v14 setTrackingResponse_];
        [v14 setSmoothingAndProjectionEnabled_];
        v24 = objc_opt_self();
        v15 = v14;
        v16 = [a1 isTracking];
        v17 = v1[OBJC_IVAR____UIZoomTransitionController_style];
        v18 = swift_allocObject();
        *(v18 + 16) = a1;
        *(v18 + 24) = v17;
        *(v18 + 32) = v5;
        *(v18 + 40) = v2;
        *(v18 + 48) = v13;
        *(v18 + 56) = v8;
        v29 = sub_188E3FBE8;
        v30 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_188A4A8F0;
        v28 = &block_descriptor_84;
        v19 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v20 = v5;
        v21 = v13;
        v22 = a1;

        v29 = signpost_c2_entryLock_start;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_188C3DD6C;
        v28 = &block_descriptor_87;
        v23 = _Block_copy(&aBlock);
        [v24 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v23);
        _Block_release(v19);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_188E3F0DC()
{
  v1 = *&v0[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (v1)
  {
    type metadata accessor for _UIZoomTransitionSettingsDomain();
    v55.receiver = swift_getObjCClassFromMetadata();
    v55.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    swift_unknownObjectRetain();
    v2 = objc_msgSendSuper2(&v55, sel_rootSettings);
    if (v2)
    {
      v3 = v2;
      type metadata accessor for _UIZoomTransitionSpec();
      v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_zoomOutInteractive);

      v5 = OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general;
      v6 = *&v4[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general];
      if ([v0 isZoomingIn])
      {
        v7 = @"UITransitionContextFromViewController";
      }

      else
      {
        v7 = @"UITransitionContextToViewController";
      }

      v8 = v7;
      if ([v0 isZoomingIn])
      {
        v9 = @"UITransitionContextToViewController";
      }

      else
      {
        v9 = @"UITransitionContextFromViewController";
      }

      v10 = v9;
      v11 = [v1 viewControllerForKey_];
      if (v11)
      {
        v12 = v11;
        v48 = v8;
        v47 = v10;
        v13 = [v1 viewControllerForKey_];
        if (v13)
        {
          v14 = v13;
          v44 = v12;
          v15 = [objc_opt_self() _contextWithSource_zoomed_];
          v16 = [v1 containerView];
          v43 = v15;
          v42 = sub_188E393C8(v15, v16, 0);

          v17 = *&v0[OBJC_IVAR____UIZoomTransitionController_morphAnimation];
          v45 = v4;
          v18 = *&v4[v5];
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v1;
          v22 = *(v17 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);
          v53 = sub_188E3FE54;
          v54 = v21;
          aBlock = MEMORY[0x1E69E9820];
          v50 = 1107296256;
          v46 = v14;
          v51 = sub_188A4A8F0;
          v52 = &block_descriptor_66;
          v23 = _Block_copy(&aBlock);
          swift_retain_n();
          swift_unknownObjectRetain();
          v24 = v18;

          v25 = v22;

          [v25 addCompletion_];
          _Block_release(v23);

          v26 = objc_opt_self();
          v27 = swift_allocObject();
          *(v27 + 16) = sub_188E3FBE0;
          *(v27 + 24) = v19;
          v53 = sub_188D84768;
          v54 = v27;
          aBlock = MEMORY[0x1E69E9820];
          v50 = 1107296256;
          v51 = sub_188A4A8F0;
          v52 = &block_descriptor_72;
          v28 = _Block_copy(&aBlock);
          v29 = v24;

          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v53 = sub_188D764CC;
          v54 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v50 = 1107296256;
          v51 = sub_188C3DD6C;
          v52 = &block_descriptor_78;
          v31 = _Block_copy(&aBlock);

          [v26 _animateUsingSpringBehavior_tracking_animations_completion_];
          _Block_release(v31);
          _Block_release(v28);

          v32 = [v46 _showcaseView];
          if (v32)
          {
            v33 = v32;
            v34 = [v32 window];
            if (v34)
            {

LABEL_19:
              sub_188E3E318(v42, v33);
              v37 = v36;

              v38 = v45;
              sub_188E3A8A0(v42, v45, 0, 0, 0, v37);

              v39 = *&v0[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion];
              *&v0[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion] = 0;

              v40 = [v0 isZoomingIn];
              v41 = v6;
              sub_188E3DA88(v40 ^ 1, v41, v0);
              swift_unknownObjectRelease();

              return;
            }
          }

          v33 = [v46 view];
          if (v33)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v35 = *&v0[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion];
  *&v0[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion] = 0;
}

void sub_188E3F730(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____UIZoomTransitionController_activeTransitionContext];
  if (v3)
  {
    v6 = *(*&v2[OBJC_IVAR____UIZoomTransitionController_morphAnimation] + OBJC_IVAR____UIMagicMorphAnimation_morphView);
    type metadata accessor for _UIZoomTransitionSettingsDomain();
    v32.receiver = swift_getObjCClassFromMetadata();
    v32.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = objc_msgSendSuper2(&v32, sel_rootSettings);
    if (v8)
    {
      v9 = v8;
      type metadata accessor for _UIZoomTransitionSpec();
      v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_cancelInteractive);

      v11 = *&v10[OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position];
      v12 = *&v2[OBJC_IVAR____UIZoomTransitionController_foregroundView];
      if (v12)
      {
        [v12 transform];
        v26 = aBlock;
        v27 = v29;
        v13 = v30;
        v14 = v31;
      }

      else
      {
        v27 = xmmword_18A64B720;
        v26 = xmmword_18A64B730;
        v13 = 0;
        v14 = 0;
      }

      v16 = objc_opt_self();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v7;
      *(v18 + 40) = v27;
      *(v18 + 24) = v26;
      *(v18 + 56) = v13;
      *(v18 + 64) = v14;
      *(v18 + 72) = a1;
      *(v18 + 80) = a2;
      *(v18 + 88) = v17;
      v30 = sub_188E3FAF0;
      v31 = v18;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v29 = sub_188A4A8F0;
      *(&v29 + 1) = &block_descriptor_0;
      v19 = _Block_copy(&aBlock);
      v20 = v7;
      v21 = v11;

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v3;
      v30 = sub_188E3FB08;
      v31 = v23;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v29 = sub_188C3DD6C;
      *(&v29 + 1) = &block_descriptor_12;
      v24 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v24);
      _Block_release(v19);

      LOBYTE(v16) = [v2 isZoomingIn];
      v25 = v21;
      sub_188E3DA88(v16, v25, v2);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = *&v2[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion];
    *&v2[OBJC_IVAR____UIZoomTransitionController_morphInteractionAssertion] = 0;
  }
}

id sub_188E3FB44()
{
  if (*(v0 + 16))
  {
    v1 = &selRef_finishInteractiveTransition;
  }

  else
  {
    v1 = &selRef_cancelInteractiveTransition;
  }

  return [*(v0 + 24) *v1];
}

uint64_t objectdestroy_4Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroy_80Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 sub_188E3FC88()
{
  v1 = *(v0 + 16) + OBJC_IVAR____UIMagicMorphView_overrideCornerRadii;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;
  *(v1 + 48) = v2;
  *(v1 + 64) = 0;
  sub_188D6180C();
  return result;
}

int8x16_t _UICornerRadiiMax@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vbslq_s8(vcgtq_f64(*a2, *a1), *a2, *a1);
  v4 = vbslq_s8(vcgtq_f64(a2[1], a1[1]), a2[1], a1[1]);
  v5 = vbslq_s8(vcgtq_f64(a2[2], a1[2]), a2[2], a1[2]);
  v6 = vbslq_s8(vcgtq_f64(a2[3], a1[3]), a2[3], a1[3]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

unint64_t sub_188E3FED0()
{
  result = qword_1EA930850;
  if (!qword_1EA930850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930850);
  }

  return result;
}

double sub_188E3FF28@<D0>(uint64_t a1@<X8>)
{
  v16 = 0uLL;
  *&v15 = 0x4046000000000000;
  *(&v15 + 1) = sub_188E401C8;
  v17 = xmmword_18A64B780;
  *&v18 = 0x4020000000000000;
  *(&v18 + 1) = 3;
  __asm { FMOV            V0.2D, #4.0 }

  v14 = _Q0;
  v19 = _Q0;
  *v20 = xmmword_18A64B790;
  *&v20[16] = 0x401C000000000000;
  v20[24] = 1;
  v7 = objc_opt_self();
  sub_188B7FF08(&v15, v21);
  v8 = [v7 systemFontOfSize_];
  v9 = [objc_opt_self() tintColor];
  *&v21[55] = v18;
  *&v21[71] = v19;
  *&v21[87] = *v20;
  *&v21[96] = *&v20[9];
  *&v21[7] = v15;
  *&v21[23] = v16;
  *&v21[39] = v17;
  v22[0] = 0x4046000000000000;
  v22[1] = sub_188E401C8;
  v22[2] = 0;
  v22[3] = 0;
  v23 = xmmword_18A64B780;
  v24 = 0x4020000000000000;
  v25 = 3;
  v26 = v14;
  v27 = xmmword_18A64B790;
  v28 = 0x401C000000000000;
  v29 = 1;
  sub_188B7FF64(v22);
  v10 = *&v21[32];
  *(a1 + 49) = *&v21[48];
  v11 = *&v21[80];
  *(a1 + 65) = *&v21[64];
  *(a1 + 81) = v11;
  *(a1 + 97) = *&v21[96];
  v12 = *&v21[16];
  *(a1 + 1) = *v21;
  *(a1 + 17) = v12;
  *a1 = 1;
  *(a1 + 33) = v10;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0x4046000000000000;
  *(a1 + 128) = sub_188E401AC;
  *(a1 + 152) = xmmword_18A64B7A0;
  *(a1 + 168) = 0x4028000000000000;
  *(a1 + 176) = 3;
  *(a1 + 184) = v14;
  *(a1 + 200) = xmmword_18A64B790;
  *(a1 + 216) = 0x401C000000000000;
  *(a1 + 224) = 1;
  *(a1 + 232) = sub_188E401E4;
  *(a1 + 240) = 0;
  *(a1 + 248) = sub_188E40268;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0x4010000000000000;
  *(a1 + 272) = v14;
  *(a1 + 288) = xmmword_18A64B7B0;
  *(a1 + 304) = xmmword_18A64B7C0;
  *(a1 + 320) = v9;
  *(a1 + 328) = sub_188E402C8;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0x3FF28F5C28F5C28FLL;
  *&result = 0x100000001;
  *(a1 + 360) = 1;
  *(a1 + 368) = v8;
  return result;
}

__n128 sub_188E401AC@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0x4010000000000000;
  a1->n128_u8[8] = 0;
  __asm { FMOV            V0.2D, #4.0 }

  a1[1] = result;
  a1[2] = result;
  a1[3].n128_u64[0] = 0;
  return result;
}

__n128 sub_188E401C8@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0x4000000000000000;
  a1->n128_u8[8] = 0;
  __asm { FMOV            V0.2D, #4.0 }

  a1[1] = result;
  a1[2] = result;
  a1[3].n128_u64[0] = 0;
  return result;
}

id sub_188E401E4(char a1)
{
  result = objc_opt_self();
  v3 = @"UICTFontTextStyleFootnote";
  v4 = sel__preferredFontForTextStyle_weight_;
  if ((a1 & 4) == 0)
  {
    result = [result _preferredFontForTextStyle_weight_];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result v4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_188E40268(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_labelColor;
  if (a1)
  {
    v3 = &selRef_tertiaryLabelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_188E402C8(char a1)
{
  if ((a1 & 8) != 0)
  {
    return [objc_opt_self() _carSystemFocusColor];
  }

  else
  {
    return 0;
  }
}

BOOL sub_188E4030C()
{
  if (sub_188B83244())
  {
    return 1;
  }

  v2 = [v0 tabBar];
  v3 = [v2 traitCollection];

  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, &cfstr_Uictcontentsiz_6.isa);

  return v5 == NSOrderedDescending;
}

id sub_188E40544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UITabBarVisualProvider_FloatingCarPlay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188E4059C()
{
  result = qword_1EA9342F0;
  if (!qword_1EA9342F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9342F0);
  }

  return result;
}

unint64_t sub_188E405E8()
{
  result = qword_1EA941110;
  if (!qword_1EA941110)
  {
    sub_188E4059C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA941110);
  }

  return result;
}

uint64_t _UIIntelligenceLightSourceView.configuration.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____UIIntelligenceLightSourceView_configuration;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t _UIIntelligenceLightSourceView.configuration.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____UIIntelligenceLightSourceView_configuration;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_188E40748(char a1)
{
  *(v1 + OBJC_IVAR____UIIntelligenceLightSourceView_configuration) = a1;
  v24.super_class = _UIIntelligenceLightSourceView;
  v3 = objc_msgSendSuper2(&v24, sel_initWithFrame_);
  v4 = objc_allocWithZone(_UIIntelligenceSystemLightView);
  v5 = v3;
  v6 = [v4 initWithFrame:a1 & 1 preferringAudioReactivity:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = v5;
  [v7 addSubview_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18A64B810;
  v10 = [v6 widthAnchor];
  v11 = [v7 widthAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v6 heightAnchor];
  v14 = [v7 heightAnchor];

  v15 = [v13 constraintEqualToAnchor_];
  *(v9 + 40) = v15;
  v16 = [v6 centerXAnchor];
  v17 = [v7 centerXAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v9 + 48) = v18;
  v19 = [v6 centerYAnchor];

  v20 = [v7 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v9 + 56) = v21;
  sub_188A34624(0, &qword_1ED48CFF0);
  v22 = sub_18A4A7518();

  [v8 activateConstraints_];

  return v7;
}

void __swiftcall _UIIntelligenceLightSourceView.init(frame:configuration:)(_UIIntelligenceLightSourceView_optional *__return_ptr retstr, __C::CGRect frame, UIKit::_UIIntelligenceLightSourceConfiguration_optional configuration)
{
  v3 = *configuration.value.prefersAudioReactivity & 1;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v3 preferAudioReactivity:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v5 = OBJC_IVAR____UIIntelligenceLightSourceView_configuration;
  swift_beginAccess();
  v4[v5] = v3;
}

void __swiftcall _UIIntelligenceLightSourceView.init(frame:)(_UIIntelligenceLightSourceView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_188E40E00()
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](0);
  return sub_18A4A88E8();
}

uint64_t sub_188E40E44()
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](0);
  return sub_18A4A88E8();
}

uint64_t sub_188E40EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000018A68B290 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_18A4A86C8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_188E40F40(uint64_t a1)
{
  v2 = sub_188E410F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188E40F7C(uint64_t a1)
{
  v2 = sub_188E410F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _UIIntelligenceLightSourceConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933F48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188E410F0();
  sub_18A4A89C8();
  sub_18A4A85C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_188E410F0()
{
  result = qword_1EA933F50;
  if (!qword_1EA933F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933F50);
  }

  return result;
}

uint64_t _UIIntelligenceLightSourceConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A88A8();
  return sub_18A4A88E8();
}

uint64_t _UIIntelligenceLightSourceConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933F58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188E410F0();
  sub_18A4A8998();
  if (!v2)
  {
    v9 = sub_18A4A8578();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_188E41328(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933F48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188E410F0();
  sub_18A4A89C8();
  sub_18A4A85C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_188E41460()
{
  sub_18A4A8888();
  sub_18A4A88A8();
  return sub_18A4A88E8();
}

uint64_t sub_188E414D4()
{
  sub_18A4A8888();
  sub_18A4A88A8();
  return sub_18A4A88E8();
}

void __swiftcall _UIIntelligenceLightSourceConfiguration.init()(_UIIntelligenceLightSourceConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UIIntelligenceLightSourceConfiguration.init()()
{
  *(v0 + OBJC_IVAR____UIIntelligenceLightSourceConfiguration_wrapped) = 0;
  v2.super_class = _UIIntelligenceLightSourceConfiguration;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_188E415B8()
{
  result = qword_1EA933F68;
  if (!qword_1EA933F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _UIIntelligenceLightSourceConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _UIIntelligenceLightSourceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_188E417EC()
{
  result = qword_1EA933F80;
  if (!qword_1EA933F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933F80);
  }

  return result;
}

unint64_t sub_188E41844()
{
  result = qword_1EA933F88;
  if (!qword_1EA933F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933F88);
  }

  return result;
}

unint64_t sub_188E4189C()
{
  result = qword_1EA933F90;
  if (!qword_1EA933F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933F90);
  }

  return result;
}

uint64_t UIView.cornerConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_188E41B20(0);
  v3 = v2[3];
  v4 = v2[4];
  v11 = *(v2 + 12);
  v6 = v2[4];
  v5 = v2[5];
  v10[2] = v4;
  v10[3] = v5;
  v10[0] = v2[2];
  v10[1] = v3;
  *(a1 + 64) = v11;
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  v7 = v2[3];
  *a1 = v2[2];
  *(a1 + 16) = v7;
  sub_188E41F80(v10, v9);
}

__n128 sub_188E41964@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_188E41B20(0);
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  v13 = v2[6].n128_i64[0];
  v11 = v4;
  v12 = v3;
  v9 = v2[2];
  v10 = v5;
  sub_188E41F80(&v9, v8);

  v6 = v12;
  a1[2] = v11;
  a1[3] = v6;
  a1[4].n128_u64[0] = v13;
  result = v10;
  *a1 = v9;
  a1[1] = result;
  return result;
}

uint64_t UIView.cornerConfiguration.setter(__int128 *a1)
{
  v2 = a1;
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v32 = *(a1 + 8);
  v4 = a1[1];
  v28 = *a1;
  v29 = v4;
  v5 = sub_188E41B20(0);
  v6 = v5[3];
  v7 = v5[4];
  v34 = *(v5 + 12);
  v9 = v5[4];
  v8 = v5[5];
  v33[2] = v7;
  v33[3] = v8;
  v10 = v5[3];
  v33[0] = v5[2];
  v33[1] = v6;
  v11 = v5[5];
  v25 = v9;
  v26 = v11;
  v27 = *(v5 + 12);
  v23 = v5[2];
  v24 = v10;
  v12 = v2[3];
  v21[2] = v2[2];
  v21[3] = v12;
  v22 = *(v2 + 8);
  v13 = v2[1];
  v21[0] = *v2;
  v21[1] = v13;
  LOBYTE(v2) = _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(&v23, v21);
  v35[2] = v25;
  v35[3] = v26;
  v36 = v27;
  v35[0] = v23;
  v35[1] = v24;
  sub_188E41F80(v33, v20);
  sub_188E4342C(v35);
  if (v2)
  {
    sub_188E4342C(&v28);
  }

  else
  {
    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    v27 = *(v5 + 12);
    v25 = v15;
    v26 = v14;
    v23 = v5[2];
    v24 = v16;
    *(v5 + 12) = v32;
    v17 = v31;
    v5[4] = v30;
    v5[5] = v17;
    v18 = v29;
    v5[2] = v28;
    v5[3] = v18;
    sub_188E4342C(&v23);
    [(UIView *)v1 _performCornersUpdate];
  }
}

id sub_188E41B20(char a1)
{
  v3 = sub_188E42E98(a1 & 1);
  if (v3)
  {
    return v3;
  }

  type metadata accessor for _UICornerProvider();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v4 + 112) = UIEdgeInsetsZero;
  *(v4 + 144) = 0;
  *(v4 + 152) = 1;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 1;
  *(v4 + 192) = 0;
  *(v4 + 200) = 1;
  v5 = v1;
  sub_18A4A2C38();
  swift_unknownObjectRetain();
  sub_188B223B8(v4 + 24);
  swift_unknownObjectWeakInit();

  *(v4 + 32) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    *(v4 + 40) = 1;
    *(v4 + 48) = 0;
    *(v4 + 56) = 1;
    *(v4 + 64) = 0;
    *(v4 + 72) = 1;
    *(v4 + 80) = 0;
    *(v4 + 88) = 1;
    *(v4 + 96) = v6;
    *(v4 + 16) = v5;
  }

  else
  {
    *(v4 + 40) = -1;
    *(v4 + 48) = 0;
    *(v4 + 56) = -1;
    *(v4 + 64) = 0;
    *(v4 + 72) = -1;
    *(v4 + 80) = 0;
    *(v4 + 88) = -1;
    *(v4 + 96) = v6;
    *(v4 + 16) = v5;

    swift_retain_n();
    v7 = [(UIView *)v5 _traitOverrides];
    v8 = [(_UITraitOverrides *)v7 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    *&v46[0] = inited;
    sub_18901E1A8(v4);
    v10 = [(UIView *)v5 _traitOverrides];
    v11 = *(*&v46[0] + 16);

    [(_UITraitOverrides *)v10 _replaceWithOverrides:v11];
  }

  result = [(UIView *)v5 _parentTraitCollection];
  if (result)
  {
    v13 = result;
    sub_188E1B1AC();

    swift_weakAssign();

    v14 = [(UIView *)v5 _typedStorage];
    sub_18902B770(&v48);
    v15 = v48;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v15;
    sub_188E9DD14(v4, a1 & 1, isUniquelyReferenced_nonNull_native);
    v17 = v15;
    v18 = [(UIView *)v5 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933F98);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v20 = v49;
    *(v19 + 40) = v50;
    *(v19 + 24) = v20;
    v21 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = *(&v18->super.isa + v21);
    *(&v18->super.isa + v21) = 0x8000000000000000;
    sub_188A40430(v19, &_s16CornerBackingKeyVN, v22);
    *(&v18->super.isa + v21) = v25;
    swift_endAccess();

    v23 = *(v4 + 80);
    v37 = *(v4 + 64);
    v38 = v23;
    v39 = *(v4 + 96);
    v24 = *(v4 + 48);
    v35 = *(v4 + 32);
    v36 = v24;
    sub_188E41F80(&v35, &v30);

    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    *&v25 = 0;
    BYTE8(v25) = -1;
    *(&v25 + 9) = *v43;
    HIDWORD(v25) = *&v43[3];
    *&v26 = 0;
    BYTE8(v26) = -1;
    *(&v26 + 9) = *v42;
    HIDWORD(v26) = *&v42[3];
    *&v27 = 0;
    BYTE8(v27) = -1;
    *(&v27 + 9) = *v41;
    HIDWORD(v27) = *&v41[3];
    *&v28 = 0;
    BYTE8(v28) = -1;
    HIDWORD(v28) = *&v40[3];
    *(&v28 + 9) = *v40;
    v29 = v6;
    LOBYTE(v17) = _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(&v30, &v25);
    v44[2] = v27;
    v44[3] = v28;
    v45 = v29;
    v44[0] = v25;
    v44[1] = v26;
    sub_188E4342C(v44);
    v46[2] = v32;
    v46[3] = v33;
    v47 = v34;
    v46[0] = v30;
    v46[1] = v31;
    sub_188E4342C(v46);
    if ((v17 & 1) == 0)
    {
      [(UIView *)v5 _performCornersUpdate];
    }

    return v4;
  }

  __break(1u);
  return result;
}

void (*UIView.cornerConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x170uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 360) = v1;
  v5 = sub_188E41B20(0);
  *v4 = v5[2];
  v7 = v5[4];
  v6 = v5[5];
  v8 = v5[3];
  *(v4 + 64) = *(v5 + 12);
  *(v4 + 32) = v7;
  *(v4 + 48) = v6;
  *(v4 + 16) = v8;
  memmove((v4 + 72), v5 + 2, 0x48uLL);
  sub_188E41F80(v4, v4 + 144);

  return sub_188E4209C;
}

void sub_188E4209C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    *(v2 + 232) = *(v2 + 88);
    *(v2 + 248) = *(v2 + 104);
    *(v2 + 264) = *(v2 + 120);
    *(v2 + 280) = *(v2 + 136);
    *(v2 + 216) = *(v2 + 72);
    v3 = *(v2 + 88);
    v4 = *(v2 + 120);
    v11 = *(v2 + 104);
    v12 = v4;
    v13 = *(v2 + 136);
    v9 = *(v2 + 72);
    v10 = v3;
    sub_188E41F80(v2 + 216, v2 + 288);
    UIView.cornerConfiguration.setter(&v9);
    v5 = *(v2 + 88);
    v6 = *(v2 + 120);
    *(v2 + 176) = *(v2 + 104);
    *(v2 + 192) = v6;
    *(v2 + 208) = *(v2 + 136);
    *(v2 + 144) = *(v2 + 72);
    *(v2 + 160) = v5;
    sub_188E4342C(v2 + 144);
  }

  else
  {
    v7 = *(v2 + 88);
    v8 = *(v2 + 120);
    v11 = *(v2 + 104);
    v12 = v8;
    v13 = *(v2 + 136);
    v9 = *(v2 + 72);
    v10 = v7;
    UIView.cornerConfiguration.setter(&v9);
  }

  free(v2);
}

void sub_188E423A4()
{
  [v0 _cornerProviderInsets];
  v38 = v2;
  v39 = v1;
  v36 = v4;
  v37 = v3;
  v31 = v0;
  v5 = [(UIView *)v0 _typedStorage];
  sub_18902B770(v42);
  v6 = v42[0];

  v7 = 0;
  v8 = 0;
  v10 = v6 + 64;
  v9 = *(v6 + 64);
  v35 = v6;
  v11 = 1 << *(v6 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  *&v15.f64[0] = v37;
  *&v15.f64[1] = v36;
  v33 = v15;
  *&v15.f64[0] = v39;
  *&v15.f64[1] = v38;
  v32 = v15;
  while (v13)
  {
    v40 = v7;
LABEL_27:
    v27 = *(*(v35 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v13)))));
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v27 + 112), v32), vceqq_f64(*(v27 + 128), v33)))))
    {
      v16 = v38;
      *(v27 + 112) = v39;
      *(v27 + 120) = v16;
      v17 = v36;
      *(v27 + 128) = v37;
      *(v27 + 136) = v17;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v34 = &v30;
      MEMORY[0x1EEE9AC00](KeyPath);
      v41 = v27;
      sub_188E434C4();

      sub_18A4A2BF8();
    }

    v13 &= v13 - 1;
    sub_188F2BF74();
    v18 = *(v27 + 40);
    v19 = *(v27 + 56);
    v20 = *(v27 + 72);
    v21 = *(v27 + 88);

    if (v18 == -1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18 & 1;
    }

    v23 = v22 | 2;
    if ((v19 & 1) == 0)
    {
      v23 = v22;
    }

    if (v19 != -1)
    {
      v22 = v23;
    }

    v24 = v22 | 4;
    if ((v20 & 1) == 0)
    {
      v24 = v22;
    }

    if (v20 != -1)
    {
      v22 = v24;
    }

    v25 = v22 | 8;
    if ((v21 & 1) == 0)
    {
      v25 = v22;
    }

    if (v21 != -1)
    {
      v22 = v25;
    }

    v7 = v40 | (v22 != 0);
  }

  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v14)
    {

      v29 = v31;
      [(UIView *)v31 _setInvalidatesCornersForGeometryChange:?];
      [v29 _applyEffectiveCornerRadiiToLayer];
      [v29 _dynamicLayoutGuidesMayNeedUpdate];
      [v29 _updateConcentricConstraintsIfNecessary];
      return;
    }

    v13 = *(v10 + 8 * v26);
    ++v8;
    if (v13)
    {
      v40 = v7;
      v8 = v26;
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_188E426F4()
{
  v1 = [(UIView *)v0 _typedStorage];
  sub_18902B770(v15);
  v2 = v15[0];

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_12:
    Strong = swift_weakLoadStrong();

    v10 = sub_188E1B1AC();
    v11 = v10;
    if (Strong)
    {
      if (!v10)
      {
        goto LABEL_4;
      }

      v12 = *(Strong + 16);

      v13 = *(v11 + 16);

      if (v12 != v13)
      {
        goto LABEL_5;
      }
    }

    else if (v10)
    {
LABEL_4:

LABEL_5:
      sub_188E1B1AC();
      swift_weakAssign();

      [(UIView *)v14 _invalidateCorners];
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_188E428F4(__int16 a1, void *a2)
{
  v3 = a1;
  v4 = a1 & 0x150;
  result = v4 != 0;
  if ((v3 & 0xA) == 0)
  {
    return result;
  }

  result = 1;
  if (v4 || !a2)
  {
    return result;
  }

  v33 = v2;
  v34 = a2;
  v6 = [(UIView *)v2 _typedStorage];
  sub_18902B770(v36);
  v7 = v36[0];

  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  for (i = v7; ; v7 = i)
  {
    do
    {
LABEL_7:
      if (!v11)
      {
        v14 = v34;
        do
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            return result;
          }

          if (v15 >= v12)
          {
            v32 = 0;
            goto LABEL_61;
          }

          v11 = *(v8 + 8 * v15);
          ++v13;
        }

        while (!v11);
        v13 = v15;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(*(v7 + 56) + ((v13 << 9) | (8 * v16)));
      v18 = v17[40];
      v19 = v17[56];
      v20 = v17[72];
      v21 = v17[88];
      if (v18 == 255)
      {
        v22 = 0;
      }

      else
      {
        v22 = v18 & 1;
      }

      v23 = v22 | 2;
      if ((v19 & 1) == 0)
      {
        v23 = v22;
      }

      if (v19 != 255)
      {
        v22 = v23;
      }

      v24 = v22 | 4;
      if ((v20 & 1) == 0)
      {
        v24 = v22;
      }

      if (v20 != 255)
      {
        v22 = v24;
      }

      v25 = v22 | 8;
      if ((v21 & 1) == 0)
      {
        v25 = v22;
      }

      if (v21 == 255)
      {
        v26 = v22;
      }

      else
      {
        v26 = v25;
      }
    }

    while (!v26);
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      break;
    }

LABEL_56:
  }

  while (1)
  {
    if ((v26 & 1) == 0)
    {

      if ((v26 & 2) == 0)
      {
        goto LABEL_42;
      }

LABEL_40:
      swift_getKeyPath();
      sub_188E434C4();
      sub_18A4A2C08();

      if (!Strong[168])
      {
        v26 &= ~2uLL;
      }

      goto LABEL_42;
    }

    swift_getKeyPath();
    sub_188E434C4();

    sub_18A4A2C08();

    if (!Strong[152])
    {
      v26 &= ~1uLL;
    }

    if ((v26 & 2) != 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    if ((v26 & 4) != 0)
    {
      swift_getKeyPath();
      sub_188E434C4();
      sub_18A4A2C08();

      if (!Strong[184])
      {
        v26 &= ~4uLL;
      }

      if ((v26 & 8) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((v26 & 8) == 0)
    {
      goto LABEL_32;
    }

    swift_getKeyPath();
    sub_188E434C4();
    sub_18A4A2C08();

    if (Strong[200])
    {
      goto LABEL_33;
    }

    v26 &= ~8uLL;
LABEL_32:
    if (!v26)
    {
      break;
    }

LABEL_33:
    v28 = swift_weakLoadStrong();

    Strong = v28;
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  swift_getKeyPath();
  sub_188E434C4();
  sub_18A4A2C08();

  v29 = swift_unknownObjectWeakLoadStrong();

  if (!v29)
  {
    goto LABEL_56;
  }

  v30 = v33;
  v14 = v34;
  while (v30 != v34)
  {
    if (v30 == v29)
    {

      result = swift_unknownObjectRelease();
      v7 = i;
      goto LABEL_7;
    }

    v31 = [v30 superview];

    v30 = v31;
    if (!v31)
    {

      swift_unknownObjectRelease();
      goto LABEL_60;
    }
  }

  swift_unknownObjectRelease();

LABEL_60:
  v32 = 1;
LABEL_61:

  sub_188E43480(v36);
  return v32;
}

void sub_188E42DA4()
{
  if (sub_188E42E98(0))
  {
    v1 = [v0 layer];
    if ([v0 _isRenderedHorizontallyFlipped])
    {
      sub_188F2C638(v3);
      _UICornerRadiiFlippedHorizontally(v3, v4);
    }

    else
    {
      sub_188F2C638(v4);
    }

    v3[0] = v4[0];
    v3[1] = v4[1];
    v3[2] = v4[2];
    v3[3] = v4[3];
    [v1 setCornerRadii_];

    v2 = [v0 layer];
    [v2 setCornerCurve_];
  }
}

uint64_t sub_188E42E98(char a1)
{
  v3 = [(UIView *)v1 _typedStorage];
  sub_18902B770(v9);
  v4 = v9[0];

  if (*(v4 + 16) && (v5 = sub_188E906F4(a1 & 1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  sub_188E43480(v9);
  return v7;
}

void sub_188E430C8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = [(UIView *)v4 _typedStorage];
  sub_18902B770(v20);

  v7.f64[0] = a1;
  v7.f64[1] = a2;
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, v7), vceqq_f64(v22, v8)))) & 1) == 0)
  {
    v9 = [(UIView *)v5 _typedStorage];
    sub_18902B770(v23);
    v10 = v23[0];

    v11 = [(UIView *)v5 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933F98);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = a1;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a4;
    v13 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(&v11->super.isa + v13);
    *(&v11->super.isa + v13) = 0x8000000000000000;
    sub_188A40430(v12, &_s16CornerBackingKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v11->super.isa + v13) = v19;
    swift_endAccess();

    [(UIView *)v5 _performCornersUpdate];
  }
}

uint64_t _s5UIKit15UICellAccessoryV14DisplayedStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188E43338()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

CGFloat sub_188E4337C()
{
  qword_1ED48F810 = MEMORY[0x1E69E7CC8];
  result = UIEdgeInsetsZero.top;
  *ymmword_1ED48F818 = UIEdgeInsetsZero;
  return result;
}

uint64_t sub_188E433A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED48FCB0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED48F810;
  *(a1 + 8) = *ymmword_1ED48F818;
  *(a1 + 24) = *&ymmword_1ED48F818[16];
}

__n128 _UICornerRadiiFlippedHorizontally@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = a1[1];
  *(a2 + 16) = v2;
  v4 = a1[2];
  result = a1[3];
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

unint64_t sub_188E434C4()
{
  result = qword_1ED491960;
  if (!qword_1ED491960)
  {
    type metadata accessor for _UICornerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED491960);
  }

  return result;
}

uint64_t _s24CornerProviderIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_188E435F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E43638(uint64_t result, int a2, int a3)
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

unint64_t sub_188E43694()
{
  result = qword_1ED48F138;
  if (!qword_1ED48F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48F138);
  }

  return result;
}

uint64_t UIViewController.ViewLoading.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v9 = *(v6 + 56);
  v9(a3, 1, 1, a2);
  v7 = sub_18A4A7D38();
  (*(*(v7 - 8) + 8))(a3, v7);
  (*(v6 + 32))(a3, a1, a2);

  return (v9)(a3, 0, 1, a2);
}

void sub_188E438D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *a3;

  sub_188C016A4(a1, v5, v4);
}

void (*static UIViewController.ViewLoading.subscript.modify(void *a1, void *a2, void *a3, uint64_t a4))(void ***a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = a4;
  *v9 = a2;
  v11 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[6] = v14;
  static UIViewController.ViewLoading.subscript.getter(a2, a3, v14);
  return sub_188E43A94;
}

void sub_188E43A94(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    v6[2]((*a1)[5], v4, v5);

    sub_188C016A4(v3, v8, v7);
    v9 = v6[1];
    (v9)(v3, v5);
    (v9)(v4, v5);
  }

  else
  {

    sub_188C016A4(v4, v8, v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_188E43C44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_188E43DC4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void sub_188E44050(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_188E440E8()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA934000 = result;
  return result;
}

uint64_t static UITraitTabAccessoryEnvironment.affectsColorAppearance.getter()
{
  if (qword_1EA931CA8 != -1)
  {
    swift_once();
  }

  return byte_1EA934000;
}

uint64_t sub_188E441CC()
{
  if (qword_1EA931CA8 != -1)
  {
    swift_once();
  }

  return byte_1EA934000;
}

uint64_t UIMutableTraits.tabAccessoryEnvironment.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188E44298();
  v4(&v7, &type metadata for UITraitTabAccessoryEnvironment, &type metadata for UITraitTabAccessoryEnvironment, &protocol witness table for UITraitTabAccessoryEnvironment, v5, a1, a2);
  return v7;
}

unint64_t sub_188E44298()
{
  result = qword_1EA934008;
  if (!qword_1EA934008)
  {
    type metadata accessor for Environment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA934008);
  }

  return result;
}

uint64_t UIMutableTraits.tabAccessoryEnvironment.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188E44298();
  return v5(&v8, &type metadata for UITraitTabAccessoryEnvironment, &type metadata for UITraitTabAccessoryEnvironment, &protocol witness table for UITraitTabAccessoryEnvironment, v6, a2, a3);
}

void (*UIMutableTraits.tabAccessoryEnvironment.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188E44298();
  v8(&type metadata for UITraitTabAccessoryEnvironment, &type metadata for UITraitTabAccessoryEnvironment, &protocol witness table for UITraitTabAccessoryEnvironment, v9, a2, a3);
  return sub_188E44434;
}

void sub_188E44434(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188E44298();
  v4(v1, &type metadata for UITraitTabAccessoryEnvironment, &type metadata for UITraitTabAccessoryEnvironment, &protocol witness table for UITraitTabAccessoryEnvironment, v5, v3, v2);

  free(v1);
}

char *sub_188E444D0()
{
  v1 = OBJC_IVAR____UIRopeAnimation__progressValue;
  *&v0[v1] = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  *&v0[OBJC_IVAR____UIRopeAnimation__animations] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____UIRopeAnimation__lastIndex] = 0;
  v13.receiver = v0;
  v13.super_class = _UIRopeAnimation;
  v2 = objc_msgSendSuper2(&v13, sel_init);
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64B710;
  v5 = *&v2[OBJC_IVAR____UIRopeAnimation__progressValue];
  *(v4 + 32) = v5;
  sub_188A34624(0, &qword_1ED48F690);
  v6 = v2;
  v7 = v5;
  v8 = sub_18A4A7518();

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v12[4] = sub_188E44E3C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A8F0;
  v12[3] = &block_descriptor_25;
  v10 = _Block_copy(v12);

  [v3 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v10);

  return v6;
}

id sub_188E446A4(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____UIRopeAnimation__progressValue) presentationValue];
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = v3;
  v5 = OBJC_IVAR____UIRopeAnimation__lastIndex;
  v6 = OBJC_IVAR____UIRopeAnimation__animations;
  result = swift_beginAccess();
  for (i = *(a1 + v5); i <= v4; *(a1 + v5) = i)
  {
    v8 = *(a1 + v6);
    if (i >= *(v8 + 16))
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(v8 + 16 * i + 32);

    v9(v10);

    v11 = *(a1 + v5);
    v12 = __OFADD__(v11, 1);
    i = v11 + 1;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_188E44940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____UIRopeAnimation__progressValue];
  [v7 value];
  v9 = v8;
  [v7 presentationValue];
  if (v9 == v10)
  {
    *&v3[OBJC_IVAR____UIRopeAnimation__lastIndex] = 0;
    [v7 setValue_];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v22 = sub_188E44E28;
    v23 = v12;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188A4A8F0;
    v21 = &block_descriptor_1;
    v13 = _Block_copy(&v18);
    v14 = v3;

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v16[4] = a3;
    v22 = sub_188E44E30;
    v23 = v16;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188C3DD6C;
    v21 = &block_descriptor_13;
    v17 = _Block_copy(&v18);
    sub_188A52E38(a2);

    [v11 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v17);
    _Block_release(v13);
  }
}

id sub_188E44B6C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____UIRopeAnimation__progressValue);
  v3 = OBJC_IVAR____UIRopeAnimation__animations;
  swift_beginAccess();
  return [v2 setValue_];
}

uint64_t sub_188E44BE0(char a1, char a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____UIRopeAnimation__animations;
    v9 = result;
    swift_beginAccess();
    *&v9[v8] = MEMORY[0x1E69E7CC0];
  }

  if (a4)
  {
    return a4(a1 & 1, a2 & 1);
  }

  return result;
}

double UIView._intelligenceVisibleBounds.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 safeAreaInsets];

  return UIRectInset(v2, v4, v6, v8, v9, v12, v11, v10);
}

uint64_t UIView._intelligenceCollectContent(in:collector:)()
{
  v0 = sub_18A4A3BA8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69DBBC0], v0, v2);
  sub_18A4A3418();
  return (*(v1 + 8))(v4, v0);
}

uint64_t UIView._intelligenceCollectElement(for:in:using:transformToRoot:)(void *a1, uint64_t a2, double (*a3)(void *), uint64_t a4, double a5, double a6, double a7, double a8)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v20 = sub_18A4A3CC8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 _intelligenceVisibleBounds];
  x = v25;
  y = v27;
  width = v29;
  height = v31;
  if (([a1 _safeAreaInsetsFrozen] & 1) == 0)
  {
    v35.origin.x = [(UIView *)v8 _convertRect:a1 toViewInSameWindow:a5, a6, a7, a8];
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v36 = CGRectIntersection(v35, v37);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  sub_188E46C04(a2, a3, a4, v19, x, y, width, height);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_188A3F5FC(v19, &unk_1EA934040);
  }

  (*(v21 + 32))(v24, v19, v20);
  sub_18A4A3428();
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_188E4530C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, CGFloat a9@<D0>, CGFloat a10@<D1>, CGFloat a11@<D2>, CGFloat a12@<D3>, uint64_t a13)
{
  v175 = a7;
  v185 = a6;
  v172 = a5;
  v171 = a4;
  v204 = a8;
  v182 = a13;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v183 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v184 = &v150 - v23;
  v192 = sub_18A4A3EB8();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v189 = &v150 - v26;
  v181 = sub_18A4A3CD8();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v178 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v179 = &v150 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v170 = &v150 - v31;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  v167 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v169 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v150 - v34;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  v166 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v150 - v35;
  v163 = sub_18A4A3E48();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v196 = &v150 - v38;
  v194 = sub_18A4A3E68();
  v193 = *(v194 - 8);
  v39 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v165 = &v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v150 - v41;
  v42 = sub_18A4A3CC8();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v197 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v150 - v46;
  v200 = sub_18A4A3BA8();
  v201 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v187 = &v150 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v186 = &v150 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v202 = &v150 - v52;
  v199 = sub_18A4A4088();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v203 = &v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  *(v54 + 16) = a3;
  v55 = a3;
  v56 = sub_18A4A33E8();
  LODWORD(a3) = [v56 containsObject_];

  if (!a3)
  {
    v158 = v39;
    v57 = v204;
    v188 = v55;
    v176 = v54;
    v159 = v43;
    v160 = v42;
    v58 = sub_18A4A33E8();
    [v58 addObject_];

    if (([a2 isHidden] & 1) != 0 || (objc_msgSend(a2, sel_alpha), _UIViewIsFullyTransparentGivenAlpha(v59)) || (v60 = objc_msgSend(a2, sel_layer), v157 = a2, v61 = v60, v62 = objc_msgSend(v60, sel_disableUpdateMask), v61, (v62 & 0x10) != 0))
    {
      (*(v159 + 56))(v57, 1, 1, v160);

      goto LABEL_10;
    }

    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(&v207, v208);
    v63 = v203;
    sub_18A4A3E88();
    __swift_destroy_boxed_opaque_existential_0Tm(&v207);
    v64 = sub_18A4A4028();
    v65 = v176;
    if (v64)
    {
      v211.origin.x = a9;
      v211.origin.y = a10;
      v211.size.width = a11;
      v211.size.height = a12;
      if (CGRectIsEmpty(v211))
      {
        (*(v198 + 8))(v63, v199);
        (*(v159 + 56))(v204, 1, 1, v160);
LABEL_50:
      }
    }

    sub_188DE55B8(a1, v47, a9, a10, a11, a12);
    v67 = v201;
    v68 = v200;
    v69 = (*(v201 + 48))(v47, 1, v200);
    v70 = v204;
    if (v69 == 1)
    {
      (*(v198 + 8))(v203, v199);
      sub_188A3F5FC(v47, &unk_1EA93EE80);
      (*(v159 + 56))(v70, 1, 1, v160);
      goto LABEL_50;
    }

    v151 = a1;
    (*(v67 + 32))(v202, v47, v68);
    if (sub_18A4A3FC8())
    {
      v71 = v157;
      [v157 bounds];
      v155 = [(UIView *)v71 _convertRect:v188 toViewInSameWindow:v72, v73, v74, v75];
      v154 = v76;
      v153 = v77;
      v152 = v78;
    }

    else
    {
      v79 = *(MEMORY[0x1E695F050] + 8);
      v155 = *MEMORY[0x1E695F050];
      v154 = v79;
      v80 = *(MEMORY[0x1E695F050] + 24);
      v153 = *(MEMORY[0x1E695F050] + 16);
      v152 = v80;
    }

    v81 = v193;
    v82 = v195;
    if (sub_18A4A3FC8())
    {
      v83.n128_f64[0] = [(UIView *)v157 _convertRect:v188 toViewInSameWindow:a9, a10, a11, a12];
    }

    v156 = *(v67 + 16);
    v156(v186, v202, v68, v83);
    v84 = MEMORY[0x1E69E7CC0];
    sub_18A4A3738();
    v209 = v84;
    sub_18A4A3E98();
    v85 = v196;
    v86 = v194;
    if ((*(v81 + 48))(v196, 1, v194) == 1)
    {
      v87 = &unk_1EA9340C0;
      v88 = v85;
    }

    else
    {
      v196 = *(v81 + 32);
      (v196)(v82, v85, v86);
      v89 = UIView._appIntentsIntelligenceProvider.getter(&v205);
      if (v206)
      {
        sub_188E4DA48(&v205, &v207);
        __swift_project_boxed_opaque_existential_0(&v207, v208);
        v90 = sub_18A4A41E8();
        if (v91 >> 60 != 15)
        {
          v92 = v91;
          v93 = v90;
          sub_188DBF7D8(v90, v91);
          v94 = v161;
          v186 = v93;
          sub_18A4A3E38();
          if (sub_18A4A3E58())
          {
            __swift_project_boxed_opaque_existential_0(&v207, v208);
            sub_18A4A41F8();
            sub_18A4A3E28();
          }

          v95 = v162;
          v96 = v177;
          v97 = v163;
          (*(v162 + 16))(v177, v94, v163);
          (*(v95 + 56))(v96, 0, 1, v97);
          sub_18A4A3848();
          sub_18A4A3978();
          sub_188DBF840(v186, v92);
          (*(v95 + 8))(v94, v97);
          v65 = v176;
        }

        __swift_project_boxed_opaque_existential_0(&v207, v208);
        if (sub_18A4A4218())
        {
          v98 = v173;
          sub_18A4A3968();
          v99 = v177;
          v100 = v174;
          sub_18A4A3828();
          (*(v166 + 8))(v98, v100);
          v186 = "Element type\nExpected ";
          v101 = sub_18A4A6E88();
          v102 = v170;
          (*(*(v101 - 8) + 56))(v170, 1, 1, v101);
          sub_188E4DA78(&v207, &v205);
          v103 = v193 + 16;
          v104 = v165;
          v105 = v194;
          (*(v193 + 16))(v165, v195, v194);
          v106 = v169;
          sub_188A3F29C(v99, v169, &unk_1EA9340B0);
          v107 = (*(v103 + 64) + 64) & ~*(v103 + 64);
          v108 = (v158 + *(v167 + 80) + v107) & ~*(v167 + 80);
          v109 = swift_allocObject();
          sub_188E4DA48(&v205, (v109 + 16));
          (v196)(v109 + v107, v104, v105);
          sub_188A3F704(v106, v109 + v108, &unk_1EA9340B0);
          v110 = sub_18A4A3958();
          v68 = v200;
          sub_18A4A3818();
          sub_188A3F5FC(v102, &unk_1EA93C110);
          v110(&v205, 0);
          v65 = v176;
          sub_188A3F5FC(v177, &unk_1EA9340B0);
        }

        __swift_project_boxed_opaque_existential_0(&v207, v208);
        v111 = v157;
        [v157 bounds];
        sub_18A4A4108();
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v150 - 4) = v185;
        *(&v150 - 3) = v65;
        *(&v150 - 2) = v111;
        v113 = sub_18A4A75A8();

        sub_188DFA234(v113);
        (*(v193 + 8))(v195, v194);
        __swift_destroy_boxed_opaque_existential_0Tm(&v207);
        v67 = v201;
        goto LABEL_32;
      }

      (*(v81 + 8))(v82, v86, v89);
      v87 = &qword_1EA934060;
      v88 = &v205;
    }

    sub_188A3F5FC(v88, v87);
LABEL_32:
    v114 = v187;
    (v156)(v187, v202, v68);
    v115 = (*(v67 + 88))(v114, v68);
    v116 = v160;
    v117 = v159;
    if (v115 == *MEMORY[0x1E69DBBE0])
    {
      (*(v67 + 96))(v114, v68);
      v118 = v180;
      v119 = v179;
      v120 = v181;
      (*(v180 + 32))(v179, v114, v181);
      (*(v118 + 16))(v178, v119, v120);
      v121 = objc_allocWithZone(sub_18A4A3498());
      v122 = sub_18A4A3488();
      [v157 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];

      (*(v118 + 8))(v119, v120);
    }

    else
    {
      v123 = (*(v67 + 8))(v114, v68);
      MEMORY[0x1EEE9AC00](v123);
      *(&v150 - 8) = v157;
      *(&v150 - 7) = a9;
      *(&v150 - 6) = a10;
      *(&v150 - 5) = a11;
      *(&v150 - 4) = a12;
      v124 = v185;
      *(&v150 - 3) = v151;
      *(&v150 - 2) = v124;
      *(&v150 - 1) = v65;
      v125 = sub_18A4A33D8();
      sub_188DFA234(v125);
    }

    v126 = v204;
    sub_18A4A3798();
    if (sub_18A4A4018())
    {
      v208 = sub_188A34624(0, &qword_1ED48F680);
      *&v207 = v157;
      v127 = v157;
      [v127 _intelligenceBaseClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_188E4D924(&v207, ObjCClassMetadata);
      __swift_destroy_boxed_opaque_existential_0Tm(&v207);
      sub_18A4A3898();
      v129 = [(UIView *)v127 __viewDelegate];
      if (v129)
      {
        v130 = v129;
        v131 = sub_188A34624(0, &qword_1ED48D5A0);
        v208 = v131;
        *&v207 = v130;
        v132 = v130;
        sub_188E4D924(&v207, v131);
        __swift_destroy_boxed_opaque_existential_0Tm(&v207);
        sub_18A4A3948();
      }
    }

    if (sub_18A4A4048())
    {
      v133 = _UIGetAccessibilityLabelSafe(v157);
      if (v133)
      {
        v134 = v133;
        sub_18A4A7288();
      }

      sub_18A4A38B8();
    }

    v135 = v189;
    sub_18A4A3F88();
    v136 = v191;
    v137 = v190;
    v138 = v192;
    (*(v191 + 104))(v190, *MEMORY[0x1E69DBCB8], v192);
    v139 = sub_18A4A3EA8();
    v140 = *(v136 + 8);
    v140(v137, v138);
    v141 = v197;
    v140(v135, v138);
    if (v139)
    {
      v142 = [(UIView *)v157 __viewDelegate];
      if (v142)
      {
        v143 = v142;
        v144 = [v142 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }

      v145 = v183;
      sub_18A4A37C8();
      v146 = sub_18A4A3CF8();
      v147 = (*(*(v146 - 8) + 48))(v145, 1, v146);
      sub_188A3F5FC(v145, &unk_1EA9340A0);
      if (v147 == 1)
      {
        v148 = [v157 userActivity];
        sub_18A4A3D08();
        sub_18A4A37D8();
      }
    }

    v149 = v203;
    if (sub_18A4A3FE8())
    {
      sub_18A4A3B88();
      (*(v117 + 8))(v141, v116);
      (*(v201 + 8))(v202, v200);
      (*(v198 + 8))(v149, v199);
    }

    else
    {
      (*(v201 + 8))(v202, v200);
      (*(v198 + 8))(v149, v199);
      (*(v117 + 32))(v126, v141, v116);
      (*(v117 + 56))(v126, 0, 1, v116);
    }

    goto LABEL_50;
  }

  (*(v43 + 56))(v204, 1, 1, v42);

LABEL_10:
}