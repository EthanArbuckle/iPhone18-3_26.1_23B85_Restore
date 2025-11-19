uint64_t sub_220589CFC(void *a1, void (*a2)(char *))
{
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_220589E28()
{
  result = qword_27CF56E18;
  if (!qword_27CF56E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E18);
  }

  return result;
}

unint64_t sub_220589EC4()
{
  result = qword_27CF56E20;
  if (!qword_27CF56E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E20);
  }

  return result;
}

uint64_t sub_220589F6C(uint64_t a1)
{
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2205892DC(a1, v1 + v4, v1 + v5, *(v1 + ((v5 + 111) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_22058A05C()
{
  result = qword_27CF56E28;
  if (!qword_27CF56E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E28);
  }

  return result;
}

uint64_t TextInputAlert.__allocating_init(type:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_22058AD54(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t TextInputAlert.init(type:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_22058ACC0(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t TextInputAlert.onSubmit(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_2204DA45C(v3);
}

uint64_t TextInputAlert.onCancel(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_2204DA45C(v3);
}

uint64_t TextInputAlert.onValidateText(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

void TextInputAlert.present(from:animated:completion:)(void *a1, char a2, void *a3, uint64_t a4)
{
  v9 = sub_22058A3C0();
  v10 = *(v4 + 104);
  *(v4 + 104) = v9;
  v11 = v9;

  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2204C35E8;
    v12[3] = &block_descriptor_4;
    a3 = _Block_copy(v12);
  }

  [a1 presentViewController:v11 animated:a2 & 1 completion:a3];
  _Block_release(a3);
}

id sub_22058A3C0()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, *(v1 + 5));
  (*(v5 + 16))(v4, v5);
  v6 = sub_22089132C();

  v7 = sub_22089132C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = *(v12 + 24);

  v13(v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22058AF30;
  *(v14 + 24) = v10;

  v15 = sub_22089132C();

  v43 = sub_2204D48F4;
  v44 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_11;
  v16 = _Block_copy(&aBlock);

  v37 = objc_opt_self();
  v17 = [v37 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v8 addAction_];
  v18 = v17;
  [v8 setPreferredAction_];
  v19 = type metadata accessor for TextFieldValidator();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_submit];
  *v21 = nullsub_1;
  *(v21 + 1) = 0;
  v22 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid];
  *v22 = sub_22058AF38;
  v22[1] = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_setAllowSubmission];
  *v24 = sub_22058AF90;
  v24[1] = v23;
  v38.receiver = v20;
  v38.super_class = v19;

  v25 = objc_msgSendSuper2(&v38, sel_init);
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v25;
  v43 = sub_22058AF98;
  v44 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_20_0;
  v27 = _Block_copy(&aBlock);

  v28 = v25;

  [v8 addTextFieldWithConfigurationHandler_];
  _Block_release(v27);
  v29 = *(v1 + 5);
  v30 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v29);
  (*(v30 + 32))(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  *(v31 + 24) = v28;

  v32 = v28;
  v33 = sub_22089132C();

  v43 = sub_22058AFA0;
  v44 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_26;
  v34 = _Block_copy(&aBlock);

  v35 = [v37 actionWithTitle:v33 style:1 handler:v34];
  _Block_release(v34);

  [v8 addAction_];

  return v8;
}

void sub_22058A924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong textFields];

  if (!v5)
  {
    return;
  }

  sub_22058AFA8();
  v6 = sub_2208916EC();

  if (v6 >> 62)
  {
    if (sub_2208926AC())
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D8A700](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_22089136C();
    v12 = v11;

    v13 = *(a2 + 56);
    if (v13)
    {

      v13(v10, v12);
      sub_2204DA45C(v13);
    }

    v14 = *(a2 + 104);
    *(a2 + 104) = 0;
  }
}

uint64_t sub_22058AAB0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[5];
  v6 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v5);
  (*(v6 + 40))(a1, 0, v5, v6);
  [a1 setDelegate_];
  v7 = *(a3 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_setAllowSubmission);
  v8 = *(a3 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid);
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22089136C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v8(v11, v13);

  return v7(v14 & 1);
}

void sub_22058ABC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {

    v3(v4);
    sub_2204DA45C(v3);
  }

  v5 = *(a2 + 104);
  *(a2 + 104) = 0;
}

uint64_t TextInputAlert.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2204DA45C(*(v0 + 56));
  sub_2204DA45C(*(v0 + 72));

  return v0;
}

uint64_t TextInputAlert.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2204DA45C(*(v0 + 56));
  sub_2204DA45C(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_22058ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = sub_22045F7BC;
  return a2;
}

uint64_t sub_22058AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 16));
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 88) = sub_22045F7BC;
  return v10;
}

uint64_t sub_22058AF38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  LOBYTE(a2) = v5(a1, a2);

  return a2 & 1;
}

unint64_t sub_22058AFA8()
{
  result = qword_27CF56E30;
  if (!qword_27CF56E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF56E30);
  }

  return result;
}

uint64_t type metadata accessor for StockChartDescriptor()
{
  result = qword_28128ED08;
  if (!qword_28128ED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22058B084()
{
  sub_22088665C();
  if (v0 <= 0x3F)
  {
    sub_22058B138();
    if (v1 <= 0x3F)
    {
      sub_2208854FC();
      if (v2 <= 0x3F)
      {
        sub_2204ADED0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22058B138()
{
  if (!qword_28127EB58)
  {
    sub_2208865FC();
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EB58);
    }
  }
}

id sub_22058B190()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for ForYouTitleView()) initWithFrame_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_22058B20C()
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v12[-v2];
  v4 = sub_22088C32C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions;
    swift_beginAccess();
    sub_22058BB60(v10 + v11, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_22058BBF4(v3);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      if (*(v10 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset + 8))
      {
        (*(v5 + 8))(v8, v4);
      }

      else
      {
        sub_22058B43C(v8, *(v10 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset));

        return (*(v5 + 8))(v8, v4);
      }
    }
  }

  return result;
}

uint64_t sub_22058B43C(uint64_t a1, double a2)
{
  v3 = v2;
  v67 = a1;
  v5 = type metadata accessor for ForYouTitleViewLayoutOptions();
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ForYouTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v68 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v66 = &v64 - v15;
  v16 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2[13];
  v21 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v20);
  (*(v21 + 8))(v20, v21);
  sub_2208886DC();

  v65 = v2[15];
  sub_22046DA2C((v2 + 16), &v70);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  swift_unknownObjectRetain();
  v24 = [v23 bundleForClass_];
  v64 = sub_220884CAC();

  v25 = [v23 bundleForClass_];
  v26 = sub_220884CAC();
  v28 = v27;

  sub_220503B68(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220899360;
  v30 = *v19;
  v31 = v19[1];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_22048D860();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;

  v32 = sub_22089139C();
  v34 = v33;

  sub_22058BC80(v19, type metadata accessor for AttributionSource);
  v69[0] = v26;
  v69[1] = v28;
  v69[2] = v32;
  v69[3] = v34;
  v69[4] = 0;
  v69[5] = v65;
  v35 = sub_22088C32C();
  v36 = *(v35 - 8);
  v37 = v66;
  (*(v36 + 16))(v66, v67, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions;
  swift_beginAccess();
  sub_22058BCE0(v37, v3 + v38);
  swift_endAccess();
  v39 = (v3 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset);
  *v39 = a2;
  *(v39 + 8) = 0;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  sub_22088C21C();
  v41 = v40;
  v43 = v42;
  v44 = sub_22088C20C();
  MEMORY[0x223D89BD0](v44, 0.0, v45, v46, v47, v48);
  sub_220891A5C();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_22088C1DC();
  sub_22088C1FC();
  v58 = v57;
  v59 = sub_22088C24C();
  v60 = sub_22088C2AC();
  *v9 = v41;
  v9[1] = v43;
  v9[2] = v50;
  v9[3] = v52;
  v9[4] = v54;
  v9[5] = v56;
  *(v9 + v6[9]) = v58;
  *(v9 + v6[10]) = v59;
  *(v9 + v6[11]) = v60;
  *(v9 + v6[12]) = 0;
  *(v9 + v6[13]) = 0;
  *(v9 + v6[14]) = 0x4000000000000000;
  *(v9 + v6[15]) = 0x4010000000000000;
  *(v9 + v6[16]) = a2;
  v61 = v68;
  sub_220523318(v69, v9, v68);
  sub_22058BC80(v9, type metadata accessor for ForYouTitleViewLayoutOptions);
  v62 = sub_22058B190();
  sub_22051481C(v69, v61, v62);

  [*(v3[2] + OBJC_IVAR____TtC8StocksUI15ForYouTitleView_separatorLayer) setHidden_];
  sub_22058BC80(v61, type metadata accessor for ForYouTitleViewLayoutAttributes);
  return sub_220515C00(v69);
}

uint64_t sub_22058BABC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  sub_22058BBF4(v0 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions);

  return swift_deallocClassInstance();
}

uint64_t sub_22058BB60(uint64_t a1, uint64_t a2)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22058BBF4(uint64_t a1)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22058BC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22058BCE0(uint64_t a1, uint64_t a2)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22058BDF0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_22058BE34()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEA8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058BEAC()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (v1)
  {
    v2 = [v1 imageWithRenderingMode_];

    qword_27CF6CEB0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058BF6C()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [v1 imageWithRenderingMode_];

    qword_27CF6CEC0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C054()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_2812B6928 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C0F4()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEE0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C16C()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22089132C();
  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
    *a4 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_22058C2F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22058C328(double a1, double a2, double a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_22089132C();
  v8 = [v6 initWithBundleIdentifier_];

  v9 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, a3}];
  v10 = [v8 imageForDescriptor_];
  v11 = v10;
  if (v10 && (v12 = [v10 CGImage]) != 0)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    return v14;
  }

  else
  {
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v16 = sub_22088A84C();
    __swift_project_value_buffer(v16, qword_2812B6CD0);
    v17 = sub_22088A82C();
    v18 = sub_220891ADC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22043F000, v17, v18, "Failed to create app icon image from IconServices", v19, 2u);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22058C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v16 = objc_allocWithZone(MEMORY[0x277D82BB8]);

  *(v15 + 16) = [v16 init];
  type metadata accessor for StockListViewController();
  sub_22046F5CC(&qword_27CF56E50, type metadata accessor for StockListViewController);
  sub_22088BF5C();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = v15;
  v17[7] = sub_22058D744;
  v17[8] = v14;

  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  result = swift_beginAccess();
  if (*(v15 + 16))
  {
    v19 = *(v15 + 16);

    sub_2208882EC();

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22058C754(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_22058D67C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208854AC();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = *(v7 + 56);
  sub_22046B36C();
  (*(*(v13 - 8) + 16))(&v10[v12], a2, v13);
  a3(v10);
  return sub_22058D7C4(v10, sub_22058D67C);
}

uint64_t sub_22058C880(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, void (*a7)(char *, char *), uint64_t a8)
{
  v47 = a8;
  v48 = a7;
  v46 = a6;
  v52 = a4;
  v53 = a5;
  v10 = MEMORY[0x277D83D88];
  sub_22058D760(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v50 = &v45 - v13;
  v51 = sub_2208854AC();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v14);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058D760(0, &qword_281297F78, sub_22046B36C, v10);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v45 - v18;
  sub_22046B36C();
  v21 = v20;
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BB48(0, &qword_281297DB0, MEMORY[0x277D6D710]);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v45 - v33;
  sub_22059BCB8(a2, a3, v28);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    return sub_22058D7C4(v28, sub_2204A1EF0);
  }

  (*(v31 + 32))(v34, v28, v30);
  sub_22059C108(v52, v53, v19);
  if ((*(v54 + 48))(v19, 1, v21) == 1)
  {
    (*(v31 + 8))(v34, v30);
    v36 = &qword_281297F78;
    v37 = sub_22046B36C;
    v38 = v19;
    return sub_2205169AC(v38, v36, v37);
  }

  (*(v54 + 32))(v24, v19, v21);
  sub_22045BB48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v39 = v50;
  sub_22088E7EC();
  v40 = v49;
  v41 = v51;
  if ((*(v49 + 48))(v39, 1, v51) == 1)
  {
    (*(v54 + 8))(v24, v21);
    (*(v31 + 8))(v34, v30);
    v36 = &qword_2812993D0;
    v37 = MEMORY[0x277CC9AF8];
    v38 = v39;
    return sub_2205169AC(v38, v36, v37);
  }

  v42 = v45;
  (*(v40 + 32))(v45, v39, v41);
  v43 = v46;
  swift_beginAccess();
  v44 = *(v43 + 16);
  *(v43 + 16) = 0;

  v48(v42, v24);
  (*(v40 + 8))(v42, v41);
  (*(v54 + 8))(v24, v21);
  return (*(v31 + 8))(v34, v30);
}

uint64_t sub_22058CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a2;
  v16[2] = a1;
  swift_getObjectType();
  v4 = sub_22088CBBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BB48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v16 - v13;
  v16[3] = a3;
  sub_22046F5CC(&qword_27CF56E50, type metadata accessor for StockListViewController);
  sub_22088BF9C();
  sub_22088CBAC();
  sub_22046F5CC(&qword_28128ACA0, type metadata accessor for StockListViewController);
  sub_22088DA7C();
  (*(v5 + 8))(v8, v4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22058D028(void *a1)
{
  sub_22058D760(0, &qword_27CF56E40, sub_22058D67C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_220888F2C();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22058D6EC;
  *(v3 + 24) = v2;
  v4 = a1;
  v5 = sub_220888D9C();
  v6 = sub_220888E4C();

  return v6;
}

uint64_t sub_22058D194()
{
  sub_22045BB48(0, &qword_281297DB0, MEMORY[0x277D6D710]);
  sub_22088B2AC();
  if (v7)
  {
    if (v7 != 1)
    {
      return 0;
    }

    v0 = 0;
  }

  else
  {
    v0 = 1;
  }

  sub_2204BE754(v2, v3, v4, v5, v6, v7);
  return v0;
}

void sub_22058D220(uint64_t a1, void (*a2)(id))
{
  sub_22058D5E8();
  sub_22089264C();
  v3 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v4 = sub_22089132C();

  v5 = [v3 initWithMessage_];

  a2(v5);
}

void sub_22058D388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22089132C();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v15, &v16);
    type metadata accessor for StockListViewController();
    v8 = swift_dynamicCast();
    MEMORY[0x28223BE20](v8, v9);
    sub_220888FBC();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    v11 = sub_220888D9C();
    sub_220888E4C();

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    v13 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22058D5E8()
{
  result = qword_28127DE30;
  if (!qword_28127DE30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127DE30);
  }

  return result;
}

void sub_22058D67C()
{
  if (!qword_27CF56E48)
  {
    sub_2208854AC();
    sub_22046B36C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56E48);
    }
  }
}

uint64_t sub_22058D6F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_22058D67C();
  return v3(a1, a1 + *(v4 + 48));
}

void sub_22058D760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22058D7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22058D84C(void *a1)
{
  sub_22058E29C(0, &qword_27CF56E88, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22058E188();
  sub_220892A5C();
  v10[15] = 0;
  sub_22088F39C();
  sub_22058E300(&qword_27CF56E90, MEMORY[0x277D31C50]);
  sub_22089283C();
  if (!v1)
  {
    type metadata accessor for CuratedForYouFeedGroup();
    v10[14] = 1;
    sub_22089280C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22058DA18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22088F39C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058E29C(0, &qword_27CF56E70, MEMORY[0x277D844C8]);
  v31 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22058E188();
  sub_220892A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v15;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_22058E300(&qword_27CF56E80, MEMORY[0x277D31C50]);
  v18 = v30;
  sub_22089279C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_22089277C();
  v21 = v20;
  (*(v16 + 8))(v11, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v12 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_22058E1DC(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22058E240(v23);
}

uint64_t sub_22058DD58()
{
  if (*v0)
  {
    return 0x65707974627573;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_22058DD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_2208928BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2208928BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22058DE88(uint64_t a1)
{
  v2 = sub_22058E188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22058DEC4(uint64_t a1)
{
  v2 = sub_22058E188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22058DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22058E300(&qword_27CF56E68, type metadata accessor for CuratedForYouFeedGroup);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_22058DFD0(uint64_t a1)
{
  v2 = sub_22058E300(&qword_27CF56E68, type metadata accessor for CuratedForYouFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_22058E03C(uint64_t a1)
{
  MEMORY[0x223D89680](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0x2064657461727543;
}

unint64_t sub_22058E188()
{
  result = qword_27CF56E78;
  if (!qword_27CF56E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E78);
  }

  return result;
}

uint64_t sub_22058E1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedForYouFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22058E240(uint64_t a1)
{
  v2 = type metadata accessor for CuratedForYouFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22058E29C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22058E188();
    v7 = a3(a1, &type metadata for CuratedForYouFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22058E300(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22058E35C()
{
  result = qword_27CF56E98;
  if (!qword_27CF56E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E98);
  }

  return result;
}

unint64_t sub_22058E3B4()
{
  result = qword_27CF56EA0;
  if (!qword_27CF56EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EA0);
  }

  return result;
}

unint64_t sub_22058E40C()
{
  result = qword_27CF56EA8;
  if (!qword_27CF56EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EA8);
  }

  return result;
}

uint64_t sub_22058E460(unsigned __int8 *a1, int a2, uint64_t a3, char *a4)
{
  LODWORD(v305) = a2;
  v324 = a1;
  v7 = *a3;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v293 = *(a3 + 8);
  v294 = v7;
  sub_220891EAC();
  [a4 setCenter_];
  v291 = v9;
  v292 = v8;
  [a4 setBounds_];
  sub_22048BC00();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22089BD60;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v10 + 48) = swift_getKeyPath();
  *(v10 + 56) = swift_getKeyPath();
  *(v10 + 64) = swift_getKeyPath();
  *(v10 + 72) = swift_getKeyPath();
  *(v10 + 80) = swift_getKeyPath();
  *(v10 + 88) = swift_getKeyPath();
  v11 = sub_2207E1384(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v308 = v4;
  sub_220590100(7, v11, a3, a4);

  v12 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup];
  v13 = *(a3 + 80);
  v14 = *(a3 + 88);
  v15 = *(a3 + 128);
  v16 = *(a3 + 136);
  v17 = *(a3 + 168);
  v18 = *(a3 + 176);
  v304 = *(a3 + 184);
  [v12 setBounds_];
  v19 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1];
  v20 = *(a3 + 248);
  v21 = *(a3 + 256);
  v22 = *(a3 + 280);
  v310 = *(a3 + 272);
  v23 = *(a3 + 296);
  v297 = *(a3 + 288);
  v298 = v22;
  v296 = v23;
  v24 = *(a3 + 312);
  v325 = *(a3 + 304);
  v323 = v24;
  v25 = *(a3 + 320);
  v299 = *(a3 + 328);
  v300 = v25;
  v26 = *(a3 + 336);
  v317 = *(a3 + 344);
  v318 = v26;
  v27 = *(a3 + 352);
  v315 = *(a3 + 360);
  v316 = v27;
  [v19 setBounds_];
  v28 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2];
  v29 = *(a3 + 384);
  v30 = *(a3 + 392);
  v31 = *(a3 + 408);
  v303 = *(a3 + 416);
  v32 = *(a3 + 424);
  v301 = *(a3 + 432);
  *&v302 = v32;
  v34 = *(a3 + 440);
  v33 = *(a3 + 448);
  v313 = v31;
  v314 = v34;
  v309 = v33;
  v35 = *(a3 + 456);
  v306 = *(a3 + 464);
  v307 = v35;
  v36 = *(a3 + 472);
  v321 = *(a3 + 480);
  v322 = v36;
  v37 = *(a3 + 488);
  v319 = *(a3 + 496);
  v320 = v37;
  [v28 setBounds_];
  v38 = *(a3 + 664);
  v39 = *(a3 + 672);
  v289 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
  [v289 setBounds_];
  v287 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon;
  v40 = *&v12[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon];
  sub_220891EAC();
  [v40 &selRef_supportsMultipleScenes];
  [v40 setBounds_];

  v311 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel;
  v312 = v12;
  v41 = *&v12[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel];
  sub_220891EAC();
  [v41 &selRef_supportsMultipleScenes];
  [v41 setBounds_];

  v42 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
  v43 = *(a3 + 48);
  v44 = *(a3 + 56);
  sub_220891EAC();
  [v42 &selRef_supportsMultipleScenes];
  v288 = v42;
  [v42 setBounds_];
  v45 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator];
  v46 = *(a3 + 208);
  v47 = *(a3 + 216);
  sub_220891EAC();
  [v45 &selRef_supportsMultipleScenes];
  v286 = v45;
  [v45 setBounds_];
  v285 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  v48 = *&v19[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  sub_220891EAC();
  [v48 &selRef_supportsMultipleScenes];
  [v48 setBounds_];

  v310 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  v49 = *&v19[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  sub_220891EAC();
  [v49 &selRef_supportsMultipleScenes];
  [v49 setBounds_];

  v323 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  v325 = v19;
  v50 = *&v19[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
  sub_220891EAC();
  [v50 &selRef_supportsMultipleScenes];
  [v50 setBounds_];

  v290 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  v51 = *&v28[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  sub_220891EAC();
  [v51 &selRef_supportsMultipleScenes];
  [v51 setBounds_];

  v313 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  v52 = *&v28[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  sub_220891EAC();
  [v52 &selRef_supportsMultipleScenes];
  [v52 setBounds_];

  v306 = *&v28;
  v314 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  v53 = *&v28[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
  sub_220891EAC();
  [v53 &selRef_supportsMultipleScenes];
  [v53 setBounds_];

  v54 = *(a3 + 584);
  v55 = *(a3 + 616);
  v334 = *(a3 + 600);
  v335[0] = v55;
  *(v335 + 9) = *(a3 + 625);
  v56 = *(a3 + 520);
  v57 = *(a3 + 552);
  v330 = *(a3 + 536);
  v331 = v57;
  v58 = *(a3 + 552);
  v59 = *(a3 + 584);
  v332 = *(a3 + 568);
  v333 = v59;
  v60 = *(a3 + 520);
  v328 = *(a3 + 504);
  v329 = v60;
  v344 = v54;
  v345 = v334;
  *v346 = *(a3 + 616);
  *&v346[9] = *(a3 + 625);
  v341 = v330;
  v342 = v58;
  v343 = v332;
  v339 = v328;
  v340 = v56;
  if (sub_220590AEC(&v339) != 1)
  {
    v61 = *(&v342 + 1);
    v62 = *&v343;
    v63 = *(&v344 + 1);
    v309 = *(&v345 + 1);
    v64 = *&v345;
    v307 = *v346;
    v303 = *&v346[8];
    *&v302 = *&v346[16];
    v65 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3];
    [v65 setBounds_];
    v66 = *&v65[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
    sub_220891EAC();
    [v66 &selRef_supportsMultipleScenes];
    [v66 setBounds_];

    v67 = *&v65[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    sub_220891EAC();
    [v67 &selRef_supportsMultipleScenes];
    [v67 setBounds_];

    v68 = *&v65[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
    sub_220891EAC();
    [v68 &selRef_supportsMultipleScenes];
    [v68 setBounds_];
  }

  v69 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink];
  v70 = *(a3 + 768);
  v71 = *(a3 + 776);
  sub_220891EAC();
  [v69 &selRef_supportsMultipleScenes];
  [v69 setBounds_];
  v72 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton];
  v73 = *(a3 + 704);
  v74 = *(a3 + 712);
  sub_220891EAC();
  [v72 &selRef_supportsMultipleScenes];
  v309 = v72;
  [v72 setBounds_];
  v75 = sub_22088F0DC();
  v76 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon];
  v284 = v69;
  if (v75)
  {
    [v69 frame];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = *(a3 + 728);
    v86 = *(a3 + 736);
    v87 = *(a3 + 744);
    v88 = [v76 effectiveUserInterfaceLayoutDirection];
    v89 = v310;
    v90 = v78;
    v91 = v80;
    v92 = v82;
    v93 = v84;
    if (v88 == 1)
    {
      MinX = CGRectGetMaxX(*&v90) - v86;
    }

    else
    {
      MinX = CGRectGetMinX(*&v90);
    }

    [v76 setFrame_];
  }

  else
  {
    v86 = *(a3 + 736);
    v87 = *(a3 + 744);
    sub_220891EAC();
    [v76 &selRef_supportsMultipleScenes];
    v89 = v310;
  }

  [v76 setBounds_];
  v307 = v76;
  v95 = v308[5];
  v96 = v308[6];
  v97 = __swift_project_boxed_opaque_existential_1(v308 + 2, v95);
  v98 = *(v95 - 8);
  *&v100 = MEMORY[0x28223BE20](v97, v99).n128_u64[0];
  v102 = v279 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = [a4 traitCollection];
  v308 = a4;
  v104 = v103;
  (*(*(v96 + 8) + 8))();

  (*(v96 + 16))(v326, v305 & 1, v95, v96);
  (*(v98 + 8))(v102, v95);
  [*&v312[v311] setAttributedText_];
  v105 = *&v325[v89];
  v106 = __swift_project_boxed_opaque_existential_1(v326, v327);
  v107 = *(v324 + 6);
  v295 = *(v324 + 5);
  v280 = v107;
  v108 = *(v324 + 7);
  v282 = *(v324 + 8);
  v283 = v108;
  v109 = *v106;
  v110 = objc_allocWithZone(MEMORY[0x277D74240]);
  v281 = v105;
  v111 = [v110 init];
  v112 = sub_22044D56C(0, &qword_28127E570);
  v113 = *MEMORY[0x277D76A20];
  v114 = sub_220891F2C();
  [v114 lineHeight];
  v116 = v115;

  [v111 setMinimumLineHeight_];
  v304 = v113;
  v117 = sub_220891F2C();
  [v117 &selRef_defaultCalendarForNewEvents + 6];
  v119 = v118;

  [v111 setMaximumLineHeight_];
  [v111 setLineBreakStrategy_];
  sub_2204A5DF0();
  v303 = v120;
  v121 = swift_allocObject();
  v302 = xmmword_22089B140;
  *(v121 + 16) = xmmword_22089B140;
  v122 = *MEMORY[0x277D740A8];
  *(v121 + 32) = *MEMORY[0x277D740A8];
  v301 = v122;
  v305 = v112;
  v123 = sub_220891F2C();
  v124 = MEMORY[0x277D740C0];
  *(v121 + 40) = v123;
  v125 = *v124;
  *(v121 + 64) = v112;
  *(v121 + 72) = v125;
  v127 = v109[5];
  v126 = v109[6];
  __swift_project_boxed_opaque_existential_1(v109 + 2, v127);
  v128 = *(v126 + 16);
  v129 = *(v128 + 40);
  v300 = v125;
  v130 = v129(v127, v128);
  *&v131 = COERCE_DOUBLE(sub_22044D56C(0, &qword_28127E530));
  v299 = *&v131;
  *(v121 + 80) = v130;
  v132 = *MEMORY[0x277D74118];
  *(v121 + 104) = *&v131;
  *(v121 + 112) = v132;
  v298 = sub_22044D56C(0, &qword_28127E648);
  *(v121 + 144) = v298;
  *(v121 + 120) = v111;
  v296 = v132;
  v133 = v111;
  sub_2204A5EAC(v121);
  swift_setDeallocating();
  sub_2204A5D84();
  v297 = v134;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v135 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v136 = sub_22089132C();
  type metadata accessor for Key(0);
  v295 = v137;
  v138 = sub_2204A63B8();
  v139 = sub_22089125C();

  v140 = [v135 initWithString:v136 attributes:v139];

  v141 = v281;
  [v281 setAttributedText_];

  v142 = *&v325[v323];
  __swift_project_boxed_opaque_existential_1(v326, v327);
  v143 = v142;
  v144 = sub_2207CB8FC();
  [v143 setAttributedText_];

  v145 = v306;
  v146 = *(*&v306 + v313);
  v147 = __swift_project_boxed_opaque_existential_1(v326, v327);
  v148 = *(v324 + 9);
  v279[1] = *(v324 + 10);
  v280 = v148;
  v149 = *(v324 + 11);
  v282 = *(v324 + 12);
  v283 = v149;
  v150 = *v147;
  v151 = objc_allocWithZone(MEMORY[0x277D74240]);
  v281 = v146;
  v152 = [v151 init];
  v153 = v305;
  v154 = sub_220891F2C();
  [v154 lineHeight];
  v156 = v155;

  [v152 setMinimumLineHeight_];
  v157 = v153;
  v158 = sub_220891F2C();
  [v158 lineHeight];
  v160 = v159;

  [v152 setMaximumLineHeight_];
  [v152 setLineBreakStrategy_];
  v161 = swift_allocObject();
  *(v161 + 16) = v302;
  *(v161 + 32) = v301;
  *(v161 + 40) = sub_220891F2C();
  v162 = v300;
  *(v161 + 64) = v157;
  *(v161 + 72) = v162;
  v164 = v150[5];
  v163 = v150[6];
  __swift_project_boxed_opaque_existential_1(v150 + 2, v164);
  *(v161 + 80) = (*(*(v163 + 16) + 40))(v164);
  v165 = v296;
  *(v161 + 104) = v299;
  *(v161 + 112) = v165;
  *(v161 + 144) = v298;
  *(v161 + 120) = v152;
  v166 = v152;
  sub_2204A5EAC(v161);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v167 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v168 = sub_22089132C();
  v280 = v138;
  v169 = sub_22089125C();

  v170 = [v167 initWithString:v168 attributes:v169];

  v171 = v325;
  v172 = v281;
  [v281 setAttributedText_];

  v173 = *(*&v145 + v314);
  __swift_project_boxed_opaque_existential_1(v326, v327);
  v174 = v173;
  v175 = sub_2207CB8FC();
  [v174 setAttributedText_];

  __swift_project_boxed_opaque_existential_1(v326, v327);
  v176 = v324;
  v177 = sub_2207CBC6C();
  [v309 setAttributedTitle:v177 forState:0];

  v178 = [*(v176 + 20) imageWithRenderingMode_];
  v179 = v307;
  [v307 setImage_];

  [v179 setIsAccessibilityElement_];
  v180 = [objc_opt_self() mainBundle];
  sub_220884CAC();

  v181 = sub_22089132C();

  [v179 setAccessibilityLabel_];

  __swift_project_boxed_opaque_existential_1(v326, v327);
  v182 = sub_2207CBF78(*(v176 + 19));
  v183 = v284;
  [v284 setAttributedText_];

  v184 = __swift_project_boxed_opaque_existential_1(v326, v327);
  v186 = *(*v184 + 40);
  v185 = *(*v184 + 48);
  __swift_project_boxed_opaque_existential_1((*v184 + 16), v186);
  v187 = (*(*(v185 + 16) + 48))(v186);
  [v308 setBackgroundColor_];

  v188 = v312;
  v189 = *&v312[v287];
  [v189 frame];
  v191 = v190;
  v193 = v192;
  v194 = [objc_opt_self() mainScreen];
  [v194 scale];
  v196 = v195;

  v197 = sub_22058C328(v191, v193, v196);
  [v189 setImage_];

  [*&v188[v311] setNumberOfLines_];
  v198 = __swift_project_boxed_opaque_existential_1(v326, v327);
  v200 = *(*v198 + 40);
  v199 = *(*v198 + 48);
  __swift_project_boxed_opaque_existential_1((*v198 + 16), v200);
  v201 = (*(*(v199 + 16) + 40))(v200);
  [v286 setColor_];

  v202 = *__swift_project_boxed_opaque_existential_1(v326, v327);
  v203 = *&v171[v285];
  [v203 setContentMode_];
  if (qword_27CF55878 != -1)
  {
    swift_once();
  }

  v204 = [qword_27CF6CEA8 imageWithConfiguration_];
  [v203 &selRef_eventIdentifier];

  [*&v171[v310] setNumberOfLines_];
  v205 = v323;
  [*&v171[v323] &off_27844B878];
  __swift_project_boxed_opaque_existential_1(v326, v327);
  sub_2207CCBFC(v309);
  v206 = __swift_project_boxed_opaque_existential_1(v326, v327);
  v208 = *(*v206 + 40);
  v207 = *(*v206 + 48);
  __swift_project_boxed_opaque_existential_1((*v206 + 16), v208);
  v209 = (*(*(v207 + 16) + 128))(v208);
  [v307 setTintColor_];

  sub_2207D3324(v183);
  __swift_project_boxed_opaque_existential_1(v326, v327);
  [v288 contentSize];
  v211 = v210;
  v347.origin.y = v293;
  v347.origin.x = v294;
  v347.size.height = v291;
  v347.size.width = v292;
  v212 = CGRectGetHeight(v347) < v211;
  sub_2207CCF58(v289, v212);
  v213 = *(v176 + 14);
  v214 = v205;
  if (v213 == 0.0 || (v215 = *v176, v215 == 2))
  {
    __swift_project_boxed_opaque_existential_1(v326, v327);
    v216 = *v176;
    v217 = *(*&v145 + v290);
    sub_2207CCA20(v217, v216);

    [*(*&v145 + v313) setNumberOfLines_];
    v218 = v314;
    [*(*&v145 + v314) setNumberOfLines_];
    v219 = *(v308 + OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3);
    [*&v219[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image] setHidden_];
    [*&v219[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title] setHidden_];
    [*&v219[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb] setHidden_];
  }

  else
  {
    v307 = *(v176 + 13);
    v220 = *(v176 + 15);
    v310 = *(v176 + 16);
    v311 = v220;
    v309 = *(v308 + OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3);
    v324 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
    v221 = *&v309[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    LODWORD(v312) = v215;
    v294 = v213;
    v222 = *__swift_project_boxed_opaque_existential_1(v326, v327);
    v223 = objc_allocWithZone(MEMORY[0x277D74240]);
    v308 = v221;
    v224 = [v223 init];
    v225 = v305;
    v226 = sub_220891F2C();
    [v226 lineHeight];
    v228 = v227;

    [v224 setMinimumLineHeight_];
    v229 = sub_220891F2C();
    [v229 lineHeight];
    v231 = v230;

    [v224 setMaximumLineHeight_];
    [v224 setLineBreakStrategy_];
    v232 = swift_allocObject();
    *(v232 + 16) = v302;
    v233 = v301;
    *(v232 + 32) = v301;
    v234 = v233;
    *(v232 + 40) = sub_220891F2C();
    v235 = v300;
    *(v232 + 64) = v225;
    *(v232 + 72) = v235;
    v237 = v222[5];
    v236 = v222[6];
    __swift_project_boxed_opaque_existential_1(v222 + 2, v237);
    v238 = *(v236 + 16);
    v239 = *(v238 + 40);
    v240 = v235;
    v241 = v237;
    v214 = v323;
    v242 = v239(v241, v238);
    v218 = v314;
    *(v232 + 80) = v242;
    v243 = v298;
    v244 = v296;
    *(v232 + 104) = v299;
    *(v232 + 112) = v244;
    *(v232 + 144) = v243;
    *(v232 + 120) = v224;
    v245 = v244;
    v246 = v224;
    sub_2204A5EAC(v232);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v247 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v248 = sub_22089132C();
    v249 = sub_22089125C();

    v250 = [v247 initWithString:v248 attributes:v249];

    v145 = v306;
    v251 = v308;
    [v308 setAttributedText_];

    v308 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
    v252 = v309;
    v253 = *&v309[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
    __swift_project_boxed_opaque_existential_1(v326, v327);
    v254 = v253;
    v255 = sub_2207CB8FC();
    [v254 setAttributedText_];

    __swift_project_boxed_opaque_existential_1(v326, v327);
    v256 = *(*&v145 + v290);
    LOBYTE(v236) = v312;
    sub_2207CC91C(v256, v312 & 1);

    [*(*&v145 + v313) setNumberOfLines_];
    [*(*&v145 + v218) setNumberOfLines_];
    __swift_project_boxed_opaque_existential_1(v326, v327);
    v257 = *&v252[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
    v258 = v236;
    v171 = v325;
    sub_2207CCA20(v257, v258);

    [*&v324[v252] setNumberOfLines_];
    v219 = v252;
    [*(v308 + v252) setNumberOfLines_];
  }

  [*&v171[v214] sizeToFit];
  v259 = *&v171[v214];
  [v259 frame];
  v348.origin.y = v317;
  v348.origin.x = v318;
  v348.size.height = v315;
  v348.size.width = v316;
  CGRectGetWidth(v348);
  sub_220891ECC();
  v261 = v260;
  v263 = v262;
  sub_220891EAC();
  [v259 setCenter_];
  [v259 setBounds_];

  [*(*&v145 + v218) sizeToFit];
  v264 = *(*&v145 + v218);
  [v264 frame];
  v349.origin.y = v321;
  v349.origin.x = v322;
  v349.size.height = v319;
  v349.size.width = v320;
  CGRectGetWidth(v349);
  sub_220891ECC();
  v266 = v265;
  v268 = v267;
  sub_220891EAC();
  [v264 setCenter_];
  [v264 setBounds_];

  v269 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  [*&v219[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb] sizeToFit];
  v336[5] = v333;
  v337 = v334;
  v338[0] = v335[0];
  *(v338 + 9) = *(v335 + 9);
  v336[2] = v330;
  v336[3] = v331;
  v336[4] = v332;
  v336[0] = v328;
  v336[1] = v329;
  if (sub_220590AEC(v336) != 1)
  {
    v270 = *(&v337 + 1);
    v271 = v338[0];
    v272 = *&v338[1];
    v273 = *&v219[v269];
    [v273 &off_27844BC78];
    v350.origin.x = v270;
    *&v350.origin.y = v271;
    v350.size.height = v272;
    CGRectGetWidth(v350);
    sub_220891ECC();
    v275 = v274;
    v277 = v276;
    sub_220891EAC();
    [v273 setCenter_];
    [v273 setBounds_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v326);
}

id sub_220590100(char a1, uint64_t a2, uint64_t a3, char *a4)
{
  KeyPath = swift_getKeyPath();
  v10 = sub_22056F33C(KeyPath, a2);

  if (v10)
  {
    v12 = *(a3 + 96);
    v11 = *(a3 + 104);
    sub_220891EAC();
    v13 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup] setCenter_];
      v14 = a1 & 2;
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v14 = a1 & 2;
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }
    }

    [v13 setAlpha_];
    if ((a1 & 4) != 0)
    {
LABEL_9:
      CGAffineTransformMakeScale(&v81, v11, v11);
      [v13 setTransform_];
    }
  }

  else
  {
    v14 = a1 & 2;
  }

LABEL_10:
  v15 = swift_getKeyPath();
  v16 = sub_22056F33C(v15, a2);

  if ((v16 & 1) != 0 && v14)
  {
    [*(*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup] + OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon) setAlpha_];
  }

  v17 = swift_getKeyPath();
  v18 = sub_22056F33C(v17, a2);

  if (v18)
  {
    v19 = *(a3 + 264);
    sub_220891EAC();
    v20 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setCenter_];
    }

    if (v14)
    {
      [v20 setAlpha_];
    }
  }

  v21 = swift_getKeyPath();
  v22 = sub_22056F33C(v21, a2);

  if (v22)
  {
    v23 = *(a3 + 400);
    sub_220891EAC();
    v24 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setCenter_];
    }

    if (v14)
    {
      [v24 setAlpha_];
    }
  }

  v25 = swift_getKeyPath();
  v26 = sub_22056F33C(v25, a2);

  if (v26)
  {
    v27 = *(a3 + 600);
    v28 = *(a3 + 616);
    v29 = *(a3 + 568);
    v84 = *(a3 + 584);
    v85 = v27;
    v86[0] = v28;
    *(v86 + 9) = *(a3 + 625);
    v30 = *(a3 + 552);
    *&v81.tx = *(a3 + 536);
    v82 = v30;
    v83 = v29;
    v31 = *(a3 + 520);
    *&v81.a = *(a3 + 504);
    *&v81.c = v31;
    if (sub_220590AEC(&v81) != 1)
    {
      tx = v81.tx;
      sub_220891EAC();
      v33 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3];
      if (a1)
      {
        [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setCenter_];
      }

      if (v14)
      {
        [v33 setAlpha_];
      }
    }
  }

  v34 = swift_getKeyPath();
  v35 = sub_22056F33C(v34, a2);

  if (v35)
  {
    sub_220891EAC();
    v36 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setCenter_];
    }

    if (v14)
    {
      [v36 setAlpha_];
    }
  }

  v37 = swift_getKeyPath();
  v38 = sub_22056F33C(v37, a2);

  if (v38)
  {
    v72 = v14;
    v39 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
    v40 = *(a3 + 672);
    v41 = *(a3 + 504);
    v42 = *(a3 + 512);
    v43 = *(a3 + 520);
    v44 = *(a3 + 528);
    v45 = *(a3 + 616);
    v79 = *(a3 + 600);
    v80[0] = v45;
    *(v80 + 9) = *(a3 + 625);
    v46 = *(a3 + 552);
    v75 = *(a3 + 536);
    v76 = v46;
    v47 = *(a3 + 584);
    v77 = *(a3 + 568);
    v78 = v47;
    *v74 = v41;
    *&v74[1] = v42;
    *&v74[2] = v43;
    *&v74[3] = v44;
    if (sub_220590AEC(v74) == 1)
    {
      v41 = *(a3 + 368);
      v42 = *(a3 + 376);
      v43 = *(a3 + 384);
      v44 = *(a3 + 392);
    }

    v87.origin.x = *a3;
    v70 = *(a3 + 8);
    v87.origin.y = v70;
    x = v87.origin.x;
    v48 = *(a3 + 16);
    v49 = *(a3 + 24);
    v87.size.width = v48;
    v87.size.height = v49;
    Width = CGRectGetWidth(v87);
    v88.origin.x = v41;
    v88.origin.y = v42;
    v88.size.width = v43;
    v88.size.height = v44;
    [v39 setContentSize_];
    v51 = v4[5];
    v52 = v4[6];
    v53 = __swift_project_boxed_opaque_existential_1(v4 + 2, v51);
    v68 = &v68;
    v69 = v39;
    v54 = *(v51 - 8);
    *&v56 = MEMORY[0x28223BE20](v53, v55).n128_u64[0];
    v58 = &v68 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = a4;
    v60 = [a4 traitCollection];
    (*(*(v52 + 8) + 8))();

    a4 = v59;
    (*(v52 + 16))(v73, 0, v51, v52);
    (*(v54 + 8))(v58, v51);
    __swift_project_boxed_opaque_existential_1(v73, v73[3]);
    v61 = *&v59[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
    [v69 contentSize];
    v63 = v62;
    v89.origin.y = v70;
    v89.origin.x = x;
    v89.size.width = v48;
    v89.size.height = v49;
    v64 = CGRectGetHeight(v89) < v63;
    sub_2207CCF58(v61, v64);
    __swift_destroy_boxed_opaque_existential_1(v73);
    v14 = v72;
  }

  v65 = swift_getKeyPath();
  v66 = sub_22056F33C(v65, a2);

  if (v66)
  {
    if (v14)
    {
      return [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator] setAlpha_];
    }
  }

  return result;
}

void sub_220590760(uint64_t a1, double *a2, char *a3)
{
  v6 = sub_22088ADDC();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088AA4C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = *a2;
  v13 = a2[1];
  v14 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v14 scaledValueForValue_];
  v16 = v15;

  if (v16 > 225.0)
  {
    v16 = 225.0;
  }

  sub_22089028C();
  v17 = v3[5];
  v18 = v3[6];
  v19 = __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v20 = *(v17 - 8);
  *&v22 = MEMORY[0x28223BE20](v19, v21).n128_u64[0];
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a3 traitCollection];
  (*(*(v18 + 8) + 8))();

  (*(v18 + 24))(v33, v17, v18);
  (*(v20 + 8))(v24, v17);
  v26 = objc_allocWithZone(sub_22088E89C());
  v27 = sub_22088E88C();
  [a3 frame];
  [v27 setFrame_];
  (*(v31 + 104))(v9, *MEMORY[0x277D6D420], v32);
  sub_22088E87C();
  v28 = *&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView];
  *&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView] = v27;
  v29 = v27;
  sub_2206F4DE8(v28);

  [*&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator] setHidden_];
}

uint64_t sub_220590AEC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220590B78(uint64_t a1)
{
  v3 = type metadata accessor for ManageWatchlistsReloadBlueprintModifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v14 - v9);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  v11 = sub_220885FCC();
  sub_220591268(a1, v10 + *(v3 + 24), type metadata accessor for ManageWatchlistsContentMode);
  *v10 = 0x64616F6C6552;
  v10[1] = 0xE600000000000000;
  v10[2] = v11;
  sub_220591268(v10, v6, type metadata accessor for ManageWatchlistsReloadBlueprintModifier);
  sub_22059115C();
  swift_allocObject();
  sub_2205912D0(&qword_27CF56ED0, type metadata accessor for ManageWatchlistsReloadBlueprintModifier);
  v12 = sub_22088B66C();
  sub_220591318(v10, type metadata accessor for ManageWatchlistsReloadBlueprintModifier);
  return v12;
}

uint64_t sub_220590D24()
{
  sub_22059115C();
  swift_allocObject();
  sub_220591214();

  return sub_22088B66C();
}

uint64_t sub_220590DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - v12;
  v15 = *(v14 + 20);
  v16 = sub_220886A4C();
  (*(*(v16 - 8) + 16))(&v13[v15], a1, v16);
  strcpy(v13, "MoveWatchlist");
  *(v13 + 7) = -4864;
  *&v13[*(v6 + 24)] = a2;
  *&v13[*(v6 + 28)] = a3;
  sub_220591268(v13, v9, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier);
  sub_22059115C();
  swift_allocObject();
  sub_2205912D0(&qword_27CF56EC0, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier);

  v17 = sub_22088B66C();
  sub_220591318(v13, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier);
  return v17;
}

uint64_t sub_220590F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v13 = *(v12 + 20);
  v14 = sub_220886A4C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  sub_220591268(a2, &v11[*(v4 + 24)], type metadata accessor for ManageWatchlistsContentMode);
  *v11 = 0x6157656D616E6552;
  *(v11 + 1) = 0xEF7473696C686374;
  sub_220591268(v11, v7, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier);
  sub_22059115C();
  swift_allocObject();
  sub_2205912D0(&qword_27CF56EB8, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier);
  v15 = sub_22088B66C();
  sub_220591318(v11, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier);
  return v15;
}

void sub_22059115C()
{
  if (!qword_27CF56EB0)
  {
    type metadata accessor for ManageWatchlistsModel();
    sub_22055DF30();
    sub_2205912D0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v0 = sub_22088B67C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56EB0);
    }
  }
}

unint64_t sub_220591214()
{
  result = qword_27CF56EC8;
  if (!qword_27CF56EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EC8);
  }

  return result;
}

uint64_t sub_220591268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205912D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220591318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220591378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ManageWatchlistsModule();
    v7 = swift_allocObject();
    result = sub_220457328(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_283415818;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220591428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286888);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    WatchlistViewStyler = type metadata accessor for CreateWatchlistViewStyler();
    v22[3] = WatchlistViewStyler;
    v22[4] = &off_283415108;
    v22[0] = v9;
    type metadata accessor for CreateWatchlistViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, WatchlistViewStyler);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = WatchlistViewStyler;
    v21 = &off_283415108;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220596EB0(&qword_27CF57040, type metadata accessor for CreateWatchlistViewRenderer);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205916B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286888);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    WatchlistViewStyler = type metadata accessor for CreateWatchlistViewStyler();
    v19[3] = WatchlistViewStyler;
    v19[4] = &off_283415108;
    v19[0] = v9;
    WatchlistViewLayoutAttributesFactory = type metadata accessor for CreateWatchlistViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, WatchlistViewStyler);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = WatchlistViewStyler;
    v12[6] = &off_283415108;
    v12[2] = v18;
    sub_220596E48();
    swift_allocObject();
    v12[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = WatchlistViewLayoutAttributesFactory;
    a2[4] = &off_283421630;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220591904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WatchlistCellViewStyler();
    v22[3] = v10;
    v22[4] = &off_28341D0C8;
    v22[0] = v9;
    type metadata accessor for WatchlistCellViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_28341D0C8;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220596EB0(&qword_27CF57030, type metadata accessor for WatchlistCellViewRenderer);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220591B94@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v10 = v21;
  if (v21)
  {
    v11 = a2(0);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v17 + 16))(v16, v14);
    v18 = a3(v16, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220591D08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WatchlistCellViewStyler();
    v19[3] = v10;
    v19[4] = &off_28341D0C8;
    v19[0] = v9;
    v11 = type metadata accessor for WatchlistCellViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_28341D0C8;
    v12[2] = v18;
    sub_220596DE8();
    swift_allocObject();
    v12[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_283414658;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220591F54()
{
  type metadata accessor for ManageWatchlistsViewController();
  sub_220888BDC();

  sub_220446A58(0, &qword_27CF56ED8);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EE0);
  sub_220888BEC();
  type metadata accessor for ManageWatchlistsRouter();
  sub_2208882BC();

  sub_220446A58(0, &qword_27CF56EE8);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EF0);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EF8);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56F00);
  sub_220888BEC();

  sub_220595CA8(0);
  sub_220888BDC();

  type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
  sub_220888BDC();

  sub_220595CC8();
  sub_220888BDC();
  sub_2208882CC();

  sub_22059643C();
  sub_220888BDC();

  sub_220595DB4();
  sub_220888BDC();

  sub_22057B41C(0);
  sub_220888BDC();

  type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_220596528();
  sub_220888BDC();

  sub_22044D56C(0, &qword_281299540);
  sub_220888BDC();

  sub_220595EBC();
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_220596038();
  sub_220888BDC();
  sub_2208882CC();

  sub_2205961C4();
  sub_220888BDC();
  sub_2208882CC();

  sub_220596350();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ManageWatchlistsBlueprintViewCellProvider();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
  sub_220888BDC();

  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  sub_220888BDC();

  sub_22088B84C();
  sub_220888BDC();

  sub_220596664();
  sub_220888BDC();
  sub_2208882CC();

  sub_22088CA2C();
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, &unk_2812972B0);
  sub_220888BEC();
}

uint64_t sub_2205927CC(void *a1)
{
  sub_2205967EC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56ED8);
  result = sub_2208884DC();
  if (!v49)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EE8);
  result = sub_2208884DC();
  v7 = v46;
  if (!v46)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596528();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v10 - 8) + 48))(v5, 1, v10);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v11 = v44;
  if (v44)
  {
    v37[0] = v45;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v37[2] = v37;
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v18 = type metadata accessor for ManageWatchlistsStyler();
    v42 = v18;
    v43 = &off_283412230;
    v41[0] = v17;
    v19 = type metadata accessor for ManageWatchlistsViewController();
    v20 = objc_allocWithZone(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v37[1] = v37;
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = (v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v24;
    v40[3] = v18;
    v40[4] = &off_283412230;
    v40[0] = v26;
    v27 = OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel;
    *&v20[v27] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    sub_22046DA2C(v40, &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_styler]);
    v28 = &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler];
    v29 = v38;
    *v28 = v7;
    *(v28 + 1) = v29;
    *&v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController] = v9;
    sub_220596A24(v5, &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_contentMode]);
    v30 = &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_commandCenter];
    v31 = v37[0];
    *v30 = v11;
    *(v30 + 1) = v31;
    v39.receiver = v20;
    v39.super_class = v19;
    swift_unknownObjectRetain();
    v32 = v9;
    swift_unknownObjectRetain();
    v33 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    *(*&v33[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler] + 24) = &off_28341E218;
    swift_unknownObjectWeakAssign();
    v34 = *&v33[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController];
    v35 = v33;
    v36 = v34;
    sub_22088C79C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_220596A88(v5);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return v35;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220592D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for ManageWatchlistsStyler();
    v5 = swift_allocObject();
    result = sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_283412230;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220592DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ManageWatchlistsRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_220457328(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_28341F330;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220592E78(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_220592EF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EF0);
  result = sub_2208884DC();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EE0);
  result = sub_2208884DC();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EF8);
  result = sub_2208884DC();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v15, v13);
    v17 = sub_220596BDC(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_283419A68;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2205931A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2205967EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56F00);
  result = sub_2208884DC();
  v9 = v27;
  if (!v27)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CC8();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v13 = v23;
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v24;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v15 - 8) + 48))(v7, 1, v15);
  if (result != 1)
  {
    sub_220596990();
    v16 = swift_allocObject();
    v16[3] = 0;
    swift_unknownObjectWeakInit();
    v17 = v22;
    v16[6] = v9;
    v16[7] = v17;
    v16[4] = v11;
    v16[5] = v12;
    sub_22046DA2C(v25, (v16 + 8));
    v18 = v20;
    v16[13] = v13;
    v16[14] = v18;
    v16[15] = v14;
    sub_220596A24(v7, v16 + *(*v16 + 152));
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_220596EB0(&qword_27CF57020, sub_220596990);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_220885FAC();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_220596A88(v7);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    v19 = v21;
    *v21 = v16;
    v19[1] = &off_28341A790;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22059358C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ManageWatchlistsTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_2834122E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220593614@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManageWatchlistsDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_283426E80;
  return result;
}

uint64_t sub_220593680(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v4)
  {
    type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
    v2 = swift_allocObject();
    sub_220457328(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220593720(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220595DB4();
    result = sub_2208884CC();
    if (result)
    {
      sub_220595CC8();
      swift_allocObject();
      return sub_22088B6AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220593800(uint64_t a1, void *a2)
{
  sub_2205968B0(0);
  swift_allocObject();
  sub_22088D4FC();
  sub_2205968D0(0, &qword_27CF56FF8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_220596EB0(&qword_27CF57000, sub_2205968B0);
  sub_22088CE4C();
  sub_22088B6CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22059643C();
  result = sub_2208884CC();
  if (result)
  {
    swift_allocObject();
    sub_220596EB0(&qword_27CF57008, sub_22059643C);
    sub_22088CE4C();
    sub_22088B6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220593998(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (result)
  {
    sub_22059643C();
    swift_allocObject();
    return sub_22088D6DC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220593ADC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297128);
    result = sub_2208884DC();
    if (v3)
    {
      sub_220595DB4();
      swift_allocObject();
      return sub_22088B93C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220593C08(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_220593C4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F850);
  result = sub_2208884DC();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28127F390);
    result = sub_2208884DC();
    if (v36)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v30[2] = v30;
      v4 = MEMORY[0x28223BE20](v3, v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v30[1] = v30;
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for WatchlistCellViewLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_283414658;
      v34[0] = v13;
      WatchlistViewLayoutAttributesFactory = type metadata accessor for CreateWatchlistViewLayoutAttributesFactory();
      v32 = WatchlistViewLayoutAttributesFactory;
      v33 = &off_283421630;
      v31[0] = v14;
      type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      v19 = MEMORY[0x28223BE20](v18, v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v24 = MEMORY[0x28223BE20](v23, v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_283414658;
      v17[2] = v28;
      v17[10] = WatchlistViewLayoutAttributesFactory;
      v17[11] = &off_283421630;
      v17[7] = v29;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220594058(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220596EB0(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_220596528();
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_220594374()
{
  v0 = [objc_opt_self() ts:2 preferredStyleForStyle:?];
  v1 = objc_allocWithZone(MEMORY[0x277D6ED30]);

  return [v1 initWithFrame:v0 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_2205943E4(void *a1)
{
  v2 = sub_22088BEAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_281299540);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596038();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205961C4();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596350();
  result = sub_2208884CC();
  if (result)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D6DC38], v2);
    sub_220595EBC();
    swift_allocObject();
    return sub_22088BFAC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220594600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22047DC18();
    result = sub_2208884CC();
    if (result)
    {
      sub_22088D41C();
      result = sub_22088D40C();
      v5 = MEMORY[0x277D6E690];
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205946F8()
{
  v0 = sub_22088C2CC();
  v2 = MEMORY[0x28223BE20](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v2);
  return sub_22088D3EC();
}

uint64_t sub_2205947C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (v5)
  {
    *&v8[0] = v3;
    sub_220596038();
    v7 = objc_allocWithZone(v6);
    return sub_22088D19C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22059492C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_281299540);
  result = sub_22088848C();
  if (result)
  {
    v4 = result;
    sub_22044D56C(0, &unk_28127E890);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220594A2C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController();
  sub_2208884CC();
  sub_22088D1BC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812972B0);
  result = sub_22088849C();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_22088DD8C();
    sub_22088D1AC();

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220594B40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_220596EB0(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770);
  result = sub_2208884DC();
  if (v5)
  {
    sub_2205961C4();
    v4 = objc_allocWithZone(v3);
    return sub_22088CE7C();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_220594DE4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088CE8C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220596664();
  if (sub_2208884CC())
  {
    sub_220596EB0(&qword_27CF56FE8, sub_220596664);
  }

  return sub_22088CE9C();
}

uint64_t sub_220594EE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220596350();
    v3 = objc_allocWithZone(v2);
    return sub_22088D5CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220594F60(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController();
  if (!sub_2208884CC())
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22088D5DC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_281299540);
  v3 = sub_22088848C();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_22088D5EC();
}

uint64_t sub_220595054(void *a1)
{
  sub_2205967EC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840);
  result = sub_2208884DC();
  if (!v45)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285D38);
  result = sub_2208884DC();
  v7 = v42;
  if (!v42)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284FA8);
  result = sub_2208884DC();
  v9 = v40;
  if (!v40)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v11 = v38;
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v39;
  v36 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  v32 = v9;
  v33 = v8;
  v34 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v14 - 8) + 48))(v5, 1, v14);
  if (result != 1)
  {
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for WatchlistCellViewStyler();
    v37[3] = v21;
    v37[4] = &off_28341D0C8;
    v37[0] = v20;
    type metadata accessor for ManageWatchlistsBlueprintViewCellProvider();
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v37, v21);
    v24 = MEMORY[0x28223BE20](v23, v23);
    v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = *v26;
    v22[7] = v21;
    v22[8] = &off_28341D0C8;
    v22[3] = 0;
    v22[4] = v28;
    swift_unknownObjectWeakInit();
    v29 = v33;
    v22[9] = v34;
    v22[10] = v29;
    v30 = v35;
    v31 = v36;
    v22[11] = v32;
    v22[12] = v31;
    v22[13] = v11;
    v22[14] = v30;
    v22[15] = v12;
    v22[16] = v13;
    sub_220596844(v5, v22 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v22;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2205954EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController();
  v4 = sub_2208884CC();
  v3 = &off_28341E1F8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_220595580()
{
  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();

  return swift_allocObject();
}

uint64_t sub_2205955B4(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220596750(0, &qword_27CF56FD8, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220595840(void *a1)
{
  sub_22047DD60();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596664();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_220596EB0(&qword_27CF56FD0, sub_220596664);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22059597C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220595CA8(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220596664();
      swift_allocObject();
      return sub_22088D74C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220595A90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220595B4C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220596528();
  v7 = sub_2208884CC();
  if (v7)
  {
    v8 = v7;
    v9 = sub_220596EB0(a3, sub_220596528);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_220595C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596528();
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_220596EB0(&qword_27CF56FB8, sub_220596528);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220595CC8()
{
  if (!qword_27CF56F10)
  {
    sub_220595CA8(255);
    sub_220595DB4();
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    sub_220596EB0(&qword_27CF56F80, sub_220595DB4);
    v0 = sub_22088B6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F10);
    }
  }
}

void sub_220595DB4()
{
  if (!qword_27CF56F18)
  {
    type metadata accessor for ManageWatchlistsModel();
    sub_220595EBC();
    sub_22055DF30();
    sub_220596EB0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC);
    v0 = sub_22088B95C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F18);
    }
  }
}

void sub_220595EBC()
{
  if (!qword_27CF56F20)
  {
    sub_22044D56C(255, &qword_281299540);
    sub_220596038();
    sub_2205961C4();
    sub_220596350();
    type metadata accessor for ManageWatchlistsViewController();
    sub_220596EB0(&qword_27CF56F60, sub_220596038);
    sub_220596EB0(&qword_27CF56F68, sub_2205961C4);
    sub_220596EB0(&qword_27CF56F70, sub_220596350);
    v0 = sub_22088BFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F20);
    }
  }
}

void sub_220596038()
{
  if (!qword_27CF56F28)
  {
    sub_220595CA8(255);
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintViewCellProvider();
    type metadata accessor for ManageWatchlistsViewController();
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C);
    sub_220596EB0(&qword_27CF56F38, type metadata accessor for ManageWatchlistsBlueprintViewCellProvider);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController);
    v0 = sub_22088D1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F28);
    }
  }
}

void sub_2205961C4()
{
  if (!qword_27CF56F48)
  {
    sub_220595CA8(255);
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
    type metadata accessor for ManageWatchlistsViewController();
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C);
    sub_220596EB0(&qword_27CF56F50, type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController);
    v0 = sub_22088CEAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F48);
    }
  }
}

void sub_220596350()
{
  if (!qword_27CF56F58)
  {
    sub_220595CA8(255);
    type metadata accessor for ManageWatchlistsViewController();
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController);
    v0 = sub_22088D5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F58);
    }
  }
}

void sub_22059643C()
{
  if (!qword_27CF56F88)
  {
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C);
    sub_220596EB0(&qword_27CF56F90, type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder);
    v0 = sub_22088D6EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F88);
    }
  }
}

void sub_220596528()
{
  if (!qword_27CF56F98)
  {
    sub_220595CA8(255);
    sub_220595EBC();
    type metadata accessor for ManageWatchlistsViewController();
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController);
    v0 = sub_22088C7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56F98);
    }
  }
}

void sub_220596664()
{
  if (!qword_27CF56FA8)
  {
    sub_220595EBC();
    sub_220595CA8(255);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC);
    sub_220596EB0(&qword_27CF56FB0, sub_220595CA8);
    v0 = sub_22088D76C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56FA8);
    }
  }
}

void sub_220596750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_220595CA8(255);
    v7 = v6;
    v8 = sub_220596EB0(&qword_27CF56F30, sub_220595CA8);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2205967EC()
{
  if (!qword_27CF56FE0)
  {
    type metadata accessor for ManageWatchlistsContentMode(255);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56FE0);
    }
  }
}

uint64_t sub_220596844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2205968D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel();
    v8[2] = sub_22055DF30();
    v8[3] = sub_220596EB0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220596990()
{
  if (!qword_27CF57010)
  {
    type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
    sub_220596EB0(&qword_27CF57018, type metadata accessor for ManageWatchlistsBlueprintModifierFactory);
    v0 = type metadata accessor for ManageWatchlistsInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57010);
    }
  }
}

uint64_t sub_220596A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220596A88(uint64_t a1)
{
  v2 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_220596AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for ManageWatchlistsRouter();
  v15[4] = &off_28341F330;
  v15[0] = a3;
  v14[3] = type metadata accessor for ManageWatchlistsTracker();
  v14[4] = &off_2834122E0;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_22046DA2C(v15, (a5 + 6));
  sub_22046DA2C(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_283419A38, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_220596BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for ManageWatchlistsRouter();
  v27 = &off_28341F330;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_2834122E0;
  v22[0] = a4;
  type metadata accessor for ManageWatchlistsEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10, v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_220596AE4(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void sub_220596DE8()
{
  if (!qword_27CF57028)
  {
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57028);
    }
  }
}

void sub_220596E48()
{
  if (!qword_27CF57038)
  {
    type metadata accessor for CreateWatchlistViewLayoutAttributes();
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57038);
    }
  }
}

uint64_t sub_220596EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220596F00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 784))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220596F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 776) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 784) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 784) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_220597098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2205970B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
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

uint64_t sub_220597138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220597180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2205971F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22059724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 56);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 24), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2205973B4(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2205973B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = 0x4030000000000000;
  sub_220457328(&v9, v7 + 24);
  return v7;
}

uint64_t sub_220597454(void *a1)
{
  v2 = v1;
  v4 = sub_2208878FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StocksActivity.Article(0);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220597BB4(v2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2205985D8(v20, type metadata accessor for StocksActivity);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_22046F80C();
      result = sub_2208884CC();
      if (result)
      {
        sub_220598188();
        swift_allocObject();
        v25 = sub_220888F2C();

        return v25;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220453B1C();
      result = sub_2208884CC();
      if (result)
      {
        sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
        v24 = *(v23 + 48);
        sub_220598188();
        swift_allocObject();
        v25 = sub_220888F2C();
        v26 = sub_22088CC6C();
        (*(*(v26 - 8) + 8))(&v20[v24], v26);
        sub_2205985D8(v20, type metadata accessor for ForYouSectionDescriptor);
        return v25;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_9:
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v25 = qword_2812908F8;
    v30 = qword_281290900;

    sub_2204A80F4(v30);
    sub_2205985D8(v20, type metadata accessor for StocksActivity);
    return v25;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_220597C74(v20, v16);
      (*(v5 + 104))(v8, *MEMORY[0x277D2FC98], v4);
      sub_220597CD8();
      swift_allocObject();
      v27 = sub_2208884EC();
      sub_220598188();
      swift_allocObject();
      v25 = sub_220888F2C();
      sub_220597C74(v16, v13);
      v28 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      sub_220597C74(v13, v29 + v28);
      return v25;
    }

    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartLoadingState();
  result = sub_2208884CC();
  if (result)
  {
    sub_220598188();
    swift_allocObject();
    v25 = sub_220888F2C();
    sub_2205985D8(v20, type metadata accessor for StocksActivity);
    return v25;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2205979F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  sub_22088832C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088969C();
  sub_22088833C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281296D20);
  result = sub_22088833C();
  if (a6)
  {
    return a6(a1);
  }

  return result;
}

uint64_t sub_220597B04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  sub_22088832C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281296D20);
  return sub_22088833C();
}

uint64_t sub_220597BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220597C18()
{
  sub_220598188();
  swift_allocObject();
  result = sub_220888ECC();
  qword_281290900 = 0;
  qword_281290908 = 0;
  qword_2812908F8 = result;
  return result;
}

uint64_t sub_220597C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.Article(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220597CD8()
{
  if (!qword_27CF57048)
  {
    sub_2208878FC();
    sub_2208878EC();
    sub_2204589B4(&qword_27CF57050, MEMORY[0x277D2FC80]);
    v0 = sub_22088850C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57048);
    }
  }
}

uint64_t sub_220597D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_22088BF2C();
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = v11;
  sub_220888AFC();
}

uint64_t sub_220597E38@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D6CE70];
  }

  else
  {
    a2(1);
    v4 = MEMORY[0x277D6CE68];
  }

  v5 = *v4;
  v6 = sub_220888C7C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_220597ED0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_220888AEC();

  v5 = swift_allocObject();
  *(v5 + 16) = sub_220598708;
  *(v5 + 24) = v4;
  sub_220888AFC();
}

uint64_t sub_220597FA8@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  if (*a1 >= 2uLL)
  {
    a2(1);
    v4 = MEMORY[0x277D6CE68];
  }

  else
  {
    v4 = MEMORY[0x277D6CE70];
  }

  v5 = *v4;
  v6 = sub_220888C7C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_2205980C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2208884FC();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_220598708;
  *(v5 + 24) = v4;
  sub_220888AFC();
}

void sub_220598188()
{
  if (!qword_281298600)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298600);
    }
  }
}

uint64_t sub_2205981D8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2208878FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D2FC98] || v11 == *MEMORY[0x277D2FCA0])
  {
    v13 = MEMORY[0x277D6CE70];
  }

  else
  {
    if (v11 != *MEMORY[0x277D2FC88] && v11 != *MEMORY[0x277D2FC90])
    {
      v17 = *MEMORY[0x277D6CE70];
      v18 = sub_220888C7C();
      (*(*(v18 - 8) + 104))(a3, v17, v18);
      return (*(v7 + 8))(v10, v6);
    }

    a2(1);
    v13 = MEMORY[0x277D6CE68];
  }

  v15 = *v13;
  v16 = sub_220888C7C();
  return (*(*(v16 - 8) + 104))(a3, v15, v16);
}

uint64_t sub_2205983E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220597CD8();
  StocksActivity.Article.articleID.getter();
  sub_22088834C();
}

void sub_22059847C()
{
  if (!qword_281285B20)
  {
    sub_2204446D4(255, &qword_281285B30);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281285B20);
    }
  }
}

uint64_t sub_2205984E4(void *a1)
{
  type metadata accessor for StocksActivity.Article(0);

  return sub_2205983E4(a1);
}

uint64_t sub_2205985D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205986BC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_220598724@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD00];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220598798()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220598868()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220598920()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_220598A0C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_220598AF8()
{
  v1 = v0;
  sub_22046DA2C(v0 + 32, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22046AA4C(&qword_28128E5C8, type metadata accessor for StockListDataManager);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22046DA2C(v0 + 72, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22046AA4C(&qword_28128E5C0, type metadata accessor for StockListDataManager);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v2 = OBJC_IVAR____TtC8StocksUI20StockListDataManager_lastActiveWatchlist;
  v3 = sub_220886A4C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_220598C88()
{
  sub_220598AF8();

  return swift_deallocClassInstance();
}

uint64_t sub_220598CE8(void *a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[12];
  v18[1] = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v11);
  sub_220599F20();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  *(v12 + 32) = sub_22088681C();
  *(v12 + 40) = v13;
  v14 = *(v3 + 104);
  v14(v10, *MEMORY[0x277D6CA28], v2);
  v14(v7, *MEMORY[0x277D6CA30], v2);
  v15 = sub_2208862EC();

  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v10, v2);
  return v15;
}

uint64_t sub_220598EBC()
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088676C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v23 - v12;
  v14 = sub_22088581C();
  v15 = sub_22088681C();
  if (*(v14 + 16))
  {
    v23[1] = v0;
    v17 = sub_2204AF97C(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v10, *(v14 + 56) + *(v6 + 72) * v17, v5);

      (*(v6 + 32))(v13, v10, v5);
      v20(v4, v13, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_22047C354(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v21 = sub_220888ECC();
      (*(v6 + 8))(v13, v5);
      return v21;
    }
  }

  else
  {
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  sub_22047C354(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205991BC(void *a1)
{
  v22 = sub_22088846C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088516C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088831C();
  v19 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[19];
  v18[2] = a1[20];
  v18[1] = __swift_project_boxed_opaque_existential_1(a1 + 16, v13);
  sub_22088681C();
  (*(v9 + 104))(v12, *MEMORY[0x277D6CA28], v8);
  sub_22088515C();
  v14 = v20;
  v15 = v22;
  (*(v20 + 104))(v4, *MEMORY[0x277D6CAB8], v22);
  v16 = sub_2208860EC();

  (*(v14 + 8))(v4, v15);
  (*(v21 + 8))(v7, v23);
  (*(v9 + 8))(v12, v19);
  return v16;
}

uint64_t sub_220599480@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CAB8];
  v3 = sub_22088846C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2205994F4()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_22088550C();
  sub_22047C354(0, &qword_27CF57058, sub_22047C320, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205995C4(void *a1)
{
  v2 = sub_220886A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_2208863EC();
  sub_220886A1C();
  (*(v3 + 8))(v6, v2);
  v7 = sub_2208862FC();

  return v7;
}

uint64_t sub_220599708(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v19 = a1;
  v20 = v4;
  v5 = sub_22088685C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = *(v6 + 16);
  v17 = v2[21];
  v18 = v9;
  v9(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = *(v6 + 32);
  v12(v11 + v10, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_22088582C();
  sub_220888FAC();

  v18(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v5);
  v13 = swift_allocObject();
  v12(v13 + v10, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = sub_220888D9C();
  sub_22045987C(0);
  v15 = sub_220888E3C();

  return v15;
}

uint64_t sub_220599938(uint64_t a1)
{
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2208855EC();
  sub_220888FAC();

  v9 = sub_220888D9C();
  sub_22047C320(0);
  v10 = sub_220888E3C();

  return v10;
}

uint64_t sub_220599B08()
{
  sub_22088582C();

  return sub_220888FAC();
}

uint64_t sub_220599B98(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208863EC();
  v11 = sub_2208869BC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v11 == sub_2208869BC() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_2208928BC();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v3, &off_283413E78, a2, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_22088685C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_220599F20()
{
  if (!qword_28127DEE8)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEE8);
    }
  }
}

uint64_t sub_22059A068(uint64_t a1)
{
  v2 = 0;
  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        goto LABEL_15;
      case 5:
        if (qword_27CF55C70 != -1)
        {
          v18 = v6;
          swift_once();
          v6 = v18;
        }

        v9 = qword_27CF6D348;
        goto LABEL_18;
      case 6:
LABEL_15:
        if (qword_27CF55C78 != -1)
        {
          v16 = v6;
          swift_once();
          v6 = v16;
        }

        v9 = qword_27CF6D360;
        goto LABEL_18;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return v2;
      case 1:
        if (qword_27CF55C60 != -1)
        {
          v17 = v6;
          swift_once();
          v6 = v17;
        }

        v9 = qword_27CF6D318;
LABEL_18:
        v10 = v6;
        v11 = __swift_project_value_buffer(v6, v9);
        (*(v4 + 16))(v8, v11, v10);
        v12 = objc_allocWithZone(MEMORY[0x277D355B8]);
        _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
        v13 = sub_22089132C();

        _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
        v14 = sub_22089132C();

        v2 = [v12 initWithTitle:v13 subtitle:v14];

        (*(v4 + 8))(v8, v10);
        return v2;
      case 3:
        return v2;
    }
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

unint64_t sub_22059A360()
{
  result = qword_27CF570D0;
  if (!qword_27CF570D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF570D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TickerSectionDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TickerSectionDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22059A450@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_22088751C();
  MEMORY[0x28223BE20](v23, v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088754C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = MEMORY[0x277D83D88];
  sub_22059A8F4(0, &unk_281298BB0, MEMORY[0x277D2FA08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  sub_22059A8F4(0, &qword_281298B88, MEMORY[0x277D2FB28], v7);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v22 - v14);
  v16 = sub_22088750C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v27 = *a1;
  v18 = v27;
  sub_2207DC85C();
  v26 = v18;
  sub_2207DCA20();
  v25 = v18;
  sub_2207DCBE4(v15);
  v19 = sub_2208874EC();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_2208874FC();
  sub_22059A824(v18);
  sub_22088C49C();
  sub_22059A860(v18);
  sub_22059A824(v18);
  sub_22088C48C();
  sub_22059A860(v18);
  sub_22059A824(v18);
  sub_22088C47C();
  sub_22059A860(v18);
  sub_22059A860(v18);
  v20 = MEMORY[0x277D84F90];
  sub_22088753C();
  v26 = v20;
  sub_22059A89C();
  sub_22059A8F4(0, &qword_28127EAE8, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
  sub_22059A958();
  sub_2208923FC();
  return sub_22088752C();
}

unint64_t sub_22059A824(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

unint64_t sub_22059A860(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

unint64_t sub_22059A89C()
{
  result = qword_281298BA8;
  if (!qword_281298BA8)
  {
    sub_22088751C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298BA8);
  }

  return result;
}

void sub_22059A8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22059A958()
{
  result = qword_28127EAE0;
  if (!qword_28127EAE0)
  {
    sub_22059A8F4(255, &qword_28127EAE8, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EAE0);
  }

  return result;
}

uint64_t type metadata accessor for StockSearchSectionHeaderViewLayoutOptions()
{
  result = qword_27CF570D8;
  if (!qword_27CF570D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22059AA54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22059AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2207CF920(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2204AF97C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2207D0950();
        v14 = v16;
      }

      result = sub_22059B0E4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_22059AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220454490(0, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_2204B382C(a1, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
    sub_22059AF60(a2, a3, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs, sub_2207D0E90, v10);

    return sub_2204B382C(v10, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
  }

  else
  {
    sub_2204DBE2C(a1, v15, type metadata accessor for CuratedForYouFeedGroupKnobs);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2207CFA98(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22059ADD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = sub_22088677C();
  v12 = v11;
  v13 = sub_22088681C();
  v15 = v14;
  v16 = sub_22088683C();
  v18 = v17;
  result = (*(v5 + 8))(v9, v4);
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v18;
  *a2 = 0x6C6F626D7973;
  a2[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_22059AF10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_22059AF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_2204AF97C(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_2204DBE2C(v19 + *(v27 + 72) * v16, a7, a4);
    sub_22059B428(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_22059B0E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22089241C() + 1) & ~v5;
    do
    {
      sub_2208929EC();

      sub_22089146C();
      v9 = sub_220892A2C();

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

uint64_t sub_22059B294(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22089241C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_2208929EC();
      MEMORY[0x223D8ABA0](v9);
      result = sub_220892A2C();
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

unint64_t sub_22059B428(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22089241C() + 1) & ~v6;
    while (1)
    {
      sub_2208929EC();

      sub_22089146C();
      v11 = sub_220892A2C();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

uint64_t sub_22059B61C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for StockViewRenderer.RenderedState() + 28);

  return sub_2204CDC64(a1 + v6, a2 + v6);
}

unint64_t sub_22059B6A4()
{
  result = qword_28127EC90;
  if (!qword_28127EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EC90);
  }

  return result;
}

id sub_22059B6F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22059B834();
  *&v11 = MEMORY[0x28223BE20](v9 - 8, v10).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a4 userInterfaceIdiom] == 5)
  {
    v14 = 0;
  }

  else
  {
    [a4 horizontalSizeClass];
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_22056064C(a2, a3, v14);
  v15 = sub_22089226C();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_22089228C();
  return [a1 setPreferredBehavioralStyle_];
}

void sub_22059B834()
{
  if (!qword_28127E448)
  {
    sub_22089226C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E448);
    }
  }
}

uint64_t sub_22059B88C()
{
  v1 = v0;
  sub_22059BBCC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220889F4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220889F1C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v26 - v18;
  v20 = [v1 purchaseValidationState];
  if (v20 < 5)
  {
    (*(v12 + 104))(v19, **(&unk_27844A618 + v20), v11);
    v21 = [v1 purchaseType];
    if (v21)
    {
      if (v21 == 2)
      {
        v23 = MEMORY[0x277D68E68];
        goto LABEL_9;
      }

      if (v21 == 1)
      {
        if ([v1 isNewsAppPurchase])
        {
          v22 = MEMORY[0x277D68E70];
        }

        else
        {
          v22 = MEMORY[0x277D68E80];
        }

        (*(v7 + 104))(v10, *v22, v6);
        goto LABEL_12;
      }
    }

    v23 = MEMORY[0x277D68E78];
LABEL_9:
    (*(v7 + 104))(v10, *v23, v6);
LABEL_12:
    (*(v12 + 16))(v16, v19, v11);
    (*(v7 + 16))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_220889BEC();
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v19, v11);
  }

  v25 = v20;
  type metadata accessor for FCPurchaseValidationState(0);
  v26[1] = v25;
  result = sub_2208928EC();
  __break(1u);
  return result;
}

void sub_22059BBCC()
{
  if (!qword_2812982F0)
  {
    sub_220889F4C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812982F0);
    }
  }
}

id sub_22059BC34()
{
  v0 = [objc_opt_self() ts_tableCellDefaultSelectionTintColor];

  return v0;
}

id sub_22059BC74()
{
  v0 = [objc_opt_self() ts_systemDarkTealColor];

  return v0;
}

uint64_t sub_22059BCB8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v41 = a3;
  sub_22046B19C();
  v47 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v40 - v12;
  sub_2204A1D20();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC();
  v20 = v19 - 8;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v4, v14, v22);
  sub_2204BBDE4(&qword_281296EF0, sub_2204A1D20);
  sub_2208915BC();
  v25 = *(v20 + 44);
  sub_2204BBDE4(&qword_281296EE8, sub_2204A1D20);
  sub_22089199C();
  v26 = *&v24[v25];
  v40 = v6;
  if (v26 == v48[0])
  {
    v27 = v47;
LABEL_7:
    sub_2205A0790(v24, sub_2204B9DAC);
    v35 = 1;
    v36 = v41;
  }

  else
  {
    v28 = (v6 + 16);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v27 = v47;
    while (1)
    {
      v29 = sub_2208919BC();
      v30 = v44;
      (*v28)(v44);
      v29(v48, 0);
      sub_2208919AC();
      v31 = v27;
      v32 = *v43;
      (*v43)(v9, v30, v31);
      v33 = v49;
      v34 = v45(v9);
      if (v33)
      {
        (*v42)(v9, v47);
        return sub_2205A0790(v24, sub_2204B9DAC);
      }

      if (v34)
      {
        break;
      }

      v49 = 0;
      v27 = v47;
      (*v42)(v9, v47);
      sub_22089199C();
      if (*&v24[v25] == v48[0])
      {
        goto LABEL_7;
      }
    }

    sub_2205A0790(v24, sub_2204B9DAC);
    v38 = v41;
    v39 = v47;
    v32(v41, v9, v47);
    v36 = v38;
    v27 = v39;
    v35 = 0;
  }

  return (*(v40 + 56))(v36, v35, 1, v27);
}

uint64_t sub_22059C108@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v41 = a3;
  sub_22046B36C();
  v47 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v40 - v12;
  sub_22046B19C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C();
  v20 = v19 - 8;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v4, v14, v22);
  sub_2204BBDE4(&qword_281297DC0, sub_22046B19C);
  sub_2208915BC();
  v25 = *(v20 + 44);
  sub_2204BBDE4(&qword_281297DB8, sub_22046B19C);
  sub_22089199C();
  v26 = *&v24[v25];
  v40 = v6;
  if (v26 == v48[0])
  {
    v27 = v47;
LABEL_7:
    sub_2205A0790(v24, sub_2204BBE2C);
    v35 = 1;
    v36 = v41;
  }

  else
  {
    v28 = (v6 + 16);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v27 = v47;
    while (1)
    {
      v29 = sub_2208919BC();
      v30 = v44;
      (*v28)(v44);
      v29(v48, 0);
      sub_2208919AC();
      v31 = v27;
      v32 = *v43;
      (*v43)(v9, v30, v31);
      v33 = v49;
      v34 = v45(v9);
      if (v33)
      {
        (*v42)(v9, v47);
        return sub_2205A0790(v24, sub_2204BBE2C);
      }

      if (v34)
      {
        break;
      }

      v49 = 0;
      v27 = v47;
      (*v42)(v9, v47);
      sub_22089199C();
      if (*&v24[v25] == v48[0])
      {
        goto LABEL_7;
      }
    }

    sub_2205A0790(v24, sub_2204BBE2C);
    v38 = v41;
    v39 = v47;
    v32(v41, v9, v47);
    v36 = v38;
    v27 = v39;
    v35 = 0;
  }

  return (*(v40 + 56))(v36, v35, 1, v27);
}

uint64_t sub_22059C558@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_22059C72C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_2204446D4(0, &unk_281298980);
  sub_22088849C();
  if (v5)
  {
    sub_220458198(&v4, v6);
  }

  else
  {
    sub_22046DA2C((v0 + 16), v6);
  }

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2204549FC();
  v1 = sub_2208884CC();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = v0[15];
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2;
}

uint64_t sub_22059C86C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2205A071C(0, qword_281295190, type metadata accessor for StocksActivity);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for StocksActivity(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_22088651C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_2208858AC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_22088564C();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_22088635C();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = sub_2208854DC();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22059CB7C, 0, 0);
}

uint64_t sub_22059CB7C()
{
  v47 = v0;
  if (qword_27CF55AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[2];
  v5 = sub_22088A84C();
  v0[28] = __swift_project_value_buffer(v5, qword_27CF6D020);
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_22088A82C();
  v8 = sub_220891AFC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v44 = v8;
    v13 = swift_slowAlloc();
    v45 = v6;
    v46 = swift_slowAlloc();
    v14 = v46;
    *v13 = 136315138;
    v43 = sub_2208854CC();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_2204A7B78(v43, v16, &v46);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22043F000, v7, v44, "Handling intent '%s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v19 = v14;
    v6 = v45;
    MEMORY[0x223D8B7F0](v19, -1, -1);
    MEMORY[0x223D8B7F0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[31] = v17;
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[24];
  v6(v20, v0[2], v21);
  v23 = (*(v22 + 88))(v20, v21);
  if (v23 == *MEMORY[0x277D690D0])
  {
    v24 = v0[26];
    v26 = v0[21];
    v25 = v0[22];
    v27 = v0[20];
    (*(v0[24] + 96))(v24, v0[23]);
    (*(v26 + 32))(v25, v24, v27);
    sub_22088633C();
    sub_22088634C();
    v28 = swift_task_alloc();
    v0[32] = v28;
    *v28 = v0;
    v28[1] = sub_22059D118;
    v29 = v0[15];
    v30 = v0[19];
    v31 = 0;
LABEL_10:

    return sub_22059E068(v30, v29, v31);
  }

  if (v23 == *MEMORY[0x277D690D8])
  {
    v32 = v0[26];
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];
    (*(v0[24] + 96))(v32, v0[23]);
    (*(v34 + 32))(v33, v32, v35);
    sub_2208864FC();
    sub_22088650C();
    v36 = swift_task_alloc();
    v0[34] = v36;
    *v36 = v0;
    v36[1] = sub_22059D400;
    v29 = v0[14];
    v30 = v0[18];
    v31 = 1;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D690B8] || v23 == *MEMORY[0x277D690C0])
  {
    v17(v0[26], v0[23]);
  }

  else if (v23 != *MEMORY[0x277D690C8])
  {
    v38 = v0[26];
    v39 = v0[23];
    MEMORY[0x223D80750]("Encountered unknown switch case. Please update to include the new case.", 71, 2, MEMORY[0x277D84F90]);
    v17(v38, v39);

    v40 = v0[1];

    return v40();
  }

  v0[36] = sub_2208917EC();
  v0[37] = sub_2208917DC();
  v42 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_22059D6E8, v42, v41);
}

uint64_t sub_22059D118()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 264) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_22059DD10;
  }

  else
  {
    v8 = sub_22059D2EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22059D2EC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059D400()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 280) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_22059DE2C;
  }

  else
  {
    v8 = sub_22059D5D4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22059D5D4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059D6E8()
{

  return MEMORY[0x2822009F8](sub_22059D750, 0, 0);
}

uint64_t sub_22059D750()
{
  v37 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  (*(v7 + 8))(v5, v6, v7);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_2204AAE74(v0[4], qword_281295190, type metadata accessor for StocksActivity);
    MEMORY[0x223D80750]("Unexpectedly found no activity for intent that should have one.", 63, 2, MEMORY[0x277D84F90]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[29];
    v11 = v0[25];
    v12 = v0[23];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[2];
    sub_2205A06B8(v0[4], v13);
    v10(v11, v15, v12);
    sub_2205A07F0(v13, v14, type metadata accessor for StocksActivity);
    v16 = sub_22088A82C();
    v17 = sub_220891AFC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[31];
    v20 = v0[25];
    v21 = v0[23];
    v22 = v0[7];
    if (v18)
    {
      v34 = v17;
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v23 = 136315394;
      v24 = sub_2208854CC();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_2204A7B78(v24, v26, &v36);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = StocksActivity.identifier.getter();
      v30 = v29;
      sub_2205A0790(v22, type metadata accessor for StocksActivity);
      v31 = sub_2204A7B78(v28, v30, &v36);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_22043F000, v16, v34, "Mapped intent '%s' to activity '%s'", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v35, -1, -1);
      MEMORY[0x223D8B7F0](v23, -1, -1);
    }

    else
    {

      sub_2205A0790(v22, type metadata accessor for StocksActivity);
      v19(v20, v21);
    }

    v0[38] = sub_2208917DC();
    v33 = sub_2208917CC();

    return MEMORY[0x2822009F8](sub_22059DB5C, v33, v32);
  }
}

uint64_t sub_22059DB5C()
{
  v1 = *(v0 + 64);

  sub_22059FDB0(v1);
  *(v0 + 312) = 0;

  return MEMORY[0x2822009F8](sub_22059DBF8, 0, 0);
}

uint64_t sub_22059DBF8()
{
  sub_2205A0790(*(v0 + 64), type metadata accessor for StocksActivity);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059DD10()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059DE2C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059DF48()
{
  sub_2205A0790(*(v0 + 64), type metadata accessor for StocksActivity);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059E068(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 369) = a3;
  *(v4 + 16) = a1;
  sub_2205A071C(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for WatchlistMembershipCommandContext(0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_22088685C();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  sub_2205A071C(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  *(v4 + 112) = swift_task_alloc();
  v7 = sub_220886A4C();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_2208858AC();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v9 = sub_22088564C();
  *(v4 + 216) = v9;
  *(v4 + 224) = *(v9 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  sub_2208917EC();
  *(v4 + 264) = sub_2208917DC();
  v11 = sub_2208917CC();
  *(v4 + 272) = v11;
  *(v4 + 280) = v10;

  return MEMORY[0x2822009F8](sub_22059E3E8, v11, v10);
}

uint64_t sub_22059E3E8()
{
  v46 = v0;
  if (qword_27CF55AF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = sub_22088A84C();
  *(v0 + 288) = __swift_project_value_buffer(v9, qword_27CF6D020);
  v10 = *(v3 + 16);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  *(v0 + 312) = v11;
  *(v0 + 320) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = sub_22088A82C();
  v13 = sub_220891AFC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 256);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  if (v14)
  {
    log = v12;
    v21 = *(v0 + 369);
    v42 = v13;
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v22 = 136315650;
    if (v21)
    {
      v23 = 0x6863746157746F6ELL;
    }

    else
    {
      v23 = 0x676E696863746177;
    }

    if (v21)
    {
      v24 = 0xEB00000000676E69;
    }

    else
    {
      v24 = 0xE800000000000000;
    }

    v41 = v19;
    v25 = sub_2204A7B78(v23, v24, &v45);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = sub_22088562C();
    v28 = v27;
    v29 = *(v16 + 8);
    v29(v15, v17);
    v30 = sub_2204A7B78(v26, v28, &v45);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v31 = sub_22088588C();
    v33 = v32;
    v34 = *(v20 + 8);
    v34(v18, v41);
    v35 = sub_2204A7B78(v31, v33, &v45);

    *(v22 + 24) = v35;
    _os_log_impl(&dword_22043F000, log, v42, "Toggling symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v43, -1, -1);
    MEMORY[0x223D8B7F0](v22, -1, -1);
  }

  else
  {

    v34 = *(v20 + 8);
    v34(v18, v19);
    v29 = *(v16 + 8);
    v29(v15, v17);
  }

  *(v0 + 328) = v29;
  *(v0 + 336) = v34;
  v36 = *(v0 + 32);
  v38 = v36[12];
  v37 = v36[13];
  __swift_project_boxed_opaque_existential_1(v36 + 9, v38);
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_22059E77C;

  return MEMORY[0x2821CEDC0](v38, v37);
}

uint64_t sub_22059E77C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_22059FC5C;
  }

  else
  {
    v4[45] = a1;
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_22059E8A4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22059E8A4()
{
  v201 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v6;
  sub_22059C558(sub_2205A0770, v1, v5);

  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = *(v0 + 312);
  v9 = *(v0 + 160);
  if (v7 == 1)
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 24);
    sub_2204AAE74(*(v0 + 112), &qword_281298FF0, MEMORY[0x277D698E0]);
    v8(v10, v11, v9);
    v12 = sub_22088A82C();
    v13 = sub_220891ADC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 336);
    v16 = *(v0 + 184);
    v17 = *(v0 + 160);
    if (v14)
    {
      v197 = v13;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v200[0] = v19;
      *v18 = 136315138;
      v20 = sub_22088588C();
      v22 = v21;
      v15(v16, v17);
      v23 = sub_2204A7B78(v20, v22, v200);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22043F000, v12, v197, "No watchlist found matching entity watchlistID=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D8B7F0](v19, -1, -1);
      MEMORY[0x223D8B7F0](v18, -1, -1);
    }

    else
    {

      v15(v16, v17);
    }

    sub_22088486C();
    sub_2204BBDE4(&qword_27CF570E8, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_22088484C();
    swift_willThrow();
  }

  else
  {
    v165 = v2;
    v188 = *(v0 + 200);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 24);
    (*(v26 + 32))(v24, *(v0 + 112), v27);
    v193 = *(v26 + 16);
    v193(v25, v24, v27);
    v8(v188, v28, v9);
    v29 = sub_22088A82C();
    v30 = sub_220891AFC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 336);
    v33 = *(v0 + 200);
    v34 = *(v0 + 160);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    if (v31)
    {
      v179 = *(v0 + 336);
      v38 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v200[0] = v189;
      *v38 = 136315394;
      log = v34;
      v39 = sub_220886A0C();
      v184 = v30;
      v41 = v40;
      v183 = *(v36 + 8);
      v183(v35, v37);
      v42 = sub_2204A7B78(v39, v41, v200);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = sub_22088588C();
      v45 = v44;
      v179(v33, log);
      v46 = sub_2204A7B78(v43, v45, v200);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_22043F000, v29, v184, "Matched watchlist ID to watchlistName='%s', watchlistID=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v189, -1, -1);
      MEMORY[0x223D8B7F0](v38, -1, -1);
    }

    else
    {

      v32(v33, v34);
      v183 = *(v36 + 8);
      v183(v35, v37);
    }

    (*(v0 + 296))(*(v0 + 248), *(v0 + 16), *(v0 + 216));
    sub_2208867AC();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    v172 = *(v0 + 152);
    v174 = *(v0 + 120);
    v47 = *(v0 + 104);
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    v50 = *(v0 + 72);
    v180 = *(v0 + 64);
    v51 = *(v0 + 48);
    v52 = *(v0 + 56);
    v167 = v47;
    (v193)(v50);
    v53 = *(v52 + 20);
    v54 = *(v48 + 16);
    (v54)(v50 + v53, v47, v49);
    v55 = *(v48 + 56);
    v55(v50 + v53, 0, 1, v49);
    v56 = v55;
    swift_getObjectType();
    v193(v51, v172, v174);
    v57 = *(v52 + 20);
    v173 = v54;
    (v54)(v51 + v57, v167, v49);
    v56(v51 + v57, 0, 1, v49);
    v58 = *(v180 + 56);
    v58(v51, 0, 1, v52);
    sub_22046599C();
    sub_22088B78C();
    sub_2204AAE74(v51, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    v59 = *(v0 + 368);
    if (v59 == 2)
    {
      v60 = *(v0 + 152);
      v61 = *(v0 + 120);
      v62 = *(v0 + 104);
      v63 = *(v0 + 80);
      v64 = *(v0 + 88);
      v65 = *(v0 + 72);
      MEMORY[0x223D80750]("Unexpectedly found no state for Commands.Watchlist.membership, this should never fail.", 86, 2, MEMORY[0x277D84F90]);
      sub_22088486C();
      sub_2204BBDE4(&qword_27CF570E8, MEMORY[0x277CB9BB0]);
      swift_allocError();
      sub_22088485C();
      swift_willThrow();
      sub_2205A0790(v65, type metadata accessor for WatchlistMembershipCommandContext);
      (*(v64 + 8))(v62, v63);
      v66 = v60;
      v67 = v61;
    }

    else
    {
      if (v59)
      {
        v68 = 0x6863746157746F6ELL;
      }

      else
      {
        v68 = 0x676E696863746177;
      }

      if (v59)
      {
        v69 = 0xEB00000000676E69;
      }

      else
      {
        v69 = 0xE800000000000000;
      }

      if (*(v0 + 369))
      {
        v70 = 0x6863746157746F6ELL;
      }

      else
      {
        v70 = 0x676E696863746177;
      }

      if (*(v0 + 369))
      {
        v71 = 0xEB00000000676E69;
      }

      else
      {
        v71 = 0xE800000000000000;
      }

      v181 = v71;
      v168 = v68;
      v170 = v70;
      if (v68 == v70 && v69 == v71)
      {
      }

      else
      {
        v72 = sub_2208928BC();

        if ((v72 & 1) == 0)
        {
          v106 = *(v0 + 56);
          v107 = *(v0 + 40);
          sub_2205A07F0(*(v0 + 72), v107, type metadata accessor for WatchlistMembershipCommandContext);
          v58(v107, 0, 1, v106);
          sub_22088B81C();
          if (v165)
          {
            v191 = v165;
            v108 = *(v0 + 312);
            v109 = *(v0 + 296);
            v110 = *(v0 + 232);
            v111 = *(v0 + 216);
            v112 = *(v0 + 176);
            v113 = *(v0 + 160);
            v115 = *(v0 + 16);
            v114 = *(v0 + 24);
            sub_2204AAE74(*(v0 + 40), &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
            v109(v110, v115, v111);
            v108(v112, v114, v113);
            v116 = v165;
            v117 = sub_22088A82C();
            v118 = sub_220891ADC();

            v119 = os_log_type_enabled(v117, v118);
            v121 = *(v0 + 328);
            v120 = *(v0 + 336);
            v122 = *(v0 + 232);
            v123 = *(v0 + 216);
            v124 = *(v0 + 176);
            v186 = *(v0 + 160);
            if (v119)
            {
              v166 = v117;
              v125 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v200[0] = v169;
              *v125 = 136315906;
              v162 = v120;
              v126 = sub_2204A7B78(v170, v181, v200);

              *(v125 + 4) = v126;
              *(v125 + 12) = 2080;
              v127 = sub_22088562C();
              v163 = v118;
              v129 = v128;
              v121(v122, v123);
              v130 = sub_2204A7B78(v127, v129, v200);

              *(v125 + 14) = v130;
              *(v125 + 22) = 2080;
              v131 = sub_22088588C();
              v133 = v132;
              v162(v124, v186);
              v134 = sub_2204A7B78(v131, v133, v200);

              *(v125 + 24) = v134;
              *(v125 + 32) = 2112;
              v135 = v191;
              v136 = _swift_stdlib_bridgeErrorToNSError();
              *(v125 + 34) = v136;
              *v164 = v136;
              _os_log_impl(&dword_22043F000, v166, v163, "Error toggling symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s, error=%@", v125, 0x2Au);
              sub_2204AAE74(v164, &qword_28127E460, sub_2205A0858);
              MEMORY[0x223D8B7F0](v164, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x223D8B7F0](v169, -1, -1);
              MEMORY[0x223D8B7F0](v125, -1, -1);
            }

            else
            {

              v120(v124, v186);
              v121(v122, v123);
            }
          }

          else
          {
            sub_2204AAE74(*(v0 + 40), &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
          }

          v137 = *(v0 + 152);
          v138 = *(v0 + 136);
          v139 = *(v0 + 120);
          (v173)(*(v0 + 96), *(v0 + 104), *(v0 + 80));
          v193(v138, v137, v139);
          v140 = sub_22088A82C();
          v141 = sub_220891AFC();
          v142 = os_log_type_enabled(v140, v141);
          v143 = *(v0 + 152);
          v144 = *(v0 + 136);
          v145 = *(v0 + 120);
          v146 = *(v0 + 96);
          v199 = *(v0 + 104);
          v148 = *(v0 + 80);
          v147 = *(v0 + 88);
          v196 = *(v0 + 72);
          if (v142)
          {
            v176 = v141;
            v149 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v200[0] = v187;
            *v149 = 136315650;
            v192 = v143;
            v150 = sub_2204A7B78(v170, v181, v200);
            v171 = v145;
            v151 = v150;

            *(v149 + 4) = v151;
            *(v149 + 12) = 2080;
            v152 = sub_22088677C();
            v154 = v153;
            v155 = *(v147 + 8);
            v155(v146, v148);
            v156 = sub_2204A7B78(v152, v154, v200);

            *(v149 + 14) = v156;
            *(v149 + 22) = 2080;
            v157 = sub_2208869BC();
            v159 = v158;
            v183(v144, v171);
            v160 = sub_2204A7B78(v157, v159, v200);

            *(v149 + 24) = v160;
            _os_log_impl(&dword_22043F000, v140, v176, "Successfully toggled symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s", v149, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D8B7F0](v187, -1, -1);
            MEMORY[0x223D8B7F0](v149, -1, -1);

            sub_2205A0790(v196, type metadata accessor for WatchlistMembershipCommandContext);
            v155(v199, v148);
            v183(v192, v171);
          }

          else
          {

            v183(v144, v145);
            v161 = *(v147 + 8);
            v161(v146, v148);
            sub_2205A0790(v196, type metadata accessor for WatchlistMembershipCommandContext);
            v161(v199, v148);
            v183(v143, v145);
          }

          goto LABEL_37;
        }
      }

      v198 = v59;
      v73 = *(v0 + 312);
      v74 = *(v0 + 192);
      v75 = *(v0 + 160);
      v76 = *(v0 + 24);
      (*(v0 + 296))(*(v0 + 240), *(v0 + 16), *(v0 + 216));
      v73(v74, v76, v75);
      v77 = sub_22088A82C();
      v78 = sub_220891ADC();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 336);
      v81 = *(v0 + 240);
      v190 = *(v0 + 216);
      v194 = *(v0 + 328);
      v82 = *(v0 + 192);
      v83 = *(v0 + 160);
      if (v79)
      {
        v175 = *(v0 + 160);
        v84 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v200[0] = v185;
        *v84 = 136315906;
        loga = v77;
        v85 = sub_2204A7B78(v170, v181, v200);

        *(v84 + 4) = v85;
        *(v84 + 12) = 2080;
        v182 = v78;
        v86 = sub_2204A7B78(v168, v69, v200);

        *(v84 + 14) = v86;
        *(v84 + 22) = 2080;
        v87 = sub_22088562C();
        v89 = v88;
        v194(v81, v190);
        v90 = sub_2204A7B78(v87, v89, v200);

        *(v84 + 24) = v90;
        *(v84 + 32) = 2080;
        v91 = sub_22088588C();
        v93 = v92;
        v80(v82, v175);
        v94 = sub_2204A7B78(v91, v93, v200);

        *(v84 + 34) = v94;
        _os_log_impl(&dword_22043F000, loga, v182, "Unable to toggle symbol watchlist membership to state it's already in expectedState=%s, currentState=%s, symbolID=%s, watchlistID=%s", v84, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x223D8B7F0](v185, -1, -1);
        MEMORY[0x223D8B7F0](v84, -1, -1);
      }

      else
      {

        v80(v82, v83);
        v194(v81, v190);
      }

      v95 = sub_220885EEC();
      sub_2204BBDE4(&qword_27CF570F0, MEMORY[0x277D69540]);
      swift_allocError();
      v97 = v96;
      if (v198)
      {
        v98 = sub_2208928BC();
      }

      else
      {
        v98 = 1;
      }

      v195 = *(v0 + 152);
      v99 = *(v0 + 120);
      v100 = *(v0 + 104);
      v102 = *(v0 + 80);
      v101 = *(v0 + 88);
      v103 = *(v0 + 72);

      *v97 = v98 & 1;
      (*(*(v95 - 8) + 104))(v97, *MEMORY[0x277D69538], v95);
      swift_willThrow();
      sub_2205A0790(v103, type metadata accessor for WatchlistMembershipCommandContext);
      (*(v101 + 8))(v100, v102);
      v66 = v195;
      v67 = v99;
    }

    v183(v66, v67);
  }

LABEL_37:

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_22059FC5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059FDB0(uint64_t a1)
{
  v31 = a1;
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  sub_2204446D4(0, &unk_281298980);
  sub_22088849C();
  if (*(&v41 + 1))
  {
    sub_2205A0B34(&v40, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  }

  v32 = sub_22059C72C();
  v9 = v1[14];
  v10 = sub_22088969C();
  v11 = *(*(v10 - 8) + 56);
  v33 = v8;
  v11(v8, 1, 1, v10);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  sub_22088849C();
  if (*(&v37 + 1))
  {
    sub_220458198(&v36, v39);
  }

  else
  {
    sub_22046DA2C((v1 + 16), v39);
    if (*(&v37 + 1))
    {
      sub_2205A0B34(&v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    }
  }

  v43 = v32;
  sub_2205A0924(v39, &v34, &unk_281298970, &unk_281298980);
  if (v35)
  {
    sub_220458198(&v34, &v36);
    v12 = sub_220597454(&v36);
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    sub_2205A0B34(&v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v12 = qword_2812908F8;
    v14 = qword_281290900;
    v16 = qword_281290908;

    sub_2204A80F4(v14);
  }

  v35 = sub_22088731C();
  *&v34 = v9;
  v17 = v9;
  v18 = v29;
  sub_2205A08A4(v33, v29);
  sub_2205A0924(&v40, &v36, &unk_281296D10, &qword_281296D20);
  v19 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  sub_2205A0994(v18, v21 + v19);
  v22 = v21 + v20;
  v23 = v37;
  *v22 = v36;
  *(v22 + 16) = v23;
  *(v22 + 32) = v38;
  v24 = (v21 + ((v20 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v12;
  v24[1] = v14;
  v24[2] = v16;
  swift_retain_n();

  sub_2204A80F4(v14);
  sub_2204549FC();
  sub_2204BBDE4(&unk_281297EC0, sub_2204549FC);
  v25 = v30;
  sub_22088E92C();

  if (v25)
  {
    sub_2205A0B34(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888EBC();

    sub_2204DA45C(v14);
    sub_2205A0B34(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v40, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    return sub_2204AAE74(v33, &qword_281298480, MEMORY[0x277D686D0]);
  }

  else
  {

    sub_2204DA45C(v14);
    sub_2205A0B34(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v40, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2204AAE74(v33, &qword_281298480, MEMORY[0x277D686D0]);

    return sub_2205A0B34(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }
}

uint64_t sub_2205A0500()
{
  v0 = sub_2208869BC();
  v2 = v1;
  if (v0 == sub_22088588C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2208928BC();
  }

  return v4 & 1;
}

uint64_t sub_2205A059C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_2205A0620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2204C6018;

  return sub_22059C86C(a1);
}

uint64_t sub_2205A06B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2205A071C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2205A0790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205A07F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2205A0858()
{
  result = qword_28127E468;
  if (!qword_28127E468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E468);
  }

  return result;
}

uint64_t sub_2205A08A4(uint64_t a1, uint64_t a2)
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A0924(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_220448010(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2205A0994(uint64_t a1, uint64_t a2)
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A0A14(uint64_t a1)
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

void sub_2205A0AE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2205A0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2205A0B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v5 = sub_2208899EC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22088938C();
  *&v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22088937C();
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220889CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220889DAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_220889D6C();
  MEMORY[0x28223BE20](v59, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v26);
  v57 = &v48 - v29;
  v58 = v27;
  v30 = a2 - 1;
  v31 = a1;
  if (v30 > 2)
  {
    v32 = MEMORY[0x277D68CB0];
  }

  else
  {
    v32 = qword_27844A640[v30];
  }

  v33 = v57;
  v34 = v59;
  (*(v27 + 104))(v57, *v32, v59, v28);
  (*(v13 + 104))(v16, *MEMORY[0x277D68BD8], v12);
  (*(v58 + 16))(v24, v33, v34);
  sub_220889D9C();
  sub_2205A1540(&qword_27CF570F8, MEMORY[0x277D68D00]);
  v48 = "ampaignLandingPageTracker";
  sub_220886F1C();
  (*(v18 + 8))(v21, v17);
  sub_22088A28C();
  v35 = sub_22088A2AC();
  v56 = v31;
  if (v35 > 5)
  {
    v36 = MEMORY[0x277D68438];
  }

  else
  {
    v36 = qword_27844A658[v35];
  }

  (*(v50 + 104))(v49, *v36, v51);
  sub_22088936C();
  sub_2205A14E8();
  v51 = v37;
  v38 = sub_220886F8C();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  v50 = xmmword_220899360;
  *(v41 + 16) = xmmword_220899360;
  v42 = *MEMORY[0x277CEAD18];
  v43 = *(v39 + 104);
  v43(v41 + v40, v42, v38);
  sub_2205A1540(&qword_281298510, MEMORY[0x277D68410]);
  sub_220886F1C();

  sub_22088A2CC();
  v44 = v52;
  sub_2208899DC();
  v45 = swift_allocObject();
  *(v45 + 16) = v50;
  v43(v45 + v40, v42, v38);
  sub_2205A1540(&unk_2812983E0, MEMORY[0x277D68948]);
  v46 = v55;
  sub_220886F1C();

  (*(v54 + 8))(v44, v46);
  sub_220889CBC();
  sub_2205A1540(&qword_27CF57100, MEMORY[0x277D68BF8]);
  memset(v63, 0, 32);
  sub_220886F3C();
  sub_22056D130(v63);
  (*(v53 + 8))(v61, v62);
  return (*(v58 + 8))(v57, v59);
}

uint64_t sub_2205A1328(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088A2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v8);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_22088726C();
}

uint64_t sub_2205A1474(uint64_t a1)
{
  v3 = *(sub_22088A2FC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2205A0B94(a1, v4, v5);
}

void sub_2205A14E8()
{
  if (!qword_28127E170)
  {
    sub_220886F8C();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E170);
    }
  }
}

uint64_t sub_2205A1540(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2205A1588(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton;
  *&v4[v10] = [objc_opt_self() buttonWithType_];
  v11 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_2205A17C0()
{
  v1 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2205A194C(void *a1)
{
  v2 = sub_22089132C();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v5, &v6);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    sub_22088C71C();
    sub_22088BFCC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for TickerRefreshPriceDataBlueprintModifier()
{
  result = qword_2812809C8;
  if (!qword_2812809C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205A1AB4()
{
  result = sub_22088582C();
  if (v1 <= 0x3F)
  {
    result = sub_2204446D4(319, &qword_281288DB0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2205A1B58(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v5 = sub_22088B64C();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204EE870(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - v10;
  sub_2204EF684();
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_2204EE870(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v29 - v16;
  v40 = v3;
  v41 = a1;
  v18 = sub_220572AE4(sub_2205A3E5C, v39);
  sub_2204EF5C8();
  v20 = v19;
  v21 = sub_2204EF2A4(&qword_281297E20, sub_2204EF5C8);
  v22 = sub_2204EF2A4(&qword_281297E28, sub_2204EF5C8);
  MEMORY[0x223D80A20](v18, v20, v21, v22);
  type metadata accessor for TickerModel();
  sub_220483B88();
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel);
  sub_22088E7CC();
  sub_2205A3E7C();
  sub_22088BDEC();
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  if (sub_22088B65C())
  {
    v24 = v35;
    v23 = v36;
    (*(v35 + 104))(v11, *MEMORY[0x277D6DF80], v36);
  }

  else
  {
    v26 = v30;
    v25 = v31;
    v27 = v32;
    (*(v31 + 104))(v30, *MEMORY[0x277D6D868], v32);
    sub_22088C67C();
    (*(v25 + 8))(v26, v27);
    v24 = v35;
    v23 = v36;
  }

  v38(v11);
  (*(v24 + 8))(v11, v23);
  (*(v33 + 8))(v17, v34);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_2205A1FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204EEED4();
  MEMORY[0x28223BE20](v6 - 8, v7);
  sub_2204EF5C8();
  sub_22088B2AC();
  v17 = a1;
  v18 = v19;
  v15 = a2;
  v16 = a3;
  v8 = sub_220572E24(sub_2205A3ED0, v14);
  sub_2204EECD0();
  v10 = v9;
  v11 = sub_2204EF2A4(&qword_281297FD8, sub_2204EECD0);
  v12 = sub_2204EF2A4(&qword_281297FE0, sub_2204EECD0);
  MEMORY[0x223D80A20](v8, v10, v11, v12);
  type metadata accessor for TickerModel();
  sub_220483B88();
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel);
  return sub_22088B29C();
}

uint64_t sub_2205A21B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v146 = a4;
  v147 = a3;
  v164 = a5;
  v145 = sub_2208852DC();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v7);
  v161 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2208857EC();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v9);
  v140 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22088699C();
  v159 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v11);
  v156 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v155 = &v127 - v15;
  v160 = sub_220885D4C();
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v16);
  v154 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v137 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v136 = &v127 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v135 = &v127 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v133 = &v127 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v151 = &v127 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v153 = &v127 - v35;
  v162 = sub_22088685C();
  v152 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v36);
  v165 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v149 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v158 = &v127 - v43;
  v44 = sub_22088676C();
  v163 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v45);
  v132 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v127 - v49;
  v139 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v139, v51);
  v53 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v127 - v56;
  v148 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v148, v58);
  v150 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v63 = (&v127 - v62);
  sub_2204EECD0();
  v65 = v64;
  v66 = a1;
  sub_22088AD8C();
  v138 = v57;
  sub_2205A3EF4(v57, v53, type metadata accessor for TickerModel);
  sub_220483A44();
  v68 = v67;
  sub_2205A3EF4(&v53[*(v67 + 48)], v63, type metadata accessor for StockViewModel);
  type metadata accessor for TickerRefreshPriceDataBlueprintModifier();
  v134 = a2;
  v69 = sub_22088581C();
  v166 = v63;
  v70 = sub_22088681C();
  if (!*(v69 + 16))
  {

    goto LABEL_6;
  }

  v72 = sub_2204AF97C(v70, v71);
  v74 = v73;

  if ((v74 & 1) == 0)
  {
LABEL_6:

    sub_2204D6068(v166, type metadata accessor for StockViewModel);
    return (*(*(v65 - 8) + 16))(v164, v66, v65);
  }

  v131 = v68;
  v75 = *(v69 + 56) + *(v163 + 72) * v72;
  v76 = v163;
  v129 = *(v163 + 16);
  v77 = v132;
  (v129)(v132, v75, v44);

  (*(v76 + 32))(v50, v77, v44);
  v78 = v158;
  v79 = v166;
  sub_2205A32C4(v134, v166, v50, v158);
  v130 = *(v152 + 16);
  v130(v165, v79, v162);
  v80 = v153;
  v132 = v50;
  (v129)(v153, v50, v44);
  (*(v76 + 56))(v80, 0, 1, v44);
  v129 = type metadata accessor for StockSparklineViewModel;
  v81 = v149;
  sub_2204EF9E4(v78, v149, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v82 = v148;
  v83 = *(v148 + 32);
  v127 = *(v157 + 16);
  v84 = v154;
  v134 = v44;
  v85 = v160;
  v127(v154, v79 + v83, v160);
  LODWORD(v128) = *(&v79->isa + v82[9]);
  v86 = v150;
  v130(v150, v165, v162);
  v87 = MEMORY[0x277D697F8];
  sub_2204EF9E4(v80, v86 + v82[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204EF9E4(v81, v86 + v82[6], qword_28128AAE8, v129);
  v88 = v84;
  v89 = v86;
  v90 = v85;
  v91 = v134;
  v127((v86 + v82[8]), v88, v90);
  *(v86 + v82[9]) = v128;
  v92 = v151;
  sub_2204EF9E4(v80, v151, &qword_2812990C0, v87);
  v93 = v155;
  sub_2208867CC();
  v94 = v133;
  v95 = v163;
  sub_2204EF9E4(v92, v133, &qword_2812990C0, v87);
  v96 = *(v95 + 48);
  if (v96(v94, 1, v91) == 1)
  {
    sub_2204B389C(v94, &qword_2812990C0, MEMORY[0x277D697F8]);
    v130 = 0;
    LODWORD(v129) = 1;
  }

  else
  {
    v130 = sub_22088675C();
    LODWORD(v129) = v98;
    (*(v95 + 8))(v94, v91);
  }

  v99 = v137;
  v100 = v135;
  sub_2204EF9E4(v92, v135, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v100, 1, v91) == 1)
  {
    sub_2204B389C(v100, &qword_2812990C0, MEMORY[0x277D697F8]);
    v137 = 0;
    LODWORD(v135) = 1;
  }

  else
  {
    v137 = sub_22088666C();
    LODWORD(v135) = v101;
    (*(v95 + 8))(v100, v91);
  }

  v102 = v136;
  sub_2204EF9E4(v92, v136, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v102, 1, v91) == 1)
  {
    sub_2204B389C(v102, &qword_2812990C0, MEMORY[0x277D697F8]);
    v136 = 0;
    LODWORD(v133) = 1;
  }

  else
  {
    v136 = sub_22088671C();
    LODWORD(v133) = v103;
    (*(v95 + 8))(v102, v91);
  }

  sub_2204EF9E4(v92, v99, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v99, 1, v91) == 1)
  {
    sub_2204B389C(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
    v128 = 0;
    v127 = 0;
  }

  else
  {
    v128 = sub_22088668C();
    v127 = v104;
    (*(v95 + 8))(v99, v91);
  }

  v105 = v89 + *(v148 + 28);
  v148 = *(v159 + 16);
  v106 = v156;
  v107 = v141;
  (v148)(v156, v93, v141);
  v108 = v142;
  v109 = v140;
  v110 = v143;
  (*(v142 + 104))(v140, *MEMORY[0x277D69288], v143);
  v111 = v161;
  sub_22088524C();
  *v105 = v130;
  *(v105 + 8) = v129 & 1;
  *(v105 + 16) = v137;
  *(v105 + 24) = v135 & 1;
  *(v105 + 32) = v136;
  *(v105 + 40) = v133 & 1;
  v112 = v127;
  *(v105 + 48) = v128;
  *(v105 + 56) = v112;
  v113 = type metadata accessor for PriceViewModel();
  (v148)(v105 + v113[10], v106, v107);
  *(v105 + 64) = 9666786;
  *(v105 + 72) = 0xA300000000000000;
  (*(v108 + 16))(v105 + v113[9], v109, v110);
  v114 = v144;
  v115 = v111;
  v116 = v145;
  (*(v144 + 16))(v105 + v113[11], v115, v145);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v117 = qword_2812B6B48;
  (*(v108 + 8))(v109, v110);
  v118 = *(v159 + 8);
  v118(v156, v107);
  v118(v155, v107);
  v119 = MEMORY[0x277D697F8];
  sub_2204B389C(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v157 + 8))(v154, v160);
  sub_2204B389C(v149, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B389C(v153, &qword_2812990C0, v119);
  (*(v152 + 8))(v165, v162);
  v120 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v114 + 40))(v117 + v120, v161, v116);
  swift_endAccess();
  sub_2204EF5C8();
  sub_22088B2BC();
  sub_2204EE870(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v121 = sub_22088E6CC();
  LOBYTE(v119) = v122;

  if (v119)
  {
    v123 = 0;
  }

  else
  {
    v123 = v121;
  }

  v124 = *(v131 + 48);
  v125 = v138;
  *v138 = v123;
  v126 = v150;
  sub_220527BCC(v150, v125 + v124);
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel);
  sub_22088AD7C();
  sub_2204D6068(v126, type metadata accessor for StockViewModel);
  sub_2204B389C(v158, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  (*(v163 + 8))(v132, v134);
  return sub_2204D6068(v166, type metadata accessor for StockViewModel);
}

uint64_t sub_2205A32C4@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a4;
  v122 = a3;
  v112 = type metadata accessor for StockSparklineViewModel.CacheModel(0);
  MEMORY[0x28223BE20](v112, v6);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v105 - v10;
  sub_220453F64(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v105 - v14;
  sub_220453F64(0, &qword_28127EDE8, MEMORY[0x277D6C680]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v114 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v105 - v21;
  v23 = sub_220890D8C();
  v119 = *(v23 - 8);
  v120 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v109 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v108 = &v105 - v28;
  v118 = sub_22088665C();
  v29 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v30);
  v111 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v115 = &v105 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v105 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v105 - v41;
  refreshed = type metadata accessor for TickerRefreshPriceDataBlueprintModifier();
  v117 = a1;
  v43 = sub_2208857FC();
  v44 = sub_22088681C();
  if (*(v43 + 16))
  {
    v110 = a2;
    v46 = sub_2204AF97C(v44, v45);
    v48 = v47;

    if (v48)
    {
      v49 = v29;
      v50 = *(v43 + 56) + *(v29 + 72) * v46;
      v51 = v29 + 16;
      v52 = *(v29 + 16);
      v53 = v118;
      v106 = v52;
      v107 = v51;
      v52(v38, v50, v118);

      (*(v49 + 32))(v42, v38, v53);
      __swift_project_boxed_opaque_existential_1((v117 + *(refreshed + 24)), *(v117 + *(refreshed + 24) + 24));
      v54 = sub_22088676C();
      v55 = *(v54 - 8);
      (*(v55 + 16))(v15, v122, v54);
      (*(v55 + 56))(v15, 0, 1, v54);
      sub_2204B0174(v42, v15, v110, v22, 0.02);
      sub_2204B389C(v15, &qword_2812990C0, MEMORY[0x277D697F8]);
      v57 = v119;
      v56 = v120;
      if ((*(v119 + 48))(v22, 1, v120) != 1)
      {
        v96 = v108;
        (*(v57 + 32))(v108, v22, v56);
        v97 = v121;
        (*(v57 + 16))(v121, v96, v56);
        v98 = type metadata accessor for StockSparklineViewModel(0);
        v106(v97 + v98[8], v42, v53);
        v117 = sub_22088675C();
        LODWORD(refreshed) = v99;
        v100 = sub_22088666C();
        v102 = v101;
        (*(v57 + 8))(v96, v56);
        (*(v49 + 8))(v42, v53);
        v103 = v97 + v98[5];
        *v103 = v117;
        *(v103 + 8) = refreshed & 1;
        v104 = v97 + v98[6];
        *v104 = v100;
        *(v104 + 8) = v102 & 1;
        *(v97 + v98[7]) = 0;
        return (*(*(v98 - 1) + 56))(v97, 0, 1, v98);
      }

      (*(v49 + 8))(v42, v53);
      sub_2204B389C(v22, &qword_28127EDE8, MEMORY[0x277D6C680]);
      a2 = v110;
      v29 = v49;
    }

    else
    {

      a2 = v110;
    }
  }

  else
  {
  }

  v58 = type metadata accessor for StockViewModel();
  sub_2204EF9E4(a2 + *(v58 + 24), v11, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v59 = type metadata accessor for StockSparklineViewModel(0);
  v60 = *(v59 - 1);
  if ((*(v60 + 48))(v11, 1, v59) == 1)
  {
    v61 = qword_28128AAE8;
    v62 = type metadata accessor for StockSparklineViewModel;
LABEL_11:
    sub_2204B389C(v11, v61, v62);
    sub_220891ADC();
    sub_22048D7F8();
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_220899360;
    v79 = sub_22088681C();
    v81 = v80;
    *(v78 + 56) = MEMORY[0x277D837D0];
    *(v78 + 64) = sub_22048D860();
    *(v78 + 32) = v79;
    *(v78 + 40) = v81;
    sub_22048D2F4();
    v82 = sub_2208922DC();
    sub_22088A7EC();

    return (*(v60 + 56))(v121, 1, 1, v59);
  }

  v63 = v113;
  v64 = *(v112 + 24);
  v65 = &v11[v59[8]];
  v66 = v118;
  v110 = *(v29 + 16);
  (v110)(&v113[v64], v65, v118);
  sub_2204D6068(v11, type metadata accessor for StockSparklineViewModel);
  v67 = v29;
  v112 = v29;
  v68 = v66;
  v69 = a2;
  v70 = *(v67 + 32);
  v71 = &v63[v64];
  v72 = v111;
  v70(v111, v71, v68);
  v73 = v115;
  v70(v115, v72, v68);
  __swift_project_boxed_opaque_existential_1((v117 + *(refreshed + 24)), *(v117 + *(refreshed + 24) + 24));
  v74 = sub_22088676C();
  v75 = *(v74 - 8);
  (*(v75 + 16))(v15, v122, v74);
  (*(v75 + 56))(v15, 0, 1, v74);
  v11 = v114;
  sub_2204B0174(v73, v15, v69, v114, 0.02);
  sub_2204B389C(v15, &qword_2812990C0, MEMORY[0x277D697F8]);
  v76 = v119;
  v77 = v120;
  if ((*(v119 + 48))(v11, 1, v120) == 1)
  {
    (*(v112 + 8))(v73, v68);
    v61 = &qword_28127EDE8;
    v62 = MEMORY[0x277D6C680];
    goto LABEL_11;
  }

  v84 = v73;
  v85 = v109;
  (*(v76 + 32))(v109, v11, v77);
  v86 = v121;
  (*(v76 + 16))(v121, v85, v77);
  (v110)(v86 + v59[8], v84, v68);
  v87 = sub_22088675C();
  v89 = v88;
  v90 = sub_22088666C();
  v91 = v76;
  v93 = v92;
  (*(v91 + 8))(v85, v77);
  (*(v112 + 8))(v115, v68);
  v94 = v86 + v59[5];
  *v94 = v87;
  *(v94 + 8) = v89 & 1;
  v95 = v86 + v59[6];
  *v95 = v90;
  *(v95 + 8) = v93 & 1;
  *(v86 + v59[7]) = 0;
  return (*(v60 + 56))(v86, 0, 1, v59);
}

unint64_t sub_2205A3E7C()
{
  result = qword_28128AA78;
  if (!qword_28128AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128AA78);
  }

  return result;
}

uint64_t sub_2205A3EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205A3FFC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v317 = a4;
  v327 = COERCE_DOUBLE(sub_220885D4C());
  v9 = *(*&v327 - 8);
  MEMORY[0x28223BE20](*&v327, v10);
  *&v321 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = COERCE_DOUBLE(sub_22088699C());
  v12 = *(*&v325 - 8);
  MEMORY[0x28223BE20](*&v325, v13);
  *&v312 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088DA1C();
  v315 = *(v15 - 8);
  v316 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v289 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C1DC();
  v314 = v18;
  sub_22088D9EC();
  v20 = v19;
  v22 = v21;
  sub_22088C20C();
  v24 = v23;
  sub_22088C21C();
  v26 = v25;
  v303 = v24;
  sub_220891A6C();
  v28 = v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v313 = a3;
  v30 = sub_22088C24C();
  [v29 scaledValueForValue:v30 compatibleWithTraitCollection:22.0];
  v32 = v31;

  LODWORD(v318) = a1;
  if (a1)
  {
    v33 = 8.0;
  }

  else
  {
    v33 = 24.0;
  }

  if (a1)
  {
    v34 = 12.0;
  }

  else
  {
    v34 = 4.0;
  }

  v35 = type metadata accessor for StockViewModel();
  v36 = a2 + v35[7];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v37 = sub_2208867BC();
  v326 = sub_220605F2C(v37, v38, 0);

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_2204C4258(a2 + v35[5]);
  v324 = COERCE_DOUBLE(sub_220606880());

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22088684C();
  v323 = COERCE_DOUBLE(sub_220606AA4());

  v322 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40)));
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v39 = *v36;
  LODWORD(v320) = *(v36 + 8);
  v319 = v39;
  if (LOBYTE(v320))
  {
    goto LABEL_22;
  }

  v40 = v39;
  if ((v343 & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = type metadata accessor for PriceViewModel();
  v42 = v312;
  v43 = v325;
  (*(v12 + 16))(COERCE_DOUBLE(*&v312), v36 + *(v41 + 40), COERCE_DOUBLE(*&v325));
  v44 = (*(v12 + 88))(COERCE_DOUBLE(*&v42), COERCE_DOUBLE(*&v43));
  v45 = 2;
  if (v44 != *MEMORY[0x277D69898] && v44 != *MEMORY[0x277D698A0] && v44 != *MEMORY[0x277D69870] && v44 != *MEMORY[0x277D69888] && v44 != *MEMORY[0x277D69878] && v44 != *MEMORY[0x277D69890])
  {
    if (v44 == *MEMORY[0x277D69880])
    {
LABEL_18:
      v45 = 0;
      goto LABEL_19;
    }

    if (v44 != *MEMORY[0x277D69868])
    {
      (*(v12 + 8))(COERCE_DOUBLE(*&v42), COERCE_DOUBLE(*&v43));
    }

    v45 = 2;
  }

LABEL_19:
  if (qword_281294078 != -1)
  {
    v288 = v45;
    swift_once();
    v45 = v288;
  }

  sub_2204BD7B8(*(v36 + 48), *(v36 + 56), 5, 1, v45, v40);
  if (!v46)
  {
LABEL_22:
  }

  v325 = *(v36 + 16);
  v47 = *(v36 + 24);
  v322 = COERCE_DOUBLE(sub_220606CCC());

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v48 = v321;
  v49 = v327;
  (*(v9 + 16))(COERCE_CGFLOAT(*&v321), a2 + v35[8], COERCE_DOUBLE(*&v327));
  v50 = (*(v9 + 88))(COERCE_CGFLOAT(*&v48), COERCE_DOUBLE(*&v49));
  if (v50 == *MEMORY[0x277D69480])
  {
    v51 = v323;
    if (v47)
    {
      v52 = *(v36 + 64);
      v53 = *(v36 + 72);

      v54 = v322;
    }

    else
    {
      v56 = v319 >= 5.0;
      if (v319 == 0.0)
      {
        v56 = 1;
      }

      v57 = sub_2204DBC04(v56 & ~LOBYTE(v320), v325);
      v54 = v322;
      if (v58)
      {
        v52 = v57;
        v53 = v58;
      }

      else
      {
        v52 = *(v36 + 64);
        v53 = *(v36 + 72);
      }
    }

    v63 = v47;
    goto LABEL_50;
  }

  v51 = v323;
  if (v50 != *MEMORY[0x277D69468])
  {
    v54 = v322;
    if (v50 != *MEMORY[0x277D69478])
    {
      result = sub_2208928AC();
      __break(1u);
      return result;
    }

    type metadata accessor for PriceViewModel();
    if ((sub_2208857CC() & 1) == 0)
    {
      v52 = sub_220691100(0);
      v53 = v64;
      v63 = v47;
      goto LABEL_50;
    }

    if ((LODWORD(v320) | v47))
    {
      goto LABEL_46;
    }

    if (v319 - v325 <= 0.0)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = v325 / (v319 - v325);
    }

    if (qword_27CF55AB8 == -1)
    {
      goto LABEL_44;
    }

LABEL_85:
    swift_once();
    goto LABEL_44;
  }

  v54 = v322;
  if ((LODWORD(v320) | v47))
  {
LABEL_46:
    v52 = *(v36 + 64);
    v53 = *(v36 + 72);

    v63 = v47;
    goto LABEL_50;
  }

  if (v319 - v325 <= 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v325 / (v319 - v325);
  }

  if (qword_27CF55AB8 != -1)
  {
    goto LABEL_85;
  }

LABEL_44:
  v59 = qword_27CF6D008;
  v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v61 = [v59 stringFromNumber_];

  if (!v61)
  {
    goto LABEL_46;
  }

  v52 = sub_22089136C();
  v53 = v62;

  v63 = v47;
LABEL_50:
  y = v33 + v32;
  v312 = v20 + v22;
  v65 = v26 - v28 - (v20 + v22);
  v327 = v34 + v33 + v32;
  v66 = v65 - v327;
  v67 = sub_22060617C(v52, v53, *&v325, v63);

  [*&v51 boundingRectWithSize:32 options:0 context:{v66, 1.79769313e308}];
  v69 = v68;
  v304 = v70;
  v320 = v71;
  v321 = v72;
  [*&v54 boundingRectWithSize:32 options:0 context:{v66, 1.79769313e308}];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  [v67 boundingRectWithSize:32 options:0 context:{v66, 1.79769313e308}];
  v85 = v324;
  v325 = v84;
  v309 = v82;
  v310 = v83;
  v307 = v78;
  v308 = v81;
  v319 = v80;
  v305 = v76;
  v306 = v74;
  if (LOBYTE(v318))
  {
    [v326 boundingRectWithSize:1 options:0 context:{v66, 1.79769313e308}];
    v318 = v86;
    v297 = v88;
    v298 = v87;
    v296 = v89;
    [*&v85 size];
    v322 = v91;
    v323 = v90;
    v92 = sub_220891D8C();
    v93 = sub_220891D8C();
    [v92 ascender];
    v95 = v94;
    [v93 ascender];
    if (v95 > v96)
    {
      v96 = v95;
    }

    v97 = v96 + 14.0;
    [v92 ascender];
    v300 = v97;
    v99 = v97 - v98;
    v358.origin.x = v69;
    v100 = v304;
    v358.origin.y = v304;
    v101 = v320;
    v102 = v321;
    v358.size.width = v320;
    v358.size.height = v321;
    Width = CGRectGetWidth(v358);
    v104 = v69;
    v105 = Width;
    v359.origin.x = v104;
    v359.size.width = v101;
    v106 = v99;
    v359.origin.y = v100;
    v359.size.height = v102;
    Height = CGRectGetHeight(v359);
    v108 = v327;
    v360.origin.x = v327;
    v360.origin.y = v99;
    v360.size.width = v105;
    v360.size.height = Height;
    MaxX = CGRectGetMaxX(v360);
    v110 = v323;
    v302 = v105;
    v303 = v106;
    v301 = Height;
    v291 = v66;
    if (v323 + MaxX + 8.0 <= v66)
    {
      v377.origin.x = v108;
      v377.origin.y = v106;
      v377.size.width = v105;
      v377.size.height = Height;
      MinX = CGRectGetMinX(v377);
      v378.origin.y = v106;
      v175 = MinX;
      v378.origin.x = v108;
      v378.size.width = v105;
      v378.size.height = Height;
      v122 = v175 + CGRectGetWidth(v378) + 8.0;
      [v93 ascender];
      MaxY = v300 - v176;
      v121 = v322;
    }

    else
    {
      [*&v85 boundingRectWithSize:1 options:0 context:{v66, 1.79769313e308}];
      v111 = v106;
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;
      v361.origin.x = v108;
      v361.origin.y = v111;
      v361.size.width = v105;
      v361.size.height = Height;
      MaxY = CGRectGetMaxY(v361);
      v362.origin.x = v113;
      v362.origin.y = v115;
      v362.size.width = v117;
      v362.size.height = v119;
      v110 = CGRectGetWidth(v362);
      v363.origin.x = v113;
      v363.origin.y = v115;
      v363.size.width = v117;
      v363.size.height = v119;
      v121 = CGRectGetHeight(v363);
      v122 = v108;
    }

    v299 = v122;
    v300 = MaxY;
    v177 = v122;
    v178 = MaxY;
    v322 = v121;
    v323 = v110;
    v179 = v110;
    v180 = CGRectGetMaxY(*(&v121 - 3));
    v181 = v318;
    v379.origin.x = v318;
    v183 = *&v297;
    v182 = v298;
    v379.origin.y = v298;
    *&v379.size.width = v297;
    v184 = v296;
    v379.size.height = v296;
    v185 = CGRectGetWidth(v379);
    v380.origin.x = v181;
    v380.origin.y = v182;
    v380.size.width = v183;
    v380.size.height = v184;
    v381.size.height = CGRectGetHeight(v380);
    v381.origin.x = v108;
    v304 = v180;
    v381.origin.y = v180;
    v381.size.width = v185;
    v318 = v381.size.height;
    v186 = CGRectGetMaxY(v381);
    v187 = v305;
    v188 = v306;
    v382.origin.x = v306;
    v382.origin.y = v305;
    v189 = v307;
    v382.size.width = v307;
    v190 = v319;
    v382.size.height = v319;
    v191 = CGRectGetWidth(v382);
    v383.origin.x = v188;
    v383.origin.y = v187;
    v383.size.width = v189;
    v383.size.height = v190;
    v384.size.height = CGRectGetHeight(v383);
    v384.origin.x = v108;
    v320 = v191;
    v321 = v186;
    v384.origin.y = v186;
    v384.size.width = v191;
    v319 = v384.size.height;
    v192 = CGRectGetMaxX(v384) + 8.0;
    v194 = v308;
    v193 = v309;
    v385.origin.x = v308;
    v385.origin.y = v309;
    v195 = v310;
    v385.size.width = v310;
    v196 = v325;
    v385.size.height = v325;
    if (v291 >= v192 + CGRectGetWidth(v385))
    {
      v201 = v327;
      v387.origin.x = v327;
      v387.size.width = v320;
      v387.origin.y = v321;
      v387.size.height = v319;
      v197 = CGRectGetMaxX(v387) + 8.0;
      v388.origin.x = v201;
      v388.origin.y = v304;
      v388.size.width = v185;
      v202 = v318;
      v388.size.height = v318;
      v307 = CGRectGetMaxY(v388);
      v389.origin.x = v194;
      v389.origin.y = v193;
      v389.size.width = v195;
      v389.size.height = v196;
      v203 = CGRectGetWidth(v389);
      v390.origin.x = v194;
      v390.origin.y = v193;
      v390.size.width = v195;
      v390.size.height = v196;
      v196 = CGRectGetHeight(v390);
      v200 = v203;
      v198 = v185;
      v199 = v202;
    }

    else
    {
      v197 = v327;
      v386.origin.x = v327;
      v386.size.width = v320;
      v386.origin.y = v321;
      v386.size.height = v319;
      v307 = CGRectGetMaxY(v386);
      v198 = v185;
      v199 = v318;
      v200 = v195;
    }

    v295 = v198;
    v325 = v196;
    v204 = v327;
    v205 = v327;
    v206 = v304;
    v207 = v304;
    v208 = CGRectGetMaxY(*(&v198 - 2)) + 14.0;
    v391.origin.x = v197;
    v391.origin.y = v307;
    v391.size.width = v200;
    v391.size.height = v196;
    v209 = CGRectGetMaxY(v391) + 14.0;
    v210 = v200;
    if (v208 > v209)
    {
      v211 = v208;
    }

    else
    {
      v211 = v209;
    }

    v392.origin.x = 0.0;
    v392.origin.y = 0.0;
    v392.size.width = y;
    v392.size.height = v211;
    v393 = CGRectIntegral(v392);
    x = v393.origin.x;
    y = v393.origin.y;
    v213 = v393.size.width;
    v214 = v393.size.height;
    v215 = sub_22088C21C();
    v217 = MEMORY[0x28223BE20](v215, v216).n128_u64[0];
    *(&v289 - 30) = 0.0;
    *(&v289 - 29) = 0.0;
    *(&v289 - 28) = v217;
    *(&v289 - 27) = v211;
    *(&v289 - 26) = v211;
    *(&v289 - 25) = v204;
    v218 = v302;
    *(&v289 - 24) = v303;
    *(&v289 - 23) = v218;
    *(&v289 - 22) = v301;
    *(&v289 - 21) = v204;
    v219 = v295;
    *(&v289 - 20) = v206;
    *(&v289 - 19) = v219;
    v220 = v299;
    v221 = v300;
    *(&v289 - 18) = v318;
    *(&v289 - 17) = v220;
    v222 = v322;
    v223 = v323;
    *(&v289 - 16) = v221;
    *(&v289 - 15) = v223;
    *(&v289 - 14) = v222;
    *(&v289 - 13) = v204;
    v224 = v320;
    *(&v289 - 12) = v321;
    *(&v289 - 11) = v224;
    *(&v289 - 10) = v319;
    *(&v289 - 9) = v197;
    *(&v289 - 8) = v307;
    *(&v289 - 7) = v210;
    *(&v289 - 6) = v325;
    *(&v289 - 5) = x;
    *(&v289 - 4) = y;
    *(&v289 - 3) = v213;
    *(&v289 - 2) = v214;
    sub_22088C18C();
  }

  else
  {
    v296 = v65;
    v123 = v67;
    [v326 boundingRectWithSize:33 options:0 context:{v66 - CGRectGetWidth(*&v81) + -10.0, 1.79769313e308}];
    v294 = v125;
    v295 = v124;
    v292 = v127;
    v293 = v126;
    v364.origin.x = v69;
    v318 = v69;
    v128 = v304;
    v364.origin.y = v304;
    v364.size.width = v320;
    v364.size.height = v321;
    v129 = v66 - CGRectGetWidth(v364) + -8.0;
    v365.origin.x = v74;
    v365.origin.y = v76;
    v365.size.width = v78;
    v130 = v80;
    v365.size.height = v80;
    [*&v85 boundingRectWithSize:1 options:0 context:{v129 - CGRectGetWidth(v365) + -10.0, 1.79769313e308}];
    v290 = v131;
    v300 = v133;
    v301 = v132;
    v299 = v134;
    v135 = sub_220891D8C();
    v136 = sub_220891D8C();
    v137 = sub_220891D8C();
    [v135 ascender];
    v139 = v138;
    [v136 ascender];
    v141 = v140;
    [v137 ascender];
    if (v139 > v141)
    {
      v143 = v139;
    }

    else
    {
      v143 = v141;
    }

    if (v143 > v142)
    {
      v142 = v143;
    }

    v144 = v142 + 14.0;
    v145 = sub_220891D8C();
    v297 = v123;
    v146 = sub_220891D8C();
    [v135 ascender];
    v298 = v144;
    v148 = v144 - v147;
    v149 = v318;
    v366.origin.x = v318;
    v366.origin.y = v128;
    v150 = v320;
    v151 = v321;
    v366.size.width = v320;
    v366.size.height = v321;
    v152 = CGRectGetWidth(v366);
    v367.origin.x = v149;
    v367.origin.y = v128;
    v367.size.width = v150;
    v367.size.height = v151;
    v368.size.height = CGRectGetHeight(v367);
    v368.origin.x = v327;
    v320 = v152;
    v321 = v148;
    v368.origin.y = v148;
    v368.size.width = v152;
    v318 = v368.size.height;
    v153 = CGRectGetMaxX(v368) + 8.0;
    v369.origin.x = v290;
    v154 = v290;
    v369.size.width = v300;
    v369.origin.y = v301;
    v369.size.height = v299;
    v155 = v153 + CGRectGetWidth(v369);
    v157 = v305;
    v156 = v306;
    v370.origin.x = v306;
    v370.origin.y = v305;
    v158 = v307;
    v370.size.width = v307;
    v370.size.height = v130;
    if (v66 >= v155 + CGRectGetWidth(v370) && (v371.origin.x = v154, v371.size.width = v300, v371.origin.y = v301, v371.size.height = v299, v159 = CGRectGetHeight(v371), v372.origin.x = v327, v372.size.width = v320, v372.origin.y = v321, v372.size.height = v318, CGRectGetHeight(v372) >= v159))
    {
      v394.origin.x = v327;
      v394.size.width = v320;
      v394.origin.y = v321;
      v394.size.height = v318;
      v172 = CGRectGetMaxX(v394) + 8.0;
      [v136 ascender];
      v225 = v299;
      v304 = v298 - v226;
      v395.origin.x = v154;
      v228 = v300;
      v227 = v301;
      v395.origin.y = v301;
      v395.size.width = v300;
      v395.size.height = v299;
      v302 = CGRectGetWidth(v395);
      v396.origin.x = v154;
      v396.origin.y = v227;
      v396.size.width = v228;
      v396.size.height = v225;
      v173 = CGRectGetHeight(v396);
      v161 = v324;
    }

    else
    {
      v373.origin.x = v156;
      v373.origin.y = v157;
      v373.size.width = v158;
      v373.size.height = v319;
      v160 = CGRectGetWidth(v373);
      v161 = v324;
      [*&v324 boundingRectWithSize:1 options:0 context:{v66 + -8.0 - v160 - v303, 1.79769313e308}];
      v163 = v162;
      v164 = v158;
      v166 = v165;
      v167 = v156;
      v169 = v168;
      v171 = v170;
      v172 = v327;
      v374.origin.x = v327;
      v374.size.width = v320;
      v374.origin.y = v321;
      v374.size.height = v318;
      v304 = CGRectGetMaxY(v374);
      v375.origin.x = v163;
      v375.origin.y = v166;
      v375.size.width = v169;
      v375.size.height = v171;
      v302 = CGRectGetWidth(v375);
      v376.origin.x = v163;
      v376.origin.y = v166;
      v158 = v164;
      v376.size.width = v169;
      v156 = v167;
      v376.size.height = v171;
      v173 = CGRectGetHeight(v376);
    }

    v300 = v172;
    v301 = v173;
    v229 = v172;
    v230 = v304;
    v231 = v302;
    v232 = CGRectGetMaxY(*(&v173 - 3));
    v397.origin.x = v327;
    v397.size.width = v320;
    v397.origin.y = v321;
    v397.size.height = v318;
    v233 = CGRectGetMaxY(v397);
    if (v232 > v233)
    {
      v234 = v232;
    }

    else
    {
      v234 = v233;
    }

    [v145 ascender];
    v236 = v235;
    [v146 ascender];
    if (v236 > v237)
    {
      v237 = v236;
    }

    v238 = v234 + 2.0 + v237;
    [v145 ascender];
    v291 = v238 - v239;
    v241 = v294;
    v240 = v295;
    v398.origin.x = v295;
    v398.origin.y = v294;
    v242 = v292;
    v243 = v293;
    v398.size.width = v293;
    v398.size.height = v292;
    v290 = CGRectGetWidth(v398);
    v399.origin.x = v240;
    v399.origin.y = v241;
    v399.size.width = v243;
    v399.size.height = v242;
    v324 = CGRectGetHeight(v399);
    v400.origin.x = v156;
    v400.origin.y = v157;
    v400.size.width = v158;
    v244 = v319;
    v400.size.height = v319;
    v245 = CGRectGetWidth(v400);
    v246 = v296;
    v247 = v158;
    v248 = v303;
    v299 = v303 + v296 - v245;
    [v137 ascender];
    v298 = v298 - v249;
    v401.origin.x = v156;
    v401.origin.y = v157;
    v401.size.width = v247;
    v401.size.height = v244;
    v295 = CGRectGetWidth(v401);
    v402.origin.x = v156;
    v402.origin.y = v157;
    v402.size.width = v247;
    v402.size.height = v244;
    v319 = CGRectGetHeight(v402);
    v251 = v308;
    v250 = v309;
    v403.origin.x = v308;
    v403.origin.y = v309;
    v252 = v310;
    v403.size.width = v310;
    v253 = v325;
    v403.size.height = v325;
    v254 = v248 + v246 - CGRectGetWidth(v403);
    [v146 ascender];
    v256 = v289 - v255;
    v404.origin.x = v251;
    v404.origin.y = v250;
    v404.size.width = v252;
    v404.size.height = v253;
    v257 = CGRectGetWidth(v404);
    v405.origin.x = v251;
    v405.origin.y = v250;
    v405.size.width = v252;
    v405.size.height = v253;
    v258 = CGRectGetHeight(v405);
    v325 = v258;
    v406.origin.x = v327;
    v260 = v290;
    v259 = v291;
    v406.origin.y = v291;
    v406.size.width = v290;
    v406.size.height = v324;
    v261 = CGRectGetMaxY(v406) + 14.0;
    v407.origin.x = v254;
    v407.origin.y = v256;
    v407.size.width = v257;
    v407.size.height = v258;
    v262 = CGRectGetMaxY(v407) + 14.0;
    if (v261 > v262)
    {
      v263 = v261;
    }

    else
    {
      v263 = v262;
    }

    v408.origin.x = 0.0;
    v408.origin.y = 0.0;
    v408.size.width = y;
    v408.size.height = v263;
    v409 = CGRectIntegral(v408);
    v310 = v409.size.height;
    y = v409.origin.x;
    v264 = v409.origin.y;
    v265 = v409.size.width;
    v266 = sub_22088C21C();
    v268 = MEMORY[0x28223BE20](v266, v267).n128_u64[0];
    *(&v289 - 30) = 0.0;
    *(&v289 - 29) = 0.0;
    *(&v289 - 28) = v268;
    *(&v289 - 27) = v263;
    v269 = v327;
    *(&v289 - 26) = v263;
    *(&v289 - 25) = v269;
    v270 = v320;
    *(&v289 - 24) = v321;
    *(&v289 - 23) = v270;
    *(&v289 - 22) = v318;
    *(&v289 - 21) = v269;
    *(&v289 - 20) = v259;
    *(&v289 - 19) = v260;
    v271 = v300;
    *(&v289 - 18) = v324;
    *(&v289 - 17) = v271;
    v273 = v301;
    v272 = v302;
    *(&v289 - 16) = v304;
    *(&v289 - 15) = v272;
    v275 = v298;
    v274 = v299;
    *(&v289 - 14) = v273;
    *(&v289 - 13) = v274;
    v276 = v295;
    *(&v289 - 12) = v275;
    *(&v289 - 11) = v276;
    *(&v289 - 10) = v319;
    *(&v289 - 9) = v254;
    *(&v289 - 8) = v256;
    *(&v289 - 7) = v257;
    v277 = v310;
    v278 = y;
    *(&v289 - 6) = v325;
    *(&v289 - 5) = v278;
    *(&v289 - 4) = v264;
    *(&v289 - 3) = v265;
    *(&v289 - 2) = v277;
    sub_22088C18C();
  }

  result = (*(v315 + 8))(v314, v316);
  v355 = v340;
  v356 = v341;
  v357 = v342;
  v351 = v336;
  v352 = v337;
  v353 = v338;
  v354 = v339;
  v347 = v332;
  v348 = v333;
  v349 = v334;
  v350 = v335;
  v343 = v328;
  v344 = v329;
  v345 = v330;
  v346 = v331;
  v280 = v341;
  v281 = v317;
  *(v317 + 192) = v340;
  *(v281 + 208) = v280;
  *(v281 + 224) = v357;
  v282 = v352;
  *(v281 + 128) = v351;
  *(v281 + 144) = v282;
  v283 = v354;
  *(v281 + 160) = v353;
  *(v281 + 176) = v283;
  v284 = v348;
  *(v281 + 64) = v347;
  *(v281 + 80) = v284;
  v285 = v350;
  *(v281 + 96) = v349;
  *(v281 + 112) = v285;
  v286 = v344;
  *v281 = v343;
  *(v281 + 16) = v286;
  v287 = v346;
  *(v281 + 32) = v345;
  *(v281 + 48) = v287;
  return result;
}

double sub_2205A553C@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v98 = a5;
  v99 = a6;
  v96 = a3;
  v97 = a4;
  v95 = a2;
  v94 = a25;
  v93 = a26;
  v92 = a27;
  v90 = a21;
  v89 = a22;
  v91 = a24;
  v88 = a23;
  v82 = a17;
  v81 = a18;
  v87 = a20;
  v80 = a19;
  v74 = a13;
  v73 = a14;
  v79 = a16;
  v72 = a15;
  v71 = a12;
  v28 = sub_22088ABEC();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *MEMORY[0x277D6D320];
  v35 = *(v29 + 104);
  v35(v33, v34, v28, v31);
  sub_22088ABDC();
  v86 = v36;
  v85 = v37;
  v84 = v38;
  v83 = v39;
  v40 = *(v29 + 8);
  v40(v33, v28);
  (v35)(v33, v34, v28);
  sub_22088ABDC();
  v78 = v41;
  v77 = v42;
  v76 = v43;
  v75 = v44;
  v40(v33, v28);
  (v35)(v33, v34, v28);
  sub_22088ABDC();
  v74 = v45;
  v73 = v46;
  v72 = v47;
  v71 = v48;
  v40(v33, v28);
  (v35)(v33, v34, v28);
  sub_22088ABDC();
  v82 = v49;
  v81 = v50;
  v80 = v51;
  v79 = v52;
  v40(v33, v28);
  (v35)(v33, v34, v28);
  sub_22088ABDC();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v40(v33, v28);
  (v35)(v33, v34, v28);
  sub_22088ABDC();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v40(v33, v28);
  *a1 = v95;
  a1[1] = v96;
  a1[2] = v97;
  a1[3] = v98;
  a1[4] = v99;
  *(a1 + 5) = v86;
  *(a1 + 6) = v85;
  *(a1 + 7) = v84;
  *(a1 + 8) = v83;
  *(a1 + 9) = v78;
  *(a1 + 10) = v77;
  *(a1 + 11) = v76;
  *(a1 + 12) = v75;
  *(a1 + 13) = v74;
  *(a1 + 14) = v73;
  *(a1 + 15) = v72;
  *(a1 + 16) = v71;
  *(a1 + 17) = v82;
  *(a1 + 18) = v81;
  *(a1 + 19) = v80;
  result = v79;
  a1[20] = v79;
  *(a1 + 21) = v54;
  *(a1 + 22) = v56;
  *(a1 + 23) = v58;
  *(a1 + 24) = v60;
  *(a1 + 25) = v62;
  *(a1 + 26) = v64;
  *(a1 + 27) = v66;
  *(a1 + 28) = v68;
  return result;
}

uint64_t sub_2205A5AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v42 = type metadata accessor for StockFeedServiceContext() - 8;
  MEMORY[0x28223BE20](v42, v4);
  v44 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedContentConfig();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v9;
  v10 = sub_22088F87C();
  v38 = *(v10 - 8);
  v11 = v38;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220885ACC();
  v39 = *(v43 - 8);
  v15 = v39;
  v17 = MEMORY[0x28223BE20](v43, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v15 + 16);
  v37(v19, v3, v17);
  v20 = type metadata accessor for StockFeedServiceConfig();
  v21 = v20[5];
  v35 = *(v11 + 16);
  v36 = v14;
  v35(v14, v3 + v21, v10);
  sub_2205A60D8(v40, v9, type metadata accessor for StockFeedContentConfig);
  sub_2205A60D8(v3 + v20[7], v44, type metadata accessor for StockFeedServiceContext);
  v22 = *(v3 + v20[8]);
  v23 = v41;
  (v37)(v41, v19, v43);
  v35((v23 + v20[5]), v14, v10);
  v24 = v34;
  sub_2205A60D8(v34, v23 + v20[6], type metadata accessor for StockFeedContentConfig);
  v25 = v44;
  sub_2205A60D8(v44, v23 + v20[7], type metadata accessor for StockFeedServiceContext);
  *(v23 + v20[8]) = v22;
  v26 = v22;
  sub_220885A8C();
  v28 = v27;
  sub_2205A6140(v24, type metadata accessor for StockFeedContentConfig);
  (*(v38 + 8))(v36, v10);
  (*(v39 + 8))(v19, v43);
  *(v23 + v20[9]) = v28;
  v29 = *(v42 + 28);
  v30 = v20[10];
  v31 = sub_22088685C();
  (*(*(v31 - 8) + 16))(v23 + v30, v25 + v29, v31);
  return sub_2205A6140(v25, type metadata accessor for StockFeedServiceContext);
}

uint64_t sub_2205A5EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22088F87C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2205A5F5C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_2205A5FB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32E58];
  v3 = sub_22088FF3C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_2205A6084()
{
  result = qword_2812944C8;
  if (!qword_2812944C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812944C8);
  }

  return result;
}

uint64_t sub_2205A60D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205A6140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205A61B0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF00);
  __swift_project_value_buffer(v0, qword_27CF6CF00);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A6360()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF18);
  __swift_project_value_buffer(v0, qword_27CF6CF18);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A650C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF30);
  __swift_project_value_buffer(v0, qword_27CF6CF30);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A66B8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF48);
  __swift_project_value_buffer(v0, qword_27CF6CF48);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}