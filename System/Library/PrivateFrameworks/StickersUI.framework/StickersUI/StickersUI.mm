uint64_t sub_26BA35068()
{
  MEMORY[0x26D68C070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA350A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BA350E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35118()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BA35188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BA9B6BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BA351B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA351EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35230()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35268()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA352F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35348()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BA3541C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35478()
{
  MEMORY[0x26D68C070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA354B0()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BA3554C()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_26BA3562C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26BA35674()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BA356CC()
{
  v1 = sub_26BA9ABAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26BA357B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BA3582C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D88);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26BA358BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA358FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35934()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35974()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_26BA35A7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BA35AB4(uint64_t a1, int a2)
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

uint64_t sub_26BA35AD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26BA35B38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35B78()
{
  MEMORY[0x26D68C070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35BB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35BF0()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BA35CB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35CEC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35D2C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26BA35D64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BA35DA4()
{
  v1 = sub_26BA9ACCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_26BA3DF34(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26BA35EA4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26BA35EE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35F1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35F64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA35F9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BA35FDC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26BA36014()
{
  MEMORY[0x26D68C070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26BA36050(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double STKCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double STKNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

void STKAddEffectToSticker(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setStickerEffectType:a2];
  }
}

uint64_t sub_26BA37678()
{
  sub_26BA9BEEC();
  MEMORY[0x26D68B4C0](0);
  return sub_26BA9BF1C();
}

uint64_t sub_26BA376BC()
{
  sub_26BA9BEEC();
  MEMORY[0x26D68B4C0](0);
  return sub_26BA9BF1C();
}

uint64_t sub_26BA3770C()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_280436558);
  __swift_project_value_buffer(v0, qword_280436558);
  return sub_26BA9AF4C();
}

id sub_26BA3778C()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_sticker;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26BA377E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_sticker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_26BA37898()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preferredRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26BA378EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preferredRepresentation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26BA379AC()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_stillRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA379F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_stillRepresentation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26BA37AB0()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_animatedRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26BA37AFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_animatedRepresentation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26BA37BFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_transitionAnimator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26BA37CBC()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_canToggleLive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA37D00(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_canToggleLive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA37DBC()
{
  v1 = v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preLiveSickerEffect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26BA37E08(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preLiveSickerEffect;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_26BA37EC8()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_noEffectShouldBeLive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26BA37F0C(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_noEffectShouldBeLive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26BA37FC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2804385E0;
  return result;
}

uint64_t sub_26BA38014(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2804385E0 = v1;
  return result;
}

uint64_t sub_26BA3812C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_analyticsEditingEvent;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_26BA381F4()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_26BA38238(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_26BA3A3F8();
  [v4 setPaused_];
}

void (*sub_26BA382A4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isPaused;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26BA3832C;
}

void sub_26BA3832C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_26BA3A3F8();
    [v6 setPaused_];
  }

  free(v3);
}

void sub_26BA38398(uint64_t a1)
{
  v3 = objc_opt_self();
  if ((a1 - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = [v3 effectWithType_];
  [v1 setEffect_];
}

uint64_t sub_26BA38418()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_26BA3845C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive;
  swift_beginAccess();
  *(v2 + v4) = a1;
  if (a1)
  {
    v5 = sub_26BA3A5E4();
    v6 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v5) + 0x150))();

    v7 = sub_26BA9B5DC();
    if (v7 != sub_26BA9B5DC())
    {
      v8 = *(v2 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser);
      v9 = *((*v6 & *v8) + 0x158);
      v10 = v8;
      v9(0);

      v11 = sub_26BA3A3F8();
      v12 = [objc_opt_self() effectWithType_];
      [v11 setEffect_];

      v13 = (*((*v6 & *v2) + 0xF0))();
      sub_26BA9B5FC();
    }
  }

  sub_26BA389B4();
}

void (*sub_26BA38610(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26BA38698;
}

void sub_26BA38698(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + v3[4]) == 1)
    {
      v4 = sub_26BA3A5E4();
      v5 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v4) + 0x150))();

      v6 = sub_26BA9B5DC();
      v7 = sub_26BA9B5DC();
      v8 = v3[3];
      if (v6 != v7)
      {
        v9 = *(v8 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser);
        v10 = *((*v5 & *v9) + 0x158);
        v11 = v9;
        v12 = v8;
        v10(0);

        v13 = sub_26BA3A3F8();
        v14 = [objc_opt_self() effectWithType_];
        [v13 setEffect_];

        v15 = (*((*v5 & *v12) + 0xF0))();
        sub_26BA9B5FC();
      }
    }

    sub_26BA389B4();
  }

  free(v3);
}

void sub_26BA38860()
{
  v1 = MEMORY[0x277D85000];
  v2 = 1.0;
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1E0))() & 1) == 0)
  {
    v3 = *((*v1 & *v0) + 0xF0);
    v4 = v3();
    sub_26BA9B5EC();

    v5 = sub_26BA9B5DC();
    if (v5 != sub_26BA9B5DC())
    {
      v6 = v3();
      sub_26BA9B5EC();

      v7 = sub_26BA9B5DC();
      if (v7 == sub_26BA9B5DC())
      {
        v2 = 1.0;
      }

      else
      {
        v2 = 0.5;
      }
    }
  }

  v8 = sub_26BA3ABB0();
  [v8 setAlpha_];
}

void sub_26BA389B4()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1E0))() & 1) == 0)
  {
    v11 = (*((*v2 & *v0) + 0x120))();
    if (v11)
    {
      v12 = *((*v2 & *v0) + 0x110);
      v13 = v11;
      v12();
      v14 = sub_26BA3A3F8();
      v15 = (*((*v2 & *v0) + 0x108))();
      v16 = sub_26BA9B50C();
      v18 = v17;

      v19 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v20 = sub_26BA9ACDC();
      v21 = [v19 initWithData_];

      sub_26BA3DF34(v16, v18);
      [v14 setImage_];

      goto LABEL_6;
    }

LABEL_9:
    sub_26BA9BD9C();
    __break(1u);
    return;
  }

  v3 = (*((*v2 & *v0) + 0x138))();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *((*v2 & *v0) + 0x110);
  v21 = v3;
  v4();
  v5 = sub_26BA3A3F8();
  v6 = (*((*v2 & *v0) + 0x108))();
  v7 = sub_26BA9B50C();
  v9 = v8;

  v10 = sub_26BA9ACDC();
  sub_26BA3DF34(v7, v9);
  [v5 setVideoData_];

  (*((*v2 & *v1) + 0x1D0))(0);
LABEL_6:
}

NSObject *sub_26BA38D98(void *a1)
{
  v139 = sub_26BA9AD5C();
  v141 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  MEMORY[0x28223BE20](v137);
  v138 = &v135 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v156 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v140 = &v135 - v9;
  MEMORY[0x28223BE20](v8);
  v143 = &v135 - v10;
  v166 = sub_26BA9AF2C();
  v160 = *(v166 - 8);
  v11 = MEMORY[0x28223BE20](v166);
  v165 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v164 = &v135 - v13;
  v159 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_stillRepresentation;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_stillRepresentation] = 0;
  v158 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_animatedRepresentation;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_animatedRepresentation] = 0;
  v154 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_transitionAnimator;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_transitionAnimator] = 0;
  v155 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_canToggleLive;
  v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_canToggleLive] = 0;
  v14 = &v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preLiveSickerEffect];
  *v14 = 0;
  v14[8] = 1;
  v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_noEffectShouldBeLive] = 0;
  v15 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_analyticsEditingEvent;
  type metadata accessor for StickersAnalyticsEditingEvent();
  v16 = sub_26BA96D48();
  v153 = v15;
  *&v1[v15] = v16;
  v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isPaused] = 1;
  v142 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive;
  v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive] = 0;
  v17 = &v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_delegate];
  *(v17 + 8) = 0;
  v149 = v17;
  swift_unknownObjectWeakInit();
  v146 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView] = 0;
  v147 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser] = 0;
  v148 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton] = 0;
  v150 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton] = 0;
  v151 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewWidthConstraint;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewWidthConstraint] = 0;
  v18 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewHeightConstraint;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewHeightConstraint] = 0;
  v157 = v1;
  v145 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_sticker;
  *&v1[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_sticker] = a1;
  v163 = a1;
  v19 = sub_26BA9B56C();
  v20 = v19;
  v152 = v18;
  if (v19 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26BA9BDBC())
  {
    v22 = 0;
    v168 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v168)
      {
        v23 = MEMORY[0x26D68B2E0](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v15 = sub_26BA9B53C();
      v27 = v26;
      if (v15 == sub_26BA9B4DC() && v27 == v28)
      {

        goto LABEL_20;
      }

      v15 = sub_26BA9BE4C();

      if (v15)
      {

        goto LABEL_20;
      }

      ++v22;
      if (v25 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v24 = 0;
LABEL_20:
  v29 = v157;
  v30 = v158;
  swift_beginAccess();
  v31 = *&v29[v30];
  *&v29[v30] = v24;

  v32 = sub_26BA9B56C();
  v33 = v32;
  if (v32 >> 62)
  {
    goto LABEL_37;
  }

  for (j = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_26BA9BDBC())
  {
    v35 = 0;
    v168 = v33 & 0xC000000000000001;
    while (1)
    {
      if (v168)
      {
        v36 = MEMORY[0x26D68B2E0](v35, v33);
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v36 = *(v33 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v15 = sub_26BA9B53C();
      v40 = v39;
      if (v15 == sub_26BA9B4CC() && v40 == v41)
      {

        goto LABEL_39;
      }

      v15 = sub_26BA9BE4C();

      if (v15)
      {

        goto LABEL_39;
      }

      ++v35;
      if (v38 == j)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  v37 = 0;
LABEL_39:
  v42 = v157;
  v43 = v159;
  swift_beginAccess();
  v44 = *&v42[v43];
  *&v42[v43] = v37;
  v45 = v37;

  v46 = v156;
  if (v37)
  {
    v47 = v159;
    goto LABEL_58;
  }

  v48 = sub_26BA9B56C();
  v49 = v48;
  if (v48 >> 62)
  {
    goto LABEL_55;
  }

  v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v50)
  {
LABEL_43:
    v51 = 0;
    v162 = v49 & 0xC000000000000001;
    v161 = v49 & 0xFFFFFFFFFFFFFF8;
    ++v160;
    do
    {
      if (v162)
      {
        v52 = MEMORY[0x26D68B2E0](v51, v49);
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:

          goto LABEL_57;
        }
      }

      else
      {
        if (v51 >= *(v161 + 16))
        {
          __break(1u);
LABEL_55:
          v50 = sub_26BA9BDBC();
          if (!v50)
          {
            break;
          }

          goto LABEL_43;
        }

        v52 = *(v49 + 8 * v51 + 32);
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_52;
        }
      }

      v54 = v164;
      v15 = v52;
      sub_26BA9B4BC();
      v55 = v165;
      sub_26BA9AF1C();
      LODWORD(v168) = sub_26BA9AEFC();
      v56 = *v160;
      v57 = v55;
      v58 = v166;
      (*v160)(v57, v166);
      v56(v54, v58);
      if (v168)
      {
        goto LABEL_53;
      }

      ++v51;
    }

    while (v53 != v50);
  }

  v15 = 0;
LABEL_57:
  v42 = v157;
  v59 = v159;
  v45 = *&v157[v159];
  *&v157[v159] = v15;
  v47 = v59;
  v46 = v156;
LABEL_58:
  v60 = v155;

  v61 = *&v42[v47];
  if (v61)
  {
    v62 = *&v42[v158] != 0;
    swift_beginAccess();
    v42[v60] = v62;
    v63 = v61;
    v64 = v144;
    v65 = sub_26BA9B58C();
    v66 = v64;
    if (v64)
    {
LABEL_60:
      if (qword_280436550 != -1)
      {
        swift_once();
      }

      v67 = sub_26BA9AF5C();
      __swift_project_value_buffer(v67, qword_280436558);
      v61 = sub_26BA9AF3C();
      v68 = sub_26BA9B94C();
      if (os_log_type_enabled(v61, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_26BA33000, v61, v68, "Error sticker.preferredRepresentation", v69, 2u);
        MEMORY[0x26D68BFB0](v69, -1, -1);
      }

      sub_26BA3A724();
      swift_allocError();
      swift_willThrow();

      goto LABEL_66;
    }

    if (v65)
    {
LABEL_74:
      v73 = v143;
      *&v42[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preferredRepresentation] = v65;
      v74 = v42[v60];
      v168 = v63;
      if (v74 != 1)
      {
        goto LABEL_86;
      }

      v75 = v65;
      sub_26BA9B4AC();

      v76 = *(v141 + 56);
      v77 = v73;
      v78 = 1;
      v79 = v139;
      v76(v77, 0, 1, v139);
      v80 = *&v42[v158];
      if (v80)
      {
        v81 = v80;
        v82 = v140;
        sub_26BA9B4AC();

        v79 = v139;
        v78 = 0;
      }

      else
      {
        v82 = v140;
      }

      v76(v82, v78, 1, v79);
      v83 = *(v137 + 48);
      v84 = v143;
      v85 = v138;
      sub_26BA3DF88(v143, v138);
      sub_26BA3DF88(v82, v85 + v83);
      v86 = *(v141 + 48);
      if (v86(v85, 1, v79) == 1)
      {
        sub_26BA3E6F8(v140, &qword_280435B08);
        sub_26BA3E6F8(v84, &qword_280435B08);
        if (v86(v85 + v83, 1, v79) == 1)
        {
          sub_26BA3E6F8(v85, &qword_280435B08);
          v87 = v142;
          swift_beginAccess();
          v42[v87] = 1;
LABEL_85:
          sub_26BA9B5FC();
LABEL_86:
          v94 = v142;
          swift_beginAccess();
          v42[OBJC_IVAR____TtC10StickersUI25StickerEditViewController_analyticsWasAnimated] = v42[v94];
          v95 = type metadata accessor for StickerEditViewController();
          v167.receiver = v42;
          v167.super_class = v95;
          v96 = objc_msgSendSuper2(&v167, sel_initWithNibName_bundle_, 0, 0);
          v97 = sub_26BA9B5EC();
          v98 = sub_26BA3A3F8();
          sub_26BA38398(v97);

          v99 = sub_26BA3A5E4();
          v100 = MEMORY[0x277D85000];
          (*((*MEMORY[0x277D85000] & *v99) + 0x158))(v97);

          v101 = *(v96 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser);
          v102 = sub_26BA9B50C();
          v104 = v103;
          v105 = objc_allocWithZone(MEMORY[0x277D755B8]);
          v106 = sub_26BA9ACDC();
          v107 = [v105 initWithData_];

          sub_26BA3DF34(v102, v104);
          (*((*v100 & *v101) + 0x188))(v107);

          sub_26BA38860();
          sub_26BA389B4();
          v108 = (*((*v100 & *v96) + 0x2C0))();
          v111 = v110;
          if (v108)
          {
            if (qword_280436550 != -1)
            {
              swift_once();
            }

            v112 = sub_26BA9AF5C();
            __swift_project_value_buffer(v112, qword_280436558);
            v113 = sub_26BA9AF3C();
            v114 = sub_26BA9B96C();
            if (!os_log_type_enabled(v113, v114))
            {
              goto LABEL_96;
            }

            v115 = swift_slowAlloc();
            *v115 = 134217984;
            *(v115 + 4) = v111;
            v116 = "Sticker Edit Pane - Embedded sticker effect matched embedded type: %lu";
            v117 = v114;
            v118 = v113;
            v119 = v115;
            v120 = 12;
          }

          else
          {
            v121 = v109;
            if (qword_280436550 != -1)
            {
              swift_once();
            }

            v122 = sub_26BA9AF5C();
            __swift_project_value_buffer(v122, qword_280436558);
            v113 = sub_26BA9AF3C();
            v123 = sub_26BA9B96C();
            if (!os_log_type_enabled(v113, v123))
            {
              goto LABEL_96;
            }

            v115 = swift_slowAlloc();
            *v115 = 134218240;
            *(v115 + 4) = v111;
            *(v115 + 12) = 2048;
            *(v115 + 14) = v121;
            v116 = "Sticker Edit Pane - Embedded sticker effect: %lu does not match embeddedType: %lu";
            v117 = v123;
            v118 = v113;
            v119 = v115;
            v120 = 22;
          }

          _os_log_impl(&dword_26BA33000, v118, v117, v116, v119, v120);
          MEMORY[0x26D68BFB0](v115, -1, -1);
LABEL_96:
          v124 = v168;

          v125 = objc_opt_self();
          v61 = v96;
          v126 = [v125 mainBundle];
          sub_26BA9ABEC();

          v127 = sub_26BA9B68C();

          [v61 setTitle:v127];

          return v61;
        }
      }

      else
      {
        sub_26BA3DF88(v85, v46);
        if (v86(v85 + v83, 1, v79) != 1)
        {
          v89 = v141;
          v90 = v136;
          (*(v141 + 32))(v136, v85 + v83, v79);
          sub_26BA3EE70(&qword_280435E40, MEMORY[0x277CC95F0]);
          v91 = sub_26BA9B67C();
          v92 = *(v89 + 8);
          v92(v90, v79);
          sub_26BA3E6F8(v140, &qword_280435B08);
          sub_26BA3E6F8(v143, &qword_280435B08);
          v92(v46, v79);
          sub_26BA3E6F8(v138, &qword_280435B08);
          v93 = v142;
          swift_beginAccess();
          v42[v93] = v91 & 1;
          if ((v91 & 1) == 0)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        sub_26BA3E6F8(v140, &qword_280435B08);
        sub_26BA3E6F8(v143, &qword_280435B08);
        (*(v141 + 8))(v46, v79);
      }

      sub_26BA3E6F8(v85, &qword_280435E30);
      v88 = v142;
      swift_beginAccess();
      v42[v88] = 0;
      goto LABEL_86;
    }

    v70 = sub_26BA9B56C();
    if (v70 >> 62)
    {
      v129 = v70;
      v130 = sub_26BA9BDBC();
      v70 = v129;
      if (v130)
      {
        goto LABEL_70;
      }
    }

    else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      if ((v70 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x26D68B2E0](0);
        goto LABEL_73;
      }

      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v71 = *(v70 + 32);
LABEL_73:
        v72 = v71;

        v65 = v72;
        goto LABEL_74;
      }

      __break(1u);
      goto LABEL_105;
    }

    if (qword_280436550 == -1)
    {
LABEL_100:
      v131 = sub_26BA9AF5C();
      __swift_project_value_buffer(v131, qword_280436558);
      v132 = sub_26BA9AF3C();
      v133 = sub_26BA9B94C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_26BA33000, v132, v133, "Sticker has no representations", v134, 2u);
        MEMORY[0x26D68BFB0](v134, -1, -1);
      }

      sub_26BA3A724();
      v66 = swift_allocError();
      swift_willThrow();
      goto LABEL_60;
    }

LABEL_105:
    swift_once();
    goto LABEL_100;
  }

  sub_26BA3A724();
  swift_allocError();
  swift_willThrow();
  v63 = v163;
LABEL_66:

  sub_26BA3A778(v149);

  type metadata accessor for StickerEditViewController();
  swift_deallocPartialClassInstance();
  return v61;
}

id sub_26BA3A1A4(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_26BA3A264(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26BA3A2D0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26BA3A370;
}

void sub_26BA3A370(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_26BA3A3F8()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView;
  v2 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D78538]) init];
    [objc_opt_self() setBoundsIncludeStroke:0 effectView:v4];
    v5 = [objc_opt_self() effectWithType_];
    [v4 setEffect_];

    v6 = v0;
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
    v8 = sub_26BA9B5EC();

    sub_26BA38398(v8);
    v9 = v4;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setContentMode_];

    v10 = v9;
    [v10 setIsAccessibilityElement_];
    [v10 setAccessibilityTraits_];
    String.stkLocalized.getter();
    v11 = sub_26BA9B68C();

    [v10 setAccessibilityLabel_];

    v12 = *(v6 + v1);
    *(v6 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void *sub_26BA3A5E4()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser;
  v2 = *&v0[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser];
  }

  else
  {
    type metadata accessor for StickerEffectChooser();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v11[3] = type metadata accessor for StickerEditViewController();
    v11[4] = &off_287C6E9B0;
    v11[0] = v0;
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0xB0);
    v6 = v0;
    v7 = v0;
    v5(v11);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *&v0[v1];
    *&v7[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
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

unint64_t sub_26BA3A724()
{
  result = qword_280435B40;
  if (!qword_280435B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435B40);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_26BA3A7FC()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton;
  v2 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton);
  }

  else
  {
    v4 = sub_26BA3A860(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_26BA3A860(uint64_t a1)
{
  v22 = a1;
  v21 = sub_26BA9BB2C();
  v1 = *(v21 - 8);
  (MEMORY[0x28223BE20])();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26BA9BB9C();
  v5 = *(v4 - 8);
  (MEMORY[0x28223BE20])();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26BA9BBFC();
  v8 = *(v20 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (sub_26BA8C92C())
  {
    sub_26BA9BBCC();
  }

  else
  {
    sub_26BA9BBAC();
    v14 = [objc_opt_self() tertiarySystemFillColor];
    sub_26BA9BB6C();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D75028], v4);
  sub_26BA9BB1C();
  v15 = [objc_opt_self() labelColor];
  sub_26BA9BB7C();
  String.stkLocalized.getter();
  sub_26BA9BBDC();
  (*(v1 + 104))(v3, *MEMORY[0x277D74FD8], v21);
  sub_26BA9BB3C();
  sub_26BA3EF64(0, &qword_280435B68);
  v16 = v20;
  (*(v8 + 16))(v11, v13, v20);
  v17 = sub_26BA9BC0C();
  [v17 addTarget:v22 action:sel_handleDoneButton forControlEvents:64];
  [v17 setAutomaticallyUpdatesConfiguration_];
  [v17 setRole_];
  (*(v8 + 8))(v13, v16);
  return v17;
}

void *sub_26BA3ABB0()
{
  v1 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton;
  v2 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton);
  }

  else
  {
    v4 = v0;
    type metadata accessor for LiveButton();
    v5 = LiveButton.__allocating_init()();
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E0))();
    (*((*v6 & *v5) + 0x60))(v7 & 1);
    [v5 addTarget:v0 action:sel_handleLiveButton forControlEvents:64];
    v8 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_26BA3ACF4(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_26BA3A3F8();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_26BA3ADA0()
{
  v93.receiver = v0;
  v93.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v93, sel_loadView);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v2 = v1;
  v3 = sub_26BA3A3F8();
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = sub_26BA3A5E4();
  [v5 addSubview_];

  v7 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  [v8 addLayoutGuide_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26BA9D4C0;
  v11 = [v7 leftAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 leftAnchor];
  v16 = [v11 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];

  *(v10 + 32) = v16;
  v17 = [v0 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [v17 safeAreaLayoutGuide];

  v20 = [v19 rightAnchor];
  v21 = [v7 rightAnchor];
  v22 = [v20 constraintEqualToSystemSpacingAfterAnchor:v21 multiplier:1.0];

  *(v10 + 40) = v22;
  v23 = [v7 topAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = [v23 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];

  *(v10 + 48) = v28;
  v29 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser;
  v30 = [*(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser) topAnchor];
  v31 = [v7 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v10 + 56) = v32;
  v33 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView;
  v34 = [*(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView) centerXAnchor];
  v35 = [v7 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v10 + 64) = v36;
  v37 = [*(v0 + v33) centerYAnchor];
  v38 = [v7 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v10 + 72) = v39;
  *(v10 + 80) = sub_26BA3ACCC();
  *(v10 + 88) = sub_26BA3ACE0();
  v40 = [*(v0 + v29) centerXAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 centerXAnchor];
  v45 = [v40 constraintEqualToAnchor_];

  *(v10 + 96) = v45;
  v46 = [v0 view];
  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = v46;
  v48 = objc_opt_self();
  v49 = [v47 safeAreaLayoutGuide];

  v50 = [v49 bottomAnchor];
  v51 = [*(v0 + v29) bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:8.0];

  *(v10 + 104) = v52;
  sub_26BA3EF64(0, &qword_280435B48);
  v53 = sub_26BA9B7EC();

  [v48 activateConstraints_];

  v54 = [v0 navigationController];
  if (v54)
  {

    v55 = [v0 navigationItem];
    [v55 setHidesBackButton_];

    if ((*((*MEMORY[0x277D85000] & *v0) + 0x168))())
    {
      v56 = [v0 navigationItem];
      v57 = sub_26BA3ABB0();
      v58 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

      [v56 setLeftBarButtonItem_];
    }

    v59 = [v0 navigationItem];
    v60 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDoneButton];
    [v59 setRightBarButtonItem_];

    goto LABEL_22;
  }

  v92 = v48;
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x168))() & 1) == 0)
  {
LABEL_18:
    v77 = sub_26BA3A7FC();
    [v77 setTranslatesAutoresizingMaskIntoConstraints_];

    v78 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
    if (v78)
    {
      v79 = v78;
      v80 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton;
      [v78 addSubview_];

      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_26BA9D4D0;
      v82 = [*(v0 + v80) topAnchor];
      v83 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 topAnchor];

        v86 = [v82 constraintEqualToAnchor:v85 constant:20.0];
        *(v81 + 32) = v86;
        v87 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
        if (v87)
        {
          v88 = v87;
          v89 = [v87 rightAnchor];

          v90 = [*(v0 + v80) rightAnchor];
          v91 = [v89 constraintEqualToAnchor:v90 constant:20.0];

          *(v81 + 40) = v91;
          v60 = sub_26BA9B7EC();

          [v92 activateConstraints_];
LABEL_22:

          return;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v61 = sub_26BA3ABB0();
  [v61 setTranslatesAutoresizingMaskIntoConstraints_];

  v62 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
  if (!v62)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v63 = v62;
  v64 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton;
  [v62 addSubview_];

  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_26BA9D4D0;
  v66 = [*(v0 + v64) topAnchor];
  v67 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
  if (!v67)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v68 = v67;
  v69 = [v67 topAnchor];

  v70 = [v66 &selRef_center + 6];
  *(v65 + 32) = v70;
  v71 = [*(v0 + v64) leftAnchor];
  v72 = [v0 &selRef_registerClass_forCellWithReuseIdentifier_];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 leftAnchor];

    v75 = [v71 &selRef_center + 6];
    *(v65 + 40) = v75;
    v76 = sub_26BA9B7EC();

    [v48 activateConstraints_];

    goto LABEL_18;
  }

LABEL_36:
  __break(1u);
}

void sub_26BA3B910(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x1D0))(0);
  v4 = objc_opt_self();
  v5 = sub_26BA3A3F8();
  [v4 playSettlingAnimation_];

  v6 = sub_26BA3A5E4();
  (*((*v3 & *v6) + 0x118))(1);
}

uint64_t sub_26BA3BB5C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerEditViewController();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1D0))(1);
  return (*((*v3 & *v1) + 0x2B8))(v4);
}

uint64_t sub_26BA3BD18()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1E0))())
  {
    v3 = 5;
  }

  else
  {
    v4 = (*((*v2 & *v0) + 0xF0))();
    v5 = sub_26BA9B5EC();

    if (v5 <= 4)
    {
      v3 = 0x403010200uLL >> (8 * v5);
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = *((*v2 & *v1) + 0x1B0);
  v7 = v6();
  swift_beginAccess();
  v15 = byte_2804385E0;
  (*(*v7 + 256))(&v15);

  v9 = (v6)(v8);
  (*(*v9 + 160))(*(v1 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_analyticsWasAnimated));

  v11 = (v6)(v10);
  v15 = v3;
  (*(*v11 + 184))(&v15);

  v13 = *(v6)(v12);
  (*(v13 + 272))();
}

void sub_26BA3BF80()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for StickerEditViewController();
  v2 = objc_msgSendSuper2(&v21, sel_viewDidLayoutSubviews);
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x210))(v2))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(v0, ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = sub_26BA3ACE0();
    if (v7)
    {
      v9 = 240.0;
    }

    else
    {
      v9 = 120.0;
    }
  }

  else
  {
    v8 = sub_26BA3ACE0();
    v7 = 0;
    v9 = 120.0;
  }

  [v8 setConstant_];

  v10 = sub_26BA3ACCC();
  [v10 setConstant_];

  v11 = sub_26BA3A5E4();
  (*((*v3 & *v11) + 0x140))(v7 & 1);

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    [v12 needsUpdateConstraints];

    v14 = sub_26BA3A3F8();
    [v14 frame];
    v16 = v15;

    if (v7)
    {
      v17 = 240.0;
    }

    else
    {
      v17 = 120.0;
    }

    if (v16 == v17)
    {
      v18 = (*((*v3 & *v1) + 0x150))();
      if (v18)
      {
        v19 = v18;
        v20 = sub_26BA3A3F8();
        (*(*v19 + 480))();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BA3C264()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v4 = v3();
  v5 = sub_26BA9B5EC();

  v6 = *((*v2 & *v1) + 0x2C8);
  v6(v5);
  result = (*((*v2 & *v1) + 0x120))();
  if (result)
  {
    v8 = result;
    v9 = v3();
    v10 = sub_26BA9B5EC();

    v11 = (v6)(v10);
    v12 = sub_26BA9B50C();
    v14 = v13;
    v15 = objc_opt_self();
    v16 = sub_26BA9ACDC();
    v17 = [v15 stickerEffectTypeFromImageData_];
    sub_26BA3DF34(v12, v14);

    return v11 == v17;
  }

  return result;
}

uint64_t sub_26BA3C420(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

void sub_26BA3C430()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v4 = v3();
  v5 = sub_26BA9B58C();

  v6 = *((*v2 & *v1) + 0x108);
  v7 = v6();
  v8 = v7;
  if (!v5)
  {

    goto LABEL_5;
  }

  sub_26BA9B55C();
  v9 = sub_26BA9BAEC();

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = v3();
    v11 = v6();
    sub_26BA9B59C();
  }
}

uint64_t sub_26BA3C6FC()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x2E0);

  v2(sub_26BA3E758, v1);
}

void sub_26BA3C7B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0xF0))();
    v10 = sub_26BA9B58C();

    v11 = 1.0;
    if (v10)
    {
      sub_26BA9B54C();
      v13 = v12;
      v15 = v14;

      if (v15 > 0.0)
      {
        v11 = v13 / v15;
      }
    }

    v4 = (*((*v2 & *v1) + 0x150))();
    if (v4)
    {
      v5 = v4;
      v6 = sub_26BA3A3F8();
      (*(*v5 + 568))(v11);
    }

    if ((*((*v2 & *v1) + 0x210))())
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_26BA3CAA8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))();
  (*(*v7 + 208))(1);

  if (qword_280436550 != -1)
  {
    swift_once();
  }

  v8 = sub_26BA9AF5C();
  __swift_project_value_buffer(v8, qword_280436558);
  v9 = sub_26BA9AF3C();
  v10 = sub_26BA9B96C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26BA33000, v9, v10, "Embedding sticker effect into image", v11, 2u);
    MEMORY[0x26D68BFB0](v11, -1, -1);
  }

  v12 = 0x64656C696166;

  v13 = (*((*v6 & *v3) + 0x2D0))();
  v14 = *((*v6 & *v3) + 0x120);
  v15 = (v14)(v13);
  if (v15)
  {
    v16 = v15;
    v57 = a1;
    v58 = a2;
    v17 = (*((*v6 & *v3) + 0xF0))();
    v18 = sub_26BA9B5EC();

    v19 = (*((*v6 & *v3) + 0x2C8))(v18);
    v20 = objc_opt_self();
    v21 = sub_26BA9B50C();
    v23 = v22;
    v24 = sub_26BA9ACDC();
    sub_26BA3DF34(v21, v23);
    v25 = [v20 encodeImageData:v24 withStickerEffectType:v19];

    if (v25)
    {
      v26 = sub_26BA9ACEC();
      v28 = v27;

      sub_26BA3E7D0(v26, v28);
      v29 = sub_26BA9AF3C();
      v30 = sub_26BA9B96C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26BA33000, v29, v30, "Updating sticker data with embedded effect", v31, 2u);
        MEMORY[0x26D68BFB0](v31, -1, -1);
      }

      sub_26BA9B51C();
      sub_26BA3DF34(v26, v28);
      v32 = 0xE800000000000000;
      v12 = 0x6574656C706D6F63;
    }

    else
    {
      v32 = 0xE600000000000000;
    }

    a1 = v57;

    a2 = v58;
  }

  else
  {
    v32 = 0xE600000000000000;
  }

  v33 = sub_26BA9AF3C();
  v34 = sub_26BA9B96C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = sub_26BA3DFF8(v12, v32, aBlock);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_26BA33000, v33, v34, "Embedding sticker effect into metadata %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D68BFB0](v36, -1, -1);
    MEMORY[0x26D68BFB0](v35, -1, -1);
  }

  else
  {
  }

  v39 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v3) + 0x1E0))(v38))
  {
    v40 = v14();
    if (v40)
    {
      v41 = v40;
      v42 = sub_26BA9B50C();
      v44 = v43;
      v45 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v46 = sub_26BA9ACDC();
      v47 = [v45 initWithData_];

      v48 = sub_26BA3DF34(v42, v44);
      if (v47)
      {
        v49 = (*((*v39 & *v3) + 0xF0))(v48);
        Sticker.updateKeyboardPreview(_:)(v47);

        v41 = v49;
      }
    }

    a1();
  }

  else
  {
    v50 = sub_26BA3A3F8();
    v51 = [v50 image];

    if (v51)
    {
      v52 = objc_opt_self();
      v53 = [*(v3 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView) effect];
      v54 = swift_allocObject();
      v54[2] = v3;
      v54[3] = a1;
      v54[4] = a2;
      aBlock[4] = sub_26BA3E760;
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BA3D4BC;
      aBlock[3] = &block_descriptor;
      v55 = _Block_copy(aBlock);
      v56 = v3;

      [v52 stickerEffect:v53 applyWithWideStrokeToImage:v51 completion:v55];
      _Block_release(v55);
    }
  }
}

uint64_t sub_26BA3D194(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26BA9B28C();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26BA9B2BC();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA3EF64(0, &qword_280435B58);
  v14 = sub_26BA9BA0C();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_26BA3EDD8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3D478;
  aBlock[3] = &block_descriptor_37;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;

  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA3EE70(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA3EEB8();
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_26BA3D478(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26BA3D4BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26BA3D548(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_26BA3D478;
    v11[3] = &block_descriptor_10;
    v5 = _Block_copy(v11);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for StickerEditViewController();
  v12.receiver = v3;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, sel_dismissViewControllerAnimated_completion_, a1 & 1, v5);
  _Block_release(v5);
  result = (*((*MEMORY[0x277D85000] & *v3) + 0x210))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v3, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26BA3D760()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1E0);
  if ((v3() & 1) == 0)
  {
    v4 = sub_26BA3A5E4();
    v5 = (*((*v2 & *v4) + 0x150))();

    (*((*v2 & *v1) + 0x188))(v5, 0);
  }

  v6 = (*((*v2 & *v1) + 0x1F0))(v21);
  *v7 = !*v7;
  v6(v21, 0);
  v8 = sub_26BA3ABB0();
  v9 = v3();
  (*((*v2 & *v8) + 0x60))(v9 & 1);

  sub_26BA38860();
  v10 = (*((*v2 & *v1) + 0xF0))();
  v11 = (*((*v2 & *v1) + 0x108))();
  sub_26BA9B59C();

  if ((v3() & 1) == 0)
  {
    v12 = (*((*v2 & *v1) + 0x180))();
    if ((v13 & 1) == 0)
    {
      v14 = v12;
      v15 = sub_26BA3A3F8();
      sub_26BA38398(v14);

      v16 = sub_26BA3A5E4();
      (*((*v2 & *v16) + 0x158))(v14);

      v17 = *(v1 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser);
      sub_26BA3E824(v14);

      (*((*v2 & *v1) + 0x188))(0, 1);
    }
  }

  v18 = [v1 navigationController];
  if (v18)
  {

    v19 = [v1 navigationItem];
    v20 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    [v19 setLeftBarButtonItem_];
  }
}

id sub_26BA3DD04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BA9B68C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_26BA3DDDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerEditViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BA3DF34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BA3DF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BA3DFF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BA3E0C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26BA3ED78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26BA3E0C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BA3E1D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26BA9BD3C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26BA3E1D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BA3E21C(a1, a2);
  sub_26BA3E34C(&unk_287C6E8E8);
  return v3;
}

uint64_t sub_26BA3E21C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BA3E438(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26BA9BD3C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26BA9B70C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BA3E438(v10, 0);
        result = sub_26BA9BCEC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26BA3E34C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26BA3E4AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BA3E438(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26BA3E4AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280436100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_26BA3E5A0()
{
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_stillRepresentation) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_animatedRepresentation) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_transitionAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_canToggleLive) = 0;
  v1 = v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_preLiveSickerEffect;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_noEffectShouldBeLive) = 0;
  v2 = OBJC_IVAR____TtC10StickersUI25StickerEditViewController_analyticsEditingEvent;
  type metadata accessor for StickersAnalyticsEditingEvent();
  *(v0 + v2) = sub_26BA96D48();
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isPaused) = 1;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_isLive) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___effectChooser) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___doneButton) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___liveButton) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewHeightConstraint) = 0;
  sub_26BA9BD9C();
  __break(1u);
}

uint64_t sub_26BA3E6F8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26BA3E7D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_26BA3E824(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x150))();
  if (v5)
  {
    (*(*v5 + 552))(a1);
  }

  v6 = sub_26BA3A3F8();
  sub_26BA38398(a1);

  v7 = sub_26BA9B5DC();
  if (v7 == sub_26BA9B5DC())
  {
    v8 = (*((*v4 & *v2) + 0xF0))();
    v9 = *((*v4 & *v2) + 0x1E0);
    v9();
    sub_26BA9B5FC();

    v10 = (*((*v4 & *v2) + 0x198))();
    (*((*v4 & *v2) + 0x1E8))(v10 & 1);
    v11 = sub_26BA3ABB0();
    v12 = (v9)();
    (*((*v4 & *v11) + 0x60))(v12 & 1);
  }

  else
  {
    v13 = (*((*v4 & *v2) + 0x1E0))();
    (*((*v4 & *v2) + 0x1A0))(v13 & 1);
    (*((*v4 & *v2) + 0x1E8))(0);
    v14 = sub_26BA3ABB0();
    (*((*v4 & *v14) + 0x60))(0);

    v11 = (*((*v4 & *v2) + 0xF0))();
    sub_26BA9B5FC();
  }

  sub_26BA38860();
  (*((*v4 & *v2) + 0x2D0))();
  v15 = objc_opt_self();
  v16 = *(v2 + OBJC_IVAR____TtC10StickersUI25StickerEditViewController____lazy_storage___previewView);

  return [v15 playSettlingAnimation_];
}

unint64_t sub_26BA3EC04()
{
  result = qword_280435B50;
  if (!qword_280435B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerEditViewController.StickerEditError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StickerEditViewController.StickerEditError(_WORD *result, int a2, int a3)
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

uint64_t sub_26BA3ED78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BA3EDD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *((*MEMORY[0x277D85000] & **(v0 + 24)) + 0xF0);
    v4 = v1;
    v5 = v3();
    Sticker.updateKeyboardPreview(_:)(v4);
  }

  return v2();
}

uint64_t sub_26BA3EE70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BA3EEB8()
{
  result = qword_280435E10;
  if (!qword_280435E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280435B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435E10);
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

uint64_t sub_26BA3EF64(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26BA3F03C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BA3F0F4()
{
  v1 = OBJC_IVAR____TtC10StickersUI10LiveButton_isLive;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_26BA3F138(char a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI10LiveButton_isLive;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id (*sub_26BA3F198(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26BA3F1FC;
}

id sub_26BA3F1FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

id LiveButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveButton.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B78);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v52 = sub_26BA9BB9C();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26BA9BB2C();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26BA9BBFC();
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC10StickersUI10LiveButton_isLive] = 0;
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = type metadata accessor for LiveButton();
  v56.receiver = v0;
  v56.super_class = v17;
  v18 = objc_msgSendSuper2(&v56, sel_initWithFrame_, v13, v14, v15, v16);
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D76968];
  v49 = v18;
  v21 = [v19 preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B88);
  inited = swift_initStackObject();
  v47 = xmmword_26BA9D660;
  *(inited + 16) = xmmword_26BA9D660;
  v23 = *MEMORY[0x277D74430];
  *(inited + 32) = *MEMORY[0x277D74430];
  *(inited + 40) = *MEMORY[0x277D74410];
  v24 = v21;
  v25 = v23;
  v26 = sub_26BA40918(inited);
  swift_setDeallocating();
  sub_26BA3E6F8(inited + 32, &qword_280435B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B98);
  v27 = swift_initStackObject();
  *(v27 + 16) = v47;
  v28 = *MEMORY[0x277D74380];
  *(v27 + 32) = *MEMORY[0x277D74380];
  *(v27 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435BA0);
  *(v27 + 40) = v26;
  v29 = v28;
  sub_26BA40A08(v27);
  swift_setDeallocating();
  sub_26BA3E6F8(v27 + 32, &qword_280435BA8);
  type metadata accessor for AttributeName(0);
  sub_26BA40D54(&qword_280435BB0, type metadata accessor for AttributeName);
  v30 = sub_26BA9B62C();

  v31 = [v24 fontDescriptorByAddingAttributes_];

  v32 = v31;
  [v32 pointSize];
  v34 = [objc_opt_self() fontWithDescriptor:v32 size:v33];

  if (sub_26BA8C92C())
  {
    sub_26BA9BBCC();
  }

  else
  {
    sub_26BA9BBAC();
    v35 = [objc_opt_self() tertiarySystemFillColor];
    sub_26BA9BB6C();
  }

  v36 = [objc_opt_self() secondaryLabelColor];
  sub_26BA9BB7C();
  String.stkLocalized.getter();
  sub_26BA9BBDC();
  sub_26BA9BB4C();
  (*(v7 + 104))(v9, *MEMORY[0x277D74FD8], v48);
  sub_26BA9BB3C();
  (*(v51 + 104))(v50, *MEMORY[0x277D75028], v52);
  sub_26BA9BB1C();
  *(swift_allocObject() + 16) = v34;
  v37 = v34;
  sub_26BA9B27C();
  v38 = sub_26BA9B26C();
  (*(*(v38 - 8) + 56))(v5, 0, 1, v38);
  sub_26BA9BB8C();
  v39 = v53;
  v40 = v54;
  (*(v10 + 16))(v53, v12, v54);
  (*(v10 + 56))(v39, 0, 1, v40);
  v41 = v49;
  sub_26BA9BC2C();
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  *(v42 + 24) = v41;
  aBlock[4] = sub_26BA40BC4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA3FE78;
  aBlock[3] = &block_descriptor_0;
  v43 = _Block_copy(aBlock);
  v44 = v41;
  v45 = v37;

  [v44 setConfigurationUpdateHandler_];

  _Block_release(v43);
  (*(v10 + 8))(v12, v40);
  return v44;
}

uint64_t sub_26BA3FA98(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B78);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  v12 = sub_26BA9BBFC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9BC1C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_26BA3E6F8(v11, &qword_280435B78);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = objc_opt_self();
  v18 = [v17 tertiarySystemFillColor];
  sub_26BA9BB6C();
  v19 = [v17 secondaryLabelColor];
  sub_26BA9BB7C();
  [a2 pointSize];
  v21 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:v20];
  v22 = *((*MEMORY[0x277D85000] & *a3) + 0x58);
  v28[1] = a1;
  v22();
  v23 = v21;
  v24 = sub_26BA9B68C();

  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  v26 = v25;
  v27 = sub_26BA9BBBC();
  (v22)(v27);
  String.stkLocalized.getter();

  sub_26BA9BBDC();
  (*(v13 + 16))(v9, v15, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_26BA9BC2C();

  return (*(v13 + 8))(v15, v12);
}

void sub_26BA3FE78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_26BA3FF04()
{
  *(v0 + OBJC_IVAR____TtC10StickersUI10LiveButton_isLive) = 0;
  sub_26BA9BD9C();
  __break(1u);
}

id LiveButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LiveButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BA400D4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D68A420](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26BA40128(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x26D68A430](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_26BA401A8(uint64_t a1, id *a2)
{
  result = sub_26BA9B69C();
  *a2 = 0;
  return result;
}

uint64_t sub_26BA40220(uint64_t a1, id *a2)
{
  v3 = sub_26BA9B6AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26BA402A0@<X0>(uint64_t *a1@<X8>)
{
  sub_26BA9B6BC();
  v2 = sub_26BA9B68C();

  *a1 = v2;
  return result;
}

uint64_t sub_26BA402E4()
{
  v0 = sub_26BA9B6BC();
  v1 = MEMORY[0x26D68AD20](v0);

  return v1;
}

uint64_t sub_26BA40320()
{
  sub_26BA9B6BC();
  sub_26BA9B6EC();
}

uint64_t sub_26BA40374()
{
  sub_26BA9B6BC();
  sub_26BA9BEEC();
  sub_26BA9B6EC();
  v0 = sub_26BA9BF1C();

  return v0;
}

uint64_t sub_26BA403E8()
{
  v0 = sub_26BA9B6BC();
  v2 = v1;
  if (v0 == sub_26BA9B6BC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26BA9BE4C();
  }

  return v5 & 1;
}

uint64_t sub_26BA40470()
{
  sub_26BA40D54(&qword_280435C38, type metadata accessor for TraitKey);
  sub_26BA40D54(&qword_280435C40, type metadata accessor for TraitKey);

  return sub_26BA9BE0C();
}

void *sub_26BA4052C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_26BA4053C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_26BA40548()
{
  sub_26BA40D54(&qword_280435C20, type metadata accessor for Weight);
  sub_26BA40D54(&qword_280435C28, type metadata accessor for Weight);
  sub_26BA40FDC();
  return sub_26BA9BE0C();
}

uint64_t sub_26BA40610@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26BA9B68C();

  *a1 = v2;
  return result;
}

uint64_t sub_26BA40658()
{
  sub_26BA40D54(&qword_280435BB0, type metadata accessor for AttributeName);
  sub_26BA40D54(&qword_280435C18, type metadata accessor for AttributeName);

  return sub_26BA9BE0C();
}

uint64_t sub_26BA4071C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26D68B4D0](*&v1);
}

uint64_t sub_26BA40758(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

unint64_t sub_26BA40784(uint64_t a1)
{
  sub_26BA9B6BC();
  sub_26BA9BEEC();
  sub_26BA9B6EC();
  v2 = sub_26BA9BF1C();

  return sub_26BA40814(a1, v2);
}

unint64_t sub_26BA40814(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26BA9B6BC();
      v8 = v7;
      if (v6 == sub_26BA9B6BC() && v8 == v9)
      {
        break;
      }

      v11 = sub_26BA9BE4C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26BA40918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C58);
    v3 = sub_26BA9BDEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_26BA40784(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26BA40A08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C50);
    v3 = sub_26BA9BDEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BA41084(v4, &v11);
      v5 = v11;
      result = sub_26BA40784(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26BA410F4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26BA40B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_26BA9ABFC();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_26BA41030();
  v7 = v5;
  return sub_26BA9AC0C();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26BA40CC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26BA40D54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BA40FDC()
{
  result = qword_280435C30;
  if (!qword_280435C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435C30);
  }

  return result;
}

unint64_t sub_26BA41030()
{
  result = qword_280435C48;
  if (!qword_280435C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280435C48);
  }

  return result;
}

uint64_t sub_26BA41084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26BA410F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BA4112C()
{
  v0 = sub_26BA9AF5C();
  __swift_allocate_value_buffer(v0, qword_280436FF8);
  __swift_project_value_buffer(v0, qword_280436FF8);
  return sub_26BA9AF4C();
}

uint64_t sub_26BA411A8()
{
  result = sub_26BA9B68C();
  qword_2804385E8 = result;
  return result;
}

uint64_t *sub_26BA411E0()
{
  if (qword_280437010 != -1)
  {
    swift_once();
  }

  return &qword_2804385E8;
}

id sub_26BA41230()
{
  if (qword_280437010 != -1)
  {
    swift_once();
  }

  v1 = qword_2804385E8;

  return v1;
}

uint64_t sub_26BA412A0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_26BA42B70(a1);
  return v2;
}

void *sub_26BA412F4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_26BA9B42C();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, *a2);
  type metadata accessor for StickerDataCache();
  v9 = swift_allocObject();
  result = sub_26BA42B70(v7);
  *a3 = v9;
  return result;
}

uint64_t sub_26BA413D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26BA9B42C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D681A0], v5);
  sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  (*(v6 + 8))(v8, v5);
  if (v13[1] == v13[0])
  {
    if (qword_280437018 != -1)
    {
      swift_once();
    }

    v9 = &qword_280437020;
  }

  else
  {
    if (qword_280437028 != -1)
    {
      swift_once();
    }

    v9 = &qword_280437030;
  }

  v10 = *v9;
  v11 = *(**v9 + 416);

  v11(a2, a3);
  return v10;
}

id sub_26BA415F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
  [v3 lock];
  v4 = OBJC_IVAR____TtC10StickersUI16StickerDataCache__currentSnapshot;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  return [v3 unlock];
}

uint64_t sub_26BA416B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
  [v7 lock];
  (*(v4 + 16))(v6, a1, v3);
  v8 = OBJC_IVAR____TtC10StickersUI16StickerDataCache__currentSnapshot;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v8, v6, v3);
  swift_endAccess();
  [v7 unlock];
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_26BA4182C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_addButtonIdentifier;
  swift_beginAccess();
  sub_26BA431E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26BA418F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BA9AD5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26BA41968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_26BA53EF8(v2 + v4, a2, &qword_280435B08);
}

uint64_t sub_26BA419CC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
  [v3 lock];
  v4 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_placeholderStickerIdentifier;
  swift_beginAccess();
  sub_26BA43254(a1, v1 + v4);
  swift_endAccess();
  [v3 unlock];
  return sub_26BA3E6F8(a1, &qword_280435B08);
}

void (*sub_26BA41A70(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_placeholderStickerIdentifier;
  v5[11] = v7;
  v5[12] = v9;
  swift_beginAccess();
  sub_26BA53EF8(v1 + v9, v8, &qword_280435B08);
  return sub_26BA41B84;
}

void sub_26BA41B84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_26BA53EF8(*(*a1 + 88), v5, &qword_280435B08);
    v7 = *(v6 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
    [v7 lock];
    swift_beginAccess();
    sub_26BA43254(v5, v6 + v4);
    swift_endAccess();
    [v7 unlock];
    sub_26BA3E6F8(v5, &qword_280435B08);
  }

  else
  {
    v8 = *(v6 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
    [v8 lock];
    swift_beginAccess();
    sub_26BA43254(v3, v6 + v4);
    swift_endAccess();
    [v8 unlock];
  }

  sub_26BA3E6F8(v3, &qword_280435B08);
  free(v3);
  free(v5);

  free(v2);
}

BOOL sub_26BA41CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v5 = sub_26BA41EDC();
  v6 = *(*v0 + 192);
  v6();
  v7 = sub_26BA9B02C();
  v8 = *(v2 + 8);
  v9 = v8(v4, v1);
  if (v5[2] >= v7)
  {
    (v6)(v9);
    v11 = sub_26BA9B08C();
    v8(v4, v1);
    v12 = sub_26BA51B6C(v11);

    v13 = sub_26BA51B6C(v5);

    if (*(v13 + 16) <= *(v12 + 16) >> 3)
    {
      v18 = v12;
      sub_26BA4CED4(v13);

      v15 = v18;
    }

    else
    {
      v14 = sub_26BA4D0F0(v13, v12);

      v15 = v14;
    }

    v16 = *(v15 + 16);

    return v16 == 0;
  }

  else
  {

    return 0;
  }
}

void *sub_26BA41EDC()
{
  v1 = sub_26BA9AD5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v5 = *(v35 - 8);
  v6 = v5;
  v7 = MEMORY[0x28223BE20](v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D68);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v32 = swift_allocObject();
  v14 = v32 + v13;
  v15 = (*(*v0 + 216))();
  (*(*v0 + 240))(v15);
  sub_26BA53EF8(v14, v11, &qword_280435B08);
  sub_26BA54000(v11, v9, &qword_280435B08);
  v16 = (v2 + 32);
  v34 = v2;
  v17 = *(v2 + 48);
  v18 = v17(v9, 1, v1);
  v33 = v4;
  v31 = v16;
  if (v18 == 1)
  {
    sub_26BA3E6F8(v9, &qword_280435B08);
    v19 = MEMORY[0x277D84F90];
    v20 = v1;
  }

  else
  {
    v30 = *v16;
    (v30)(v4, v9, v1);
    v19 = MEMORY[0x277D84F90];
    v20 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26BA4C898(0, v19[2] + 1, 1, v19);
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_26BA4C898(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    (v30)(v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v33, v1);
  }

  sub_26BA53EF8(v14 + v12, v11, &qword_280435B08);
  sub_26BA54000(v11, v9, &qword_280435B08);
  if (v17(v9, 1, v20) == 1)
  {
    sub_26BA3E6F8(v9, &qword_280435B08);
  }

  else
  {
    v23 = *v31;
    v24 = v20;
    v25 = v33;
    v26 = v24;
    (*v31)(v33, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26BA4C898(0, v19[2] + 1, 1, v19);
    }

    v28 = v19[2];
    v27 = v19[3];
    if (v28 >= v27 >> 1)
    {
      v19 = sub_26BA4C898(v27 > 1, v28 + 1, 1, v19);
    }

    v19[2] = v28 + 1;
    (v23)(v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v25, v26);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19;
}

BOOL sub_26BA42380()
{
  v1 = sub_26BA9B42C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = sub_26BA41EDC();
  v12 = *(*v0 + 192);
  v29[1] = *v0 + 192;
  v30 = v12;
  v12();
  v37 = sub_26BA9B02C();
  v29[0] = *(v6 + 8);
  (v29[0])(v10, v5);
  v13 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
  v14 = *(v2 + 104);
  v34 = *MEMORY[0x277D681A0];
  v33 = v14;
  v14(v4);
  v15 = sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  v35 = v13;
  sub_26BA9B7CC();
  v32 = v15;
  sub_26BA9B7CC();
  v16 = *(v2 + 8);
  v36 = v2 + 8;
  v17 = v16(v4, v1);
  v18 = 1000;
  if (v39 == v38)
  {
    v18 = 50;
  }

  v19 = v11;
  if (v37 >= v18 - v11[2])
  {
    v37 = v16;
    v21 = v31;
    (v30)(v17);
    v22 = sub_26BA9B08C();
    (v29[0])(v21, v5);
    v23 = sub_26BA51B6C(v22);

    v24 = sub_26BA51B6C(v19);

    if (*(v24 + 16) <= *(v23 + 16) >> 3)
    {
      v39 = v23;
      sub_26BA4CED4(v24);

      v26 = v39;
    }

    else
    {
      v25 = sub_26BA4D0F0(v24, v23);

      v26 = v25;
    }

    v27 = *(v26 + 16);

    v33(v4, v34, v1);
    sub_26BA9B7CC();
    sub_26BA9B7CC();
    v37(v4, v1);
    v28 = 1000;
    if (v39 == v38)
    {
      v28 = 50;
    }

    return v27 >= v28;
  }

  else
  {

    return 0;
  }
}

id sub_26BA42784()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFBEE0]);

  return [v0 init];
}

uint64_t sub_26BA427BC()
{
  v7 = sub_26BA9B9FC();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26BA9B9DC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26BA9B2BC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26BA3EF64(0, &qword_280435B58);
  sub_26BA9B2AC();
  v8 = MEMORY[0x277D84F90];
  sub_26BA53FB8(&qword_280435C68, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C70);
  sub_26BA537D0(&qword_280435C78, &qword_280435C70);
  sub_26BA9BC5C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_26BA9BA3C();
}

uint64_t sub_26BA42A28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
  v4 = sub_26BA9B42C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26BA42AAC()
{
  sub_26BA9AD5C();
  sub_26BA51D08();
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);

  return sub_26BA9B0DC();
}

void *sub_26BA42B70(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v35 = *v1;
  v3 = sub_26BA9B36C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B9FC();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B9DC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_26BA9B2BC();
  MEMORY[0x28223BE20](v8 - 8);
  v1[2] = 0;
  v1[3] = 0;
  v9 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_addButtonIdentifier;
  v10 = sub_26BA9AD5C();
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  v11(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_placeholderStickerIdentifier, 1, 1, v10);
  v12 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277CFBEE0]) init];
  v27 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue;
  v26 = sub_26BA3EF64(0, &qword_280435B58);
  sub_26BA9B2AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26BA53FB8(&qword_280435C68, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C70);
  sub_26BA537D0(&qword_280435C78, &qword_280435C70);
  sub_26BA9BC5C();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v13 = v31;
  *(v1 + v27) = sub_26BA9BA3C();
  *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerUpdatedObserver) = 0;
  v14 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  *(v2 + v14) = sub_26BA51984(MEMORY[0x277D84F90]);
  sub_26BA51D08();
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  sub_26BA9B0DC();
  v15 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
  v16 = sub_26BA9B42C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v2 + v15, v13, v16);
  (*(v33 + 104))(v32, *MEMORY[0x277D68180], v34);
  sub_26BA9B3CC();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerStore) = sub_26BA9B35C();
  v18 = [objc_opt_self() defaultCenter];
  if (qword_280437010 != -1)
  {
    swift_once();
  }

  v19 = qword_2804385E8;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v35;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = sub_26BA51D5C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA432C4;
  aBlock[3] = &block_descriptor_1;
  v23 = _Block_copy(aBlock);

  v24 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v23];
  _Block_release(v23);

  (*(v17 + 8))(v13, v16);
  *(v2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerUpdatedObserver) = v24;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_26BA431E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BA43254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BA432C4(uint64_t a1)
{
  v2 = sub_26BA9ABAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_26BA9AB7C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

char *sub_26BA433B8()
{
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v1 = swift_unknownObjectRelease();
  (*(*v0 + 464))(v1);
  v2 = *&v0[OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerUpdatedObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_26BA3E6F8(&v0[OBJC_IVAR____TtC10StickersUI16StickerDataCache_addButtonIdentifier], &qword_280435B08);
  sub_26BA3E6F8(&v0[OBJC_IVAR____TtC10StickersUI16StickerDataCache_placeholderStickerIdentifier], &qword_280435B08);

  v5 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
  v6 = sub_26BA9B42C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR____TtC10StickersUI16StickerDataCache__currentSnapshot;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t sub_26BA435A4()
{
  sub_26BA433B8();

  return swift_deallocClassInstance();
}

uint64_t sub_26BA43604()
{
  (*(*v0 + 496))();
  v1 = *(*v0 + 432);

  return v1();
}

uint64_t sub_26BA43688(uint64_t result, uint64_t a2)
{
  v3 = v2[2];
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
    v2[2] = result;
    v2[3] = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v5 = *(*v2 + 456);

    return v5();
  }

  return result;
}

uint64_t sub_26BA43714(uint64_t a1)
{
  result = v1[2];
  if (result)
  {
    v4 = result == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v1[2] = 0;
    v1[3] = 0;
    swift_unknownObjectRelease();
    v5 = *(*v1 + 464);

    return v5();
  }

  return result;
}

uint64_t sub_26BA43794()
{
  v1 = sub_26BA9B28C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26BA9B2BC();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  aBlock[4] = sub_26BA51EE0;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_8;
  v8 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  v12 = MEMORY[0x277D84F90];
  sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA537D0(&qword_280435E10, &qword_280435B60);
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

size_t sub_26BA43A50(void *a1)
{
  v112 = sub_26BA9B28C();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_26BA9B2BC();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v104 = &v102 - v5;
  v113 = sub_26BA9B3EC();
  MEMORY[0x28223BE20](v113);
  v127 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B46C();
  v124 = *(v7 - 8);
  v125 = v7;
  MEMORY[0x28223BE20](v7);
  v123 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D18);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v102 - v10;
  v121 = sub_26BA9B49C();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v114 = &v102 - v19;
  v20 = sub_26BA9AD5C();
  v131 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v103 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v126 = &v102 - v24;
  MEMORY[0x28223BE20](v23);
  v115 = &v102 - v25;
  v26 = sub_26BA9B42C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = swift_allocBox();
  v31 = v30;
  sub_26BA51D08();
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  sub_26BA9B0DC();
  v118 = v31;
  sub_26BA9B03C();
  v32 = a1[2];
  v130 = v20;
  v116 = v4;
  v128 = v27;
  v129 = v26;
  v106 = v29;
  if (!v32)
  {
    (*(v27 + 104))(v29, *MEMORY[0x277D681A0], v26);
    sub_26BA53FB8(&qword_280435DA0, MEMORY[0x277D681A8]);
    v43 = sub_26BA9B67C();
    v37 = (*(v27 + 8))(v29, v26);
    if ((v43 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v44 = *(v131 + 56);
    v44(v18, 1, 1, v20);
    (*(*a1 + 224))(v18);
    goto LABEL_10;
  }

  v33 = a1[3];
  ObjectType = swift_getObjectType();
  v35 = *(v33 + 8);
  swift_unknownObjectRetain();
  v36 = v33;
  v20 = v130;
  LOBYTE(ObjectType) = v35(ObjectType, v36);
  v37 = swift_unknownObjectRelease();
  if ((ObjectType & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v117 = v12;
  v38 = v114;
  v39 = a1;
  (*(*a1 + 216))(v37);
  v40 = v131;
  v41 = *(v131 + 48);
  if (v41(v38, 1, v20) == 1)
  {
    v42 = v115;
    sub_26BA9AD4C();
    if (v41(v38, 1, v20) != 1)
    {
      sub_26BA3E6F8(v38, &qword_280435B08);
    }
  }

  else
  {
    v42 = v115;
    (*(v40 + 32))(v115, v38, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v45 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26BA9D660;
  v47 = *(v40 + 16);
  v47(v46 + v45, v42, v20);
  LOBYTE(aBlock[0]) = 1;
  sub_26BA9AFEC();

  v47(v18, v42, v20);
  v48 = v131;
  v44 = *(v131 + 56);
  v44(v18, 0, 1, v20);
  a1 = v39;
  (*(*v39 + 224))(v18);
  (*(v48 + 8))(v42, v20);
  v12 = v117;
LABEL_10:
  v49 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType;
  v51 = v128;
  v50 = v129;
  v52 = v122;
  (*(v128 + 16))(v122, a1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeType, v129);
  (*(v51 + 56))(v52, 0, 1, v50);
  (*(v124 + 13))(v123, *MEMORY[0x277D681C8], v125);
  sub_26BA9B47C();
  sub_26BA9B3BC();
  v53 = v12;
  v54 = v126;
  v122 = v49;
  v123 = 0;
  v55 = v53;
  v124 = v44;
  v125 = v18;
  sub_26BA53FB8(&qword_280435D40, MEMORY[0x277D68188]);
  v56 = sub_26BA9B7AC();
  v57 = v56;
  if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
  {
    v58 = sub_26BA9BDBC();
  }

  else
  {
    v58 = *(v56 + 16);
  }

  v59 = v116;
  v117 = v55;
  if (!v58)
  {

    v62 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v127 = a1;
  aBlock[0] = MEMORY[0x277D84F90];
  result = sub_26BA4F7B8(0, v58 & ~(v58 >> 63), 0);
  if ((v58 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = aBlock[0];
    do
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x26D68B2E0](v61, v57);
      }

      else
      {
        v63 = *(v57 + 8 * v61 + 32);
      }

      v64 = v63;
      MEMORY[0x26D68AA00]();

      aBlock[0] = v62;
      v66 = *(v62 + 16);
      v65 = *(v62 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_26BA4F7B8(v65 > 1, v66 + 1, 1);
        v62 = aBlock[0];
      }

      ++v61;
      *(v62 + 16) = v66 + 1;
      v20 = v130;
      (*(v131 + 32))(v62 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v66, v54, v130);
    }

    while (v58 != v61);

    a1 = v127;
    v59 = v116;
LABEL_24:
    aBlock[0] = MEMORY[0x277D84FA0];

    sub_26BA52024(v67, aBlock);

    LOBYTE(aBlock[0]) = 1;
    sub_26BA9AFEC();

    v68 = *(v62 + 16);

    v70 = v128;
    v69 = v129;
    v71 = v106;
    if (v68)
    {
LABEL_25:
      v72 = v125;
      v124(v125, 1, 1, v20);
      (*(*a1 + 248))(v72);
LABEL_26:
      sub_26BA3EF64(0, &qword_280435B58);
      v73 = sub_26BA9BA0C();
      v74 = swift_allocObject();
      swift_weakInit();
      v75 = swift_allocObject();
      v76 = v119;
      *(v75 + 16) = v74;
      *(v75 + 24) = v76;
      aBlock[4] = sub_26BA53FB0;
      aBlock[5] = v75;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BA3D478;
      aBlock[3] = &block_descriptor_89;
      v77 = _Block_copy(aBlock);

      v78 = v107;
      sub_26BA9B2AC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
      sub_26BA537D0(&qword_280435E10, &qword_280435B60);
      v79 = v109;
      v80 = v112;
      sub_26BA9BC5C();
      MEMORY[0x26D68AFF0](0, v78, v79, v77);
      _Block_release(v77);

      (*(v111 + 8))(v79, v80);
      (*(v108 + 8))(v78, v110);
      (*(v120 + 8))(v117, v121);
    }

    if (a1[2])
    {
      v81 = a1[3];
      v82 = swift_getObjectType();
      v83 = a1;
      v84 = *(v81 + 8);
      swift_unknownObjectRetain();
      v85 = v84(v82, v81);
      a1 = v83;
      LOBYTE(v81) = v85;
      v86 = swift_unknownObjectRelease();
      if ((v81 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      (*(v128 + 104))(v106, *MEMORY[0x277D681A0], v129);
      sub_26BA53FB8(&qword_280435DA0, MEMORY[0x277D681A8]);
      v87 = sub_26BA9B67C();
      v86 = (*(v70 + 8))(v71, v69);
      if (v87)
      {
        goto LABEL_25;
      }
    }

    v88 = v102;
    (*(*a1 + 240))(v86);
    v89 = v131;
    v90 = *(v131 + 48);
    if (v90(v88, 1, v20) == 1)
    {
      v91 = v103;
      sub_26BA9AD4C();
      v92 = v90(v88, 1, v20);
      v93 = v105;
      v94 = v104;
      if (v92 != 1)
      {
        sub_26BA3E6F8(v88, &qword_280435B08);
      }
    }

    else
    {
      v91 = v103;
      (*(v89 + 32))(v103, v88, v20);
      v93 = v105;
      v94 = v104;
    }

    (*(v93 + 16))(v94, v118, v59);
    sub_26BA9AFFC();
    v96 = v95;
    (*(v93 + 8))(v94, v59);
    if (v96)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
      v97 = v131;
      v98 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_26BA9D660;
      v100 = *(v97 + 16);
      v100(v99 + v98, v91, v20);
      LOBYTE(aBlock[0]) = 1;
      sub_26BA9AFEC();
    }

    else
    {
      v97 = v131;
      v100 = *(v131 + 16);
    }

    v101 = v125;
    v100(v125, v91, v20);
    v124(v101, 0, 1, v20);
    (*(*a1 + 248))(v101);
    (*(v97 + 8))(v91, v20);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BA44E00(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_26BA9BDBC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_26BA4CB6C(v3, 0);
  sub_26BA50210((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26BA44E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_26BA9B82C();
  if (sub_26BA9B85C())
  {
    v13 = sub_26BA52318(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x28223BE20](v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = sub_26BA9B7BC();

  return v15;
}

uint64_t sub_26BA4503C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    (*(v1 + 16))(v3, v4, v0);
    v7 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock;
    [*(v6 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock) lock];
    v8 = OBJC_IVAR____TtC10StickersUI16StickerDataCache__currentSnapshot;
    swift_beginAccess();
    (*(v1 + 24))(v6 + v8, v3, v0);
    swift_endAccess();
    [*(v6 + v7) unlock];
    v9 = (*(v1 + 8))(v3, v0);
    (*(*v6 + 472))(v9);
  }

  return result;
}

BOOL sub_26BA45224()
{
  v0 = sub_26BA9B42C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BA9B5CC();
  sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  (*(v1 + 8))(v3, v0);
  if (v7[1] != v7[0])
  {
    return 0;
  }

  v4 = sub_26BA9B56C();
  if (v4 >> 62)
  {
    v5 = sub_26BA9BDBC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

uint64_t sub_26BA453CC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v13 = MEMORY[0x277D84FA0];
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  v10 = a1;
  v11 = a2;
  v12 = &v13;
  v7 = sub_26BA9B7BC();

  return v7;
}

uint64_t sub_26BA454DC(void *a1)
{
  v2 = v1;
  v4 = sub_26BA9B42C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9B2EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_26BA9B30C();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_26BA9B5CC();
    sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
    sub_26BA9B7CC();
    sub_26BA9B7CC();
    result = (*(v5 + 8))(v7, v4);
    if (v17[7] == v17[6])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26BA9DBD0;
      *(inited + 32) = a1;
      v16 = a1;
      sub_26BA50E38(inited, v2);
      swift_setDeallocating();
      return swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BA4577C()
{
  v1 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeObserver;
  if (!*(v0 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeObserver))
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultCenter];
    sub_26BA9B3CC();
    v4 = sub_26BA9B37C();
    v5 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_26BA52738;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_26BA432C4;
    v8[3] = &block_descriptor_12;
    v6 = _Block_copy(v8);

    v7 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
    _Block_release(v6);

    *(v2 + v1) = v7;
    swift_unknownObjectRelease();
  }
}

void sub_26BA458D4()
{
  v1 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_storeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_26BA45980()
{
  v1 = sub_26BA9B28C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B2BC();
  result = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  if (v10)
  {
    v17 = v2;
    v18 = result;
    v11 = *(v0 + 24);
    v16 = v7;
    sub_26BA3EF64(0, &qword_280435B58);
    swift_unknownObjectRetain();
    v12 = sub_26BA9BA0C();
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v11;
    v13[4] = v0;
    aBlock[4] = sub_26BA527B4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA3D478;
    aBlock[3] = &block_descriptor_18;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_26BA9B2AC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
    sub_26BA537D0(&qword_280435E10, &qword_280435B60);
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v9, v4, v14);
    _Block_release(v14);
    swift_unknownObjectRelease();

    (*(v17 + 8))(v4, v1);
    return (*(v16 + 8))(v9, v18);
  }

  return result;
}

uint64_t sub_26BA45CAC(uint64_t a1)
{
  v37 = a1;
  v2 = sub_26BA9B28C();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26BA9B2BC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9AD5C();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BA9B42C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(v9 + 104);
  v15(&v27 - v13, *MEMORY[0x277D681A0], v8);
  sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  v30 = v1;
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  v16 = *(v9 + 8);
  result = v16(v14, v8);
  if (aBlock[0] == v39)
  {
    sub_26BA9B5CC();
    v15(v12, *MEMORY[0x277D68198], v8);
    sub_26BA9B7CC();
    sub_26BA9B7CC();
    v16(v12, v8);
    result = v16(v14, v8);
    if (aBlock[0] == v39)
    {
      MEMORY[0x26D68AA00](result);
      v18 = static TempStickerURIHelpers_Staging107211449.uri(identifier:)();
      v20 = v19;
      (*(v28 + 8))(v7, v29);
      v21 = v30;
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v22[4] = v20;
      aBlock[4] = sub_26BA52864;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BA54094;
      aBlock[3] = &block_descriptor_24;
      v23 = _Block_copy(aBlock);

      v24 = v31;
      sub_26BA9B2AC();
      v39 = MEMORY[0x277D84F90];
      sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
      sub_26BA537D0(&qword_280435E10, &qword_280435B60);
      v25 = v33;
      v26 = v36;
      sub_26BA9BC5C();
      MEMORY[0x26D68AFF0](0, v24, v25, v23);
      _Block_release(v23);
      (*(v35 + 8))(v25, v26);
      (*(v32 + 8))(v24, v34);
    }
  }

  return result;
}

uint64_t sub_26BA46228@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  (*(*v1 + 192))(v5);
  if (sub_26BA9B09C() < 1 || (v8 = sub_26BA9ADFC(), v8 < 1) || (v9 = v8, v8 >= sub_26BA9B01C()))
  {
    (*(v4 + 8))(v7, v3);
    v14 = sub_26BA9AD5C();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    result = sub_26BA9B07C();
    if (v9 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = result;
      v12 = sub_26BA9AD5C();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9, v12);

      (*(v4 + 8))(v7, v3);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  return result;
}

uint64_t sub_26BA46498(uint64_t a1)
{
  v3 = sub_26BA9B28C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26BA9B2BC();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_26BA52900;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  v15 = MEMORY[0x277D84F90];
  sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA537D0(&qword_280435E10, &qword_280435B60);
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

void sub_26BA46770(uint64_t a1, char *a2)
{
  v4 = sub_26BA9B46C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  swift_beginAccess();
  v9 = *(*&a2[v8] + 16);
  v10 = (a1 - v9);
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    swift_once();
    v14 = sub_26BA9AF5C();
    __swift_project_value_buffer(v14, qword_280436FF8);
    v15 = v10;
    v16 = sub_26BA9AF3C();
    v17 = sub_26BA9B94C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44[0] = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_26BA9BE8C();
      v22 = sub_26BA3DFF8(v20, v21, v44);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26BA33000, v16, v17, "Could not prefetch stickers: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D68BFB0](v19, -1, -1);
      MEMORY[0x26D68BFB0](v18, -1, -1);
    }

    else
    {
    }

    return;
  }

  v11 = sub_26BA41EDC()[2];

  v12 = &v10[v11];
  if (__OFADD__(v10, v11))
  {
    goto LABEL_24;
  }

  if (v12 >= 1)
  {
    v13 = sub_26BA9B38C();
    v23 = v12 >= v13 ? v13 : &v10[v11];
    if (v13 >= 1)
    {
      v40 = v23;
      if (qword_280436FF0 != -1)
      {
        swift_once();
      }

      v24 = sub_26BA9AF5C();
      v39[1] = __swift_project_value_buffer(v24, qword_280436FF8);
      v25 = sub_26BA9AF3C();
      v26 = sub_26BA9B93C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v40;
        _os_log_impl(&dword_26BA33000, v25, v26, "Will initialize cache with %ld stickers", v27, 0xCu);
        MEMORY[0x26D68BFB0](v27, -1, -1);
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D48);
      v43 = sub_26BA53818();
      v41[0] = 0;
      v41[1] = v40;
      (*(v5 + 104))(v7, *MEMORY[0x277D681D0], v4);
      sub_26BA9B3AC();
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v28 = v45;
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v44, v45);
      sub_26BA51460(v30, a2, v28, v29);
      sub_26BA52F80(v44, v41);
      v31 = sub_26BA9AF3C();
      v32 = sub_26BA9B93C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        v34 = __swift_project_boxed_opaque_existential_1(v41, v42);
        MEMORY[0x28223BE20](v34);
        (*(v36 + 16))(v39 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_26BA9B61C();
        v37 = sub_26BA9B87C();
        if (v37 >> 62)
        {
          v38 = sub_26BA9BDBC();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        __swift_destroy_boxed_opaque_existential_0(v41);
        *(v33 + 4) = v38;
        _os_log_impl(&dword_26BA33000, v31, v32, "Did initialize cache with %ld stickers", v33, 0xCu);
        MEMORY[0x26D68BFB0](v33, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
      }

      __swift_destroy_boxed_opaque_existential_0(v44);
    }
  }
}

uint64_t sub_26BA46D40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26BA9B2BC();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_26BA52908;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BA54094;
  aBlock[3] = &block_descriptor_36;
  v12 = _Block_copy(aBlock);

  sub_26BA9B2AC();
  v16 = MEMORY[0x277D84F90];
  sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
  sub_26BA537D0(&qword_280435E10, &qword_280435B60);
  sub_26BA9BC5C();
  MEMORY[0x26D68AFF0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_26BA47024(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v57 = sub_26BA9AD5C();
  v7 = *(v57 - 8);
  v8 = MEMORY[0x28223BE20](v57);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v44 - v12;
  v51 = sub_26BA9AE2C();
  v13 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  swift_beginAccess();
  v17 = *(a2 + 16);
  v52 = *(a1 + v16);
  v53 = v7;
  v56 = a1;
  if (v17)
  {
    v18 = (*a1 + 488);
    v50 = *v18;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v48 = *(v19 + 56);
    v49 = v20;
    v46 = v18;
    v47 = v19;
    v22 = (v19 - 8);
    v23 = (v7 + 48);
    v24 = (v7 + 32);

    v25 = MEMORY[0x277D84F90];
    v44 = v6;
    do
    {
      v27 = v51;
      (v49)(v15, v21, v51);
      v50(v15);
      (*v22)(v15, v27);
      v28 = v57;
      if ((*v23)(v6, 1, v57) == 1)
      {
        result = sub_26BA3E6F8(v6, &qword_280435B08);
      }

      else
      {
        v29 = *v24;
        (*v24)(v54, v6, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_26BA4C898(0, *(v25 + 2) + 1, 1, v25);
        }

        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_26BA4C898(v30 > 1, v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        result = v29(&v25[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v31], v54, v57);
        v6 = v44;
      }

      v21 += v48;
      --v17;
    }

    while (v17);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v51 = *(v25 + 2);
  if (v51)
  {
    v32 = 0;
    v33 = v53;
    v49 = (v53 + 8);
    v50 = (v53 + 16);
    v54 = (v53 + 32);
    v34 = MEMORY[0x277D84F90];
    v35 = v57;
    v36 = v45;
    while (v32 < *(v25 + 2))
    {
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = *(v33 + 72);
      (*(v33 + 16))(v36, &v25[v37 + v38 * v32], v35);
      if (*(v52 + 16) && (sub_26BA4F454(v36), v35 = v57, (v39 & 1) != 0))
      {
        result = (*v49)(v36, v57);
      }

      else
      {
        v40 = *v54;
        (*v54)(v55, v36, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26BA4F7B8(0, *(v34 + 16) + 1, 1);
          v35 = v57;
          v34 = v58;
        }

        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_26BA4F7B8(v42 > 1, v43 + 1, 1);
          v35 = v57;
          v34 = v58;
        }

        *(v34 + 16) = v43 + 1;
        result = v40(v34 + v37 + v43 * v38, v55, v35);
        v33 = v53;
        v36 = v45;
      }

      if (v51 == ++v32)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_25:

    sub_26BA47874(v34);
  }

  return result;
}

uint64_t sub_26BA47590(uint64_t a1)
{
  v3 = sub_26BA9B28C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B2BC();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v14[1] = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
    v15 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    aBlock[4] = sub_26BA52910;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA54094;
    aBlock[3] = &block_descriptor_42;
    v13 = _Block_copy(aBlock);

    sub_26BA9B2AC();
    v16 = MEMORY[0x277D84F90];
    sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
    sub_26BA537D0(&qword_280435E10, &qword_280435B60);
    sub_26BA9BC5C();
    MEMORY[0x26D68AFF0](0, v11, v6, v13);
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v15);
  }

  return result;
}

uint64_t sub_26BA47874(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26BA9B46C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (qword_280436FF0 != -1)
  {
    swift_once();
  }

  v8 = sub_26BA9AF5C();
  __swift_project_value_buffer(v8, qword_280436FF8);

  v9 = sub_26BA9AF3C();
  v10 = sub_26BA9B93C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(a1 + 16);

    _os_log_impl(&dword_26BA33000, v9, v10, "Will fetch %ld stickers", v11, 0xCu);
    MEMORY[0x26D68BFB0](v11, -1, -1);
  }

  else
  {
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CB0);
  v27 = sub_26BA537D0(&qword_280435CB8, &qword_280435CB0);
  v25[0] = a1;
  (*(v5 + 104))(v7, *MEMORY[0x277D681D0], v4);

  sub_26BA9B39C();
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v25);
  v12 = v29;
  v13 = v30;
  v14 = __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_26BA51460(v14, v2, v12, v13);
  sub_26BA52F80(v28, v25);
  v15 = sub_26BA9AF3C();
  v16 = sub_26BA9B93C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = __swift_project_boxed_opaque_existential_1(v25, v26);
    MEMORY[0x28223BE20](v18);
    (*(v20 + 16))(v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
    sub_26BA9B61C();
    v21 = sub_26BA9B87C();
    if (v21 >> 62)
    {
      v22 = sub_26BA9BDBC();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
    *(v17 + 4) = v22;
    _os_log_impl(&dword_26BA33000, v15, v16, "Did fetch %ld stickers", v17, 0xCu);
    MEMORY[0x26D68BFB0](v17, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return __swift_destroy_boxed_opaque_existential_0(v28);
}

void sub_26BA47DC4(uint64_t a1)
{
  v3 = sub_26BA9B2EC();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v52 = &v50[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v62 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v50[-v20];
  v22 = *(v6 + 16);
  v60 = a1;
  v53 = v22;
  v54 = v6 + 16;
  v22(&v50[-v20], a1, v5);
  v23 = (*(v6 + 56))(v21, 0, 1, v5);
  v24 = *(*v1 + 240);
  v59 = v1;
  v24(v23);
  v25 = *(v11 + 56);
  sub_26BA53EF8(v21, v13, &qword_280435B08);
  sub_26BA53EF8(v19, &v13[v25], &qword_280435B08);
  v63 = v6;
  v26 = *(v6 + 48);
  if (v26(v13, 1, v5) == 1)
  {
    sub_26BA3E6F8(v19, &qword_280435B08);
    sub_26BA3E6F8(v21, &qword_280435B08);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      sub_26BA3E6F8(v13, &qword_280435B08);
      return;
    }
  }

  else
  {
    sub_26BA53EF8(v13, v62, &qword_280435B08);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v46 = v63;
      v47 = v52;
      (*(v63 + 32))(v52, &v13[v25], v5);
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v48 = v62;
      v51 = sub_26BA9B67C();
      v49 = *(v46 + 8);
      v49(v47, v5);
      sub_26BA3E6F8(v19, &qword_280435B08);
      sub_26BA3E6F8(v21, &qword_280435B08);
      v49(v48, v5);
      sub_26BA3E6F8(v13, &qword_280435B08);
      if (v51)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_26BA3E6F8(v19, &qword_280435B08);
    sub_26BA3E6F8(v21, &qword_280435B08);
    (*(v63 + 8))(v62, v5);
  }

  sub_26BA3E6F8(v13, &qword_280435E30);
LABEL_7:
  if (qword_280436FF0 != -1)
  {
    swift_once();
  }

  v27 = sub_26BA9AF5C();
  __swift_project_value_buffer(v27, qword_280436FF8);
  v28 = v55;
  v29 = v60;
  v53(v55, v60, v5);
  v30 = sub_26BA9AF3C();
  v31 = sub_26BA9B93C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64 = v33;
    *v32 = 136315138;
    sub_26BA53FB8(&unk_280435D90, MEMORY[0x277CC95F0]);
    v34 = sub_26BA9BE2C();
    v36 = v35;
    (*(v63 + 8))(v28, v5);
    v37 = sub_26BA3DFF8(v34, v36, &v64);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_26BA33000, v30, v31, "Fetching sticker %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D68BFB0](v33, -1, -1);
    MEMORY[0x26D68BFB0](v32, -1, -1);
  }

  else
  {

    (*(v63 + 8))(v28, v5);
  }

  v39 = v58;
  v38 = v59;
  v40 = *(v59 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  v42 = v56;
  v41 = v57;
  *v56 = v40;
  (*(v41 + 104))(v42, *MEMORY[0x277D851F0], v39);
  v43 = v40;
  LOBYTE(v40) = sub_26BA9B30C();
  v44 = (*(v41 + 8))(v42, v39);
  if (v40)
  {
    v64 = 0;
    MEMORY[0x28223BE20](v44);
    *&v50[-32] = &v64;
    *&v50[-24] = v38;
    *&v50[-16] = v29;
    v45 = v61;
    sub_26BA9BA1C();
    if (v45)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_26BA48568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a1;
  v5 = sub_26BA9B46C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v9 = sub_26BA9AD5C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BA9D660;
  (*(v10 + 16))(v12 + v11, a3, v9);
  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CB0);
  v26[4] = sub_26BA537D0(&qword_280435CB8, &qword_280435CB0);
  v26[0] = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D681D0], v5);
  v13 = v27[6];
  sub_26BA9B39C();
  if (v13)
  {
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v26);
    return;
  }

  v14 = v25[0];
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_0(v26);
  v15 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  MEMORY[0x28223BE20](v15);
  (*(v17 + 16))(v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BA9B61C();
  v18 = sub_26BA9B87C();
  if (v18 >> 62)
  {
    v21 = v18;
    v22 = sub_26BA9BDBC();
    v18 = v21;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D68B2E0](0);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

LABEL_11:
  v23 = *v14;
  *v14 = v20;

  __swift_destroy_boxed_opaque_existential_0(v27);
  if (*v14)
  {
    v24 = *v14;
    sub_26BA454DC(v24);
  }
}

uint64_t sub_26BA4894C(void *a1)
{
  v3 = sub_26BA9B2EC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = v8;
  MEMORY[0x28223BE20](v7);
  v72 = &v61[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v73 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v61[-v20];
  v22 = *(v6 + 16);
  v68 = a1;
  v70 = v22;
  v71 = v6 + 16;
  v22(&v61[-v20], a1, v5);
  v23 = (*(v6 + 56))(v21, 0, 1, v5);
  v24 = *(*v1 + 240);
  v67 = v1;
  v24(v23);
  v25 = *(v11 + 56);
  sub_26BA53EF8(v21, v13, &qword_280435B08);
  sub_26BA53EF8(v19, &v13[v25], &qword_280435B08);
  v74 = v6;
  v28 = *(v6 + 48);
  v27 = (v6 + 48);
  v26 = v28;
  if (v28(v13, 1, v5) == 1)
  {
    sub_26BA3E6F8(v19, &qword_280435B08);
    sub_26BA3E6F8(v21, &qword_280435B08);
    v29 = v26(&v13[v25], 1, v5);
    v27 = v75;
    if (v29 == 1)
    {
      sub_26BA3E6F8(v13, &qword_280435B08);
      return 0;
    }

    goto LABEL_6;
  }

  sub_26BA53EF8(v13, v73, &qword_280435B08);
  if (v26(&v13[v25], 1, v5) == 1)
  {
    sub_26BA3E6F8(v19, &qword_280435B08);
    sub_26BA3E6F8(v21, &qword_280435B08);
    (*(v74 + 8))(v73, v5);
LABEL_6:
    sub_26BA3E6F8(v13, &qword_280435E30);
    v31 = v69;
    goto LABEL_7;
  }

  v44 = v74;
  v45 = v72;
  (*(v74 + 32))(v72, &v13[v25], v5);
  sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
  v46 = v73;
  v62 = sub_26BA9B67C();
  v47 = *(v44 + 8);
  v47(v45, v5);
  sub_26BA3E6F8(v19, &qword_280435B08);
  sub_26BA3E6F8(v21, &qword_280435B08);
  v47(v46, v5);
  sub_26BA3E6F8(v13, &qword_280435B08);
  v27 = v75;
  v31 = v69;
  if (v62)
  {
    return 0;
  }

LABEL_7:
  v32 = v66;
  v33 = v67;
  v34 = *(v67 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  v36 = v64;
  v35 = v65;
  *v64 = v34;
  (*(v35 + 104))(v36, *MEMORY[0x277D851F0], v32);
  v37 = v34;
  LOBYTE(v34) = sub_26BA9B30C();
  (*(v35 + 8))(v36, v32);
  if (v34)
  {
    v77 = 0;
    v27 = v72;
    v36 = v68;
    v70(v72, v68, v5);
    v38 = v74;
    v39 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = &v77;
    *(v40 + 24) = v33;
    (*(v38 + 32))(v40 + v39, v27, v5);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_26BA52958;
    *(v41 + 24) = v40;
    aBlock[4] = sub_26BA52A38;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BA49274;
    aBlock[3] = &block_descriptor_51;
    v42 = _Block_copy(aBlock);

    dispatch_sync(v37, v42);
    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v30 = v77;
      if (v77)
      {

        return v30;
      }

      v27 = v31;
      if (qword_280436FF0 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_14:
  v48 = sub_26BA9AF5C();
  __swift_project_value_buffer(v48, qword_280436FF8);
  v70(v27, v36, v5);
  v49 = sub_26BA9AF3C();
  v50 = sub_26BA9B93C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136315138;
    sub_26BA53FB8(&unk_280435D90, MEMORY[0x277CC95F0]);
    v53 = sub_26BA9BE2C();
    v54 = v27;
    v56 = v55;
    (*(v74 + 8))(v54, v5);
    v57 = sub_26BA3DFF8(v53, v56, aBlock);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_26BA33000, v49, v50, "Cache miss for %s. Will fetch.", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v58 = v52;
    v36 = v68;
    MEMORY[0x26D68BFB0](v58, -1, -1);
    MEMORY[0x26D68BFB0](v51, -1, -1);
  }

  else
  {

    (*(v74 + 8))(v27, v5);
  }

  v30 = (*(*v33 + 528))(v36);
  v59 = v77;

  return v30;
}

uint64_t sub_26BA4929C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D681D0];
  v3 = sub_26BA9B46C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_26BA49310(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = sub_26BA9B2EC();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v54 = &v52[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435E30);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v52[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v52[-v21];
  v23 = *(v7 + 16);
  v62 = a1;
  v56 = v23;
  v57 = v7 + 16;
  v23(&v52[-v21], a1, v6);
  v24 = (*(v7 + 56))(v22, 0, 1, v6);
  v25 = *(*v2 + 240);
  v63 = v2;
  v25(v24);
  v26 = *(v12 + 56);
  sub_26BA53EF8(v22, v14, &qword_280435B08);
  sub_26BA53EF8(v20, &v14[v26], &qword_280435B08);
  v66 = v7;
  v27 = *(v7 + 48);
  if (v27(v14, 1, v6) == 1)
  {
    sub_26BA3E6F8(v20, &qword_280435B08);
    sub_26BA3E6F8(v22, &qword_280435B08);
    if (v27(&v14[v26], 1, v6) == 1)
    {
      sub_26BA3E6F8(v14, &qword_280435B08);
      return;
    }
  }

  else
  {
    sub_26BA53EF8(v14, v65, &qword_280435B08);
    if (v27(&v14[v26], 1, v6) != 1)
    {
      v48 = v66;
      v49 = v54;
      (*(v66 + 32))(v54, &v14[v26], v6);
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v50 = v65;
      v53 = sub_26BA9B67C();
      v51 = *(v48 + 8);
      v51(v49, v6);
      sub_26BA3E6F8(v20, &qword_280435B08);
      sub_26BA3E6F8(v22, &qword_280435B08);
      v51(v50, v6);
      sub_26BA3E6F8(v14, &qword_280435B08);
      if (v53)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_26BA3E6F8(v20, &qword_280435B08);
    sub_26BA3E6F8(v22, &qword_280435B08);
    (*(v66 + 8))(v65, v6);
  }

  sub_26BA3E6F8(v14, &qword_280435E30);
LABEL_7:
  if (qword_280436FF0 != -1)
  {
    swift_once();
  }

  v28 = sub_26BA9AF5C();
  __swift_project_value_buffer(v28, qword_280436FF8);
  v29 = v58;
  v30 = v62;
  v56(v58, v62, v6);
  v31 = sub_26BA9AF3C();
  v32 = sub_26BA9B93C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v67 = v34;
    *v33 = 136315138;
    sub_26BA53FB8(&unk_280435D90, MEMORY[0x277CC95F0]);
    v35 = sub_26BA9BE2C();
    v37 = v36;
    (*(v66 + 8))(v29, v6);
    v38 = sub_26BA3DFF8(v35, v37, &v67);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_26BA33000, v31, v32, "Fetching sticker %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D68BFB0](v34, -1, -1);
    MEMORY[0x26D68BFB0](v33, -1, -1);
  }

  else
  {

    (*(v66 + 8))(v29, v6);
  }

  v39 = v63;
  v40 = *(v63 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  v42 = v59;
  v41 = v60;
  *v59 = v40;
  v43 = v61;
  (*(v41 + 104))(v42, *MEMORY[0x277D851F0], v61);
  v44 = v40;
  LOBYTE(v40) = sub_26BA9B30C();
  v45 = (*(v41 + 8))(v42, v43);
  if (v40)
  {
    v67 = 0;
    MEMORY[0x28223BE20](v45);
    v46 = v55;
    *&v52[-32] = v30;
    *&v52[-24] = v46;
    *&v52[-16] = &v67;
    *&v52[-8] = v39;
    v47 = v64;
    sub_26BA9BA1C();
    if (v47)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BA49AE0(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v32 = a3;
  v37 = a1;
  v33 = sub_26BA9B3EC();
  MEMORY[0x28223BE20](v33);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BA9B46C();
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v38 = sub_26BA9B49C();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26BA9B42C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  (*(v6 + 104))(v8, *MEMORY[0x277D681D0], v5);
  sub_26BA9B47C();
  sub_26BA3EF64(0, &qword_280435D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D28);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26BA9DBE0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_26BA5377C();
  *(v15 + 32) = 0x696669746E656469;
  *(v15 + 40) = 0xEA00000000007265;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v16 = sub_26BA9AD5C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26BA9D660;
  (*(v17 + 16))(v19 + v18, v37, v16);
  *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CB0);
  *(v15 + 104) = sub_26BA537D0(&qword_280435D38, &qword_280435CB0);
  *(v15 + 72) = v19;
  sub_26BA9B91C();
  sub_26BA9B48C();
  (*(v6 + 16))(v8, v40, v34);
  sub_26BA9B45C();
  v20 = v41;
  sub_26BA9B3BC();
  if (v20)
  {
    return (*(v36 + 8))(v13, v38);
  }

  v22 = v36;
  v23 = v38;
  v24 = v32;
  sub_26BA53FB8(&qword_280435D40, MEMORY[0x277D68188]);
  result = sub_26BA9B7AC();
  if (result < 0 || (result & 0x4000000000000000) != 0)
  {
    v29 = result;
    v30 = sub_26BA9BDBC();
    result = v29;
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_11:

    v28 = *v24;
    *v24 = 0;
    goto LABEL_12;
  }

  if (!*(result + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26D68B2E0](0, result);
  }

  else
  {
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    v25 = *(result + 32);
  }

  v26 = v25;

  v27 = *v24;
  *v24 = v26;
  v28 = v26;

  sub_26BA454DC(v28);
LABEL_12:

  return (*(v22 + 8))(v13, v23);
}

uint64_t sub_26BA4A070(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = v2;
  v22 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C90);
  MEMORY[0x28223BE20](v25);
  v26 = (&v22 - v4);
  v5 = sub_26BA9B2EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_26BA9B42C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D68198], v9);
  sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  v13 = v12;
  sub_26BA9B7CC();
  (*(v10 + 8))(v12, v9);
  if (v28 != v27)
  {
    sub_26BA52A80();
    swift_allocError();
    swift_willThrow();
    return v13;
  }

  v14 = *(v3 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v8 = v14;
  (*(v6 + 104))(v8, *MEMORY[0x277D851F0], v5);
  v13 = v14;
  LOBYTE(v14) = sub_26BA9B30C();
  result = (*(v6 + 8))(v8, v5);
  if (v14)
  {
    MEMORY[0x28223BE20](result);
    v16 = v23;
    v17 = v24;
    *(&v22 - 2) = v3;
    *(&v22 - 1) = v16;
    v19 = v25;
    v18 = v26;
    sub_26BA9BA1C();
    if (!v17)
    {
      v13 = *v18;
      v20 = *(v19 + 48);
      v21 = sub_26BA9AD5C();
      (*(*(v21 - 8) + 32))(v22, v18 + v20, v21);
    }

    return v13;
  }

  __break(1u);
  return result;
}

void *sub_26BA4A400@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v101 = a1;
  v95 = a2;
  v94 = sub_26BA9B42C();
  v98 = *(v94 - 8);
  v3 = MEMORY[0x28223BE20](v94);
  v102 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v76 - v5;
  v83 = sub_26BA9B40C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v103 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D10);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v76 - v8;
  v9 = sub_26BA9B3EC();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_26BA9B46C();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D18);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v76 - v13;
  v14 = sub_26BA9B49C();
  v91 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v99 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26BA9B36C();
  v85 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - v19;
  v21 = sub_26BA9AD5C();
  v100 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  result = sub_26BA9B31C();
  if (v2)
  {
    return result;
  }

  v28 = result;
  v78 = v26;
  v79 = v20;
  v80 = v14;
  v101 = 0;
  sub_26BA454DC(result);
  v29 = [v28 respondsToSelector_];
  v30 = v93;
  v31 = v94;
  v32 = v100;
  v33 = v92;
  if (v29)
  {
    v29 = [v28 performSelector_];
    if (v29)
    {
      v105 = swift_unknownObjectRetain();
      v34 = v79;
      v35 = swift_dynamicCast();
      v36 = v32[7];
      if (v35)
      {
        v36(v34, 0, 1, v21);
        v37 = v32[4];
        v38 = v78;
        v37(v78, v34, v21);
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C90) + 48);
        v40 = v95;
        *v95 = v28;
        return (v37)(v40 + v39, v38, v21);
      }

      v36(v34, 1, 1, v21);
      v29 = sub_26BA3E6F8(v34, &qword_280435B08);
    }
  }

  MEMORY[0x26D68AA00](v29);
  v79 = static TempStickerURIHelpers_Staging107211449.uri(identifier:)();
  v81 = v28;
  v42 = v41;
  v43 = v32[1];
  v77 = v24;
  v78 = v21;
  v100 = v32 + 1;
  v76 = v43;
  v43(v24, v21);
  (*(v85 + 104))(v17, *MEMORY[0x277D68180], v33);
  sub_26BA9B3CC();
  swift_allocObject();
  v44 = sub_26BA9B35C();
  v45 = v98;
  (*(v98 + 56))(v86, 1, 1, v31);
  (*(v87 + 104))(v88, *MEMORY[0x277D681D0], v89);
  sub_26BA9B47C();
  sub_26BA3EF64(0, &qword_280435D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435D28);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26BA9DBE0;
  v47 = MEMORY[0x277D837D0];
  *(v46 + 56) = MEMORY[0x277D837D0];
  v48 = sub_26BA5377C();
  *(v46 + 32) = 0x6C616E7265747865;
  *(v46 + 40) = 0xEB00000000495255;
  *(v46 + 96) = v47;
  *(v46 + 104) = v48;
  v49 = v79;
  *(v46 + 64) = v48;
  *(v46 + 72) = v49;
  *(v46 + 80) = v42;
  sub_26BA9B91C();
  sub_26BA9B48C();
  v50 = v90;
  v92 = v44;
  v51 = v101;
  sub_26BA9B3BC();
  v52 = MEMORY[0x277D681A0];
  if (v51)
  {

    (*(v96 + 56))(v50, 1, 1, v97);
    sub_26BA3E6F8(v50, &qword_280435D10);
    v101 = 0;
LABEL_14:
    (*(v45 + 104))(v30, *v52, v31);
    sub_26BA9B56C();
    sub_26BA9B5AC();
    sub_26BA9B60C();
    v63 = v77;
    MEMORY[0x26D68AA00]();
    static TempStickerURIHelpers_Staging107211449.uri(identifier:)();
    v76(v63, v78);
    v64 = objc_allocWithZone(sub_26BA9B61C());
    v65 = sub_26BA9B5BC();
    if (qword_280437018 != -1)
    {
      swift_once();
    }

    v66 = v101;
    v67 = sub_26BA4B108(v65);
    v68 = v95;
    v69 = v91;
    if (v66)
    {
      (*(v91 + 8))(v99, v80);
    }

    else
    {
      v70 = v67;
      v71 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C90);
      v72 = v81;
      *v68 = v81;
      v73 = v72;
      MEMORY[0x26D68AA00]();

      return (*(v69 + 8))(v99, v71);
    }
  }

  v101 = 0;
  v54 = v96;
  v53 = v97;
  (*(v96 + 56))(v50, 0, 1, v97);
  (*(v54 + 32))(v84, v50, v53);
  v55 = v103;
  sub_26BA9B3DC();
  v56 = sub_26BA9B3FC();
  if (!v56)
  {
LABEL_13:
    (*(v82 + 8))(v55, v83);
    (*(v96 + 8))(v84, v97);
    v45 = v98;
    v52 = MEMORY[0x277D681A0];
    goto LABEL_14;
  }

  v57 = v56;
  v58 = *MEMORY[0x277D681A0];
  v59 = (v98 + 104);
  v60 = (v98 + 8);
  while (1)
  {
    sub_26BA9B5CC();
    v61 = v102;
    (*v59)(v102, v58, v31);
    sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
    sub_26BA9B7CC();
    sub_26BA9B7CC();
    v62 = *v60;
    (*v60)(v61, v31);
    v62(v30, v31);
    if (v105 == v104)
    {
      break;
    }

    v55 = v103;
    v57 = sub_26BA9B3FC();
    if (!v57)
    {
      goto LABEL_13;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435C90);
  v74 = v81;
  *v95 = v81;
  v75 = v74;
  MEMORY[0x26D68AA00]();

  (*(v82 + 8))(v103, v83);
  (*(v96 + 8))(v84, v97);
  return (*(v91 + 8))(v99, v80);
}

uint64_t sub_26BA4B108(uint64_t a1)
{
  v18 = a1;
  v2 = v1;
  v3 = sub_26BA9B2EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26BA9B42C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D681A0], v7);
  sub_26BA53FB8(&qword_280435C60, MEMORY[0x277D681A8]);
  sub_26BA9B7CC();
  sub_26BA9B7CC();
  (*(v8 + 8))(v10, v7);
  if (v21 == v20)
  {
    v11 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
    *v6 = v11;
    (*(v4 + 104))(v6, *MEMORY[0x277D851F0], v3);
    v12 = v11;
    v13 = sub_26BA9B30C();
    result = (*(v4 + 8))(v6, v3);
    if (v13)
    {
      MEMORY[0x28223BE20](result);
      v15 = v18;
      *(&v17 - 2) = v2;
      *(&v17 - 1) = v15;
      sub_26BA9B61C();
      v16 = v19;
      result = sub_26BA9BA1C();
      if (!v16)
      {
        return v21;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_26BA52A80();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BA4B400(uint64_t a1)
{
  v3 = sub_26BA9B2EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D851F0], v3);
  v7;
  v8 = sub_26BA9B30C();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    MEMORY[0x28223BE20](result);
    *(&v10 - 2) = v1;
    *(&v10 - 1) = a1;
    return sub_26BA9BA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA4B57C(uint64_t a1, uint64_t a2)
{
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26BA9B33C();
  if (!v2)
  {
    v19[1] = 0;
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
      v20 = *(v6 + 16);
      v21 = v6 + 16;
      v12 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v22 = *(v6 + 72);
      v13 = (v6 + 8);
      v20(v8, v12, v5);
      while (1)
      {
        swift_beginAccess();
        v14 = sub_26BA4F454(v8);
        if (v15)
        {
          v16 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = *(a1 + v11);
          v23 = v18;
          *(a1 + v11) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_26BA4FF9C();
            v18 = v23;
          }

          (*v13)((*(v18 + 48) + v16 * v22), v5);

          sub_26BA50B18(v16, v18);
          *(a1 + v11) = v18;
        }

        swift_endAccess();
        result = (*v13)(v8, v5);
        v12 += v22;
        if (!--v10)
        {
          break;
        }

        v20(v8, v12, v5);
      }
    }
  }

  return result;
}

uint64_t sub_26BA4B77C(uint64_t a1, uint64_t a2)
{
  v5 = sub_26BA9B2EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D851F0], v5);
  v9;
  v10 = sub_26BA9B30C();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    MEMORY[0x28223BE20](result);
    v12[-4] = v2;
    v12[-3] = a1;
    v12[-2] = a2;
    return sub_26BA9BA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA4B908(void *a1)
{
  v21 = *v1;
  v27 = sub_26BA9B28C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26BA9B2BC();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BA9B2EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D851F0], v7);
  v11;
  LOBYTE(v11) = sub_26BA9B30C();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    MEMORY[0x28223BE20](result);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = a1;
    result = sub_26BA9BA1C();
    if (!v2)
    {
      sub_26BA3EF64(0, &qword_280435B58);
      v13 = sub_26BA9BA0C();
      v14 = swift_allocObject();
      v15 = v21;
      *(v14 + 16) = a1;
      *(v14 + 24) = v15;
      aBlock[4] = sub_26BA52BA0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BA3D478;
      aBlock[3] = &block_descriptor_57;
      v16 = _Block_copy(aBlock);
      v17 = a1;

      sub_26BA9B2AC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26BA53FB8(&qword_280435E00, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B60);
      sub_26BA537D0(&qword_280435E10, &qword_280435B60);
      v18 = v23;
      v19 = v27;
      sub_26BA9BC5C();
      MEMORY[0x26D68AFF0](0, v6, v18, v16);
      _Block_release(v16);

      (*(v25 + 8))(v18, v19);
      return (*(v22 + 8))(v6, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BA4BD84(void *a1)
{
  v2 = sub_26BA9ABAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280437010 != -1)
  {
    swift_once();
  }

  v6 = qword_2804385E8;
  v14 = 0u;
  v15 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BA9D660;
  v13[1] = 0xD000000000000019;
  v13[2] = 0x800000026BA9F940;
  v8 = v6;
  sub_26BA9BC9C();
  *(inited + 96) = sub_26BA9B61C();
  *(inited + 72) = a1;
  v9 = a1;
  sub_26BA51EE8(inited);
  swift_setDeallocating();
  sub_26BA3E6F8(inited + 32, &qword_280435D00);
  sub_26BA9AB8C();
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_26BA9AB6C();
  [v10 postNotification_];

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26BA4BF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC10StickersUI16StickerDataCache_stickerCache;
  swift_beginAccess();
  v3 = *(v0 + v2);

  [v1 unlock];
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_26BA4CA70(*(v3 + 16), 0);
  v6 = *(sub_26BA9AD5C() - 8);
  v7 = sub_26BA50874(&v9, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);

  sub_26BA35454();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  (*(*v0 + 600))(v5);
}

id sub_26BA4C114(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickersUI16StickerDataCache_lock);
  [v3 lock];
  sub_26BA4C1AC(a1, v1);

  return [v3 unlock];
}

uint64_t sub_26BA4C1AC(uint64_t a1, uint64_t a2)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280435E50);
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v30 - v5;
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  v43 = a2;
  v41 = OBJC_IVAR____TtC10StickersUI16StickerDataCache__currentSnapshot;
  swift_beginAccess();
  v39 = v12;
  if (v12)
  {
    v13 = 0;
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v44 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v35 = a1 + v44;
    v36 = v15;
    v16 = *(v14 + 56);
    v33 = (v4 + 8);
    v34 = (v4 + 16);
    v31 = (v14 - 8);
    v32 = (v14 + 16);
    v17 = MEMORY[0x277D84F90];
    v37 = v14;
    v15(v11, a1 + v44, v6);
    while (1)
    {
      v46 = v13 + 1;
      v18 = v42;
      v19 = v40;
      (*v34)(v40, v43 + v41, v42);
      v20 = sub_26BA9B08C();
      (*v33)(v19, v18);
      v21 = v20 + v44;
      v22 = *(v20 + 16) + 1;
      do
      {
        if (!--v22)
        {

          (*v31)(v11, v6);
          goto LABEL_4;
        }

        sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
        v21 += v16;
      }

      while ((sub_26BA9B67C() & 1) == 0);

      v23 = *v32;
      (*v32)(v38, v11, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BA4F7B8(0, *(v17 + 16) + 1, 1);
        v17 = v45[0];
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_26BA4F7B8(v25 > 1, v26 + 1, 1);
        v17 = v45[0];
      }

      *(v17 + 16) = v26 + 1;
      v23((v17 + v44 + v26 * v16), v38, v6);
LABEL_4:
      v13 = v46;
      if (v46 == v39)
      {
        break;
      }

      v36(v11, v35 + v16 * v46, v6);
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (!*(v17 + 16))
  {
  }

  v45[0] = MEMORY[0x277D84FA0];
  sub_26BA52024(v17, v45);

  v27 = v43;
  swift_beginAccess();
  sub_26BA9B0AC();
  swift_endAccess();

  return (*(*v27 + 472))(v28);
}

uint64_t sub_26BA4C638(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_26BA9B90C();
  v9 = sub_26BA9B8FC();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_26BA4C78C()
{
  v0 = sub_26BA9AD5C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  MEMORY[0x26D68AA00](v5);
  v8 = sub_26BA4CBF4(v7, v4);
  (*(v1 + 8))(v7, v0);
  return v8 & 1;
}

size_t sub_26BA4C898(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v10 = *(sub_26BA9AD5C() - 8);
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
  v15 = *(sub_26BA9AD5C() - 8);
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

size_t sub_26BA4CA70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v4 = *(sub_26BA9AD5C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26BA4CB6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435DD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_26BA4CBF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  v33 = a2;
  v11 = sub_26BA9B64C();
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
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v21 = sub_26BA9B67C();
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
    sub_26BA4F1B0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26BA4CED4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_26BA3E6F8(v5, &qword_280435B08))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_26BA4DB54(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BA4D0F0(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v64 - v9);
  v11 = sub_26BA9AD5C();
  v12 = MEMORY[0x28223BE20](v11);
  v84 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v64 - v15);
  MEMORY[0x28223BE20](v14);
  v79 = (&v64 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v65 = v10;
  v67 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v78 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v86 = (v22 & v19);
  v71 = (63 - v21) >> 6;
  v85 = v17 + 16;
  v76 = (v17 + 48);
  v77 = (v17 + 56);
  v75 = (v17 + 32);
  v81 = (a2 + 56);
  v66 = v17;
  v87 = (v17 + 8);

  v24 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v86;
    v26 = v24;
    if (v86)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v71 <= (v24 + 1) ? v24 + 1 : v71;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v71)
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
      v30 = v65;
    }

    v73 = *v77;
    v73(v30, v31, 1, v11);
    v88 = a1;
    v89 = v20;
    v90 = v78;
    v91 = v28;
    v92 = v2;
    v72 = *v76;
    if (v72(v30, 1, v11) == 1)
    {
      sub_26BA3E6F8(v30, &qword_280435B08);
      goto LABEL_52;
    }

    v70 = *v75;
    v70(v79, v30, v11);
    v69 = sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
    v32 = sub_26BA9B64C();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v11);
LABEL_22:
    v24 = v28;
    v86 = v2;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v33;
  v34 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v34;
  while (1)
  {
    v82(v16, *(a2 + 48) + v83 * v24, v11);
    v35 = sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
    v36 = sub_26BA9B67C();
    v86 = *v87;
    v86(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v80;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v81[v24 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v11);
      goto LABEL_22;
    }
  }

  v80 = v35;
  v37 = (v86)(v79, v11);
  v38 = *(a2 + 32);
  v64 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v64;
  a1 = v68;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x28223BE20](v37);
    v40 = &v64 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v81, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v79 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v67;
    v44 = i;
    v45 = v71;
LABEL_26:
    v66 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v82(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v83, v11);
      v50 = 0;
LABEL_39:
      v73(v24, v50, 1, v11);
      v88 = a1;
      v89 = v44;
      v90 = v78;
      v91 = v28;
      v92 = v2;
      if (v72(v24, 1, v11) == 1)
      {
        sub_26BA3E6F8(v24, &qword_280435B08);
        a2 = sub_26BA4E62C(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v24, v11);
      v51 = sub_26BA9B64C();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v81[v54 >> 6]) != 0)
      {
        v82(v16, *(v52 + 48) + v54 * v83, v11);
        v55 = sub_26BA9B67C();
        v86(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v81[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v16, *(v52 + 48) + v54 * v83, v11);
            v57 = sub_26BA9B67C();
            v86(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v86(v84, v11);
        v58 = v79[v26];
        v79[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
        if ((v58 & v20) != 0)
        {
          v43 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
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
        v86(v84, v11);
        a2 = v52;
        a1 = v68;
        v24 = v67;
        v44 = i;
        v45 = v71;
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

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_26BA4E158(v63, v64, v79, v24, &v88);

  MEMORY[0x26D68BFB0](v63, -1, -1);
LABEL_52:
  sub_26BA35454();
  return a2;
}

uint64_t sub_26BA4DB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  v31 = a1;
  v10 = sub_26BA9B64C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v19 = sub_26BA9B67C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BA4E954();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_26BA4EEA8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_26BA4DDFC()
{
  v1 = v0;
  v35 = sub_26BA9AD5C();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CD8);
  result = sub_26BA9BCBC();
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
      sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
      result = sub_26BA9B64C();
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

uint64_t sub_26BA4E158(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_26BA9AD5C();
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
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
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
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
          sub_26BA3E6F8(v11, &qword_280435B08);
          v45 = v61;

          return sub_26BA4E62C(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
        v35 = sub_26BA9B64C();
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
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
        v43 = sub_26BA9B67C();
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

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_26BA4E62C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_26BA9AD5C();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CD8);
  result = sub_26BA9BCCC();
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
    sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
    result = sub_26BA9B64C();
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

void *sub_26BA4E954()
{
  v1 = v0;
  v2 = sub_26BA9AD5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CD8);
  v6 = *v0;
  v7 = sub_26BA9BCAC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_26BA4EB8C()
{
  v1 = v0;
  v32 = sub_26BA9AD5C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CD8);
  v6 = sub_26BA9BCBC();
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
      sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
      result = sub_26BA9B64C();
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

uint64_t sub_26BA4EEA8(int64_t a1)
{
  v3 = sub_26BA9AD5C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_26BA9BC6C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
        v24 = sub_26BA9B64C();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_26BA4F1B0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26BA9AD5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BA4DDFC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_26BA4E954();
      goto LABEL_12;
    }

    sub_26BA4EB8C();
  }

  v12 = *v3;
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  v13 = sub_26BA9B64C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v21 = sub_26BA9B67C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26BA9BE6C();
  __break(1u);
  return result;
}

unint64_t sub_26BA4F454(uint64_t a1)
{
  sub_26BA9AD5C();
  sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
  v2 = sub_26BA9B64C();

  return sub_26BA4F530(a1, v2);
}

unint64_t sub_26BA4F4EC(uint64_t a1)
{
  v2 = sub_26BA9BC7C();

  return sub_26BA4F6F0(a1, v2);
}

unint64_t sub_26BA4F530(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26BA9AD5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26BA53FB8(&qword_280435E40, MEMORY[0x277CC95F0]);
      v15 = sub_26BA9B67C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26BA4F6F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26BA536CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D68B250](v9, a1);
      sub_26BA53728(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_26BA4F7B8(size_t a1, int64_t a2, char a3)
{
  result = sub_26BA4F7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26BA4F7D8(size_t a1, int64_t a2, char a3)
{
  result = sub_26BA4F9D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26BA4F7F8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CF0);
  v10 = *(sub_26BA9AD5C() - 8);
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
  v15 = *(sub_26BA9AD5C() - 8);
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

size_t sub_26BA4F9D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CD0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC0) - 8);
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

uint64_t sub_26BA4FBC0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_26BA9AD5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC8);
  v39 = a2;
  result = sub_26BA9BDDC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
      result = sub_26BA9B64C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

char *sub_26BA4FF9C()
{
  v1 = v0;
  v31 = sub_26BA9AD5C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC8);
  v3 = *v0;
  v4 = sub_26BA9BDCC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26BA50210(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26BA9BDBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26BA9BDBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26BA537D0(&qword_280435CE8, &qword_280435CE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CE0);
            v9 = sub_26BA503B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26BA9B61C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26BA503B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D68B2E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26BA50434;
  }

  __break(1u);
  return result;
}

unint64_t *sub_26BA5043C(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_26BA538F8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_26BA504E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_26BA9AD5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280435CC8);
  result = sub_26BA9BDEC();
  v46 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = a4;
  v39 = v9 + 16;
  v45 = v9 + 32;
  v16 = v46 + 64;
  v37 = a1;
  v40 = v9;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v44 = *(v9 + 72);
    v22 = v41;
    (*(v9 + 16))(v41, v21 + v44 * v20, v8);
    v23 = *(a4[7] + 8 * v20);
    v43 = *(v9 + 32);
    v43(v47, v22, v8);
    v24 = v46;
    sub_26BA53FB8(&qword_280435C88, MEMORY[0x277CC95F0]);
    v25 = v23;
    result = sub_26BA9B64C();
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v9 = v40;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v9 = v40;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = v46;
    result = (v43)(*(v46 + 48) + v29 * v44, v47, v8);
    *(*(v34 + 56) + 8 * v29) = v25;
    ++*(v34 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v37;
    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v46;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v46;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
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

uint64_t sub_26BA50874(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26BA9AD5C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}