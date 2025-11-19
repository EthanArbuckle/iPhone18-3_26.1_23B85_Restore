uint64_t sub_188E08DE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E08E4C()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E08E84()
{
  sub_188F8FD20();
  sub_188F8FD74();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_188E08EEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188E08F30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F91008(v1, &selRef_setUserActivity_);
}

void sub_188E08F94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F91008(v1, &selRef_setOptions_);
}

uint64_t sub_188E08FF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E09050@<X0>(uint64_t a1@<X8>)
{
  result = UIPasteboard.DetectedValues.number.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_188E09094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.link", *a1, &qword_1EA9389A8);
  *a2 = result;
  return result;
}

uint64_t sub_188E090DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.phone", *a1, &qword_1EA9389B0);
  *a2 = result;
  return result;
}

uint64_t sub_188E09124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.email", *a1, &qword_1EA9389B8);
  *a2 = result;
  return result;
}

uint64_t sub_188E0916C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.address", *a1, &qword_1EA9389C0);
  *a2 = result;
  return result;
}

uint64_t sub_188E091B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.event", *a1, &qword_1EA9389C8);
  *a2 = result;
  return result;
}

uint64_t sub_188E091FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.shipment", *a1, &qword_1EA9389D0);
  *a2 = result;
  return result;
}

uint64_t sub_188E09244@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.flight", *a1, &qword_1EA9389D8);
  *a2 = result;
  return result;
}

uint64_t sub_188E0928C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188F94A90(@"com.apple.uikit.pasteboard-detection-pattern.dd.money", *a1, &qword_1EA9389E0);
  *a2 = result;
  return result;
}

__n128 sub_188E09344(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E09350()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E09388()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E093C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E09400()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E09454()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_188E094DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

double sub_188E09540@<D0>(uint64_t a1@<X8>)
{
  UICollectionViewDiffableDataSource.sectionSnapshotHandlers.getter(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_188E095AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_188E095F0(__int128 *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 58);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  sub_188A74E4C(v6, &v5);
  return UIView.cornerMaskingConfiguration.setter(a1);
}

id sub_188E09648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) prefersHighDynamicRange];
  *a2 = result;
  return result;
}

id sub_188E096A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) preparesImagesForDisplay];
  *a2 = result;
  return result;
}

id sub_188E09708@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) preferredThumbnailSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_188E09768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) pixelsPerInch];
  *a2 = v4;
  return result;
}

uint64_t sub_188E097E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_188E09860@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) _prefersLargeSize];
  *a2 = result;
  return result;
}

uint64_t sub_188E098EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(*(a3 + 16) - 8);
    if (*(v6 + 84) == a2)
    {
      v7 = *(v6 + 48);
      v8 = a1 + *(a3 + 40);

      return v7(v8);
    }

    else
    {
      v12 = sub_18A4A49C8();
      v13 = *(*(v12 - 8) + 48);
      v14 = a1 + *(a3 + 60);

      return v13(v14, a2, v12);
    }
  }
}

uint64_t sub_188E09A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 84) == a3)
    {
      v7 = *(v6 + 56);
      v8 = result + *(a4 + 40);

      return v7(v8, a2, a2, v5);
    }

    else
    {
      v9 = result;
      v11 = sub_18A4A49C8();
      v12 = *(*(v11 - 8) + 56);
      v13 = v9 + *(a4 + 60);

      return v12(v13, a2, a2, v11);
    }
  }

  return result;
}

uint64_t sub_188E09B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E09B64()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E09C40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) color];
  *a2 = result;
  return result;
}

void sub_188E09C80(id *a1)
{
  v1 = *a1;
  sub_188D0A72C(v1, &selRef_setColor_);
}

id sub_188E09CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) multipleSelectionColor];
  *a2 = result;
  return result;
}

void sub_188E09D14(id *a1)
{
  v1 = *a1;
  sub_188D0A72C(v1, &selRef_setMultipleSelectionColor_);
}

void sub_188E09D6C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188CCC2EC(v1);
}

id sub_188E09E18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 colorPalette];
  *a2 = result;
  return result;
}

id sub_188E09E68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 direction];
  *a2 = result;
  return result;
}

id sub_188E09EB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 reverse];
  *a2 = result;
  return result;
}

id sub_188E09EF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_188E09F40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 palette];
  *a2 = result;
  return result;
}

uint64_t sub_188E09F90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E09FE8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0A020()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_188E0A0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_188E0A198()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E0A1D0()
{
  v1 = sub_18A4A29D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_188E0A294(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_188E0A2DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_18A4A2D68();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_188E0A388(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_18A4A2D68();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0A428()
{
  v1 = type metadata accessor for DesignLibrarySwitch(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_18A4A2D68();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_188E0A514()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0A54C()
{

  return MEMORY[0x1EEE6BDD0](v0, 27, 7);
}

uint64_t sub_188E0A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A2D68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_188E0A650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18A4A2D68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_188E0A7DC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_188E0A834()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_188E0A884()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0A94C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0A994()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0AA14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0AA4C()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E0AAA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0AADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0AB14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0AB4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E0AB88()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939C90);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_188E0ABB8()
{
  v1 = *(type metadata accessor for UITextEffectView.EffectID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_18A4A29D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 40, v2 | 7);
}

uint64_t sub_188E0ACA8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0AD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_188E0AD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_188E0ADEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0AE24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_188E0AE7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 badge];
  *a2 = result;
  return result;
}

id sub_188E0AECC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foregroundColor];
  *a2 = result;
  return result;
}

id sub_188E0AF1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundColor];
  *a2 = result;
  return result;
}

id sub_188E0AF6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

double sub_188E0AFBC@<D0>(_OWORD *a1@<X8>)
{
  UIBarButtonItem._badge.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

id sub_188E0B004@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 _badge];
  *a2 = result;
  return result;
}

uint64_t sub_188E0B07C()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0B0C4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0B0FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0B13C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0B174@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_188E0B1EC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [(UIView *)Strong _dispatchTintColorVisitorWithReasons:1 installTrackingVisitor:?];
}

uint64_t sub_188E0B2B8()
{
  v1 = (type metadata accessor for _Glass(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v5 + v1[8];
  v7 = sub_18A4A2F58();
  (*(*(v7 - 8) + 8))(v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_188E0B3D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0B40C()
{
  v1 = (type metadata accessor for _Glass(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v5 + v1[8];
  v7 = sub_18A4A2F58();
  (*(*(v7 - 8) + 8))(v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_188E0B530()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0B568()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0B5A8()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    MEMORY[0x18CFEA6E0](v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E0B77C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E0B7C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E0B80C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E0B874(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_18A4A2FD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 68)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_188E0B920(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_18A4A2FD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 68)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0B9D0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0BA08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0BA58()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E0BA90()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0BAC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0BB00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_188E0BB3C(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 9) = *(a1 + 25);
  *&result = sub_18903499C(&v3).n128_u64[0];
  return result;
}

uint64_t sub_188E0BBB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0BC00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0BC5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188C11BD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_188E0BCC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E0BD0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0BD48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0BD88()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E0BDD0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E0BE20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_188E0BEB8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_188E0BEEC@<D0>(uint64_t a1@<X8>)
{
  UICollectionViewDiffableDataSource.reorderingHandlers.getter(&v4);
  *a1 = v4;
  v2 = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v2;
  result = *&v7;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_188E0BF7C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_188E0BFB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0C044()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0C0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18A4A2DB8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_188E0C168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18A4A2DB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0C224()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0C25C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0C29C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0C2D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0C324(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

double sub_188E0C380@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v4 + 32))(v7, v3, v4);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  a2[2] = v8[0];
  result = *(v8 + 9);
  *(a2 + 41) = *(v8 + 9);
  return result;
}

uint64_t sub_188E0C3FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  return sub_1890568BC(v3 + v4, a2, type metadata accessor for UIPromptSuggestionView.Configuration);
}

uint64_t sub_188E0C470(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_188E0C528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0C5D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E0C608()
{
  v1 = (type metadata accessor for _Glass(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v13 = *(*v1 + 64);
  v4 = (v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v6 = (v0 + v3);

  v7 = v6 + v1[8];
  v8 = sub_18A4A2F58();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = type metadata accessor for _Glass._GlassVariant(0);

  v11 = v0 + v5 + v1[8];
  v9(v11, v8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v13, v2 | 7);
}

uint64_t sub_188E0C7AC()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0C7E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0C81C()
{
  v1 = (type metadata accessor for _Glass(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_18A4A2F58();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_188E0C934()
{
  v1 = (type metadata accessor for _Glass(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v5 + v1[8];
  v7 = sub_18A4A2F58();
  (*(*(v7 - 8) + 8))(v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_188E0CA60()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0CB10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = UIMutableTraits._typesettingLanguageAwareLineHeightRatio.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_188E0CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  return UIMutableTraits._typesettingLanguageAwareLineHeightRatio.setter(&v8, v4, v5);
}

__n128 sub_188E0CBB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E0CC14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_189066BC8(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_188E0CCD0()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0CD08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0CD40()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_188E0CD90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._glassElevationLevel.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_188E0CE00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E0CE0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0CE44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_188E0CF94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_188E0CFC0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_188E0CFDC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0D014()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *sub_188E0D070(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 120) = *result;
  *(a2 + 25) = v2 != 0;
  return result;
}

uint64_t *sub_188E0D094(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 128) = *result;
  *(a2 + 26) = v2 != 0;
  return result;
}

uint64_t sub_188E0D108()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0D140()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0D17C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0D1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0D208()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0D250()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0D2A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188E0D3A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E214(v1);
}

void sub_188E0D3FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E304(v1);
}

id sub_188E0D44C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) cornerRadius];
  *a2 = v4;
  return result;
}

id sub_188E0D4E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) accessibilityIgnoresInvertColors];
  *a2 = result;
  return result;
}

id sub_188E0D540@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) font];
  *a2 = result;
  return result;
}

void sub_188E0D580(id *a1)
{
  v1 = *a1;
  sub_1890893B8(v1, &selRef_setFont_);
}

id sub_188E0D5D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) color];
  *a2 = result;
  return result;
}

void sub_188E0D614(id *a1)
{
  v1 = *a1;
  sub_1890893B8(v1, &selRef_setColor_);
}

id sub_188E0D668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) lineBreakMode];
  *a2 = result;
  return result;
}

id sub_188E0D6C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) numberOfLines];
  *a2 = result;
  return result;
}

id sub_188E0D728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) adjustsFontSizeToFitWidth];
  *a2 = result;
  return result;
}

id sub_188E0D788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) minimumScaleFactor];
  *a2 = v4;
  return result;
}

id sub_188E0D7E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsDefaultTighteningForTruncation];
  *a2 = result;
  return result;
}

void sub_188E0D854(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E3F4(v1);
}

void sub_188E0D8B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E4E4(v1);
}

id sub_188E0D900@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) isEnabled];
  *a2 = result;
  return result;
}

id sub_188E0D960@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) role];
  *a2 = result;
  return result;
}

void sub_188E0D9CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E5D4(v1);
}

void sub_188E0DA98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E6C4(v1);
}

void sub_188E0DB64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18908E7B4(v1);
}

uint64_t sub_188E0DCD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18908B8EC([*(*a1 + 16) alignment], &v4);
  *a2 = v4;
  return result;
}

id sub_188E0DD20(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188C05E6C();

  return [v2 setAlignment_];
}

id sub_188E0DD68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) axesPreservingSuperviewLayoutMargins];
  *a2 = result;
  return result;
}

id sub_188E0DDC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) directionalLayoutMargins];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_188E0DE30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imageToTextPadding];
  *a2 = v4;
  return result;
}

id sub_188E0DE90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) textToSecondaryTextPadding];
  *a2 = v4;
  return result;
}

id sub_188E0DEF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) textToButtonPadding];
  *a2 = v4;
  return result;
}

id sub_188E0DF50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) buttonToSecondaryButtonPadding];
  *a2 = v4;
  return result;
}

id sub_188E0DFF8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_188E0E008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_188E0E014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return UIContentUnavailableConfigurationState.searchText.setter(v1, v2);
}

uint64_t sub_188E0E0A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 53, 7);
}

uint64_t sub_188E0E158()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0E1BC()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E0E1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E0E264()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0E2B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_188E0E398()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E0E400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = UIMutableTraits._headroomSuppressionLimit.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

__n128 sub_188E0E474(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E0E4F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 48);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_188E0E5F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 48) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0E764()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0E810()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_188E0E850()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_188E0E890()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0E91C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1890AA408(v4);
}

void sub_188E0E968(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1890AB620(v1);
}

uint64_t sub_188E0E998@<X0>(void *a1@<X8>)
{
  result = sub_18A4A4ED8();
  *a1 = v3;
  return result;
}

uint64_t sub_188E0EA90()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0EADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0EB1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0EB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0EB8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0EBC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E0EBFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E0EC34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0EC6C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0ECB4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_188E0EDB0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  UIMutableTraits._barButtonItemMetrics.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_188E0EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v10 = v6;
  return UIMutableTraits._barButtonItemMetrics.setter(v9, v4, v5);
}

__n128 sub_188E0EE50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E0EE5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0EEA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0EEE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0EF8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E0EFD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentView];
  *a2 = result;
  return result;
}

id sub_188E0F020@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyPlacesContentView];
  *a2 = result;
  return result;
}

uint64_t sub_188E0F08C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_18A4A2D68();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_188E0F138(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_18A4A2D68();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E0F200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18A4A4F78();
  *a1 = result & 1;
  return result;
}

uint64_t sub_188E0F270()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0F2A8()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0F2E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0F358()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E0F3DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_18A4A4438();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_188E0F488(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_18A4A4438();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_188E0F52C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) = 0;
    sub_1890FCCC4();
    sub_1890FE48C();
    sub_1890FE854();
    sub_1890FBE4C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FE854();
    }

    v4 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v4)
    {
      v5 = v4;
      sub_1890FE48C();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        [v6 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FC58C();
  }
}

void sub_188E0F618()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) = 0;
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v2)
    {
      v3 = v2;
      sub_1890FE48C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FD1DC();
    sub_1890FEE30();
    sub_1890FC690();

    sub_1890FC58C();
  }
}

uint64_t sub_188E0F79C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0F7EC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_188E0F89C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E0F940()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E0F978@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) showsSeparators];
  *a2 = result;
  return result;
}

id sub_188E0F9DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188C702D8();
  v3 = *(v1 + 16);

  return [v2 setSeparatorConfiguration_];
}

id sub_188E0FA24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[1];
  }

  else
  {
    v2 = 0;
  }

  sub_188A52E38(*a1);
  return UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(v1, v2);
}

id sub_188E0FA6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) backgroundColor];
  *a2 = result;
  return result;
}

void sub_188E0FAAC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188C6FFB4(v1);
}

id sub_188E0FB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = UICollectionLayoutListConfiguration.headerMode.getter(&v4);
  *a2 = v4;
  return result;
}

id sub_188E0FB50(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188C702D8();

  return [v2 setHeaderMode_];
}

id sub_188E0FB94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = UICollectionLayoutListConfiguration.footerMode.getter(&v4);
  *a2 = v4;
  return result;
}

unint64_t sub_188E0FBFC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = [*(*a1 + 16) contentHuggingElements];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id sub_188E0FC9C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + 16) contentHuggingElements];
  *a2 = result == 1;
  return result;
}

id sub_188E0FCE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) _hasCompactSectionSpacing];
  *a2 = result;
  return result;
}

uint64_t sub_188E0FDAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_188FAA1E8(v1, v2);
}

uint64_t sub_188E0FE04()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0FE4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0FE8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E0FEEC()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0FF24()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E0FF7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E0FFD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layer];
  *a2 = result;
  return result;
}

id sub_188E10010@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maskedCorners];
  *a2 = result;
  return result;
}

id sub_188E10058@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cornerCurve];
  *a2 = result;
  return result;
}

id sub_188E100A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cornerRadius];
  *a2 = v4;
  return result;
}

uint64_t sub_188E10144()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E10194()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E10208()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1027C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E102BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E1030C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_188E103A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v3 + v4, a2);
}

id sub_188E10404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_188E10478()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E104B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E104EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E10524()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E1056C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E105A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_188E105FC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_188E106B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E106F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1073C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E10774()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E107DC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__textSegmentsCovered) = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_188E107FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18A4A2588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_188E108A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18A4A2588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E1094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_188E109F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E10A9C()
{
  v1 = (_s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  v6 = v1[11];
  v7 = sub_18A4A2588();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_188E10BC0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_188E10C08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E10C48()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E10C90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E10CD8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E10D10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E10D54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18914C194(v1, v2);
}

uint64_t sub_188E10D94()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188E10DCC()
{
  sub_188CC4708();
  sub_18A4A27B8();
  __break(1u);
}

void sub_188E10E60()
{
  sub_188CC47A8();
  sub_18A4A27B8();
  __break(1u);
}

uint64_t sub_188E10EF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_188E10F58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_188E10FB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_188E11018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_188E11080(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_189162E30(v1);
}

uint64_t sub_188E110D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_188E11128(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_188E11190(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_18914F8F4();
}

id sub_188E1123C(_BYTE *a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty) = *a1;
  return [*(v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton) setNeedsUpdateConfiguration];
}

char *sub_188E112FC@<X0>(char **a1@<X8>)
{
  result = sub_18915184C();
  *a1 = result;
  return result;
}

__n128 sub_188E1132C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id sub_188E11390(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_189151EA0(v2);
}

uint64_t sub_188E11558(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_backgroundCornerRadius;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_188E115C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_188E1162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_188E1169C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_18A4A2668();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_188E11754(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_18A4A2668();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E117F8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E11844()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E11880()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E118C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E11908()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_188E11974()
{
  sub_1890782F0();
  sub_18A4A27B8();
  __break(1u);
}

void sub_188E119E8()
{
  sub_189167290();
  sub_18A4A27B8();
  __break(1u);
}

uint64_t sub_188E11CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E11CFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 96);
  *a2 = v2;
  return v2;
}

void sub_188E11D0C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 96);
  *(*a2 + 96) = *a1;
  v3 = v2;
}

id sub_188E11D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 128);
  *a2 = v2;
  return v2;
}

void sub_188E11D64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188CE8688(v1);
}

id sub_188E11D94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hostContainerView];
  *a2 = result;
  return result;
}

id sub_188E11DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 152);
  *a2 = v2;
  return v2;
}

void sub_188E11DF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B3A7F0(v1);
}

id sub_188E11E24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 160);
  *a2 = v2;
  return v2;
}

void sub_188E11E34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B39DEC(v1);
}

id sub_188E11E64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 144);
  *a2 = v2;
  return v2;
}

void sub_188E11E74(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 144);
  *(*a2 + 144) = *a1;
  v3 = v2;
}

id sub_188E11EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 80);
  *a2 = v2;
  return v2;
}

void sub_188E11ECC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B38550(v1);
}

id sub_188E11EFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 48);
  *a2 = v2;
  return v2;
}

void sub_188E11F0C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B3A658(v1);
}

id sub_188E11F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 120);
  *a2 = v2;
  return v2;
}

void sub_188E11F4C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B39D20(v1);
}

float64x2_t sub_188E11F80@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vaddq_f64(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_188E11F94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E11FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E12038()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12070()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E120D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E12118()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E12178()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E121E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E12250()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E12290()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_188E122C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12310()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E12360()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E123A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12500@<X0>(uint64_t *a1@<X8>)
{
  result = UITabSidebarItem.accessories.getter();
  *a1 = result;
  return result;
}

uint64_t sub_188E12548()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12590()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E125D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) keepInBackground];
  *a2 = result;
  return result;
}

uint64_t sub_188E12634()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 176);

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_188E126AC()
{
  v1 = sub_18A4A42B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_188E127A0()
{
  v1 = sub_18A4A42B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_188E12898()
{
  v1 = sub_18A4A42B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_188E12964(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_188E129D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A29D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_188E12A40()
{
  type metadata accessor for CoreInteractionRepresentableAdaptor();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_188E12AC4()
{
  sub_188DC0F30(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E12B04()
{
  v1 = sub_18A4A5FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_188E12BA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12BD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_188E12C10()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_188E12C80()
{
  sub_188C47A50(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_188BB3988(*(v0 + 112), *(v0 + 120), v1);
  }

  if (*(v0 + 160) != 1)
  {
    sub_188EC226C(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 288);

  return MEMORY[0x1EEE6BDD0](v0, 392, 7);
}

uint64_t sub_188E12D40()
{
  v1 = (type metadata accessor for NavigationBarPlatterContainer.Settings() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_18A4A4BE8();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_18A4A4A88();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[8];
  v11 = sub_18A4A4B78();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[9];
  v13 = sub_18A4A4C78();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v5 + 104);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 192, v2 | 7);
}

uint64_t sub_188E12F4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E12F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E12FC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E12FFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1303C()
{
  v1 = (type metadata accessor for NavigationBarPlatterContainer.Settings() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_18A4A4BE8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_18A4A4A88();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = sub_18A4A4B78();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = sub_18A4A4C78();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 9, v2 | 7);
}

uint64_t sub_188E131E0()
{
  sub_188C47A50(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_188BB3988(*(v0 + 112), *(v0 + 120), v1);
  }

  if (*(v0 + 160) != 1)
  {
    sub_188EC226C(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  }

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_188E13270()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_188E132E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E13328()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E13368()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E13520()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E13558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.splitViewControllerLayoutEnvironment.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_188E135C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E13884@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EA93F090;
  return result;
}

uint64_t sub_188E138D0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EA93F090 = v1;
  return result;
}

uint64_t sub_188E13918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A24C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_18A4A24B8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 104);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_188E13A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18A4A24C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_18A4A24B8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 104);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_188E13B04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188E13B48(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

double sub_188E13B58@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_188E13B8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E13BC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E13C0C()
{
  v1 = (type metadata accessor for _UISceneConnectionOptionAsyncDelegateInvocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v3);

  v5 = v1[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v5, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_188E13D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E13D80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.listEnvironment.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_188E13DF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E13E0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E13E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_188E13EA0@<X0>(char **a1@<X8>)
{
  result = UITextView.selectedRanges.getter();
  *a1 = result;
  return result;
}

uint64_t sub_188E13F14()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E13F50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E13F88()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E13FC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E1402C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E14064()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E140A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E140E4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E1411C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E141E0()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E14218()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_188E14250()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E14288()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E142F0()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_188E14358()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E14390()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E143D8()
{

  v1 = *(v0 + 112);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_188E14458()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E144A4@<X0>(void *a1@<X8>)
{
  sub_188EB9204();
  result = sub_18A4A5328();
  *a1 = v3;
  return result;
}

uint64_t sub_188E144F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A52A8();
  *a1 = result;
  return result;
}

uint64_t sub_188E14550()
{
  type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(255);
  sub_18A4A4CE8();
  sub_1891E1E08(&qword_1EA93FDE8, type metadata accessor for UIScrollEdgeEffectTagReceiverModifier);
  return swift_getWitnessTable();
}

uint64_t sub_188E145EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FDF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_188E146A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FDF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E14750(uint64_t *a1)
{
  v2 = *a1;

  return sub_1891DF2F8(&v2);
}

uint64_t sub_188E1479C()
{
  v1 = (type metadata accessor for UIScrollEdgeEffectTagReceiverModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  j__swift_release();
  sub_1891E2090(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v5 = v0 + v3 + v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FE90);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FE98);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_188E148C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93FE70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93FE78);
  type metadata accessor for UIScrollEdgeEffectTagReceiver(255);
  sub_1891E1FC4();
  sub_1891E1E08(&qword_1EA93FE88, type metadata accessor for UIScrollEdgeEffectTagReceiver);
  swift_getOpaqueTypeConformance2();
  sub_1891E2160();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_188E149C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E14A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlatformViewRepresentableAdaptor();
  swift_getWitnessTable();
  v6 = sub_18A4A5A58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = *(*(AssociatedTypeWitness - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, AssociatedTypeWitness);
  }
}

uint64_t sub_188E14B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PlatformViewRepresentableAdaptor();
  swift_getWitnessTable();
  v8 = sub_18A4A5A58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = *(*(AssociatedTypeWitness - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, AssociatedTypeWitness);
  }
}

uint64_t sub_188E14CD4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E14D0C()
{

  sub_188E90548(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E14D4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_188E14E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E14E88()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E14EC8()
{

  sub_188E90548(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E14F08()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E14F60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E14F9C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E14FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_188E1508C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18A4A29D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_188E15144()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E1517C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E151C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E151FC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E15234()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E1527C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E152B4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E152EC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E15334()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E1538C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E153C4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E15418()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E15450()
{

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E154A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E1552C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

double sub_188E1553C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void *sub_188E15548(void *result, uint64_t a2)
{
  *(a2 + 8) = *result;
  v2 = *(a2 + 48);
  if ((v2 & 2) == 0)
  {
    *(a2 + 48) = v2 | 2;
  }

  return result;
}

double sub_188E15564@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

void *sub_188E15570(void *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  v2 = *(a2 + 48);
  if ((v2 & 4) == 0)
  {
    *(a2 + 48) = v2 | 4;
  }

  return result;
}

__n128 sub_188E1558C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

_OWORD *sub_188E15598(_OWORD *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
    *(a2 + 48) = v2 | 8;
  }

  return result;
}

void *sub_188E155B4@<X0>(void *a1@<X8>)
{
  result = UIShadowProperties.path.getter();
  *a1 = result;
  return result;
}

void sub_188E155E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UIShadowProperties.path.setter(v1);
}

uint64_t sub_188E15614()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E1564C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E15684()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E156CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E15704()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1573C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E15780()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E157B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_188E157F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E158A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E158F0()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E15928()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1598C@<X0>(uint64_t *a1@<X8>)
{
  result = _UIComponentGestureRecognizer.componentController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_188E159B8()
{

  sub_189209D40(v0);
}

uint64_t sub_188E15A08()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E15A48@<X0>(uint64_t *a1@<X8>)
{
  sub_18A4A24D8();
  result = sub_18A4A39F8();
  *a1 = result;
  return result;
}

id sub_188E15A98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isForceFixedRateLinksEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_188E15AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E15B44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E15B7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E15BBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E15C04()
{
  type metadata accessor for WeakReferenceTable.WeakReference();
  sub_18A4A7128();
  sub_18A4A7D38();
  swift_getWitnessTable();
  sub_18A4A82B8();
  swift_getWitnessTable();
  sub_18A4A8418();
  swift_getWitnessTable();
  sub_18A4A82A8();

  return swift_getWitnessTable();
}

uint64_t sub_188E15D24()
{
  sub_18A4A7108();

  return swift_getWitnessTable();
}

id sub_188E15DAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hoverStyle];
  *a2 = result;
  return result;
}

uint64_t sub_188E15DFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  return sub_188A53994(v3 + v4, a2);
}

uint64_t sub_188E15E5C@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR___UIHoverStyle__shape);
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  *&v10[9] = *(v2 + 41);
  v9[1] = v4;
  *v10 = v3;
  v9[0] = v5;
  v6 = v2[1];
  *a2 = *v2;
  a2[1] = v6;
  a2[2] = v2[2];
  *(a2 + 41) = *(v2 + 41);
  return sub_188A3F29C(v9, &v8, &qword_1EA934C40);
}

uint64_t sub_188E15ED8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = (*(v4 + 104))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_188E15F34(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 112))(v2, v3, v4);
}

uint64_t sub_188E15F90()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E15FC8()
{
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_188B1F3A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_188E16020()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E16058()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E16090()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_188E160C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E16100()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_188E16148@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_188EAAD34([*a1 cornerStyle], &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_188E16254()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E1629C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_188E162EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

id sub_188E162F8@<X0>(void *a1@<X8>)
{
  result = sub_18922071C();
  *a1 = result;
  return result;
}

uint64_t sub_188E16358()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E163B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E1640C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E16464@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_188E16480(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;
  if (v2 != v3)
  {

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

void sub_188E164D8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 9);
  *(a2 + 9) = v2;
  if (v2 != v3)
  {

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

void sub_188E16530(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 10);
  *(a2 + 10) = v2;
  if (v2 != v3)
  {

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

void sub_188E16588(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 11);
  *(a2 + 11) = v2;
  if (v2 != v3)
  {

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

void sub_188E165E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 12);
  *(a2 + 12) = v2;
  if (v2 != v3)
  {

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
  }
}

id sub_188E16668@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_188E16684(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E166DC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 9);
  *(a2 + 9) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E16734(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 10);
  *(a2 + 10) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E1678C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 11);
  *(a2 + 11) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E167E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 12);
  *(a2 + 12) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E1683C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 13);
  *(a2 + 13) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E16894(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 14);
  *(a2 + 14) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E168EC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 15);
  *(a2 + 15) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E16944(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *(a2 + 16) = v2;
  if (v2 != v3)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E1699C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 17);
  *(a2 + 17) = v2;
  if (v3 != v2)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_188E169F4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 18);
  *(a2 + 18) = v2;
  if (v3 != v2)
  {

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

uint64_t sub_188E16AFC()
{
  sub_188B1F3A0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

double sub_188E16B4C(double a1)
{
  v1 = a1 / 230.769231;
  result = 1.3;
  if (v1 >= 1.3)
  {
    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      return v1;
    }

    else
    {
      result = 1.3;
      if ((*&v1 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        return v1;
      }
    }
  }

  return result;
}

uint64_t sub_188E16BC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_displayLink);
  if (v3)
  {
    result = [v3 isPaused];
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

uint64_t sub_188E16C38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E16C74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_188E16CE0()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E16D18()
{
  v11 = sub_18A4A42B8();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_18A4A3BA8();
  v5 = *(v12 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + ((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;
  v10 = *(v5 + 64);
  v8 = v2 | v6;

  (*(v1 + 8))(v0 + v3, v11);

  (*(v5 + 8))(v0 + v7, v12);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v10, v8 | 7);
}

uint64_t sub_188E16ED0@<X0>(uint64_t *a1@<X8>)
{
  result = UITextFormattingViewController.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_188E16F20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188E16F80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC7090(v1, &selRef_setCustomView_);
}

id sub_188E16FD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) cornerRadius];
  *a2 = v4;
  return result;
}

id sub_188E17038@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) backgroundInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_188E170A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) edgesAddingLayoutMarginsToBackgroundInsets];
  *a2 = result;
  return result;
}

void sub_188E1710C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC7090(v1, &selRef_setBackgroundColor_);
}

void sub_188E1719C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC7090(v1, &selRef_setVisualEffect_);
}

void sub_188E17200(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC7090(v1, &selRef_setImage_);
}

id sub_188E17258@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imageContentMode];
  *a2 = result;
  return result;
}

void sub_188E172C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC7090(v1, &selRef_setStrokeColor_);
}

id sub_188E17348@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) strokeWidth];
  *a2 = v4;
  return result;
}

id sub_188E173A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) strokeOutset];
  *a2 = v4;
  return result;
}

id sub_188E17408@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) _maskedCorners];
  *a2 = result;
  return result;
}

unint64_t sub_188E17470@<X0>(_BYTE *a1@<X8>)
{
  result = UIBackgroundConfiguration._visualEffectAllowsTransparentBlurring.getter();
  *a1 = result & 1;
  return result;
}

id sub_188E174F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = UIBackgroundConfiguration._visualEffectblurClippingMode.getter(&v4);
  *a2 = v4;
  return result;
}

id sub_188E1897C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v5 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v5;
  v3 = v2;

  return v5;
}

float64x2_t sub_188E189F0@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

double sub_188E18A28(double *a1)
{
  result = *a1 * *v1;
  *v1 = result;
  return result;
}

float64x2_t sub_188E18A50@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  v4 = vsubq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

double sub_188E18A68@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

uint64_t sub_188E18AA4()
{
  v0 = sub_189214DF8();

  return v0;
}

double sub_188E18AE0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_188E18C28()
{
  result = sub_18A4A2388();
  qword_1EA931458 = result;
  return result;
}

id sub_188E18C68(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334B0);
  v12[0] = 2;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    LOBYTE(v10) = 2;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

id sub_188E18DF8(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A580);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

id sub_188E18F84(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v12[0] = 0;
  v12[1] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    v10 = 0uLL;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

id sub_188E19110(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v13[3] = type metadata accessor for MaterialBackdropContext();
  if (qword_1ED490180 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA995060;
  v13[0] = qword_1EA995060;
  sub_188A55598(v13, v11);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v11[0] = v11[2];
  v11[1] = v12;
  v6 = *(&v12 + 1);
  sub_188A3F5FC(v11, &qword_1EA934050);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v9 = [v8 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v9;
}

id sub_188E192C0(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933280);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

id sub_188E19450(uint64_t a1)
{

  v2 = sub_18A4A7258();

  v3 = sub_18A4A7258();

  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933490);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

id sub_188E195F0(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F0);
  v4 = swift_allocObject();
  v12[0] = v4;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  sub_188A55598(v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v11[0] = v9;
  v11[1] = v10;
  sub_188A3F5FC(v11, &qword_1EA934050);
  if (*(&v10 + 1))
  {
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

double sub_188E197F0(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 1.79769313e308;
  }

  return result;
}

id sub_188E19848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v8 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v9 = sub_18A4A7258();

  (*(a4 + 16))(&v15, a3, a4);
  if (v16)
  {
    v10 = 1.79769313e308;
  }

  else
  {
    v10 = v15;
  }

  v11 = (*(a4 + 40))(a3, a4);
  v12 = (*(a4 + 48))(a3, a4);
  v13 = [v7 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v13;
}

id sub_188E19A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v8 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v9 = sub_18A4A7258();

  (*(a4 + 16))(&v15, a3, a4);
  v10 = v15;
  v11 = (*(a4 + 40))(a3, a4);
  v12 = (*(a4 + 48))(a3, a4);
  v13 = [v7 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v13;
}

id sub_188E19BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v8 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v9 = sub_18A4A7258();

  v10 = &v16;
  (*(a4 + 16))(&v16, a3, a4);
  if (v17 == 1)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EA931458;
  }

  v11 = *v10;
  v12 = (*(a4 + 40))(a3, a4);
  v13 = (*(a4 + 48))(a3, a4);
  v14 = [v7 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v14;
}

uint64_t sub_188E19D84(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    return qword_1EA931458;
  }

  return result;
}

id sub_188E19E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v20 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - v9;
  v19 = objc_opt_self();
  (*(v6 + 32))(a3, v6);
  v11 = sub_18A4A7258();

  (*(v6 + 24))(a3, v6);
  v12 = sub_18A4A7258();

  (*(v6 + 16))(a3, v6);
  (*(v4 + 24))(&v21, v10, a3, v4);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v13 = v21;
  v14 = (*(v6 + 40))(a3, v6);
  LOBYTE(v4) = (*(v6 + 48))(a3, v6);
  v15 = (*(v6 + 56))(a3, v6);
  v16 = [v19 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v16;
}

id sub_188E1A0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v19 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v18 = objc_opt_self();
  (*(v6 + 32))(a3, v6);
  v11 = sub_18A4A7258();

  (*(v6 + 24))(a3, v6);
  v12 = sub_18A4A7258();

  (*(v6 + 16))(a3, v6);
  (*(v4 + 24))(&v20, v10, a3, v4);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v13 = v20;
  LOBYTE(v4) = (*(v6 + 40))(a3, v6);
  LOBYTE(AssociatedTypeWitness) = (*(v6 + 48))(a3, v6);
  v14 = (*(v6 + 56))(a3, v6);
  v15 = [v18 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v15;
}

id sub_188E1A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v21 - v9;
  (*(a4 + 32))(a3, a4, v8);
  v23 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v22 = sub_18A4A7258();

  (*(a4 + 16))(a3, a4);
  v27[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v27);
  sub_18A4A74E8();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  sub_188A55598(v27, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v25[0] = v25[2];
  v25[1] = v26;
  v11 = *(&v26 + 1);
  sub_188A3F5FC(v25, &qword_1EA934050);
  if (v11)
  {
    v12 = sub_18A4A86A8();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  v14 = (*(a4 + 40))(a3, a4);
  v15 = (*(a4 + 48))(a3, a4);
  v16 = (*(a4 + 56))(a3, a4);
  v18 = v22;
  v17 = v23;
  v19 = [v13 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v19;
}

id sub_188E1A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v18 = objc_opt_self();
  (*(a4 + 32))(a3, a4);
  v10 = sub_18A4A7258();

  (*(a4 + 24))(a3, a4);
  v11 = sub_18A4A7258();

  (*(a4 + 16))(a3, a4);
  sub_18A4A74E8();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v12 = v20;
  LOBYTE(v9) = (*(a4 + 40))(a3, a4);
  v13 = (*(a4 + 48))(a3, a4);
  v14 = (*(a4 + 56))(a3, a4);
  v15 = [v18 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v15;
}

uint64_t sub_188E1A910()
{
  MEMORY[0x18CFEA5B0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_188E1A950()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188E1A998()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188E1A9DC()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0]([v1 hash]);
  return sub_18A4A88E8();
}

uint64_t sub_188E1AA68()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0]([v1 hash]);
  return sub_18A4A88E8();
}

uint64_t sub_188E1AAE0()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_18901A3DC(&type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, sub_188E18C68);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334B0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_188E1AC70()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_18901A704(&type metadata for MorphableProviderTraitDefinition, sub_188E18DF8);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93A580);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E1ADFC()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_18901AA2C(&type metadata for GlassGroupBackdropNameTrait, sub_188E18F84);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_188E1AF8C()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_18901AD54(&type metadata for MaterialBackdropContextTrait, sub_188E19110);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  sub_188A3F29C(v9, &v7, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  type metadata accessor for MaterialBackdropContext();
  if (swift_dynamicCast())
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    return v6;
  }

  else
  {
    if (qword_1ED490180 != -1)
    {
      swift_once();
    }

    v5 = qword_1EA995060;
    sub_188A3F5FC(v9, &qword_1EA934050);
    return v5;
  }
}

uint64_t sub_188E1B1AC()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933280);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

int8x16_t _sSo17UITraitCollectionC5UIKitE21_barButtonItemMetricsAC06_UIBarefG0VSgvg_0@<Q0>(int8x16_t *a1@<X8>)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v4 = sub_18901C740(&type metadata for _UIBarButtonItemMetricsTraitDefinition, sub_188E195F0);
  os_unfair_lock_unlock(v3[2]);
  v5 = [v1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F0);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  result = vandq_s8(v10, v8);
  *a1 = result;
  a1[1] = vandq_s8(v11, v8);
  a1[2].i8[0] = v12 & 1 | ((v6 & 1) == 0);
  return result;
}

uint64_t UITraitCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_188E1B550(a1, a2, a3, &unk_1EFABC0A8, sub_188E35330);
}

{
  return sub_188E1B550(a1, a2, a3, &unk_1EFABC058, sub_188E36B3C);
}

uint64_t sub_188E1B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  [v5 _valueForCGFloatTraitToken_];
  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 == 1.79769313e308)
  {
    return 0;
  }

  else
  {
    return *&v7;
  }
}

id UITraitCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v4;
}

{
  v4 = [v3 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  if (qword_1EA931450 != -1)
  {
    swift_once();
  }

  if (qword_1EA931458 == v4)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_188E1B6FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v4 = sub_188AC80DC(&type metadata for _GlassBackgroundStyleTrait, sub_1891F069C);
  os_unfair_lock_unlock(v3[2]);
  v5 = [v1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  sub_188A3F29C(v12, &v10, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A470);
  if (swift_dynamicCast())
  {
    sub_188C8CD6C(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0x60), a1);
  }

  else
  {
    if (qword_1ED4905B8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for _GlassBackgroundStyle();
    v7 = __swift_project_value_buffer(v6, qword_1ED4A3668);
    sub_188C8CD6C(v7, a1);
  }

  return sub_188A3F5FC(v12, &qword_1EA934050);
}

uint64_t sub_188E1B948@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v4 = sub_18901B3A4(&type metadata for GlassPocketContainerTrait, sub_1891F096C);
  os_unfair_lock_unlock(v3[2]);
  v5 = [v1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  sub_188A3F29C(v20, &v18, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933498);
  if (swift_dynamicCast() && (v6 = v17, v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0), MEMORY[0x1EEE9AC00](v7 - 8), v9 = &v16 - v8, v17))
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x60);
    v11 = sub_18A4A30C8();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, &v6[v10], v11);
    sub_188DC900C(v6);
    (*(v12 + 56))(v9, 0, 1, v11);
    sub_188A3F5FC(v20, &qword_1EA934050);
    return sub_188A3F704(v9, a1, &unk_1EA9334A0);
  }

  else
  {
    if (qword_1ED48FC48 != -1)
    {
      swift_once();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
    v15 = __swift_project_value_buffer(v14, qword_1EA994F18);
    sub_188A3F29C(v15, a1, &unk_1EA9334A0);
    return sub_188A3F5FC(v20, &qword_1EA934050);
  }
}

id UITraitCollection.replacing<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(AssociatedTypeWitness - 8) + 16))();
  sub_188A55598(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v13[2];
  v13[1] = v14;
  v9 = *(&v14 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  v11 = [v5 _traitCollectionByReplacingObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

{
  v5 = [v4 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v5;
}

{
  v8 = *(a4 + 24);
  v15[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v15);
  v8(a2, a3, a4);
  sub_188A55598(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v13[2];
  v13[1] = v14;
  v9 = *(&v14 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  v11 = [v4 _traitCollectionByReplacingObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

{
  (*(a4 + 24))(&v9, a2, a3, a4);
  v7 = [v4 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v7;
}

{
  (*(a4 + 24))(&v9, a2, a3, a4);
  v7 = [v4 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v7;
}

{
  (*(a4 + 24))(&v9, a2, a3, a4);
  v7 = [v4 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v7;
}

id UITraitCollection.replacing<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return sub_188E1CE70(a4, a1, a2, a3, &unk_1EFABC0D0, sub_188CCA300);
}

{
  return sub_188E1CE70(a4, a1, a2, a3, &unk_1EFABC080, sub_188CCA300);
}

id UITraitCollection.replacing<A>(_:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_188E1CF08(a1, a2, a3, a4, a5, &unk_1EFABC0A8, sub_188E35330);
}

{
  return sub_188E1CF08(a1, a2, a3, a4, a5, &unk_1EFABC058, sub_188E36B3C);
}

{
  v6 = v5;
  if (a3)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    a2 = qword_1EA931458;
  }

  v10 = [v6 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v10;
}

id sub_188E1CE70(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v7 = [v6 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v7;
}

id sub_188E1CF08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  if (a3)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = *&a2;
  }

  v9 = [v7 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v9;
}

id UITraitCollection.replacing<A>(_:value:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = [v4 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v5;
}

id UITraitCollection._removing(_:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 _traitCollectionByRemovingTraitToken_];
  swift_unknownObjectRelease();
  return v3;
}

void __swiftcall UITraitCollection.filtering(_:)(UITraitCollection *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v3 = *(a2._rawValue + 2);
  if (v3)
  {
    sub_18A4A8208();
    v5 = (a2._rawValue + 40);
    do
    {
      sub_188A85BF0(*(v5 - 1), 0, 0, *(v5 - 1), *v5);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v6 = sub_18A4A7518();

  [v2 _traitCollectionByFilteringTraitTokens_];
}

id sub_188E1DA78(char a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334B0);
  v12[0] = a1;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v2 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v2)
  {
    LOBYTE(v10) = a1;
    v3 = sub_18A4A8778();
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v4 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v5 = sub_18901A3DC(&type metadata for UITraitResolvesNaturalAlignmentWithBaseWritingDirection, sub_188E18C68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  os_unfair_lock_unlock(v4[2]);
  v7 = [ObjCClassFromMetadata _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

id UITraitCollection.init<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(boxed_opaque_existential_0, a2, AssociatedTypeWitness);
  sub_188A55598(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v15[0] = v15[2];
  v15[1] = v16;
  v10 = *(&v16 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050);
  if (v10)
  {
    v11 = sub_18A4A86A8();
  }

  else
  {
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v9 + 8))(a2, AssociatedTypeWitness);
  return v13;
}

{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata _traitCollectionWithNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v8;
}

{
  v7 = *(a4 + 24);
  v16[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v16);
  v7(a2, a3, a4);
  sub_188A55598(v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v14[0] = v14[2];
  v14[1] = v15;
  v8 = *(&v15 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050);
  if (v8)
  {
    v9 = sub_18A4A86A8();
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v11;
}

{
  (*(a4 + 24))(&v12, a2, a3, a4);
  v7 = v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v9;
}

{
  (*(a4 + 24))(&v12, a2, a3, a4);
  v7 = v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v9;
}

{
  (*(a4 + 24))(&v12, a2, a3, a4);
  v7 = v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata _traitCollectionWithNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v9;
}

id UITraitCollection.init<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return sub_188E1DE98(a4, a1, a2, a3, &unk_1EFABC0D0, sub_188CCA300);
}

{
  return sub_188E1DE98(a4, a1, a2, a3, &unk_1EFABC080, sub_188CCA300);
}

id UITraitCollection.init<A>(_:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_188E1DF64(a1, a2, a3, a4, a5, &unk_1EFABC0A8, sub_188E35330);
}

{
  return sub_188E1DF64(a1, a2, a3, a4, a5, &unk_1EFABC058, sub_188E36B3C);
}

{
  if (a3)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    a2 = qword_1EA931458;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata _traitCollectionWithNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v9;
}

id sub_188E1DE98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v12;
}

id sub_188E1DF64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  if (a3)
  {
    v11 = 1.79769313e308;
  }

  else
  {
    v11 = *&a2;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v13;
}

id UITraitCollection.init<A>(_:value:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata _traitCollectionWithNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v8;
}

id sub_188E1E258(uint64_t a1)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v2 = _s5UIKit26UITraitTypesettingLanguageV15_customRawValue3forSSSg10Foundation6LocaleV0D0VSg_tFZ_0(a1);
  v4 = v3;
  v15[0] = v2;
  v15[1] = v3;
  sub_188A55598(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v12[0] = v13;
  v12[1] = v14;
  v5 = *(&v14 + 1);
  sub_188A3F5FC(v12, &qword_1EA934050);
  if (v5)
  {
    *&v13 = v2;
    *(&v13 + 1) = v4;

    v6 = sub_18A4A8778();
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v7 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v8 = sub_188BA211C(&type metadata for UITraitTypesettingLanguage, sub_188BA0740);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  os_unfair_lock_unlock(v7[2]);
  v10 = [ObjCClassFromMetadata _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_188A3F5FC(a1, &qword_1EA932260);
  return v10;
}

id UITraitCollection.init<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v17[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v17);
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  sub_188A55598(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v15[0] = v15[2];
  v15[1] = v16;
  v9 = *(&v16 + 1);
  sub_188A3F5FC(v15, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata _traitCollectionWithObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v13 = swift_checkMetadataState();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v10;
}

{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata _traitCollectionWithCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v10;
}

{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata _traitCollectionWithNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_188E1EFC0(void *a1)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v2 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v3 = sub_188A75858(&type metadata for ScrollPocketCollectorModelTrait, sub_188AD9430);
  os_unfair_lock_unlock(v2[2]);
  v4 = [a1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  sub_188A3F29C(v9, &v7, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933150);
  if (swift_dynamicCast())
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    return v6;
  }

  else
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    return 0;
  }
}

uint64_t sub_188E1F1B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  [a2 _valueForCGFloatTraitToken_];
  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 == 1.79769313e308)
  {
    return 0;
  }

  else
  {
    return *&v7;
  }
}

uint64_t sub_188E1F234(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  if (a2)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = *&a1;
  }

  [*v7 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

id sub_188E1F2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_188E1F330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*v4 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

id sub_188E1F3C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  if (qword_1EA931450 != -1)
  {
    swift_once();
  }

  if (qword_1EA931458 == v4)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_188E1F478(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    a1 = qword_1EA931458;
  }

  [*v5 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

BOOL sub_188E1F558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  return v4 != 0;
}

uint64_t sub_188E1F5D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*v4 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

uint64_t sub_188E1F664@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = *(a3 + 8);
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v24 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v27 = sub_18A4A7D38();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = [a1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  sub_188A3F29C(v34, &v32, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if ((v18 & 1) == 0)
  {
    v19(v12, 1, 1, v9);
    (*(v10 + 8))(v12, v27);
    goto LABEL_8;
  }

  v19(v12, 0, 1, v9);
  (*(v13 + 32))(v16, v12, v9);
  v20 = v28;
  (*(a3 + 32))(v16, a2, a3);
  (*(v13 + 8))(v16, v9);
  v21 = AssociatedTypeWitness;
  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v25 + 8))(v20, v26);
LABEL_8:
    (*(v30 + 16))(a2);
    return sub_188A3F5FC(v34, &qword_1EA934050);
  }

  sub_188A3F5FC(v34, &qword_1EA934050);
  return (*(v22 + 32))(v31, v20, v21);
}

uint64_t sub_188E1FAB8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  [a1 _valueForCGFloatTraitToken_];
  v14 = v13;
  swift_unknownObjectRelease();
  v19 = v14;
  (*(a3 + 32))(&v19, a2, a3);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
  }

  (*(v8 + 16))(a2, v8);
  result = (v16)(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v18 + 8))(v12, v10);
  }

  return result;
}

uint64_t sub_188E1FCF4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  [a1 _valueForCGFloatTraitToken_];
  v14 = v13;
  swift_unknownObjectRelease();
  v19 = v14;
  (*(a3 + 32))(&v19, a2, a3);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
  }

  (*(v8 + 16))(a2, v8);
  result = (v16)(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v18 + 8))(v12, v10);
  }

  return result;
}

uint64_t sub_188E1FF30@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v17 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = [a1 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  v18 = v13;
  (*(a3 + 32))(&v18, a2, a3);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v14 + 32))(a4, v12, AssociatedTypeWitness);
  }

  (*(v8 + 16))(a2, v8);
  result = (v15)(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v17 + 8))(v12, v10);
  }

  return result;
}

uint64_t sub_188E20164@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  [a1 _valueForCGFloatTraitToken_];
  v9 = v8;
  swift_unknownObjectRelease();
  v11 = v9;
  return sub_188BA39A4(&v11, a2, a3, a5);
}

uint64_t sub_188E2022C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  [a1 _valueForCGFloatTraitToken_];
  v9 = v8;
  swift_unknownObjectRelease();
  v11 = v9;
  return sub_188BA39A4(&v11, a2, a3, a5);
}

void (*sub_188E202F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  sub_188C620F8(*v4, a3, a4, v15);
  return sub_188E2043C;
}

void sub_188E2043C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_188A75664(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_188A75664((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_188E20544(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 24) = a4;
  *(v9 + 32) = v4;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *v9 = sub_188BA55DC(a2, *v4, a3, a4, &unk_1EFABC0D0, sub_188CCA300);
  return sub_188E20600;
}

void (*sub_188E2069C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = sub_188E1F1B8(a2, *v4, a3, a4, &unk_1EFABC0A8, sub_188E35330);
  *(v10 + 8) = v11 & 1;
  return sub_188E20760;
}

void (*sub_188E207F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 24) = a4;
  *(v9 + 32) = v4;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *v9 = sub_188BA55DC(a2, *v4, a3, a4, &unk_1EFABC080, sub_188CCA300);
  return sub_188E208B0;
}

void sub_188E208D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *a1;
  sub_188C11FD0(*v4, *(*a1 + 8), *(v4 + 16), *(*a1 + 24), a3, a4);

  free(v4);
}

void (*sub_188E20998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = sub_188E1F1B8(a2, *v4, a3, a4, &unk_1EFABC058, sub_188E36B3C);
  *(v10 + 8) = v11 & 1;
  return sub_188E20A5C;
}

void sub_188E20A7C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *a1;
  sub_188E1F234(**a1, *(*a1 + 8), (*a1)[2], (*a1)[3], (*a1)[4], a3, a4);

  free(v4);
}

void (*sub_188E20AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = sub_188E1F2B8(a2, *v4, a3, a4);
  return sub_188E20B80;
}

void sub_188E20B80(uint64_t **a1)
{
  v1 = *a1;
  sub_188E1F330(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void (*sub_188E20BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = sub_188E1F3C0(a2, *v4, a3, a4);
  *(v10 + 8) = v11 & 1;
  return sub_188E20C9C;
}

void sub_188E20C9C(uint64_t **a1)
{
  v1 = *a1;
  sub_188E1F478(**a1, *(*a1 + 8), (*a1)[2], (*a1)[3], (*a1)[4]);

  free(v1);
}

void (*sub_188E20CF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 16) = a4;
  *(v9 + 24) = v4;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 32) = sub_188E1F558(a2, *v4, a3, a4);
  return sub_188E20D9C;
}

void sub_188E20D9C(uint64_t **a1)
{
  v1 = *a1;
  sub_188E1F5D4(*(*a1 + 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

void (*sub_188E20DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  sub_188E1F664(*v4, a3, a4, v15);
  return sub_188E20F38;
}

void (*sub_188E20F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  sub_188E1FAB8(*v4, a3, a4, v15);
  return sub_188E210C0;
}

void (*sub_188E21100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  sub_188E1FCF4(*v4, a3, a4, v15);
  return sub_188E21248;
}

void (*sub_188E21288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  sub_188E1FF30(*v4, a3, a4, v15);
  return sub_188E213D0;
}

void sub_188E213E8(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[6], v6, v7);
    a3(v5, v11, v10, v9);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    a3((*a1)[7], v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

void (*sub_188E214FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  sub_188BA5D24(*v5, a3, a4, a5, v17);
  return sub_188E21658;
}

void (*sub_188E2169C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  sub_188E20164(*v5, a3, a4, a5, v17);
  return sub_188E217F8;
}

void (*sub_188E2183C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  sub_188E2022C(*v5, a3, a4, a5, v17);
  return sub_188E21998;
}

void (*sub_188E219B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  sub_188BA5C34(*v5, a3, a4, a5, v17);
  return sub_188E21B0C;
}

void sub_188E21B24(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = (*a1)[7];
  v5 = (*a1)[8];
  v6 = (*a1)[5];
  v7 = (*a1)[6];
  v8 = (*a1)[3];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v7 + 16))(v4, v5, v6);
    a3(v4, v11, v10, v9, v8);
    v12 = *(v7 + 8);
    v12(v4, v6);
    v12(v5, v6);
  }

  else
  {
    a3((*a1)[8], v11, v10, v9, v8);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t sub_188E21C54()
{
  v1 = [*v0 description];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t sub_188E21CAC()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t UITraitCollection.init(mutations:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188C01D58;
  *(v6 + 24) = v5;
  v10[4] = sub_188A86D18;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A7AC24;
  v10[3] = &block_descriptor;
  v7 = _Block_copy(v10);

  v8 = [ObjCClassFromMetadata traitCollectionWithTraits_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_188E21FE4(uint64_t a1, uint64_t a2)
{
  v8[3] = &_s13MutableTraitsVN;
  v8[4] = &off_1EFABCA98;
  v8[0] = swift_dynamicCastObjCProtocolUnconditional();
  v3 = *__swift_mutable_project_boxed_opaque_existential_1(v8, &_s13MutableTraitsVN);
  v4 = qword_1ED491B40;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v5 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v6 = sub_188D63234(&type metadata for UITraitUserInterfaceStyle, sub_188EB2DD4);
  os_unfair_lock_unlock(v5[2]);
  [v3 _setNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

char *UITraitCollection._specifiedTraits.getter()
{
  v1 = [v0 _specifiedTraitTokensArray];
  sub_188A34624(0, &qword_1ED48FD80);
  v2 = sub_18A4A7548();

  v3 = sub_188BEE3B4(v2);

  return v3;
}

id UITraitCollection._isSpecified(_:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 _isTraitTokenSpecified_];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t UITraitOverrides.contains(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = sub_188A85BF0(a1, 0, 0, a1, a2);
  v7 = [(_UITraitOverrides *)v5 _containsTraitToken:v6];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t UITraitOverrides.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(*v3 + 16);
  v12 = [v11 _objectForTraitToken_];

  swift_unknownObjectRelease();
  if (v12)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  sub_188A3F29C(v20, &v18, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  if (swift_dynamicCast())
  {
    sub_188A3F5FC(v20, &qword_1EA934050);
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 56))(v10, 0, 1, AssociatedTypeWitness);
    return (*(v13 + 32))(a3, v10, AssociatedTypeWitness);
  }

  else
  {
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 56))(v10, 1, 1, AssociatedTypeWitness);
    (*(a2 + 16))(a1, a2);
    sub_188A3F5FC(v20, &qword_1EA934050);
    result = (*(v15 + 48))(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v17 + 8))(v10, v8);
    }
  }

  return result;
}

{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(*v3 + 16);
  [v12 _valueForCGFloatTraitToken_];
  v14 = v13;

  swift_unknownObjectRelease();
  v19 = v14;
  (*(a2 + 32))(&v19, a1, a2);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 48);
  if (v16(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v7 + 16))(a1, v7);
  result = (v16)(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v18 + 8))(v11, v9);
  }

  return result;
}

{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(*v3 + 16);
  [v12 _valueForCGFloatTraitToken_];
  v14 = v13;

  swift_unknownObjectRelease();
  v19 = v14;
  (*(a2 + 32))(&v19, a1, a2);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 48);
  if (v16(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v15 + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v7 + 16))(a1, v7);
  result = (v16)(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v18 + 8))(v11, v9);
  }

  return result;
}

{
  v18 = a3;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(*v3 + 16);
  v12 = [v11 _valueForNSIntegerTraitToken_];

  swift_unknownObjectRelease();
  v19 = v12;
  (*(a2 + 32))(&v19, a1, a2);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v13 + 32))(v18, v10, AssociatedTypeWitness);
  }

  (*(v6 + 16))(a1, v6);
  result = (v14)(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v17 + 8))(v10, v8);
  }

  return result;
}

uint64_t UITraitOverrides.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188C1B6D0(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

{
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

{
  return sub_188E24848(a1, a2, a3, a4, sub_188E31F50);
}

{
  return sub_188E24848(a1, a2, a3, a4, sub_188E32140);
}

{
  return sub_188E24848(a1, a2, a3, a4, sub_188E32264);
}

{
  return sub_188E24848(a1, a2, a3, a4, sub_188E32388);
}

void (*UITraitOverrides.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  UITraitOverrides.subscript.getter(a3, a4, v15);
  return sub_188E227C0;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  UITraitOverrides.subscript.getter(a2, a3, a4, v15);
  return sub_188E23E28;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  UITraitOverrides.subscript.getter(a3, a4, v15);
  return sub_188E241FC;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  UITraitOverrides.subscript.getter(a3, a4, v15);
  return sub_188E245D0;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  UITraitOverrides.subscript.getter(a3, a4, v15);
  return sub_188E24A2C;
}

void sub_188E227C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_188C1B6D0(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_188C1B6D0((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double UITraitOverrides.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_188E22B00(a1, a2, a3, &unk_1EFABC0D0, sub_188CCA300);
}

{
  return sub_188E22B00(a1, a2, a3, &unk_1EFABC080, sub_188CCA300);
}

uint64_t UITraitOverrides.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return sub_188E22BC4(a4, a1, a2, a3, &unk_1EFABC0D0, sub_188CCA300);
}

{
  return sub_188E22BC4(a4, a1, a2, a3, &unk_1EFABC080, sub_188CCA300);
}

void (*UITraitOverrides.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(double **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 24) = a4;
  *(v9 + 32) = v4;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  return sub_188E229B8;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 24) = a4;
  *(v9 + 32) = v4;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  return sub_188E22D78;
}

uint64_t UITraitOverrides.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_188E22DFC(a1, a2, a3, &unk_1EFABC0A8, sub_188E35330);
}

{
  return sub_188E22DFC(a1, a2, a3, &unk_1EFABC058, sub_188E36B3C);
}

uint64_t UITraitOverrides.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_188E22ED4(a1, a2, a3, a4, a5, &unk_1EFABC0A8, sub_188E35330);
}

{
  return sub_188E22ED4(a1, a2, a3, a4, a5, &unk_1EFABC058, sub_188E36B3C);
}

{
  if (a2)
  {
    if (qword_1EA931450 != -1)
    {
      swift_once();
    }

    a1 = qword_1EA931458;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(*v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = [(_UITraitOverrides *)*(*v5 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;

    *v5 = v11;
  }

  v12 = v10;
  [v12 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

void (*UITraitOverrides.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11 & 1;
  return sub_188E22AC8;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11 & 1;
  return sub_188E230B0;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11 & 1;
  return sub_188E23640;
}

double sub_188E22B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = *(*v5 + 16);
  [v10 _valueForCGFloatTraitToken_];
  v12 = v11;

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_188E22BC4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(*v6 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = [(_UITraitOverrides *)*(*v6 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;

    *v6 = v14;
  }

  v15 = v13;
  [v15 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

void sub_188E22D90(double **a1, uint64_t a2, void (*a3)(void, void, void, double))
{
  v3 = *a1;
  a3(*(*a1 + 1), *(v3 + 2), *(*a1 + 3), *v3);

  free(v3);
}

uint64_t sub_188E22DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = *(*v5 + 16);
  [v10 _valueForCGFloatTraitToken_];
  v12 = v11;

  swift_unknownObjectRelease();
  if (v12 == 1.79769313e308)
  {
    return 0;
  }

  else
  {
    return *&v12;
  }
}

uint64_t sub_188E22ED4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(*v7 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = [(_UITraitOverrides *)*(*v7 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;

    *v7 = v16;
  }

  if (a2)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    v17 = *&a1;
  }

  v18 = v15;
  [v18 _setCGFloatValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

id UITraitOverrides.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + 16);
  v7 = [v6 _valueForNSIntegerTraitToken_];

  swift_unknownObjectRelease();
  return v7;
}

{
  v6 = *(*v3 + 16);
  v7 = [v6 _valueForNSIntegerTraitToken_];

  swift_unknownObjectRelease();
  if (qword_1EA931450 != -1)
  {
    swift_once();
  }

  if (qword_1EA931458 == v7)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void (*UITraitOverrides.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = UITraitOverrides.subscript.getter(a2, a3, a4);
  return sub_188E23320;
}

void sub_188E23320(uint64_t **a1)
{
  v1 = *a1;
  UITraitOverrides.subscript.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void sub_188E23658(void **a1, uint64_t a2, void (*a3)(void, void, void, void, void))
{
  v3 = *a1;
  a3(**a1, *(*a1 + 8), (*a1)[2], (*a1)[3], (*a1)[4]);

  free(v3);
}

BOOL UITraitOverrides.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + 16);
  v7 = [v6 _valueForNSIntegerTraitToken_];

  swift_unknownObjectRelease();
  return v7 != 0;
}

void (*UITraitOverrides.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 16) = a4;
  *(v9 + 24) = v4;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 32) = UITraitOverrides.subscript.getter(a2, a3, a4);
  return sub_188E23800;
}

void sub_188E23800(uint64_t **a1)
{
  v1 = *a1;
  UITraitOverrides.subscript.setter(*(*a1 + 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t UITraitOverrides.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v31 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v28 = sub_18A4A7D38();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = *(*v4 + 16);
  v32 = a1;
  v19 = [v18 _objectForTraitToken_];

  swift_unknownObjectRelease();
  if (v19)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  sub_188A3F29C(v36, &v34, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v13, 1, 1, v10);
    (*(v11 + 8))(v13, v28);
    goto LABEL_8;
  }

  v21(v13, 0, 1, v10);
  (*(v14 + 32))(v17, v13, v10);
  v22 = v29;
  (*(a3 + 32))(v17, a2, a3);
  (*(v14 + 8))(v17, v10);
  v23 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  if ((*(v24 + 48))(v22, 1, AssociatedTypeWitness) == 1)
  {
    (*(v26 + 8))(v22, v27);
LABEL_8:
    (*(v31 + 16))(a2);
    return sub_188A3F5FC(v36, &qword_1EA934050);
  }

  sub_188A3F5FC(v36, &qword_1EA934050);
  return (*(v24 + 32))(v33, v22, v23);
}

uint64_t sub_188E24848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);

  return v7(a1, AssociatedTypeWitness);
}

void sub_188E24A44(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[6], v6, v7);
    a3(v5, v11, v10, v9);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    a3((*a1)[7], v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t UITraitOverrides.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *(*v4 + 16);
  v23 = a3;
  v17 = [v16 _objectForTraitToken_];

  swift_unknownObjectRelease();
  if (v17)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  sub_188A3F29C(v27, &v25, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    sub_188BA39A4(v15, a1, a2, v24);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19(v11, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v11, v22);
    (*(a2 + 16))(a1, a2);
  }

  return sub_188A3F5FC(v27, &qword_1EA934050);
}

{
  v9 = *(*v4 + 16);
  [v9 _valueForCGFloatTraitToken_];
  v11 = v10;

  swift_unknownObjectRelease();
  v13 = v11;
  return sub_188BA39A4(&v13, a1, a2, a4);
}

{
  v9 = *(*v4 + 16);
  [v9 _valueForCGFloatTraitToken_];
  v11 = v10;

  swift_unknownObjectRelease();
  v13 = v11;
  return sub_188BA39A4(&v13, a1, a2, a4);
}

{
  v9 = *(*v4 + 16);
  v10 = [v9 _valueForNSIntegerTraitToken_];

  swift_unknownObjectRelease();
  v12 = v10;
  return sub_188BA39A4(&v12, a1, a2, a4);
}

uint64_t UITraitOverrides.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_188E25610(a1, a2, a3, a4, a5, sub_188E324AC);
}

{
  return sub_188E25610(a1, a2, a3, a4, a5, sub_188E326D0);
}

{
  return sub_188E25610(a1, a2, a3, a4, a5, sub_188E32814);
}

{
  return sub_188E25610(a1, a2, a3, a4, a5, sub_188C12A20);
}

void (*UITraitOverrides.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  UITraitOverrides.subscript.getter(a3, a4, a5, v17);
  return sub_188E25018;
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  UITraitOverrides.subscript.getter(a3, a4, a5, v17);
  return sub_188E25290;
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  UITraitOverrides.subscript.getter(a3, a4, a5, v17);
  return sub_188E25508;
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
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
  UITraitOverrides.subscript.getter(a3, a4, a5, v17);
  return sub_188E25808;
}

uint64_t sub_188E25610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void sub_188E25820(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = (*a1)[7];
  v5 = (*a1)[8];
  v6 = (*a1)[5];
  v7 = (*a1)[6];
  v8 = (*a1)[3];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v7 + 16))(v4, v5, v6);
    a3(v4, v11, v10, v9, v8);
    v12 = *(v7 + 8);
    v12(v4, v6);
    v12(v5, v6);
  }

  else
  {
    a3((*a1)[8], v11, v10, v9, v8);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t (*sub_188E25954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E259EC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E25B30;
}

uint64_t (*sub_188E25B3C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25C88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25DD0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E25FD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E26080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = UITraitOverrides.subscript.modify(v8, a2, a3, a4);
  return sub_188E36B6C;
}

uint64_t (*sub_188E2612C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = UITraitOverrides.subscript.modify(v10, a2, a3, a4, a5);
  return sub_188E36B6C;
}

uint64_t (*sub_188E261E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = UITraitOverrides.subscript.modify(v10, a2, a3, a4, a5);
  return sub_188E36B6C;
}

uint64_t (*sub_188E262A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = UITraitOverrides.subscript.modify(v10, a2, a3, a4, a5);
  return sub_188E36B6C;
}

uint64_t (*sub_188E26348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = UITraitOverrides.subscript.modify(v10, a2, a3, a4, a5);
  return sub_188E36B6C;
}

void sub_188E263E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t _s5UIKit26UIListContentConfigurationV11descriptionSSvg_0()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t UITraitOverrides.customMirror.getter()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_188E26650()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

void sub_188E26818(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1();
  v6 = [(UITraitCollection *)v5 _incrementedBackgroundLevel];

  v7 = a1();
  v8 = [v7 userInterfaceLevel];

  if (v8 != v6)
  {
    v12[3] = &_s13MutableTraitsVN;
    v12[4] = &off_1EFABCA98;
    v12[0] = a3();
    v9 = *__swift_mutable_project_boxed_opaque_existential_1(v12, &_s13MutableTraitsVN);
    if (qword_1ED491B40 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v10 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v11 = sub_18901DB94(&type metadata for UITraitUserInterfaceLevel, sub_188EB38F4);
    os_unfair_lock_unlock(v10[2]);
    [v9 _setNSIntegerValue_forTraitToken_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }
}

uint64_t sub_188E269B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = &_s13MutableTraitsVN;
  v8 = &off_1EFABCA98;
  v6[0] = a3();
  __swift_mutable_project_boxed_opaque_existential_1(v6, &_s13MutableTraitsVN);
  sub_18914BD6C(0, &_s13MutableTraitsVN, &off_1EFABCA98);
  v3 = v7;
  v4 = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  sub_188A91870(0, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v6);
}

uint64_t sub_188E26A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  v6 = sub_188E1EFC0(v5);
  result = swift_unknownObjectRelease();
  if (v6)
  {

    v9[3] = &_s13MutableTraitsVN;
    v9[4] = &off_1EFABCA98;
    v9[0] = (a4)(v8);
    __swift_mutable_project_boxed_opaque_existential_1(v9, &_s13MutableTraitsVN);
    sub_188E3199C(0);
    return __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  return result;
}

void (*UIView.traitOverrides.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [(UIView *)v1 _traitOverrides];
  v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_188E26BD8;
}

void (*UIViewController.traitOverrides.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [(UIViewController *)v1 _traitOverrides];
  v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_188E26CDC;
}

void (*UIPresentationController.traitOverrides.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [(UIPresentationController *)v1 _traitOverrides];
  v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_188E26E38;
}

uint64_t sub_188E26EC8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = a2(*a1);
  v5 = [(_UITraitOverrides *)v4 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a3 = result;
  return result;
}

void sub_188E26F5C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v7 = a5(*a2);
  v6 = *(v5 + 16);
  [(_UITraitOverrides *)v7 _replaceWithOverrides:v6];
}

void (*UIWindowScene.traitOverrides.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [(UIWindowScene *)v1 _traitOverrides];
  v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  return sub_188E27064;
}

void sub_188E2707C(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {

    v6 = a3(v5);
    v7 = *(v4 + 16);

    [(_UITraitOverrides *)v6 _replaceWithOverrides:v7];
  }

  else
  {
    v6 = a3(a1[1]);
    v7 = *(v4 + 16);

    [(_UITraitOverrides *)v6 _replaceWithOverrides:v7];
  }
}

id sub_188E27174()
{
  result = [objc_allocWithZone(UITraitCollection) init];
  qword_1ED48E720 = result;
  return result;
}

uint64_t UIMutableTraits.userInterfaceIdiom.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&unk_1EA932230, type metadata accessor for UIUserInterfaceIdiom);
  v4(&v7, &type metadata for UITraitUserInterfaceIdiom, &type metadata for UITraitUserInterfaceIdiom, &protocol witness table for UITraitUserInterfaceIdiom, v5, a1, a2);
  return v7;
}

uint64_t sub_188E273FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.userInterfaceIdiom.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.userInterfaceIdiom.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&unk_1EA932230, type metadata accessor for UIUserInterfaceIdiom);
  return v5(&v8, &type metadata for UITraitUserInterfaceIdiom, &type metadata for UITraitUserInterfaceIdiom, &protocol witness table for UITraitUserInterfaceIdiom, v6, a2, a3);
}

void (*UIMutableTraits.userInterfaceIdiom.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&unk_1EA932230, type metadata accessor for UIUserInterfaceIdiom);
  v8(&type metadata for UITraitUserInterfaceIdiom, &type metadata for UITraitUserInterfaceIdiom, &protocol witness table for UITraitUserInterfaceIdiom, v9, a2, a3);
  return sub_188E27604;
}

void sub_188E27604(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&unk_1EA932230, type metadata accessor for UIUserInterfaceIdiom);
  v4(v1, &type metadata for UITraitUserInterfaceIdiom, &type metadata for UITraitUserInterfaceIdiom, &protocol witness table for UITraitUserInterfaceIdiom, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E27868@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.userInterfaceStyle.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.userInterfaceStyle.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle);
  v8(&type metadata for UITraitUserInterfaceStyle, &type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, v9, a2, a3);
  return sub_188E279C4;
}

void sub_188E279C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&unk_1ED4910B0, type metadata accessor for UIUserInterfaceStyle);
  v4(v1, &type metadata for UITraitUserInterfaceStyle, &type metadata for UITraitUserInterfaceStyle, &protocol witness table for UITraitUserInterfaceStyle, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E27C28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.layoutDirection.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.layoutDirection.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1ED490C60, type metadata accessor for UITraitEnvironmentLayoutDirection);
  v8(&type metadata for UITraitLayoutDirection, &type metadata for UITraitLayoutDirection, &protocol witness table for UITraitLayoutDirection, v9, a2, a3);
  return sub_188E27D84;
}

void sub_188E27D84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1ED490C60, type metadata accessor for UITraitEnvironmentLayoutDirection);
  v4(v1, &type metadata for UITraitLayoutDirection, &type metadata for UITraitLayoutDirection, &protocol witness table for UITraitLayoutDirection, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E27FE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = UIMutableTraits.displayScale.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

uint64_t (*UIMutableTraits.displayScale.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = v3;
  *(a1 + 8) = a2;
  *a1 = (*(a3 + 32))(&type metadata for UITraitDisplayScale, &type metadata for UITraitDisplayScale, &protocol witness table for UITraitDisplayScale, a2, a3);
  return sub_188E280C8;
}

uint64_t sub_188E28284@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.horizontalSizeClass.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.horizontalSizeClass.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v8(&type metadata for UITraitHorizontalSizeClass, &type metadata for UITraitHorizontalSizeClass, &protocol witness table for UITraitHorizontalSizeClass, v9, a2, a3);
  return sub_188E283E0;
}

void sub_188E283E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v4(v1, &type metadata for UITraitHorizontalSizeClass, &type metadata for UITraitHorizontalSizeClass, &protocol witness table for UITraitHorizontalSizeClass, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E28644@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.verticalSizeClass.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.verticalSizeClass.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v8(&type metadata for UITraitVerticalSizeClass, &type metadata for UITraitVerticalSizeClass, &protocol witness table for UITraitVerticalSizeClass, v9, a2, a3);
  return sub_188E287A0;
}

void sub_188E287A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1ED491048, type metadata accessor for UIUserInterfaceSizeClass);
  v4(v1, &type metadata for UITraitVerticalSizeClass, &type metadata for UITraitVerticalSizeClass, &protocol witness table for UITraitVerticalSizeClass, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.forceTouchCapability.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA932240, type metadata accessor for UIForceTouchCapability);
  v4(&v7, &type metadata for UITraitForceTouchCapability, &type metadata for UITraitForceTouchCapability, &protocol witness table for UITraitForceTouchCapability, v5, a1, a2);
  return v7;
}

uint64_t sub_188E28AB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.forceTouchCapability.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.forceTouchCapability.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA932240, type metadata accessor for UIForceTouchCapability);
  return v5(&v8, &type metadata for UITraitForceTouchCapability, &type metadata for UITraitForceTouchCapability, &protocol witness table for UITraitForceTouchCapability, v6, a2, a3);
}

void (*UIMutableTraits.forceTouchCapability.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1EA932240, type metadata accessor for UIForceTouchCapability);
  v8(&type metadata for UITraitForceTouchCapability, &type metadata for UITraitForceTouchCapability, &protocol witness table for UITraitForceTouchCapability, v9, a2, a3);
  return sub_188E28CB8;
}

void sub_188E28CB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA932240, type metadata accessor for UIForceTouchCapability);
  v4(v1, &type metadata for UITraitForceTouchCapability, &type metadata for UITraitForceTouchCapability, &protocol witness table for UITraitForceTouchCapability, v5, v3, v2);

  free(v1);
}

void sub_188E28D74()
{
  if (qword_1ED48E718 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED48E720;
  v1 = [v0 preferredContentSizeCategory];

  qword_1EA9316A0 = v1;
}

id static UITraitPreferredContentSizeCategory.defaultValue.getter()
{
  if (qword_1EA931698 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9316A0;

  return v1;
}

id sub_188E28F28@<X0>(void *a1@<X8>)
{
  if (qword_1EA931698 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EA9316A0;
  *a1 = qword_1EA9316A0;

  return v2;
}

uint64_t sub_188E2900C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.preferredContentSizeCategory.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.preferredContentSizeCategory.modify(void *a1, uint64_t a2, uint64_t a3))(id **a1, char a2)
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
  v8 = *(a3 + 296);
  v9 = sub_188AFC388(&unk_1ED490C98, type metadata accessor for UIContentSizeCategory);
  v8(&type metadata for UITraitPreferredContentSizeCategory, &type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, v9, a2, a3);
  return sub_188E2917C;
}

void sub_188E2917C(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[3];
  v5 = (*a1)[2];
  if (a2)
  {
    *v2 = v3;
    v6 = v4[38];
    v7 = sub_188AFC388(&unk_1ED490C98, type metadata accessor for UIContentSizeCategory);
    v6(v2, &type metadata for UITraitPreferredContentSizeCategory, &type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, v7, v5, v4);
  }

  else
  {
    *v2 = v3;
    v8 = v4[38];
    v9 = sub_188AFC388(&unk_1ED490C98, type metadata accessor for UIContentSizeCategory);
    v8(v2, &type metadata for UITraitPreferredContentSizeCategory, &type metadata for UITraitPreferredContentSizeCategory, &protocol witness table for UITraitPreferredContentSizeCategory, v9, v5, v4);
  }

  free(v2);
}

uint64_t sub_188E2946C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.displayGamut.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.displayGamut.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1ED490CB0, type metadata accessor for UIDisplayGamut);
  v8(&type metadata for UITraitDisplayGamut, &type metadata for UITraitDisplayGamut, &protocol witness table for UITraitDisplayGamut, v9, a2, a3);
  return sub_188E295C8;
}

void sub_188E295C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1ED490CB0, type metadata accessor for UIDisplayGamut);
  v4(v1, &type metadata for UITraitDisplayGamut, &type metadata for UITraitDisplayGamut, &protocol witness table for UITraitDisplayGamut, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E2982C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.accessibilityContrast.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.accessibilityContrast.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&unk_1ED490C88, type metadata accessor for UIAccessibilityContrast);
  v8(&type metadata for UITraitAccessibilityContrast, &type metadata for UITraitAccessibilityContrast, &protocol witness table for UITraitAccessibilityContrast, v9, a2, a3);
  return sub_188E29988;
}

void sub_188E29988(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&unk_1ED490C88, type metadata accessor for UIAccessibilityContrast);
  v4(v1, &type metadata for UITraitAccessibilityContrast, &type metadata for UITraitAccessibilityContrast, &protocol witness table for UITraitAccessibilityContrast, v5, v3, v2);

  free(v1);
}

uint64_t sub_188E29BEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.userInterfaceLevel.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.userInterfaceLevel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(qword_1ED4906D0, type metadata accessor for UIUserInterfaceLevel);
  v8(&type metadata for UITraitUserInterfaceLevel, &type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, v9, a2, a3);
  return sub_188E29D48;
}

void sub_188E29D48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(qword_1ED4906D0, type metadata accessor for UIUserInterfaceLevel);
  v4(v1, &type metadata for UITraitUserInterfaceLevel, &type metadata for UITraitUserInterfaceLevel, &protocol witness table for UITraitUserInterfaceLevel, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.legibilityWeight.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&qword_1EA92E818, type metadata accessor for UILegibilityWeight);
  v4(&v7, &type metadata for UITraitLegibilityWeight, &type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2A058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.legibilityWeight.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t UIMutableTraits.legibilityWeight.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188AFC388(&qword_1EA92E818, type metadata accessor for UILegibilityWeight);
  return v5(&v8, &type metadata for UITraitLegibilityWeight, &type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, v6, a2, a3);
}

void (*UIMutableTraits.legibilityWeight.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&qword_1EA92E818, type metadata accessor for UILegibilityWeight);
  v8(&type metadata for UITraitLegibilityWeight, &type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, v9, a2, a3);
  return sub_188E2A260;
}

void sub_188E2A260(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188AFC388(&qword_1EA92E818, type metadata accessor for UILegibilityWeight);
  v4(v1, &type metadata for UITraitLegibilityWeight, &type metadata for UITraitLegibilityWeight, &protocol witness table for UITraitLegibilityWeight, v5, v3, v2);

  free(v1);
}

uint64_t UIMutableTraits.activeAppearance.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188AFC388(&unk_1ED490C70, type metadata accessor for UIUserInterfaceActiveAppearance);
  v4(&v7, &type metadata for UITraitActiveAppearance, &type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, v5, a1, a2);
  return v7;
}

uint64_t sub_188E2A570@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.activeAppearance.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void (*UIMutableTraits.activeAppearance.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v9 = sub_188AFC388(&unk_1ED490C70, type metadata accessor for UIUserInterfaceActiveAppearance);
  v8(&type metadata for UITraitActiveAppearance, &type metadata for UITraitActiveAppearance, &protocol witness table for UITraitActiveAppearance, v9, a2, a3);
  return sub_188E2A6CC;
}