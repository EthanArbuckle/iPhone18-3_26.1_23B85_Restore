id sub_1891A576C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
    }

    while (Strong);
  }

  else
  {
    v3 = v1;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1891A2D60(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();

  while (v8)
  {
    v13 = v8;
    MEMORY[0x18CFE22D0](10, 0xE100000000000000);
    v14 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
    if (v14)
    {
      v9 = v14;
      v10 = sub_1891A2D60(v14);
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    MEMORY[0x18CFE22D0](v10, v12);

    v8 = swift_unknownObjectWeakLoadStrong();
  }

  return v6;
}

uint64_t sub_1891A59D0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1891A5A08(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  *(v1 + 16) = 0;
  *(v1 + 24) = [objc_allocWithZone(type metadata accessor for SheetDetentResolutionContext()) init];
  *(v1 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3F8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  v4 = sub_18A4A3228();
  sub_188A3F5FC(&v23, &qword_1EA93F3F0);
  *(v1 + 32) = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_18A4A3228();
  sub_188A3F5FC(&v23, &qword_1EA93F3F0);
  *(v1 + 36) = v5;
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  *(v1 + 40) = sub_18A4A3228();
  *&v23.top = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E0);
  *(v1 + 324) = sub_18A4A3228();
  swift_weakInit();
  swift_weakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  v6 = sub_18A4A3228();
  sub_188A3F5FC(&v23, &qword_1EA93F3C8);
  *(v1 + 332) = v6;
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  *(v1 + 336) = sub_18A4A3228();
  type metadata accessor for CGRect(0);
  memset(&v23, 0, sizeof(v23));
  *(v1 + 56) = sub_18A4A3228();
  type metadata accessor for CGSize(0);
  *&v23.top = 0uLL;
  *(v1 + 60) = sub_18A4A3228();
  v23 = UIEdgeInsetsZero;
  type metadata accessor for UIEdgeInsets(0);
  *(v1 + 64) = sub_18A4A3228();
  v7 = [objc_allocWithZone(UITraitCollection) init];
  *&v23.top = v7;
  sub_188A34624(0, &qword_1ED490410);
  v8 = sub_18A4A3228();

  *(v1 + 68) = v8;
  v23.top = 0.0;
  *(v1 + 72) = sub_18A4A3228();
  *&v23.top = [v22 defaultMode];
  type metadata accessor for _UISheetMode(0);
  *(v1 + 76) = sub_18A4A3228();
  v10 = *(MEMORY[0x1E695F050] + 8);
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
  v23.top = *MEMORY[0x1E695F050];
  top = v23.top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 80) = sub_18A4A3228();
  v23.top = 0.0;
  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  *(v1 + 84) = sub_18A4A3228();
  v23.top = 1.79769313e308;
  *(v1 + 88) = sub_18A4A3228();
  v23.top = 1.79769313e308;
  *(v1 + 92) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 96) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 100) = sub_18A4A3228();
  v23.top = top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 104) = sub_18A4A3228();
  v23.top = top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 108) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 112) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 116) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 120) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 124) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 128) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 132) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 136) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 140) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 144) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 148) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 152) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 156) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 160) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 164) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 168) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 172) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 176) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 180) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 184) = sub_18A4A3228();
  LOBYTE(v23.top) = UIAccessibilityIsReduceMotionEnabled();
  *(v1 + 188) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 192) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 196) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 200) = sub_18A4A3228();
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  *(v1 + 204) = sub_18A4A3228();
  v23.top = 0.0;
  *(v1 + 208) = sub_18A4A3228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64B710;
  *(v13 + 32) = [objc_opt_self() largeDetent];
  *&v23.top = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  v14 = sub_18A4A3228();

  *(v1 + 212) = v14;
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  *(v1 + 216) = sub_18A4A3228();
  v15 = [objc_opt_self() appearancePreferringDimmingVisible_];
  *&v23.top = v15;
  sub_188A34624(0, &qword_1EA930A70);
  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 220) = v13;
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  *(v1 + 224) = sub_18A4A3228();
  v23.top = 0.0;
  *(v1 + 228) = sub_18A4A3228();
  *&v23.top = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  *(v1 + 232) = sub_18A4A3228();
  *&v23.top = 0uLL;
  *(v1 + 236) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 240) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 244) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 248) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 252) = sub_18A4A3228();
  v23.top = 1.79769313e308;
  *(v1 + 256) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 260) = sub_18A4A3228();
  v23.top = 5.0;
  *(v1 + 264) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 268) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 272) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 276) = sub_18A4A3228();
  v23.top = top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 280) = sub_18A4A3228();
  v23.top = 1.79769313e308;
  *(v1 + 284) = sub_18A4A3228();
  v23.top = 1.79769313e308;
  *(v1 + 288) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 292) = sub_18A4A3228();
  LOBYTE(v23.top) = 1;
  *(v1 + 504) = sub_18A4A3228();
  [v22 preferredShadowOpacity];
  v23.top = v16;
  *(v1 + 296) = sub_18A4A3228();
  [v22 shadowRadius];
  v23.top = v17;
  *(v1 + 300) = sub_18A4A3228();
  v23.top = 0.0;
  *(v1 + 304) = sub_18A4A3228();
  v23.top = top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 308) = sub_18A4A3228();
  v23.top = top;
  v23.left = v10;
  v23.bottom = v11;
  v23.right = v12;
  *(v1 + 312) = sub_18A4A3228();
  v23.top = 0.0;
  *(v1 + 316) = sub_18A4A3228();
  LOBYTE(v23.top) = 0;
  *(v1 + 320) = sub_18A4A3228();
  v23.top = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  *(v1 + 328) = sub_18A4A3228();
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BA9B4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 340) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAA08();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 344) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAA5C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 348) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAAB0();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 352) = a1;
  *&v23.top = v3;
  sub_188AB3830();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  sub_1891BAB04();
  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 356) = a1;
  *&v23.top = v3;
  sub_188AB3830();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8);
  sub_1891BAB58();
  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 360) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BABAC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 364) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAC00();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 368) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAC54();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 372) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BACA8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 376) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BACFC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 384) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAD50();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 412) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BADA4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 380) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BADF8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 388) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAE4C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 392) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAEA0();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 396) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAEF4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 400) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAF48();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 404) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAF9C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 428) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BAFF0();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 432) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB044();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 408) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB098();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 416) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB0EC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 420) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB140();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 424) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB194();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 436) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB1E8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 440) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB23C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 444) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB290();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 448) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB2E4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 452) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB338();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 456) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB38C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 460) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB3E0();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 464) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB434();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 468) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  type metadata accessor for CGPoint(0);
  sub_1891BB488();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 472) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB4DC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 476) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB530();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 480) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB584();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 484) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB5D8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 488) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB62C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 492) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB680();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 496) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB6D4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 500) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB728();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 508) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB77C();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 512) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  type metadata accessor for _UISheetGrabberAction(0);
  sub_1891BB7D0();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 516) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB824();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 520) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB878();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 524) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB8CC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 528) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB920();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 532) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB974();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 536) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BB9C8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 540) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBA1C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 544) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  type metadata accessor for UIRectCornerRadii(0);
  sub_1891BBA70();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 552) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBAC4();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 548) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBB18();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 556) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  type metadata accessor for CGAffineTransform(0);
  sub_1891BBB6C();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 568) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBBC0();

  LODWORD(v13) = sub_18A4A3228();

  *(v1 + 560) = v13;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBC14();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 564) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBC68();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 572) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBCBC();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 576) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBD10();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 580) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBD64();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 584) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBDB8();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 588) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBE0C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 600) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBE60();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 604) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBEB4();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 608) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBF08();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 612) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBF5C();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 616) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BBFB0();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 592) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BC004();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 596) = a1;
  *&v23.top = v3;
  sub_188AB3830();
  sub_1891BC058();

  LODWORD(a1) = sub_18A4A3228();

  *(v1 + 620) = a1;
  v18 = *(v1 + 24);
  v19 = OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE28SheetDetentResolutionContext_attributes;
  swift_beginAccess();
  v20 = v18;

  swift_unownedRelease();
  *&v18[v19] = v1;
  swift_unownedRetain();
  swift_endAccess();

  swift_beginAccess();
  swift_unownedRelease();
  *(v3 + 16) = v1;
  swift_endAccess();
  swift_unownedRetain();

  return v1;
}

uint64_t sub_1891A8680(uint64_t a1)
{
  result = _UISolariumEnabled();
  if (result)
  {
    swift_beginAccess();
    v3 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v3)
    {
      sub_188A34624(0, &qword_1ED490410);
      v4 = *AGGraphGetValue();

      v5 = [v4 userInterfaceIdiom];

      return v5 != 6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1891A8738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A8680(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891A8770(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *AGGraphGetValue();

  if (v6)
  {
    goto LABEL_5;
  }

  v8 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v8)
  {
    v9 = *AGGraphGetValue();

    v7 = v9 ^ 1;
    return v7 & 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1891A886C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A8770(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891A889C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *AGGraphGetValue();

    v5 = 0;
    if (v4 != 1)
    {
      return v5 & 1;
    }

    v6 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v6)
    {
      v7 = *AGGraphGetValue();

      v5 = v7 ^ 1;
      return v5 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891A895C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A889C(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891A898C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = *AGGraphGetValue();

  if (v4)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v6 = *AGGraphGetValue();

  if (!v6)
  {
    return 0;
  }

  v7 = *AGGraphGetValue();

  return v7;
}

uint64_t sub_1891A8A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A898C(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891A8AC0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
    v5 = *AGGraphGetValue();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v6)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  Value = AGGraphGetValue();
  v9 = *Value;
  v8 = Value[1];

  if (v8)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_188C8D8B4(0, *(v5 + 2) + 1, 1, v5);
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v11 >= v10 >> 1)
    {
      v5 = sub_188C8D8B4((v10 > 1), v11 + 1, 1, v5);
    }

    *(v5 + 2) = v11 + 1;
    v12 = &v5[16 * v11];
    *(v12 + 4) = v9;
    *(v12 + 5) = v8;
  }

  return v5;
}

uint64_t sub_1891A8C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891A8AC0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1891A8C90(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v4 = *AGGraphGetValue();

  if (!v4)
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (*AGGraphGetValue() != 1)
  {

    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8);
  v5 = *AGGraphGetValue();
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);

  Value = AGGraphGetValue();
  v7 = Value[1];
  if (v7)
  {
    v8 = *Value;

    sub_188E719F8(&v9, v8, v7);

    return v10;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_1891A8E18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891A8C90(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1891A8E44(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8);
    v6 = *AGGraphGetValue();

    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
      v12 = v11;
LABEL_12:
      v13 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = v13[1];
      v9 &= v9 - 1;
      v18[0] = *v13;
      v18[1] = v14;
      MEMORY[0x1EEE9AC00](result);
      v17[2] = v18;

      v15 = sub_18919A34C(sub_1891BCEA8, v17, v4);

      if (v15)
      {
        v16 = 1;
LABEL_15:

        return v16;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v16 = 0;
        goto LABEL_15;
      }

      v9 = *(v6 + 56 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1891A9068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A8E44(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891A9098(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *AGGraphGetValue();

  if (v4)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *AGGraphGetValue();

  result = 0;
  if (v6 != 1)
  {
    return result;
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = *AGGraphGetValue();

  return v8 == 0.0;
}

uint64_t sub_1891A91A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891A9098(*v1);
  *a1 = result & 1;
  return result;
}

void sub_1891A91D0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  rect = *Value;
  v5 = *(Value + 16);
  v6 = *(Value + 24);

  v7 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v8 = *AGGraphGetValue();
  v9 = v8;

  if (v8)
  {
    [v9 _rectTuckedAgainstBoundingPathEdge_withSize_cornerRadii_minimumPadding_];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
  }

  v30.origin.x = v11;
  v30.origin.y = v13;
  v30.size.width = v15;
  v30.size.height = v17;
  if (!CGRectIsNull(v30))
  {
    v31.origin.x = v11;
    v31.origin.y = v13;
    v31.size.width = v15;
    v31.size.height = v17;
    CGRectGetMinX(v31);
    v32.origin.x = rect;
    v32.origin.y = v4;
    v32.size.width = v5;
    v32.size.height = v6;
    CGRectGetMinX(v32);
  }

  v18 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = *AGGraphGetValue();
  v20 = v19;

  if (v19)
  {
    [v20 _rectTuckedAgainstBoundingPathEdge_withSize_cornerRadii_minimumPadding_];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v26 = *(MEMORY[0x1E695F050] + 16);
    v28 = *(MEMORY[0x1E695F050] + 24);
  }

  v33.origin.x = v22;
  v33.origin.y = v24;
  v33.size.width = v26;
  v33.size.height = v28;
  if (!CGRectIsNull(v33))
  {
    v34.origin.x = rect;
    v34.origin.y = v4;
    v34.size.width = v5;
    v34.size.height = v6;
    CGRectGetMaxX(v34);
    v35.origin.x = v22;
    v35.origin.y = v24;
    v35.size.width = v26;
    v35.size.height = v28;
    CGRectGetMaxX(v35);
  }
}

void sub_1891A946C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for UIEdgeInsets(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];

  v7 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_188A34624(0, &qword_1ED490410);
  v8 = *AGGraphGetValue();

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  AGGraphGetValue();

  v10 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  AGGraphGetValue();

  v11 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *AGGraphGetValue();

  v13 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v13)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  AGGraphGetValue();

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  AGGraphGetValue();

  v15 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v15)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v16 = *(v15 + 48);

  v17 = [v8 horizontalSizeClass];
  v18 = [v8 verticalSizeClass];
  [v16 minimumSidePadding];
  if (v4 > v6)
  {
    v19 = v4;
  }

  else
  {
    v19 = v6;
  }

  if (v18 == 1)
  {
    if (v5 > 0.0)
    {
      v20 = v12;
    }

    else
    {
      v20 = 0;
    }

    if ((v20 & 1) == 0)
    {
      [v16 topOffsetInCompactHeight];
    }
  }

  else if (v17 == 2 && v18 == 2)
  {
    [v16 topOffset];
  }

  else
  {
    v21 = objc_opt_self();
    v22 = [v21 currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (!v23)
    {
      [v21 _hasHomeButton];
    }

    [v16 topOffset];
  }
}

void sub_1891A98A0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = *AGGraphGetValue();

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v3 != 1)
  {
    if (v4)
    {
      type metadata accessor for UIEdgeInsets(0);
      AGGraphGetValue();

      return;
    }

    goto LABEL_35;
  }

  if (!v4)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  type metadata accessor for UIEdgeInsets(0);
  v5 = *(AGGraphGetValue() + 8);

  v6 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_188A34624(0, &qword_1ED490410);
  v7 = *AGGraphGetValue();

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  AGGraphGetValue();

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  AGGraphGetValue();

  v10 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = *AGGraphGetValue();

  v12 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  AGGraphGetValue();

  v13 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v13)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = *AGGraphGetValue();

  v15 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v15)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v16 = *(v15 + 48);

  v17 = [v7 horizontalSizeClass];
  v18 = [v7 verticalSizeClass];
  if (v14)
  {
    if (v18 == 1)
    {
      if (v5 > 0.0)
      {
        v19 = v11;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
LABEL_17:

        return;
      }

      goto LABEL_30;
    }
  }

  else if (v18 == 1)
  {
    if (v5 > 0.0)
    {
      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      goto LABEL_17;
    }

LABEL_30:
    [v16 topOffsetInCompactHeight];

    return;
  }

  if (v17 != 2 || v18 != 2)
  {
    v21 = objc_opt_self();
    v22 = [v21 currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (!v23)
    {
      [v21 _hasHomeButton];
    }
  }

  [v16 topOffset];
}

void sub_1891A9D68()
{
  v0 = objc_opt_self();
  v1 = @"UICTFontTextStyleBody";
  v2 = [v0 defaultFontForTextStyle_];

  v3 = __UIViewReadableWidthForFont(v2);
  qword_1EA93F218 = *&v3;
}

void sub_1891A9DEC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for _UISheetMode(0);
  v3 = *AGGraphGetValue();

  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (v4)
      {
        v5 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
        AGGraphGetValue();
        Strong = swift_unknownObjectWeakLoadStrong();

        v7 = [Strong view];

        if (qword_1EA931FD0 != -1)
        {
          swift_once();
        }

        [v5 _boundsWidthWithMinimumHorizontalContentMarginForView_preservingContentWidth_];

        v8 = __UIViewReadableWidthForBodyFont();
        v9 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (v9)
        {
          AGGraphGetValue();
          v10 = swift_unknownObjectWeakLoadStrong();

          v11 = [v10 view];

          [v5 _boundsWidthWithMinimumHorizontalContentMarginForView_preservingContentWidth_];
          v12 = *(a1 + 16);
          swift_unownedRetainStrong();
          if (v12)
          {
            type metadata accessor for CGRect(0);
            Value = AGGraphGetValue();
            v14 = *Value;
            v15 = *(Value + 8);
            v16 = *(Value + 16);
            v17 = *(Value + 24);

            v34.origin.x = v14;
            v34.origin.y = v15;
            v34.size.width = v16;
            v34.size.height = v17;
            CGRectGetHeight(v34);
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_18:
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6AA5C0);
    v33 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (v33)
    {
LABEL_27:
      AGGraphGetValue();

      sub_18A4A82D8();
      sub_18A4A8398();
      __break(1u);
      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  v19 = swift_unknownObjectWeakLoadStrong();

  if (v19)
  {
    v20 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (v20)
    {
      type metadata accessor for CGRect(0);
      v21 = AGGraphGetValue();
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);

      v24 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (v24)
      {
        AGGraphGetValue();
        v25 = swift_unknownObjectWeakLoadStrong();

        v26 = _UISheetContentContainerSize(v25, v19, v22, v23);
        v28 = v27;

        v29 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (v29)
        {
          type metadata accessor for CGSize(0);
          v30 = AGGraphGetValue();
          v31 = *v30;
          v32 = v30[1];

          [v19 _formSheetSizeForWindowWithSize_screenSize_];

          return;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

void sub_1891AA270(void *a1@<X8>)
{
  sub_1891A9DEC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void sub_1891AA29C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v3)
  {
    goto LABEL_42;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  v8 = Value[2];
  v7 = Value[3];

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(AGGraphGetValue() + 8);

  v11 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v11)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v12 = *AGGraphGetValue();

  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  if (v12 == 1)
  {
    MaxY = CGRectGetMaxY(*&v13);
  }

  else
  {
    MaxY = CGRectGetMinY(*&v13);
  }

  v18 = MaxY;
  v19 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v19)
  {
    goto LABEL_45;
  }

  sub_188A34624(0, &qword_1ED490410);
  v20 = *AGGraphGetValue();

  [v20 displayScale];
  v22 = v21;

  v23 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v24 = sub_188E4B080(0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v24 = *(v10 + 32);
  }

  v25 = v24;
  v1 = &selRef__updateSingleLayerNoMaskFromLayerStack;
  [v24 _value];
  v27 = v26;

  UIRoundToScale(v27, v22);
  v29 = v28;
  UIRoundToScale(v18, v22);
  if (v29 > v30)
  {
    v31 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v31)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v32 = *AGGraphGetValue();

    if (v32 != 1)
    {
      goto LABEL_18;
    }
  }

  if (v10 >> 62)
  {
LABEL_24:
    if (sub_18A4A7F68() >= 2)
    {
      goto LABEL_16;
    }

LABEL_25:
    v37 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v37)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v36 = *AGGraphGetValue();

    goto LABEL_27;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v23)
  {
    v33 = sub_188E4B080(1uLL, v10);
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v10 + 40);
  }

  v34 = v33;
  [v33 v1[466]];
  v36 = v35;

LABEL_27:
  v38 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v38)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for CGPoint(0);
  v39 = *(AGGraphGetValue() + 8);

  v40 = _UIUnlerp(v39, v36, v18);
  _UIClamp_2(v40);
  v41 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v41)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v42 = *(AGGraphGetValue() + 56);

  if (v42 < 2)
  {
LABEL_18:

    return;
  }

  if (v23)
  {
    v43 = sub_188E4B080(1uLL, v10);
    goto LABEL_35;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    goto LABEL_41;
  }

  v43 = *(v10 + 40);
LABEL_35:
  v44 = v43;

  [v44 v1[466]];
  v46 = v45;

  UIRoundToScale(v46, v22);
  v48 = v47;
  UIRoundToScale(v18, v22);
  v50 = v49;
  v51 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v48 == v50)
  {
    if (v51)
    {
      AGGraphGetValue();

      return;
    }

    goto LABEL_50;
  }

  if (v51)
  {
    v52 = *(AGGraphGetValue() + 8);

    v53 = _UIUnlerp(v52, v46, v18);
    _UIClamp_2(v53);
    return;
  }

LABEL_51:
  __break(1u);
}

void sub_1891AA750(void *a1@<X8>)
{
  sub_1891AA29C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1891AA77C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *AGGraphGetValue();

    v5 = 0;
    if (v4 != 1)
    {
      return v5;
    }

    v6 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v6)
    {
      v5 = *AGGraphGetValue();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891AA838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AA77C(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AA868(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
    v4 = *AGGraphGetValue();

    if (v4)
    {
      AGGraphGetValue();
      AGGraphGetValue();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1891AA960@<X0>(void *a1@<X8>)
{
  result = sub_1891AA868(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_1891AA98C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
    return result;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *AGGraphGetValue();

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v8 == 1 && v6 == 0)
  {
    if (v9)
    {
      AGGraphGetValue();
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = *AGGraphGetValue();

  if (v11 != 1)
  {
  }

  if (v6)
  {
    AGGraphGetValue();
    v12 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v12)
    {
      v13 = *AGGraphGetValue();

      if (v13)
      {
      }

      v14 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (v14)
      {
        AGGraphGetValue();
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1891AABB4@<X0>(void *a1@<X8>)
{
  result = sub_1891AA98C(*v1);
  *a1 = v4;
  return result;
}

double sub_1891AABE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  if (!swift_weakLoadStrong())
  {
    return *AGGraphGetValue();
  }

  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t sub_1891AAC7C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
    return result;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    type metadata accessor for CGRect(0);
    v16 = *AGGraphGetValue();
    IsNull = CGRectIsNull(v16);

    if (IsNull)
    {
      v7 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (!v7)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v8 = *AGGraphGetValue();
      goto LABEL_11;
    }
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = sub_1891AAEC4();
LABEL_11:

  v10 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = *AGGraphGetValue();

  if (((v11 == 0.0) & v8) == 1)
  {
    v12 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v12)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 = *AGGraphGetValue();

    if ((v13 & 1) == 0)
    {
      v15 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (v15)
      {
        sub_1891AABE0();
      }

      goto LABEL_27;
    }
  }

  v14 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  AGGraphGetValue();
}

uint64_t sub_1891AAEC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  if (Strong)
  {
  }

  v10 = *AGGraphGetValue();
  v7 = *(v0 + 48);
  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  if (CGRectEqualToRect(v9, v10))
  {
    return 1;
  }

  else
  {
    return [v7 alwaysStacksWithChild];
  }
}

uint64_t sub_1891AAFC0@<X0>(void *a1@<X8>)
{
  result = sub_1891AAC7C(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_1891AAFEC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *AGGraphGetValue();

  if (v4 == 1)
  {
    v5 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v5)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v6 = *AGGraphGetValue();

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *(v7 + 48);

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v10 = *AGGraphGetValue();
  v11 = v10;

  if (!v10)
  {
    v11 = [objc_allocWithZone(UIView) init];
  }

  v12 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v12)
  {
    goto LABEL_25;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = Value[1];
  v16 = Value[2];
  v17 = Value[3];

  v18 = [v8 shouldScaleDownBehindDescendantsForContainer:v11 withBounds:{v14, v15, v16, v17}];

  v19 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v19)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_188A34624(0, &qword_1ED490410);
  v20 = *AGGraphGetValue();

  v21 = [v20 userInterfaceIdiom];

  v22 = 0;
  if (v21 != 6)
  {
    v23 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v23)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = *AGGraphGetValue();
  }

  v24 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v24)
  {
    goto LABEL_27;
  }

  v25 = *AGGraphGetValue();

  if (v22 & 1 | ((v25 & 1) == 0))
  {
    return 0;
  }

  if (v18)
  {
LABEL_20:
    v28 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v28)
    {
      v29 = *AGGraphGetValue();

      v30 = [v29 verticalSizeClass];

      return v30 != 1;
    }

    goto LABEL_30;
  }

  v26 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v26)
  {
    v27 = *AGGraphGetValue();

    if (v27)
    {
      return 0;
    }

    goto LABEL_20;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1891AB34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AAFEC(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AB37C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_188A34624(0, &qword_1ED490410);
  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = *AGGraphGetValue();

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v7)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = *(v7 + 48);

    v9 = [v8 supportsEdgeAttachedForTraitCollection_];

    if (!v9)
    {
LABEL_23:

      return 0;
    }
  }

  v10 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = *AGGraphGetValue();

  if (v11 == 1)
  {
LABEL_18:

    return 1;
  }

  v12 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = *AGGraphGetValue();

  if (v13 == 1)
  {
    goto LABEL_18;
  }

  v14 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for UIEdgeInsets(0);
  Value = AGGraphGetValue();
  v16 = *(Value + 8);
  v17 = *(Value + 24);

  v18 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for CGRect(0);
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);

  v31.origin.x = v20;
  v31.origin.y = v21;
  v31.size.width = v22;
  v31.size.height = v23;
  Width = CGRectGetWidth(v31);
  v25 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for CGSize(0);
  v26 = *AGGraphGetValue();

  if (Width - v16 - v17 < v26)
  {
    goto LABEL_18;
  }

  if ([v4 verticalSizeClass] != 1)
  {
    goto LABEL_17;
  }

  v27 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = *AGGraphGetValue();

  if (v28 == 1)
  {
    goto LABEL_23;
  }

LABEL_17:
  if ([v4 horizontalSizeClass] == 1)
  {
    goto LABEL_18;
  }

  if ([v4 verticalSizeClass] != 1)
  {
    goto LABEL_23;
  }

  v29 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v29)
  {
    v30 = *AGGraphGetValue();

    return (v30 & 1) == 0;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1891AB6E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AB37C(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AB718(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
    v4 = *AGGraphGetValue();

    if (!v4)
    {
      v7 = 0;
      return v7 & 1;
    }

    v5 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v5)
    {
      v6 = *AGGraphGetValue();

      v7 = v6 ^ 1;
      return v7 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891AB7E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AB718(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AB810(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *AGGraphGetValue();

    v5 = 0;
    if (v4 != 1)
    {
      return v5 & 1;
    }

    v6 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v6)
    {
      v7 = *AGGraphGetValue();

      v5 = v7 ^ 1;
      return v5 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891AB8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AB810(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AB900(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *AGGraphGetValue();

  v5 = 0;
  if (v4)
  {
LABEL_5:
    v7 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v7)
    {
      v8 = *AGGraphGetValue();

      return v5 & ~v8 & 1;
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v6)
  {
    v5 = *AGGraphGetValue();

    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1891AB9F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AB900(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891ABA20(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_188A34624(0, &qword_1ED490410);
  v4 = *AGGraphGetValue();

  if ([v4 verticalSizeClass] != 1)
  {
LABEL_5:

    v7 = 0;
    return v7 & 1;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *AGGraphGetValue();

  if (v6)
  {
    goto LABEL_5;
  }

  if ([v4 horizontalSizeClass] == 1)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v8)
  {
    v9 = *AGGraphGetValue();

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v10)
    {
      v11 = *AGGraphGetValue();

      v7 = v11 ^ 1;
      return v7 & 1;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1891ABBA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891ABA20(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891ABBD4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *AGGraphGetValue();

    if (v4)
    {
      return 1;
    }

    v6 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v6)
    {
      v5 = *AGGraphGetValue();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1891ABC90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891ABBD4(*v1);
  *a1 = result & 1;
  return result;
}

void sub_1891ABCC0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + 48);

  v4 = [v3 exclusivelyUsesZPositionForTransform];

  v5 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *AGGraphGetValue();

  if ((v6 | v4))
  {
    return;
  }

  v7 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *AGGraphGetValue();

  if (v8 != 1)
  {
    return;
  }

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = *AGGraphGetValue();

  _UIClamp_2(1.0 - v10);
}

uint64_t sub_1891ABE38(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v4 == 1)
  {
    if (v5)
    {
LABEL_8:
      type metadata accessor for CGRect(0);
      AGGraphGetValue();
    }

    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v6 = *AGGraphGetValue();

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1891ABFA4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v6 = *(Value + 24);

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v72 = *AGGraphGetValue();

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  type metadata accessor for UIEdgeInsets(0);
  v10 = AGGraphGetValue();
  v71 = *v10;
  v75 = *(v10 + 8);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  v13 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v13)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v73 = v12;
  v70 = v11;
  AGGraphGetValue();

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);

  v76.origin.x = v16;
  v76.origin.y = v17;
  v76.size.width = v18;
  v76.size.height = v19;
  if (!CGRectIsNull(v76))
  {
    Center = UIRectGetCenter(v16, v17, v18);
    MidY = v26;
    v23 = v6;
    goto LABEL_21;
  }

  v20 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v20)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v21 = *AGGraphGetValue();
  v22 = v21;

  v23 = v6;
  if (v21)
  {
    v24 = [v22 _shouldReverseLayoutDirection];
  }

  else
  {
    v24 = 0;
  }

  v28 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v28)
  {
    goto LABEL_62;
  }

  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v29 = *AGGraphGetValue();

  if (v29 != 2)
  {
    if (v29 != 1)
    {
      v79.origin.x = v4;
      v79.origin.y = v5;
      v79.size.width = v7;
      v79.size.height = v6;
      MidX = CGRectGetMidX(v79);
      goto LABEL_20;
    }

    if (v24)
    {
      goto LABEL_16;
    }

LABEL_18:
    v78.origin.x = v4;
    v78.origin.y = v5;
    v78.size.width = v7;
    v78.size.height = v6;
    MidX = CGRectGetMinX(v78);
    goto LABEL_20;
  }

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_16:
  v77.origin.x = v4;
  v77.origin.y = v5;
  v77.size.width = v7;
  v77.size.height = v6;
  MidX = CGRectGetMaxX(v77);
LABEL_20:
  Center = MidX;
  v80.origin.x = v4;
  v80.origin.y = v5;
  v80.size.width = v7;
  v80.size.height = v6;
  MidY = CGRectGetMidY(v80);
LABEL_21:
  v81.origin.x = v4;
  v81.origin.y = v5;
  v81.size.width = v7;
  v81.size.height = v23;
  Width = CGRectGetWidth(v81);
  v32 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v32)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v33 = Width - v75 - v73;
  v34 = *AGGraphGetValue();

  v35 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v34 == 1)
  {
    if (v35)
    {
      sub_188A34624(0, &qword_1ED490410);
      v36 = *AGGraphGetValue();

      v37 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (v37)
      {
        v38 = *AGGraphGetValue();

        v39 = Width - v75 - v73;
        if (v38 != 1 || [v36 horizontalSizeClass] == 1 && (v39 = Width - v75 - v73, objc_msgSend(v36, sel_verticalSizeClass) == 2))
        {
LABEL_30:

          if (v33 >= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = Width - v75 - v73;
          }

          _UIClamp_0(v75 + (v33 - (v33 - v41)) * 0.5, Center, v75 + (v33 + v33 - v41) * 0.5);
          return;
        }

        v40 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (v40)
        {
          type metadata accessor for CGSize(0);
          v39 = *AGGraphGetValue();

          goto LABEL_30;
        }

LABEL_70:
        __break(1u);
        return;
      }

      goto LABEL_65;
    }

    goto LABEL_63;
  }

  if (!v35)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_188A34624(0, &qword_1ED490410);
  v42 = *AGGraphGetValue();

  v43 = [v42 userInterfaceIdiom];

  v44 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v43 == 6)
  {
    if (v44)
    {
      type metadata accessor for CGSize(0);
      AGGraphGetValue();

      return;
    }

    goto LABEL_66;
  }

  if (!v44)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  type metadata accessor for CGSize(0);
  v45 = AGGraphGetValue();
  v47 = *v45;
  v46 = v45[1];

  if (v33 < v47)
  {
    v47 = v33;
  }

  v48 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v48)
  {
    goto LABEL_68;
  }

  v74 = MidY;
  v69 = Center;
  v49 = v23 - v71 - v70;
  v50 = v49 - v72;
  if (v49 - v72 < v46)
  {
    v46 = v49 - v72;
  }

  type metadata accessor for _UISheetMode(0);
  v51 = *AGGraphGetValue();

  if (v47 * 1.41421356 < v46 && v51 == 0)
  {
    v46 = v47 * 1.41421356;
  }

  v53 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v53)
  {
    goto LABEL_69;
  }

  v54 = AGGraphGetValue();
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = *(v54 + 16);
  v58 = *(v54 + 24);

  v82.origin.x = v55;
  v82.origin.y = v56;
  v82.size.width = v57;
  v82.size.height = v58;
  if (!CGRectIsNull(v82))
  {
    v83.origin.x = v55;
    v83.origin.y = v56;
    v83.size.width = v57;
    v83.size.height = v58;
    v59 = CGRectGetMinY(v83) * 0.5;
    v60 = v74;
    if (v59 < v74)
    {
      v60 = v59;
    }

    v74 = v60;
  }

  v61 = v33 - v47;
  v62 = v50 - v46;
  v63 = v75 + (v33 - (v33 - v47)) * 0.5;
  v64 = v72 + v71 + (v50 - (v50 - v46)) * 0.5;
  v84.origin.x = v63;
  v84.origin.y = v64;
  v84.size.width = v33 - v47;
  v84.size.height = v50 - v46;
  MinX = CGRectGetMinX(v84);
  v85.origin.x = v63;
  v85.origin.y = v64;
  v85.size.width = v61;
  v85.size.height = v50 - v46;
  MaxX = CGRectGetMaxX(v85);
  _UIClamp_0(MinX, v69, MaxX);
  v86.origin.x = v63;
  v86.origin.y = v64;
  v86.size.width = v61;
  v86.size.height = v50 - v46;
  MinY = CGRectGetMinY(v86);
  v87.origin.x = v63;
  v87.origin.y = v64;
  v87.size.width = v61;
  v87.size.height = v62;
  MaxY = CGRectGetMaxY(v87);
  _UIClamp_0(MinY, v74, MaxY);
}

uint64_t sub_1891AC738(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v4 = *AGGraphGetValue();

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_12;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 24);

  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v16)
  {
    v17 = *(v16 + 48);

    v19.origin.x = v7;
    v19.origin.y = v8;
    v19.size.width = v9;
    v19.size.height = v10;
    v20.origin.x = v12;
    v20.origin.y = v13;
    v20.size.width = v14;
    v20.size.height = v15;
    if (CGRectEqualToRect(v19, v20))
    {
      v18 = 1;
    }

    else
    {
      v18 = [v17 alwaysStacksWithChild];
    }

    return v18;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1891AC8D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AC738(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AC908(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v4 == 1)
  {
    if (v5)
    {
      type metadata accessor for CGRect(0);
      AGGraphGetValue();
    }

    goto LABEL_17;
  }

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for CGRect(0);
  AGGraphGetValue();

  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *AGGraphGetValue();

  if (v7 == 1)
  {
    v8 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v8)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
    AGGraphGetValue();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      if (*AGGraphGetValue() != 1 || (*AGGraphGetValue() & 1) != 0)
      {
      }

      v10 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = *(v10 + 48);

      [v11 topOffset];
    }
  }

  return result;
}

double sub_1891ACB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  type metadata accessor for CGRect(0);
  v1 = *AGGraphGetValue();
  if (Strong)
  {
  }

  return v1;
}

uint64_t sub_1891ACC08(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = sub_1891AAEC4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = sub_1891AABE0();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *AGGraphGetValue();

  if (v6 != v8)
  {
LABEL_8:
    v10 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v10)
    {
      type metadata accessor for CGRect(0);
      AGGraphGetValue();
    }

    goto LABEL_12;
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v9)
  {
    sub_1891ACB58();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1891ACD7C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v14)
  {
    v15 = *AGGraphGetValue();

    _UISheetDismissOffset(v15, v4, v5, v6, v7, v10, v11, v13, v12);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1891ACEE0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_188A34624(0, &qword_1EA930A70);
  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v6 != 1)
  {
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
      v13 = *AGGraphGetValue();
      v12 = v13;

      if (v13)
      {
LABEL_11:

        return v12;
      }

      return v4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_188A34624(0, &qword_1ED490410);
  v8 = *AGGraphGetValue();

  v9 = [v8 verticalSizeClass];

  if (v9 != 1)
  {
    return v4;
  }

  v10 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
    v11 = *AGGraphGetValue();
    v12 = v11;

    if (!v11)
    {
      return v4;
    }

    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1891AD0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891ACEE0(*v1);
  *a1 = result;
  return result;
}

void sub_1891AD100(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(AGGraphGetValue() + 8);

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v4)
  {
    v5 = *(AGGraphGetValue() + 16);

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E4B080(v5, v3);
      goto LABEL_7;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v3 + 8 * v5 + 32);
LABEL_7:
      v7 = v6;

      [v7 _value];

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

void sub_1891AD250(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v7 = Value[2];
  v6 = Value[3];

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = AGGraphGetValue();
  v11 = *v9;
  v10 = *(v9 + 8);
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E0);
  v15 = *AGGraphGetValue();
  sub_188A52E38(v15);

  if (v15)
  {
    v15(&v38, v16);
    sub_188A55B8C(v15);
  }

  else
  {
    v17 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v17)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v18 = *AGGraphGetValue();

    v19 = v5;
    v20 = v4;
    v21 = v7;
    v22 = v6;
    if (v18 == 1)
    {
      CGRectGetMaxY(*&v19);
    }

    else
    {
      CGRectGetMinY(*&v19);
    }
  }

  v23 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = *AGGraphGetValue();

  if (v24)
  {
    return;
  }

  v25 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = *AGGraphGetValue();

  if (v26 != 1)
  {
    return;
  }

  v27 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v27)
  {
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v28 = *AGGraphGetValue();
  v29 = v28;

  if (v28 && (v30 = [v29 _shouldReverseLayoutDirection], v29, (v30 & 1) != 0))
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v32)
  {
    goto LABEL_31;
  }

  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v33 = *AGGraphGetValue();

  v34 = v5;
  v35 = v4;
  v36 = v7;
  v37 = v6;
  if (v33 == v31)
  {
    CGRectGetMinX(*&v34);
    v39.origin.x = v11;
    v39.origin.y = v10;
    v39.size.width = v13;
    v39.size.height = v12;
    CGRectGetMaxX(v39);
  }

  else
  {
    CGRectGetMaxX(*&v34);
    v40.origin.x = v11;
    v40.origin.y = v10;
    v40.size.width = v13;
    v40.size.height = v12;
    CGRectGetMinX(v40);
  }
}

void sub_1891AD594(void *a1@<X8>)
{
  sub_1891AD250(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1891AD5C0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for CGPoint(0);
  AGGraphGetValue();

  v4 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = *AGGraphGetValue();

  if (v5)
  {
    return result;
  }

  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = *AGGraphGetValue();

  if (v7)
  {
    return result;
  }

  v8 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v8)
  {
    goto LABEL_13;
  }

  AGGraphGetValue();

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  AGGraphGetValue();
}

uint64_t sub_1891AD738@<X0>(void *a1@<X8>)
{
  result = sub_1891AD5C0(*v1);
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_1891AD764(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(AGGraphGetValue() + 40);

  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *AGGraphGetValue();

  if (v6 != 1)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *AGGraphGetValue();

  if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
    goto LABEL_14;
  }

  type metadata accessor for CGPoint(0);
  v10 = *(AGGraphGetValue() + 8);

  v11 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v11)
  {
    type metadata accessor for UIEdgeInsets(0);
    v12 = *AGGraphGetValue();

    return v10 <= v12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1891AD8E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AD764(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AD918(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  v8 = Value[2];
  v7 = Value[3];

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = *AGGraphGetValue();

  v11 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v11)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = *AGGraphGetValue();

  v13 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v13)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = *AGGraphGetValue();

  if (v14 != 1)
  {
LABEL_19:
    v23 = v6;
    v24 = v5;
    v25 = v8;
    v26 = v7;
    if (v12)
    {
      CGRectGetMaxY(*&v23);
    }

    else
    {
      CGRectGetMinY(*&v23);
    }

    goto LABEL_27;
  }

  if (v10 != 0.0)
  {
    v19 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v19)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
    AGGraphGetValue();
    Strong = swift_weakLoadStrong();

    if (!Strong || (v21 = *AGGraphGetValue(), , v21 != 1))
    {
      if (v10 < 1.0)
      {
        v22 = *(a1 + 16);
        result = swift_unownedRetainStrong();
        if (!v22)
        {
LABEL_49:
          __break(1u);
          return result;
        }

LABEL_26:
        AGGraphGetValue();

        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v12)
  {
    if (!v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    type metadata accessor for CGPoint(0);
    AGGraphGetValue();

    v16 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v16)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v17 = *AGGraphGetValue();

    if (v17 == 1)
    {
      v18 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (!v18)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v15)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    type metadata accessor for CGPoint(0);
    AGGraphGetValue();

    v27 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v27)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v28 = *AGGraphGetValue();

    if (v28 == 1)
    {
      v29 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (!v29)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  if (v10 == 1.0)
  {
    v30 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v30)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v31 = *AGGraphGetValue();

    if (v31 != 1)
    {
      return result;
    }
  }

  v32 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v33 = *AGGraphGetValue();

  if (v33)
  {
    if (v12 == *AGGraphGetValue())
    {
      AGGraphGetValue();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1891ADDD4@<X0>(void *a1@<X8>)
{
  result = sub_1891AD918(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_1891ADE00(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = *AGGraphGetValue();

  if (v8 != 1)
  {
    return result;
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v10 = *AGGraphGetValue();

  if (!v10)
  {
    return result;
  }

  if (v4 != *AGGraphGetValue())
  {
  }

  if ((v6 & 1) == 0)
  {
    v11 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v11)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    AGGraphGetValue();
  }

  AGGraphGetValue();
  v12 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  AGGraphGetValue();

  if (v6)
  {
    v13 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v13)
    {
      AGGraphGetValue();
    }

    goto LABEL_24;
  }
}

uint64_t sub_1891AE090@<X0>(void *a1@<X8>)
{
  result = sub_1891ADE00(*v1);
  *a1 = v4;
  return result;
}

void sub_1891AE0BC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  type metadata accessor for CGPoint(0);
  v3 = *(AGGraphGetValue() + 8);

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = *AGGraphGetValue();

  v6 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v6)
  {
    v7 = *(AGGraphGetValue() + 48);

    v8 = _UIUnlerp(v3, v5, v7);
    _UIClamp_2(v8);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1891AE1F4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = *AGGraphGetValue();

  if (v4)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v6 = *AGGraphGetValue();

  if (!v6)
  {
    return 0;
  }

  v7 = *AGGraphGetValue();

  return v7;
}

uint64_t sub_1891AE2F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AE1F4(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1891AE328(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
LABEL_6:
    v8 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
      v9 = *AGGraphGetValue();

      if (!v9)
      {
        return 0;
      }

      v7 = *AGGraphGetValue();

      return v7;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v5)
  {
    v6 = *AGGraphGetValue();

    if (v6)
    {
      return 1;
    }

    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1891AE468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1891AE328(*v1);
  *a1 = result & 1;
  return result;
}

double sub_1891AE4B4@<D0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v15 = 0;
  v153 = 0uLL;
  BYTE8(v154) = 0;
  *&v154 = 0;
  v155 = 0uLL;
  if (dyld_program_sdk_at_least())
  {
    swift_beginAccess();
    v16 = swift_unownedRetainStrong();
    if (!v16)
    {
      goto LABEL_284;
    }

    v17 = *(v16 + 16);

    if (v17)
    {
      goto LABEL_253;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v19)
  {
    goto LABEL_271;
  }

  *(v19 + 16) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  *&v152 = v2;
  *(&v152 + 1) = v2;
  v20 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v20)
  {
    goto LABEL_272;
  }

  v2 = *(v20 + 64);
  type metadata accessor for UIEdgeInsets(0);
  Value = AGGraphGetValue();
  v12 = *Value;
  width = Value[2];

  v23 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v23)
  {
    goto LABEL_273;
  }

  v2 = *(v23 + 452);
  type metadata accessor for CGRect(0);
  v24 = AGGraphGetValue();
  x = *(v24 + 8);
  rect = *v24;
  y = *(v24 + 16);
  v11 = *(v24 + 24);

  v25 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v25)
  {
    goto LABEL_274;
  }

  v2 = *(v25 + 212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  v7 = *AGGraphGetValue();

  v26 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v26)
  {
    goto LABEL_275;
  }

  v2 = *(v26 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  v143 = *AGGraphGetValue();
  rect_8 = v143;

  v27 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v27)
  {
    goto LABEL_276;
  }

  v2 = *(v27 + 464);
  sub_188A34624(0, &qword_1EA930A70);
  v6 = *AGGraphGetValue();

  v3 = [v6 _largestUndimmedDetentIdentifier];
  v145 = [v6 _smallestDimmedDetentIdentifier];
  v28 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v28)
  {
    goto LABEL_277;
  }

  v8 = *AGGraphGetValue();

  v29 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v29)
  {
    goto LABEL_278;
  }

  LODWORD(v142) = *AGGraphGetValue();

  v30 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v30)
  {
    goto LABEL_279;
  }

  LODWORD(v4) = *AGGraphGetValue();

  if (qword_1EA931FD8 != -1)
  {
    goto LABEL_237;
  }

  while (1)
  {
    v31 = qword_1EA93F220;
    v2 = *(a1 + 16);
    v16 = swift_unownedRetainStrong();
    if (!v2)
    {
      goto LABEL_280;
    }

    v5 = v2[3];

    [v31 resolvedValueInContext_];
    v33 = v32;

    v141 = width;
    if (v4)
    {
      v156.origin.x = rect;
      v156.origin.y = x;
      v156.size.width = y;
      v156.size.height = v11;
      MinY = CGRectGetMinY(v156);
      v35 = 0.0;
      if (v142)
      {
        v35 = v12;
      }

      width = v33 + v35 + MinY;
    }

    else
    {
      v157.origin.x = rect;
      v157.origin.y = x;
      v157.size.width = y;
      v157.size.height = v11;
      MaxY = CGRectGetMaxY(v157);
      v37 = 0.0;
      if (v142)
      {
        v37 = width;
      }

      width = MaxY - v37 - v33;
    }

    v133 = v4;
    v38 = *(a1 + 16);
    v16 = swift_unownedRetainStrong();
    if (!v38)
    {
      goto LABEL_281;
    }

    v4 = &v152;
    v2 = *AGGraphGetValue();

    v144 = v3;
    if (v2)
    {
      break;
    }

    v39 = *(a1 + 16);
    v16 = swift_unownedRetainStrong();
    if (!v39)
    {
      goto LABEL_285;
    }

    sub_188A34624(0, &qword_1ED490410);
    v2 = *AGGraphGetValue();

    hasSpecifiedEssential = [(UITraitCollection *)v2 _hasSpecifiedEssentialTraits];

    if (!hasSpecifiedEssential)
    {
      break;
    }

    v128 = v6;
    v129 = v15;
    v130 = a2;
    v124 = width;
    if (!(v7 >> 62))
    {
      v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_28;
    }

LABEL_257:
    v16 = sub_18A4A7F68();
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_299;
    }

    __break(1u);
LABEL_259:
    v65 = sub_18A4A7F68();
LABEL_85:
    v3 = v129;
    a2 = v130;
    v7 = v134;
    if (!v65)
    {
      __break(1u);
LABEL_261:
      v142 = v5 & 0xFFFFFFFFFFFFFF8;
      v15 = sub_18A4A7F68();
      goto LABEL_94;
    }

    sub_189107510(&v152 + 1, v133);
    v2 = sub_18A4A2388();
    *&v153 = v2;
    if (![v128 _prefersDimmingVisible])
    {
      goto LABEL_91;
    }

    v5 = *(&v152 + 1);
    if (*(&v152 + 1) >> 62)
    {
      v123 = sub_18A4A7F68();
      v4 = v123 - 1;
      if (__OFSUB__(v123, 1))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        v4 = sub_18A4A2388();
        v5 = *(&v152 + 1);
      }
    }

    else
    {
      v66 = *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v66 - 1;
      if (__OFSUB__(v66, 1))
      {
        goto LABEL_90;
      }
    }

    v126 = (v5 >> 62);
    if (v5 >> 62)
    {
      goto LABEL_261;
    }

    v142 = v5 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_94:
    v131 = a1;
    *&v141 = v5 & 0xC000000000000001;
    if (!v15)
    {
      LODWORD(v129) = 0;
      a1 = v4;
      goto LABEL_147;
    }

    LODWORD(v129) = 0;
    v6 = 0;
    a1 = v4;
    rect_16a = v15;
    rect_24 = v5;
    do
    {
      v7 = v4;
      v4 = v6;
      v3 = a1;
      while (1)
      {
        if (v141 == 0.0)
        {
          a2 = v143;
          if (v4 >= *(v142 + 16))
          {
            goto LABEL_235;
          }

          v67 = *(v5 + 8 * v4 + 32);
          v6 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_234;
          }
        }

        else
        {
          v67 = sub_188E4B080(v4, v5);
          a2 = v143;
          v6 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_234;
          }
        }

        v15 = [v67 _identifier];
        if (v15)
        {
          if (!a2)
          {
            break;
          }

          v68 = sub_18A4A7288();
          v5 = v69;
          v71 = sub_18A4A7288();
          v72 = v68;
          a1 = v70;
          if (v72 == v71 && v5 == v70)
          {
          }

          else
          {
            a2 = sub_18A4A86C8();

            if ((a2 & 1) == 0)
            {
              break;
            }
          }
        }

        else if (a2)
        {
          goto LABEL_123;
        }

        *&v153 = v4;
        if (v8 == 1.79769313e308)
        {
          [v67 _value];
          v8 = v74;
        }

        v2 = v4;
        if (v15)
        {
          break;
        }

LABEL_123:
        if (!v144)
        {
          goto LABEL_126;
        }

LABEL_99:

        if (!v145)
        {
          v7 = v4;
          v3 = v4;
        }

        ++v4;
        v15 = rect_16a;
        v5 = rect_24;
        if (v6 == rect_16a)
        {
          v4 = v7;
          a1 = v3;
          a2 = v130;
          v7 = v134;
          goto LABEL_147;
        }
      }

      if (!v144)
      {
        goto LABEL_133;
      }

      a2 = sub_18A4A7288();
      a1 = v75;
      v76 = sub_18A4A7288();
      v5 = v77;
      if (a2 == v76 && a1 == v77)
      {

LABEL_126:
        if (v4)
        {
          v7 = v4 - 1;
          if (__OFSUB__(v4, 1))
          {
            goto LABEL_236;
          }
        }

        else
        {
          v7 = sub_18A4A2388();
        }

        v3 = v7;
        if (v15)
        {
          goto LABEL_133;
        }

        goto LABEL_99;
      }

      a2 = sub_18A4A86C8();

      if (a2)
      {
        goto LABEL_126;
      }

LABEL_133:
      if (!v145)
      {
        goto LABEL_138;
      }

      v78 = sub_18A4A7288();
      v80 = v79;
      if (v78 != sub_18A4A7288() || v80 != v81)
      {
        v82 = sub_18A4A86C8();

        a1 = v4;
        if (v82)
        {
          goto LABEL_139;
        }

LABEL_138:
        v4 = v7;
        a1 = v3;
        goto LABEL_139;
      }

      a1 = v4;
LABEL_139:
      v83 = sub_18A4A7288();
      v3 = v84;
      if (v83 == sub_18A4A7288() && v3 == v85)
      {
        v86 = 1;
      }

      else
      {
        v86 = sub_18A4A86C8() | v129;
      }

      LODWORD(v129) = v86;
      a2 = v130;
      v7 = v134;

      v15 = rect_16a;
      v5 = rect_24;
    }

    while (v6 != rect_16a);
LABEL_147:
    BYTE8(v154) = v129 & 1;
    *&v154 = a1;
    a1 = v131;
    v87 = *(v131 + 16);
    v16 = swift_unownedRetainStrong();
    if (!v87)
    {
      goto LABEL_287;
    }

    v3 = *AGGraphGetValue();

    v88 = *(v131 + 16);
    v16 = swift_unownedRetainStrong();
    v6 = v128;
    if (v3 != 1)
    {
      if (v88)
      {
        v3 = *AGGraphGetValue();

        if (v3 == 1)
        {
          v90 = *(v131 + 16);
          v16 = swift_unownedRetainStrong();
          if (v90)
          {
            goto LABEL_156;
          }

          goto LABEL_295;
        }

LABEL_157:
        width = y;
        v3 = 0;
LABEL_158:
        y = x;
        v91 = *(v131 + 16);
        v16 = swift_unownedRetainStrong();
        if (v91)
        {
          v92 = AGGraphGetValue();
          v11 = *v92;
          v93 = *(v92 + 8);
          v12 = *(v92 + 16);
          x = *(v92 + 24);

          v161.origin.x = v11;
          v161.origin.y = v93;
          v161.size.width = v12;
          v161.size.height = x;
          v164.origin.x = rect;
          v164.origin.y = y;
          v164.size.width = width;
          v164.size.height = r2;
          v162 = CGRectIntersection(v161, v164);
          if (!v3)
          {
            goto LABEL_165;
          }

          x = v162.origin.x;
          y = v162.origin.y;
          width = v162.size.width;
          height = v162.size.height;
          if ((CGRectIsEmpty(v162) | v133))
          {
            goto LABEL_165;
          }

          v95 = *(v131 + 16);
          v16 = swift_unownedRetainStrong();
          if (!v95)
          {
            goto LABEL_296;
          }

          v3 = *AGGraphGetValue();

          if (v3 != 1)
          {
LABEL_165:
            *(&v153 + 1) = sub_18A4A2388();
            goto LABEL_166;
          }

          v2 = v126;
          if (v126)
          {
            v16 = sub_18A4A7F68();
          }

          else
          {
            v16 = *(v142 + 16);
          }

          if (v16)
          {
            if (v141 == 0.0)
            {
              if (*(v142 + 16))
              {
                v116 = *(v5 + 32);
                goto LABEL_221;
              }

              __break(1u);
LABEL_268:
              __break(1u);
LABEL_269:
              __break(1u);
              goto LABEL_270;
            }
          }

          else
          {
            __break(1u);
          }

          v116 = sub_188E4B080(0, v5);
LABEL_221:
          v117 = v116;
          [v116 _value];
          v119 = v118;

          v11 = v124;
          if (v124 >= v119)
          {
LABEL_230:
            v2 = 0;
            v153 = 0uLL;
            goto LABEL_166;
          }

          v163.origin.x = x;
          v163.origin.y = y;
          v163.size.width = width;
          v163.size.height = height;
          v120 = v119 - CGRectGetHeight(v163);
          if (v120 > v124)
          {
            x = v120;
          }

          else
          {
            x = v124;
          }

          v121 = [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:x];
          if (v126)
          {
            v16 = sub_18A4A7F68();
            if (v16 < 0)
            {
              goto LABEL_269;
            }
          }

          v2 = &v152 + 1;
          sub_189014AC8(0, 0, v121);

          v16 = sub_18A4A2388();
          v122 = 0;
          if (v4 == v16 || (v122 = v4 + 1, !__OFADD__(v4, 1)))
          {
            *&v154 = v122;
            goto LABEL_230;
          }

LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
        }

        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
      }

      __break(1u);
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    if (!v88)
    {
      goto LABEL_291;
    }

    v3 = *AGGraphGetValue();

    if (v3 != 1)
    {
      goto LABEL_157;
    }

    v89 = *(v131 + 16);
    v16 = swift_unownedRetainStrong();
    if (v89)
    {
LABEL_156:
      width = y;
      v3 = *AGGraphGetValue();

      goto LABEL_158;
    }

LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    v6 = v16;
LABEL_28:
    v41 = 0;
    a2 = v7 & 0xC000000000000001;
    v15 = (v7 & 0xFFFFFFFFFFFFFF8);
    width = 1.79769313e308;
    v134 = v7;
    v42 = v7 + 32;
    rect_16 = MEMORY[0x1E69E7CC0];
    r2 = v11;
    v126 = (v7 + 32);
LABEL_29:
    v4 = v42 + 8 * v41;
    while (1)
    {
      if (v6 == v41)
      {
        if (rect_16 >> 62)
        {
          goto LABEL_259;
        }

        v65 = *((rect_16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_85;
      }

      if (v41 >= v6)
      {
        break;
      }

      v7 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_232;
      }

      if (a2)
      {
        v43 = sub_188E4B06C(v41, v134);
      }

      else
      {
        if (v41 >= v15[2])
        {
          goto LABEL_233;
        }

        v43 = *v4;
      }

      v2 = v43;
      v3 = a1;
      v5 = *(a1 + 16);
      v16 = swift_unownedRetainStrong();
      if (!v5)
      {
        goto LABEL_268;
      }

      v44 = *(v5 + 24);

      [v2 resolvedValueInContext_];
      v46 = v45;

      v5 = sub_18A4A2D28();
      v2 = &v152;
      MEMORY[0x18CFE2450]();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      ++v41;
      v4 += 8;
      a1 = v3;
      if (v46 != 1.79769313e308)
      {
        if (a2)
        {
          v47 = sub_188E4B06C(v41 - 1, v134);
        }

        else
        {
          v47 = *(v4 - 8);
        }

        v48 = v47;
        v49 = [v47 identifier];

        v50 = sub_18A4A7288();
        v5 = v51;
        v125 = v12;
        if (v50 == sub_18A4A7288() && v5 == v52)
        {

          goto LABEL_49;
        }

        v53 = sub_18A4A86C8();

        if ((v53 & 1) == 0)
        {
          a1 = v3;
          v2 = *(v3 + 16);
          v16 = swift_unownedRetainStrong();
          if (!v2)
          {
            goto LABEL_297;
          }

          v12 = sub_1891A0B68();
          goto LABEL_54;
        }

LABEL_49:
        a1 = v3;
        v2 = *(v3 + 16);
        v16 = swift_unownedRetainStrong();
        if (!v2)
        {
          goto LABEL_290;
        }

        v54 = *AGGraphGetValue();
        v12 = sub_1891A0B68();
        if (v54 == 1)
        {
          v158 = *AGGraphGetValue();
          rect_16b = CGRectGetMinY(v158);
          v55 = *AGGraphGetValue();

          v12 = v12 + rect_16b - v55;
          goto LABEL_55;
        }

LABEL_54:

LABEL_55:
        if (v12 < v46)
        {
          v46 = v12;
        }

        v2 = *(a1 + 16);
        v16 = swift_unownedRetainStrong();
        if (!v2)
        {
          goto LABEL_289;
        }

        v56 = *AGGraphGetValue();

        v12 = r2;
        if (v56)
        {
          if (v46 > 150.0)
          {
            goto LABEL_72;
          }

          v2 = *(a1 + 16);
          v16 = swift_unownedRetainStrong();
          if (!v2)
          {
            goto LABEL_298;
          }

          v57 = *AGGraphGetValue();

          if (v57)
          {
            v11 = 0.0;
            v3 = &v152;
            if (!v133)
            {
              goto LABEL_73;
            }
          }

          else
          {
LABEL_72:
            v11 = 1.0;
            v3 = &v152;
            if ((v133 & 1) == 0)
            {
              goto LABEL_73;
            }
          }

LABEL_69:
          v159.origin.x = rect;
          v159.origin.y = x;
          v159.size.width = y;
          v159.size.height = r2;
          v59 = CGRectGetMinY(v159);
          v12 = v125;
          v60 = v125 * v11;
          if (!v142)
          {
            v60 = 0.0;
          }

          v61 = v46 + v59 + v60;
          goto LABEL_76;
        }

        v2 = *(a1 + 16);
        v16 = swift_unownedRetainStrong();
        v3 = &v152;
        if (!v2)
        {
          goto LABEL_293;
        }

        v58 = sub_1891A0B68();

        if (v46 == v58)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        if (v133)
        {
          goto LABEL_69;
        }

LABEL_73:
        v160.origin.x = rect;
        v160.origin.y = x;
        v160.size.width = y;
        v160.size.height = r2;
        v62 = CGRectGetMaxY(v160);
        v63 = v141 * v11;
        if (!v142)
        {
          v63 = 0.0;
        }

        v61 = v62 - v63 - v46;
        v12 = v125;
LABEL_76:
        v5 = [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:v49 value:v61];
        MEMORY[0x18CFE2450]();
        if (*((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        v2 = &v152 + 1;
        sub_18A4A75F8();

        rect_16 = *(&v152 + 1);
        v41 = v7;
        v42 = v126;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    swift_once();
  }

  sub_18A4A2D28();
  MEMORY[0x18CFE2450]();
  v64 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_247;
  }

  while (1)
  {
    sub_18A4A75F8();
    [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:width];
    MEMORY[0x18CFE2450]();
    if (*((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    *&v153 = 0;
    v2 = 0;
    *(&v153 + 1) = sub_18A4A2388();
    *&v154 = 0;
    BYTE8(v154) = 0;
LABEL_166:
    v96 = *(&v152 + 1);
    v4 = *(&v152 + 1) >> 62;
    if (*(&v152 + 1) >> 62)
    {
      break;
    }

    v64 = *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
      goto LABEL_239;
    }

LABEL_168:
    if (v8 == 1.79769313e308)
    {
      if (v4)
      {
        v18 = sub_18A4A7F68();
      }

      else
      {
        v18 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (!__OFSUB__(v18--, 1))
        {
          if ((v96 & 0xC000000000000001) == 0)
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              v3 = v18;
              sub_18A4A7588();
LABEL_213:
              v2 = (v5 + 8);
              sub_18A4A75F8();
              goto LABEL_214;
            }

            if (v18 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_252;
            }

            v98 = *(v96 + 8 * v18 + 32);
            goto LABEL_178;
          }

LABEL_250:
          v98 = sub_188E4B080(v18, v96);
LABEL_178:
          v3 = v98;
          [v98 _value];
          v8 = v99;

          goto LABEL_179;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_250;
    }

LABEL_179:
    if (v8 == 1.79769313e308)
    {
      goto LABEL_240;
    }

    if (v2 == sub_18A4A2388())
    {
      v132 = a1;
      if (v4)
      {
        v3 = sub_18A4A7F68();
        v18 = sub_18A4A2388();
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v3 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = sub_18A4A2388();
      }

      v2 = v18;
      v134 = v7;
      if (v3)
      {
        a1 = v96 & 0xC000000000000001;
        if ((v96 & 0xC000000000000001) == 0 && v3 > *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_257;
        }

        v100 = v6;
        v5 = 0;
        y = 1.79769313e308;
        do
        {
          if (a1)
          {
            v101 = sub_188E4B080(v5, v96);
          }

          else
          {
            v101 = *(v96 + 8 * v5 + 32);
          }

          v102 = v101;
          v103 = (v5 + 1);
          [v101 _value];
          x = v104;

          v105 = vabdd_f64(x, v8);
          if (v105 < y)
          {
            v2 = v5;
            y = v105;
          }

          ++v5;
        }

        while (v3 != v103);
      }

      else
      {
        v100 = v6;
      }

      *&v153 = v2;
      a1 = v132;
      v6 = v100;
      v7 = v134;
    }

    v64 = sub_18A4A2388();
    if (v2 == v64)
    {
      goto LABEL_241;
    }

    if (v4)
    {
      v106 = sub_18A4A7F68();
    }

    else
    {
      v106 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v106)
    {
      goto LABEL_242;
    }

    v64 = v106 - 1;
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_243;
    }

    if ((v96 & 0xC000000000000001) != 0)
    {
      goto LABEL_244;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v64 < *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v96 + 8 * v64 + 32);
      goto LABEL_206;
    }

    __break(1u);
LABEL_247:
    v3 = v64;
    sub_18A4A7588();
  }

  v64 = sub_18A4A7F68();
  if (v64)
  {
    goto LABEL_168;
  }

LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  v107 = sub_188E4B080(v64, v96);
LABEL_206:
  v2 = v107;
  [v107 _value];
  v8 = v108;

  *&v155 = v8;
  if (v4)
  {
    v109 = sub_18A4A7F68();
  }

  else
  {
    v109 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(&v155 + 1) = v109;
  v110 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  v4 = v144;
  if (!v110)
  {
    goto LABEL_282;
  }

  v2 = *AGGraphGetValue();

  if (v2 == 1)
  {
    v111 = *(a1 + 16);
    v16 = swift_unownedRetainStrong();
    if (!v111)
    {
      goto LABEL_286;
    }

    v8 = *AGGraphGetValue();

    [objc_allocWithZone(_UISheetActiveDetent) initWithIdentifier:0 value:v8];
    v5 = &v152;
    MEMORY[0x18CFE2450]();
    v18 = *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 < *((*(&v152 + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_213;
    }

    goto LABEL_255;
  }

LABEL_214:
  v112 = *(a1 + 16);
  v16 = swift_unownedRetainStrong();
  if (!v112)
  {
    goto LABEL_283;
  }

  *(v112 + 16) = 0;

  v147 = v152;
  v148 = v153;
  v149 = v154;
  v150 = v155;
  v151[0] = v152;
  v151[1] = v153;
  v151[2] = v154;
  v151[3] = v155;
  sub_1891BC85C(&v147, v146);
  sub_1891BC82C(v151);
  v113 = v148;
  *a2 = v147;
  *(a2 + 16) = v113;
  result = *&v149;
  v115 = v150;
  *(a2 + 32) = v149;
  *(a2 + 48) = v115;
  return result;
}

double sub_1891AFAB8@<D0>(_OWORD *a1@<X8>)
{
  sub_1891AE4B4(*v1, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_1891AFAFC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = *(AGGraphGetValue() + 56);

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v5)
  {
    v6 = *(AGGraphGetValue() + 16);

    v7 = v6 + v4;
    if (__OFADD__(v6, v4))
    {
      __break(1u);
    }

    else
    {
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (!v8)
      {
        if (v4)
        {
          if (v9 != 0x8000000000000000 || v4 != -1)
          {
            return v9 % v4;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1891AFBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891AFAFC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1891AFC10(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(AGGraphGetValue() + 24);

  if (v4 != sub_18A4A2388())
  {
    return 0;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = *(AGGraphGetValue() + 16);

  if (v8 == v6)
  {
    return 1;
  }

  if (v8 < v6)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1891AFD1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891AFC10(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1891AFD48(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *AGGraphGetValue();

  if (v4)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *AGGraphGetValue();

  if (v6 == 1)
  {
LABEL_5:
    v7 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v7)
    {
      v8 = *(AGGraphGetValue() + 16);

      return v8;
    }

    goto LABEL_15;
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v9)
  {
    v10 = *(AGGraphGetValue() + 8);

    if (v10 >> 62)
    {
      v11 = sub_18A4A7F68();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = __OFSUB__(v11, 1);
    v8 = v11 - 1;
    if (!v12)
    {
      return v8;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1891AFEB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891AFD48(*v1);
  *a1 = result;
  return result;
}

void sub_1891AFEE0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = *AGGraphGetValue();

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v3 != 1)
  {
    if (!v4)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v9 = *Value;
    v10 = *(Value + 8);
    v11 = *(Value + 16);
    v12 = *(Value + 24);

    v30.origin.x = v9;
    v30.origin.y = v10;
    v30.size.width = v11;
    v30.size.height = v12;
    MinY = CGRectGetMinY(v30);
    v14 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(AGGraphGetValue() + 8);

    if (v15 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_11:
        if ((v15 & 0xC000000000000001) == 0)
        {
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v16 = *(v15 + 32);
            goto LABEL_14;
          }

          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        v16 = sub_188E4B080(0, v15);
LABEL_14:
        v17 = v16;

        [v17 _value];
        v19 = v18;

        v20 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (v20)
        {
          v21 = MinY + v19;
          type metadata accessor for UIEdgeInsets(0);
          v22 = *AGGraphGetValue();

          v23 = v21 - v22;
          v24 = 100.0;
LABEL_18:
          _UIClamp_0(0.0, v23, v24);
          return;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = *AGGraphGetValue();

  v6 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = *(v6 + 48);

      [v7 topOffset];

      return;
    }

    goto LABEL_28;
  }

  if (v6)
  {
    type metadata accessor for CGRect(0);
    v25 = AGGraphGetValue();
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);

    v31.origin.x = v26;
    v31.origin.y = v27;
    v31.size.width = v28;
    v31.size.height = v29;
    v23 = CGRectGetHeight(v31) * 0.25;
    v24 = 200.0;
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
}

void sub_1891B01DC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = *AGGraphGetValue();

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v3 == 1)
  {
    if (!v4)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v6 = *Value;
    v7 = *(Value + 8);
    v8 = *(Value + 16);
    v9 = *(Value + 24);

    v30.origin.x = v6;
    v30.origin.y = v7;
    v30.size.width = v8;
    v30.size.height = v9;
    MaxY = CGRectGetMaxY(v30);
    v11 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v11)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(AGGraphGetValue() + 8);

    if (v12 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_7:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v12 + 32);
            goto LABEL_10;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        v13 = sub_188E4B080(0, v12);
LABEL_10:
        v14 = v13;

        [v14 _value];
        v16 = v15;

        v17 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (v17)
        {
          v18 = MaxY - v16;
          type metadata accessor for UIEdgeInsets(0);
          v19 = *(AGGraphGetValue() + 16);

          v20 = v18 - v19;
          v21 = 100.0;
LABEL_18:
          _UIClamp_0(0.0, v20, v21);
          return;
        }

        goto LABEL_27;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (!v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = *AGGraphGetValue();

  v23 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v22 == 1)
  {
    if (v23)
    {
      v24 = *(v23 + 48);

      [v24 topOffset];

      return;
    }

    goto LABEL_28;
  }

  if (v23)
  {
    type metadata accessor for CGRect(0);
    v25 = AGGraphGetValue();
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);

    v31.origin.x = v26;
    v31.origin.y = v27;
    v31.size.width = v28;
    v31.size.height = v29;
    v20 = CGRectGetHeight(v31) * 0.25;
    v21 = 200.0;
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
}

void sub_1891B04D8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_63;
  }

  v3 = *AGGraphGetValue();

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v4)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);

  v10 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v3)
  {
    if (!v10)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }

  else if (!v10)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  type metadata accessor for CGPoint(0);
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
    goto LABEL_65;
  }

  v15 = *AGGraphGetValue();

  v16 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v16)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v17 = *AGGraphGetValue();

  v18 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = *AGGraphGetValue();

  v20 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v20)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  rect = *AGGraphGetValue();

  v21 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v21)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v22 = *(AGGraphGetValue() + 8);

  v23 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v23)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v24 = *(AGGraphGetValue() + 48);

  v25 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v25)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_188A34624(0, &qword_1ED490410);
  v26 = *AGGraphGetValue();

  [v26 displayScale];
  v72 = v27;

  v28 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v28)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  type metadata accessor for UIEdgeInsets(0);
  v29 = *AGGraphGetValue();

  v70 = v12;
  if (v3)
  {

    v30 = v13 + rect;
    if ((v17 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_30:
    v77.origin.x = v7;
    v77.origin.y = v6;
    v77.size.width = v8;
    v77.size.height = v9;
    v36 = CGRectGetMaxY(v77) - v30;
    goto LABEL_39;
  }

  if (v17)
  {
    if (v15)
    {

      v31 = INFINITY;
LABEL_29:
      v30 = rect + _UIClamp_0(v24, v13, v31);
      goto LABEL_30;
    }

    if (v22 >> 62)
    {
      if (sub_18A4A7F68())
      {
LABEL_25:
        if ((v22 & 0xC000000000000001) == 0)
        {
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(v22 + 32);
LABEL_28:
            v34 = v33;

            [v34 _value];
            v31 = v35;

            goto LABEL_29;
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_59:
        v33 = sub_188E4B080(0, v22);
        goto LABEL_28;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    if (v15)
    {

      v32 = -INFINITY;
      goto LABEL_37;
    }

    if (!(v22 >> 62))
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_33;
    }
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_58;
  }

LABEL_33:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v37 = sub_188E4B080(0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v37 = *(v22 + 32);
  }

  v38 = v37;

  [v38 _value];
  v40 = v39;

  v32 = v40;
LABEL_37:
  v30 = rect + _UIClamp_0(v32, v13, v24);
LABEL_38:
  v78.origin.x = v7;
  v78.origin.y = v6;
  v78.size.width = v8;
  v78.size.height = v9;
  v36 = v30 - CGRectGetMinY(v78);
LABEL_39:
  if (!v19)
  {
    v29 = 0.0;
  }

  v79.origin.x = v7;
  v79.origin.y = v6;
  v79.size.width = v8;
  v79.size.height = v9;
  Height = CGRectGetHeight(v79);
  UIRoundToScale(Height - v36, v72);
  v42 = v7;
  v44 = v43;
  v80.origin.x = v42;
  v80.origin.y = v6;
  v80.size.width = v8;
  v80.size.height = v9;
  MinX = CGRectGetMinX(v80);
  if (v17)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  UIRoundToScale(v13 + rect - v29 - v45, v72);
  v73 = v42;
  recta = v46;
  v81.origin.x = v42;
  v71 = v6;
  v81.origin.y = v6;
  v67 = v9;
  v68 = v8;
  v81.size.width = v8;
  v81.size.height = v9;
  Width = CGRectGetWidth(v81);
  v48 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v48)
  {
    goto LABEL_73;
  }

  v49 = AGGraphGetValue();
  v51 = *v49;
  v50 = *(v49 + 8);
  v52 = *(v49 + 16);
  v53 = *(v49 + 24);

  v54 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v54)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v55 = v29 + v44;
  v56 = *AGGraphGetValue();

  if (v56)
  {
    return;
  }

  v57 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v57)
  {
    goto LABEL_77;
  }

  v58 = *AGGraphGetValue();

  if ((v58 & 1) == 0)
  {
    v59 = v51;
    v82.origin.x = v51;
    v82.origin.y = v50;
    v82.size.width = v52;
    v82.size.height = v53;
    if (!CGRectIsNull(v82))
    {
      v83.origin.x = v51;
      v83.origin.y = v50;
      v83.size.width = v52;
      v83.size.height = v53;
      v60 = CGRectGetMinX(v83);
      v84.origin.y = v71;
      v84.origin.x = v73;
      v84.size.height = v67;
      v84.size.width = v68;
      v74 = CGRectGetMinX(v84);
      v61 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (v61)
      {
        v62 = *AGGraphGetValue();

        v63 = recta;
        if (v62 == 1)
        {
          v64 = v70 + MinX + v60 - v74;
          v65 = Width;
          v66 = v55;
          CGRectGetHeight(*(&v63 - 1));
          v85.origin.x = v59;
          v85.origin.y = v50;
          v85.size.width = v52;
          v85.size.height = v53;
          CGRectGetHeight(v85);
        }

        return;
      }

LABEL_78:
      __break(1u);
    }
  }
}

uint64_t sub_1891B0C10(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *AGGraphGetValue();

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v4 == 1)
  {
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_6:
    type metadata accessor for CGRect(0);
    AGGraphGetValue();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1891B0D1C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_55;
  }

  v3 = *AGGraphGetValue();

  v4 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v3 == 1)
  {
    if (!v4)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  else if (!v4)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v5 = *AGGraphGetValue();

  v6 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v6)
  {
    goto LABEL_56;
  }

  v7 = *AGGraphGetValue();

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v9 = *AGGraphGetValue();

  v10 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v11 = *AGGraphGetValue();

  v12 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v13 = *AGGraphGetValue();

  v14 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v15 = *AGGraphGetValue();

  v16 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v16)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = *(AGGraphGetValue() + 8);

  v18 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v19 = *(AGGraphGetValue() + 48);

  v20 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v20)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  sub_188A34624(0, &qword_1ED490410);
  v21 = *AGGraphGetValue();

  [v21 displayScale];
  v23 = v22;

  v24 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v24)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v27 = *Value;
  v26 = *(Value + 8);
  v29 = *(Value + 16);
  v28 = *(Value + 24);

  v30 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v30)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  type metadata accessor for UIEdgeInsets(0);
  v50 = *AGGraphGetValue();

  v51 = v15;
  v52 = v5;
  if (!v9)
  {
    if (v11)
    {
      if (v7)
      {
        v32 = v19;

        v33 = INFINITY;
LABEL_30:
        v31 = v15 + _UIClamp_0(v32, v52, v33);
        goto LABEL_31;
      }

      if (v17 >> 62)
      {
        if (sub_18A4A7F68())
        {
LABEL_26:
          if ((v17 & 0xC000000000000001) == 0)
          {
            if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v32 = v19;
              v35 = *(v17 + 32);
LABEL_29:
              v36 = v35;

              [v36 _value];
              v33 = v37;

              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_51:
          v32 = v19;
          v35 = sub_188E4B080(0, v17);
          goto LABEL_29;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      if (v7)
      {

        v34 = -INFINITY;
        goto LABEL_38;
      }

      if (!(v17 >> 62))
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_34;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_50;
    }

LABEL_34:
    v49 = v19;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v39 = v5;
      v40 = sub_188E4B080(0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v39 = v5;
      v40 = *(v17 + 32);
    }

    v41 = v40;

    [v41 _value];
    v43 = v42;

    v34 = v43;
    v5 = v39;
    v19 = v49;
LABEL_38:
    v31 = v15 + _UIClamp_0(v34, v5, v19);
LABEL_39:
    v54.origin.x = v27;
    v54.origin.y = v26;
    v54.size.width = v29;
    v54.size.height = v28;
    v38 = v31 - CGRectGetMinY(v54);
    goto LABEL_40;
  }

  v31 = v5 + v15;
  if ((v11 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_31:
  v53.origin.x = v27;
  v53.origin.y = v26;
  v53.size.width = v29;
  v53.size.height = v28;
  v38 = CGRectGetMaxY(v53) - v31;
LABEL_40:
  if (v13)
  {
    v44 = v50;
  }

  else
  {
    v44 = 0.0;
  }

  v55.origin.x = v27;
  v55.origin.y = v26;
  v55.size.width = v29;
  v55.size.height = v28;
  Height = CGRectGetHeight(v55);
  UIRoundToScale(Height - v38, v23);
  v47 = v46;
  v56.origin.x = v27;
  v56.origin.y = v26;
  v56.size.width = v29;
  v56.size.height = v28;
  CGRectGetMinX(v56);
  if (v11)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0.0;
  }

  UIRoundToScale(v52 + v51 - v44 - v48, v23);
  v57.origin.x = v27;
  v57.origin.y = v26;
  v57.size.width = v29;
  v57.size.height = v28;
  CGRectGetWidth(v57);
}

void sub_1891B12F8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v2)
  {
    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v4 = *Value;
    v5 = *(Value + 8);
    v6 = *(Value + 16);
    v7 = *(Value + 24);

    v8 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (v8)
    {
      v9 = AGGraphGetValue();
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 24);
      rect = *(v9 + 16);

      v14.origin.x = v4;
      v14.origin.y = v5;
      v14.size.width = v6;
      v14.size.height = v7;
      CGRectGetMinY(v14);
      v15.origin.x = v11;
      v15.origin.y = v10;
      v15.size.width = rect;
      v15.size.height = v12;
      CGRectGetMinY(v15);
      v16.origin.x = v4;
      v16.origin.y = v5;
      v16.size.width = v6;
      v16.size.height = v7;
      CGRectGetMinX(v16);
      v17.origin.x = v11;
      v17.origin.y = v10;
      v17.size.width = rect;
      v17.size.height = v12;
      CGRectGetMinX(v17);
      v18.origin.x = v11;
      v18.origin.y = v10;
      v18.size.width = rect;
      v18.size.height = v12;
      CGRectGetMaxY(v18);
      v19.origin.x = v4;
      v19.origin.y = v5;
      v19.size.width = v6;
      v19.size.height = v7;
      CGRectGetMaxY(v19);
      v20.origin.x = v11;
      v20.origin.y = v10;
      v20.size.width = rect;
      v20.size.height = v12;
      CGRectGetMaxX(v20);
      v21.origin.x = v4;
      v21.origin.y = v5;
      v21.size.width = v6;
      v21.size.height = v7;
      CGRectGetMaxX(v21);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1891B14E0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v2)
  {
    type metadata accessor for CGRect(0);
    Value = AGGraphGetValue();
    v4 = *Value;
    v5 = *(Value + 8);
    v6 = *(Value + 16);
    v7 = *(Value + 24);

    v10.origin.x = v4;
    v10.origin.y = v5;
    v10.size.width = v6;
    v10.size.height = v7;
    Height = CGRectGetHeight(v10);
    v9 = _UIUnlerp(Height, 150.0, 76.0);
    _UIClamp_2(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1891B15C8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v3 = *AGGraphGetValue();
  v4 = v3;

  if (v3)
  {
    v5 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v5)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    sub_188A34624(0, &qword_1ED490410);
    v6 = *AGGraphGetValue();

    v7 = sub_18919A3F8(v6);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E698E668]) initWithCornerRadius_];
  }

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
    goto LABEL_122;
  }

  v9 = *(v8 + 48);

  [v9 cornerRadius];
  v11 = v10;

  v12 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v13 = *(v12 + 48);

  [v13 cornerRadius];
  v15 = v14;

  v16 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v16)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  type metadata accessor for CGPoint(0);
  v17 = *(AGGraphGetValue() + 8);

  v18 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v18)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  type metadata accessor for UIEdgeInsets(0);
  v19 = *AGGraphGetValue();

  v20 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v20)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v152 = v11;
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v22 = *Value;
  v23 = *(Value + 8);
  v24 = *(Value + 16);
  v25 = *(Value + 24);

  v26 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v26)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v27 = *AGGraphGetValue();

  v155.origin.x = v22;
  v155.origin.y = v23;
  v155.size.width = v24;
  v155.size.height = v25;
  MaxY = CGRectGetMaxY(v155);
  v29 = 0.0;
  if (MaxY != 0.0)
  {
    v29 = _UIClamp_2((v17 + v27 - v19) / (MaxY - v19));
  }

  v30 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v30)
  {
    goto LABEL_128;
  }

  v31 = *AGGraphGetValue();

  v32 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v32)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v33 = *AGGraphGetValue();

  if (v33)
  {
    type metadata accessor for UIRectCornerRadii(0);

    v34 = AGGraphGetValue();
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
  }

  else
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
  }

  v39 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v39)
  {
    goto LABEL_130;
  }

  v40 = *AGGraphGetValue();

  v143 = v35;
  v148 = v36;
  if (v40 == 1)
  {
    [v7 bottomLeft];
    v42 = v41;
    v43 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v43)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v44 = *AGGraphGetValue();

    if (!v33 || (v15 = v36, (v44 & 1) == 0))
    {
      v45 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (!v45)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v15 = fmax(v42 - v29 * 28.0 * 0.5, 20.0);
      v46 = *AGGraphGetValue();

      if (v46 == 1)
      {
        v35 = _UILerp_1(v31, 38.0, v15);
      }

      else
      {
        v47 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (!v47)
        {
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
        v48 = *AGGraphGetValue();

        v35 = v15;
        if (!v48)
        {
          if (qword_1EA931FC8 != -1)
          {
            swift_once();
          }

          v35 = *&qword_1EA93F210;
          v15 = *&qword_1EA93F210;
        }
      }
    }

    if (v15 != 1.79769313e308)
    {
      if (!swift_unownedRetainStrong())
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (*AGGraphGetValue() == 1)
      {
        v153 = v35;
        v49 = v29;
        v50 = *(a1 + 16);
        swift_unownedRetainStrong();
        if (!v50)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v51 = AGGraphGetValue();
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);

        v156.origin.x = v52;
        v156.origin.y = v53;
        v156.size.width = v54;
        v156.size.height = v55;
        v29 = v49;
        v35 = v153;
        if (CGRectGetHeight(v156) <= v15 + v15)
        {
          v56 = *(a1 + 16);
          swift_unownedRetainStrong();
          if (!v56)
          {
LABEL_151:
            __break(1u);
            return;
          }

          v57 = AGGraphGetValue();
          v58 = *v57;
          v59 = *(v57 + 8);
          v60 = *(v57 + 16);
          v61 = *(v57 + 24);

          v157.origin.x = v58;
          v157.origin.y = v59;
          v157.size.width = v60;
          v157.size.height = v61;
          v15 = CGRectGetHeight(v157) * 0.5;
          v35 = v15;
        }
      }
    }
  }

  else
  {
    v35 = v152;
  }

  v62 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v62)
  {
    goto LABEL_131;
  }

  v63 = *AGGraphGetValue();

  if (v63)
  {
    v64 = v15;
  }

  else
  {
    v64 = v35;
  }

  v65 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v65)
  {
    goto LABEL_132;
  }

  v150 = *AGGraphGetValue();

  v66 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v66)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v142 = v37;
  v154 = *AGGraphGetValue();

  v67 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v67)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v68 = *AGGraphGetValue();

  v69 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v69)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v70 = *AGGraphGetValue();

  v71 = v64;
  if (v70 == 1.79769313e308)
  {
    v72 = v64;
  }

  else
  {
    v72 = v70;
  }

  v151 = v72;
  v73 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v73)
  {
    goto LABEL_136;
  }

  v145 = v29;
  v74 = *AGGraphGetValue();

  v75 = v15;
  if (v74 == 1.79769313e308)
  {
    v74 = v15;
  }

  v76 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v76)
  {
    goto LABEL_137;
  }

  v77 = v38;
  v144 = v68;
  v78 = *AGGraphGetValue();

  if (v78 == 1.79769313e308)
  {
    v79 = v151;
  }

  else
  {
    v79 = v78;
  }

  v147 = v79;
  v80 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v80)
  {
    goto LABEL_138;
  }

  v81 = *AGGraphGetValue();

  if (v81 == 1.79769313e308)
  {
    v82 = v74;
  }

  else
  {
    v82 = v81;
  }

  v146 = v82;
  v83 = v151;
  v84 = v151;
  v85 = v74;
  v86 = v74;
  if (v33)
  {
    [v7 topLeft];
    v88 = v143;
    if (v143 == 1.79769313e308)
    {
      v88 = v87;
    }

    v83 = CGFloatMax(v71, v88);
    [v7 bottomLeft];
    v90 = v148;
    if (v148 == 1.79769313e308)
    {
      v90 = v89;
    }

    v85 = CGFloatMax(v75, v90);
    [v7 bottomRight];
    v92 = v142;
    if (v142 == 1.79769313e308)
    {
      v92 = v91;
    }

    v86 = CGFloatMax(v75, v92);
    [v7 topRight];
    if (v77 == 1.79769313e308)
    {
      v94 = v93;
    }

    else
    {
      v94 = v77;
    }

    v84 = CGFloatMax(v71, v94);
  }

  v95 = _UILerp_1(0.5, v83, v71);
  v96 = _UILerp_1(0.5, v85, v75);
  v97 = _UILerp_1(0.5, v86, v75);
  v98 = _UILerp_1(0.5, v84, v71);
  v99 = _UIClamp_2(v150);
  v100 = _UILerp_1(v99, v151, v95);
  v101 = _UILerp_1(v99, v74, v96);
  v149 = _UILerp_1(v99, v74, v97);
  v102 = _UILerp_1(v99, v151, v98);
  v103 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v103)
  {
    goto LABEL_139;
  }

  v104 = AGGraphGetValue();
  v105 = *v104;
  v106 = *(v104 + 8);
  v107 = *(v104 + 16);
  v108 = *(v104 + 24);

  v158.origin.x = v105;
  v158.origin.y = v106;
  v158.size.width = v107;
  v158.size.height = v108;
  Width = CGRectGetWidth(v158);
  v110 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v110)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v111 = AGGraphGetValue();
  v112 = *v111;
  v113 = *(v111 + 8);
  v114 = *(v111 + 16);
  v115 = *(v111 + 24);

  v159.origin.x = v112;
  v159.origin.y = v113;
  v159.size.width = v114;
  v159.size.height = v115;
  if (Width == CGRectGetWidth(v159))
  {
    v116 = 1.79769313e308;
  }

  else
  {
    v116 = 0.0;
  }

  v117 = v145;
  if (v145 != 0.0)
  {
    v116 = v100;
    v125 = v144;
    v118 = v154;
    goto LABEL_96;
  }

  v117 = v150;
  v118 = v154;
  if (v150 != 0.0)
  {
    v116 = v100;
    v125 = v144;
    goto LABEL_96;
  }

  v119 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v119)
  {
    goto LABEL_143;
  }

  v120 = *AGGraphGetValue();

  if (v120 != 1)
  {
    v123 = v102;
    goto LABEL_88;
  }

  v121 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v121)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v122 = *AGGraphGetValue();

  v123 = v116;
  v124 = v116;
  if ((v122 & 1) == 0)
  {
    v123 = v102;
    v149 = v116;
    v101 = v116;
LABEL_88:
    v124 = v100;
  }

  v126 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v126)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v127 = *AGGraphGetValue();

  v125 = v144;
  if (v127 == 1)
  {
    v128 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (v128)
    {
      v129 = *AGGraphGetValue();

      if (v129)
      {
        v102 = v123;
        v149 = v116;
        v101 = v116;
        v116 = v124;
      }

      else
      {
        v102 = v116;
      }

      goto LABEL_96;
    }

    goto LABEL_147;
  }

  v102 = v123;
  v116 = v124;
LABEL_96:
  [v7 topLeft];
  v131 = v130;
  v132 = 1.79769313e308;
  if (v116 != 1.79769313e308)
  {
    v132 = 1.79769313e308;
    if (v118 != 1.0)
    {
      v132 = _UILerp_1(v118, v116, v130);
    }
  }

  if (v132 != 1.79769313e308 || (v132 = v131, v125 != 1.0))
  {
    _UILerp_1(v125, v147, v132);
  }

  [v7 bottomLeft];
  v134 = v133;
  v135 = 1.79769313e308;
  if (v101 != 1.79769313e308)
  {
    v135 = 1.79769313e308;
    if (v118 != 1.0)
    {
      v135 = _UILerp_1(v118, v101, v133);
    }
  }

  if (v135 != 1.79769313e308 || (v135 = v134, v125 != 1.0))
  {
    _UILerp_1(v125, v146, v135);
  }

  [v7 bottomRight];
  v137 = v136;
  v138 = 1.79769313e308;
  if (v149 != 1.79769313e308)
  {
    v138 = 1.79769313e308;
    if (v118 != 1.0)
    {
      v138 = _UILerp_1(v118, v149, v136);
    }
  }

  if (v138 != 1.79769313e308 || (v138 = v137, v125 != 1.0))
  {
    _UILerp_1(v125, v146, v138);
  }

  [v7 topRight];
  v140 = v139;
  v141 = 1.79769313e308;
  if (v102 != 1.79769313e308)
  {
    v141 = 1.79769313e308;
    if (v154 != 1.0)
    {
      v141 = _UILerp_1(v154, v102, v139);
    }
  }

  if (v141 == 1.79769313e308 && (v141 = v140, v125 == 1.0))
  {
  }

  else
  {

    _UILerp_1(v125, v147, v141);
  }
}

void sub_1891B239C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v2)
  {
    v3 = *AGGraphGetValue();

    if (v3 == 1)
    {
      signpost_c2_entryLock_start(1.79769313e308, 1.79769313e308);
      return;
    }

    v4 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (v4)
    {
      type metadata accessor for UIRectCornerRadii(0);
      AGGraphGetValue();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1891B24B4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];

  UIRectGetCenter(v4, v5, v6);
  v7 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = AGGraphGetValue();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  v11 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  type metadata accessor for CGAffineTransform(0);
  v14 = AGGraphGetValue();
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  v21 = *(v14 + 16);
  v23 = *v14;

  *&v25.c = v21;
  *&v25.a = v23;
  v25.tx = v15;
  v25.ty = v16;
  v26.x = v12;
  v26.y = v13;
  CGPointApplyAffineTransform(v26, &v25);
  v17 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v17)
  {
    v18 = AGGraphGetValue();
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    v22 = *(v18 + 16);
    v24 = *v18;

    *&v25.c = v22;
    *&v25.a = v24;
    v25.tx = v19;
    v25.ty = v20;
    v27.width = v9;
    v27.height = v10;
    CGSizeApplyAffineTransform(v27, &v25);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1891B26B8(double (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  *a2 = a1(*v2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t sub_1891B26EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v6 == 1)
  {
    if (!v7)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_6:
    AGGraphGetValue();

    v8 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v8)
    {
      v9 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (v9)
      {
        type metadata accessor for UIEdgeInsets(0);
        AGGraphGetValue();

        sub_1891BC0AC(v11);

        v10 = v11[1];
        *a2 = v11[0];
        a2[1] = v10;
        a2[2] = v11[2];
        return result;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_1891B2824@<D0>(_OWORD *a1@<X8>)
{
  sub_1891B26EC(*v1, v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1891B2868@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CGPoint(0);
  AGGraphGetValue();

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v7)
  {
    type metadata accessor for UIEdgeInsets(0);
    AGGraphGetValue();

    sub_1891BC0AC(v9);

    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
    a2[2] = v9[2];
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1891B295C@<D0>(_OWORD *a1@<X8>)
{
  sub_1891B2868(*v1, v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_1891B29A0(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v4)
  {
    goto LABEL_33;
  }

  v6 = *(AGGraphGetValue() + 32);

  v7 = 0.0;
  if (v6 == sub_18A4A2388())
  {
    goto LABEL_25;
  }

  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_18:
    v10 = sub_188E4B080(v6, v1);
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v1 = *(AGGraphGetValue() + 8);

  v2 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v10 = *(v1 + 8 * v6 + 32);
LABEL_9:
  v11 = v10;
  v9 = &selRef__updateSingleLayerNoMaskFromLayerStack;
  [v10 _value];
  v7 = v12;

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 < result)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_18A4A7F68();
  if (v8 < result)
  {
LABEL_11:
    if (v2)
    {
      v13 = sub_188E4B080(v8, v1);
LABEL_16:
      v14 = v13;

      [v14 v9[466]];
      v16 = v15;

LABEL_23:
      v18 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (!v18)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      type metadata accessor for CGPoint(0);
      v19 = *(AGGraphGetValue() + 8);

      v20 = _UIUnlerp(v19, v16, v7);
      _UIClamp_2(v20);
LABEL_25:
      v21 = *(a1 + 16);
      result = swift_unownedRetainStrong();
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
        v22 = *AGGraphGetValue();

        if (v22)
        {
          AGGraphGetValue();
        }

        v23 = *(a1 + 16);
        result = swift_unownedRetainStrong();
        if (v23)
        {
          AGGraphGetValue();
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v1 + 8 * v8 + 32);
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_21:

  v17 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v17)
  {
    v16 = *AGGraphGetValue();

    goto LABEL_23;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1891B2CC4@<X0>(void *a1@<X8>)
{
  result = sub_1891B29A0(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_1891B2CF0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_47;
  }

  v4 = *(v2 + 48);

  v5 = [v4 wantsDimming];

  v6 = 0.0;
  if (!v5)
  {
    goto LABEL_42;
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
  AGGraphGetValue();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {

    v6 = *AGGraphGetValue();
  }

  v9 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v9)
  {
    goto LABEL_49;
  }

  AGGraphGetValue();

  if (!Strong)
  {
    goto LABEL_19;
  }

  if (*AGGraphGetValue() != 1)
  {

LABEL_19:
    v16 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v6 == 1.0)
    {
      if (!v16)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v17 = *AGGraphGetValue();

      if (v17)
      {
        if (!Strong)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v20 = *(a1 + 16);
        result = swift_unownedRetainStrong();
        if (!v20)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v21 = *AGGraphGetValue();

        if (v21 == 1.0)
        {
          if (!Strong)
          {
            goto LABEL_42;
          }
        }

        else if (!Strong)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!v16)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v18 = *AGGraphGetValue();

      if ((v18 & 1) == 0)
      {
        v19 = *(a1 + 16);
        result = swift_unownedRetainStrong();
        if (!v19)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        AGGraphGetValue();
      }

      if (!Strong)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_35;
  }

  if (v6 == 1.0)
  {
    v10 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v10)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v11 = *AGGraphGetValue();

    if (v11 != 1 || (*AGGraphGetValue() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v12 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v12)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v13 = *AGGraphGetValue();

  if (v13 != 1)
  {
    goto LABEL_34;
  }

  v14 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v14)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v15 = *AGGraphGetValue();

  if (v15)
  {
    AGGraphGetValue();
  }

  else
  {
LABEL_34:
  }

LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);

  AGGraphGetValue();
  v22 = swift_unknownObjectWeakLoadStrong();

  if (v22)
  {
    v23 = [v22 traitCollection];

    if (v23)
    {
      if ([v23 userInterfaceStyle] == 2)
      {
        [v23 userInterfaceLevel];

        goto LABEL_42;
      }
    }
  }

LABEL_42:
  v24 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v24)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v25 = *AGGraphGetValue();
  swift_unknownObjectRetain();

  if (v25)
  {
    objc_opt_self();
    swift_dynamicCastObjCClass();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1891B3294(double (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  *a2 = a1(*v2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

void sub_1891B32C8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  AGGraphGetValue();

  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v4 = *AGGraphGetValue();
  swift_unknownObjectRetain();

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = *AGGraphGetValue();

  if (v7 == 1 || v5)
  {

    return;
  }

  v8 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (!v8)
  {
    goto LABEL_17;
  }

  AGGraphGetValue();

  v9 = *(a1 + 16);
  swift_unownedRetainStrong();
  if (v9)
  {
    AGGraphGetValue();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1891B34BC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v4 = *AGGraphGetValue();

  if (v4)
  {
    AGGraphGetValue();
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *(v5 + 48);

  [v6 fadeOutIfAnyDescendantWantsFullScreen];

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v7)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = *AGGraphGetValue();

  if (!v8)
  {
    return result;
  }

  if ((*AGGraphGetValue() & 1) == 0)
  {
    v9 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v9)
    {
      AGGraphGetValue();
    }

    goto LABEL_15;
  }
}

uint64_t sub_1891B3684@<X0>(void *a1@<X8>)
{
  result = sub_1891B34BC(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_1891B36B0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *AGGraphGetValue();

  if (v6)
  {
LABEL_8:
    v9 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v9)
    {
      AGGraphGetValue();
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
    v8 = *AGGraphGetValue();

    if (v8)
    {
      AGGraphGetValue();
    }

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1891B3838@<X0>(void *a1@<X8>)
{
  result = sub_1891B36B0(*v1);
  *a1 = v4;
  return result;
}

id sub_1891B3864()
{
  v0 = [objc_allocWithZone(_UIViewGlass) initWithVariant_];
  result = [v0 setFlexible_];
  qword_1EA93F228 = v0;
  return result;
}

void sub_1891B38B8()
{
  v0 = [objc_allocWithZone(_UIViewGlass) initWithVariant_];
  [v0 setFlexible_];
  v1 = sub_18A4A7258();
  [v0 setSubvariant_];

  qword_1EA93F230 = v0;
}

uint64_t sub_1891B3958(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
    __break(1u);
    goto LABEL_102;
  }

  v4 = *AGGraphGetValue();

  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v5)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v6 = *AGGraphGetValue();

  if (v6 == 1)
  {
    v7 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v7)
    {
      goto LABEL_107;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
    v8 = *AGGraphGetValue();

    if (!v8)
    {
      return 0;
    }

    v9 = *AGGraphGetValue();

    if (v9 != 1)
    {
      return 0;
    }
  }

  v10 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v10)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  v11 = *AGGraphGetValue();
  v12 = v11;

  v13 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v13)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  type metadata accessor for CGPoint(0);
  v14 = *(AGGraphGetValue() + 8);

  v15 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v15)
  {
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
    return result;
  }

  v16 = *(AGGraphGetValue() + 8);

  if (v16 >> 62)
  {
    goto LABEL_91;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v18 = sub_18A4A2388();
LABEL_13:
  v16 = v18;
  v67 = v11;
  if (!v17)
  {
LABEL_25:
    v30 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
      v31 = *AGGraphGetValue();

      if (!(v31 >> 62))
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

        goto LABEL_28;
      }

      goto LABEL_93;
    }

    goto LABEL_106;
  }

  v19 = 0;
  v20 = 1.79769313e308;
  v11 = &selRef__updateSingleLayerNoMaskFromLayerStack;
  while (1)
  {
    v21 = *(a1 + 16);
    swift_unownedRetainStrong();
    if (!v21)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v22 = *(AGGraphGetValue() + 8);

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = sub_188E4B080(v19, v22);
      goto LABEL_19;
    }

    if (v19 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v23 = *(v22 + 8 * v19 + 32);
LABEL_19:
    v24 = v23;
    v25 = v19 + 1;

    [v24 _value];
    v27 = v26;

    v28 = vabdd_f64(v27, v14);
    if (v28 < v20)
    {
      v16 = v19;
      v20 = v28;
    }

    ++v19;
    if (v17 == v25)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v17 = sub_18A4A7F68();

    v18 = sub_18A4A2388();
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_93:
    v32 = sub_18A4A7F68();

    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

LABEL_28:
    if (!v32)
    {
      break;
    }

    v33 = 0;
    v68 = a1;
LABEL_30:
    v11 = (v33 + 4);
    while (1)
    {
      v34 = v11 - 4;
      if (v11 - 4 >= v32)
      {
        break;
      }

      v33 = v11 - 3;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_87;
      }

      v35 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (!v35)
      {
        goto LABEL_98;
      }

      v36 = *AGGraphGetValue();

      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = sub_188E4B06C(v11 - 4, v36);
      }

      else
      {
        if (v34 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v37 = *(v36 + 8 * v11);
      }

      v38 = v37;

      v39 = [v38 identifier];

      a1 = *(a1 + 16);
      swift_unownedRetainStrong();
      if (!a1)
      {
        goto LABEL_99;
      }

      v40 = *(AGGraphGetValue() + 8);

      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = sub_188E4B080(v16, v40);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        if (v16 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        v41 = *(v40 + 8 * v16 + 32);
      }

      v42 = v41;

      v43 = [v42 _identifier];

      if (v43)
      {
        v44 = sub_18A4A7288();
        v46 = v45;
        if (v44 == sub_18A4A7288() && v46 == v47)
        {

LABEL_52:
          a1 = v68;
          v49 = *(v68 + 16);
          result = swift_unownedRetainStrong();
          if (!v49)
          {
            goto LABEL_108;
          }

          v50 = *AGGraphGetValue();

          if ((v50 & 0xC000000000000001) != 0)
          {
            v51 = sub_188E4B06C(v11 - 4, v50);
          }

          else
          {
            if (v34 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v51 = *(v50 + 8 * v11);
          }

          v52 = v51;

          v53 = [v52 backgroundEffect];

          if (v53)
          {

            v67 = v53;
          }

          if (v33 != v32)
          {
            goto LABEL_30;
          }

          goto LABEL_61;
        }

        v48 = sub_18A4A86C8();

        if (v48)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }

      v11 = (v11 + 1);
      a1 = v68;
      if (v33 == v32)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_61:
  v11 = v67;
  if (v67)
  {
    v29 = v67;
    goto LABEL_80;
  }

  v54 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (!v54)
  {
    goto LABEL_110;
  }

  v55 = *(AGGraphGetValue() + 8);

  v56 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v55 <= 0.5)
  {
    if (!v56)
    {
      goto LABEL_112;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
    v29 = *AGGraphGetValue();
    swift_unknownObjectRetain();

    if (v29)
    {
      goto LABEL_79;
    }

    v58 = [objc_opt_self() currentDevice];
    v59 = [v58 userInterfaceIdiom];

    if (v59)
    {
      if (qword_1EA931FE0 != -1)
      {
        swift_once();
      }

      v60 = &qword_1EA93F228;
LABEL_77:
      v57 = *v60;
LABEL_78:
      v29 = v57;
      goto LABEL_79;
    }

    if (qword_1EA931FE8 == -1)
    {
LABEL_76:
      v60 = &qword_1EA93F230;
      goto LABEL_77;
    }

LABEL_100:
    swift_once();
    goto LABEL_76;
  }

  if (!v56)
  {
    goto LABEL_111;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v29 = *AGGraphGetValue();
  swift_unknownObjectRetain();

  if (!v29)
  {
    if (qword_1EA931FF0 == -1)
    {
LABEL_68:
      v57 = qword_1EA93F238;
      goto LABEL_78;
    }

LABEL_96:
    swift_once();
    goto LABEL_68;
  }

LABEL_79:
  swift_unknownObjectRetain();
LABEL_80:
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v62 = v61;
    v63 = *(a1 + 16);
    result = swift_unownedRetainStrong();
    if (!v63)
    {
      goto LABEL_109;
    }

    v64 = v67;
    AGGraphGetValue();

    v65 = sub_18A4A7258();

    [v62 setBackdropGroupName_];
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = v11;
    swift_unknownObjectRelease();
  }

  return v29;
}

uint64_t sub_1891B42A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1891B3958(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1891B42D4(uint64_t a1)
{
  v2 = sub_18A4A29D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = swift_unownedRetainStrong();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8);
    AGGraphGetValue();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v9 = *AGGraphGetValue();
    }

    else
    {
      sub_18A4A29C8();
      v9 = sub_18A4A2988();
      (*(v3 + 8))(v5, v2);
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}