void sub_1A47BA754()
{
  if (!qword_1EB1422F0)
  {
    sub_1A47B9C90();
    sub_1A5249C44();
    sub_1A47BBB7C(&unk_1EB1422D8, sub_1A47B9C90);
    sub_1A47BBB7C(&qword_1EB13A710, MEMORY[0x1E697C938]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1422F0);
    }
  }
}

uint64_t sub_1A47BA878(uint64_t a1, double a2, double a3, double a4)
{
  sub_1A47BB3E8(0, &qword_1EB128B00, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  v14 = OBJC_IVAR____TtC12PhotosUICore20FaceCropImageManager__image;
  aBlock[0] = 0;
  sub_1A3CB67E8(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A52479A4();
  (*(v11 + 32))(v4 + v14, v13, v10);
  v15 = [objc_allocWithZone(PXPeopleFaceCropFetchOptions) initWithPerson:a1 targetSize:a2 displayScale:{a3, a4}];
  [v15 setDeliveryMode_];
  v16 = [objc_opt_self() sharedManager];
  aBlock[4] = sub_1A47BC068;
  v20 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A4044608;
  aBlock[3] = &block_descriptor_62_1;
  v17 = _Block_copy(aBlock);

  [v16 requestFaceCropForOptions:v15 resultHandler:v17];
  _Block_release(v17);

  return v4;
}

void sub_1A47BAAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A47BBEF8(255, &unk_1EB1421F8, MEMORY[0x1E69E64E8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A47BABAC()
{
  if (!qword_1EB142318)
  {
    sub_1A47BAC24();
    sub_1A47BAD08();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB142318);
    }
  }
}

void sub_1A47BAC24()
{
  if (!qword_1EB142320)
  {
    sub_1A47BACA4(255, &qword_1EB128540, sub_1A3D6D248);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142320);
    }
  }
}

void sub_1A47BACA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A47BAD08()
{
  if (!qword_1EB142330)
  {
    sub_1A47BADCC(255, &unk_1EB13A7C0, sub_1A4431428);
    sub_1A4070978(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142330);
    }
  }
}

void sub_1A47BADCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A47BAE30()
{
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v23 = v4;
  v24 = v3;
  v20 = v3;
  v21 = v2;
  v22 = v4;
  sub_1A3DB8180(&v24, &v15);

  v5 = MEMORY[0x1E69E64E8];
  sub_1A47B9B58(&v23, &v15, &unk_1EB1421F8, MEMORY[0x1E69E64E8], sub_1A47BBEF8);
  sub_1A3DB8180(&v24, &v15);

  sub_1A47B9B58(&v23, &v15, &unk_1EB1421F8, v5, sub_1A47BBEF8);
  sub_1A3DB8180(&v24, &v15);

  sub_1A47B9B58(&v23, &v15, &unk_1EB1421F8, v5, sub_1A47BBEF8);
  sub_1A47BAAFC(0, &qword_1EB142308, MEMORY[0x1E6981948]);
  v7 = v6;
  MEMORY[0x1A5906C60](&v15);
  v8 = v15;
  v9 = v1[9];
  v10 = sub_1A47B80C8(v9, v8);

  sub_1A3DB81DC(&v24);

  sub_1A47B9BC8(&v23, &unk_1EB1421F8, v5, sub_1A47BBEF8);
  if (v10)
  {
    sub_1A3DB81DC(&v24);

    v11 = MEMORY[0x1E69E64E8];
    sub_1A47B9BC8(&v23, &unk_1EB1421F8, MEMORY[0x1E69E64E8], sub_1A47BBEF8);

    v20 = v3;
    v21 = v2;
    v22 = v4;
    MEMORY[0x1A5906C60](&v19, v7);

    v15 = v3;
    v16 = v2;
    v17 = v4;
    v18 = v19;
    sub_1A524B904();
    sub_1A3DB81DC(&v24);

    v12 = v11;
  }

  else
  {
    v20 = v3;
    v21 = v2;
    v22 = v4;
    MEMORY[0x1A5906C60](&v15, v7);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v13 = sub_1A524E2B4();
    }

    else
    {
      v13 = *(v15 + 16);
    }

    if (v13 >= 1)
    {
      v20 = v3;
      v21 = v2;
      v22 = v4;
      v15 = MEMORY[0x1E69E7CD0];
      sub_1A524B904();
    }

    sub_1A3DB81DC(&v24);

    sub_1A47B9BC8(&v23, &unk_1EB1421F8, MEMORY[0x1E69E64E8], sub_1A47BBEF8);
    v20 = v3;
    v21 = v2;
    v22 = v4;
    MEMORY[0x1A5906C60](&v18, v7);
    sub_1A42CDE4C(&v19, v9);

    v15 = v3;
    v16 = v2;
    v17 = v4;
    sub_1A524B904();
    sub_1A3DB81DC(&v24);

    v12 = MEMORY[0x1E69E64E8];
  }

  return sub_1A47B9BC8(&v23, &unk_1EB1421F8, v12, sub_1A47BBEF8);
}

void sub_1A47BB204()
{
  if (!qword_1EB142350)
  {
    sub_1A47BB2A4();
    sub_1A4070978(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142350);
    }
  }
}

void sub_1A47BB2A4()
{
  if (!qword_1EB142358)
  {
    sub_1A47BAB78(255);
    sub_1A47BBB7C(&qword_1EB142360, sub_1A47BAB78);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142358);
    }
  }
}

unint64_t sub_1A47BB338()
{
  result = qword_1EB142368;
  if (!qword_1EB142368)
  {
    sub_1A47BB204();
    sub_1A47BBB7C(&qword_1EB142370, sub_1A47BB2A4);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142368);
  }

  return result;
}

void sub_1A47BB3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3CB67E8(255, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A47BB5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A47BB638()
{
  type metadata accessor for SuggestLessPeopleSelectionViewController();
  sub_1A3CB67E8(319, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A47BAAFC(319, &unk_1EB142218, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A47BBE34(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A47BB5C0(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A47BB7D4()
{
  sub_1A47BB3E8(319, &qword_1EB128B00, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A47BB880()
{
  result = qword_1EB1423E0;
  if (!qword_1EB1423E0)
  {
    sub_1A47BADCC(255, &qword_1EB1422E8, sub_1A47BA754);
    sub_1A47B9C90();
    sub_1A5249C44();
    sub_1A47BBB7C(&unk_1EB1422D8, sub_1A47B9C90);
    sub_1A47BBB7C(&qword_1EB13A710, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1423E0);
  }

  return result;
}

void sub_1A47BB9D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A47BBA28()
{
  result = qword_1EB1423E8;
  if (!qword_1EB1423E8)
  {
    sub_1A47BADCC(255, &qword_1EB142300, sub_1A47BAAD4);
    sub_1A47BBACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1423E8);
  }

  return result;
}

unint64_t sub_1A47BBACC()
{
  result = qword_1EB1423F0;
  if (!qword_1EB1423F0)
  {
    sub_1A47BAAD4(255);
    sub_1A47BBB7C(&qword_1EB1423F8, sub_1A449A1D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1423F0);
  }

  return result;
}

uint64_t sub_1A47BBB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A47BBBC4()
{
  v1 = *(v0 + 24);
  v2 = UIViewController.pxView.getter();
  sub_1A47BBE34(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [v1 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v2 rightAnchor];
  v9 = [v1 safeAreaLayoutGuide];
  v10 = [v9 rightAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v2 leftAnchor];
  v13 = [v1 safeAreaLayoutGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;

  return v3;
}

void sub_1A47BBE34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A47BBE84(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SuggestLessPeopleSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A47BBEF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB1265C0);
    v7 = sub_1A42CEA7C();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A47BBF74()
{
}

uint64_t sub_1A47BBFBC()
{
}

uint64_t sub_1A47BC000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A47BC068(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v5[4] = sub_1A47BC13C;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3C2E0D0;
  v5[3] = &block_descriptor_68_2;
  _Block_copy(v5);
  v4 = a1;

  px_dispatch_on_main_queue();
}

uint64_t sub_1A47BC13C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(**(v0 + 24) + 96);
    v3 = v1;
    return v2(v1);
  }

  return result;
}

void sub_1A47BC198()
{
  v1 = *(type metadata accessor for SuggestLessPeopleSelectionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A47B6298(v2);
}

void sub_1A47BC1F8()
{
  sub_1A47BA2F8();
  sub_1A47BA4C8();
  sub_1A47BA51C();
  sub_1A47BA5E8();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47BC2AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A47BC328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47BC3A0()
{
  v1 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = v2 + *(v1 + 28);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(aBlock) = v4;
  v27 = v5;
  sub_1A47BBE34(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A47BAAFC(0, &unk_1EB142218, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v6 = sub_1A47B75FC(aBlock);

  if (v6)
  {
    v8 = *v2;
    v9 = MEMORY[0x1E69E7D40];
    v10 = (*((*MEMORY[0x1E69E7D40] & **v2) + 0x80))(v7);
    if (!v10)
    {
LABEL_5:

      return;
    }

    v11 = v10;
    v12 = (*((*v9 & *v8) + 0x98))();
    if (v12)
    {
      v30 = v12;
      v31 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1A3D6084C;
      v29 = &block_descriptor_101_3;
      v14 = _Block_copy(&aBlock);

      [v11 didSelectPersonToSuggestLess:v6 dismissViewController:v8 completionHandler:v14];
      swift_unknownObjectRelease();
      _Block_release(v14);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_11;
  }

  v15 = *v2;
  v16 = **v2;
  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & v16) + 0x80))(v7);
  if (v18)
  {
    v19 = v18;
    v20 = (*((*v17 & *v15) + 0x98))();
    if (!v20)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v22 = v20;
    v23 = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    v30 = sub_1A3D7ADE8;
    v31 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1A4043B58;
    v29 = &block_descriptor_98_4;
    v25 = _Block_copy(&aBlock);

    [v19 completeActionWithCompletionHandler_];
    swift_unknownObjectRelease();
    _Block_release(v25);
  }
}

int64x2_t sub_1A47BC6F4@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (type metadata accessor for SuggestLessPeopleSelectionView(0) - 8);
  v6 = v2 + ((*(*v5 + 80) + 16) & ~*(*v5 + 80));
  v7 = *a1;
  sub_1A47BAAFC(0, &unk_1EB142218, MEMORY[0x1E697DA80]);
  v8 = v7;
  sub_1A5247CA4();
  type metadata accessor for FaceCropImageManager(0);
  v9 = *(v6 + v5[11]);
  swift_allocObject();
  v10 = v8;
  sub_1A47BA878(v10, 50.0, 50.0, v9);

  sub_1A47BBB7C(&qword_1EB13A640, type metadata accessor for FaceCropImageManager);
  *a2 = sub_1A5248494();
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  result = vdupq_n_s64(0x4049000000000000uLL);
  *(a2 + 40) = result;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  return result;
}

id sub_1A47BC8BC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXPhotosHighlightsOverlayController____lazy_storage___rootLayout] = 0;
  *&v3[OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens] = 0;
  *&v3[OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens] = 0;
  *&v3[OBJC_IVAR___PXPhotosHighlightsOverlayController_photoLibrary] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1A47BCA1C()
{
  v1 = *(v0 + OBJC_IVAR___PXPhotosHighlightsOverlayController____lazy_storage___rootLayout);
  if (!v1)
  {
    sub_1A47BF1A0();
    type metadata accessor for PhotoKitHighlightsDataFactory();
    v5 = sub_1A42DD060(*(v0 + OBJC_IVAR___PXPhotosHighlightsOverlayController_photoLibrary));
    sub_1A4910A10(&v5);
  }

  v2 = *(v0 + OBJC_IVAR___PXPhotosHighlightsOverlayController____lazy_storage___rootLayout);
  v3 = v1;
  return v2;
}

uint64_t (*sub_1A47BCB9C())()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_1A47BCBFC;
}

uint64_t sub_1A47BCD5C()
{
  sub_1A3CB8F68();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52F9DE0;
  if (qword_1EB1D3888 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 32) = qword_1EB1D3890;
  v1 = qword_1EB1D3898;
  swift_unknownObjectRetain();
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 40) = qword_1EB1D38A0;
  swift_unknownObjectRetain();
  return v0;
}

uint64_t *sub_1A47BCE58()
{
  if (qword_1EB1D3888 != -1)
  {
    swift_once();
  }

  return &qword_1EB1D3890;
}

uint64_t *sub_1A47BCEA8()
{
  if (qword_1EB1D3898 != -1)
  {
    swift_once();
  }

  return qword_1EB1D38A0;
}

uint64_t (*static PhotosHighlightsOverlayController.monthsLens.modify())()
{
  if (qword_1EB1D3888 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A47BD21C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A47BD29C(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*static PhotosHighlightsOverlayController.yearsLens.modify())()
{
  if (qword_1EB1D3898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A47BD3B0@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1A47BD43C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A47BD5F0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1A47BD724(v4);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A47BD664@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47BD6C0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1A47BD724(void *a1)
{
  v70 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v2 = v70();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_19:
    v4 = sub_1A524E2B4();
    v5 = &selRef_hasChangesToProcess;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = &selRef_hasChangesToProcess;
    if (v4)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1A59097F0](v6, v3);
          v7 = a1;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            v19 = swift_unknownObjectRelease();
            v69 = 0;
            v5 = &selRef_hasChangesToProcess;
            goto LABEL_21;
          }
        }

        else
        {
          v7 = a1;
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v8 = *(v3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_16;
          }
        }

        v10 = [v8 v5[295]];
        v11 = sub_1A524C674();
        v13 = v12;

        if (v7)
        {
          v14 = [v7 v5[295]];
          v15 = sub_1A524C674();
          v17 = v16;

          if (v11 == v15 && v13 == v17)
          {
            goto LABEL_17;
          }

          v18 = sub_1A524EAB4();

          swift_unknownObjectRelease();
          v5 = &selRef_hasChangesToProcess;
          if (v18)
          {

            v69 = 0;
            goto LABEL_21;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }

        ++v6;
      }

      while (v9 != v4);
    }
  }

  v69 = 1;
LABEL_21:
  v20 = (v70)(v19);
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_41;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_23:
    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1A59097F0](v23, v21);
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:

          swift_unknownObjectRelease();
          v37 = 0;
          v5 = &selRef_hasChangesToProcess;
          goto LABEL_43;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_41:
          v22 = sub_1A524E2B4();
          if (!v22)
          {
            break;
          }

          goto LABEL_23;
        }

        v24 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_38;
        }
      }

      v26 = [v24 v5[295]];
      v27 = sub_1A524C674();
      v29 = v28;

      v30 = (*((*MEMORY[0x1E69E7D40] & *v72) + 0xB0))();
      if (v30)
      {
        v31 = [v30 v5[295]];
        swift_unknownObjectRelease();
        v32 = sub_1A524C674();
        v34 = v33;

        if (v27 == v32 && v29 == v34)
        {
          goto LABEL_39;
        }

        v36 = sub_1A524EAB4();

        swift_unknownObjectRelease();
        v5 = &selRef_hasChangesToProcess;
        if (v36)
        {

          v37 = 0;
          goto LABEL_43;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      ++v23;
    }

    while (v25 != v22);
  }

  v37 = 1;
LABEL_43:
  v38 = OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens;
  result = swift_beginAccess();
  v40 = *(v72 + v38);
  if (!v40 || (v37 & 1) != 0)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_1A47BE9E4(&v73);
    v41 = &qword_1EB142458;
    v42 = &unk_1EB142460;
    return sub_1A3EA8D18(&v73, v41, v42);
  }

  if ((*(v72 + OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens) & 1) == 0)
  {
    swift_unknownObjectRetain();
    if (a1)
    {
      v43 = [a1 v5[295]];
      v44 = sub_1A524C674();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    if (qword_1EB1D3888 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v47 = [qword_1EB1D3890 v5[295]];
    v48 = sub_1A524C674();
    v50 = v49;

    if (v46)
    {
      if (v44 == v48 && v46 == v50)
      {

        v51 = 0;
        goto LABEL_61;
      }

      v52 = sub_1A524EAB4();

      v51 = 0;
      if (v52)
      {
LABEL_61:
        if (v69)
        {
          v75 = 0;
          v73 = 0u;
          v74 = 0u;
          v53 = sub_1A47BECD0();
        }

        else
        {
          v54 = sub_1A47BCA1C();
          (*((*MEMORY[0x1E69E7D40] & *v54) + 0x88))(&v73, v51);

          v53 = 0;
        }

        v55 = [v40 v5[295]];
        v56 = sub_1A524C674();
        v58 = v57;

        if (v56 == 0x7368746E6F6DLL && v58 == 0xE600000000000000 || (sub_1A524EAB4() & 1) != 0)
        {

          v59 = sub_1A47BCA1C();
          v60 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v59) + 0x78))(&v73, v53);

          v61 = (*((*v60 & *v72) + 0xE0))();
          if (!v61)
          {
LABEL_78:
            swift_unknownObjectRelease();

            v41 = &qword_1EB128C80;
            v42 = &qword_1EB128C90;
            return sub_1A3EA8D18(&v73, v41, v42);
          }

          v62 = v61;
          v63 = &qword_1EB1D3890;
        }

        else
        {
          if (v56 == 0x7372616579 && v58 == 0xE500000000000000)
          {
          }

          else
          {
            v65 = sub_1A524EAB4();

            if ((v65 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          v66 = sub_1A47BCA1C();
          v67 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v66) + 0x80))(&v73, v53);

          v68 = (*((*v67 & *v72) + 0xE0))();
          if (!v68)
          {
            goto LABEL_78;
          }

          v62 = v68;
          if (qword_1EB1D3898 != -1)
          {
            swift_once();
          }

          v63 = qword_1EB1D38A0;
          swift_beginAccess();
        }

        v64 = *v63;
        swift_unknownObjectRetain();
        [v62 photosOverlayController:v72 didChangeCurrentLens:v64];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_78;
      }
    }

    else
    {
    }

    v51 = 1;
    goto LABEL_61;
  }

  return result;
}

void (*sub_1A47BDFEC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosHighlightsOverlayController_currentLens;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1A47BE088;
}

void sub_1A47BE088(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1A47BD724(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A47BD724(v6);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

void *sub_1A47BE180()
{
  v1 = OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A47BE22C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosHighlightsOverlayController_photosViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A47BE284@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47BE2E0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A47BE4A8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A47BE508@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47BE564(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A47BE5C8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosHighlightsOverlayController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A47BE660(void *a1)
{
  v2 = v1;
  type metadata accessor for HighlightsHitTestResult();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_level);
    v6 = OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens;
    v7 = *(v2 + OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens);
    *(v2 + OBJC_IVAR___PXPhotosHighlightsOverlayController_isSwitchingLens) = 1;
    if (v5 == 1)
    {
      sub_1A3C341C8(result + OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_item, v17);
      v8 = a1;
      v9 = sub_1A47BCA1C();
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x78))(v17, 0);

      v11 = (*((*v10 & *v2) + 0xE0))();
      if (v11)
      {
        v12 = v11;
        if (qword_1EB1D3888 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v13 = qword_1EB1D3890;
        swift_unknownObjectRetain();
        [v12 photosOverlayController:v2 didChangeCurrentLens:v13];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      v15 = &qword_1EB128C80;
      v16 = &qword_1EB128C90;
    }

    else
    {
      sub_1A3C341C8(result + OBJC_IVAR____TtC12PhotosUICore23HighlightsHitTestResult_displayItem, v17);
      v14 = a1;
      sub_1A47BE9E4(v17);

      v15 = &qword_1EB142458;
      v16 = &unk_1EB142460;
    }

    result = sub_1A3EA8D18(v17, v15, v16);
    *(v2 + v6) = v7;
  }

  return result;
}

uint64_t sub_1A47BE8E8(uint64_t a1)
{
  sub_1A3C2F0BC(a1, v3);
  sub_1A47BEC78();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1A47BE9E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A47BCA1C();
  v5 = *&v4[qword_1EB144FA0];

  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))(0.0);

  v7 = *(*(v2 + OBJC_IVAR___PXPhotosHighlightsOverlayController____lazy_storage___rootLayout) + qword_1EB144FA8);
  v8 = *((*v6 & *v7) + 0xE0);
  v9 = v7;
  v8(0.0);

  v10 = *((*v6 & *v2) + 0xE0);
  v11 = v10();
  if (v11)
  {
    [v11 photosOverlayController:v2 didChangeCurrentLens:0];
    swift_unknownObjectRelease();
  }

  sub_1A47BF25C(a1, &v16);
  v12 = v17;
  if (!v17)
  {
    return sub_1A3EA8D18(&v16, &qword_1EB142458, &unk_1EB142460);
  }

  v13 = v18;
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  v14 = (*(v13 + 8))(v12, v13);
  result = __swift_destroy_boxed_opaque_existential_0(&v16);
  if (v14)
  {
    if (swift_dynamicCastObjCProtocolConditional())
    {
      if (v10())
      {
        swift_unknownObjectRetain();
        sub_1A524D5F4();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A47BEC78()
{
  if (!qword_1EB136E50)
  {
    sub_1A410F6A0();
    v0 = type metadata accessor for PhotoKitItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136E50);
    }
  }
}

void *sub_1A47BECD0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (result)
  {
    v2 = [result dominantAssetReferenceForPhotosOverlayController_];
    swift_unknownObjectRelease();
    v3 = [v2 asset];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id PhotosHighlightsOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosHighlightsOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosHighlightsOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A47BF1A0()
{
  if (!qword_1EB142598)
  {
    type metadata accessor for PhotoKitHighlightsDataFactory();
    sub_1A47BF204();
    v0 = type metadata accessor for HighlightsRootLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142598);
    }
  }
}

unint64_t sub_1A47BF204()
{
  result = qword_1EB1425A0;
  if (!qword_1EB1425A0)
  {
    type metadata accessor for PhotoKitHighlightsDataFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1425A0);
  }

  return result;
}

uint64_t sub_1A47BF25C(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB142458, &unk_1EB142460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GenerativeStoryAmbiguityData.MenuAutoPresentationState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t GenerativeStoryAmbiguityData.init(payload:ambiguityID:range:originalQuery:appliedDisambiguation:menuAutoPresentationState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  v18 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  *(a9 + v18[10]) = 0;
  sub_1A47C145C(a1, a9);
  result = sub_1A47C14C0(a2, a9 + v18[5]);
  v20 = (a9 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v18[7]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + v18[8]) = a7;
  *(a9 + v18[9]) = v17;
  return result;
}

uint64_t GenerativeStoryAmbiguityData.isResolved.getter()
{
  v1 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  if (*(v0 + *(v1 + 32)))
  {
    return 1;
  }

  else
  {
    return *(v0 + *(v1 + 40));
  }
}

uint64_t GenerativeStoryAmbiguityData.isAcknowledged.setter(char a1)
{
  result = type metadata accessor for GenerativeStoryAmbiguityData(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void sub_1A47BF4FC(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  sub_1A47C1338(v3, a3);
  v7 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  sub_1A47C13DC(a1, a3 + v7[5]);
  v8 = v7[6];
  v9 = (v3 + v7[7]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v3 + v7[8]);
  *(a3 + v7[10]) = 0;
  *(a3 + v7[6]) = *(v3 + v8);
  v13 = (a3 + v7[7]);
  *v13 = v10;
  v13[1] = v11;
  *(a3 + v7[8]) = v12;
  *(a3 + v7[9]) = v6;
  v14 = v12;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void GenerativeStoryAmbiguityData.copy(withAppliedDisambiguation:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A47C1338(v2, a2);
  v4 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  sub_1A47C13DC(v2 + v4[5], a2 + v4[5]);
  v5 = v4[6];
  v6 = (v2 + v4[7]);
  v7 = *(v2 + v4[9]);
  v9 = *v6;
  v8 = v6[1];
  *(a2 + v4[10]) = 0;
  *(a2 + v4[6]) = *(v2 + v5);
  v10 = (a2 + v4[7]);
  *v10 = v9;
  v10[1] = v8;
  *(a2 + v4[8]) = a1;
  *(a2 + v4[9]) = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t QueryTokenCategoryType.supportsDisambiguation(withDataSource:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1A5244DF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = v4[2];
  v43 = v2;
  v13(&v38 - v11, v2, v3, v10);
  v14 = v4[11];
  v15 = v14(v12, v3);
  v16 = *MEMORY[0x1E69C1240];
  v42 = v4;
  v17 = v12;
  v18 = v4[1];
  v18(v17, v3);
  if (v15 == v16)
  {
    return 1;
  }

  v20 = v43;
  (v13)(v8, v43, v3);
  v39 = v14;
  v21 = v14(v8, v3);
  v22 = v8;
  if (v21 == *MEMORY[0x1E69C1238])
  {
    (v42[12])(v8, v3);
    sub_1A3F52284();
    v24 = MEMORY[0x1E6968278];
    sub_1A47C1CB0(&v22[*(v23 + 48)], &qword_1EB126090, MEMORY[0x1E6968278]);
    v25 = v22;
    v26 = &qword_1EB126090;
    v27 = v24;
  }

  else
  {
    if (v21 == *MEMORY[0x1E69C1220])
    {
      (v42[12])(v8, v3);
      v26 = &unk_1EB12EE38;
      v28 = MEMORY[0x1E69C17C8];
    }

    else
    {
      if (v21 != *MEMORY[0x1E69C1228])
      {
        v18(v8, v3);
        v33 = v40;
        (v13)(v40, v20, v3);
        v34 = v39(v33, v3);
        if (v34 == *MEMORY[0x1E69C1248])
        {
          v18(v33, v3);
        }

        else
        {
          if (v34 != *MEMORY[0x1E69C1230])
          {
            v18(v33, v3);
            return 0;
          }

          (v42[12])(v33, v3);
          v35 = sub_1A5244E94();
          (*(*(v35 - 8) + 8))(v33, v35);
        }

        sub_1A3C52C70(0, &qword_1EB126860);
        v36 = [swift_getObjCClassFromMetadata() sharedInstance];
        v37 = [v36 enableLocationDisambiguation];

        return v37;
      }

      (v42[12])(v8, v3);
      sub_1A3F521E0();
      v30 = *(v29 + 48);
      v31 = sub_1A5244F14();
      (*(*(v31 - 8) + 8))(&v8[v30], v31);
      v26 = &qword_1EB12EE48;
      v28 = MEMORY[0x1E69C1820];
    }

    v27 = v28;
    v25 = v8;
  }

  sub_1A47C1CB0(v25, v26, v27);
  result = [objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled];
  if (result)
  {
    v32 = sub_1A5245604();
    return (*(*(v32 - 8) + 48))(v41, 1, v32) != 1;
  }

  return result;
}

uint64_t QueryTokenCategoryType.isSupportedDateOrEventAmbiguity.getter()
{
  v1 = v0;
  v2 = sub_1A5244DF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1238])
  {
    (*(v3 + 96))(v6, v2);
    sub_1A3F52284();
    v9 = MEMORY[0x1E6968278];
    sub_1A47C1CB0(&v6[*(v8 + 48)], &qword_1EB126090, MEMORY[0x1E6968278]);
    v10 = v6;
    v11 = &qword_1EB126090;
    v12 = v9;
  }

  else
  {
    if (v7 == *MEMORY[0x1E69C1220])
    {
      (*(v3 + 96))(v6, v2);
      v11 = &unk_1EB12EE38;
      v13 = MEMORY[0x1E69C17C8];
    }

    else
    {
      if (v7 != *MEMORY[0x1E69C1228])
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }

      (*(v3 + 96))(v6, v2);
      sub_1A3F521E0();
      v15 = *(v14 + 48);
      v16 = sub_1A5244F14();
      (*(*(v16 - 8) + 8))(&v6[v15], v16);
      v11 = &qword_1EB12EE48;
      v13 = MEMORY[0x1E69C1820];
    }

    v12 = v13;
    v10 = v6;
  }

  sub_1A47C1CB0(v10, v11, v12);
  return 1;
}

uint64_t QueryTokenCategoryType.isLocationAmbiguity.getter()
{
  v1 = v0;
  v2 = sub_1A5244DF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1248])
  {
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  else if (v7 == *MEMORY[0x1E69C1230])
  {
    (*(v3 + 96))(v6, v2);
    v9 = sub_1A5244E94();
    (*(*(v9 - 8) + 8))(v6, v9);
    return 1;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_1A47BFF2C()
{
  v0 = sub_1A5245184();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5245174();
  sub_1A5244DE4();
  v5 = sub_1A47C0018(v3, v4);

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_1A47C0018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5245184();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A47C1D0C(&qword_1EB1425B0, MEMORY[0x1E69C1448]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A47C1D0C(&qword_1EB1425B8, MEMORY[0x1E69C1448]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A47C0230()
{
  v0 = sub_1A5244FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1A5244484();
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  result = 1;
  if (v7 != *MEMORY[0x1E69C1380] && v7 != *MEMORY[0x1E69C1360] && v7 != *MEMORY[0x1E69C1350] && v7 != *MEMORY[0x1E69C1338] && v7 != *MEMORY[0x1E69C1330] && v7 != *MEMORY[0x1E69C1348] && v7 != *MEMORY[0x1E69C1340] && v7 != *MEMORY[0x1E69C1358] && v7 != *MEMORY[0x1E69C1300] && v7 != *MEMORY[0x1E69C1370] && v7 != *MEMORY[0x1E69C1310] && v7 != *MEMORY[0x1E69C1368] && v7 != *MEMORY[0x1E69C1328])
  {
    result = 0;
    if (v7 != *MEMORY[0x1E69C1320] && v7 != *MEMORY[0x1E69C1308] && v7 != *MEMORY[0x1E69C1378])
    {
      if (v7 == *MEMORY[0x1E69C1318])
      {
        return 1;
      }

      else
      {
        (*(v1 + 8))(v3, v0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A47C04C0()
{
  v1 = v0;
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != *MEMORY[0x1E69C1380] && v7 != *MEMORY[0x1E69C1360] && v7 != *MEMORY[0x1E69C1350] && v7 != *MEMORY[0x1E69C1338] && v7 != *MEMORY[0x1E69C1330] && v7 != *MEMORY[0x1E69C1348] && v7 != *MEMORY[0x1E69C1340] && v7 != *MEMORY[0x1E69C1358] && v7 != *MEMORY[0x1E69C1300] && v7 != *MEMORY[0x1E69C1370] && v7 != *MEMORY[0x1E69C1310] && v7 != *MEMORY[0x1E69C1368] && v7 != *MEMORY[0x1E69C1328])
  {
    result = 1;
    if (v7 != *MEMORY[0x1E69C1320] && v7 != *MEMORY[0x1E69C1308] && v7 != *MEMORY[0x1E69C1378])
    {
      if (v7 == *MEMORY[0x1E69C1318])
      {
        return 0;
      }

      else
      {
        (*(v3 + 8))(v6, v2);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1A47C0724()
{
  v1 = v0;
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1380])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C1360] || v7 == *MEMORY[0x1E69C1350] || v7 == *MEMORY[0x1E69C1338] || v7 == *MEMORY[0x1E69C1330] || v7 == *MEMORY[0x1E69C1348] || v7 == *MEMORY[0x1E69C1340] || v7 == *MEMORY[0x1E69C1358])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69C1300] || v7 == *MEMORY[0x1E69C1370] || v7 == *MEMORY[0x1E69C1310])
  {
    return 0;
  }

  v8 = 1;
  if (v7 != *MEMORY[0x1E69C1368] && v7 != *MEMORY[0x1E69C1328])
  {
    v8 = 0;
    if (v7 != *MEMORY[0x1E69C1320] && v7 != *MEMORY[0x1E69C1308] && v7 != *MEMORY[0x1E69C1378] && v7 != *MEMORY[0x1E69C1318])
    {
      (*(v3 + 8))(v6, v2);
      return 1;
    }
  }

  return v8;
}

uint64_t sub_1A47C096C()
{
  v1 = v0;
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1380])
  {
    return 0;
  }

  v9 = v7;
  if (v7 == *MEMORY[0x1E69C1360] || v7 == *MEMORY[0x1E69C1350])
  {
    return 1;
  }

  result = 0;
  if (v9 != *MEMORY[0x1E69C1338] && v9 != *MEMORY[0x1E69C1330] && v9 != *MEMORY[0x1E69C1348] && v9 != *MEMORY[0x1E69C1340] && v9 != *MEMORY[0x1E69C1358] && v9 != *MEMORY[0x1E69C1300] && v9 != *MEMORY[0x1E69C1370] && v9 != *MEMORY[0x1E69C1310] && v9 != *MEMORY[0x1E69C1368] && v9 != *MEMORY[0x1E69C1328] && v9 != *MEMORY[0x1E69C1320] && v9 != *MEMORY[0x1E69C1308] && v9 != *MEMORY[0x1E69C1378] && v9 != *MEMORY[0x1E69C1318])
  {
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

uint64_t sub_1A47C0BC8()
{
  v1 = v0;
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C1380] || v7 == *MEMORY[0x1E69C1360] || v7 == *MEMORY[0x1E69C1350])
  {
    return 0;
  }

  v11 = v7;
  if (v7 == *MEMORY[0x1E69C1338] || v7 == *MEMORY[0x1E69C1330])
  {
    return 1;
  }

  result = 0;
  if (v11 != *MEMORY[0x1E69C1348] && v11 != *MEMORY[0x1E69C1340] && v11 != *MEMORY[0x1E69C1358] && v11 != *MEMORY[0x1E69C1300] && v11 != *MEMORY[0x1E69C1370] && v11 != *MEMORY[0x1E69C1310] && v11 != *MEMORY[0x1E69C1368] && v11 != *MEMORY[0x1E69C1328] && v11 != *MEMORY[0x1E69C1320] && v11 != *MEMORY[0x1E69C1308] && v11 != *MEMORY[0x1E69C1378] && v11 != *MEMORY[0x1E69C1318])
  {
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

uint64_t sub_1A47C0E1C()
{
  v1 = v0;
  v2 = sub_1A5244FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v19 = v7 == *MEMORY[0x1E69C1380] || v7 == *MEMORY[0x1E69C1360] || v7 == *MEMORY[0x1E69C1350] || v7 == *MEMORY[0x1E69C1338] || v7 == *MEMORY[0x1E69C1330] || v7 == *MEMORY[0x1E69C1348] || v7 == *MEMORY[0x1E69C1340] || v7 == *MEMORY[0x1E69C1358] || v7 == *MEMORY[0x1E69C1300] || v7 == *MEMORY[0x1E69C1370] || v7 == *MEMORY[0x1E69C1310] || v7 == *MEMORY[0x1E69C1368] || v7 == *MEMORY[0x1E69C1328];
  v20 = v19;
  if (!v19 && v7 != *MEMORY[0x1E69C1320] && v7 != *MEMORY[0x1E69C1308] && v7 != *MEMORY[0x1E69C1378] && v7 != *MEMORY[0x1E69C1318])
  {
    (*(v3 + 8))(v6, v2);
  }

  return v20 ^ 1u;
}

uint64_t _s12PhotosUICore28GenerativeStoryAmbiguityDataV7PayloadO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52444C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  sub_1A47C1D54();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 56)];
  sub_1A47C1338(a1, v16);
  sub_1A47C1338(a2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A47C1338(v16, v10);
    v20 = *v10;
    v19 = v10[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v20 == *v18 && v19 == *(v18 + 1))
      {

        LOBYTE(v23) = 1;
      }

      else
      {
        v22 = sub_1A524EAB4();

        v23 = v22 << 31 >> 31;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_1A47C1338(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      LOBYTE(v23) = sub_1A5244494();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v13, v4);
LABEL_14:
      v24 = type metadata accessor for GenerativeStoryAmbiguityData.Payload;
      goto LABEL_15;
    }

    (*(v5 + 8))(v13, v4);
  }

  LOBYTE(v23) = 0;
  v24 = sub_1A47C1D54;
LABEL_15:
  sub_1A47C1DB8(v16, v24);
  return v23 & 1;
}

uint64_t sub_1A47C1338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47C13DC(uint64_t a1, uint64_t a2)
{
  sub_1A47C1970(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47C145C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47C14C0(uint64_t a1, uint64_t a2)
{
  sub_1A47C1970(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s12PhotosUICore28GenerativeStoryAmbiguityDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5247204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C1970(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  sub_1A47C1C30();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_s12PhotosUICore28GenerativeStoryAmbiguityDataV7PayloadO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v38 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v15 = v38[5];
  v16 = *(v12 + 48);
  sub_1A47C13DC(a1 + v15, v14);
  sub_1A47C13DC(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1A47C1CB0(v14, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
      goto LABEL_11;
    }

LABEL_7:
    sub_1A47C1DB8(v14, sub_1A47C1C30);
    goto LABEL_8;
  }

  sub_1A47C13DC(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1A47C1D0C(&qword_1EB1425C8, MEMORY[0x1E69DBEC0]);
  v20 = sub_1A524C594();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1A47C1CB0(v14, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v18 = 0;
  v22 = v38;
  v23 = v38[6];
  v24 = a1 + v23;
  v25 = *(a1 + v23);
  v26 = (a2 + v23);
  if (v25 == *v26 && *(v24 + 8) == v26[1])
  {
    v27 = v38[7];
    v28 = *(a1 + v27);
    v29 = *(a1 + v27 + 8);
    v30 = (a2 + v27);
    if (v28 == *v30 && v29 == v30[1] || (sub_1A524EAB4() & 1) != 0)
    {
      v31 = v22[8];
      v32 = *(a1 + v31);
      v33 = *(a2 + v31);
      if (v32)
      {
        if (v33)
        {
          sub_1A3C52C70(0, &qword_1EB1209D8);
          v34 = v33;
          v35 = v32;
          v36 = sub_1A524DBF4();

          if (v36)
          {
LABEL_21:
            if (*(a1 + v22[9]) == *(a2 + v22[9]))
            {
              v18 = *(a1 + v22[10]) ^ *(a2 + v22[10]) ^ 1;
              return v18 & 1;
            }
          }
        }
      }

      else if (!v33)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1A47C1970(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A47C19C8()
{
  result = qword_1EB1425A8;
  if (!qword_1EB1425A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1425A8);
  }

  return result;
}

void sub_1A47C1A44()
{
  type metadata accessor for GenerativeStoryAmbiguityData.Payload(319);
  if (v0 <= 0x3F)
  {
    sub_1A47C1970(319, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for _NSRange(319);
      if (v2 <= 0x3F)
      {
        sub_1A3C48D1C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A47C1B44()
{
  sub_1A47C1BB8();
  if (v0 <= 0x3F)
  {
    sub_1A47C1C00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A47C1BB8()
{
  if (!qword_1EB124CB0)
  {
    v0 = sub_1A52444C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124CB0);
    }
  }
}

uint64_t sub_1A47C1C00()
{
  result = qword_1EB120D60;
  if (!qword_1EB120D60)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB120D60);
  }

  return result;
}

void sub_1A47C1C30()
{
  if (!qword_1EB1425C0)
  {
    sub_1A47C1970(255, &unk_1EB128BE8, MEMORY[0x1E69DBEC0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1425C0);
    }
  }
}

uint64_t sub_1A47C1CB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A47C1970(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A47C1D0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47C1D54()
{
  if (!qword_1EB1425D0)
  {
    type metadata accessor for GenerativeStoryAmbiguityData.Payload(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1425D0);
    }
  }
}

uint64_t sub_1A47C1DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MapOptions.body.getter()
{
  v1 = *v0;
  v10 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A47C20F0(0, &qword_1EB121C38, sub_1A47C1E18, MEMORY[0x1E6981790]);
  v4 = v1;
  sub_1A524B6C4();
  sub_1A47C2154(0);
  sub_1A524B694();
  sub_1A47C21B0(0);
  sub_1A524B694();
  sub_1A47C59F4(0, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  *v11 = v4;
  *&v11[8] = v17;
  *&v11[24] = v18;
  *v12 = v17;
  v12[8] = BYTE8(v17);
  *&v12[9] = *v16;
  *&v12[12] = *&v16[3];
  *&v12[16] = v18;
  *&v12[24] = v17;
  v13[0] = BYTE8(v17);
  *&v13[4] = *&v15[3];
  *&v13[1] = *v15;
  *&v13[8] = v18;
  v13[16] = v17;
  *&v13[20] = *&v14[3];
  *&v13[17] = *v14;
  *&v13[24] = *(&v17 + 1);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v10;
  v5[4] = v3;
  v5[5] = v2;
  sub_1A3C52C70(0, &qword_1EB120AB0);
  sub_1A47C2304();
  sub_1A47C2358();
  v6 = v4;
  v7 = v10;
  v8 = v3;

  sub_1A524B154();

  v19 = *v12;
  v20 = *&v12[16];
  v21 = *v13;
  v22 = *&v13[16];
  v17 = *v11;
  v18 = *&v11[16];
  return sub_1A47C23C0(&v17);
}

void sub_1A47C20F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A47C21E4()
{
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(PXPlacesMapModeController) initWithMapView:*(v0 + 16) prefersRealisticElevationStyle:1];
  type metadata accessor for PlacesMapOptionsController();
  v3 = v2;
  v4 = v1;
  v5 = *sub_1A46A32C0();
  PlacesMapOptionsController.__allocating_init(mapModeController:mapFetchResultController:locationAuthorizationMonitor:)(v3, v4, v5);
}

unint64_t sub_1A47C2304()
{
  result = qword_1EB16EDD0;
  if (!qword_1EB16EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB16EDD0);
  }

  return result;
}

unint64_t sub_1A47C2358()
{
  result = qword_1EB120AA8;
  if (!qword_1EB120AA8)
  {
    sub_1A3C52C70(255, &qword_1EB120AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120AA8);
  }

  return result;
}

double sub_1A47C23F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  sub_1A47C1E18(0);
  sub_1A524B694();
  result = *&v5;
  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_1A47C2478(void *a1)
{
  v12 = *(v1 + 8);
  v13 = *(v1 + 24);
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  sub_1A47C20F0(0, &qword_1EB1214E8, sub_1A47C1E18, MEMORY[0x1E6981948]);
  v4 = v3;
  MEMORY[0x1A5906C60](&v8);
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v8);
  v10 = v12;
  v11 = v13;
  MEMORY[0x1A5906C60](&v8, v4);
  v6 = v8;
  if (v8)
  {
    sub_1A47C57F0();
    sub_1A5249DA4();
    (*((*v5 & *v6) + 0x98))(v10);
  }

  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  sub_1A47C20F0(0, &qword_1EB121BD0, sub_1A47C2154, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v9 & 1) == 0)
  {
    (*((*v5 & *a1) + 0x150))(v8, 1);
  }

  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  sub_1A47C20F0(0, &unk_1EB121BB0, sub_1A47C21B0, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v9 & 1) == 0)
  {
    (*((*v5 & *a1) + 0xB8))(v8);
  }

  v10 = *(v1 + 80);
  sub_1A47C584C();
  result = sub_1A524B6A4();
  if (v8 != 2)
  {
    return (*((*v5 & *a1) + 0xD0))(v8 & 1);
  }

  return result;
}

uint64_t sub_1A47C276C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))();
  v3 = MEMORY[0x1E6981790];
  sub_1A47C20F0(0, &qword_1EB121BD0, sub_1A47C2154, MEMORY[0x1E6981790]);
  v4 = sub_1A524B6B4();
  (*((*v2 & *a1) + 0xA8))(v4);
  sub_1A47C20F0(0, &unk_1EB121BB0, sub_1A47C21B0, v3);
  v5 = sub_1A524B6B4();
  (*((*v2 & *a1) + 0xB8))(v5);
  sub_1A47C584C();
  return sub_1A524B6B4();
}

uint64_t sub_1A47C298C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

char *sub_1A47C2A1C()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for MapOptionsView());
  return MapOptionsView.init(mapView:)(v1);
}

uint64_t sub_1A47C2A54@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v12[2] = v1[2];
  v12[3] = v3;
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  type metadata accessor for _MapOptions.Coordinator();
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  *a1 = v6;
  return sub_1A47C57B8(v12, &v11);
}

uint64_t sub_1A47C2B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47C5764();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A47C2B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47C5764();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A47C2BD0()
{
  sub_1A47C5764();
  sub_1A52496F4();
  __break(1u);
}

id sub_1A47C2BF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = v0;
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  [v1 setAccessibilityLabel_];

  return v1;
}

uint64_t sub_1A47C2D0C()
{
  v1 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A47C2DB4(uint64_t a1)
{
  v3 = OBJC_IVAR___PXMapOptionsView_mapStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A47C4488();
}

void (*sub_1A47C2E08(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A47C2E6C;
}

void sub_1A47C2E6C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A47C4488();
  }
}

uint64_t sub_1A47C2EE8()
{
  v1 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A47C2FE4(char a1)
{
  v3 = OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR___PXMapOptionsView_userLocationButton) setHidden_];
}

id (*sub_1A47C308C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A47C30F0;
}

id sub_1A47C30F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = ((*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(result) & 1) == 0;
    v7 = *(v5 + OBJC_IVAR___PXMapOptionsView_userLocationButton);

    return [v7 setHidden_];
  }

  return result;
}

uint64_t sub_1A47C3290()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47C32F0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXMapOptionsView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

char *MapOptionsView.init(mapView:)(void *a1)
{
  v2 = OBJC_IVAR___PXMapOptionsView_platterStackView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v3 setAxis_];
  [v3 setDistribution_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v2] = v3;
  v4 = OBJC_IVAR___PXMapOptionsView_topPlatterView;
  type metadata accessor for MapOptionsPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v4] = v6;
  v7 = OBJC_IVAR___PXMapOptionsView_userLocationStackView;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v8 setAxis_];
  [v8 setDistribution_];
  [v8 setAlignment_];
  v9 = v8;
  [v9 setClipsToBounds_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v7] = v9;
  v10 = OBJC_IVAR___PXMapOptionsView_mapSettingsButton;
  *&v1[v10] = sub_1A47C2BF8();
  v11 = OBJC_IVAR___PXMapOptionsView_perspectiveButtonPlatterView;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v11] = v12;
  v13 = OBJC_IVAR___PXMapOptionsView_perspectiveButton;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v13] = v14;
  *&v1[OBJC_IVAR___PXMapOptionsView_mapStyle] = 0;
  v1[OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton] = 0;
  *&v1[OBJC_IVAR___PXMapOptionsView_perspectiveButtonState] = 0;
  swift_unknownObjectWeakInit();
  v15 = objc_opt_self();
  v16 = a1;
  result = [v15 buttonWithMapView_];
  if (result)
  {
    *&v1[OBJC_IVAR___PXMapOptionsView_userLocationButton] = result;
    [result _setSelectsWhenTracking_];
    [v16 setShowsCompass_];
    v18 = [objc_opt_self() compassButtonWithMapView_];

    *&v1[OBJC_IVAR___PXMapOptionsView_compassButton] = v18;
    [v18 setCompassVisibility_];
    v21.receiver = v1;
    v21.super_class = type metadata accessor for MapOptionsView();
    v19 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_1A47C36E8();
    sub_1A47C3AF4();
    sub_1A47C4BE0(*&v19[OBJC_IVAR___PXMapOptionsView_perspectiveButtonState], 0);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A47C36E8()
{
  v1 = v0;
  sub_1A47C3810();
  v2 = *&v0[OBJC_IVAR___PXMapOptionsView_perspectiveButton];
  [v2 addTarget:v0 action:sel_didTapPerspectiveButtonWithSender_ forControlEvents:64];
  v3 = sub_1A47C49BC();
  v4 = *&v0[OBJC_IVAR___PXMapOptionsView_perspectiveButtonPlatterView];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x60))(v3);
  [v5 addSubview_];

  v6 = *&v1[OBJC_IVAR___PXMapOptionsView_platterStackView];
  [v6 addArrangedSubview_];
  [v6 addArrangedSubview_];
  [v1 addSubview_];
  v7 = *&v1[OBJC_IVAR___PXMapOptionsView_compassButton];

  return [v1 addSubview_];
}

void sub_1A47C3810()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1A47C20F0(0, &qword_1EB128BE0, MEMORY[0x1E69DC1B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  sub_1A47C20F0(0, &qword_1EB126580, MEMORY[0x1E69DC598], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = *(v1 + OBJC_IVAR___PXMapOptionsView_mapSettingsButton);
  sub_1A524DDE4();
  sub_1A5247384();
  v10 = sub_1A5247374();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_1A524DD84();
  v11 = sub_1A524DE34();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_1A524DE64();
  sub_1A47C4488();
  v12 = [v9 addTarget:v1 action:sel_didTapMapModeSettingsButton forControlEvents:64];
  v13 = *((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR___PXMapOptionsView_topPlatterView)) + 0x60);
  v14 = v13(v12);
  [v14 addSubview_];

  v15 = *(v1 + OBJC_IVAR___PXMapOptionsView_userLocationStackView);
  v16 = v13([v15 addArrangedSubview_]);
  [v16 addSubview_];
}

id sub_1A47C3AB4()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

void sub_1A47C3AF4()
{
  v1 = v0;
  v74 = *&v0[OBJC_IVAR___PXMapOptionsView_userLocationButton];
  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  v77 = *&v0[OBJC_IVAR___PXMapOptionsView_compassButton];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  v76 = objc_opt_self();
  sub_1A47C59F4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A5361250;
  v3 = *&v0[OBJC_IVAR___PXMapOptionsView_platterStackView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v75 = v3;
  v7 = [v3 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 48) = v12;
  v13 = *&v0[OBJC_IVAR___PXMapOptionsView_topPlatterView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR___PXMapOptionsView_mapSettingsButton];
  v17 = [v16 topAnchor];
  v18 = [v13 topAnchor];
  v19 = [v17 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 64) = v19;
  v20 = [v16 centerXAnchor];
  v21 = [v13 &selRef_clipCompositionFallback + 2];
  v22 = [v20 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 72) = v22;
  v23 = [v16 widthAnchor];
  v24 = [v13 widthAnchor];
  v25 = [v23 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 80) = v25;
  v26 = [v16 heightAnchor];
  v27 = [v13 widthAnchor];
  v28 = [v26 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 88) = v28;
  v29 = *&v1[OBJC_IVAR___PXMapOptionsView_userLocationStackView];
  v30 = [v29 leadingAnchor];
  v31 = [v13 leadingAnchor];
  v32 = [v30 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 96) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v13 trailingAnchor];
  v35 = [v33 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 104) = v35;
  v36 = [v29 topAnchor];
  v37 = [v16 bottomAnchor];
  v38 = [v36 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 112) = v38;
  v39 = [v29 bottomAnchor];
  v40 = [v13 bottomAnchor];
  v41 = [v39 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 120) = v41;
  v42 = [v74 widthAnchor];
  v43 = [v13 widthAnchor];
  v44 = [v42 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 128) = v44;
  v45 = [v74 heightAnchor];
  v46 = [v13 widthAnchor];
  v47 = [v45 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 136) = v47;
  v48 = *&v1[OBJC_IVAR___PXMapOptionsView_perspectiveButtonPlatterView];
  v49 = [v48 heightAnchor];
  v50 = [v49 constraintEqualToConstant_];

  *(v2 + 144) = v50;
  v51 = [v48 &selRef_viewSpec + 6];
  v52 = [v48 heightAnchor];
  v53 = [v51 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 152) = v53;
  v54 = *&v1[OBJC_IVAR___PXMapOptionsView_perspectiveButton];
  v55 = [v54 heightAnchor];
  v56 = [v48 &selRef_viewSpec + 6];
  v57 = [v55 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 160) = v57;
  v58 = [v54 &selRef_viewSpec + 6];
  v59 = [v54 heightAnchor];
  v60 = [v58 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 168) = v60;
  v61 = [v77 topAnchor];
  v62 = [v75 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:10.0];

  *(v2 + 176) = v63;
  v64 = [v77 centerXAnchor];
  v65 = [v75 centerXAnchor];
  v66 = [v64 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 184) = v66;
  v67 = [v77 bottomAnchor];
  v68 = [v1 bottomAnchor];
  v69 = [v67 &selRef_containerTapToRadarDiagnosticsProvider + 5];

  *(v2 + 192) = v69;
  v70 = [v77 widthAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v2 + 200) = v71;
  v72 = [v77 heightAnchor];
  v73 = [v72 constraintEqualToConstant_];

  *(v2 + 208) = v73;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v78 = sub_1A524CA14();

  [v76 activateConstraints_];
}

void sub_1A47C4488()
{
  v1 = sub_1A5247354();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C20F0(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v16);
  PXMapOptionsMapStyle.systemIconName.getter(v19);
  v20 = sub_1A524C634();

  v32 = [objc_opt_self() systemImageNamed_];

  v30[1] = v3;
  if (v19 == 1)
  {
    v21 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:18.0];
    goto LABEL_7;
  }

  if (!v19)
  {
    if (qword_1EB18D9F0 != -1)
    {
      swift_once();
    }

    v21 = qword_1EB18D9F8;
LABEL_7:
    v22 = v21;
    v23 = *(v0 + OBJC_IVAR___PXMapOptionsView_mapSettingsButton);
    sub_1A524DE54();
    v24 = sub_1A524DE34();
    v25 = *(*(v24 - 8) + 48);
    if (v25(v18, 1, v24))
    {
      sub_1A42DC5BC(v18, v8);
      sub_1A524DE64();
      sub_1A4113CCC(v18);
    }

    else
    {
      v26 = v32;
      sub_1A524DDD4();
      sub_1A524DE64();
    }

    sub_1A524DE54();
    if (v25(v14, 1, v24))
    {
      sub_1A42DC5BC(v14, v8);
      sub_1A524DE64();
      sub_1A4113CCC(v14);
    }

    else
    {
      v27 = v22;
      sub_1A524DC74();
      sub_1A524DE64();
    }

    if (([v23 state] & 1) != 0 || (objc_msgSend(v23, sel_state) & 4) != 0)
    {
      sub_1A524DE54();
      if (!v25(v11, 1, v24))
      {
        v28 = [objc_opt_self() tertiarySystemFillColor];
        v29 = sub_1A524DC84();
        sub_1A5247334();
        v29(v33, 0);
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v31;
      sub_1A524DE54();
      if (!v25(v11, 1, v24))
      {
        sub_1A5247344();
        sub_1A524DC94();
LABEL_20:
        sub_1A524DE64();

        return;
      }
    }

    sub_1A42DC5BC(v11, v8);
    sub_1A524DE64();

    sub_1A4113CCC(v11);
    return;
  }

  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A47C49BC()
{
  v1 = OBJC_IVAR___PXMapOptionsView_perspectiveButtonState;
  v2 = *(v0 + OBJC_IVAR___PXMapOptionsView_perspectiveButton);
  if (qword_1EB18D9F0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB18D9F8;
  v4 = sub_1A524C634();

  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  [v2 setImage:v5 forState:0];
  v6 = *(v0 + v1);
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x150);

  return v7(v6, 1);
}

uint64_t sub_1A47C4B4C(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR___PXMapOptionsView_perspectiveButtonState) != result)
  {
    return sub_1A47C4BE0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1A47C4BE0(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR___PXMapOptionsView_perspectiveButtonState) = a1;
  v4 = OBJC_IVAR___PXMapOptionsView_perspectiveButtonState;
  v5 = *(v2 + OBJC_IVAR___PXMapOptionsView_perspectiveButton);
  if (qword_1EB18D9F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB18D9F8;
  v7 = sub_1A524C634();

  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  [v5 setImage:v8 forState:0];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x150))(*(v2 + v4), 1);
  v9 = *(v2 + OBJC_IVAR___PXMapOptionsView_perspectiveButtonPlatterView);
  v10 = *(v2 + OBJC_IVAR___PXMapOptionsView_platterStackView);
  v11 = *(v2 + OBJC_IVAR___PXMapOptionsView_perspectiveButton);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v2;
  v12[4] = a1;
  v12[5] = v9;
  v12[6] = v11;
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = v11;
  if ((a2 & 1) == 0)
  {
    v27 = v11;
    v28 = v9;
    v29 = v10;
    v30 = v27;
    v31 = v28;
    v32 = v29;
    v33 = v2;
    if (a1)
    {
      if ([v31 isHidden])
      {
        [v30 setHidden_];
      }

      [v32 layoutIfNeeded];
      [v33 invalidateIntrinsicContentSize];
      [v31 setAlpha_];
      [v31 setHidden_];
      [v30 setHidden_];
      [v32 layoutIfNeeded];
    }

    else
    {
      [v32 layoutIfNeeded];
      [v33 invalidateIntrinsicContentSize];
      [v31 setAlpha_];
      [v31 setHidden_];
      [v32 layoutIfNeeded];
    }

    v26 = 0;
    v12 = 0;
    return sub_1A3C784D4(v26, v12);
  }

  v35 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1A47C58C8;
  *(v14 + 24) = v12;
  v40 = sub_1A3C7146C;
  v41 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1A3C71444;
  v39 = &block_descriptor_274;
  v15 = _Block_copy(&aBlock);
  v16 = v11;
  v17 = v9;
  v18 = v10;
  v19 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v2;

  [v35 performWithoutAnimation_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = sub_1A47C594C;
    v41 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1A3C2E0D0;
    v39 = &block_descriptor_30_5;
    v25 = _Block_copy(&aBlock);

    [v35 animateWithDuration:v25 animations:0 completion:0.25];
    _Block_release(v25);

    v26 = sub_1A47C58C8;
    return sub_1A3C784D4(v26, v12);
  }

  __break(1u);
  return result;
}

id sub_1A47C5264()
{
  result = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:18.0];
  qword_1EB18D9F8 = result;
  return result;
}

id MapOptionsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MapOptionsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapOptionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A47C5488()
{
  v1 = OBJC_IVAR___PXMapOptionsView_platterStackView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setDistribution_];
  [v2 setAlignment_];
  [v2 setSpacing_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR___PXMapOptionsView_topPlatterView;
  type metadata accessor for MapOptionsPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v5;
  v6 = OBJC_IVAR___PXMapOptionsView_userLocationStackView;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v7 setAxis_];
  [v7 setDistribution_];
  [v7 setAlignment_];
  v8 = v7;
  [v8 setClipsToBounds_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR___PXMapOptionsView_mapSettingsButton;
  *(v0 + v9) = sub_1A47C2BF8();
  v10 = OBJC_IVAR___PXMapOptionsView_perspectiveButtonPlatterView;
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR___PXMapOptionsView_perspectiveButton;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  *(v0 + OBJC_IVAR___PXMapOptionsView_mapStyle) = 0;
  *(v0 + OBJC_IVAR___PXMapOptionsView_enableUserTrackingButton) = 0;
  *(v0 + OBJC_IVAR___PXMapOptionsView_perspectiveButtonState) = 0;
  swift_unknownObjectWeakInit();
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A47C5764()
{
  result = qword_1EB16EDE0[0];
  if (!qword_1EB16EDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16EDE0);
  }

  return result;
}

void sub_1A47C57F0()
{
  if (!qword_1EB1221C0)
  {
    sub_1A47C5764();
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1221C0);
    }
  }
}

void sub_1A47C584C()
{
  if (!qword_1EB1274A0)
  {
    sub_1A47C59F4(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1274A0);
    }
  }
}

id sub_1A47C58C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v3 = *(v0 + 48);
    if ([*(v0 + 40) isHidden])
    {
      [v3 setHidden_];
    }
  }

  [v2 layoutIfNeeded];

  return [v1 invalidateIntrinsicContentSize];
}

id sub_1A47C594C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 40);
    [v2 setAlpha_];
    [v2 setHidden_];
    [v3 setHidden_];
  }

  else
  {
    [*(v0 + 32) setAlpha_];
    [v2 setHidden_];
  }

  return [v1 layoutIfNeeded];
}

void sub_1A47C59F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for LemonadeSharedLibraryViewModeButton()
{
  result = qword_1EB17A910;
  if (!qword_1EB17A910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47C5A98@<X0>(uint64_t a1@<X8>)
{
  v92 = type metadata accessor for LemonadeSharedLibraryViewModeButton();
  v82 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = v3;
  v90 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5248734();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C6574();
  v9 = v8;
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C6AF0();
  v91 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C6E1C();
  v86 = v14;
  v85 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C72F4();
  v87 = *(v16 - 8);
  v88 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47C8120(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
  v18 = sub_1A5247C84();
  v19 = (*(*v99 + 200))(v18);

  if (v19 & 1) != 0 || (v20 = sub_1A5247C84(), v21 = (*(*v99 + 248))(v20), , (v21))
  {
    v93 = sub_1A3C38BD4();
    v94 = v22;
    v23 = (v1 + *(v92 + 24));
    v25 = *v23;
    v24 = v23[1];
    v78 = v25;
    v77 = v24;
    v97 = v25;
    v98 = v24;
    sub_1A47C8120(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
    v75 = v26;
    v27 = sub_1A524B6C4();
    v79 = a1;
    v72 = &v72;
    MEMORY[0x1EEE9AC00](v27);
    type metadata accessor for PXLibraryFilterViewMode();
    v74 = v28;
    sub_1A47C6644();
    v76 = type metadata accessor for PXLibraryFilterViewMode;
    sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    sub_1A47C69C8();
    v73 = v1;
    sub_1A3D5F9DC();
    v29 = v80;
    sub_1A524B814();
    sub_1A5248724();
    sub_1A47C72AC(&qword_1EB1426B8, sub_1A47C6574);
    sub_1A524A9A4();
    (*(v5 + 8))(v7, v4);
    (*(v81 + 8))(v29, v9);
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A47C6D0C(0);
    v31 = &v13[*(v30 + 36)];
    v32 = v100;
    *v31 = v99;
    *(v31 + 1) = v32;
    *(v31 + 2) = v101;
    sub_1A47C6CD0(0);
    v34 = &v13[*(v33 + 36)];
    *v34 = 0;
    *(v34 + 4) = 1;
    sub_1A524BE94();
    v36 = v35;
    v38 = v37;
    sub_1A47C6C28(0);
    v40 = &v13[*(v39 + 36)];
    *v40 = vdupq_n_s64(0x3FEB333333333333uLL);
    v40[1].i64[0] = v36;
    v40[1].i64[1] = v38;
    sub_1A47C6B80(0);
    v42 = &v13[*(v41 + 36)];
    sub_1A524BBE4();
    v43 = sub_1A524A064();
    sub_1A41CD494(0);
    v42[*(v44 + 36)] = v43;
    sub_1A47C6BB4(0, &qword_1EB142688, sub_1A47C6B80, sub_1A3F8C700);
    v46 = &v13[*(v45 + 36)];
    v47 = *MEMORY[0x1E697F468];
    v48 = sub_1A52494A4();
    (*(*(v48 - 8) + 104))(v46, v47, v48);
    sub_1A3F8C700();
    *&v46[*(v49 + 36)] = 256;
    v50 = v13;
    v51 = v73;
    v52 = v90;
    sub_1A47C7724(v73, v90);
    v53 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v54 = swift_allocObject();
    sub_1A47C7788(v52, v54 + v53);
    v55 = (v50 + *(v91 + 36));
    *v55 = sub_1A47C77EC;
    v55[1] = v54;
    v55[2] = 0;
    v55[3] = 0;
    v93 = v78;
    v94 = v77;
    sub_1A524B6A4();
    sub_1A47C7724(v51, v52);
    v56 = swift_allocObject();
    sub_1A47C7788(v52, v56 + v53);
    v57 = sub_1A47C712C(&qword_1EB1426C8, sub_1A47C6AF0, sub_1A47C6F28);
    v58 = sub_1A47C72AC(&qword_1EB1207B8, v76);
    v59 = v84;
    v60 = v74;
    v61 = v57;
    sub_1A524B144();

    sub_1A3D209AC(v50);
    sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    v62 = sub_1A5247C84();
    v63 = (*(*v93 + 144))(v62);

    v97 = v63;
    v64 = v90;
    sub_1A47C7724(v51, v90);
    v65 = swift_allocObject();
    sub_1A47C7788(v64, v65 + v53);
    v93 = v91;
    v94 = v60;
    v95 = v61;
    v96 = v58;
    swift_getOpaqueTypeConformance2();
    v66 = v83;
    v67 = v86;
    a1 = v79;
    sub_1A524B144();

    (*(v85 + 8))(v59, v67);
    v69 = v87;
    v68 = v88;
    (*(v87 + 32))(a1, v66, v88);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v87;
    v68 = v88;
  }

  return (*(v69 + 56))(a1, v70, 1, v68);
}

void sub_1A47C6574()
{
  if (!qword_1EB142638)
  {
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C6644();
    sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    sub_1A47C69C8();
    v0 = sub_1A524B824();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142638);
    }
  }
}

void sub_1A47C6644()
{
  if (!qword_1EB142640)
  {
    sub_1A47C8120(255, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C6748();
    sub_1A429BBA0();
    sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142640);
    }
  }
}

void sub_1A47C6748()
{
  if (!qword_1EB142648)
  {
    sub_1A47C684C();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C72AC(&qword_1EB142670, sub_1A47C684C);
    sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142648);
    }
  }
}

void sub_1A47C684C()
{
  if (!qword_1EB142650)
  {
    sub_1A47C8120(255, &qword_1EB142658, sub_1A47C68E0, MEMORY[0x1E6981F40]);
    sub_1A47C6940();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142650);
    }
  }
}

void sub_1A47C68E0()
{
  if (!qword_1EB142660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB142660);
    }
  }
}

unint64_t sub_1A47C6940()
{
  result = qword_1EB142668;
  if (!qword_1EB142668)
  {
    sub_1A47C8120(255, &qword_1EB142658, sub_1A47C68E0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142668);
  }

  return result;
}

unint64_t sub_1A47C69C8()
{
  result = qword_1EB142678;
  if (!qword_1EB142678)
  {
    sub_1A47C6644();
    sub_1A47C684C();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C72AC(&qword_1EB142670, sub_1A47C684C);
    sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142678);
  }

  return result;
}

void sub_1A47C6AF0()
{
  if (!qword_1EB142680)
  {
    sub_1A47C6BB4(255, &qword_1EB142688, sub_1A47C6B80, sub_1A3F8C700);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142680);
    }
  }
}

void sub_1A47C6BB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A47C6C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A47C6D48()
{
  if (!qword_1EB1426B0)
  {
    sub_1A47C6574();
    sub_1A5248734();
    sub_1A47C72AC(&qword_1EB1426B8, sub_1A47C6574);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1426B0);
    }
  }
}

void sub_1A47C6E1C()
{
  if (!qword_1EB1426C0)
  {
    sub_1A47C6AF0();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C712C(&qword_1EB1426C8, sub_1A47C6AF0, sub_1A47C6F28);
    sub_1A47C72AC(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1426C0);
    }
  }
}

unint64_t sub_1A47C6F28()
{
  result = qword_1EB1426D0;
  if (!qword_1EB1426D0)
  {
    sub_1A47C6BB4(255, &qword_1EB142688, sub_1A47C6B80, sub_1A3F8C700);
    sub_1A47C7008();
    sub_1A47C72AC(&qword_1EB1245F0, sub_1A3F8C700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1426D0);
  }

  return result;
}

unint64_t sub_1A47C7008()
{
  result = qword_1EB1426D8;
  if (!qword_1EB1426D8)
  {
    sub_1A47C6B80(255);
    sub_1A47C712C(&qword_1EB1426E0, sub_1A47C6C28, sub_1A47C70F0);
    sub_1A47C72AC(&qword_1EB127B08, sub_1A41CD494);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1426D8);
  }

  return result;
}

uint64_t sub_1A47C712C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47C71AC()
{
  result = qword_1EB1426F0;
  if (!qword_1EB1426F0)
  {
    sub_1A47C6D0C(255);
    sub_1A47C6574();
    sub_1A5248734();
    sub_1A47C72AC(&qword_1EB1426B8, sub_1A47C6574);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1426F0);
  }

  return result;
}

uint64_t sub_1A47C72AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47C72F4()
{
  if (!qword_1EB1426F8)
  {
    sub_1A47C6E1C();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C6AF0();
    sub_1A47C712C(&qword_1EB1426C8, sub_1A47C6AF0, sub_1A47C6F28);
    sub_1A47C72AC(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1426F8);
    }
  }
}

void sub_1A47C7434()
{
  type metadata accessor for LemonadeSharedLibraryViewModeButton();
  swift_getKeyPath();
  sub_1A47C8120(0, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
  sub_1A47C6748();
  sub_1A429BBA0();
  sub_1A47C72AC(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode);
  sub_1A47C684C();
  type metadata accessor for PXLibraryFilterViewMode();
  sub_1A47C72AC(&qword_1EB142670, sub_1A47C684C);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47C75E8(_BOOL8 *a1)
{
  v1 = PXLibraryFilterItemTagFromViewMode(*a1);
  sub_1A5249314();
  result = PXLibraryFilterMenuImageForItemTag(v1);
  if (result)
  {
    sub_1A524B524();
    result = PXLibraryFilterShortTitleForItemTag(v1);
    if (result)
    {
      v3 = result;
      sub_1A524C674();

      sub_1A3D5F9DC();
      v4 = sub_1A524A464();
      v6 = v5;
      v8 = v7 & 1;

      sub_1A3E75E68(v4, v6, v8);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A47C7724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryViewModeButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47C7788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibraryViewModeButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47C77EC()
{
  type metadata accessor for LemonadeSharedLibraryViewModeButton();
  sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v0 = *(v2 + 24);

  [v0 viewMode];

  sub_1A47C8120(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t objectdestroy_12Tm_1()
{
  v1 = (type metadata accessor for LemonadeSharedLibraryViewModeButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = MEMORY[0x1E6981E90];
  sub_1A47C8120(0, &qword_1EB121420, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = MEMORY[0x1E6981E98];
  sub_1A47C8120(0, &qword_1EB127218, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981E98]);

  v6 = v2 + v1[7];
  sub_1A47C8120(0, &qword_1EB133680, type metadata accessor for SharedLibraryFilterViewModel, v3);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1A47C8120(0, &qword_1EB127228, type metadata accessor for SharedLibraryFilterViewModel, v5);

  return swift_deallocObject();
}

void sub_1A47C7B28(void *a1, void *a2)
{
  type metadata accessor for LemonadeSharedLibraryViewModeButton();
  if (*a1 != *a2)
  {
    sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v4 = *(v6 + 24);

    sub_1A47C8120(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    [v4 setViewMode_];
  }
}

uint64_t sub_1A47C7C7C(void *a1, void *a2)
{
  result = type metadata accessor for LemonadeSharedLibraryViewModeButton();
  if (*a1 != *a2)
  {
    sub_1A47C8120(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v5 = *(v6 + 24);

    [v5 viewMode];

    sub_1A47C8120(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A47C7E18()
{
  sub_1A47C8120(319, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    sub_1A47C8120(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A47C8120(319, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A47C8120(319, &qword_1EB120C30, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A47C7F8C()
{
  result = qword_1EB142700;
  if (!qword_1EB142700)
  {
    sub_1A47C8120(255, &qword_1EB142708, sub_1A47C72F4, MEMORY[0x1E69E6720]);
    sub_1A47C6E1C();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A47C6AF0();
    sub_1A47C712C(&qword_1EB1426C8, sub_1A47C6AF0, sub_1A47C6F28);
    sub_1A47C72AC(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142700);
  }

  return result;
}

void sub_1A47C8120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47C81A4(uint64_t a1)
{
  v1[2] = a1;
  sub_1A3EE53E0(0);
  v1[3] = swift_task_alloc();
  v2 = sub_1A5240E64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1A524E5E4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1A524CC54();
  v1[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47C832C, v5, v4);
}

uint64_t sub_1A47C832C()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1A47C83F8;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47C83F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v2[15] = v0;

  v6 = *(v4 + 8);
  v2[16] = v6;
  v2[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {
    v9 = sub_1A47C8754;
  }

  else
  {
    v9 = sub_1A47C85A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A47C85A4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1A5240E34();
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v6 = sub_1A3C6E9EC();
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1A47C87E8;
    v9 = v0[6];

    return v10(v9, v6, 1);
  }

  return result;
}

uint64_t sub_1A47C8754()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C87E8(void *a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1A47C8FA8;
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1A47C8988;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1A47C8988()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1A47C8A54;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47C8A54()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  *(*v1 + 168) = v0;

  v3(v4, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_1A47C8E7C;
  }

  else
  {
    v8 = sub_1A47C8BFC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A47C8BFC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1A47C8D60;

  return (v6)(4, 0, &unk_1A53616F8, v2);
}

uint64_t sub_1A47C8D60()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A47C903C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A47C8F10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47C8E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C8F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C8FA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C903C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C90DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47C81A4(v2);
}

uint64_t sub_1A47C9170(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A524E5E4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_1A3EE53E0(0);
  v1[7] = swift_task_alloc();
  v3 = sub_1A5240E64();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1A524CC54();
  v1[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47C92F8, v5, v4);
}

uint64_t sub_1A47C92F8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1A5240E34();
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v6 = sub_1A3C5A374();
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1A47C94A8;
    v9 = v0[10];

    return (v10)(v9, 2, v6 & 1);
  }

  return result;
}

uint64_t sub_1A47C94A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  *(*v2 + 120) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1A47C9DC8;
  }

  else
  {
    v4[16] = a1;
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1A47C9634;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1A47C9634()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_1A3C52C70(0, &unk_1EB126880);
  v0[17] = UIViewController.descendant<A>(ofType:)(v3, v3);

  if (v2)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1A524EBB4();
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1A47C97AC;

    return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1A47C97AC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[19] = v0;

  v6 = *(v4 + 8);
  v2[20] = v6;
  v2[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {
    v9 = sub_1A47C9BE8;
  }

  else
  {
    v9 = sub_1A47C9958;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A47C9958()
{
  [*(v0 + 136) dismissViewControllerAnimated:1 completion:0];
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1A47C9A40;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47C9A40()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(*v1 + 184) = v0;

  v3(v4, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_1A47C9D2C;
  }

  else
  {
    v8 = sub_1A47C9C84;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A47C9BE8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47C9C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C9D2C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47C9DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47C9E9C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A47C9F4C;

  return sub_1A47CD7B0();
}

uint64_t sub_1A47C9F4C(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  v5 = sub_1A524CBC4();
  v3[8] = v5;
  v3[9] = v4;
  if (v1)
  {
    v6 = sub_1A47CA4A4;
  }

  else
  {
    v6 = sub_1A47CA0B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A47CA0B0()
{
  v1 = [*(v0 + 48) view];
  *(v0 + 80) = v1;
  if (v1)
  {
    [v1 bounds];
    sub_1A524D9E4();
  }

  v2 = *(v0 + 48);

  sub_1A47CFF58();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A47CA304()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CA508;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CA420;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47CA420()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A47CA4A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CA508()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A47CA590()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47C9E9C(v2);
}

uint64_t sub_1A47CA624(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 64) = a3;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1A524CC54();
  *(v7 + 72) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A47CA6C8, v9, v8);
}

void sub_1A47CA6C8()
{
  v1 = v0[2];
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = v0[3];
    v0[12] = 0;
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1A47CA850;
    v5 = v0[8];
    v6.n128_u64[0] = v0[6];
    v7.n128_u64[0] = v0[7];
    v8.n128_u64[0] = v0[4];
    v9.n128_u64[0] = v0[5];

    v11(2, v5, v8, v9, v6, v7);
  }

  else
  {

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_1A47CA850()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A47CAE9C;
  }

  else
  {
    v5 = sub_1A47CA98C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A47CA98C()
{
  v1 = v0[12] + 1;
  if (v1 == v0[2])
  {
    v2 = v0[3];
    v0[15] = 1;
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
    v13 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_1A47CABCC;
    v5 = v0[8];
    v6.n128_u64[0] = v0[6];
    v7.n128_u64[0] = v0[7];
    v8.n128_u64[0] = v0[4];
    v9.n128_u64[0] = v0[5];
    v10 = 3;
  }

  else
  {
    v0[12] = v1;
    v13 = (*((*MEMORY[0x1E69E7D40] & *v0[3]) + 0x90) + **((*MEMORY[0x1E69E7D40] & *v0[3]) + 0x90));
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1A47CA850;
    v5 = v0[8];
    v6.n128_u64[0] = v0[6];
    v7.n128_u64[0] = v0[7];
    v8.n128_u64[0] = v0[4];
    v9.n128_u64[0] = v0[5];
    v10 = 2;
  }

  return v13(v10, v5, v8, v9, v6, v7);
}

uint64_t sub_1A47CABCC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A47CAF00;
  }

  else
  {
    v5 = sub_1A47CAD08;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A47CAD08()
{
  v1 = *(v0 + 120);
  if (v1 == *(v0 + 16))
  {

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    *(v0 + 120) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0x90) + **((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0x90));
      v3 = swift_task_alloc();
      *(v0 + 128) = v3;
      *v3 = v0;
      v3[1] = sub_1A47CABCC;
      v4 = *(v0 + 64);
      v5.n128_u64[0] = *(v0 + 48);
      v6.n128_u64[0] = *(v0 + 56);
      v7.n128_u64[0] = *(v0 + 32);
      v8.n128_u64[0] = *(v0 + 40);

      v9(3, v4, v7, v8, v5, v6);
    }
  }
}

uint64_t sub_1A47CAE9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CAF00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CAFA4(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A47CB03C, v3, v2);
}

uint64_t sub_1A47CB03C()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 enableSolariumDetailsView];

  if (v2)
  {

    sub_1A47CFF58();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_1A47CB18C;

    return sub_1A47CD7B0();
  }
}

uint64_t sub_1A47CB18C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v1;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  if (v1)
  {
    v7 = sub_1A47CB70C;
  }

  else
  {
    v7 = sub_1A47CB2D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A47CB2D0()
{
  v1 = [*(v0 + 56) view];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    sub_1A43ACA40();
    [v2 frame];
    PhotosDynamicHeaderSpec.headerHeight(for:)(v4, v5);
    v7 = v6;
    [v2 bounds];
    v12 = UIEdgeInsetsInsetRect(v8, v9, v10, v11, v7, 0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = swift_task_alloc();
    *(v0 + 80) = v19;
    *(v19 + 2) = v3;
    v19[3] = v12;
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    *(v19 + 6) = v18;
    *(v19 + 7) = v2;
    v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
    v21 = v2;
    v27 = (v20 + *v20);
    v22 = swift_task_alloc();
    *(v0 + 88) = v22;
    *v22 = v0;
    v22[1] = sub_1A47CB56C;

    return (v27)(4, 0, &unk_1A53616D8, v19);
  }

  else
  {
    v24 = *(v0 + 56);

    sub_1A47CFF58();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1A47CB56C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A47CB770;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A47CB688;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47CB688()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A47CB70C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CB770()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A47CB7F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47CAFA4(v2);
}

uint64_t sub_1A47CB88C(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 56) = a2;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 64) = sub_1A524CC54();
  *(v6 + 72) = sub_1A524CC44();
  v13 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x90);
  v20 = (*MEMORY[0x1E69E7D40] & *a1) + 144;
  *(v6 + 80) = v13;
  *(v6 + 88) = v20 & 0xFFFFFFFFFFFFLL | 0x36E9000000000000;
  v21 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 96) = v14;
  *v14 = v6;
  v14[1] = sub_1A47CBA2C;
  v15.n128_f64[0] = a3;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;

  return v21(1, a2, v15, v16, v17, v18);
}

uint64_t sub_1A47CBA2C()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A47D0360, v4, v3);
  }

  else
  {
    v12 = (v2[10] + *v2[10]);
    v5 = swift_task_alloc();
    v2[14] = v5;
    *v5 = v2;
    v5[1] = sub_1A47CBC20;
    v6 = v2[7];
    v7.n128_u64[0] = v2[5];
    v8.n128_u64[0] = v2[6];
    v9.n128_u64[0] = v2[3];
    v10.n128_u64[0] = v2[4];

    return v12(0, v6, v9, v10, v7, v8);
  }
}

uint64_t sub_1A47CBC20()
{
  *(*v1 + 120) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A47D0364;
  }

  else
  {
    v4 = sub_1A47D036C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A47CBDBC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for PhotosUnifiedScrollTestDefinition();
  v1[3] = swift_task_alloc();
  sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A47CBE80, v3, v2);
}

uint64_t sub_1A47CBE80()
{
  LemonadeDetailsViewPerformanceTest.unifiedScrollTestDefinition.getter(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1A47CBF20;
  v2 = *(v0 + 24);

  return sub_1A446B118(v2);
}

uint64_t sub_1A47CBF20()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1A47CC0E4;
  }

  else
  {
    v5 = sub_1A47CC05C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A47CC05C()
{
  v1 = *(v0 + 24);

  sub_1A47D0070(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47CC0E4()
{
  v1 = *(v0 + 24);

  sub_1A47D0070(v1, type metadata accessor for PhotosUnifiedScrollTestDefinition);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47CC16C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47CBDBC(v2);
}

uint64_t sub_1A47CC240(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A47CC2F0;

  return sub_1A47CE34C();
}

uint64_t sub_1A47CC2F0(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  v5 = sub_1A524CBC4();
  v3[8] = v5;
  v3[9] = v4;
  if (v1)
  {
    v6 = sub_1A47D0368;
  }

  else
  {
    v6 = sub_1A47CC454;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A47CC454()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = [*(v0 + 48) view];
    *(v0 + 80) = v2;
    if (v2)
    {
      [v2 bounds];
      sub_1A524D9E4();
    }
  }

  sub_1A47CFF58();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A47CC6AC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CA508;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CC7C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47CC7C8()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A47CC84C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47CC240(v2);
}

uint64_t sub_1A47CC8E0(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 56) = a2;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 64) = sub_1A524CC54();
  *(v6 + 72) = sub_1A524CC44();
  v13 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x90);
  v20 = (*MEMORY[0x1E69E7D40] & *a1) + 144;
  *(v6 + 80) = v13;
  *(v6 + 88) = v20 & 0xFFFFFFFFFFFFLL | 0x36E9000000000000;
  v21 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 96) = v14;
  *v14 = v6;
  v14[1] = sub_1A47CCA80;
  v15.n128_f64[0] = a3;
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  v18.n128_f64[0] = a6;

  return (v21)(0, a2, v15, v16, v17, v18);
}

uint64_t sub_1A47CCA80()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A47CCE34, v4, v3);
  }

  else
  {
    v12 = (v2[10] + *v2[10]);
    v5 = swift_task_alloc();
    v2[14] = v5;
    *v5 = v2;
    v5[1] = sub_1A47CCC74;
    v6 = v2[7];
    v7.n128_u64[0] = v2[5];
    v8.n128_u64[0] = v2[6];
    v9.n128_u64[0] = v2[3];
    v10.n128_u64[0] = v2[4];

    return v12(1, v6, v9, v10, v7, v8);
  }
}

uint64_t sub_1A47CCC74()
{
  *(*v1 + 120) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A47CCE98;
  }

  else
  {
    v4 = sub_1A47CCDD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A47CCDD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CCE34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CCE98()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A47CCF1C()
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = [objc_opt_self() px_systemPhotoLibrary];
  if (!v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_1A3C36888();
  v13 = sub_1A3C5A374();
  v28 = sub_1A414E6C8(v12, 1, 0, 0, v13 & 1);

  v14 = [v28 firstObject];
  if (v14)
  {
    v15 = v14;
    v27 = v0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1A524E404();

    v29 = 0xD000000000000022;
    v30 = 0x80000001A53EB950;
    v16 = [v15 localIdentifier];
    v17 = sub_1A524C674();
    v19 = v18;

    MEMORY[0x1A5907B60](v17, v19);

    sub_1A5240E34();

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v20 = *(v5 + 32);
      v20(v10, v3, v4);
      (*(v5 + 16))(v7, v10, v4);
      v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v22 = swift_allocObject();
      v23 = v27;
      *(v22 + 16) = v27;
      v20((v22 + v21), v7, v4);
      v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x58);
      v25 = v23;
      v24(&unk_1A5361638, v22);

      (*(v5 + 8))(v10, v4);
      return;
    }

    goto LABEL_9;
  }

  v26 = v28;
}

void sub_1A47CD310()
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v32 - v7;
  v8 = sub_1A5244EE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() px_systemPhotoLibrary];
  if (!v12)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69C12A8], v8);
  sub_1A3C36888();
  v14 = sub_1A3C30368();
  v15 = sub_1A414E968(v13, v11, 1, 0, v14 & 1);

  (*(v9 + 8))(v11, v8);
  v16 = [v15 firstObject];
  if (v16)
  {
    v17 = v16;
    v34 = v15;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1A524E404();

    v38 = 0xD00000000000001BLL;
    v39 = 0x80000001A53C1120;
    v33 = v17;
    v18 = [v17 localIdentifier];
    v19 = sub_1A524C674();
    v21 = v20;

    MEMORY[0x1A5907B60](v19, v21);

    sub_1A5240E34();

    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      v22 = v4;
      v23 = *(v4 + 32);
      v24 = v36;
      v23(v36, v2, v3);
      v25 = *(v4 + 16);
      v26 = v35;
      v25(v35, v24, v3);
      v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
      v28 = swift_allocObject();
      v29 = v37;
      *(v28 + 16) = v37;
      v23((v28 + v27), v26, v3);
      v30 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x58);
      v31 = v29;
      v30(&unk_1A5361640, v28);

      (*(v22 + 8))(v24, v3);
      return;
    }

    goto LABEL_8;
  }
}

uint64_t sub_1A47CD7B0()
{
  v1[2] = v0;
  sub_1A3EE53E0(0);
  v1[3] = swift_task_alloc();
  v2 = sub_1A5240E64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1A524E5E4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1A524CC54();
  v1[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47CD938, v5, v4);
}

uint64_t sub_1A47CD938()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1A47CDA04;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47CDA04()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v2[15] = v0;

  v6 = *(v4 + 8);
  v2[16] = v6;
  v2[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {
    v9 = sub_1A47C8754;
  }

  else
  {
    v9 = sub_1A47CDBB0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A47CDBB0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1A5240E34();
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_1A47CDD68;
    v10 = v0[6];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A47CDD68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 104);
  v9 = *(v3 + 96);
  if (v1)
  {
    v10 = sub_1A47CE2B8;
  }

  else
  {
    v10 = sub_1A47CDF08;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1A47CDF08()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1A47CDFD4;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47CDFD4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  v3(v4, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_1A47CE218;
  }

  else
  {
    v8 = sub_1A47CE17C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A47CE17C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_1A47CE218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CE2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CE34C()
{
  v1[2] = v0;
  sub_1A3EE53E0(0);
  v1[3] = swift_task_alloc();
  v2 = sub_1A5240E64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1A5244EE4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1A524E5E4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1A524CC54();
  v1[14] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A47CE530, v6, v5);
}

uint64_t sub_1A47CE530()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1A47CE5FC;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47CE5FC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v2[18] = v0;

  v6 = *(v4 + 8);
  v2[19] = v6;
  v2[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {
    v9 = sub_1A47CEB78;
  }

  else
  {
    v9 = sub_1A47CE7A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

id sub_1A47CE7A8()
{
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  (*(v4 + 104))(v3, *MEMORY[0x1E69C12A8], v5);
  sub_1A3C36888();
  v6 = sub_1A3C30368();
  v7 = sub_1A414E968(v2, v3, 1, 0, v6 & 1);
  v0[21] = v7;

  (*(v4 + 8))(v3, v5);
  v8 = [v7 firstObject];
  v0[22] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];
    sub_1A524E404();

    v13 = [v9 localIdentifier];
    v14 = sub_1A524C674();
    v16 = v15;

    MEMORY[0x1A5907B60](v14, v16);

    sub_1A5240E34();

    result = (*(v11 + 48))(v12, 1, v10);
    if (result != 1)
    {
      v17 = v0[2];
      (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
      v18 = sub_1A3C6E9EC();
      v19 = sub_1A3C5A374();
      v20 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x60);
      v24 = (v20 + *v20);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_1A47CEC20;
      v22 = v0[6];

      return (v24)(v22, v18, v19 & 1);
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v0[26] = 0;
  sub_1A524EBB4();
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_1A47CEE50;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47CEB78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CEC20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1A47CF170;
  }

  else
  {
    v4[25] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1A47CED48;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A47CED48()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  (*(v3 + 8))(v2, v4);
  *(v0 + 208) = v1;
  sub_1A524EBB4();
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_1A47CEE50;

  return sub_1A3DCFAB0(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A47CEE50()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  *(*v1 + 224) = v0;

  v3(v4, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_1A47CF0B4;
  }

  else
  {
    v8 = sub_1A47CEFF8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A47CEFF8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_1A47CF0B4()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A47CF170()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A47CF244(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A47CF394;
  v6.n128_u64[0] = 2.0;

  return v8(v6);
}

uint64_t sub_1A47CF394()
{
  v2 = *v1;
  v2[7] = v0;

  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;
  if (v0)
  {
    v5 = sub_1A47CF778;
  }

  else
  {
    v5 = sub_1A47CF4F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A47CF4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1A47CF65C;

  return (v6)(0, 1, &unk_1A53616B8, v1);
}

uint64_t sub_1A47CF65C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CF7DC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47CF778()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CF7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47CF84C()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A47CF244(v4, v0 + v3);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A47CF9E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A47CFA80, v4, v3);
}

uint64_t sub_1A47CFA80()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A47CFBC4;
  v5 = v0[3];

  return (v7)(v5, v2, 0);
}

uint64_t sub_1A47CFBC4(void *a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A446DC90;
  }

  else
  {

    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

id sub_1A47CFCEC(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A47D0070(a1, type metadata accessor for PhotosPPTTestRunner);
  return v7;
}

id sub_1A47CFDA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDetailsViewPPTTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeDetailsViewPPTTests()
{
  result = qword_1EB1D3B40;
  if (!qword_1EB1D3B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47CFE2C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A47C81A4(v2);
}

uint64_t sub_1A47CFEC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A47CF9E8(v2, v3);
}

unint64_t sub_1A47CFF58()
{
  result = qword_1EB1D3B50;
  if (!qword_1EB1D3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D3B50);
  }

  return result;
}

uint64_t sub_1A47CFFAC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A47CC8E0(v2, v7, v3, v4, v5, v6);
}

uint64_t sub_1A47D0070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47D00D0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A47CB88C(v2, v7, v3, v4, v5, v6);
}

uint64_t sub_1A47D0194()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A47CA624(v2, v3, v8, v4, v5, v6, v7);
}

uint64_t sub_1A47D0264()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47C9170(v2);
}

unint64_t sub_1A47D030C()
{
  result = qword_1EB1D3B58[0];
  if (!qword_1EB1D3B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D3B58);
  }

  return result;
}

uint64_t LemonadeActiveSearchUpdater.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = xmmword_1A5317AF0;
  *(v0 + 72) = 2;
  *(v0 + 88) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

Swift::Void __swiftcall LemonadeActiveSearchUpdater.updateSearchText(_:removingCurrentContainer:)(NSAttributedString _, Swift::Bool removingCurrentContainer)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 88);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(_.super.isa, removingCurrentContainer, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v2 + 16);
    *(v2 + 16) = _;
    *(v2 + 24) = removingCurrentContainer;
    v7 = _.super.isa;
  }
}

uint64_t LemonadeActiveSearchUpdater.updateContainer(_:)(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(a1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A3C30954(a1, v6, sub_1A3DA26DC);
    swift_beginAccess();
    sub_1A47D0558(v6, v1 + 32);
    return swift_endAccess();
  }
}

uint64_t sub_1A47D0558(uint64_t a1, uint64_t a2)
{
  sub_1A47D05BC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall LemonadeActiveSearchUpdater.updateIsEditing(_:)(Swift::Bool a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    *(v1 + 72) = a1;
  }
}

uint64_t LemonadeActiveSearchUpdater.deinit()
{
  sub_1A47D0944(v0 + 32, sub_1A47D05BC);
  sub_1A3D35A10(v0 + 80);
  return v0;
}

uint64_t LemonadeActiveSearchUpdater.__deallocating_deinit()
{
  sub_1A47D0944(v0 + 32, sub_1A47D05BC);
  sub_1A3D35A10(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47D0768(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    swift_getObjectType();
    v5 = *(a2 + 8);
    v6 = v4;
    v5();

    v7 = *(v2 + 16);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;

  swift_beginAccess();
  sub_1A3C30954(v2 + 32, &v14, sub_1A47D05BC);
  if (*(&v15 + 1) == 1)
  {
    v8 = sub_1A47D05BC;
    v9 = &v14;
  }

  else
  {
    v17 = v14;
    *v18 = v15;
    *&v18[16] = v16;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(&v17, ObjectType, a2);
    v8 = sub_1A47D05F0;
    v9 = &v17;
  }

  sub_1A47D0944(v9, v8);
  v17 = 0uLL;
  *v18 = 0;
  *&v18[8] = xmmword_1A5317AF0;
  swift_beginAccess();
  sub_1A47D0558(&v17, v2 + 32);
  swift_endAccess();
  v11 = *(v2 + 72);
  if (v11 != 2)
  {
    v12 = swift_getObjectType();
    (*(a2 + 24))(v11 & 1, v12, a2);
  }

  *(v2 + 72) = 2;
  *(v2 + 88) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A47D0944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A47D09D0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A3C341C8(a1, v3 + OBJC_IVAR____TtC12PhotosUICore45PhotosDetailsViewHeaderTungstenLayoutProvider_titleModel);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void sub_1A47D0A68(void *a1)
{
  type metadata accessor for PhotosDetailsViewHeaderTungstenLayout();
  sub_1A3C341C8(v1 + OBJC_IVAR____TtC12PhotosUICore45PhotosDetailsViewHeaderTungstenLayoutProvider_titleModel, v3);
  sub_1A43F661C(v3, a1);
}

id sub_1A47D0B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsViewHeaderTungstenLayoutProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeatureSurveyDataSource.collectTapToRadarDiagnostics(into:)(void *a1)
{
  v2 = v1;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1A524C814();
  sub_1A5246F14();
  v14 = sub_1A524C634();
  v15 = [a1 beginCollectionOperationWithName:v14 timeout:30.0];

  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v8 + 16))(v10, v13, v7);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v2;
  *(v18 + 5) = a1;
  *(v18 + 6) = v15;
  (*(v8 + 32))(&v18[v17], v10, v7);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A3D4D930(0, 0, v6, &unk_1A5361878, v18);
  swift_unknownObjectRelease();

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A47D0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[6] = a5;
  v8 = sub_1A5240E64();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v11 = (*MEMORY[0x1E69C1250] + MEMORY[0x1E69C1250]);
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_1A47D0F70;

  return v11();
}

uint64_t sub_1A47D0F70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1A47D11C0;
  }

  else
  {
    v4 = sub_1A47D1084;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A47D1084()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v14 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);
    do
    {
      v8 = *(v0 + 88);
      v9 = *(v0 + 72);
      v10 = *(v0 + 48);
      v14(v8, v6, v9);
      v11 = sub_1A5240D44();
      (*(v4 - 8))(v8, v9);
      [v10 addAttachment_];

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  [*(v0 + 56) endWithSuccess:1 error:0];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A47D11C0()
{
  v1 = v0[14];
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  v6 = v0[14];
  v7 = v0[7];
  v8 = sub_1A5240B74();
  [v7 endWithSuccess:0 error:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A47D1364()
{
  v2 = *(sub_1A5246F24() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A47D0E68(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_1A47D1450(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();

  FeatureSurveyDataSource.collectTapToRadarDiagnostics(into:)(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1A47D14A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

BOOL sub_1A47D14C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A47D18BC(v5, v7);
}

unint64_t sub_1A47D1530@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A47D1928(*a1);
  *a2 = result;
  return result;
}

void sub_1A47D155C(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1A3F37DA4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 56), "priorityIndex");
  *(inited + 70) = -4864;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F24E98();
  swift_arrayDestroy();
  if ((*(a2 + 16) & 1) == 0)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A4551E1C(v9, 0x76654C726566666FLL, 0xEA00000000006C65, isUniquelyReferenced_nonNull_native);
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A4551E1C(v11, 0x707954726566666FLL, 0xE900000000000065, v12);
  }

  if ((a4 & 0xFF00) != 0x300)
  {
    if ((a4 & 1) == 0)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4551E1C(v13, 0xD000000000000015, 0x80000001A53EBB70, v14);
    }

    if ((a4 & 0xFF00) != 0x200)
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4551E1C(v15, 0x61636F4C77656976, 0xEC0000006E6F6974, v16);
    }

    if ((a4 & 0xFF0000) != 0x20000)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4551E1C(v17, 0x6174536B63617473, 0xEA00000000006574, v18);
    }
  }

  v19 = sub_1A524C634();
  sub_1A3C7B6A4();
  v20 = sub_1A524C3D4();

  AnalyticsSendEvent();
}

BOOL sub_1A47D18BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

unint64_t sub_1A47D1928(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1A47D193C()
{
  result = qword_1EB142790;
  if (!qword_1EB142790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142790);
  }

  return result;
}

unint64_t sub_1A47D1994()
{
  result = qword_1EB142798;
  if (!qword_1EB142798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142798);
  }

  return result;
}

unint64_t sub_1A47D19EC()
{
  result = qword_1EB1427A0;
  if (!qword_1EB1427A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427A0);
  }

  return result;
}

uint64_t sub_1A47D1A40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A47D1A60(uint64_t result, int a2, int a3)
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

  *(result + 33) = v3;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudQuotaNotificationItemAdditionalInformation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudQuotaNotificationItemAdditionalInformation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1A47D1B98()
{
  v0 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v0, qword_1EB1D40E8);
  __swift_project_value_buffer(v0, qword_1EB1D40E8);
  return sub_1A5240B94();
}

uint64_t static RevealAssetsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D40E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RevealAssetsIntent.title.setter(uint64_t a1)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D40E8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RevealAssetsIntent.title.modify())()
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1D40E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A47D1E44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D40E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A47D1F04(uint64_t a1)
{
  if (qword_1EB1D40E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D40E8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t RevealAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v32 = sub_1A5240334();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-v11];
  sub_1A3F57E84();
  v28 = v13;
  v14 = sub_1A5240BB4();
  v15 = *(v14 - 8);
  v29 = *(v15 + 56);
  v30 = v15 + 56;
  v29(v12, 1, 1, v14);
  v34 = 0;
  v16 = sub_1A523FDB4();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v17(v6, 1, 1, v16);
  v25 = *MEMORY[0x1E695A500];
  v18 = *(v1 + 104);
  v26 = v1 + 104;
  v27 = v18;
  v18(v3);
  sub_1A3F58824();
  v19 = v3;
  v20 = sub_1A523FF94();
  v21 = v31;
  *v31 = v20;
  sub_1A47D23AC();
  v28 = v22;
  v29(v12, 1, 1, v14);
  v33 = 30;
  v17(v9, 1, 1, v16);
  v17(v6, 1, 1, v16);
  v27(v19, v25, v32);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  result = sub_1A523FF74();
  v21[1] = result;
  return result;
}

void sub_1A47D235C()
{
  if (!qword_1EB12EEB8)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EEB8);
    }
  }
}

void sub_1A47D23AC()
{
  if (!qword_1EB1427A8)
  {
    sub_1A420E4B0();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1427A8);
    }
  }
}

uint64_t sub_1A47D2408@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v33 = a3;
  v34 = a1;
  v36 = sub_1A5240334();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25[-v13];
  sub_1A3F57E84();
  v32 = v15;
  v16 = sub_1A5240BB4();
  v17 = *(v16 - 8);
  v30 = *(v17 + 56);
  v31 = v17 + 56;
  v30(v14, 1, 1, v16);
  v38 = 0;
  v18 = sub_1A523FDB4();
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v26 = *MEMORY[0x1E695A500];
  v20 = *(v3 + 104);
  v27 = v3 + 104;
  v28 = v20;
  v20(v5);
  sub_1A3F58824();
  v21 = v5;
  v32 = sub_1A523FF94();
  v22 = v33;
  *v33 = v32;
  sub_1A47D23AC();
  v29 = v23;
  v30(v14, 1, 1, v16);
  v37 = 30;
  v19(v11, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v28(v21, v26, v36);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  v22[1] = sub_1A523FF74();
  v38 = v34;
  sub_1A523FF54();
  LOBYTE(v38) = v35;
  return sub_1A523FF54();
}

uint64_t RevealAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A47D2864, v4, v3);
}

uint64_t sub_1A47D2864()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1A454AE30();
  *v4 = v0;
  v4[1] = sub_1A47D2970;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5361C28);
}

uint64_t sub_1A47D2970()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDDA50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DED3D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47D2A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[71] = a3;
  v3[70] = a2;
  v3[69] = a1;
  sub_1A524CC54();
  v3[72] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[73] = v5;
  v3[74] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47D2B30, v5, v4);
}

uint64_t sub_1A47D2B30()
{
  sub_1A523FF44();
  v1 = *(*(v0 + 536) + 16);

  if (v1 == 1)
  {
    sub_1A523FF44();
    v2 = *(v0 + 544);
    if (*(v2 + 16))
    {
      v3 = *(v2 + 32);
      v4 = *(v2 + 64);
      *(v0 + 32) = *(v2 + 48);
      *(v0 + 48) = v4;
      *(v0 + 16) = v3;
      v5 = *(v2 + 80);
      v6 = *(v2 + 96);
      v7 = *(v2 + 112);
      *(v0 + 112) = *(v2 + 128);
      *(v0 + 80) = v6;
      *(v0 + 96) = v7;
      *(v0 + 64) = v5;
      sub_1A3F67450(v0 + 16, v0 + 120);

      v8 = *(v0 + 96);
      *(v0 + 288) = *(v0 + 80);
      *(v0 + 304) = v8;
      *(v0 + 320) = *(v0 + 112);
      v9 = *(v0 + 32);
      *(v0 + 224) = *(v0 + 16);
      *(v0 + 240) = v9;
      v10 = *(v0 + 64);
      *(v0 + 256) = *(v0 + 48);
      *(v0 + 272) = v10;
      v11 = swift_task_alloc();
      *(v0 + 600) = v11;
      *v11 = v0;
      v11[1] = sub_1A47D2CE4;

      return sub_1A3F660E4(v0 + 224);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    sub_1A523FF44();
    v13 = *(v0 + 632);
    v14 = swift_task_alloc();
    *(v0 + 616) = v14;
    *v14 = v0;
    v14[1] = sub_1A47D2EC4;

    return sub_1A494D63C(v13);
  }

  return result;
}

uint64_t sub_1A47D2CE4()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 256);
    *(v2 + 344) = *(v2 + 240);
    *(v2 + 360) = v4;
    *(v2 + 328) = v3;
    v5 = *(v2 + 272);
    v6 = *(v2 + 288);
    v7 = *(v2 + 304);
    *(v2 + 424) = *(v2 + 320);
    *(v2 + 392) = v6;
    *(v2 + 408) = v7;
    *(v2 + 376) = v5;
    sub_1A3F678A8(v2 + 328);
    v8 = *(v2 + 592);
    v9 = *(v2 + 584);
    v10 = sub_1A47D3000;
  }

  else
  {
    v11 = *(v2 + 240);
    *(v2 + 432) = *(v2 + 224);
    *(v2 + 448) = v11;
    v12 = *(v2 + 256);
    v13 = *(v2 + 272);
    v14 = *(v2 + 288);
    v15 = *(v2 + 304);
    *(v2 + 528) = *(v2 + 320);
    *(v2 + 496) = v14;
    *(v2 + 512) = v15;
    *(v2 + 464) = v12;
    *(v2 + 480) = v13;
    sub_1A3F678A8(v2 + 432);
    v8 = *(v2 + 592);
    v9 = *(v2 + 584);
    v10 = sub_1A47D2E58;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1A47D2E58()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D2EC4()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_1A47D3064;
  }

  else
  {
    v5 = sub_1A47D2E58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A47D3000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D3064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D30C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A47D2A8C(a1, v5, v4);
}

unint64_t sub_1A47D3178()
{
  result = qword_1EB1427B0;
  if (!qword_1EB1427B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427B0);
  }

  return result;
}

unint64_t sub_1A47D31D0()
{
  result = qword_1EB1427B8;
  if (!qword_1EB1427B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427B8);
  }

  return result;
}

uint64_t sub_1A47D3278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A47D331C, v6, v5);
}

uint64_t sub_1A47D331C()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1A47D341C;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5361D58);
}

uint64_t sub_1A47D341C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A47D3538;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A47CCDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47D3538()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47D35AC(uint64_t a1)
{
  v2 = sub_1A454AE30();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A47D35F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A47D2A8C(a1, v5, v4);
}

uint64_t sub_1A47D36A4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v37 = type metadata accessor for LemonadeShelfPlaceholderView();
  *&v10 = MEMORY[0x1EEE9AC00](v37).n128_u64[0];
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isCloudPhotoLibraryEnabled];
  v13 = sub_1A524C634();
  v14 = PXLemonadeLocalizedString(v13);

  v35 = sub_1A524C674();
  v16 = v15;

  v17 = sub_1A524C634();

  v18 = PXLemonadeLocalizedString(v17);

  v19 = sub_1A524C674();
  v21 = v20;

  v22 = a1;
  if (a2)
  {
    v23 = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    v25 = sub_1A3C5A374();
    v26 = sub_1A3C5A374();
    v27 = sub_1A3C5A374();
    sub_1A425463C(v22, v23 & 1, v24 & 1, v25 & 1, v26 & 1, v27 & 1, 0x69662E6B636F6C63, 0xEA00000000006C6CLL, v12, v35, v16, v19, v21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A47D3B7C(v12, v9, type metadata accessor for LemonadeShelfPlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A47DCB5C(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A47DCB5C(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    sub_1A5249744();
    v28 = type metadata accessor for LemonadeShelfPlaceholderView;
    v29 = v12;
  }

  else
  {
    v30 = sub_1A3C5A374();
    v31 = sub_1A3C5A374();
    v32 = sub_1A3C5A374();
    sub_1A463DB54(v22, v30 & 1, v31 & 1, v32 & 1, 0x69662E6B636F6C63, 0xEA00000000006C6CLL, v35, v16, v6, v19, v21, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A47D3B7C(v6, v9, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A47DCB5C(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A47DCB5C(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    sub_1A5249744();
    v28 = type metadata accessor for LemonadePlaceholderView;
    v29 = v6;
  }

  return sub_1A47DC954(v29, v28);
}

uint64_t sub_1A47D3B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A47D3BE4(int a1@<W1>, uint64_t a2@<X8>)
{
  v10 = a1;
  v11 = a2;
  sub_1A47DCAA4(0, &qword_1EB1292D0, MEMORY[0x1E69C1D98], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A47D4188(0);
  v9[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v9[0] = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A40F354C();
  MEMORY[0x1EEE9AC00](v5);
  v9[3] = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A5242E34();
  sub_1A5245A14();
}

void sub_1A47D41D0()
{
  if (!qword_1EB124CB8)
  {
    sub_1A40F3434();
    sub_1A47DC7D0(255, &qword_1EB122AA0, sub_1A47D43C0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A5243594();
    sub_1A47DCB5C(&qword_1EB124EC8, sub_1A40F3434);
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
    sub_1A47D44A8();
    sub_1A47DCB5C(&qword_1EB129098, MEMORY[0x1E69C2520]);
    v0 = sub_1A52440B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124CB8);
    }
  }
}

void sub_1A47D4358(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A47D43C0()
{
  if (!qword_1EB124DA0)
  {
    sub_1A40F3434();
    sub_1A47DCB5C(&qword_1EB124EC8, sub_1A40F3434);
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
    v0 = sub_1A5243394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124DA0);
    }
  }
}

unint64_t sub_1A47D44A8()
{
  result = qword_1EB122AA8;
  if (!qword_1EB122AA8)
  {
    sub_1A47DC7D0(255, &qword_1EB122AA0, sub_1A47D43C0, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB124DA8, sub_1A47D43C0);
    sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122AA8);
  }

  return result;
}

unint64_t sub_1A47D45CC()
{
  result = qword_1EB1242C0;
  if (!qword_1EB1242C0)
  {
    sub_1A47D4188(255);
    sub_1A47DCB5C(&qword_1EB124CC0, sub_1A47D41D0);
    sub_1A47DCB5C(&qword_1EB1279C8, sub_1A4178698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1242C0);
  }

  return result;
}

uint64_t sub_1A47D46B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4();
  v6 = v5;
  v7 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v9 = v8;
  sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A52F8E10;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69C12A8], v10);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v13;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
}

void sub_1A47D485C(uint64_t a1@<X8>)
{
  sub_1A47DCAA4(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v9 = [swift_getObjCClassFromMetadata() sharedInstance];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v25 = v9;
    v23 = sub_1A3C47918();
    v12 = v11;
    v13 = sub_1A3C47918();
    v15 = v14;
    v16 = sub_1A3C52D68();
    v24 = a1;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = sub_1A3C4ED50();
    v26 = 1;
    *v7 = sub_1A47D4C0C;
    *(v7 + 1) = v10;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v23;
    *(v7 + 6) = v12;
    *(v7 + 7) = v13;
    *(v7 + 8) = v15;
    *(v7 + 9) = v17;
    *(v7 + 10) = v19;
    v7[88] = v21;
    v7[89] = v22;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    sub_1A3C52D78(v7, 0, v4, v24);
  }
}

uint64_t sub_1A47D4AAC(uint64_t a1, void *a2)
{
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69C21F8])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  if ([a2 enableEventsCellCollageStyle])
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1A47D4C14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v37 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v14;
  v15 = objc_opt_self();
  v16 = sub_1A524CA14();
  v17 = sub_1A524C634();
  v44 = a1;
  v41 = [v15 transientCollectionListWithCollections:v16 title:v17 identifier:0 photoLibrary:a1];

  v45 = a2;
  v38 = *(a2 + 24);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v43 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = *(v7 + 104);
  v18(v11, *MEMORY[0x1E69C12B0], v6);
  sub_1A47DCB5C(&qword_1EB128F98, MEMORY[0x1E69C12C8]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v50[0] == v58[0])
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1A524EAB4();
  }

  v20 = *(v7 + 8);
  v40 = v7 + 8;
  v39 = v20;
  v20(v11, v6);

  if (v19)
  {
    sub_1A5244824();
    v21 = sub_1A5244814();
    v18(v46, *MEMORY[0x1E69C12A8], v6);
  }

  else
  {
    (*(v7 + 16))(v46, a3, v6);
    v21 = 0;
  }

  v22 = v19 ^ 1;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v57 = 2;
  v23 = *(v45 + 40);
  v24 = v38;
  if (v23)
  {
    v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x258))(v38);
  }

  else
  {
    v26 = v38;
    v25 = 0;
  }

  sub_1A47D4358(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v47);
  v55 = v47;
  v56 = v48;
  sub_1A3C6C18C(&v53);
  v51 = v53;
  v52 = v54;
  v27 = sub_1A3C5A374();
  v28 = sub_1A3C5A374();
  v29 = sub_1A3C5A374();
  v30 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v55, 0, &unk_1F17249E0, v21, v22 & 1, &v51, v27 & 1, &v57, v50, 2, v28 & 1, v29 & 1, v30 & 1, v25);
  v48 = 0;
  v47 = 0;
  v49 = 0;
  v31 = v42;
  (*(v7 + 16))(v42, v46, v6);
  v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = (v37 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v32, v31, v6);
  v35 = v44;
  *(v34 + v33) = v44;
  v36 = v35;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v41, v24, v58, v50, &v47, sub_1A47DCC04, v34);
}

uint64_t sub_1A47D5264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5242314();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47D57A0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB122C88, sub_1A47D5824, sub_1A47D57A0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  if (!shouldUseNewCollectionsLayout()())
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69C1D90], v4);
    sub_1A47D3BE4(0, v11);
  }

  v43 = a1;

  v37 = sub_1A5242E44();
  v36 = v15;
  sub_1A5242E54();
  v35 = v42;
  sub_1A40F3434();
  v17 = v16;
  sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
  v39 = a2;
  v18 = MEMORY[0x1E6981E70];
  v19 = sub_1A41F7694();
  v20 = sub_1A3C5A374();
  v21 = sub_1A43C9BB4();
  v23 = v22;
  v24 = swift_allocObject();
  v38 = v9;
  v25 = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  v26 = sub_1A43C9BD0();
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v43, 0, 0, v37, v36, v35, v20 & 1, sub_1A3F8B548, v44, v19, v25, v26, v18, v17);
  v27 = v44[5];
  *(v14 + 4) = v44[4];
  *(v14 + 5) = v27;
  v14[96] = v45;
  v28 = v44[1];
  *v14 = v44[0];
  *(v14 + 1) = v28;
  v29 = v44[3];
  *(v14 + 2) = v44[2];
  *(v14 + 3) = v29;
  swift_storeEnumTagMultiPayload();
  sub_1A47D5824();
  sub_1A47DCB5C(&qword_1EB125760, sub_1A47D5824);
  sub_1A47D4188(255);
  v31 = v30;
  v32 = sub_1A47D45CC();
  v40 = v31;
  v41 = v32;
  swift_getOpaqueTypeConformance2();
  return sub_1A5249744();
}

void sub_1A47D57A0()
{
  if (!qword_1EB122008)
  {
    sub_1A47D4188(255);
    sub_1A47D45CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122008);
    }
  }
}

void sub_1A47D5824()
{
  if (!qword_1EB125758)
  {
    sub_1A40F3434();
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125758);
    }
  }
}

uint64_t sub_1A47D58D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isEventsVirtualCollection])
  {
    v5 = sub_1A3C38BD4();
    v7 = v6;
    v8 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    v10 = v9;
    sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
    v11 = sub_1A5244EE4();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69C12A8], v11);
    *a3 = a2;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7;
    *(a3 + 32) = v14;
    *(a3 + 40) = v8;
    *(a3 + 48) = v10;
    v15 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for LemonadeNavigationDestination();
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }
}

void sub_1A47D5B30()
{
  v0 = sub_1A40F354C();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5245A14();
}

uint64_t sub_1A47D5F30()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DCAA4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

void sub_1A47D6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A47D4358(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v11 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v12 = *(a2 + 16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69C12A8], v7);
  sub_1A5244EF4();
  swift_allocObject();
  v13 = v12;
  v14 = v11;
  sub_1A5244ED4();
  sub_1A5244824();
  sub_1A3C37470(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47D637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4();
  v6 = v5;
  v7 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v9 = v8;
  sub_1A47DCAA4(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A52F8E10;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69C12A8], v10);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v13;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  v14 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_1A47D655C()
{
  sub_1A524BE94();
  sub_1A5248224();
  sub_1A5248234();
  v0 = sub_1A5248244();

  return v0;
}

uint64_t sub_1A47D65E8()
{
  sub_1A3C48108();
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_unknownObjectRetain();
    sub_1A5245FF4();
  }

  return result;
}

void sub_1A47D668C(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12B0], v4, v6);
  sub_1A47D4C14(v9, a2, v8);
}

void sub_1A47D67BC()
{
  v0 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A47D5B30();
}

void sub_1A47D6920(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A47D36A4(v3, 1, a2);
}

unint64_t sub_1A47D6A70(uint64_t a1)
{
  v2 = sub_1A3C440BC();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A47D6AAC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6B58()
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  return sub_1A524C4B4();
}

uint64_t sub_1A47D6BE8()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

id sub_1A47D6C94()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 eventsCollection];

  return v2;
}

id sub_1A47D6CF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v12 = *(*v2 + 16);
  v6 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  v7 = *(v6 + 20);
  v8 = sub_1A5244EE4();
  (*(*(v8 - 8) + 16))(&a2[v7], a1, v8);
  v9 = *(v5 + 40);
  *a2 = v12;
  *&a2[*(v6 + 24)] = v9;
  v10 = v9;

  return v12;
}

uint64_t sub_1A47D6DB0()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A47DCB5C(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524C794();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  MEMORY[0x1A590A010](v2);
  if (v2)
  {
    v3 = *(sub_1A5244EE4() - 8);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_1A47DCB5C(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
    do
    {
      sub_1A524C4B4();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_1A524C794();
}

uint64_t sub_1A47D6F40()
{
  sub_1A524EC94();
  sub_1A47D6DB0();
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6F84()
{
  sub_1A524EC94();
  sub_1A47D6DB0();
  return sub_1A524ECE4();
}

uint64_t sub_1A47D6FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  if (*(v1 + *(v13 + 24)))
  {
    v14 = sub_1A437C79C();
    return sub_1A47D3B7C(v14, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    (*(v7 + 16))(v9, v1 + *(v13 + 20), v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69C12C0])
    {
      v47 = sub_1A3C47918();
      v17 = v16;
      v18 = sub_1A3C47918();
      v20 = v19;
      v21 = sub_1A3C52D68();
      v23 = v22;
      v25 = v24;
      v26 = sub_1A3C4ED50();
      v48 = 1;
      *v5 = sub_1A47D731C;
      *(v5 + 1) = 0;
      v5[16] = 2;
      *(v5 + 3) = 5;
      v5[32] = 1;
      *(v5 + 5) = v47;
      *(v5 + 6) = v17;
      *(v5 + 7) = v18;
      *(v5 + 8) = v20;
      *(v5 + 9) = v21;
      *(v5 + 10) = v23;
      v5[88] = v25;
      v5[89] = v26;
      swift_storeEnumTagMultiPayload();
      v27 = sub_1A3DC1AF8();
      sub_1A437C3B8(v5, 1, v27, v28 & 1, v12);
    }

    else
    {
      v29 = sub_1A3C47918();
      v46 = v30;
      v47 = v29;
      v31 = sub_1A3C47918();
      v44 = v32;
      v45 = v31;
      v33 = sub_1A3C52D68();
      v35 = v34;
      v36 = a1;
      v38 = v37;
      v39 = sub_1A3C4ED50();
      v49 = 1;
      *v5 = sub_1A47D7454;
      *(v5 + 1) = 0;
      v5[16] = 2;
      *(v5 + 3) = 5;
      v5[32] = 1;
      v40 = v46;
      *(v5 + 5) = v47;
      *(v5 + 6) = v40;
      v41 = v44;
      *(v5 + 7) = v45;
      *(v5 + 8) = v41;
      *(v5 + 9) = v33;
      *(v5 + 10) = v35;
      v5[88] = v38;
      a1 = v36;
      v5[89] = v39;
      swift_storeEnumTagMultiPayload();
      v42 = sub_1A3DC1AF8();
      sub_1A437C3B8(v5, 0, v42, v43 & 1, v12);
      (*(v7 + 8))(v9, v6);
    }

    return sub_1A3CA2900(v12, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }
}

uint64_t sub_1A47D731C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F0])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 2;
  }

  (*(v3 + 8))(v6, v2);
  return 21;
}

uint64_t sub_1A47D7454(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = *MEMORY[0x1E69C21F0];
  v8 = shouldUseNewCollectionsLayout()();
  if (a1 == v7)
  {
    if (v8)
    {
      return 40;
    }

    else
    {
      return 15;
    }
  }

  else
  {
    if (v8)
    {
      v9 = 40;
    }

    else
    {
      v9 = 21;
    }

    (*(v3 + 8))(v6, v2);
  }

  return v9;
}

uint64_t sub_1A47D759C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v36 = a2;
  sub_1A47DAAD4(0);
  v32 = v2;
  v30[2] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v30[1] = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB07C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242314();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB0B0(0);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC7D0(0, &qword_1EB1427C0, sub_1A47DB740, sub_1A47DB0B0, MEMORY[0x1E697F948]);
  v37 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v16 = sub_1A5243284();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DB740();
  v21 = v20;
  v33 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v34[*(type metadata accessor for LemonadeEventsFeature.FeedProvider(0) + 24)];
  if (!v24)
  {
    v33 = v15;
    v34 = v21;
    (*(v7 + 104))(v9, *MEMORY[0x1E69C1D88], v6);
    sub_1A47D3BE4(1, v12);
  }

  v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x540);
  v34 = v24;
  v25();
  v39 = v38;

  v26 = sub_1A5242E44();
  v31 = v27;
  v32 = v26;
  (*(v17 + 104))(v19, *MEMORY[0x1E69C23E0], v16);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F3434();
  sub_1A5243EC4();
  sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
  sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  sub_1A5242AA4();
  v28 = v33;
  (*(v33 + 2))(v15, v23, v21);
  swift_storeEnumTagMultiPayload();
  sub_1A47DCB5C(&qword_1EB1427D0, sub_1A47DB740);
  sub_1A47DB82C();
  sub_1A5249744();

  return (*(v28 + 1))(v23, v21);
}

void sub_1A47D7D00()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v8[13] = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DAB08();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A5241144();
  v8[11] = *(v3 - 8);
  v8[12] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v8[10] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8[9] = v8 - v6;
  v7 = sub_1A40F354C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1A5242E34();
  sub_1A5245A14();
}

void sub_1A47D89E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v8 = sub_1A5240CA4();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47DC9B4();
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - v16;
  v17 = sub_1A524ED94();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524ED74();
  v50 = *(v20 - 8);
  v51 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A524EDE4();
  v23 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A524EDF4();
  v26 = [a1 enrichmentState];
  v54 = sub_1A44046A0(v26);
  v63 = v27;
  v68 = a2;
  v69 = a3;
  sub_1A47DCAA4(0, &qword_1EB142820, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_1A524EDC4();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A52FC9F0;
  sub_1A524EDA4();
  sub_1A524EDB4();
  sub_1A47DB914(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A524EDD4();
  sub_1A524ED64();
  sub_1A524ED84();
  sub_1A52403F4();

  (*(v52 + 8))(v19, v53);
  (*(v50 + 8))(v22, v51);
  (*(v23 + 8))(v25, v49);
  sub_1A47DCB5C(&qword_1EB142828, MEMORY[0x1E696A218]);
  v29 = sub_1A524A434();
  v31 = v30;
  v33 = v32;
  v53 = v34;
  [v47 promotionScore];
  v68 = v35;
  sub_1A5241234();
  sub_1A3F185D4();
  v36 = v55;
  sub_1A5240C04();
  v37 = v60;
  sub_1A5240C94();
  v38 = v58;
  MEMORY[0x1A58FBF80](v37, v58);
  (*(v61 + 8))(v37, v62);
  (*(v59 + 8))(v36, v38);
  sub_1A47DCB5C(&qword_1EB142830, sub_1A47DC9B4);
  v39 = sub_1A524A434();
  v41 = v40;
  LOBYTE(v68) = 0;
  v33 &= 1u;
  v67 = v33;
  v66 = 0;
  v65 = v33;
  v64 = v42 & 1;
  v44 = v53;
  v43 = v54;
  v45 = v63;
  *a4 = v54;
  *(a4 + 8) = v45;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = v29;
  *(a4 + 40) = v31;
  *(a4 + 48) = v33;
  *(a4 + 56) = v44;
  *(a4 + 64) = v39;
  *(a4 + 72) = v41;
  *(a4 + 80) = v42 & 1;
  *(a4 + 88) = v46;
  sub_1A3E75E68(v43, v45, 0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47D9148()
{
  v0 = sub_1A40F354C();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5245A14();
}

uint64_t sub_1A47D9604()
{
  MEMORY[0x1A5907B60](0x2D73746E657665, 0xE700000000000000);
  sub_1A5244EE4();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A47D96A8(uint64_t a1)
{
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 20), v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69C12A8])
  {
    return 0;
  }

  if (v8 != *MEMORY[0x1E69C12C0] && v8 != *MEMORY[0x1E69C12B0])
  {
    (*(v4 + 8))(v7, v3);
  }

  return sub_1A3C38BD4();
}

uint64_t sub_1A47D9834@<X0>(void *a1@<X8>)
{
  MEMORY[0x1A5907B60](0x2D73746E657665, 0xE700000000000000);
  sub_1A5244EE4();
  result = sub_1A524E624();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

id sub_1A47D98C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 20);
  v5 = *(type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0) + 20);
  v6 = sub_1A5244EE4();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

void sub_1A47D9960(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1 + *(type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0) + 20);

  sub_1A47D4C14(v3, a2, v4);
}

uint64_t sub_1A47D9ACC()
{
  result = sub_1A5242E44();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

void sub_1A47D9B14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A47D36A4(v3, 0, a2);
}

uint64_t sub_1A47D9C40()
{
  sub_1A47DCB5C(&qword_1EB12A210, type metadata accessor for LemonadeEventsFeature.FeedProvider);

  return sub_1A3C47918();
}

uint64_t sub_1A47D9CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5244EE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47D4358(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v9 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v10 shouldRemoveFilteredEventsFromUI])
  {
    v11 = sub_1A47D9F00([v9 sharingFilter]);
    [v9 setPredicate_];
  }

  (*(v6 + 16))(v8, a2, v5);
  sub_1A5244EF4();
  swift_allocObject();
  v12 = v9;
  v13 = a3;
  sub_1A5244ED4();
  sub_1A5244824();
  v14 = sub_1A5245014();

  return v14;
}

id sub_1A47D9EA8()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 eventsCollection];

  return v2;
}

uint64_t sub_1A47D9F00(__int16 a1)
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 eventFilterType];
  if (v3 == 2)
  {
    v7 = [v2 eventsSummaryCountThreshold];
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        if (a1)
        {
          goto LABEL_14;
        }

        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1A52FF950;
        v13 = MEMORY[0x1E69E6158];
        *(v8 + 56) = MEMORY[0x1E69E6158];
        v10 = sub_1A3D710E8();
        strcpy((v8 + 32), "summaryCount");
        *(v8 + 45) = 0;
        *(v8 + 46) = -5120;
        v11 = 0x80000001A53EBCC0;
        *(v8 + 96) = v13;
        *(v8 + 104) = v10;
        v12 = 0xD000000000000012;
        goto LABEL_13;
      }

      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A52FC9F0;
      v18 = 0x80000001A53EBCC0;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1A3D710E8();
      v19 = 0xD000000000000012;
      goto LABEL_18;
    }

    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52FC9F0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    v20 = 0x437972616D6D7573;
    v21 = 0xEC000000746E756FLL;
LABEL_20:
    v24 = MEMORY[0x1E69E72F0];
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    v23 = MEMORY[0x1E69E7358];
    *(v17 + 96) = v24;
    goto LABEL_21;
  }

  if (v3 == 1)
  {
    v7 = [v2 eventsExtendedCountThreshold];
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        if (a1)
        {
          goto LABEL_14;
        }

        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1A52FF950;
        v9 = MEMORY[0x1E69E6158];
        *(v8 + 56) = MEMORY[0x1E69E6158];
        v10 = sub_1A3D710E8();
        strcpy((v8 + 32), "extendedCount");
        *(v8 + 46) = -4864;
        v11 = 0x80000001A53EBCE0;
        *(v8 + 96) = v9;
        *(v8 + 104) = v10;
        v12 = 0xD000000000000013;
LABEL_13:
        *(v8 + 64) = v10;
        *(v8 + 72) = v12;
        v14 = MEMORY[0x1E69E72F0];
        *(v8 + 80) = v11;
        v15 = MEMORY[0x1E69E7358];
        *(v8 + 136) = v14;
        *(v8 + 144) = v15;
        *(v8 + 112) = v7;
        goto LABEL_22;
      }

      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A52FC9F0;
      v18 = 0x80000001A53EBCE0;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1A3D710E8();
      v19 = 0xD000000000000013;
LABEL_18:
      v22 = MEMORY[0x1E69E72F0];
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;
      v23 = MEMORY[0x1E69E7358];
      *(v17 + 96) = v22;
LABEL_21:
      *(v17 + 104) = v23;
      *(v17 + 72) = v7;
      goto LABEL_22;
    }

    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52FC9F0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    v20 = 0x6465646E65747865;
    v21 = 0xED0000746E756F43;
    goto LABEL_20;
  }

  if (!v3)
  {
    [v2 eventsPromotionScoreThreshold];
    v5 = v4;
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A47DCAA4(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FC9F0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1A3D710E8();
    strcpy((v6 + 32), "promotionScore");
    *(v6 + 47) = -18;
    *(v6 + 96) = MEMORY[0x1E69E7DE0];
    *(v6 + 104) = sub_1A47DCB08();
    *(v6 + 72) = v5;
LABEL_22:
    v16 = sub_1A524D134();

    return v16;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1A47DA598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A47D3B7C(a1, v6, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = objc_opt_self();
    v10 = sub_1A524CA14();
    v11 = [v9 transientCollectionListWithCollections:v10 title:0 identifier:0 photoLibrary:*(a2 + 16)];

    v12 = *(a2 + 24);
    sub_1A47D4358(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 2;
    v13 = v11;
    v14 = v12;
    sub_1A3C6C180(&v22);
    v31 = v22;
    v32 = v23;
    sub_1A3C6C18C(&v29);
    v27 = v29;
    v28 = v30;
    LOBYTE(v11) = sub_1A3C5A374();
    v15 = sub_1A3C30368();
    v16 = sub_1A3C5A374();
    v17 = sub_1A3C5A374();
    v18 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v31, 0, &unk_1F1724A08, 0, 1, &v27, v11 & 1, &v33, &v25, v15, v16 & 1, v17 & 1, v18 & 1, 0);
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = v7;
    v19[4] = v8;

    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v13, v12, v34, &v25, &v22, sub_1A47DCBA4, v19);
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1A524E404();

  v25 = 0xD00000000000001BLL;
  v26 = 0x80000001A53B42A0;
  sub_1A47DCB5C(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v20 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v20);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A47DA984()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    type metadata accessor for LemonadeEventsFeature.EventsListManagerOptions(0);
    sub_1A5244EE4();
    sub_1A47DCB5C(&qword_1EB128F98, MEMORY[0x1E69C12C8]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v4 == v2 && v5 == v3)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_1A524EAB4();
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void sub_1A47DAB08()
{
  if (!qword_1EB123020)
  {
    sub_1A47DABA8(255, &qword_1EB123078, sub_1A47DAC3C, &qword_1EB127B10, MEMORY[0x1E6980460]);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123020);
    }
  }
}

void sub_1A47DABA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A47DCBB0(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A47DAC3C()
{
  if (!qword_1EB123140)
  {
    sub_1A47DABA8(255, &qword_1EB123290, sub_1A47DACD4, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123140);
    }
  }
}

void sub_1A47DACD4()
{
  if (!qword_1EB123588)
  {
    sub_1A47DC7D0(255, &qword_1EB123AF0, sub_1A47DADA4, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A3C37470(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123588);
    }
  }
}

void sub_1A47DADA4()
{
  if (!qword_1EB121688)
  {
    sub_1A47DAE38();
    sub_1A47DCB5C(&qword_1EB120FC0, sub_1A47DAE38);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121688);
    }
  }
}

void sub_1A47DAE38()
{
  if (!qword_1EB120FB8)
  {
    sub_1A47DC854(255, &qword_1EB1218B0, sub_1A47DAEC0, sub_1A47DAF54);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120FB8);
    }
  }
}

void sub_1A47DAEC0()
{
  if (!qword_1EB1218B8)
  {
    sub_1A4074688(255);
    sub_1A47DCB5C(&qword_1EB1270E0, sub_1A4074688);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218B8);
    }
  }
}

void sub_1A47DAF54()
{
  if (!qword_1EB1218C0)
  {
    sub_1A47DAFE8(255);
    sub_1A47DCB5C(&qword_1EB121060, sub_1A47DAFE8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218C0);
    }
  }
}

void sub_1A47DB01C()
{
  if (!qword_1EB122038)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB122038);
    }
  }
}

void sub_1A47DB0F8()
{
  if (!qword_1EB122EC8)
  {
    sub_1A47DB07C(255);
    sub_1A47DB1C0(&qword_1EB123008, sub_1A47DB07C, sub_1A47DB18C);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122EC8);
    }
  }
}

uint64_t sub_1A47DB1C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47DB23C()
{
  result = qword_1EB123028;
  if (!qword_1EB123028)
  {
    sub_1A47DAB08();
    sub_1A47DB2EC();
    sub_1A47DCB5C(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123028);
  }

  return result;
}

unint64_t sub_1A47DB2EC()
{
  result = qword_1EB123080;
  if (!qword_1EB123080)
  {
    v1 = MEMORY[0x1E6980460];
    sub_1A47DABA8(255, &qword_1EB123078, sub_1A47DAC3C, &qword_1EB127B10, MEMORY[0x1E6980460]);
    sub_1A47DB3D8();
    sub_1A47DB6E8(&qword_1EB127B20, &qword_1EB127B10, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123080);
  }

  return result;
}

unint64_t sub_1A47DB3D8()
{
  result = qword_1EB123148;
  if (!qword_1EB123148)
  {
    sub_1A47DAC3C();
    sub_1A47DB458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123148);
  }

  return result;
}

unint64_t sub_1A47DB458()
{
  result = qword_1EB123298;
  if (!qword_1EB123298)
  {
    v1 = MEMORY[0x1E6980480];
    sub_1A47DABA8(255, &qword_1EB123290, sub_1A47DACD4, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    sub_1A47DB544();
    sub_1A47DB6E8(&qword_1EB127AD8, &qword_1EB127AD0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123298);
  }

  return result;
}

unint64_t sub_1A47DB544()
{
  result = qword_1EB123590;
  if (!qword_1EB123590)
  {
    sub_1A47DACD4();
    sub_1A47DB5C4();
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123590);
  }

  return result;
}

unint64_t sub_1A47DB5C4()
{
  result = qword_1EB123AF8;
  if (!qword_1EB123AF8)
  {
    sub_1A47DC7D0(255, &qword_1EB123AF0, sub_1A47DADA4, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A47DCB5C(&qword_1EB121690, sub_1A47DADA4);
    sub_1A47DCB5C(&qword_1EB127830, sub_1A3EC18C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AF8);
  }

  return result;
}

uint64_t sub_1A47DB6E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A47DCBB0(255, a2, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A47DB740()
{
  if (!qword_1EB1427C8)
  {
    sub_1A40F3434();
    sub_1A5243EC4();
    sub_1A47DCB5C(&qword_1EB124EC0, sub_1A40F3434);
    sub_1A47DCB5C(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1427C8);
    }
  }
}

unint64_t sub_1A47DB82C()
{
  result = qword_1EB124000;
  if (!qword_1EB124000)
  {
    sub_1A47DB0B0(255);
    sub_1A47D4188(255);
    sub_1A47D45CC();
    swift_getOpaqueTypeConformance2();
    sub_1A47DCB5C(&qword_1EB122ED0, sub_1A47DB0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124000);
  }

  return result;
}

uint64_t sub_1A47DB914(uint64_t a1)
{
  v2 = sub_1A524EDC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A47DCA10();
    v9 = sub_1A524E3D4();
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
      sub_1A47DCB5C(&qword_1EB142840, MEMORY[0x1E696A1C0]);
      v16 = sub_1A524C4A4();
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
          sub_1A47DCB5C(&qword_1EB142848, MEMORY[0x1E696A1C0]);
          v23 = sub_1A524C594();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A47DBC28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A47D4358(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A47DBCE4(uint64_t a1)
{
  result = sub_1A3C440BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A47DBD90()
{
  result = qword_1EB1427E0;
  if (!qword_1EB1427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427E0);
  }

  return result;
}

uint64_t sub_1A47DBDE4(uint64_t a1)
{
  *(a1 + 8) = sub_1A47DCB5C(&qword_1EB12A210, type metadata accessor for LemonadeEventsFeature.FeedProvider);
  result = sub_1A47DCB5C(&qword_1EB12A228, type metadata accessor for LemonadeEventsFeature.FeedProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A47DC014()
{
  result = qword_1EB1427E8;
  if (!qword_1EB1427E8)
  {
    sub_1A47DC0C8();
    sub_1A47DC19C(&qword_1EB129758, &qword_1EB129748, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427E8);
  }

  return result;
}

uint64_t sub_1A47DC0C8()
{
  result = qword_1EB1427F0;
  if (!qword_1EB1427F0)
  {
    sub_1A47D4358(255, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A47DC19C(&qword_1EB129750, &qword_1EB129748, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A5245DD4();
  }

  return result;
}

uint64_t sub_1A47DC19C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A47D4358(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A47DC1F4(uint64_t a1)
{
  result = sub_1A47DCB5C(&qword_1EB12A220, type metadata accessor for LemonadeEventsFeature.FeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A5244EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A5244EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A47DC4D4()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v1 <= 0x3F)
    {
      sub_1A47DCAA4(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A47DC5B0()
{
  result = qword_1EB122908;
  if (!qword_1EB122908)
  {
    sub_1A47DC7D0(255, &qword_1EB122900, sub_1A47D5824, sub_1A47D57A0, MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB125760, sub_1A47D5824);
    sub_1A47D4188(255);
    sub_1A47D45CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122908);
  }

  return result;
}

unint64_t sub_1A47DC6DC()
{
  result = qword_1EB1427F8;
  if (!qword_1EB1427F8)
  {
    sub_1A47DC7D0(255, &qword_1EB142800, sub_1A47DB740, sub_1A47DB0B0, MEMORY[0x1E697F960]);
    sub_1A47DCB5C(&qword_1EB1427D0, sub_1A47DB740);
    sub_1A47DB82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1427F8);
  }

  return result;
}

void sub_1A47DC7D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A47DC854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A47DC8D0()
{
  if (!qword_1EB142808)
  {
    sub_1A47D4358(255, &qword_1EB142810, &qword_1EB126D20, 0x1E696AE18, MEMORY[0x1E69E6720]);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142808);
    }
  }
}

uint64_t sub_1A47DC954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47DC9B4()
{
  if (!qword_1EB142818)
  {
    sub_1A3F185D4();
    v0 = sub_1A5240C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142818);
    }
  }
}

void sub_1A47DCA10()
{
  if (!qword_1EB142838)
  {
    sub_1A524EDC4();
    sub_1A47DCB5C(&qword_1EB142840, MEMORY[0x1E696A1C0]);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142838);
    }
  }
}

void sub_1A47DCAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A47DCB08()
{
  result = qword_1EB125FE0;
  if (!qword_1EB125FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FE0);
  }

  return result;
}

uint64_t sub_1A47DCB5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47DCBB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A47DCC04(uint64_t a1)
{
  v3 = *(sub_1A5244EE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A47D9CAC(a1, v1 + v4, v5);
}

id sub_1A47DD1FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 pinCollectionsTabTitle];
  *a2 = result;
  return result;
}

id sub_1A47DD244@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 pinSearchTabTitle];
  *a2 = result;
  return result;
}

id sub_1A47DD28C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAdaptiveDarkBiasInGrid];
  *a2 = result;
  return result;
}

id sub_1A47DD2D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAdaptiveDarkBiasInEdit];
  *a2 = result;
  return result;
}

id sub_1A47DD31C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableStatusBarsHiddenFromCameraPadOneUp];
  *a2 = result;
  return result;
}

id sub_1A47DD364@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 disableInfoButtonMonochromaticWorkaround];
  *a2 = result;
  return result;
}

id sub_1A47DD3AC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useNewSearch];
  *a2 = result;
  return result;
}

id sub_1A47DD3F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useNewMainViewLayout];
  *a2 = result;
  return result;
}

id sub_1A47DD43C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showShelvesOrderResetButton];
  *a2 = result;
  return result;
}

id sub_1A47DD484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD4CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD514@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD55C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD5A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD5EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfExpandingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD67C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD6C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD70C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD79C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneShelfCollapsingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD7E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD82C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD874@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD8BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD904@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DD94C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesExpandingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DD994@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DD9DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DDA24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingMovementAnimationDelay];
  *a2 = v4;
  return result;
}

id sub_1A47DDA6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationType];
  *a2 = result;
  return result;
}

id sub_1A47DDAB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A47DDAFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allShelvesCollapsingOpacityAnimationDelay];
  *a2 = v4;
  return result;
}

char *sub_1A47DDCF4(char *a1, int64_t a2, char a3)
{
  result = sub_1A47DDD14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A47DDD14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A47E0078();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}