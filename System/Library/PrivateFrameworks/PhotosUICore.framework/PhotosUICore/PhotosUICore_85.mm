uint64_t sub_1A4710B8C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1296))(v5);
  }

  return result;
}

void (*sub_1A4710C88(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C();
  return sub_1A4710DD8;
}

uint64_t sub_1A4710DE4(uint64_t a1)
{
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v7 = v1[4];
  if (a1)
  {
    if (v7)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_5:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v7)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1A4711210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[79] = a7;
  v7[78] = a6;
  v7[77] = a5;
  v7[76] = a4;
  sub_1A524CC54();
  v7[80] = sub_1A524CC44();
  v9 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47112B4, v9, v8);
}

uint64_t sub_1A47112B4()
{
  v27 = v0;
  v1 = v0[76];

  v3 = (*v1 + 1240);
  v4 = *v3;
  v5 = *(*v3)(v2);
  (*(v5 + 256))();

  memcpy(v0 + 2, v0 + 39, 0x123uLL);
  enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 = get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v0 + 2);
  v7 = enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0;
  if (enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 != 1)
  {
    enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 = sub_1A471D1E4((v0 + 39), &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  }

  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = *v4(enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0);
  (*(v11 + 416))(v10, v9, v8);

  v13 = v4(v12);
  v14 = (*(*v13 + 232))(v13);

  v15 = [v14 count];

  if (v15 < 1)
  {
LABEL_8:
    if (v7 == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = v0[76];
  if (*(v17 + 340) <= 1u && *(v17 + 340))
  {
  }

  else
  {
    v18 = sub_1A524EAB4();

    if ((v18 & 1) == 0)
    {
      v19 = v0[76];
      KeyPath = swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v19;
      *(v21 + 24) = 1;
      (*(*v19 + 1296))(KeyPath, sub_1A471E56C, v21, MEMORY[0x1E69E7CA8] + 8);

      goto LABEL_8;
    }
  }

  v25 = *(v17 + 340);
  *(v17 + 340) = 1;
  v26[0] = v25;
  v16 = sub_1A4713A84(v26);
  if (v7 != 1)
  {
LABEL_9:
    v22 = v4(v16);
    (*(*v22 + 552))(v22);
  }

LABEL_10:
  v23 = v0[1];

  return v23();
}

BOOL sub_1A47116BC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[4] != 0;
}

void sub_1A4711728()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471179C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1288))();

  *a2 = v3[4];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4711850(uint64_t a1)
{
  if (v1[4])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1296))(v4);
  }

  v1[4] = 0;
}

uint64_t sub_1A4711998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4711A30, v6, v5);
}

uint64_t sub_1A4711A30()
{
  v1 = *(v0 + 16);

  v3 = (*(*v1 + 1240))(v2);
  v4 = (*(*v1 + 448))();
  (*(*v3 + 368))(v4 & 1);

  v5 = *(v0 + 8);

  return v5();
}

void (*sub_1A4711B40(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = *(v1 + 40);
  return sub_1A4711BF4;
}

void sub_1A4711BF4(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v4[40] = *(a1 + 16);
  if (v5 != ((*(*v4 + 448))() & 1))
  {
    if (a2)
    {
      v6 = &unk_1A535AF68;
    }

    else
    {
      v6 = &unk_1A535AF70;
    }

    v7 = *(a1 + 8);
    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1A524CC54();

    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v4;
    sub_1A3D4D930(0, 0, v7, v6, v10);
  }

  v12 = *(a1 + 8);

  free(v12);
}

uint64_t sub_1A4711D64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4711E0C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[40];
}

uint64_t sub_1A4711E70(char a1)
{
  v2 = a1 & 1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-v5];
  v7 = v1[40];
  if (v7 == v2)
  {
    v1[40] = v2;
    v11 = v1;
    result = (*(*v1 + 448))(v4);
    if (v7 != (result & 1))
    {
      v12 = sub_1A524CCB4();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      sub_1A524CC54();

      v13 = sub_1A524CC44();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      sub_1A3D4D930(0, 0, v6, &unk_1A535A9C8, v14);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v1;
    v16[-8] = v2;
    (*(*v1 + 1296))(v9);
  }

  return result;
}

uint64_t sub_1A47120B0(unsigned __int8 *a1, unsigned __int8 a2)
{
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = a1[40];
  a1[40] = a2;
  result = (*(*a1 + 448))(v5);
  if (v8 != (result & 1))
  {
    v10 = sub_1A524CCB4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1A524CC54();

    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a1;
    sub_1A3D4D930(0, 0, v7, &unk_1A535AF78, v12);
  }

  return result;
}

void (*sub_1A471224C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4711B40(v4);
  return sub_1A471239C;
}

uint64_t sub_1A47123F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47124A0()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  return v0[41];
}

uint64_t sub_1A4712520(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[41] == v2)
  {
    v1[41] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1296))(v5);
  }

  return result;
}

void (*sub_1A471261C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A47123A8();
  return sub_1A471276C;
}

uint64_t sub_1A4712778()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_1A41CDD28();
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[37] = v9;
    *v8 = 136315138;
    (*(*v0 + 544))(v15);
    memcpy(v16, v15, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v16) == 1)
    {
      memcpy(v14, v15, 0x123uLL);
      sub_1A471D1E4(v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    }

    else
    {
      memcpy(v14, v15, 0x123uLL);
      v10 = v15[0];
      sub_1A471D1E4(v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
      v11 = [v10 uuid];

      if (v11)
      {
        sub_1A524C674();
        v13 = v9;
      }
    }

    sub_1A3C2EF94();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t (*sub_1A4712AA8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4712AFC;
}

uint64_t sub_1A4712AFC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A4712778();
  }

  return result;
}

uint64_t sub_1A4712BA4(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x123uLL);
  v4 = *a2;
  memcpy(v8, __src, 0x123uLL);
  v5 = *(*v4 + 552);
  sub_1A471CD60(__dst, v7, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  return v5(v8);
}

uint64_t sub_1A4712C88@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  swift_beginAccess();
  memcpy(__dst, (v1 + 48), 0x123uLL);
  memcpy(a1, (v1 + 48), 0x123uLL);
  return sub_1A471CD60(__dst, &v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

uint64_t sub_1A4712D78(void *__src)
{
  memcpy(v10, __src, 0x123uLL);
  swift_beginAccess();
  memcpy(v11, (v1 + 48), 0x123uLL);
  sub_1A471CD60(v11, v18, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  memcpy(v18, v11, 0x123uLL);
  memcpy(&v18[296], v10, 0x123uLL);
  memcpy(v19, v11, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v19) != 1)
  {
    memcpy(v17, v18, 0x123uLL);
    memcpy(v15, v18, 0x123uLL);
    memcpy(v16, &v18[296], 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v16) != 1)
    {
      memcpy(v14, &v18[296], 0x123uLL);
      v8 = MEMORY[0x1E69E6720];
      sub_1A471CD60(v11, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
      sub_1A471CD60(v10, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v8, sub_1A3C397F8);
      sub_1A471CD60(v17, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v8, sub_1A3C397F8);
      sub_1A4261090();
      v9 = sub_1A524C594();
      memcpy(v12, v14, 0x123uLL);
      sub_1A406BF14(v12);
      memcpy(v13, v15, 0x123uLL);
      sub_1A406BF14(v13);
      memcpy(v14, v18, 0x123uLL);
      sub_1A471D1E4(v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v8, sub_1A3C397F8);
      sub_1A471D1E4(v11, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v8, sub_1A3C397F8);
      if (v9)
      {
        goto LABEL_10;
      }

LABEL_8:
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 1296))(v6);
      sub_1A471D1E4(v10, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    }

    memcpy(v14, v15, 0x123uLL);
    v3 = MEMORY[0x1E69E6720];
    sub_1A471CD60(v11, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A471CD60(v10, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
    sub_1A471CD60(v17, v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
    sub_1A406BF14(v14);
LABEL_7:
    memcpy(v16, v18, 0x24BuLL);
    sub_1A471E2F8(v16, sub_1A471E3EC);
    sub_1A471D1E4(v11, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    goto LABEL_8;
  }

  memcpy(v16, &v18[296], 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v16) != 1)
  {
    v4 = MEMORY[0x1E69E6720];
    sub_1A471CD60(v11, v17, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A471CD60(v10, v17, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v4, sub_1A3C397F8);
    goto LABEL_7;
  }

  memcpy(v17, v18, 0x123uLL);
  v2 = MEMORY[0x1E69E6720];
  sub_1A471CD60(v11, v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A471CD60(v10, v15, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
  sub_1A471D1E4(v17, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
  sub_1A471D1E4(v11, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
LABEL_10:
  memcpy(v18, (v1 + 48), 0x123uLL);
  memcpy((v1 + 48), v10, 0x123uLL);
  sub_1A471D1E4(v18, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  return sub_1A4712778();
}

void (*sub_1A4713390(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4712AA8(v4);
  return sub_1A47134E0;
}

uint64_t sub_1A47134EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471356C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[339];
}

uint64_t sub_1A47135D0(uint64_t result)
{
  if (v1[339] == (result & 1))
  {
    v1[339] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v3);
  }

  return result;
}

uint64_t sub_1A47136B8()
{
  (*(*v0 + 544))(v8);
  memcpy(v9, v8, 0x123uLL);
  result = get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v9);
  if (result == 1)
  {
    if (v0[339] == 1)
    {
      v0[339] = 1;
      return result;
    }

    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v0 + 1296))(v6);
  }

  if (BYTE1(v9[36]) != 1 || ((*(*v0 + 848))(&v7), v7 != 2))
  {
    v2 = LOBYTE(v9[24]) ^ 1;
    if (v0[339] != ((LOBYTE(v9[24]) ^ 1) & 1))
    {
      goto LABEL_7;
    }

LABEL_9:
    result = sub_1A471D1E4(v8, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    v0[339] = v2 & 1;
    return result;
  }

  v2 = 1;
  if (v0[339])
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(*v0 + 1296))(v4);
  sub_1A471D1E4(v8, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

id sub_1A47139AC()
{
  (*(*v0 + 544))(__src);
  memcpy(__dst, __src, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(__dst) == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = __src[0];
    v2 = __src[0];
  }

  memcpy(v4, __src, 0x123uLL);
  sub_1A471D1E4(v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  return v1;
}

uint64_t sub_1A4713A84(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*v2 + 656);
  v10(&v19, v6);
  result = sub_1A471C3DC(v19, v9);
  if ((result & 1) == 0)
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      (v10)(&v17);
      sub_1A3C2EF94();
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t ParallaxAssetViewStatus.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void *sub_1A4713DD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 656))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4713E74@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  *a1 = v1[340];
  return result;
}

uint64_t sub_1A4713EE8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_1A471C3DC(v1[340], *a1))
  {
    v3 = v1[340];
    v1[340] = v2;
    v9[0] = v3;
    return sub_1A4713A84(v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 1296))(v6);
  }
}

void (*sub_1A4713FEC(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 341);
  return sub_1A47140F0;
}

void sub_1A47140F0(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[341];
  v4[341] = *(*a1 + 40);
  v6 = (*v4 + 704);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A471430C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47143B4()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[341];
}

uint64_t sub_1A4714418(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[341];
  if (v9 == v3)
  {
    v2[341] = v3;
    v13 = (*v2 + 704);
    v14 = *v13;
    result = (*v13)(v6);
    if (v9 != (result & 1))
    {
      v15 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v15, v4);

      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v14() & 1;

        _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v18, 8u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v19[-16] = v2;
    v19[-8] = v3;
    (*(*v2 + 1296))(v11);
  }

  return result;
}

uint64_t sub_1A47146C0(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[341];
  a1[341] = a2;
  v10 = *(*a1 + 704);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void (*sub_1A47148BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4713FEC(v4);
  return sub_1A4714A0C;
}

void (*sub_1A4714A18(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 342);
  return sub_1A4714B1C;
}

void sub_1A4714B1C(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[342];
  v4[342] = *(*a1 + 40);
  v6 = (*v4 + 752);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4714D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4714DE0()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[342];
}

uint64_t sub_1A4714E44(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[342];
  if (v9 == v3)
  {
    v2[342] = v3;
    v13 = (*v2 + 752);
    v14 = *v13;
    result = (*v13)(v6);
    if (v9 != (result & 1))
    {
      v15 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v15, v4);

      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v14() & 1;

        _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v18, 8u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v19[-16] = v2;
    v19[-8] = v3;
    (*(*v2 + 1296))(v11);
  }

  return result;
}

uint64_t sub_1A47150EC(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[342];
  a1[342] = a2;
  v10 = *(*a1 + 752);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void (*sub_1A47152E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4714A18(v4);
  return sub_1A4715438;
}

void (*sub_1A4715444(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 343);
  return sub_1A4715548;
}

void sub_1A4715548(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[343];
  v4[343] = *(*a1 + 40);
  v6 = (*v4 + 800);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4715764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471580C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[343];
}

uint64_t sub_1A4715870(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[343];
  if (v9 == v3)
  {
    v2[343] = v3;
    v13 = (*v2 + 800);
    v14 = *v13;
    result = (*v13)(v6);
    if (v9 != (result & 1))
    {
      v15 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v15, v4);

      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v14() & 1;

        _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v18, 8u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v19[-16] = v2;
    v19[-8] = v3;
    (*(*v2 + 1296))(v11);
  }

  return result;
}

uint64_t sub_1A4715B18(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[343];
  a1[343] = a2;
  v10 = *(*a1 + 800);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void (*sub_1A4715D14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4715444(v4);
  return sub_1A4715E64;
}

uint64_t ParallaxAssetViewModel.BacklightLuminance.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void *sub_1A4715EE4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*v2 + 848);
  result = (v10)(&v20, v6);
  if (v20 != v9)
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v15 = 136315138;
      v10(&v18);
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v8, v4);
    (*(*v2 + 808))(1);
    v16 = (*(*v2 + 760))(1);
    return (*(*v2 + 616))(v16);
  }

  return result;
}

void *(*sub_1A4716210(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 344);
  return sub_1A471623C;
}

void *sub_1A471623C(_BYTE *a1, char a2)
{
  v2 = *(*a1 + 344);
  *(*a1 + 344) = a1[8];
  if (a2)
  {
    v5 = v2;
    v3 = &v5;
  }

  else
  {
    v6 = v2;
    v3 = &v6;
  }

  return sub_1A4715EE4(v3);
}

void *sub_1A471628C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 848))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A47162F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 856))(&v4);
}

uint64_t sub_1A4716350@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  *a1 = v1[344];
  return result;
}

void *sub_1A47163C4(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v1[344] == v2)
  {
    v8[0] = *a1;
    return sub_1A4715EE4(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1296))(v5);
  }
}

void (*sub_1A47164B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4716210(v4);
  return sub_1A4716604;
}

void (*sub_1A4716610(uint64_t *a1))(double **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_1A5246F24();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *v5 = *(v1 + 352);
  return sub_1A4716714;
}

void sub_1A4716714(double **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 1);
  v5 = v4[44];
  v4[44] = **a1;
  v6 = (*v4 + 896);
  v7 = *v6;
  v8 = (*v6)();
  if (a2)
  {
    if (v8 == v5)
    {
      goto LABEL_9;
    }

    v10 = (v3 + 4);
    v9 = *(v3 + 4);
    v12 = (v3 + 3);
    v11 = *(v3 + 3);
    v14 = (v3 + 2);
    v13 = *(v3 + 2);
    v15 = sub_1A41CDD28();
    (*(v11 + 16))(v9, v15, v13);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 == v5)
  {
    goto LABEL_9;
  }

  v10 = (v3 + 5);
  v18 = *(v3 + 5);
  v12 = (v3 + 3);
  v19 = *(v3 + 3);
  v14 = (v3 + 2);
  v20 = *(v3 + 2);
  v21 = sub_1A41CDD28();
  (*(v19 + 16))(v18, v21, v20);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();

  if (os_log_type_enabled(v16, v17))
  {
LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v7();
    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: backlightProgress changed to %f", v22, 0xCu);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

LABEL_8:
  v23 = *v10;
  v24 = *v12;
  v25 = *v14;

  (*(v24 + 8))(v23, v25);
LABEL_9:
  v26 = *(v3 + 4);
  free(*(v3 + 5));
  free(v26);

  free(v3);
}

double sub_1A47169DC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[44];
}

void sub_1A4716A40(double a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[44];
  if (v8 == a1)
  {
    v1[44] = a1;
    v9 = (*v1 + 896);
    v10 = *v9;
    if ((*v9)(v5) != v8)
    {
      v11 = sub_1A41CDD28();
      (*(v4 + 16))(v7, v11, v3);

      v12 = sub_1A5246F04();
      v13 = sub_1A524D264();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v10();
        _os_log_impl(&dword_1A3C1C000, v12, v13, "ParallaxAssetViewModel: backlightProgress changed to %f", v14, 0xCu);
        MEMORY[0x1A590EEC0](v14, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v16 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v17[-16] = v1;
    *&v17[-8] = a1;
    (*(*v1 + 1296))(v16);
  }
}

void sub_1A4716CD8(double *a1, double a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[44];
  a1[44] = a2;
  v10 = *(*a1 + 896);
  if ((v10)(v6) != v9)
  {
    v11 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v11, v4);

    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10();
      _os_log_impl(&dword_1A3C1C000, v12, v13, "ParallaxAssetViewModel: backlightProgress changed to %f", v14, 0xCu);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void (*sub_1A4716EC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4716610(v4);
  return sub_1A4717014;
}

void (*sub_1A4717020(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 360);
  return sub_1A4717124;
}

void sub_1A4717124(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[360];
  v4[360] = *(*a1 + 40);
  v6 = (*v4 + 944);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4717340@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47173E8()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[360];
}

uint64_t sub_1A471744C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[360];
  if (v9 == v3)
  {
    v2[360] = v3;
    v13 = (*v2 + 944);
    v14 = *v13;
    result = (*v13)(v6);
    if (v9 != (result & 1))
    {
      v15 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v15, v4);

      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v14() & 1;

        _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v18, 8u);
        MEMORY[0x1A590EEC0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v19[-16] = v2;
    v19[-8] = v3;
    (*(*v2 + 1296))(v11);
  }

  return result;
}

uint64_t sub_1A47176F4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[360];
  a1[360] = a2;
  v10 = *(*a1 + 944);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void (*sub_1A47178F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4717020(v4);
  return sub_1A4717A40;
}

uint64_t sub_1A4717A64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a1;
    v5 = (*(*v2 + 992))();
    if (!v6)
    {
      goto LABEL_15;
    }

    if (v5 == v4 && v6 == a2)
    {
    }

    else
    {
      v8 = sub_1A524EAB4();

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  (*(*v2 + 992))(a1);
  if (!v9)
  {
LABEL_15:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }
}

void sub_1A4717BEC(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 408);
  *a1 = *(v1 + 400);
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4717C3C(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = *(v2 + 400);
  v4 = *(v2 + 408);
  *(v2 + 400) = *a1;
  *(v2 + 408) = v3;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4717A64(v5, v4);
}

uint64_t sub_1A4717CB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4717D78()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4717DEC(uint64_t a1, uint64_t a2)
{
  v6 = v2[50];
  v5 = v2[51];
  if (v5)
  {
    if (a2)
    {
      v7 = v6 == a1 && v5 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*(*v2 + 1296))(v10);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[50] = a1;
  v2[51] = a2;
  sub_1A4717A64(v6, v5);
}

void sub_1A4717F48(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  sub_1A4717BEC(v4);
}

uint64_t sub_1A47180A4(uint64_t a1)
{
  v39 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v36 - v4;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406C37C();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], v2);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = *(*v1 + 1040);
  v38 = v1;
  v20(v17);
  v21 = *(v9 + 56);
  sub_1A471CD60(v19, v11, &unk_1EB12B250, v12, v2, sub_1A3C569E8);
  sub_1A471CD60(v39, &v11[v21], &unk_1EB12B250, v12, v2, sub_1A3C569E8);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      return sub_1A471D1E4(v11, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    }

    goto LABEL_6;
  }

  sub_1A471CD60(v11, v15, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1A471E2F8(v11, sub_1A406C37C);
LABEL_7:
    v24 = sub_1A524CCB4();
    v25 = v37;
    (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
    sub_1A524CC54();
    v26 = v38;

    v27 = sub_1A524CC44();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    sub_1A3D4D930(0, 0, v25, &unk_1A535AF60, v28);
  }

  v30 = &v11[v21];
  v31 = v36;
  (*(v6 + 32))(v36, v30, v5);
  sub_1A471E148(&qword_1EB126050, MEMORY[0x1E6968FB0]);
  v32 = sub_1A524C594();
  v33 = *(v6 + 8);
  v33(v31, v5);
  v34 = MEMORY[0x1E6968FB0];
  v35 = MEMORY[0x1E69E6720];
  sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  v33(v15, v5);
  result = sub_1A471D1E4(v11, &unk_1EB12B250, v34, v35, sub_1A3C569E8);
  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A47186F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4[3] = swift_task_alloc();
  sub_1A524CC54();
  v4[4] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47187E4, v6, v5);
}

uint64_t sub_1A47187E4()
{
  v1 = v0[3];
  v2 = v0[2];

  v4 = (*(*v2 + 1240))(v3);
  (*(*v2 + 1040))();
  (*(*v4 + 392))(v1);

  v5 = v0[1];

  return v5();
}

void (*sub_1A471890C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1A471CD60(v1 + v10, v9, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  return sub_1A4718A94;
}

void sub_1A4718A94(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    v8 = MEMORY[0x1E6968FB0];
    v9 = MEMORY[0x1E69E6720];
    sub_1A471CD60(*(*a1 + 96), v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    sub_1A471CD60(v7 + v4, v5, &unk_1EB12B250, v8, v9, sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v6, v7 + v4);
    swift_endAccess();
    sub_1A47180A4(v5);
    sub_1A471D1E4(v5, &unk_1EB12B250, v8, v9, sub_1A3C569E8);
  }

  else
  {
    sub_1A471CD60(v7 + v4, v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v3, v7 + v4);
    swift_endAccess();
    sub_1A47180A4(v6);
  }

  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  sub_1A471D1E4(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  sub_1A471D1E4(v3, &unk_1EB12B250, v10, v11, sub_1A3C569E8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A4718D18(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1A471CD60(a1, &v10 - v7, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  return (*(**a2 + 1048))(v8);
}

uint64_t sub_1A4718E38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  return sub_1A471CD60(v1 + v3, a1, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
}

uint64_t sub_1A4718F18(uint64_t a1)
{
  v3 = MEMORY[0x1E6968FB0];
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  v11 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  sub_1A471CD60(v1 + v11, v10, &unk_1EB12B250, v3, v4, sub_1A3C569E8);
  v12 = sub_1A471CDD4(v10, a1);
  sub_1A471D1E4(v10, &unk_1EB12B250, v3, v4, sub_1A3C569E8);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    v14 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v1;
    *&v18[-8] = a1;
    (*(*v1 + 1296))(v14);
  }

  else
  {
    v15 = MEMORY[0x1E6968FB0];
    v16 = MEMORY[0x1E69E6720];
    sub_1A471CD60(a1, v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    sub_1A471CD60(v1 + v11, v7, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v10, v1 + v11);
    swift_endAccess();
    sub_1A47180A4(v7);
    sub_1A471D1E4(v7, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
    sub_1A471D1E4(v10, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
  }

  return sub_1A471D1E4(a1, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
}

uint64_t sub_1A471923C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  sub_1A471CD60(a2, &v14[-v10], &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  v12 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  sub_1A471CD60(a1 + v12, v8, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  swift_beginAccess();
  sub_1A4069480(v11, a1 + v12);
  swift_endAccess();
  sub_1A47180A4(v8);
  sub_1A471D1E4(v8, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  return sub_1A471D1E4(v11, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
}

void (*sub_1A47193E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471890C(v4);
  return sub_1A4719538;
}

uint64_t ParallaxAssetViewModel.__allocating_init(viewSize:isForPreview:maxPreloadedAssetCount:)(char a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  ParallaxAssetViewModel.init(viewSize:isForPreview:maxPreloadedAssetCount:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ParallaxAssetViewModel.init(viewSize:isForPreview:maxPreloadedAssetCount:)(char a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 41) = 0;
  sub_1A4069344(v12);
  memcpy((v4 + 48), v12, 0x123uLL);
  *(v4 + 339) = 1;
  *(v4 + 342) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0x3FF0000000000000;
  *(v4 + 360) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  v9 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  v10 = sub_1A5240E64();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__initialShuffleStateDictionaryRepresentation) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager) = 0;
  sub_1A5241604();
  *(v4 + 368) = a3;
  *(v4 + 376) = a4;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;

  *(v4 + 16) = 0;

  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  *(v4 + 341) = 0;
  return v4;
}

uint64_t sub_1A47196E8(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1296))();
}

uint64_t sub_1A4719790(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 1296))(v6);
  }

  return result;
}

uint64_t sub_1A4719894(char a1, char a2)
{
  v3 = v2;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v3;
  *(v11 + 40) = a2;
  *(v11 + 41) = a1;
  sub_1A3D4D930(0, 0, v8, &unk_1A535AC08, v11);
}

uint64_t sub_1A47199F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 65) = a6;
  *(v6 + 64) = a5;
  *(v6 + 16) = a4;
  v7 = sub_1A5246F24();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  sub_1A524CC54();
  *(v6 + 56) = sub_1A524CC44();
  v9 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4719AFC, v9, v8);
}

uint64_t sub_1A4719AFC()
{
  v41 = v0;
  v1 = *(v0 + 16);

  v3 = (*v1 + 1240);
  v4 = *v3;
  v5 = *(*v3)(v2);
  v6 = (*(v5 + 280))();

  if (v6)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = sub_1A41CDD28();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ParallaxAssetViewModel: Request for next asset skipped: Already processing a request.";
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v12, v13, v19, v18, 2u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }
  }

  else
  {
    v20 = v4(v7);
    v21 = (*(*v20 + 232))(v20);

    v22 = [v21 count];

    if (v22 >= 1)
    {
      v23 = *(v0 + 16);
      if (*(v0 + 64))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = sub_1A471C3DC(*(v23 + 340), v24);
      v26 = *(v0 + 16);
      if (v25)
      {
        v27 = *(v23 + 340);
        *(v23 + 340) = v24;
        v40[0] = v27;
        v28 = sub_1A4713A84(v40);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v35 = swift_task_alloc();
        *(v35 + 16) = v26;
        *(v35 + 24) = v24;
        (*(*v26 + 1296))(KeyPath, sub_1A471E56C, v35, MEMORY[0x1E69E7CA8] + 8);
      }

      v36 = *(v0 + 65);
      v37 = *v4(v28);
      (*(v37 + 424))(v36);

      goto LABEL_16;
    }

    v29 = *(v0 + 48);
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v32 = sub_1A41CDD28();
    (*(v31 + 16))(v29, v32, v30);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    v33 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 48);
    v17 = *(v0 + 24);
    v16 = *(v0 + 32);
    if (v33)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ParallaxAssetViewModel: Request for next asset skipped: There are no assets.";
      goto LABEL_12;
    }
  }

  (*(v16 + 8))(v15, v17);
LABEL_16:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A4719ECC(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1A41CDD28();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v12 = 136315138;
    v15[3] = v8;
    sub_1A3C2EF94();
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v16) = v8;
  v13 = (*(*v2 + 856))(&v16);
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-4] = v2;
  LOBYTE(v15[-2]) = v8;
  sub_1A524BD24();
  sub_1A52483D4();
}

uint64_t sub_1A471A20C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  return result;
}

void sub_1A471A2BC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A471A348(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471A1AC();
  return sub_1A471A498;
}

uint64_t sub_1A471A504@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471A5AC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  v1 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1A471A634(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471A4A4();
  return sub_1A471A784;
}

uint64_t sub_1A471A790()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();
}

uint64_t sub_1A471A80C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1288))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager);
}

uint64_t sub_1A471A89C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1296))(KeyPath, sub_1A471E584, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A471A94C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager))
  {
    sub_1A471B5F8();
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager);

  return v1;
}

uint64_t sub_1A471AAB0()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = sub_1A471B4DC();

  v69 = v17;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v1[340];
  v59 = v5;
  v60 = v4;
  v58 = v7;
  if (v19 <= 1)
  {
    v20 = "nowledgementButton";
    if (v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v19 == 2 || v19 == 3)
    {
      goto LABEL_13;
    }

    v20 = "failedProcessingAsset";
  }

  if ((v20 | 0x8000000000000000) == 0x80000001A53E7480)
  {

LABEL_14:
    v22 = v1[340];
    v1[340] = 0;
    LOBYTE(v73[0]) = v22;
    v23 = sub_1A4713A84(v73);
    goto LABEL_16;
  }

LABEL_13:
  v21 = sub_1A524EAB4();

  if (v21)
  {
    goto LABEL_14;
  }

  KeyPath = swift_getKeyPath();
  v25 = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v55 - 2) = v1;
  *(&v55 - 8) = 0;
  (*(*v1 + 1296))(v25);

  v17 = v69;
LABEL_16:
  (*(*v1 + 544))(v72, v23);
  memcpy(v73, v72, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v73) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_1A4069344(v71);
      memcpy(v70, v71, 0x123uLL);
      (*(*v27 + 552))(v70);
    }
  }

  else
  {

    sub_1A471D1E4(v72, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A3C52C70(0, &qword_1EB12B180);
    v56 = sub_1A524D474();
    sub_1A524BFA4();
    v55 = v15;
    sub_1A524C014();
    v28 = *(v68 + 8);
    v68 += 8;
    v57 = v28;
    v28(v12, v67);
    v29 = swift_allocObject();
    v29[2] = sub_1A471E04C;
    v29[3] = v16;
    v29[4] = sub_1A471E054;
    v29[5] = v17;
    v71[4] = sub_1A471E100;
    v71[5] = v29;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 1107296256;
    v71[2] = sub_1A3C2E0D0;
    v71[3] = &block_descriptor_261;
    v30 = _Block_copy(v71);

    v31 = v63;
    sub_1A524BF14();
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1A471E148(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C569E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v32 = v65;
    v33 = v60;
    sub_1A524E224();
    v35 = v55;
    v34 = v56;
    MEMORY[0x1A5908790](v55, v31, v32, v30);
    _Block_release(v30);

    (*(v59 + 8))(v32, v33);
    (*(v64 + 8))(v31, v58);
    v57(v35, v67);
  }

LABEL_20:

  v37 = (*v1 + 1240);
  v38 = *v37;
  v39 = (*v37)(v36);
  v40 = (*(*v39 + 232))(v39);

  v41 = [v40 count];

  v42 = v38();
  v43 = *(*v1 + 288);
  v44 = v43();
  if (!v44)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  (*(*v42 + 240))(v44);

  if (!v41)
  {
    v46 = (v43)(v45);
    if (v46)
    {
      v47 = v46;
      if ([v46 count] >= 1)
      {
        v48 = sub_1A41CDD28();
        v50 = v61;
        v49 = v62;
        (*(v61 + 16))(v66, v48, v62);
        v51 = sub_1A5246F04();
        v52 = sub_1A524D264();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1A3C1C000, v51, v52, "ParallaxAssetViewModel: updateAssets: Request next asset since there are none loaded.", v53, 2u);
          MEMORY[0x1A590EEC0](v53, -1, -1);
        }

        (*(v50 + 8))(v66, v49);
        (*(*v1 + 1072))(0, 0);
      }
    }
  }
}

BOOL sub_1A471B4DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = (*(*Strong + 288))(Strong);

  if (!v1)
  {
    return 1;
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (!v2)
  {
    return 1;
  }

  v3 = (*(*v2 + 288))(v2);

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 count];

  return v4 == 0;
}

void sub_1A471B5F8()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A41CDD28();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "ParallaxAssetViewModel: Creating assets manager", v9, 2u);
    MEMORY[0x1A590EEC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  type metadata accessor for ParallaxAssetsManager();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471B944(const void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v34, a1, 0x123uLL);
  memcpy(v35, a1, 0x123uLL);
  if ((get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v35) == 1 || !v35[1]) && ((*(*v2 + 1168))() & 1) == 0)
  {
    v11 = sub_1A41CDD28();
    (*(v5 + 16))(v7, v11, v4);

    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v14 = 136315138;
      v15 = (*(*v2 + 624))();
      if (v15)
      {
        v16 = v15;
        v17 = [v15 uuid];

        if (v17)
        {
          v30 = sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v7, v4);
    if (v2[340] == 3)
    {
    }

    else
    {
      v26 = sub_1A524EAB4();

      if ((v26 & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        v29 = MEMORY[0x1EEE9AC00](KeyPath);
        (*(*v2 + 1296))(v29);

        return;
      }
    }

    v27 = v2[340];
    v2[340] = 3;
    LOBYTE(v33[0]) = v27;
    sub_1A4713A84(v33);
    return;
  }

  memcpy(v33, v34, 0x123uLL);
  v8 = *(*v2 + 552);
  sub_1A471CD60(v34, &v32, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  v8(v33);
  v9 = v2[340];
  if (v9 <= 1)
  {
    if (v2[340])
    {
      goto LABEL_18;
    }

    v10 = "noAssetsToProcess";
  }

  else
  {
    if (v9 == 2 || v9 == 3)
    {
      goto LABEL_18;
    }

    v10 = "currentAssetReady";
  }

  if (((v10 - 32) | 0x8000000000000000) == 0x80000001A53E7510)
  {

    goto LABEL_19;
  }

LABEL_18:
  v18 = sub_1A524EAB4();

  if ((v18 & 1) == 0)
  {
    v21 = swift_getKeyPath();
    v22 = MEMORY[0x1EEE9AC00](v21);
    (*(*v2 + 1296))(v22);

    goto LABEL_21;
  }

LABEL_19:
  v19 = v2[340];
  v2[340] = 4;
  LOBYTE(v33[0]) = v19;
  v20 = sub_1A4713A84(v33);
LABEL_21:
  v23 = (*(*v2 + 624))(v20);
  if (v23 && (v24 = v23, v25 = [v23 uuid], v24, v25))
  {
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t ParallaxAssetViewModel.deinit()
{

  memcpy(v4, (v0 + 48), 0x123uLL);
  sub_1A471D1E4(v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);

  sub_1A471D1E4(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);

  v1 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ParallaxAssetViewModel.__deallocating_deinit()
{
  ParallaxAssetViewModel.deinit();

  return swift_deallocClassInstance();
}

PhotosUICore::ParallaxAssetViewStatus_optional __swiftcall ParallaxAssetViewStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A471C3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nowledgementButton";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v3)
    {
      v4 = "noAssetsToProcess";
    }

    else
    {
      v4 = "nowledgementButton";
    }
  }

  else if (a1 == 2)
  {
    v4 = "processingNextAsset";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "setUserInitiated";
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = "failedProcessingAsset";
    v5 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2)
    {
      v2 = "noAssetsToProcess";
    }
  }

  else if (a2 == 2)
  {
    v2 = "processingNextAsset";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "setUserInitiated";
    if (a2 == 3)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 != 3)
    {
      v2 = "failedProcessingAsset";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A524EAB4();
  }

  return v7 & 1;
}

uint64_t sub_1A471C544()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A471C614()
{
  sub_1A524C794();
}

uint64_t sub_1A471C6D0()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A471C7A8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "nowledgementButton";
  v5 = "processingNextAsset";
  v6 = 0xD000000000000020;
  v7 = "setUserInitiated";
  v8 = 0xD000000000000015;
  if (v3 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = "failedProcessingAsset";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000013;
    v4 = "noAssetsToProcess";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t ParallaxAssetViewModel.BacklightLuminance.description.getter()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A471C894()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A471C8F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A4711210(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A471C9CC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4711998(v3, v4, v5, v2);
}

uint64_t sub_1A471CA60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 41) = v2;
  return result;
}

uint64_t sub_1A471CAB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  memcpy(__dst, (v2 + 48), 0x123uLL);
  memcpy((v2 + 48), v1, 0x123uLL);
  v3 = MEMORY[0x1E69E6720];
  sub_1A471CD60(v1, v5, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A471D1E4(__dst, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
  return sub_1A4712778();
}

void *sub_1A471CC5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 344);
  *(v1 + 344) = *(v0 + 24);
  v4 = v2;
  return sub_1A4715EE4(&v4);
}

void sub_1A471CD08()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 400) = v0[3];
  *(v1 + 408) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A471CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A471CDD4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6968FB0];
  v7 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1A406C37C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A471CD60(a1, v13, &unk_1EB12B250, v6, v7, sub_1A3C569E8);
  sub_1A471CD60(v23, &v13[v15], &unk_1EB12B250, v6, v7, sub_1A3C569E8);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    sub_1A471CD60(v13, v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v22;
      (*(v4 + 32))(v22, &v13[v15], v3);
      sub_1A471E148(&qword_1EB126050, MEMORY[0x1E6968FB0]);
      v19 = sub_1A524C594();
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v10, v3);
      sub_1A471D1E4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
      v17 = v19 ^ 1;
      return v17 & 1;
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
LABEL_6:
    sub_1A471E2F8(v13, sub_1A406C37C);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A471D1E4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A471D1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A471D270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__initialShuffleStateDictionaryRepresentation;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A471D2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A471D338()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A47199F4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A471D3E4(__n128 a1)
{
  a1.n128_u64[0] = 1.0;
  if (*(v1 + 24) == 1)
  {
    a1.n128_f64[0] = 0.0;
  }

  return (*(**(v1 + 16) + 904))(a1);
}

unint64_t sub_1A471D46C()
{
  result = qword_1EB140C08;
  if (!qword_1EB140C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140C08);
  }

  return result;
}

unint64_t sub_1A471D4C4()
{
  result = qword_1EB140C10;
  if (!qword_1EB140C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140C10);
  }

  return result;
}

void sub_1A471D520()
{
  sub_1A3C569E8(319, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

BOOL sub_1A471E054()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A4069344(__src);
    memcpy(__dst, __src, 0x123uLL);
    (*(*Strong + 552))(__dst);
  }

  return Strong == 0;
}

uint64_t sub_1A471E100()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (result)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1A471E148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A471E190()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(*v1 + 256))(v2);
      sub_1A471B944(v2);

      memcpy(__dst, v2, 0x123uLL);
      return sub_1A471D1E4(__dst, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A471E2B4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager) = *(v0 + 24);
}

uint64_t sub_1A471E2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A471E358()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47186F0(v3, v4, v5, v2);
}

void sub_1A471E3EC()
{
  if (!qword_1EB140C18)
  {
    sub_1A3C397F8(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140C18);
    }
  }
}

uint64_t sub_1A471E474()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 340);
  *(v1 + 340) = *(v0 + 24);
  v4 = v2;
  return sub_1A4713A84(&v4);
}

uint64_t sub_1A471E4C0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47103EC(v3, v4, v5, v2);
}

id sub_1A471E5FC(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup] = a1;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationGroups] = a2;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationIndex] = a3;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups] = MEMORY[0x1E69E7CC0];
  v8 = a1;
  v9 = a2;
  result = [v8 photoLibrary];
  if (result)
  {
    v11 = result;
    v13.receiver = v7;
    v13.super_class = v3;
    v12 = objc_msgSendSuper2(&v13, sel_initWithPhotoLibrary_, result);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A471E6E0(void (*a1)(), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = ObjectType;
  v14 = sub_1A471E858;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3C2E0D0;
  v13 = &block_descriptor_262;
  v8 = _Block_copy(&v10);

  v14 = a1;
  v15 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3D6084C;
  v13 = &block_descriptor_6_10;
  v9 = _Block_copy(&v10);

  [v2 performChanges:v8 completionHandler:v9];
  _Block_release(v9);
  _Block_release(v8);
}

void sub_1A471E858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationGroups) fetchedObjects];
    if (!v2)
    {
LABEL_7:

      return;
    }

    v3 = v2;
    sub_1A3FABA8C();
    v4 = sub_1A524CA34();

    if (v4 >> 62)
    {
      if (!sub_1A524E2B4())
      {
        goto LABEL_6;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = *sub_1A468096C();
    v6 = *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup];
    v7 = *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationIndex];
    v8 = v6;
    v9 = sub_1A471EC6C(v4, v6, v5, v7);

    *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups] = v9;
    goto LABEL_6;
  }
}

void sub_1A471E9C4(void (*a1)(), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A471F1C8;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3C2E0D0;
  v11 = &block_descriptor_10_12;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_13_8;
  v7 = _Block_copy(&v8);

  [v2 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_1A471EB4C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

unint64_t sub_1A471EC6C(unint64_t result, void *a2, char *a3, char *a4)
{
  v5 = result;
  v52 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v49 = v6;
  if (result >> 62)
  {
    goto LABEL_42;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      if (v7 < 1)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      v50 = a3;
      v51 = v5 & 0xC000000000000001;
      v9 = __OFADD__(v49, 1);
      v48 = v9;
      v47 = MEMORY[0x1E69E7CC0];
      v10 = &selRef_layoutSnapshot;
      while (1)
      {
        v11 = v51 ? MEMORY[0x1A59097F0](v8, v5) : *(v5 + 8 * v8 + 32);
        v12 = v11;
        v13 = [v11 v10[211]];
        v14 = sub_1A524C674();
        v16 = v15;

        if (a2)
        {
          v17 = [a2 v10[211]];
          v18 = a2;
          v19 = v5;
          v20 = v7;
          v21 = v17;
          v22 = sub_1A524C674();
          v24 = v23;

          v7 = v20;
          v5 = v19;
          a2 = v18;
          v10 = &selRef_layoutSnapshot;
        }

        else
        {
          v22 = 0;
          v24 = 0xE000000000000000;
        }

        if (v14 != v22 || v16 != v24)
        {
          break;
        }

LABEL_12:
        if (v7 == ++v8)
        {
          goto LABEL_44;
        }
      }

      v26 = sub_1A524EAB4();

      if (v26)
      {
        break;
      }

      v27 = v48;
      if (v50 == v49)
      {
        v28 = v49 + 1;
      }

      else
      {
        v27 = 0;
        v28 = v50;
      }

      if (v27)
      {
        goto LABEL_41;
      }

      if ([v12 manualOrder] == v28)
      {
        goto LABEL_30;
      }

      v30 = [objc_opt_self() changeRequestForSocialGroup:v12 userAction:1];
      if (!v30)
      {
        v33 = sub_1A524D244();
        v34 = *sub_1A3CAA3FC();
        if (os_log_type_enabled(v34, v33))
        {
          v34;
          v35 = swift_slowAlloc();
          swift_slowAlloc();
          *v35 = 136315138;
          v36 = [v12 localIdentifier];
          sub_1A524C674();

          sub_1A3C2EF94();
        }

LABEL_30:

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_40;
        }

LABEL_37:
        v50 = v29;
        v10 = &selRef_layoutSnapshot;
        goto LABEL_12;
      }

      v31 = v30;
      [v30 setOrder_];
      v32 = v12;
      MEMORY[0x1A5907D70]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v47 = v52;
      v29 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        goto LABEL_37;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v37 = a3;
      result = sub_1A524E2B4();
      a3 = v37;
      v7 = result;
      if (!result)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_12;
  }

LABEL_43:
  v47 = MEMORY[0x1E69E7CC0];
LABEL_44:
  if (a2)
  {
    v38 = objc_opt_self();
    v39 = a2;
    v40 = [v38 changeRequestForSocialGroup:v39 userAction:1];
    if (v40)
    {
      v41 = v40;
      [v40 setOrder_];
    }

    else
    {
      v42 = sub_1A524D244();
      v43 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v43, v42))
      {
        v44 = v43;
        v45 = swift_slowAlloc();
        swift_slowAlloc();
        *v45 = 136315138;
        v46 = [v39 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }
  }

  return v47;
}

void sub_1A471F1C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v12 = OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups;
    v2 = *(Strong + OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups);
    if (v2 >> 62)
    {
      v3 = sub_1A524E2B4();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      objc_opt_self();
      if (v3 >= 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
    }

    else
    {
      v4 = OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup;
      v5 = [objc_opt_self() changeRequestForSocialGroup:*&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup] userAction:1];
      if (v5)
      {
        v6 = v5;
        [v5 setOrder_];
      }

      else
      {
        v7 = sub_1A524D244();
        v8 = *sub_1A3CAA3FC();
        if (os_log_type_enabled(v8, v7))
        {
          v9 = v8;
          v10 = swift_slowAlloc();
          swift_slowAlloc();
          *v10 = 136315138;
          v11 = [*&v1[v4] localIdentifier];
          sub_1A524C674();

          sub_1A3C2EF94();
        }
      }

      *&v1[v12] = MEMORY[0x1E69E7CC0];
    }
  }
}

void sub_1A471F624()
{
  if (qword_1EB17AE30 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB17AE38 + 24))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_getKeyPath();
  sub_1A471F944();

  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471F700()
{
  type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  sub_1A5241604();
  v1 = [objc_opt_self() sharedScheduler];
  v3[4] = sub_1A472043C;
  v3[5] = v0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3C2E0D0;
  v3[3] = &block_descriptor_263;
  v2 = _Block_copy(v3);

  [v1 scheduleTaskWithQoS:1 block:v2];
  _Block_release(v2);

  qword_1EB17AE38 = v0;
}

void sub_1A471F828()
{
  swift_getKeyPath();
  sub_1A471F944();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471F89C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A471F944();
  sub_1A52415D4();

  *a2 = *(v3 + 16);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A471F944()
{
  result = qword_1EB1772B0;
  if (!qword_1EB1772B0)
  {
    type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1772B0);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader()
{
  result = qword_1EB177298;
  if (!qword_1EB177298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A471FB1C(uint64_t a1)
{
  sub_1A472050C(0, &unk_1ED741F20, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = [objc_opt_self() supportedTypes];
  v13 = sub_1A524CA34();

  v14 = [objc_opt_self() representedType];
  sub_1A524C674();

  sub_1A5246D24();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A4720444(v4);
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A4720018(0, *(v13 + 2) + 1, 1, v13);
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1A4720018(v16 > 1, v17 + 1, 1, v13);
    }

    (*(v6 + 8))(v11, v5);
    *(v13 + 2) = v17 + 1;
    v15(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17], v8, v5);
  }

  v18 = [objc_opt_self() sharedScheduler];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1A47204BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_19_6;
  v20 = _Block_copy(aBlock);

  [v18 dispatchGraduallyOnMainThreadWhenNotAnimating_];
  _Block_release(v20);
}

uint64_t sub_1A471FEBC()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_91C49F7F4AA82C77F10CD5A5EFF607EC44LemonadeDragAndDropSupportedTypesAsyncLoader___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A471FF70()
{
  result = sub_1A5241614();
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

size_t sub_1A4720018(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A472050C(0, &qword_1EB1202D0, MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5246D14() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A5246D14() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A4720200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A47203E4();
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A47203E4()
{
  result = qword_1EB124A40;
  if (!qword_1EB124A40)
  {
    sub_1A5246D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A40);
  }

  return result;
}

uint64_t sub_1A4720444(uint64_t a1)
{
  sub_1A472050C(0, &unk_1ED741F20, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A47204BC()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  swift_bridgeObjectRetain_n();

  sub_1A471F9F8();
}

void sub_1A472050C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5246D14();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4720574@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  sub_1A4720940();
  v21 = v2;
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_1A4720AB0();
  v20 = v5;
  sub_1A472468C(0, &qword_1EB140C50, sub_1A4720B0C, &qword_1EB140C60, sub_1A4720B0C);
  v19 = v6;
  v18 = sub_1A4720B7C(&qword_1EB140C68, sub_1A4720AB0);
  sub_1A4720B0C();
  v8 = v7;
  v9 = sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C);
  v25 = v8;
  v26 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524B0E4();
  v29 = *(v1 + 8);
  v30 = v29;
  v11 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E6981790];
  sub_1A47248F4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v17[3] = v27;
  *&v29 = *(v1 + 24);
  BYTE8(v29) = *(v1 + 32);
  v13 = swift_allocObject();
  v14 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 32);

  sub_1A47247B0(&v30, &v25, &qword_1EB1274B0, v11, v12, sub_1A47248F4);
  sub_1A47247B0(&v29, &v25, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0], sub_1A4720E50);
  type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A4720ED4();
  v15 = v21;
  sub_1A524AFF4();

  return (*(v23 + 8))(v4, v15);
}

void sub_1A4720940()
{
  if (!qword_1EB140C40)
  {
    sub_1A4720AB0();
    sub_1A472468C(255, &qword_1EB140C50, sub_1A4720B0C, &qword_1EB140C60, sub_1A4720B0C);
    sub_1A4720B7C(&qword_1EB140C68, sub_1A4720AB0);
    sub_1A4720B0C();
    sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C40);
    }
  }
}

void sub_1A4720AB0()
{
  if (!qword_1EB140C48)
  {
    sub_1A3E86968();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140C48);
    }
  }
}

void sub_1A4720B0C()
{
  if (!qword_1EB140C58)
  {
    sub_1A41278A0();
    sub_1A4127958();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140C58);
    }
  }
}

uint64_t sub_1A4720B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4720BC4(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4720B0C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v11 = a1;
  sub_1A41278A0();
  sub_1A4127958();
  sub_1A5247F24();
  v8 = sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A4720D6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = (*(**(v1 + 16) + 136))();
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  v3 = *(type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0) + 28);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A4720E50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4720E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4720ED4()
{
  result = qword_1EB1D06D8[0];
  if (!qword_1EB1D06D8[0])
  {
    type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D06D8);
  }

  return result;
}

uint64_t sub_1A4720F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A524B694();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1A4720FD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v45 = a2;
  v3 = sub_1A5249B64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4724488();
  v8 = *(v7 - 1);
  v41 = v7;
  v42 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472438C();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [objc_opt_self() transientAssetCollectionWithAssetFetchResult:*a1 title:0];
  v17 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v16, v15, 0, 0, 1);
  [v17 setAllowedActions_];
  [v17 setAllowedBehaviors_];
  [v17 setNavBarStyle_];

  v18 = v17;
  v19 = sub_1A524A084();
  v47 = v18;
  LOBYTE(v48) = v19;
  sub_1A5249B54();
  sub_1A4724538(0, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
  v21 = v20;
  v22 = sub_1A472458C();
  sub_1A524AED4();
  (*(v4 + 8))(v6, v3);

  v23 = sub_1A524C634();
  v24 = PXMemoryCreationLocalizedString(v23);

  sub_1A524C674();
  sub_1A4720E50(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F8E10;
  v26 = [v15 count];
  v27 = MEMORY[0x1E69E65A8];
  *(v25 + 56) = MEMORY[0x1E69E6530];
  *(v25 + 64) = v27;
  *(v25 + 32) = v26;
  v28 = sub_1A524C6C4();
  v30 = v29;

  v47 = v28;
  v48 = v30;
  v51 = v21;
  v52 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_1A3D5F9DC();
  v33 = MEMORY[0x1E69E6158];
  v34 = v41;
  sub_1A524ABB4();

  (*(v42 + 8))(v10, v34);
  v46 = v40;
  sub_1A472468C(0, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  v47 = v34;
  v48 = v33;
  v49 = OpaqueTypeConformance2;
  v50 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8();
  v36 = v35;
  v37 = sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8);
  v47 = v36;
  v48 = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v43;
  sub_1A524B0E4();

  return (*(v44 + 8))(v14, v38);
}

uint64_t sub_1A472155C(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3F1E8D8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249814();
  v11 = a1;
  sub_1A3D6DF58();
  sub_1A4720B7C(&qword_1EB121B60, sub_1A3D6DF58);
  sub_1A5247F24();
  v8 = sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A472172C(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B44();
  sub_1A4724824(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A472488C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView);
  return MEMORY[0x1A5906A80](v7, sub_1A4724750, v9);
}

uint64_t sub_1A47218A8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  v6 = MEMORY[0x1E697DCB8];
  sub_1A4720E50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  sub_1A47247B0(a1 + *(v14 + 28), v9, &unk_1EB128A60, v5, v6, sub_1A4720E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v17 + 8))(v4, v18);
  }

  sub_1A5248274();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A4721B6C()
{
  sub_1A47241AC();
  sub_1A472438C();
  sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  sub_1A4724488();
  sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
  sub_1A472458C();
  swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8();
  sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1A5248824();
}

id sub_1A4721D5C()
{
  v1 = *v0;
  v2 = objc_allocWithZone(PXPhotosUIViewController);

  return [v2 initWithConfiguration_];
}

uint64_t sub_1A4721DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A4725408();

  return MEMORY[0x1EEE2C5A8](a1, a2, v4);
}

uint64_t sub_1A4721DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4725408();

  return MEMORY[0x1EEE2C5B0](a1, a2, a3, v6);
}

uint64_t sub_1A4721E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47253B4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4721EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47253B4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4721F0C()
{
  sub_1A47253B4();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A4721F34()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  v1 = v0[2];

  return v1;
}

uint64_t sub_1A4721FA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

void sub_1A4722018(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_1A3C52C70(0, &qword_1EB126C40);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 232))(v9);
  }
}

uint64_t sub_1A47221A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 224))();

  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  return sub_1A4724824(v1 + v3, a1, sub_1A4722174);
}

uint64_t sub_1A4722250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 224))();

  v4 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  return sub_1A4724824(v3 + v4, a2, sub_1A4722174);
}

uint64_t sub_1A47222FC(uint64_t a1)
{
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4724824(a1, v4, sub_1A4722174);
  return sub_1A472239C(v4);
}

uint64_t sub_1A472239C(uint64_t a1)
{
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  sub_1A4724824(v1 + v6, v5, sub_1A4722174);
  v7 = sub_1A4724944(v5, a1);
  sub_1A4723CD0(v5, sub_1A4722174);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 232))(v9);
  }

  else
  {
    sub_1A4724824(a1, v5, sub_1A4722174);
    swift_beginAccess();
    sub_1A4724C2C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1A4723CD0(a1, sub_1A4722174);
}

uint64_t sub_1A4722580(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  v4 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  sub_1A5241604();
  type metadata accessor for GenerativeStoryEventAmbiguityAssetFetcher();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) = sub_1A4397C1C(a1);
  return v2;
}

uint64_t sub_1A4722654(uint64_t a1)
{
  v2 = v1;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v8;
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4723CB0(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v41 = a1;
  sub_1A4724824(a1, &v37 - v19, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v37 = *(v7 + 56);
  v37(v20, 0, 1, v6);
  swift_getKeyPath();
  (*(*v2 + 224))();

  v21 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  v22 = *(v10 + 56);
  sub_1A4724824(v20, v12, sub_1A4722174);
  sub_1A4724824(v2 + v21, &v12[v22], sub_1A4722174);
  v39 = v7;
  v23 = *(v7 + 48);
  if (v23(v12, 1, v6) == 1)
  {
    sub_1A4723CD0(v20, sub_1A4722174);
    if (v23(&v12[v22], 1, v6) == 1)
    {
      return sub_1A4723CD0(v12, sub_1A4722174);
    }

    goto LABEL_6;
  }

  sub_1A4724824(v12, v17, sub_1A4722174);
  if (v23(&v12[v22], 1, v6) == 1)
  {
    sub_1A4723CD0(v20, sub_1A4722174);
    sub_1A4723CD0(v17, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
LABEL_6:
    sub_1A4723CD0(v12, sub_1A4723CB0);
LABEL_7:
    v25 = v41;
    v26 = v38;
    sub_1A4724824(v41, v38, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    v37(v26, 0, 1, v6);
    sub_1A472239C(v26);
    v27 = sub_1A524CCB4();
    v28 = v42;
    (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
    v29 = v43;
    sub_1A4724824(v25, v43, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    sub_1A524CC54();

    v30 = sub_1A524CC44();
    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v32 = (v40 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    *(v33 + 16) = v30;
    *(v33 + 24) = v34;
    sub_1A472488C(v29, v33 + v31, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    *(v33 + v32) = v2;
    sub_1A3D4D930(0, 0, v28, &unk_1A535B120, v33);
  }

  v35 = v43;
  sub_1A472488C(&v12[v22], v43, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v36 = sub_1A4723540(v17, v35);
  sub_1A4723CD0(v35, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  sub_1A4723CD0(v20, sub_1A4722174);
  sub_1A4723CD0(v17, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  result = sub_1A4723CD0(v12, sub_1A4722174);
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A4722C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A3E86C68(0);
  v5[4] = swift_task_alloc();
  v6 = sub_1A5240664();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v5[9] = swift_task_alloc();
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4722D74, v8, v7);
}

uint64_t sub_1A4722D74()
{
  v21 = v0;
  sub_1A4724824(v0[2], v0[9], type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    sub_1A3E86D04();
    v13 = *(v12 + 48);
    (*(v8 + 32))(v7, v2, v9);
    sub_1A472488C(v2 + v13, v10, sub_1A3E86C68);
    v19 = (*(**(v11 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) + 136) + **(**(v11 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) + 136));
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1A472301C;
    v15 = v0[7];
    v16 = v0[4];

    return v19(v15, v16);
  }

  v3 = *v2;
  v2 = *(v0[3] + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher);
  v0[15] = v2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1A3C51BF0(*(v3 + 16), 0);
    v6 = sub_1A3C423E8(&v20, v5 + 4, v4, v3);
    sub_1A3C42540();
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[16] = v5;
  v18 = (*v2 + 128) & 0xFFFFFFFFFFFFLL | 0x69AE000000000000;
  v0[17] = *(*v2 + 128);
  v0[18] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1A4723220, v2, 0);
}

uint64_t sub_1A472301C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1A4723144, v4, v3);
}

uint64_t sub_1A4723144()
{
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  sub_1A4722018(v1);
  sub_1A4723CD0(v5, sub_1A3E86C68);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A4723220()
{
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 128));

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1A4723298, v1, v2);
}

uint64_t sub_1A4723298()
{
  v1 = *(v0 + 152);

  sub_1A4722018(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4723468()
{
  sub_1A4723CD0(v0 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource, sub_1A4722174);

  v1 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4723540(uint64_t a1, uint64_t a2)
{
  sub_1A3FCA804();
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86C68(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v53 - v11;
  v12 = sub_1A5240664();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v16;
  v17 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  sub_1A4724D5C(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v25[*(v26 + 56)];
  sub_1A4724824(a1, v25, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  sub_1A4724824(a2, v27, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A4724824(v25, v22, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    sub_1A3E86D04();
    v31 = *(v30 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A4723CD0(&v22[v31], sub_1A3E86C68);
      (*(v13 + 8))(v22, v12);
      goto LABEL_7;
    }

    v33 = v62;
    v54 = *(v13 + 32);
    v55 = v13 + 32;
    v54(v62, v27, v12);
    v34 = v61;
    sub_1A472488C(&v22[v31], v61, sub_1A3E86C68);
    v35 = v27 + v31;
    v36 = v60;
    sub_1A472488C(v35, v60, sub_1A3E86C68);
    v37 = MEMORY[0x1A58FB980](v22, v33);
    v38 = *(v13 + 8);
    v38(v22, v12);
    if (v37)
    {
      v39 = *(v58 + 48);
      v40 = v34;
      v41 = v34;
      v42 = v59;
      sub_1A4724824(v40, v59, sub_1A3E86C68);
      v43 = v42;
      sub_1A4724824(v36, v42 + v39, sub_1A3E86C68);
      v44 = *(v13 + 48);
      if (v44(v43, 1, v12) == 1)
      {
        sub_1A4723CD0(v36, sub_1A3E86C68);
        v45 = v59;
        sub_1A4723CD0(v41, sub_1A3E86C68);
        v38(v62, v12);
        if (v44(v45 + v39, 1, v12) == 1)
        {
          sub_1A4723CD0(v45, sub_1A3E86C68);
          v29 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v46 = v57;
        sub_1A4724824(v43, v57, sub_1A3E86C68);
        if (v44(v43 + v39, 1, v12) != 1)
        {
          v48 = (v43 + v39);
          v49 = v56;
          v54(v56, v48, v12);
          sub_1A4720B7C(&qword_1EB12FC58, MEMORY[0x1E6968278]);
          v50 = v46;
          v51 = v43;
          v52 = sub_1A524C594();
          v38(v49, v12);
          sub_1A4723CD0(v36, sub_1A3E86C68);
          sub_1A4723CD0(v61, sub_1A3E86C68);
          v38(v62, v12);
          v38(v50, v12);
          sub_1A4723CD0(v51, sub_1A3E86C68);
          v32 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource;
          if (v52)
          {
            v29 = 1;
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        sub_1A4723CD0(v36, sub_1A3E86C68);
        v45 = v59;
        sub_1A4723CD0(v61, sub_1A3E86C68);
        v38(v62, v12);
        v38(v46, v12);
      }

      sub_1A4723CD0(v45, sub_1A3FCA804);
    }

    else
    {
      sub_1A4723CD0(v36, sub_1A3E86C68);
      sub_1A4723CD0(v34, sub_1A3E86C68);
      v38(v33, v12);
    }

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  sub_1A4724824(v25, v19, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v28 = *v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1A3C5A018(v28, *v27);

LABEL_17:
    v32 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource;
    goto LABEL_18;
  }

LABEL_7:
  v29 = 0;
  v32 = sub_1A4724D5C;
LABEL_18:
  sub_1A4723CD0(v25, v32);
  return v29 & 1;
}

uint64_t sub_1A4723CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4723D30()
{
  v2 = *(type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4722C24(v5, v6, v7, v0 + v3, v4);
}

void sub_1A4723E84()
{
  sub_1A4722174(319);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4723F6C()
{
  sub_1A3E86D04();
  if (v0 <= 0x3F)
  {
    sub_1A4724538(319, &qword_1EB120B48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A4724034()
{
  sub_1A3C52C70(319, &qword_1EB126C40);
  if (v0 <= 0x3F)
  {
    sub_1A4720E50(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4720E50(319, &qword_1EB1246A0, sub_1A3E7D368, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4720E50(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A47241AC()
{
  if (!qword_1EB140C80)
  {
    sub_1A472438C();
    sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    sub_1A4724488();
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8();
    sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C80);
    }
  }
}

void sub_1A472438C()
{
  if (!qword_1EB140C88)
  {
    sub_1A4724488();
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C88);
    }
  }
}

void sub_1A4724488()
{
  if (!qword_1EB140C90)
  {
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C90);
    }
  }
}

void sub_1A4724538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A472458C()
{
  result = qword_1EB140CA0;
  if (!qword_1EB140CA0)
  {
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A4724638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140CA0);
  }

  return result;
}

unint64_t sub_1A4724638()
{
  result = qword_1EB1D0910[0];
  if (!qword_1EB1D0910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D0910);
  }

  return result;
}

void sub_1A472468C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4720B7C(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A4724750()
{
  v1 = *(type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A47218A8(v2);
}

uint64_t sub_1A47247B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4724824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A472488C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A47248F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4724944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4723CB0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A4724824(a1, v13, sub_1A4722174);
  sub_1A4724824(a2, &v13[v15], sub_1A4722174);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A4724824(v13, v10, sub_1A4722174);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A472488C(&v13[v15], v7, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      v18 = sub_1A4723540(v10, v7);
      sub_1A4723CD0(v7, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      sub_1A4723CD0(v10, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      sub_1A4723CD0(v13, sub_1A4722174);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1A4723CD0(v10, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A4723CD0(v13, sub_1A4723CB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A4723CD0(v13, sub_1A4722174);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A4724C2C(uint64_t a1, uint64_t a2)
{
  sub_1A4722174(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4724C90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  sub_1A4724CF8(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_1A4724CF8(uint64_t a1, uint64_t a2)
{
  sub_1A4722174(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A4724D7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4724DDC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  v5 = PXMemoryCreationLocalizedString(v4);

  sub_1A524C674();
  sub_1A4720E50(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  v7 = *(**v3 + 136);
  v8 = v7();
  v9 = [v8 count];

  v10 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v10;
  *(v6 + 32) = v9;
  v11 = sub_1A524C6C4();
  v13 = v12;

  v24[2] = v11;
  v24[3] = v13;
  v27 = *(v3 + 8);
  v25 = *(v3 + 24);
  v26 = *(v3 + 32);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v16 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v16;
  *(v14 + 48) = v15;

  sub_1A47247B0(&v27, v24, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790], sub_1A47248F4);
  sub_1A47247B0(&v25, v24, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0], sub_1A4720E50);
  sub_1A3D5F9DC();
  v17 = sub_1A524B754();
  v18 = (v7)(v17);
  v19 = [v18 count];

  LOBYTE(v11) = v19 == 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  sub_1A41278A0();
  v23 = (a1 + *(v22 + 36));
  *v23 = KeyPath;
  v23[1] = sub_1A3E07024;
  v23[2] = v21;
}

uint64_t objectdestroyTm_74()
{

  j__swift_release(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void sub_1A472519C()
{
  if (!qword_1EB140CB8)
  {
    sub_1A5248464();
    sub_1A47241AC();
    sub_1A472438C();
    sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    sub_1A4724488();
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8();
    sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CB8);
    }
  }
}

unint64_t sub_1A47253B4()
{
  result = qword_1EB1D09B0[0];
  if (!qword_1EB1D09B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D09B0);
  }

  return result;
}

unint64_t sub_1A4725408()
{
  result = qword_1EB15C550[0];
  if (!qword_1EB15C550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15C550);
  }

  return result;
}

void sub_1A472545C(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_1A4725CE4();
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31[2] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4725DD8();
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1A47260A8(0, &qword_1EB140D08, MEMORY[0x1E697F948]);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = v31 - v7;
  v32 = sub_1A52429A4();
  v31[4] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4726118();
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = v31 - v11;
  v12 = type metadata accessor for SharedLibraryOwnerImageConfiguration();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v31[3] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v31[5] = v31 - v15;
  v16 = sub_1A5249234();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v22 = *(v1 + 8) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v44[0] = *v22;
  v23 = *(v22 + 64);
  v25 = *(v22 + 16);
  v24 = *(v22 + 32);
  v44[3] = *(v22 + 48);
  v44[4] = v23;
  v44[1] = v25;
  v44[2] = v24;
  v27 = *(v22 + 96);
  v26 = *(v22 + 112);
  v28 = *(v22 + 80);
  v45 = *(v22 + 128);
  v44[6] = v27;
  v44[7] = v26;
  v44[5] = v28;
  if (*(v1 + 24) == 1)
  {
    sub_1A460525C(v44, v43);
  }

  else
  {
    v31[0] = v18;
    sub_1A460525C(v44, v43);
    sub_1A3D35B8C(v21, 0);
    sub_1A524D254();
    v29 = sub_1A524A014();
    v31[1] = v1;
    v30 = v29;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v21, 0);
    (*(v17 + 8))(v20, v31[0]);
  }

  sub_1A524DAA4();
}

void sub_1A4725CE4()
{
  if (!qword_1EB140CC0)
  {
    sub_1A4725FCC(255, &qword_1EB140CC8, MEMORY[0x1E69817E8], &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697E830]);
    sub_1A4725D78();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CC0);
    }
  }
}

void sub_1A4725D78()
{
  if (!qword_1EB140CD0)
  {
    sub_1A524BBF4();
    v0 = sub_1A5249C64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CD0);
    }
  }
}

void sub_1A4725DD8()
{
  if (!qword_1EB140CD8)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    sub_1A4726020();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CD8);
    }
  }
}

void sub_1A4725E6C()
{
  if (!qword_1EB140CE8)
  {
    sub_1A4725CE4();
    sub_1A4725EDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140CE8);
    }
  }
}

void sub_1A4725EDC()
{
  if (!qword_1EB140CF0)
  {
    sub_1A4725F3C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CF0);
    }
  }
}

void sub_1A4725F3C()
{
  if (!qword_1EB140CF8)
  {
    sub_1A4725FCC(255, &qword_1EB13C210, MEMORY[0x1E697E790], MEMORY[0x1E697E788], MEMORY[0x1E69809C0]);
    sub_1A44B6A14();
    v0 = sub_1A5249C64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140CF8);
    }
  }
}

void sub_1A4725FCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4726020()
{
  result = qword_1EB140D00;
  if (!qword_1EB140D00)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D00);
  }

  return result;
}

void sub_1A47260A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4726118();
    v7 = v6;
    sub_1A4725DD8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4726118()
{
  if (!qword_1EB140D10)
  {
    sub_1A4726CA8(255, &qword_1EB140D18, sub_1A47261B0, &type metadata for SharedLibraryImageProvider, MEMORY[0x1E69C1ED0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140D10);
    }
  }
}

unint64_t sub_1A47261B0()
{
  result = qword_1EB140D20;
  if (!qword_1EB140D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D20);
  }

  return result;
}

uint64_t sub_1A4726204@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5248714();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for SharedLibraryOwnerImageConfiguration();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4605984(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A47265D8(v12);
    return (*(v14 + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1A4726860(v12, v16);
    v18 = *(v1 + 16);
    if (*(v2 + 24) == 1)
    {
      v19 = *(v2 + 16);
    }

    else
    {

      sub_1A524D254();
      v20 = sub_1A524A014();
      v23 = a1;
      v21 = v20;
      sub_1A5246DF4();

      a1 = v23;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v18, 0);
      (*(v24 + 8))(v9, v7);
      v19 = v27;
    }

    *&v16[*(v13 + 24)] = v19;
    type metadata accessor for LemonadeSharedLibraryAvatarInvitationView();
    sub_1A401DA00(v6);
    (*(v25 + 40))(&v16[*(v13 + 20)], v6, v26);
    sub_1A47268C4(v16, a1, type metadata accessor for SharedLibraryOwnerImageConfiguration);
    (*(v14 + 56))(a1, 0, 1, v13);
    return sub_1A472692C(v16, type metadata accessor for SharedLibraryOwnerImageConfiguration);
  }
}

uint64_t sub_1A47265D8(uint64_t a1)
{
  sub_1A4726EF0(0, &qword_1EB140D28, type metadata accessor for SharedLibraryOwnerImageConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4726664()
{
  if (!qword_1EB140D30)
  {
    sub_1A4726EF0(255, &qword_1EB140CE0, sub_1A4725E6C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140D30);
    }
  }
}

unint64_t sub_1A47266FC()
{
  result = qword_1EB140D38;
  if (!qword_1EB140D38)
  {
    sub_1A4726118();
    sub_1A472677C();
    sub_1A472680C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D38);
  }

  return result;
}

unint64_t sub_1A472677C()
{
  result = qword_1EB140D40;
  if (!qword_1EB140D40)
  {
    sub_1A4726CA8(255, &qword_1EB140D18, sub_1A47261B0, &type metadata for SharedLibraryImageProvider, MEMORY[0x1E69C1ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D40);
  }

  return result;
}

unint64_t sub_1A472680C()
{
  result = qword_1EB140D48;
  if (!qword_1EB140D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D48);
  }

  return result;
}

uint64_t sub_1A4726860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryOwnerImageConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47268C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A472692C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LemonadeSharedLibraryAvatarInvitationView()
{
  result = qword_1EB15D5E0;
  if (!qword_1EB15D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47269D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1A4726C08();
  v9 = (a2 + *(v8 + 36));
  v10 = *(sub_1A5248A14() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v5;
  *(v9 + 1) = v5;
  sub_1A3F2ECA8();
  v14 = &v9[*(v13 + 36)];
  *v14 = v7;
  *(v14 + 1) = v7;
  sub_1A3F2EC14();
  v16 = &v9[*(v15 + 36)];
  *v16 = v6;
  *(v16 + 1) = v6;
  sub_1A4726DA4();
  v9[*(v17 + 56)] = 0;
  sub_1A4726D10();
  *&v9[*(v18 + 36)] = 256;
  sub_1A4726CA8(0, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
  v20 = *(*(v19 - 8) + 16);

  return v20(a2, a1, v19);
}

uint64_t sub_1A4726B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = a1;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = *(type metadata accessor for LemonadeSharedLibraryAvatarInvitationView() + 28);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A4726EF0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4726C08()
{
  if (!qword_1EB140D58)
  {
    sub_1A4726CA8(255, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
    sub_1A4726D10();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140D58);
    }
  }
}

void sub_1A4726CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4726D10()
{
  if (!qword_1EB140D68)
  {
    sub_1A4726DA4();
    sub_1A4726E5C(&qword_1EB140D78, sub_1A4726DA4);
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140D68);
    }
  }
}

void sub_1A4726DA4()
{
  if (!qword_1EB140D70)
  {
    sub_1A3F2EC14();
    sub_1A3FA9580();
    sub_1A4726E5C(&qword_1EB12EA38, sub_1A3F2EC14);
    v0 = sub_1A5249324();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140D70);
    }
  }
}

uint64_t sub_1A4726E5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4726EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4726F68()
{
  type metadata accessor for LemonadeInvitationModel();
  if (v0 <= 0x3F)
  {
    sub_1A46AA1B0();
    if (v1 <= 0x3F)
    {
      sub_1A4726EF0(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A4727054()
{
  result = qword_1EB140D80;
  if (!qword_1EB140D80)
  {
    sub_1A47260A8(255, &qword_1EB140D88, MEMORY[0x1E697F960]);
    sub_1A47266FC();
    sub_1A4726E5C(&qword_1EB140D50, sub_1A4725DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D80);
  }

  return result;
}

unint64_t sub_1A4727120()
{
  result = qword_1EB140D90;
  if (!qword_1EB140D90)
  {
    sub_1A4726C08();
    sub_1A47271D0();
    sub_1A4726E5C(&unk_1EB140DA0, sub_1A4726D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D90);
  }

  return result;
}

unint64_t sub_1A47271D0()
{
  result = qword_1EB140D98;
  if (!qword_1EB140D98)
  {
    sub_1A4726CA8(255, &qword_1EB140D60, sub_1A472680C, &type metadata for LemonadeSharedLibraryAvatarInvitationView.SharedLibraryBadgeViewModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140D98);
  }

  return result;
}

uint64_t sub_1A4727360()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47273C0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A47274F8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A4727638(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))(a2);
  }
}

void (*sub_1A47276C8(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A4727710;
}

void sub_1A4727710(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A47274F8(v3);
  }

  else
  {
    sub_1A47274F8(v2);
  }
}

id sub_1A4727778(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v10 = v9();
  v11 = (*(v7 + 440))();

  result = 0;
  if (v11)
  {
    v13 = *((*v8 & *v2) + 0x108);
    v14 = a1;
    v15 = v13();
    v16 = v9();
    v17 = sub_1A49E6068(v14, v15, v16);
    v18 = sub_1A47279E0();
    (*((*v8 & *v17) + 0x110))(v18 & 1);
    v19 = sub_1A4727A58();
    (*((*v8 & *v17) + 0x128))(v19 & 1);
    (*((*v8 & *v2) + 0xE0))(v17);
    sub_1A4727C00();
    v20 = v17;
    sub_1A406DE08(v6);
    v21 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v21;
  }

  return result;
}

uint64_t sub_1A47279E0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetAbove;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v2 == 2)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
    LOBYTE(v2) = 0;
    *(v0 + v1) = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A4727A58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetBelow;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel();
      v6 = *((*v4 & *v1) + 0xA8);
      v7 = v6();
      v8 = (*(v5 + 376))();

      if (v8 & 1) != 0 || (type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(), v9 = v6(), v10 = sub_1A418D68C(v9), v9, (v10) || (type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(), v11 = v6(), v12 = sub_1A440737C(v11), v11, (v12))
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
        v14 = v6();
        LOBYTE(v3) = sub_1A3FBD1E0(v14);
      }
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

void sub_1A4727C00()
{
  if (!qword_1EB140DC0)
  {
    type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
    sub_1A4727C64();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140DC0);
    }
  }
}

unint64_t sub_1A4727C64()
{
  result = qword_1EB131068;
  if (!qword_1EB131068)
  {
    type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131068);
  }

  return result;
}

double sub_1A4727D18()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D8FE0);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1A4728070(uint64_t result)
{
  if ((result & 2) != 0)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    if (result)
    {
      v2 = result;
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      v6[4] = sub_1A4273BA8;
      v6[5] = v3;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1A3C2E0D0;
      v6[3] = &block_descriptor_264;
      v4 = _Block_copy(v6);
      swift_unknownObjectRetain();
      v5 = v1;

      [v2 widget:v5 animateChanges:v4 withAnimationOptions:0];
      _Block_release(v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A4728220()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A4728260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSharedLibraryWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4728304()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4728378@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A47283F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1A52479F4();
}

void sub_1A4728468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PHAssetCloudLocalState(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4728514(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v33 = a3;
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v32 - v13;
  [a1 fetchPropertySetsIfNeeded];
  v15 = [a1 px_filename];
  sub_1A524C674();

  sub_1A5240D14();

  sub_1A5240D54();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = v4;
  v18 = sub_1A5240D34();
  v20 = v19;
  v16(v14, v7);
  v21 = (v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_fileName);
  *v21 = v18;
  v21[1] = v20;
  LOWORD(v18) = [a1 px_fetchCloudLocalState];
  swift_beginAccess();
  v34 = v18;
  type metadata accessor for PHAssetCloudLocalState(0);
  sub_1A52479A4();
  swift_endAccess();
  v22 = [a1 photoLibrary];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 isCloudPhotoLibraryEnabled];

    *(v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isiCloudEnabled) = v24;
    v25 = [a1 px_isUnsavedSyndicatedAsset];
    *(v17 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isSyndicatedGuestAsset) = v25;
    v26 = a1;
    v27 = a2;
    v28 = v33;
    v29 = sub_1A4467460(v26, v27, v28);
    v30 = sub_1A446720C();
    v31 = [v30 photoLibrary];

    if (v31)
    {
      [v31 registerChangeObserver_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A47287EC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel__cloudLocalState;
  sub_1A4728468(0, &unk_1EB128B10, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsFilenameWidgetViewModel()
{
  result = qword_1EB171CE0;
  if (!qword_1EB171CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4728974()
{
  sub_1A4728468(319, &unk_1EB128B10, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PhotosViewConfigurationContext.init(selectionCoordinator:loadingStatusManager:basePredicate:initialFilterPredicate:sortDescriptors:contentStartingPosition:noContentPlaceholderType:shouldReverseOrder:curationContext:isForSmartAlbumAllPhotosCollection:allowsSwipeToSelect:isVerySlowFetch:wantsNumberedSelectionStyle:startsInSelectMode:photosViewDelegate:pickerClientBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_unknownObjectWeakInit();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 73) = a12;
  *(a9 + 74) = a13;
  *(a9 + 75) = a14;
  *(a9 + 76) = a15;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a9 + 80) = a17;
  *(a9 + 88) = a18;
  return result;
}

id sub_1A4728B30(void *a1, void *a2)
{
  v5 = [a1 photoLibrary];
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v8)
  {
    sub_1A4728C1C();
    v8 = sub_1A524CA14();
  }

  v9 = PXPhotosViewConfigurationForAppAndPickerWithAssetCollectionFetchResult(a1, 0, v5, a2, 0, v6, v7, v8, *v2, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 73), *(v2 + 74));

  return v9;
}

unint64_t sub_1A4728C1C()
{
  result = qword_1EB126B60;
  if (!qword_1EB126B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B60);
  }

  return result;
}

id sub_1A4728C68(void *a1)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v4 = result;
    v5 = [result librarySpecificFetchOptions];
    v6 = *(v1 + 56);
    [v5 setReverseSortOrder_];
    v7 = [objc_opt_self() fetchImportSessionsWithOptions_];
    v8 = [v7 photoLibrary];
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);
    if (v11)
    {
      sub_1A4728C1C();
      v11 = sub_1A524CA14();
    }

    v12 = PXPhotosViewConfigurationForAppAndPickerWithAssetCollectionFetchResult(v7, 0, v8, a1, 0, v9, v10, v11, *v1, v6, *(v1 + 64), *(v1 + 72), *(v1 + 73), *(v1 + 74));

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A4728DD0(void *a1)
{
  v2 = PXPhotosViewConfigurationForFeaturedPhotos(a1, *v1);

  return v2;
}

id sub_1A4728E00(void *a1)
{
  v2 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(a1, 0, *(v1 + 56), *(v1 + 64), *v1);
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [v2 setPrefersActionsInToolbar_];
    [v2 setTrailingAccessoryActionType_];
    [v2 setCenterAccessoryActionType_];
  }

  return v2;
}

uint64_t sub_1A4728E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4728EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LemonadeDetailsNavigationType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A472902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4730F78();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4729090()
{
  sub_1A47290D8();

  return sub_1A5249244();
}

unint64_t sub_1A47290D8()
{
  result = qword_1EB15A8C8[0];
  if (!qword_1EB15A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A8C8);
  }

  return result;
}

uint64_t sub_1A472916C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v13 = type metadata accessor for LemonadeDetailsNavigationButton();
  v14 = a7 + v13[12];
  sub_1A524B694();
  *v14 = v23;
  *(v14 + 1) = v24;
  v15 = v13[13];
  *(a7 + v15) = swift_getKeyPath();
  v16 = MEMORY[0x1E697DCB8];
  sub_1A4729334(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v17 = v13[14];
  *(a7 + v17) = swift_getKeyPath();
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, v16);
  swift_storeEnumTagMultiPayload();
  sub_1A52439E4();
  *a7 = a1;
  v18 = (a7 + v13[10]);
  *v18 = a5;
  v18[1] = a6;

  a2(v19);

  v21 = (a7 + v13[11]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

void sub_1A4729334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4729398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a2;
  v4 = sub_1A5249B24();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v100 = (v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v112 = *(a1 + 24);
  v113 = v6;
  v7 = sub_1A5242C44();
  v97 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v108 = v81 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1A4729334(255, &qword_1EB121E00, sub_1A4729FE8, MEMORY[0x1E69E6720]);
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A472A264();
  v116 = v7;
  v117 = v11;
  v118 = WitnessTable;
  v119 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = v81 - v15;
  v99 = v7;
  v116 = v7;
  v117 = v11;
  v89 = WitnessTable;
  v118 = WitnessTable;
  v119 = v13;
  v88 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = OpaqueTypeMetadata2;
  v116 = OpaqueTypeMetadata2;
  v117 = MEMORY[0x1E69E6370];
  v92 = OpaqueTypeConformance2;
  v118 = OpaqueTypeConformance2;
  v119 = MEMORY[0x1E69E6388];
  v94 = swift_getOpaqueTypeMetadata2();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v81 - v19;
  v84 = sub_1A5246E54();
  v83 = *(v84 - 1);
  MEMORY[0x1EEE9AC00](v84);
  v85 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v86 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v106 = v81 - v25;
  v107 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v81 - v28;
  sub_1A4729334(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], v9);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v81 - v31;
  v33 = swift_getWitnessTable();
  v110 = a1;
  v104 = v2;
  MEMORY[0x1A5905890](a1, v33);
  v34 = sub_1A5246E94();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v32, 1, v34);
  v87 = v11;
  if (v36 == 1)
  {
    sub_1A4731A58(v32, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
    v37 = *(v21 + 16);
    v38 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v39 = *(v21 + 16);
    v105 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v111 = v39;
    v39(v29, v104, v110);
    sub_1A5246E44();
    v40 = sub_1A5246E84();
    v41 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v42 = swift_slowAlloc();
      v109 = v21;
      LODWORD(v82) = v41;
      v43 = v42;
      v116 = swift_slowAlloc();
      *v43 = 136446210;
      v44 = v110;
      sub_1A524A694();
      (*(v109 + 8))(v29, v44);
      sub_1A3C2EF94();
    }

    (*(v83 + 8))(v85, v84);
    (*(v21 + 8))(v29, v110);
    (*(v35 + 8))(v32, v34);
    v38 = v105;
    v37 = v111;
  }

  v45 = v106;
  v46 = v104;
  v47 = v110;
  v48 = v38;
  v111 = v37;
  v37(v106, v104, v110);
  v105 = v48;
  v49 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v85 = *(v21 + 80);
  v50 = swift_allocObject();
  v51 = v112;
  *(v50 + 16) = v113;
  *(v50 + 24) = v51;
  v52 = *(v21 + 32);
  v109 = v21 + 32;
  v52(v50 + v49, v45, v47);
  v53 = v52;
  v84 = v52;
  v54 = v86;
  v111(v86, v46, v47);
  v55 = v49;
  v83 = v49;
  v56 = swift_allocObject();
  v57 = v112;
  v58 = v113;
  *(v56 + 16) = v113;
  *(v56 + 24) = v57;
  v53(v56 + v55, v54, v47);
  sub_1A5242C34();
  v59 = (v46 + *(v47 + 48));
  LODWORD(v86) = *v59;
  v82 = *(v59 + 1);
  v114 = v86;
  v115 = v82;
  sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v81[1] = v60;
  sub_1A524B6C4();
  sub_1A472ABEC(v46, v58, v57);
  swift_checkMetadataState();
  v61 = sub_1A524B6E4();
  v63 = v100;
  v62 = v101;
  *v100 = v61;
  v64 = v102;
  (*(v62 + 104))(v63, *MEMORY[0x1E697C8C0], v102);
  v65 = v99;
  v66 = v95;
  v67 = v108;
  sub_1A524A9B4();

  (*(v62 + 8))(v63, v64);
  (*(v97 + 8))(v67, v65);
  LOBYTE(v116) = v86;
  v117 = v82;
  sub_1A524B6A4();
  LOBYTE(v116) = v114;
  v68 = v106;
  v69 = v110;
  v111(v106, v46, v110);
  v70 = v83;
  v71 = swift_allocObject();
  v72 = v112;
  *(v71 + 16) = v113;
  *(v71 + 24) = v72;
  v84(v71 + v70, v68, v69);
  v73 = v90;
  v74 = v98;
  sub_1A524B154();

  (*(v96 + 8))(v66, v74);
  v75 = v93;
  v76 = *(v93 + 16);
  v77 = v91;
  v78 = v94;
  v76(v91, v73, v94);
  v79 = *(v75 + 8);
  v79(v73, v78);
  v76(v103, v77, v78);
  return (v79)(v77, v78);
}

void sub_1A4729FE8()
{
  if (!qword_1EB121E08)
  {
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A118();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E08);
    }
  }
}

void sub_1A472A0BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A472A118()
{
  result = qword_1EB1238E0;
  if (!qword_1EB1238E0)
  {
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238E0);
  }

  return result;
}

unint64_t sub_1A472A1B4()
{
  result = qword_1EB1287F8;
  if (!qword_1EB1287F8)
  {
    sub_1A472A09C(255);
    sub_1A4731210(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287F8);
  }

  return result;
}

unint64_t sub_1A472A264()
{
  result = qword_1EB121DF8;
  if (!qword_1EB121DF8)
  {
    sub_1A4729334(255, &qword_1EB121E00, sub_1A4729FE8, MEMORY[0x1E69E6720]);
    sub_1A472A0BC(255, &qword_1EB1238D8, sub_1A472A09C);
    sub_1A472A118();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121DF8);
  }

  return result;
}

uint64_t sub_1A472A36C(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A4729334(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  sub_1A4729334(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for LemonadeDetailsNavigationButton();
  (*(a1 + v19[10]))();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1A4731A58(v8, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
  }

  sub_1A47319F0(v8, v18, type metadata accessor for LemonadeNavigationDestination);
  if (*a1 && (v21 = sub_1A52439D4(), v49 = v12, v22 = v18, v23 = v21, v25 = v24, sub_1A44CC22C(v5), v26 = sub_1A52434D4(), (*(*(v26 - 8) + 56))(v5, 0, 1, v26), v27 = sub_1A3C30368(), v28 = sub_1A4657324(v22, 0, v27 & 1, v23, v25, v5, 0, 0), v29 = v23, v18 = v22, v12 = v49, sub_1A3C33378(v29), sub_1A4731A58(v5, &qword_1EB1290B0, MEMORY[0x1E69C24E0]), LOBYTE(v25) = sub_1A3E78D28(v28), sub_1A3E00630(v28), (v25 & 1) != 0))
  {
    v30 = sub_1A4655948();
    if (v30)
    {

      v31 = a1 + v19[12];
      v32 = *v31;
      v33 = *(v31 + 1);
      LOBYTE(v51) = v32;
      v52 = v33;
      v50 = 1;
      sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v30 = sub_1A524B6B4();
    }

    v34 = *(a1 + v19[11]);
    if (v34)
    {
      v35 = v34(v30);
      if (v36)
      {
        v51 = v35;
        v52 = v36;
        MEMORY[0x1EEE9AC00](v35);
        *(&v49 - 2) = &v51;
        if (sub_1A3D3E5DC(sub_1A3D3E6C0, (&v49 - 4), qword_1F17218B0))
        {
          sub_1A4731AC8(v18, type metadata accessor for LemonadeNavigationDestination);
        }

        v42 = objc_opt_self();
        v43 = *MEMORY[0x1E6991CD0];
        sub_1A4729334(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A52F8E10;
        *(inited + 32) = sub_1A524C674();
        *(inited + 40) = v45;
        v46 = v43;
        v47 = sub_1A524C634();

        *(inited + 48) = v47;
        sub_1A3E75770(inited);
        swift_setDeallocating();
        sub_1A4731AC8(inited + 32, sub_1A3F24E98);
        sub_1A3C52C70(0, &qword_1EB12B160);
        v48 = sub_1A524C3D4();

        [v42 sendEvent:v46 withPayload:v48];
      }
    }

    v41 = v18;
  }

  else
  {
    v37 = sub_1A524D244();
    v38 = *sub_1A3CAA3FC();
    sub_1A4731B28(v18, v15, type metadata accessor for LemonadeNavigationDestination);
    if (os_log_type_enabled(v38, v37))
    {
      v39 = v38;
      v40 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v40 = 136315138;
      sub_1A4731B28(v15, v12, type metadata accessor for LemonadeNavigationDestination);
      sub_1A524C714();
      sub_1A4731AC8(v15, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94();
    }

    sub_1A4731AC8(v15, type metadata accessor for LemonadeNavigationDestination);
    v41 = v18;
  }

  return sub_1A4731AC8(v41, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A472AAB8()
{
  v1 = *(type metadata accessor for LemonadeDetailsNavigationButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_1A472A36C(v2);
}

uint64_t sub_1A472AB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for LemonadeDetailsNavigationButton();
  v5 = *(*(v3 - 8) + 16);
  v6 = v1 + *(v4 + 36) + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_1A472ABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeDetailsNavigationButton();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return v12;
}

uint64_t sub_1A472AD10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472A0BC(0, &qword_1EB1238D8, sub_1A472A09C);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v24 - v8);
  sub_1A4729FE8();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  if (*v1)
  {
    v24[0] = v12;

    v17 = sub_1A4655948();
    if (v17)
    {
      v18 = v17;
      sub_1A4731B28(v17 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v5, type metadata accessor for LemonadeNavigationDestination);

      sub_1A487864C(v5, v16, 0, v9);
      sub_1A472A09C(0);
      v20 = (v9 + *(v19 + 36));
      *v20 = sub_1A457F3D8;
      v20[1] = v18;
      v20[2] = 0;
      v20[3] = 0;
      v21 = (v9 + *(v7 + 36));
      *v21 = 0;
      v21[1] = 0;
      v21[2] = sub_1A4731970;
      v21[3] = v16;

      v24[1] = sub_1A524B414();
      sub_1A472A118();
      sub_1A524AE84();

      sub_1A4731978(v9);
      (*(v24[0] + 32))(a1, v15, v11);
      return (*(v24[0] + 56))(a1, 0, 1, v11);
    }

    v12 = v24[0];
  }

  v23 = *(v12 + 56);

  return v23(a1, 1, 1, v11, v13);
}

uint64_t sub_1A472B030()
{
  v1 = type metadata accessor for LemonadeDetailsNavigationButton();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  sub_1A47315D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if ((v4 & 1) == 0)
  {
    if (*v2)
    {
      return sub_1A4655B14();
    }
  }

  return result;
}

uint64_t sub_1A472B100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v25 = a5;
  v12 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v13 = a6 + v12[16];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a6 + v12[17];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a6 + v12[18];
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  v16 = a6 + v12[19];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v12[20];
  *(a6 + v17) = swift_getKeyPath();
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v12[21];
  sub_1A524B694();
  *v18 = v25;
  *(v18 + 8) = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(a6, a1, AssociatedTypeWitness);
  v21 = *(a5 - 8);
  (*(v21 + 16))(a6 + v12[13], a2, a5);
  *(a6 + v12[14]) = a3;

  a4(v22);

  swift_unknownObjectRelease();
  (*(v21 + 8))(a2, a5);
  return (*(v20 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_1A472B3DC(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 64));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1A472B528(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1A472B67C(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 76);
  result = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {
    v9 = *v7;

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v9, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return result;
}

uint64_t sub_1A472B7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v141 = sub_1A5248B54();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242C04();
  v6 = a1[3];
  v7 = a1[5];
  v8 = type metadata accessor for LemonadeDetailsNavigationButton();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A4731210(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v161 = v8;
  v162 = v5;
  v163 = WitnessTable;
  v164 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v161 = v8;
  v162 = v5;
  v163 = WitnessTable;
  v164 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v161 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v13 = sub_1A5249754();
  v14 = sub_1A524B514();
  v137 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v110 - v15;
  v161 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeConformance2;
  v171 = swift_getOpaqueTypeConformance2();
  v172 = v7;
  v135 = v13;
  v128 = swift_getWitnessTable();
  v170 = v128;
  v16 = swift_getWitnessTable();
  v161 = v14;
  v162 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v134 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v110 - v18;
  v19 = a1[4];
  v142 = a1[2];
  v143 = v19;
  type metadata accessor for LemonadeDetailsNavigationContextMenu();
  v20 = sub_1A524DF24();
  v138 = v14;
  v161 = v14;
  v162 = v16;
  v129 = v16;
  v21 = swift_getOpaqueTypeConformance2();
  v169 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v155 = v17;
  v156 = v21;
  v161 = v17;
  v162 = v20;
  v157 = v20;
  v23 = v2;
  v163 = v21;
  v164 = v22;
  v154 = v22;
  v24 = swift_getOpaqueTypeMetadata2();
  v132 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v110 - v27;
  sub_1A3F330A8();
  *&v150 = v6;
  v28 = sub_1A5248804();
  v123 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v127 = &v110 - v29;
  v30 = sub_1A4731210(&qword_1EB127C80, sub_1A3F330A8);
  *&v151 = v7;
  v167 = v7;
  v168 = v30;
  v31 = swift_getWitnessTable();
  v161 = v28;
  v162 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v119 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v110 - v33;
  v124 = v28;
  v161 = v28;
  v162 = v31;
  v118 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v149 = v32;
  v161 = v32;
  v162 = v34;
  v146 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v122 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v121 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v110 - v38;
  v144 = v39;
  v152 = v24;
  v148 = sub_1A5249754();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v110 - v40;
  v126 = sub_1A5246E54();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v115 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v110 - v47;
  sub_1A4729334(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v110 - v50;
  v52 = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1, v52);
  v53 = sub_1A5246E94();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 48))(v51, 1, v53);
  v116 = v43;
  if (v55 == 1)
  {
    sub_1A4731A58(v51, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
    v56 = v143;
  }

  else
  {
    v57 = *(v43 + 16);
    v113 = v23;
    v57(v48, v23, a1);
    sub_1A5246E44();
    v58 = sub_1A5246E84();
    v112 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v59 = swift_slowAlloc();
      v110 = v59;
      v111 = swift_slowAlloc();
      v161 = v111;
      *v59 = 136446210;
      sub_1A524A694();
      (*(v43 + 8))(v48, a1);
      sub_1A3C2EF94();
    }

    (*(v125 + 8))(v42, v126);
    (*(v43 + 8))(v48, a1);
    v56 = v143;
    (*(v54 + 8))(v51, v53);
    v23 = v113;
  }

  v60 = sub_1A472B528(a1);
  v61 = v156;
  v62 = v154;
  v63 = v142;
  if ((v60 & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(v56 + 144))(&v158, v23, v142, v56);
  if (!v160)
  {
    v60 = sub_1A47311B4(&v158, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
LABEL_10:
    MEMORY[0x1EEE9AC00](v60);
    *&v88 = v63;
    *(&v88 + 1) = v150;
    v150 = v88;
    *&v89 = v56;
    *(&v89 + 1) = v151;
    v151 = v89;
    *(&v110 - 3) = v88;
    *(&v110 - 2) = v89;
    *(&v110 - 2) = v23;
    v90 = v136;
    sub_1A524B504();
    v91 = v139;
    sub_1A5248B44();
    v92 = v133;
    v93 = v138;
    sub_1A524A5C4();
    (*(v140 + 8))(v91, v141);
    v94 = (*(v137 + 8))(v90, v93);
    MEMORY[0x1EEE9AC00](v94);
    v95 = v151;
    *(&v110 - 3) = v150;
    *(&v110 - 2) = v95;
    *(&v110 - 2) = v23;
    v96 = swift_checkMetadataState();
    v97 = v131;
    v98 = v155;
    sub_1A524A954();
    (*(v134 + 8))(v92, v98);
    v161 = v98;
    v162 = v96;
    v163 = v61;
    v164 = v62;
    swift_getOpaqueTypeConformance2();
    v99 = v132;
    v100 = *(v132 + 16);
    v101 = v62;
    v102 = v130;
    v103 = v152;
    v100(v130, v97, v152);
    v104 = *(v99 + 8);
    v104(v97, v103);
    v100(v97, v102, v103);
    v86 = v101;
    v79 = v149;
    v80 = v146;
    v161 = v149;
    v162 = v146;
    swift_getOpaqueTypeConformance2();
    v87 = v145;
    sub_1A3DF4890(v97, v144, v103);
    v104(v97, v103);
    v104(v102, v103);
    goto LABEL_11;
  }

  sub_1A3C34460(&v158, &v161);
  LODWORD(v143) = (*(v56 + 136))(v23, v63, v56);
  sub_1A3D6F4A4();
  v64 = v63;
  v65 = v150;
  v66 = v151;
  sub_1A524AA44();
  v67 = v116;
  v68 = v115;
  (*(v116 + 16))(v115, v23, a1);
  sub_1A3C341C8(&v161, &v158);
  v69 = (*(v67 + 80) + 49) & ~*(v67 + 80);
  v70 = v56;
  v71 = (v114 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *&v73 = v64;
  *(&v73 + 1) = v65;
  *&v74 = v70;
  *(&v74 + 1) = v66;
  *(v72 + 16) = v73;
  *(v72 + 32) = v74;
  *(v72 + 48) = v143 & 1;
  (*(v67 + 32))(v72 + v69, v68, a1);
  sub_1A3C34460(&v158, v72 + v71);
  v75 = v117;
  v76 = v124;
  v77 = v127;
  sub_1A524AA84();

  (*(v123 + 8))(v77, v76);
  v78 = v121;
  v79 = v149;
  v80 = v146;
  sub_1A524A594();
  (*(v119 + 8))(v75, v79);
  *&v158 = v79;
  *(&v158 + 1) = v80;
  swift_getOpaqueTypeConformance2();
  v81 = v122;
  v82 = *(v122 + 16);
  v83 = v120;
  v84 = v144;
  v82(v120, v78, v144);
  v85 = *(v81 + 8);
  v85(v78, v84);
  v82(v78, v83, v84);
  v86 = v154;
  *&v158 = v155;
  *(&v158 + 1) = v157;
  v159 = v156;
  v160 = v154;
  swift_getOpaqueTypeConformance2();
  v87 = v145;
  sub_1A3DF4798(v78, v84);
  v85(v78, v84);
  v85(v83, v84);
  __swift_destroy_boxed_opaque_existential_0(&v161);
LABEL_11:
  v161 = v79;
  v162 = v80;
  v105 = swift_getOpaqueTypeConformance2();
  v161 = v155;
  v162 = v157;
  v163 = v156;
  v164 = v86;
  v106 = swift_getOpaqueTypeConformance2();
  v165 = v105;
  v166 = v106;
  v107 = v148;
  swift_getWitnessTable();
  v108 = v147;
  (*(v147 + 16))(v153, v87, v107);
  return (*(v108 + 8))(v87, v107);
}

uint64_t sub_1A472CBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a6;
  v112 = a1;
  v93 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v77 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = AssociatedTypeWitness;
  v102 = swift_getAssociatedTypeWitness();
  v94 = *(v102 - 8);
  v85 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v106 = &v77 - v14;
  v86 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v77 - v18;
  v19 = type metadata accessor for LemonadeDetailsNavigationButton();
  v99 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v87 = (&v77 - v20);
  v21 = sub_1A5242C04();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1A4731210(&qword_1EB129158, MEMORY[0x1E69C2160]);
  v115 = v19;
  v116 = v21;
  v117 = WitnessTable;
  v118 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = &v77 - v25;
  v100 = v19;
  v115 = v19;
  v116 = v21;
  v91 = v21;
  v92 = WitnessTable;
  v117 = WitnessTable;
  v118 = v23;
  v90 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = OpaqueTypeMetadata2;
  v115 = OpaqueTypeMetadata2;
  v116 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v101 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v96 = &v77 - v29;
  v30 = sub_1A5249754();
  v107 = *(v30 - 8);
  v108 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77 - v31;
  v115 = a2;
  v116 = a3;
  v113 = a3;
  v114 = a5;
  v117 = a4;
  v118 = a5;
  v33 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v34 = v33[13];
  v35 = v112;
  v36 = (*(a4 + 128))();
  if (v36)
  {
    v89 = v26;
    v93 = v32;
    v88 = &v77;
    v81 = *(v35 + v33[14]);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v82 = &v77 - 8;
    v38 = a2;
    v39 = v113;
    *(&v77 - 6) = a2;
    *(&v77 - 5) = v39;
    v40 = a4;
    v80 = a4;
    v41 = v114;
    *(&v77 - 4) = a4;
    *(&v77 - 3) = v41;
    v76 = v35;
    v42 = v86;
    v78 = *(v86 + 16);
    v43 = v84;
    v78(v84, v35 + v34, a2, v37);
    v44 = *(v42 + 80);
    v45 = (v44 + 48) & ~v44;
    v46 = v45 + v83;
    v79 = v45;
    v83 = v44 | 7;
    v47 = swift_allocObject();
    v49 = v113;
    v48 = v114;
    v47[2] = v38;
    v47[3] = v49;
    v47[4] = v40;
    v47[5] = v48;
    v86 = *(v42 + 32);
    (v86)(v47 + v45, v43, v38);
    (v78)(v105, v35 + v34, v38);
    v50 = v113;
    v51 = v114;
    v52 = v94;
    v53 = v35;
    v54 = v102;
    (*(v94 + 16))(v106, v53, v102);
    v55 = (v46 + *(v52 + 80)) & ~*(v52 + 80);
    v56 = (v85 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 2) = v38;
    *(v57 + 3) = v50;
    *(v57 + 4) = v80;
    *(v57 + 5) = v51;
    (v86)(&v57[v79], v105, v38);
    (*(v52 + 32))(&v57[v55], v106, v54);
    *&v57[v56] = v81;
    v58 = swift_retain_n();
    v76 = v51;
    v59 = v87;
    sub_1A472916C(v58, sub_1A4731288, sub_1A47312B8, v47, sub_1A4731324, v57, v87);
    if (qword_1EB177A30 != -1)
    {
      swift_once();
    }

    v60 = swift_checkMetadataState();
    __swift_project_value_buffer(v60, qword_1EB1EBF58);
    v61 = v100;
    sub_1A524A944();
    (*(v99 + 8))(v59, v61);
    v118 = swift_getAssociatedTypeWitness();
    v119 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v115);
    swift_getAssociatedConformanceWitness();
    sub_1A5246224();
  }

  v62 = v33[15];
  v63 = v93;
  v64 = *(v93 + 2);
  v65 = v35 + v62;
  v66 = v88;
  v67 = v113;
  v64(v88, v65, v113);
  v68 = v89;
  v64(v89, v66, v67);
  v70 = OpaqueTypeConformance2;
  v69 = v110;
  v115 = v110;
  v116 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A3DF4890(v68, v26, v67);
  v71 = *(v63 + 1);
  v71(v68, v67);
  v71(v66, v67);
  v72 = v111;
  v115 = v69;
  v116 = v70;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v114;
  v73 = v108;
  swift_getWitnessTable();
  v74 = v107;
  (*(v107 + 16))(v72, v32, v73);
  return (*(v74 + 8))(v32, v73);
}

uint64_t sub_1A472D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 60), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1A472D8FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A5243F04();
  v5.n128_u64[0] = v6.n128_u64[0];
  v6.n128_u64[0] = 0;

  return MEMORY[0x1EEE2BDA8](a2, a3 & 1, v6, v5);
}

uint64_t sub_1A472D958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a3;
  v46 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v37 - v10;
  v40 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeDetailsNavigationContextMenu();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v37 - v17;
  v18 = sub_1A524DF24();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v48[0] = a2;
  v48[1] = v45;
  v48[2] = a4;
  v48[3] = a5;
  v25 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v26 = a1;
  if ((sub_1A472B528(v25) & 1) != 0 || (LOBYTE(v48[0]) = *(*(a1 + *(v25 + 56)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v49 = 3, static LemonadePresentationContext.== infix(_:_:)(v48, &v49)))
  {
    (*(v14 + 56))(v21, 1, 1, v13);
    swift_getWitnessTable();
  }

  else
  {
    v27 = v40;
    (*(v40 + 16))(v42, v26 + *(v25 + 52), a2);
    v28 = v41;
    (*(v41 + 16))(v43, v26, AssociatedTypeWitness);
    KeyPath = swift_getKeyPath();
    v30 = v39;
    *v39 = KeyPath;
    *(v30 + 8) = 0;
    (*(v27 + 32))(v30 + *(v13 + 36), v42, a2);
    (*(v28 + 32))(v30 + *(v13 + 40), v43, AssociatedTypeWitness);
    swift_getWitnessTable();
    AssociatedTypeWitness = *(v14 + 16);
    v31 = v38;
    AssociatedTypeWitness(v38, v30, v13);
    v45 = v24;
    v32 = v14;
    v33 = *(v14 + 8);
    v33(v30, v13);
    AssociatedTypeWitness(v30, v31, v13);
    v33(v31, v13);
    (*(v32 + 32))(v21, v30, v13);
    (*(v32 + 56))(v21, 0, 1, v13);
    v24 = v45;
  }

  v34 = *(v19 + 16);
  v34(v24, v21, v18);
  v35 = *(v19 + 8);
  v35(v21, v18);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v34(v46, v24, v18);
  return (v35)(v24, v18);
}

uint64_t sub_1A472DEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v76 = a2;
  v4 = a1 - 8;
  v71 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = v5;
  v70 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242004();
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v58 - v9;
  sub_1A4731014(0, &qword_1EB122D18, MEMORY[0x1E697F948]);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v58 - v11;
  v67 = sub_1A5243124();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5249234();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472EE20(0, &qword_1EB122A60, &qword_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v21 = *(v4 + 48);
  v24 = v4 + 24;
  v22 = *(v4 + 24);
  v23 = *(v24 + 8);
  (*(v23 + 144))(&v78, v2 + v21, v22, v23, v18);
  v75 = v6;
  v77 = v20;
  if (v79)
  {
    v58 = v22;
    v59 = v23;
    v60 = v3;
    sub_1A3C34460(&v78, v80);
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v25 = *(v2 + 8);

    v26 = v2;
    if ((v25 & 1) == 0)
    {
      sub_1A524D254();
      v27 = sub_1A524A014();
      v26 = v2;
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v61 + 8))(v14, v62);
    }

    sub_1A52441F4();

    sub_1A3C34400(0, &qword_1EB124F40);
    v28 = sub_1A524E614();

    MEMORY[0x1EEE9AC00](v29);
    v30 = v58;
    v31 = v59;
    *(&v58 - 4) = v58;
    *(&v58 - 3) = v31;
    *(&v58 - 2) = v26;
    sub_1A472EBEC(sub_1A4731258, (&v58 - 6), v28);

    v32 = v64;
    sub_1A5243114();
    v33 = v66;
    v34 = v67;
    (*(v66 + 16))(v65, v32, v67);
    swift_storeEnumTagMultiPayload();
    sub_1A4731210(&qword_1EB124DC8, MEMORY[0x1E69C23A0]);
    v20 = v77;
    sub_1A5249744();
    (*(v33 + 8))(v32, v34);
    sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
    (*(*(v35 - 8) + 56))(v20, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_0(v80);
    v3 = v60;
  }

  else
  {
    sub_1A47311B4(&v78, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
    v36 = (*(v23 + 184))(v2 + v21, v22, v23);
    v26 = v2;
    v31 = v23;
    if (v36)
    {
      swift_unknownObjectRetain();
      v37 = v64;
      sub_1A5243104();
      v38 = v66;
      v39 = v67;
      (*(v66 + 16))(v65, v37, v67);
      swift_storeEnumTagMultiPayload();
      sub_1A4731210(&qword_1EB124DC8, MEMORY[0x1E69C23A0]);
      sub_1A5249744();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v37, v39);
      sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
      (*(*(v40 - 8) + 56))(v20, 0, 1, v40);
    }

    else
    {
      sub_1A4731014(0, &qword_1EB122A68, MEMORY[0x1E697F960]);
      (*(*(v41 - 8) + 56))(v20, 1, 1, v41);
    }

    v30 = v22;
  }

  v43 = v70;
  v42 = v71;
  (*(v71 + 16))(v70, v26, v3);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v30;
  *(v45 + 24) = v31;
  (*(v42 + 32))(v45 + v44, v43, v3);
  v46 = v72;
  sub_1A5241FF4();
  v47 = MEMORY[0x1E697F960];
  v48 = v20;
  v49 = v68;
  sub_1A473155C(v48, v68, &qword_1EB122A60, &qword_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
  v51 = v73;
  v50 = v74;
  v52 = *(v74 + 16);
  v53 = v75;
  v52(v73, v46, v75);
  v54 = v76;
  sub_1A473155C(v49, v76, &qword_1EB122A60, &qword_1EB122A68, v47, sub_1A4731014);
  sub_1A473110C();
  v52((v54 + *(v55 + 48)), v51, v53);
  v56 = *(v50 + 8);
  v56(v46, v53);
  sub_1A47311B4(v77, &qword_1EB122A60, &qword_1EB122A68, v47, sub_1A4731014);
  v56(v51, v53);
  return sub_1A47311B4(v49, &qword_1EB122A60, &qword_1EB122A68, v47, sub_1A4731014);
}

uint64_t sub_1A472E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-v12 - 8];
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-v16 - 8];
  sub_1A3C341C8(a1, v23);
  sub_1A3C34400(0, &qword_1EB124F40);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    type metadata accessor for LemonadeDetailsNavigationContextMenu();
    v20 = (*(a4 + 184))(v17, a3, a4);
    result = (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v13, 1, 1, AssociatedTypeWitness);
    result = (*(v11 + 8))(v13, v10);
    v20 = 0;
  }

  *a5 = v20;
  return result;
}

void *sub_1A472EBEC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1A5907D70](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_1A472ED34()
{
  v0 = sub_1A5242C04();
  __swift_allocate_value_buffer(v0, qword_1EB1EBF58);
  __swift_project_value_buffer(v0, qword_1EB1EBF58);
  return sub_1A5247DE4();
}

id sub_1A472ED80(void *a1)
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableDetailsViewPrototype];

  result = 0;
  if (v3)
  {
    return PXSoftLinkedProtoDetailsViewController(a1);
  }

  return result;
}

void sub_1A472EE20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A472EEC4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v1[5];
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v6 = type metadata accessor for LemonadeItemDetailsNavigationButton();
  v8 = *(v6 - 8);
  result = v6 - 8;
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if ((v1[6] & 1) == 0)
  {
    v16 = v2;
    v17 = v3;
    v11 = (v10 + ((v9 + 49) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = v4;
    v19 = v5;
    v12 = type metadata accessor for LemonadeItemDetailsNavigationButton();
    sub_1A472B3DC(v12);
    sub_1A3C341C8(v1 + v11, &v16);
    v13 = sub_1A52441C4();

    sub_1A47311B4(&v16, &qword_1EB124F38, &qword_1EB124F40, MEMORY[0x1E69C1E98], sub_1A3C34400);
    sub_1A472B3DC(v12);
    v14 = sub_1A52441B4();

    if (sub_1A472B67C(v12))
    {
      v15 = v14 < sub_1A472B67C(v12);
    }

    else
    {
      v15 = 1;
    }

    result = sub_1A472B67C(v12);
    if (result == 1 || ((v15 | v13) & 1) != 0)
    {
      sub_1A472B3DC(v12);
      sub_1A5244224();
    }
  }

  return result;
}

void sub_1A472F12C()
{
  sub_1A4729334(319, &qword_1EB129D40, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A4729334(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A47315D0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A4729334(319, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A4729334(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A52439F4();
                if (v7 <= 0x3F)
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

uint64_t sub_1A472F328(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v38 = *(a3 + 16);
  v4 = *(v38 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_1A52434D4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  sub_1A3D63A8C(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_1A52439F4() - 8);
  v13 = *(v4 + 80);
  v14 = *(v12 + 80);
  if (v5 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v5;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + 7;
  v19 = *(v6 + 80) & 0xF8;
  v20 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + 23;
  v22 = *(v9 + 80) & 0xF8 | 7;
  v23 = v7 + v22 + 1;
  v24 = v17 + v14 + 1;
  if (a2 <= v16)
  {
    goto LABEL_39;
  }

  v25 = ((v24 + ((v23 + ((v21 + ((((((v18 + ((v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & ~v22)) & ~v14) + *(v12 + 64);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v29 = ((a2 - v16 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v29 < 2)
    {
LABEL_39:
      v33 = (a1 + v13 + 8) & ~v13;
      if (v5 == v16)
      {
        v34 = *(v4 + 48);

        return v34(v33, v5, v38);
      }

      else
      {
        v35 = ((v18 + v33) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v37 = *(v12 + 48);

          return v37((v24 + ((v23 + ((v21 + ((((v35 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & ~v22)) & ~v14);
        }

        else
        {
          v36 = *v35;
          if (v36 >= 0xFFFFFFFF)
          {
            LODWORD(v36) = -1;
          }

          return (v36 + 1);
        }
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_39;
  }

LABEL_26:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v31 = v25;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v32 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v32 = *a1;
      }
    }

    else if (v31 == 1)
    {
      v32 = *a1;
    }

    else
    {
      v32 = *a1;
    }
  }

  else
  {
    v32 = 0;
  }

  return v16 + (v32 | v30) + 1;
}

void sub_1A472F724(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v42 = *(a4 + 16);
  v6 = *(v42 - 8);
  v43 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_1A52434D4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  sub_1A3D63A8C(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 64);
  v14 = *(sub_1A52439F4() - 8);
  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  v18 = *(v14 + 80);
  if (v7 <= *(v14 + 84))
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v7;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v16 + 7;
  v22 = (((((v16 + 7 + ((v15 + 8) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v17 & 0xF8) + 23;
  v25 = *(v11 + 80) & 0xF8 | 7;
  v26 = v9 + v25 + 1;
  v27 = (v26 + ((v24 + v22) & v23)) & ~v25;
  if (v12)
  {
    v28 = v13;
  }

  else
  {
    v28 = v13 + 1;
  }

  if (v28 <= 8)
  {
    v28 = 8;
  }

  v29 = v28 + v18 + 1;
  v30 = ((v29 + v27) & ~v18) + *(v14 + 64);
  if (a3 <= v20)
  {
    v32 = 0;
    v31 = a1;
  }

  else
  {
    v31 = a1;
    if (v30 <= 3)
    {
      v35 = ((a3 - v20 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
      if (HIWORD(v35))
      {
        v32 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 1;
    }
  }

  if (v20 < a2)
  {
    v33 = ~v20 + a2;
    if (v30 < 4)
    {
      v34 = (v33 >> (8 * v30)) + 1;
      if (v30)
      {
        v37 = v33 & ~(-1 << (8 * v30));
        bzero(v31, v30);
        if (v30 != 3)
        {
          if (v30 == 2)
          {
            *v31 = v37;
            if (v32 > 1)
            {
LABEL_60:
              if (v32 == 2)
              {
                *&v31[v30] = v34;
              }

              else
              {
                *&v31[v30] = v34;
              }

              return;
            }
          }

          else
          {
            *v31 = v33;
            if (v32 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v31 = v37;
        v31[2] = BYTE2(v37);
      }

      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(v31, v30);
      *v31 = v33;
      v34 = 1;
      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v32)
    {
      v31[v30] = v34;
    }

    return;
  }

  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *&v31[v30] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&v31[v30] = 0;
  }

  else if (v32)
  {
    v31[v30] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  v38 = &v31[v15 + 8] & ~v15;
  if (v7 == v20)
  {
    v39 = *(v43 + 56);

    v39(v38, a2, v7, v42);
  }

  else
  {
    v40 = ((v21 + v38) & 0xFFFFFFFFFFFFFFF8);
    if ((v19 & 0x80000000) != 0)
    {
      v41 = *(v14 + 56);

      v41((v29 + ((v26 + ((v24 + ((((v40 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v23)) & ~v25)) & ~v18, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v40 = a2 & 0x7FFFFFFF;
      v40[1] = 0;
    }

    else
    {
      *v40 = (a2 - 1);
    }
  }
}

void sub_1A472FBA8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1A4729334(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A47315D0(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A473067C(319, &qword_1EB124850, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A47315D0(319, &qword_1EB1246C0, MEMORY[0x1E69E6530], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A4729334(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A47315D0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

uint64_t sub_1A472FE50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v40 = v10;
  if (v10 <= v8)
  {
    v10 = *(v7 + 84);
  }

  v39 = *(a3 + 24);
  v11 = *(v39 - 8);
  v38 = *(v11 + 84);
  if (v10 <= v38)
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  sub_1A3D63A8C(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = *(v9 + 80);
  v18 = *(v11 + 80);
  if (!*(v15 + 84))
  {
    ++v16;
  }

  v19 = 8;
  if (v16 > 8)
  {
    v19 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v17;
  v21 = *(v9 + 64) + 7;
  v22 = v18 + 8;
  v23 = a1;
  if (v13 >= a2)
  {
    goto LABEL_37;
  }

  v24 = *(v15 + 80) & 0xF8 | 7;
  v25 = ((v19 + ((v24 + ((*(v11 + 64) + ((v22 + ((v21 + (v20 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 87) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = v25 & 0xFFFFFFF8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2 - v13 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_37;
    }

    v30 = *(a1 + v25);
    if (!v30)
    {
      goto LABEL_37;
    }

LABEL_33:
    v32 = v30 - 1;
    if (v26)
    {
      v32 = 0;
      LODWORD(v26) = *a1;
    }

    return v13 + (v26 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_33;
    }
  }

LABEL_37:
  if (v8 == v13)
  {
    v33 = v41;
    v34 = *(v7 + 48);
    v35 = v8;
    goto LABEL_41;
  }

  v23 = ((a1 + v20) & ~v17);
  if (v40 == v13)
  {
    v35 = v40;
    v34 = *(v9 + 48);
    v33 = v5;
LABEL_41:

    return v34(v23, v35, v33);
  }

  v36 = ((v23 + v21) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v34 = *(v11 + 48);
    v23 = ((v36 + v22) & ~v18);
    v35 = v38;
    v33 = v39;

    return v34(v23, v35, v33);
  }

  v37 = *v36;
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  return (v37 + 1);
}

void sub_1A4730248(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v32 = v6;
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(a4 + 24) - 8);
  if (v10 <= *(v11 + 84))
  {
    v12 = *(v11 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  sub_1A3D63A8C(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = *(v8 + 80);
  v18 = *(v6 + 64) + v17;
  v19 = *(v8 + 64) + 7;
  v20 = *(v11 + 80);
  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = (v21 + ((*(v11 + 64) + ((v20 + 8 + ((v19 + (v18 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 87) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21;
  if (!*(v15 + 84))
  {
    ++v16;
  }

  if (v16 <= 8)
  {
    v16 = 8;
  }

  v23 = ((v16 + v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v26 = 0;
  }

  else
  {
    if (((v16 + v22 + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a3 - v13 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v23)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v13;
    }

    if (v23)
    {
      bzero(a1, v23);
      *a1 = ~v13 + a2;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v23) = v27;
      }

      else
      {
        *(a1 + v23) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v23) = v27;
    }

    return;
  }

  if (v26 <= 1)
  {
    if (v26)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v26 == 2)
  {
    *(a1 + v23) = 0;
    goto LABEL_44;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v7 == v13)
  {
    v28 = *(v32 + 56);
    v29 = a1;
    goto LABEL_49;
  }

  v29 = (a1 + v18) & ~v17;
  if (v9 == v13)
  {
    v28 = *(v33 + 56);
LABEL_49:

LABEL_51:
    v28(v29);
    return;
  }

  v30 = ((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v28 = *(v11 + 56);
    v29 = (v30 + v20 + 8) & ~v20;

    goto LABEL_51;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v31 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v31 = a2 - 1;
  }

  *v30 = v31;
}

void sub_1A473067C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A472EE20(255, &qword_1EB129078, &qword_1EB129080, MEMORY[0x1E69C2558], sub_1A3C34400);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4730708()
{
  sub_1A4729334(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}