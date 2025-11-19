char *TTRIStaticTableViewDisclosureTextAccessoryProvider.init(label:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityObserver] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label] = a1;
  v4 = a1;
  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBFA16C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [v4 textColor];
  v11 = &v1[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text];
  *v11 = v7;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider();
  v12 = objc_msgSendSuper2(&v44, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  v16 = *MEMORY[0x277D764E0];
  memset(v43, 0, sizeof(v43));
  v17 = [objc_opt_self() mainQueue];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0DB414(v43, aBlock);
  v19 = v40;
  if (v40)
  {
    v20 = __swift_project_boxed_opaque_existential_1(aBlock, v40);
    v38[1] = v38;
    v21 = v14;
    v22 = v15;
    v23 = v17;
    v24 = v16;
    v25 = v4;
    v26 = *(v19 - 1);
    v27 = MEMORY[0x28223BE20](v20);
    v29 = v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);

    v30 = sub_21DBFC62C();
    (*(v26 + 8))(v29, v19);
    v4 = v25;
    v16 = v24;
    v17 = v23;
    v15 = v22;
    v14 = v21;
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {

    v30 = 0;
  }

  v41 = sub_21D36B434;
  v42 = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0EE46C;
  v40 = &block_descriptor_19;
  v31 = _Block_copy(aBlock);

  v32 = [v15 addObserverForName:v16 object:v30 queue:v17 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  sub_21DBF902C();
  swift_allocObject();

  v36 = sub_21DBF903C();

  swift_unknownObjectRelease();

  sub_21D0CF7E0(v43, &qword_27CE5C690);

  *&v14[OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityObserver] = v36;

  return v14;
}

void sub_21D36A538()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
    v3 = (Strong + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
    swift_beginAccess();
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[4];
    v10[0] = *v3;
    v10[1] = v4;
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v8 = v7;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v9 = sub_21D36AA04(v10);

    [v2 setAttributedText_];
  }
}

void sub_21D36A660()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v1 = sub_21DBFA12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
  v5 = v3;
  v6 = [v4 font];
  if (v6)
  {
    v7 = v6;

    *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
    *(inited + 40) = v7;
    sub_21D11274C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
    type metadata accessor for Key(0);
    sub_21D112874();
    v8 = sub_21DBF9E5C();

    [v1 sizeWithAttributes_];
  }

  else
  {
    __break(1u);
  }
}

id _s15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProviderC09containerE25DidLayoutArrangedSubviewsyySo012NUIContainerE0CF_0()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  result = swift_beginAccess();
  if (v1[3])
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
    result = [v3 numberOfLines];
    if (result)
    {
      v4 = v1[3];
      if (v4)
      {
        v5 = v1[2];
        sub_21DBF8E0C();
        [v3 bounds];
        v7 = v6;
        sub_21D36A660();
        v8.n128_u64[0] = 0x3E50000000000000;
        if ((sub_21D110D14(v9, v8, v7, v10) & 1) != 0 || (sub_21D36A660(), v11 < v7))
        {

          v5 = *v1;
          v4 = v1[1];
          sub_21DBF8E0C();
        }

        v12 = [v3 text];
        if (!v12)
        {
          goto LABEL_13;
        }

        v13 = v12;
        v14 = sub_21DBFA16C();
        v16 = v15;

        if (v5 == v14 && v4 == v16)
        {
        }

        else
        {
          v18 = sub_21DBFC64C();

          if ((v18 & 1) == 0)
          {
LABEL_13:
            v19 = sub_21DBFA12C();

            [v3 setText_];

            v20 = v0 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
            swift_beginAccess();
            result = swift_unknownObjectWeakLoadStrong();
            if (result)
            {
              v21 = *(v20 + 8);
              ObjectType = swift_getObjectType();
              (*(v21 + 8))(v0, ObjectType, v21);
              return swift_unknownObjectRelease();
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

id sub_21D36AA04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v4 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    *(inited + 64) = sub_21D0D8CF0(0, &qword_280D1B8F0);
    *(inited + 40) = v2;
    v5 = v2;
    v6 = v4;
    sub_21D11274C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
    v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v8 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21D112874();
    v9 = sub_21DBF9E5C();

    v10 = [v7 initWithString:v8 attributes:v9];

    if (!UIAccessibilityShouldDifferentiateWithoutColor())
    {
      return v10;
    }
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v12 = sub_21DBFA12C();
    v10 = [v11 initWithString_];

    if (!UIAccessibilityShouldDifferentiateWithoutColor())
    {
      return v10;
    }
  }

  v13 = v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon;
  swift_beginAccess();
  if (*(v13 + 8))
  {
    v14 = objc_opt_self();
    sub_21DBF8E0C();
    v15 = [v14 configurationWithScale_];
    v16 = sub_21DBFA12C();

    v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

    if (v17)
    {
      v18 = [v17 imageWithRenderingMode_];

      if (v18)
      {
        if (v2)
        {
          v19 = v2;
          v20 = [v18 imageWithTintColor_];
          v21 = [objc_opt_self() textAttachmentWithImage_];
        }

        else
        {
          v21 = [objc_opt_self() textAttachmentWithImage_];
        }

        sub_21D0D8CF0(0, &qword_27CE5FAF0);
        v22 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
        v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v24 = sub_21DBFA12C();
        v25 = [v23 initWithString_];

        [v22 appendAttributedString_];
        [v22 appendAttributedString_];

        v15 = v21;
        v10 = v22;
      }
    }
  }

  return v10;
}

id TTRIStaticTableViewDisclosureTextAccessoryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIStaticTableViewDisclosureTextAccessoryProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TTRIStaticTableViewDisclosureTextAccessoryProvider.allowsWrapping.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
  [v2 setNumberOfLines_];
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text;
  swift_beginAccess();
  if (*(v3 + 24) && [v2 numberOfLines])
  {
    v4 = 2 * ([v2 effectiveUserInterfaceLayoutDirection] != 1);
  }

  else
  {
    v4 = 4;
  }

  return [v2 setTextAlignment_];
}

void (*TTRIStaticTableViewDisclosureTextAccessoryProvider.allowsWrapping.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
  *(v4 + 56) = v5;
  *(v4 + 64) = [v5 numberOfLines] == 0;
  return sub_21D36B0A4;
}

void sub_21D36B0A4(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[6];
  [(*a1)[7] setNumberOfLines_];
  v3 = v2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text;
  swift_beginAccess();
  if (*(v3 + 24) && [v1[7] numberOfLines])
  {
    v4 = 2 * ([v1[7] effectiveUserInterfaceLayoutDirection] != 1);
  }

  else
  {
    v4 = 4;
  }

  [v1[7] setTextAlignment_];

  free(v1);
}

id (*sub_21D36B1C8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label) numberOfLines] == 0;
  return sub_21D36B22C;
}

CGSize __swiftcall TTRIStaticTableViewDisclosureTextAccessoryProvider.containerView(_:systemLayoutSizeFitting:forArrangedSubview:)(NUIContainerView *_, CGSize systemLayoutSizeFitting, UIView *forArrangedSubview)
{
  sub_21D36B444(forArrangedSubview);
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t _s15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProviderC0G0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v9 = v2 == v6 && v3 == v5;
    if (!v9 && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      v10 = v7;
      v11 = v4;
      v12 = sub_21DBFB63C();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

void sub_21D36B444(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
  if (v2 == a1 && (v3 = v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text, swift_beginAccess(), *(v3 + 24)) && [v2 numberOfLines])
  {
    sub_21D36A660();
  }

  else if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }
}

void destroy for TTRIStaticTableViewDisclosureTextAccessoryProvider.Text(uint64_t a1)
{

  v2 = *(a1 + 32);
}

void *initializeWithCopy for TTRIStaticTableViewDisclosureTextAccessoryProvider.Text(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  a1[4] = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRIStaticTableViewDisclosureTextAccessoryProvider.Text(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a1[4];
  v5 = a2[4];
  a1[4] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewDisclosureTextAccessoryProvider.Text(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for SectionsMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SectionsMetadata(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_21D36B94C(uint64_t a1)
{
  v3 = sub_21DBF8A0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    v10 = [v1 contentView];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();

    if (!v11)
    {
      sub_21DBF89CC();
      v12 = sub_21DBF87CC();
      v27[3] = v12;
      v27[4] = MEMORY[0x277D74BA8];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
      sub_21DBF89FC();
      v14 = *(v4 + 8);
      v14(v6, v3);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v15 = [v1 contentView];
      v16 = sub_21DBF89AC();
      sub_21DBF897C();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = 15;
      if ((v16 & 1) == 0)
      {
        v25 = 5;
      }

      if ((v16 & 2) != 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = (v16 << 63 >> 63) & 0xA;
      }

      [v15 setEdgesPreservingSuperviewLayoutMargins_];
      [v15 setDirectionalLayoutMargins_];

      v14(v9, v3);
    }
  }
}

uint64_t TTRIStaticTableViewBaseCell.MinHeightType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D36BCA8()
{
  sub_21DBFC7DC();
  TTRIStaticTableViewBaseCell.MinHeightType.hash(into:)();
  return sub_21DBFC82C();
}

id TTRIStaticTableViewBaseCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRIStaticTableViewBaseCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[qword_27CE5AF28] = 0;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v6 setLayoutMarginsRelativeArrangement_];
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = byte_280D17220;
  v8 = v6;
  v9 = v8;
  if (v7 == 1)
  {
    [v8 setPreservesSuperviewLayoutMargins_];
    [v9 setLayoutMargins_];
  }

  else
  {
    [v8 setEdgesPreservingSuperviewLayoutMargins_];
    [v9 setLayoutMargins_];
  }

  v10 = v9;
  [v10 setAutoresizingMask_];
  [v10 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  *&v3[qword_27CE5AF20] = v10;
  v11 = v10;
  if (a3)
  {
    v12 = sub_21DBFA12C();
  }

  else
  {
    v12 = 0;
  }

  v26.receiver = v3;
  v26.super_class = type metadata accessor for TTRIStaticTableViewBaseCell();
  v13 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, a1, v12);

  v14 = v13;
  [v10 setDelegate_];

  v15 = [v14 contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v10 setFrame_];
  v24 = [v14 contentView];

  [v24 addSubview_];
  return v14;
}

id sub_21D36C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIStaticTableViewBaseCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIStaticTableViewBaseCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIStaticTableViewBaseCell.__allocating_init(reuseIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  v1[qword_27CE5AF28] = 0;
  sub_21DBFC31C();
  __break(1u);
}

double sub_21D36C188(double a1, double a2)
{
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  Width = CGRectGetWidth(v20);
  if (Width >= a1)
  {
    Width = a1;
  }

  v15 = [*(v2 + qword_27CE5AF20) sizeThatFits_];
  v17 = v16;
  (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v19, v15);
  return v17;
}

double sub_21D36C2BC(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_21D36C188(a2, a3);

  return v6;
}

void sub_21D36C310()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TTRIStaticTableViewBaseCell();
  objc_msgSendSuper2(&v6, sel_didMoveToSuperview);
  v1 = v0;
  v2 = [v1 superview];

  if (v2)
  {
    while (1)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        break;
      }

      v4 = v2;
      v2 = [v4 superview];

      if (!v2)
      {
        return;
      }
    }

    v5 = [v3 style];

    *(v1 + qword_27CE5AF28) = v5 == 2;
  }
}

void sub_21D36C424(void *a1)
{
  v1 = a1;
  sub_21D36C310();
}

void sub_21D36C46C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF878C();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TTRIStaticTableViewBaseCell();
  objc_msgSendSuper2(&v5, sel__bridgedUpdateConfigurationUsingState_, v4);

  sub_21D36B94C(a1);
}

uint64_t sub_21D36C504(void *a1)
{
  v2 = sub_21DBF87CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF879C();
  v6 = a1;
  sub_21D36C46C(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_21D36C5EC(uint64_t a1)
{
  if (*(v1 + qword_27CE5AF20) == a1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x68))(&v2);
    UITableViewCell.setSeparatorInsetType(_:)(&v2);
    sub_21D22BF80(v2);
  }
}

void sub_21D36C664(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21D36C5EC(v4);
}

id TTRIStaticTableViewBaseCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIStaticTableViewBaseCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15RemindersUICore27TTRIStaticTableViewBaseCellC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_27CE5AF28) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore27TTRIStaticTableViewBaseCellC15reuseIdentifierACyxGSgSSSg_tcfc_0()
{
  *(v0 + qword_27CE5AF28) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D36C97C(unsigned int (*a1)(char *, uint64_t, uint64_t))
{
  v62 = a1;
  v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v53);
  v55 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - v5;
  MEMORY[0x28223BE20](v6);
  v52 = &v49 - v7;
  v63 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem(0);
  MEMORY[0x28223BE20](v63);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v50 = v1;
  TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)(v62, 0, &v49 - v26);
  v28 = v11;
  sub_21D0D3954(v27, v24, &unk_27CE5CD80);
  v30 = *(v11 + 48);
  v29 = v11 + 48;
  v62 = v30;
  v31 = v30(v24, 1, v10);
  v60 = 0uLL;
  if (v31 != 1)
  {
    v60 = 0uLL;
    v61 = (v28 + 56);
    v58 = v29;
    v59 = v21;
    do
    {
      sub_21D105694(v24, v18, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104EDC(v18, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload <= 8)
        {
LABEL_13:
          sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0CF7E0(v27, &unk_27CE5CD80);
          sub_21D1069D8(v15, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0CF7E0(v27, &unk_27CE5CD80);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_13;
      }

      sub_21D105694(v15, v9, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      swift_storeEnumTagMultiPayload();
      v34 = swift_getEnumCaseMultiPayload();
      if (!v34)
      {

        sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v27, &unk_27CE5CD80);
        v37 = v52;
        sub_21D105694(v9, v52, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v38 = (v37 + *(v54 + 20));
        v39 = v38[5];
        v69 = v38[4];
        v70 = v39;
        v71[0] = v38[6];
        *(v71 + 10) = *(v38 + 106);
        v40 = v38[3];
        v67 = v38[2];
        v68 = v40;
        v41 = v38[1];
        v65 = *v38;
        v66 = v41;
        sub_21D0D3954(&v65, &v72, &qword_27CE5B090);
        sub_21D1069D8(v37, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v76 = v69;
        v77 = v70;
        v78[0] = v71[0];
        *(v78 + 10) = *(v71 + 10);
        v72 = v65;
        v73 = v66;
        v74 = v67;
        v75 = v68;
        if (sub_21D1D9A6C(&v72) == 1)
        {
          v60 = 0uLL;
        }

        else
        {
          v60 = v72;
          sub_21DBF8E0C();
          sub_21D0CF7E0(&v65, &qword_27CE5B090);
        }

        goto LABEL_26;
      }

      if (v34 != 1)
      {
        sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v27, &unk_27CE5CD80);
LABEL_26:
        v21 = v59;
        goto LABEL_15;
      }

      v35 = v57;
      sub_21D105694(v9, v57, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D104EDC(v35, v55, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v36 = swift_getEnumCaseMultiPayload();
      v21 = v59;
      if (v36 > 4)
      {
        if (v36 <= 6)
        {
LABEL_30:

          sub_21D1069D8(v57, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          sub_21D0CF7E0(v27, &unk_27CE5CD80);
          sub_21D1069D8(v55, type metadata accessor for TTRRemindersListViewModel.SectionID);
          goto LABEL_31;
        }

        if (v36 != 7)
        {
          if (v36 == 8)
          {

            v42 = *(v50 + 24);
            v49 = *(v50 + 32);
            ObjectType = swift_getObjectType();
            *&v72 = v42;
            (*(*(v49 + 8) + 48))(v18, ObjectType);
            sub_21D1069D8(v57, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
            sub_21D0CF7E0(v27, &unk_27CE5CD80);
            goto LABEL_16;
          }

LABEL_29:

          sub_21D1069D8(v57, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          sub_21D0CF7E0(v27, &unk_27CE5CD80);

          goto LABEL_31;
        }
      }

      else
      {
        if (v36 > 1)
        {
          goto LABEL_30;
        }

        if (v36)
        {
          goto LABEL_29;
        }
      }

      sub_21D1069D8(v57, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D0CF7E0(v27, &unk_27CE5CD80);
LABEL_31:
      sub_21D105694(v18, v56, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D1069D8(v56, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_35:
        v60 = 0uLL;
        goto LABEL_15;
      }

      v44 = v51;
      sub_21D105694(v56, v51, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v45 = (v44 + *(v54 + 20));
      v46 = v45[5];
      v69 = v45[4];
      v70 = v46;
      v71[0] = v45[6];
      *(v71 + 10) = *(v45 + 106);
      v47 = v45[3];
      v67 = v45[2];
      v68 = v47;
      v48 = v45[1];
      v65 = *v45;
      v66 = v48;
      sub_21D0D3954(&v65, &v64, &qword_27CE5B090);
      sub_21D1069D8(v44, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v76 = v69;
      v77 = v70;
      v78[0] = v71[0];
      *(v78 + 10) = *(v71 + 10);
      v72 = v65;
      v73 = v66;
      v74 = v67;
      v75 = v68;
      if (sub_21D1D9A6C(&v72) == 1)
      {
        goto LABEL_35;
      }

      v60 = v72;
      sub_21DBF8E0C();
      sub_21D0CF7E0(&v65, &qword_27CE5B090);
LABEL_15:
      (*v61)(v21, 1, 1, v10);
LABEL_16:
      sub_21D36DFDC(v21, v27);
      sub_21D0D3954(v27, v24, &unk_27CE5CD80);
    }

    while (v62(v24, 1, v10) != 1);
  }

  sub_21D0CF7E0(v27, &unk_27CE5CD80);
  sub_21D0CF7E0(v24, &unk_27CE5CD80);
  return v60;
}

uint64_t TTRRemindersListTreeContentsQueryable.accessibilitySectionName(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v72 = a1;
  v62 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v62);
  v65 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v64);
  v58 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = v56 - v8;
  MEMORY[0x28223BE20](v9);
  v61 = v56 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem(0);
  MEMORY[0x28223BE20](v11);
  v73 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v56 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v22 - 8);
  v70 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v56 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v56 - v29;
  v31 = *(a3 + 112);
  v57 = v3;
  v59 = a3;
  v31(v72, 0, v63, a3, v28);
  sub_21D0D3954(v30, v26, &unk_27CE5CD80);
  v71 = *(v14 + 48);
  v72 = v14 + 48;
  v32 = v71(v26, 1, v13);
  v67 = 0uLL;
  if (v32 != 1)
  {
    v67 = 0uLL;
    v68 = v11;
    v69 = (v14 + 56);
    v56[1] = v59 + 8;
    v34 = &unk_21DC0CE80;
    while (1)
    {
      sub_21D105694(v26, v21, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104EDC(v21, v18, type metadata accessor for TTRRemindersListViewModel.Item);
      v37 = 1 << swift_getEnumCaseMultiPayload();
      if ((v37 & 0x1FC) != 0)
      {
        break;
      }

      if ((v37 & 3) == 0)
      {
        goto LABEL_5;
      }

      sub_21D105694(v18, v73, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      swift_storeEnumTagMultiPayload();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {

        sub_21D1069D8(v21, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v30, &unk_27CE5CD80);
        v41 = v61;
        sub_21D105694(v73, v61, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v42 = (v41 + *(v64 + 20));
        v43 = v42[5];
        v79 = v42[4];
        v80 = v43;
        v81[0] = v42[6];
        *(v81 + 10) = *(v42 + 106);
        v44 = v42[3];
        v77 = v42[2];
        v78 = v44;
        v45 = v42[1];
        v75 = *v42;
        v76 = v45;
        sub_21D0D3954(&v75, &v82, &qword_27CE5B090);
        sub_21D1069D8(v41, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v86 = v79;
        v87 = v80;
        v88[0] = v81[0];
        *(v88 + 10) = *(v81 + 10);
        v82 = v75;
        v83 = v76;
        v84 = v77;
        v85 = v78;
        if (sub_21D1D9A6C(&v82) == 1)
        {
          v67 = 0uLL;
LABEL_32:
          v36 = v70;
          (*v69)(v70, 1, 1, v13);
          v35 = &unk_21DC0CE80;
          goto LABEL_7;
        }

LABEL_31:
        v67 = v82;
        sub_21DBF8E0C();
        sub_21D0CF7E0(&v75, &qword_27CE5B090);
        goto LABEL_32;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_6;
      }

      v39 = v66;
      sub_21D105694(v73, v66, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D104EDC(v39, v65, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v40 = swift_getEnumCaseMultiPayload();
      if (v40 <= 4)
      {
        if (v40 <= 1)
        {
          if (v40)
          {
LABEL_26:
          }

          else
          {
LABEL_23:
          }
        }

        else
        {
LABEL_24:

          sub_21D1069D8(v65, type metadata accessor for TTRRemindersListViewModel.SectionID);
        }

        sub_21D1069D8(v66, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D0CF7E0(v30, &unk_27CE5CD80);
        v50 = v60;
        sub_21D105694(v21, v60, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_21D1069D8(v50, type metadata accessor for TTRRemindersListViewModel.Item);
          v67 = 0uLL;
          goto LABEL_32;
        }

        v51 = v58;
        sub_21D105694(v50, v58, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v52 = (v51 + *(v64 + 20));
        v53 = v52[5];
        v79 = v52[4];
        v80 = v53;
        v81[0] = v52[6];
        *(v81 + 10) = *(v52 + 106);
        v54 = v52[3];
        v77 = v52[2];
        v78 = v54;
        v55 = v52[1];
        v75 = *v52;
        v76 = v55;
        sub_21D0D3954(&v75, &v74, &qword_27CE5B090);
        sub_21D1069D8(v51, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v86 = v79;
        v87 = v80;
        v88[0] = v81[0];
        *(v88 + 10) = *(v81 + 10);
        v82 = v75;
        v83 = v76;
        v84 = v77;
        v85 = v78;
        if (sub_21D1D9A6C(&v82) == 1)
        {
          v67 = 0uLL;
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v40 <= 6)
      {
        goto LABEL_24;
      }

      if (v40 == 7)
      {
        goto LABEL_23;
      }

      if (v40 != 8)
      {
        goto LABEL_26;
      }

      v46 = (*(v59 + 8))(v63);
      v48 = v47;
      ObjectType = swift_getObjectType();
      *&v82 = v46;
      v35 = v34;
      v36 = v70;
      (*(*(v48 + 8) + 48))(v21, ObjectType);
      swift_unknownObjectRelease();
      sub_21D1069D8(v66, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D1069D8(v21, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v30, &unk_27CE5CD80);
LABEL_7:
      sub_21D36DFDC(v36, v30);
      sub_21D0D3954(v30, v26, &unk_27CE5CD80);
      v34 = v35;
      if (v71(v26, 1, v13) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_21D1069D8(v18, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
    swift_storeEnumTagMultiPayload();
LABEL_6:
    sub_21D1069D8(v21, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v30, &unk_27CE5CD80);
    v35 = v34;
    v36 = v70;
    (*v69)(v70, 1, 1, v13);
    goto LABEL_7;
  }

LABEL_2:
  sub_21D0CF7E0(v30, &unk_27CE5CD80);
  sub_21D0CF7E0(v26, &unk_27CE5CD80);
  return v67;
}

uint64_t TTRRemindersListTreeContentsQueryable.itemsToRefreshForViewModelRelatedSystemStateChanges.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  TTRTreeContentsQueryable.allItems.getter(ObjectType, *(v3 + 8));
  swift_unknownObjectRelease();
  v5 = sub_21DBFC12C();

  return v5;
}

BOOL sub_21D36DEB0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104EDC(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v6 = EnumCaseMultiPayload > 2 || EnumCaseMultiPayload >= 2;
  }

  else if (EnumCaseMultiPayload > 7)
  {
    v6 = 1;
    if ((EnumCaseMultiPayload - 9) < 2)
    {
      return v6;
    }
  }

  else
  {
    v6 = 1;
  }

  sub_21D1069D8(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  return v6;
}

uint64_t sub_21D36DFDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TTRIOptionMenuTitlelessPopupButton.defaultConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_21DBFB83C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB90C();
  (*(v4 + 104))(v6, *MEMORY[0x277D75000], v3);
  sub_21DBFB85C();
  sub_21DBFB82C();
  sub_21DBFB80C();
  sub_21DBF8D6C();
  v7 = sub_21DBF8D5C();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  return sub_21DBFB8CC();
}

uint64_t sub_21D36E364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF51AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize_];
  sub_21D1BB110();
  return sub_21DBF51CC();
}

id TTRIOptionMenuTitlelessPopupButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIOptionMenuTitlelessPopupButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D36E500();

  return v9;
}

uint64_t sub_21D36E500()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  v1 = sub_21DBF8D4C();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRIOptionMenuTitlelessPopupButton.setTitle(_:for:)(Swift::String_optional _, UIControlState a2)
{
  ObjectType = swift_getObjectType();
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  sub_21DBFB42C();
  v6 = sub_21DBFA12C();

  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setTitle_forState_, v6, 0);
}

id TTRIOptionMenuTitlelessPopupButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D36E8B0(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = sub_21DBFB42C() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = sub_21DBFB42C() & 1;

  if (v4 != v5)
  {
    v7 = [a1 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    sub_21DBFB42C();
    v9 = sub_21DBFA12C();

    v10.receiver = a1;
    v10.super_class = type metadata accessor for TTRIOptionMenuTitlelessPopupButton();
    objc_msgSendSuper2(&v10, sel_setTitle_forState_, v9, 0);
  }
}

uint64_t TTRParentAndChildIndexes.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBF5ABC();
  if (v7)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v9 = *(*(TupleTypeMetadata2 - 8) + 56);
    v10 = TupleTypeMetadata2;
    v11 = a2;
    v12 = 1;
  }

  else
  {
    v13 = v6;
    v14 = *(a1 + 16);
    v15 = swift_getTupleTypeMetadata2();
    v16 = *(v15 + 48);
    (*(*(v14 - 8) + 16))(a2, v3, v14);
    *(a2 + v16) = v13;
    v9 = *(*(v15 - 8) + 56);
    v11 = a2;
    v12 = 0;
    v10 = v15;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t static TTRParentAndChildIndexes.grouped<A>(_:byParentProperty:)(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a2;
  v5 = (*a2 + *MEMORY[0x277D84DE8]);
  v6 = *v5;
  v7 = type metadata accessor for TTRParentAndChildIndexes();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - v8;
  v64 = v5[1];
  v9 = *(v64 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v48 - v13;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v16;
  MEMORY[0x28223BE20](v17);
  v71 = &v48 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = sub_21DBFBA8C();
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v65 = &v48 - v23;
  v74 = v7;
  v24 = sub_21DBF9E2C();
  v72 = 0;
  v73 = 0;
  v25 = 0;
  v68 = TupleTypeMetadata2 - 8;
  v62 = (v20 + 32);
  v56 = v14 + 16;
  v57 = v14 + 32;
  v48 = (v9 + 16);
  v52 = (v9 + 8);
  v60 = v14;
  v51 = (v14 + 8);
  v67 = a3;
  v54 = a1;
  v53 = TupleTypeMetadata2;
  while (1)
  {
    if (v25 == sub_21DBFA6DC())
    {
      v26 = *(TupleTypeMetadata2 - 8);
      v27 = v66;
      (*(v26 + 56))(v66, 1, 1, TupleTypeMetadata2);
      v28 = v65;
    }

    else
    {
      v29 = sub_21DBFA6AC();
      sub_21DBFA61C();
      v28 = v65;
      v27 = v66;
      if (v29)
      {
        v30 = *(TupleTypeMetadata2 - 8);
        (*(v30 + 16))(v66, a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, TupleTypeMetadata2);
        v31 = __OFADD__(v25++, 1);
        if (v31)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v45 = sub_21DBFBF7C();
        v30 = *(TupleTypeMetadata2 - 8);
        if (*(v30 + 64) != 8)
        {
          goto LABEL_20;
        }

        v76 = v45;
        (*(v30 + 16))(v27, &v76, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v31 = __OFADD__(v25++, 1);
        if (v31)
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v76 = v24;
          sub_21DBF9F1C();
          sub_21DBF8E0C();
          swift_getWitnessTable();
          v46 = sub_21DBFA76C();

          sub_21D0D0E88(v73);
          return v46;
        }
      }

      v26 = v30;
      (*(v30 + 56))(v27, 0, 1, TupleTypeMetadata2);
    }

    (*v62)(v28, v27, v63);
    if ((*(v26 + 48))(v28, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_18;
    }

    v69 = *&v28[*(TupleTypeMetadata2 + 48)];
    v70 = v25;
    v32 = v60;
    v33 = *(v60 + 32);
    v34 = v71;
    v33(v71, v28, v6);
    v35 = v6;
    v36 = v75;
    swift_getAtKeyPath();
    v37 = v58;
    (*(v32 + 16))(v58, v34, v35);
    v38 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v39 = swift_allocObject();
    v40 = v64;
    v39[2] = v35;
    v39[3] = v40;
    v39[4] = a3;
    v33(v39 + v38, v37, v35);
    sub_21D0D0E88(v73);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = v24;
    sub_21D36FA9C(v36, v40, a3);
    if (__OFADD__(*(v24 + 16), (v41 & 1) == 0))
    {
      break;
    }

    v42 = v41;
    sub_21DBFC1FC();
    v43 = sub_21DBFC1CC();
    v24 = v76;
    if (v43)
    {
      sub_21D36FA9C(v75, v40, a3);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_21;
      }
    }

    if ((v42 & 1) == 0)
    {
      sub_21D36F714(v39 + ((*(*(v39[2] - 8) + 80) + 40) & ~*(*(v39[2] - 8) + 80)), v39[2], v50);
      (*v48)(v49, v75, v40);
      sub_21DBFC1DC();
    }

    sub_21DBF5AFC();
    (*v52)(v75, v40);
    v6 = v35;
    (*v51)(v71, v35);
    v72 = v39;
    v73 = sub_21D36FC80;
    a3 = v67;
    a1 = v54;
    TupleTypeMetadata2 = v53;
    v25 = v70;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t TTRParentAndChildIndexes.childIndexes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DBF5B9C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TTRParentAndChildIndexes.childIndexes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_21DBF5B9C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21D36F5B8()
{
  sub_21DBF5B9C();
  sub_21D346DCC(&qword_280D1B818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
  sub_21D37081C();
  return sub_21DBFBCBC();
}

uint64_t TTRParentAndChildIndexes.init(parent:childIndexes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for TTRParentAndChildIndexes() + 28);
  v7 = sub_21DBF5B9C();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_21D36F714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF5B9C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1, a2, v10);
  sub_21D36F5B8();
  return TTRParentAndChildIndexes.init(parent:childIndexes:)(v12, v8, a2, a3);
}

uint64_t TTRParentAndChildIndexes.compactMap<A>(transform:)()
{
  sub_21DBF5B9C();
  sub_21D346DCC(&qword_280D1B830);
  return sub_21DBFA4EC();
}

uint64_t static TTRParentAndChildIndexes<A>.== infix(_:_:)()
{
  if (sub_21DBFA10C())
  {
    type metadata accessor for TTRParentAndChildIndexes();

    JUMPOUT(0x223D3E250);
  }

  return 0;
}

uint64_t TTRParentAndChildIndexes<A>.hash(into:)()
{
  sub_21DBFA00C();
  sub_21DBF5B9C();
  sub_21D346DCC(&qword_27CE5B098);
  return sub_21DBFA00C();
}

uint64_t TTRParentAndChildIndexes<A>.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRParentAndChildIndexes<A>.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D36FA48()
{
  sub_21DBFC7DC();
  TTRParentAndChildIndexes<A>.hash(into:)();
  return sub_21DBFC82C();
}

unint64_t sub_21D36FA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF9FFC();

  return sub_21D36FAF8(a1, v6, a2, a3);
}

unint64_t sub_21D36FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
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
      v20 = sub_21DBFA10C();
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

uint64_t sub_21D36FD40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF5B9C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D36FE0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_21DBF5B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (*(v6 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || (v11 & ~v10) + *(*(v8 - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = v8;
    v17 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    (*(v9 + 16))((a1 + v11) & v17, (a2 + v11) & v17, v16);
  }

  return a1;
}

uint64_t sub_21D36FF78(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = sub_21DBF5B9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8, v5);
}

uint64_t sub_21D370018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = sub_21DBF5B9C();
  v8 = *(v7 - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t sub_21D3700C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = sub_21DBF5B9C();
  v8 = *(v7 - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t sub_21D370170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = sub_21DBF5B9C();
  v8 = *(v7 - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t sub_21D37021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = sub_21DBF5B9C();
  v8 = *(v7 - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t sub_21D3702C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21DBF5B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_21D37052C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_21DBF5B9C() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

unint64_t sub_21D37081C()
{
  result = qword_280D178C8;
  if (!qword_280D178C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE67A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178C8);
  }

  return result;
}

RemindersUICore::TTRIRemindersListCellInfoButtonStates __swiftcall TTRIRemindersListCellInfoButtonStates.init(defaultState:stateOverrides:)(RemindersUICore::TTRIRemindersListCellInfoButtonState defaultState, Swift::OpaquePointer stateOverrides)
{
  *v2 = *defaultState;
  *(v2 + 8) = stateOverrides;
  result.stateOverrides = stateOverrides;
  result.defaultState = defaultState;
  return result;
}

uint64_t TTRIRemindersListCellInfoButtonState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void TTRIRemindersListCellInfoButtonStates.state(for:)(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (*(v4 + 16))
  {
    v5 = sub_21D181E00();
    if (v6)
    {
      v3 = *(*(v4 + 56) + v5);
    }
  }

  *a1 = v3;
}

uint64_t static TTRIRemindersListCellInfoButtonStates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_21D370F84(*(a1 + 1), *(a2 + 1), &qword_27CE5B0C8, &unk_21DC11F88, &qword_27CE5B0D0, &unk_21DC11F90);
  return v3 & 1;
}

void sub_21D3709DC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v20 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 48) + 8 * v12);
      v14 = *(*(a1 + 56) + v12);
      v15 = v13;
      if (v13)
      {
        v16 = v15;
        v17 = sub_21D17E07C(v15);
        v19 = v18;

        if ((v19 & 1) != 0 && v14 == *(*(a2 + 56) + v17))
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(v20 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_21D370B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B0A8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v43 = a1;
    v44 = v11;
    v13 = 0;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v20 = (v17 + 63) >> 6;
    v48 = &v42 - v10;
    while (v19)
    {
      v49 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v13 << 6);
      v22 = v44;
LABEL_18:
      v27 = v43;
      v28 = v45;
      sub_21D371AB0(*(v43 + 48) + *(v46 + 72) * v21, v45);
      LOBYTE(v27) = *(*(v27 + 56) + v21);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B0B0);
      v30 = *(v29 + 48);
      sub_21D241B94(v28, v22);
      *(v22 + v30) = v27;
      (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
      v12 = v48;
LABEL_19:
      sub_21D0D523C(v22, v12, &qword_27CE5B0A8);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B0B0);
      if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
      {
        return;
      }

      v32 = *(v31 + 48);
      v33 = v47;
      sub_21D241B94(v12, v47);
      v34 = v12[v32];
      v36 = sub_21D181E00(v33, v35);
      v38 = v37;
      sub_21D371B14(v33);
      if ((v38 & 1) == 0)
      {
        return;
      }

      v39 = *(*(a2 + 56) + v36);
      if (v39 == 4)
      {
        v40 = v34 == 4;
        v12 = v48;
        v19 = v49;
        if (!v40)
        {
          return;
        }
      }

      else
      {
        v19 = v49;
        if (v39 == 3)
        {
          v40 = v34 == 3;
        }

        else
        {
          v40 = (v34 - 5) <= 0xFFFFFFFD && v39 == v34;
        }

        v12 = v48;
        if (!v40)
        {
          return;
        }
      }
    }

    if (v20 <= v13 + 1)
    {
      v23 = v13 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    v22 = v44;
    while (1)
    {
      v25 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B0B0);
        (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
        v49 = 0;
        v13 = v24;
        goto LABEL_19;
      }

      v26 = *(v15 + 8 * v25);
      ++v13;
      if (v26)
      {
        v49 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v13 = v25;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void sub_21D370F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v57 - v15;
  v64 = a3;
  v65 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  if (a1 == a2)
  {
    v66 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v63 = &v57 - v20;
    v21 = 0;
    v59 = a1;
    v24 = *(a1 + 64);
    v23 = a1 + 64;
    v22 = v24;
    v25 = 1 << *(v23 - 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v22;
    v57 = (v25 + 63) >> 6;
    v58 = v23;
    while (v27)
    {
      v28 = __clz(__rbit64(v27));
      v29 = (v27 - 1) & v27;
      v30 = v28 | (v21 << 6);
LABEL_16:
      v36 = v59;
      v37 = v60;
      sub_21D371AB0(*(v59 + 48) + *(v61 + 72) * v30, v60);
      v38 = *(*(v36 + 56) + v30);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v40 = *(v39 + 48);
      sub_21D241B94(v37, v18);
      v18[v40] = v38;
      (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
      v33 = v63;
LABEL_17:
      sub_21D0D523C(v18, v33, v64);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v42 = (*(*(v41 - 8) + 48))(v33, 1, v41);
      v66 = v42 == 1;
      if (v42 != 1)
      {
        v43 = v29;
        v44 = v18;
        v45 = a5;
        v46 = a6;
        v47 = *(v41 + 48);
        v48 = v33;
        v49 = v33;
        v50 = v62;
        sub_21D241B94(v48, v62);
        v51 = *(v49 + v47);
        v53 = sub_21D181E00(v50, v52);
        LOBYTE(v47) = v54;
        sub_21D371B14(v50);
        if (v47)
        {
          v55 = v51 == *(*(a2 + 56) + v53);
          a6 = v46;
          a5 = v45;
          v18 = v44;
          v27 = v43;
          if (v55)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v57 <= v21 + 1)
    {
      v31 = v21 + 1;
    }

    else
    {
      v31 = v57;
    }

    v32 = v31 - 1;
    v33 = v63;
    while (1)
    {
      v34 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v34 >= v57)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
        (*(*(v56 - 8) + 56))(v18, 1, 1, v56);
        v29 = 0;
        v21 = v32;
        goto LABEL_17;
      }

      v35 = *(v58 + 8 * v34);
      ++v21;
      if (v35)
      {
        v29 = (v35 - 1) & v35;
        v30 = __clz(__rbit64(v35)) | (v34 << 6);
        v21 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v66 = 0;
  }
}

void sub_21D37135C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = *(*(a1 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_21D10FE34(v14);
      v18 = v17;

      if ((v18 & 1) == 0)
      {

        return;
      }

      sub_21D1B2ABC();
      v19 = *(*(a2 + 56) + 8 * v16);
      v20 = sub_21DBFB63C();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D3714C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  i = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (i)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      for (i = (v12 - 1) & v12; ; i &= i - 1)
      {
        v13 = v10 | (v4 << 6);
        v14 = *(*(v3 + 56) + v13);
        v15 = v14 == 4;
        if (v14 == 4)
        {
          return v15;
        }

        v16 = sub_21D10186C(*(*(v3 + 48) + v13));
        if ((v17 & 1) == 0)
        {
          return v15;
        }

        v18 = *(*(a2 + 56) + v16);
        if (v18 <= 1)
        {
          break;
        }

        v20 = 0xE600000000000000;
        if (v18 == 2)
        {
          v19 = 0x6E6564646968;
LABEL_23:
          if (v14 > 1)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        v19 = 0x6D6F74737563;
        if (v14 > 1)
        {
LABEL_28:
          v22 = 0xE600000000000000;
          if (v14 != 2)
          {
            if (v19 != 0x6D6F74737563)
            {
              goto LABEL_7;
            }

            goto LABEL_31;
          }

          v21 = 0x6E6564646968;
          goto LABEL_30;
        }

LABEL_24:
        v21 = 0x656E696665646E75;
        v22 = 0xE900000000000064;
        if (v14)
        {
          v22 = 0xE700000000000000;
          if (v19 != 0x656C6269736976)
          {
            goto LABEL_7;
          }

          goto LABEL_31;
        }

LABEL_30:
        if (v19 != v21)
        {
          goto LABEL_7;
        }

LABEL_31:
        if (v20 == v22)
        {

          if (!i)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_7:
        v9 = sub_21DBFC64C();

        if ((v9 & 1) == 0)
        {
          return v15;
        }

        if (!i)
        {
          goto LABEL_10;
        }

LABEL_9:
        v10 = __clz(__rbit64(i));
      }

      v19 = 0x656E696665646E75;
      v20 = 0xE900000000000064;
      if (v18)
      {
        v20 = 0xE700000000000000;
        v19 = 0x656C6269736976;
        if (v14 > 1)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void sub_21D371718(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 64;
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
        v10 = __clz(__rbit64(v8));
        v33 = (v8 - 1) & v8;
LABEL_14:
        v13 = v10 | (v4 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        v15 = *(v3 + 56) + 24 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = v14;
        v20 = v16;
        sub_21DBF8E0C();
        if (!v14)
        {
          return;
        }

        v21 = sub_21D17E07C(v19);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          v28 = v20;
LABEL_27:

          return;
        }

        v24 = *(v2 + 56) + 24 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        sub_21D1B2ABC();
        v28 = v25;
        sub_21DBF8E0C();
        if ((sub_21DBFB63C() & 1) == 0)
        {

          goto LABEL_27;
        }

        if (v26 == v17 && v18 == v27)
        {

          v3 = a1;
          v2 = a2;
          v8 = v33;
        }

        else
        {
          v30 = sub_21DBFC64C();

          v3 = a1;
          v2 = a2;
          v8 = v33;
          if ((v30 & 1) == 0)
          {
            return;
          }
        }
      }

      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v33 = (v12 - 1) & v12;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_21D371958(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_21D370F84(*(a1 + 1), *(a2 + 1), &qword_27CE5B0C8, &unk_21DC11F88, &qword_27CE5B0D0, &unk_21DC11F90);
  return v3 & 1;
}

unint64_t sub_21D3719BC()
{
  result = qword_27CE5B0A0;
  if (!qword_27CE5B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B0A0);
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersBoardCellInfoButtonStates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRRemindersBoardCellInfoButtonStates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_21D371AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D371B14(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21D371CC8()
{
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize + 16] & 1) == 0)
  {
    return *v1;
  }

  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_bounds);
  [*&v0[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_toolbar] systemLayoutSizeFittingSize_];
  *v1 = result;
  v1[1] = v3 + 8.0;
  *(v1 + 16) = 0;
  return result;
}

char *sub_21D37201C(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = &v6[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v6[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_toolbar] = a1;
  v14 = objc_allocWithZone(MEMORY[0x277D76218]);
  v15 = a1;
  v16 = [v14 initWithScrollView:0 edge:4];
  *&v6[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_scrollPocket] = v16;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a2, a3, a4, a5);
  [v17 setAutoresizingMask_];
  [v17 setEdgesPreservingSuperviewLayoutMargins_];
  [v17 setDirectionalLayoutMargins_];
  v18 = v15;
  [v18 setEdgesPreservingSuperviewLayoutMargins_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21DC0AA10;
  v21 = [v17 layoutMarginsGuide];
  v22 = [v21 topAnchor];

  v23 = [v18 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v20 + 32) = v24;
  v25 = [v17 leadingAnchor];
  v26 = [v18 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v20 + 40) = v27;
  v28 = [v17 layoutMarginsGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v18 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v20 + 48) = v31;
  v32 = [v17 trailingAnchor];

  v33 = [v18 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v20 + 56) = v34;
  sub_21D3677A0();
  v35 = sub_21DBFA5DC();

  [v19 activateConstraints_];

  [v17 addInteraction_];
  return v17;
}

uint64_t static TTRLocalizableStrings.Common.dueDateAndRecurrenceFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SuggestGroceries.defaultGroceriesListName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.standard.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.groceries.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.smartList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addAttachments.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.hashtagsChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.reminderNotesChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersBoard.hideSubtasksText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersBoard.showSubtasksText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersList.subtaskCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t sub_21D372F2C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B0F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B0F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TTRLocalizableStrings.Common.dueDateWithTimeZoneFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.dueDateWithTimeZoneComparisonFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.dueDateWithTimeZoneComparisonPlusOneFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.dueDateWithTimeZoneComparisonMinusOneFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.symbolRecurrenceFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.symbolLocationFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.dueDateWithTimeZoneAndRecurrenceFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.symbolUrgentFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.alertOKButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.alertDeleteButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.alertCancelButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.turnOffButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.continueButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.saveButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.createButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.deleteButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.renameButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.editButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.doneButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.updateButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.settingsButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.completeButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.learnMoreButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.notNowButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.resetButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.recoverButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D374358()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.cutButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.copyButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.pasteButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.dotSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.deleteReminderWithSubtasksConfirmationTitle(isDeletingMoreThanOneReminder:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.deleteRecurringReminderAllFutureInstancesButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.updateRecurringReminderConfirmationTitle(isUpdatingMoreThanOneReminder:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.updateRecurringReminderThisInstanceButton(isUpdatingMoreThanOneReminder:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.updateRecurringReminderAllFutureInstancesButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.resetGrocerySectionRulesMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.resetGrocerySectionRulesDescription.getter()
{
  v0 = sub_21DBF604C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D44D98], v0, v2);
  v5 = sub_21DBF603C();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.resetCategorizationSectionRulesMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.resetCategorizationSectionRulesDescription.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Alerts.recoverRecentlyDeletedReminderAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.noReminders.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.noItemsInGroceryList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.allRemindersCompleted.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.allCompleted.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.allItemsCompletedInGroceryList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.itemsInGroceryListDescription(listLayout:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.showCompletedRemindersButtonText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.hideCompletedRemindersButtonText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.completedCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersList.itemsCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.autoCategorizationModelsDownloadMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.autoCategorizationFailureMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.reminderCellDescriptionComponentSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.markAsCompletedText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.markAsIncompleteText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.priorityLevelPickerNoneText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.priorityLevelPickerLowText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.priorityLevelPickerMediumText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.priorityLevelPickerHighText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.sectionPickerSectionLessTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.selectedHashtagCountText(count:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.ReminderDetail.notesFieldCharacterLimitReachedTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.notesFieldCharacterLimitReachedBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.earlyAlertPassedTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.earlyAlertPassedMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.earlyAlertPassedDetailsMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.endRepeatNeverMenuItemTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.endRepeatDateMenuItemTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.alarmProximityPickerNoneText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.alarmProximityPickerArriveText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.alarmProximityPickerLeaveText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.vehicleAlarmInText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.vehicleAlarmOutText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Assignments.me.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TimeZone.other.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TimeZone.cityAndCountryFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TimeZone.timeZoneFullNameAndAbbreviation.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TimeZone.plusOneDay.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TimeZone.minusOneDay.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.taggedListNameForAllTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.taggedListNameForUntagged.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.taggedListName(forSelectedLabelCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.anyIncludedFiltersOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.allIncludedFiltersOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.anyIncludedFiltersOptionShort.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.allIncludedFiltersOptionShort.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionAllTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionUntagged.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForOneTagFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForTwoTagsFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.genericHashtagSelectionWithMenuDescription(forLabelCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionForTwoIncludedTagsFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionForTwoExcludedTagsFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionForOneIncludedAndOneExcludedTagFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.genericHashtagSelectionDescription(forIncludedLabelCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.genericHashtagSelectionDescription(forExcludedLabelCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.genericHashtagSelectionDescription(forIncludedExcludedLabelCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.listNameForAllTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ConvertToCustomSmartListAlert.failureTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ConvertToCustomSmartListAlert.defaultListFailureDetails.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ConvertToCustomSmartListAlert.defaultListInDifferentAccount.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ConvertToCustomSmartListAlert.sharedListFailureDetails.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ConvertToCustomSmartListAlert.makeConfirmButtonString.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D37857C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.CompletedList.pastSevenDays.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.CompletedList.pastThirtyDays.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.CompletedList.completed(dateString:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.DateBucketHeaders.restOfMonth(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA17C();

  return v5;
}

uint64_t static TTRLocalizableStrings.DateBucketHeaders.restOfYear(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA17C();

  return v5;
}

uint64_t static TTRLocalizableStrings.TodayList.nearbySectionName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TodayList.groupByTime.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AppIntents.Default.listName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AppIntents.Default.reminderTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AppIntents.Default.sectionName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.disclaimerString.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.permanentlyDeleteReminderConfirmationMessage(withCount:discardRemindersCountIfNeeded:)(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 && a1 == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_21DC08D00;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    v7 = sub_21DBFA13C();

    return v7;
  }
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.permanentlyDeletedReminderWithSubtasksConfirmationAlertMessage(isDeletingMoreThanOneReminder:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertMessage(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.SuggestGroceries.cellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SuggestGroceries.cellSubtitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.deleteReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.recoverReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.editReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.renameReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.renameList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.updateFilter.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.completionChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.priorityChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.assigneeChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.hashtagChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.customSmartListFilterChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.flaggedChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.dueDateChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.dueDateTimeChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.markOverdueToToday.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.notesChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.locationChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.locationRadiusChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.locationProximityChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addImage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.urlChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.removeEndRepeat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.endRepeatOccuencesCount.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.updateEndRepeatToDefaultDate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.updateEndRepeatDate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.recurrenceRuleChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.earlyAlertChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.removeAttachments.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addSiriSuggestedReminder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.renameGroup.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.reminderTitleChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.personChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.moveReminders.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.moveReminders(count:)(uint64_t a1)
{
  if (a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.toggleFilter.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeListType.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.dropOnCustomSmartList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.pinList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.unpinList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.renameTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addSectionWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.deleteSection.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeSection.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.editSections.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.moveSection.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.applySuggestion.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.urgentAlertChange.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.listPickerControlTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D37C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D20;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21D17A884();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v11 = sub_21DBFA17C();

  return v11;
}

uint64_t sub_21D37C480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D20;
  *(v6 + 56) = MEMORY[0x277D837D0];
  v7 = sub_21D17A884();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 96) = MEMORY[0x277D83B88];
  *(v6 + 104) = v8;
  *(v6 + 64) = v7;
  *(v6 + 72) = a3;
  sub_21DBF8E0C();
  v9 = sub_21DBFA13C();

  return v9;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(uint64_t a1)
{
  sub_21D0FACE0(a1, v9);
  v1 = v10;
  if (!v10)
  {
    v6 = &qword_27CE59DC0;
    v7 = v9;
LABEL_8:
    sub_21D0CF7E0(v7, v6);
    goto LABEL_9;
  }

  v2 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v2 + 112))(v12, v1, v2);
  v3 = v13;
  if (!v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
    v6 = &unk_27CE5A6E8;
    v7 = v12;
    goto LABEL_8;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v5)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_11;
  }

LABEL_9:
  if (qword_280D1BAA8 != -1)
  {
LABEL_11:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_16:
      sub_21DBF516C();
      goto LABEL_17;
    }

LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  switch(a2)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 3:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 4:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
  }

LABEL_18:
  if (qword_27CE56638 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B0F0);
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAECC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Unknown REMDueDateDeltaUnit value: %ld", v12, 0xCu);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO19earlyAlertCountText5count12intervalUnitSSSi_So015REMDueDateDeltaM0VtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_15:
        sub_21DBF516C();
        goto LABEL_16;
      }

LABEL_22:
      swift_once();
      goto LABEL_15;
    }

    if (a2 != 1)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  switch(a2)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    case 3:
      goto LABEL_12;
    case 4:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
  }

LABEL_17:
  if (qword_27CE56638 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B0F0);
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAECC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Unknown REMDueDateDeltaUnit value: %ld", v12, 0xCu);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO16intervalUnitText5count0gH0SSSi_So015REMDueDateDeltaH0VtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_15:
        sub_21DBF516C();
        goto LABEL_16;
      }

LABEL_22:
      swift_once();
      goto LABEL_15;
    }

    if (a2 != 1)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  switch(a2)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    case 3:
      goto LABEL_12;
    case 4:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
  }

LABEL_17:
  if (qword_27CE56638 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B0F0);
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAECC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Unknown REMDueDateDelta value: %ld", v12, 0xCu);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO22intervalUnitBeforeText5count0gH0SSSi_So015REMDueDateDeltaH0VtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_16:
      sub_21DBF516C();
      goto LABEL_17;
    }

LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  switch(a2)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 3:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 4:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
  }

LABEL_18:
  if (qword_27CE56638 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B0F0);
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAECC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a2;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Unknown REMDueDateDelta value: %ld", v12, 0xCu);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0(uint64_t result)
{
  if (result)
  {
    if (result == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

LABEL_14:
      swift_once();
      return sub_21DBF516C();
    }

    if (result == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_14;
    }

    if (qword_27CE56638 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE5B0F0);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "unknown event", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO6AlertsO31deleteReminderConfirmationTitle021isDeletingMoreThanOneG0SSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO6AlertsO45deleteReminderWithSubtasksConfirmationMessage021isDeletingMoreThanOneG008includesah9CompletedI0SSSb_SbtFZ_0(char a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO6AlertsO40deleteRecurringReminderConfirmationTitle021isDeletingMoreThanOneH0SSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO6AlertsO41deleteRecurringReminderThisInstanceButton021isDeletingMoreThanOneH0SSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A4ListO07outdentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 > 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_14:
    swift_once();
    return sub_21DBF516C();
  }

  if (a1 > 1)
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_7:
      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v3 = swift_allocObject();
      v4 = MEMORY[0x277D83B88];
      *(v3 + 16) = xmmword_21DC08D00;
      v5 = MEMORY[0x277D83C10];
      *(v3 + 56) = v4;
      *(v3 + 64) = v5;
      *(v3 + 32) = a1;
      v6 = sub_21DBFA13C();

      return v6;
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_14;
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A4ListO06indentA4Text9withCount14isForGroceriesSSSi_SbtFZ_0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 > 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_14:
    swift_once();
    return sub_21DBF516C();
  }

  if (a1 > 1)
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_7:
      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v3 = swift_allocObject();
      v4 = MEMORY[0x277D83B88];
      *(v3 + 16) = xmmword_21DC08D00;
      v5 = MEMORY[0x277D83C10];
      *(v3 + 56) = v4;
      *(v3 + 64) = v5;
      *(v3 + 32) = a1;
      v6 = sub_21DBFA13C();

      return v6;
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_14;
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO29ConvertToCustomSmartListAlertO9makeTitle11willFlattenSSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D37E8FC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a3)
  {
    if (a4)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a4)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  v5 = sub_21DBFA26C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_21DBFA17C();

  return v8;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO29ConvertToCustomSmartListAlertO06legacyI14FailureDetailsSSvgZ_0()
{
  if (sub_21DBF602C())
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO5month_4yearS2S_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D20;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21D17A884();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v11 = sub_21DBFA17C();

  return v11;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO11restOfMonth_4yearS2S_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D20;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21D17A884();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v11 = sub_21DBFA17C();

  return v11;
}

id sub_21D37F374(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_21D37F480(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_21D37F534()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B108);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B108);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIReminderDetailDueDateModifiedComponents.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateTitle:)(NSAttributedString updateTitle)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  isa = updateTitle.super.isa;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](updateTitle.super.isa);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0xEA00000000004449;
  (*(v5 + 16))(v6, v5);
  v25 = v5;
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 16))(ObjectType, v12);
  swift_unknownObjectRelease();
  v15 = [v14 objectID];

  *(inited + 72) = sub_21D37FB1C();
  *(inited + 48) = v15;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v16 = objc_opt_self();
  v17 = sub_21DBFA12C();

  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v6);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v6;
  *(v19 + 24) = v20;
  (*(v7 + 32))(v19 + v18, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v21 = isa;
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = isa;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21D385AAC;
  *(v22 + 24) = v19;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_20;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  [v16 withActionName:v17 block:v23];

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }
}

unint64_t sub_21D37FB1C()
{
  result = qword_280D17880;
  if (!qword_280D17880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17880);
  }

  return result;
}

uint64_t sub_21D37FB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 112))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateCompleted:)(Swift::Bool updateCompleted)
{
  v2 = v1;
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](updateCompleted);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  v8 = inited + 32;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = MEMORY[0x277D839B0];
  v9 = updateCompleted;
  *(inited + 48) = updateCompleted;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v8, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v10 = objc_opt_self();
  v11 = sub_21DBFA12C();

  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17[0], v2);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = v17[1];
  *(v13 + 16) = v2;
  *(v13 + 24) = v14;
  (*(v4 + 32))(v13 + v12, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v13 + v12 + v5) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21D385AC4;
  *(v15 + 24) = v13;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_13_0;
  v16 = _Block_copy(aBlock);

  [v10 withActionName:v11 block:v16];

  _Block_release(v16);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

uint64_t sub_21D37FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 120))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t TTRReminderDetailPresenterCapability.request(updatePriorityLevel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock[0] = a1;
  type metadata accessor for REMReminderPriorityLevel(0);
  v11 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v13 = objc_opt_self();
  v14 = sub_21DBFA12C();

  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v7 + 32))(v16 + v15, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21D385ADC;
  *(v18 + 24) = v16;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_23_0;
  v19 = _Block_copy(aBlock);

  [v13 withActionName:v14 block:v19];

  _Block_release(v19);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D380490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 128))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t TTRReminderDetailPresenterCapability.request(updateParentList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock = v9;
  LOBYTE(v30) = v10;
  v27 = v9;
  v13 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  sub_21D17716C(inited);
  v26 = v10;
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v15 = objc_opt_self();
  v16 = sub_21DBFA12C();

  (*(v6 + 16))(&v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, a2);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  (*(v6 + 32))(v18 + v17, &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  v20 = v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v9;
  *(v20 + 8) = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21D385AF4;
  *(v21 + 24) = v18;
  v33 = sub_21D0E622C;
  v34 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_21D0E6204;
  v32 = &block_descriptor_33;
  v22 = _Block_copy(&aBlock);
  v23 = v27;

  [v15 withActionName:v16 block:v22];

  _Block_release(v22);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D380954(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(a4, a5);
  v8 = v7;
  ObjectType = swift_getObjectType();
  v11 = a2;
  v12 = a3 & 1;
  (*(v8 + 104))(&v11, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t TTRReminderDetailPresenterCapability.request(updateAssignee:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v8[5];
  v35 = v8[4];
  v36 = v9;
  v37 = v8[6];
  v10 = v8[1];
  v31 = *v8;
  v32 = v10;
  v11 = v8[3];
  v33 = v8[2];
  v34 = v11;
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v30[4] = v35;
  v30[5] = v36;
  v30[6] = v37;
  v30[0] = v31;
  v30[1] = v32;
  v30[2] = v33;
  v30[3] = v34;
  sub_21D1D9A84(&v31, v29);
  v14 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v16 = objc_opt_self();
  v17 = sub_21DBFA12C();

  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v18 = (*(v6 + 80) + 144) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  v21 = v36;
  *(v19 + 96) = v35;
  *(v19 + 112) = v21;
  *(v19 + 128) = v37;
  v22 = v32;
  *(v19 + 32) = v31;
  *(v19 + 48) = v22;
  v23 = v34;
  *(v19 + 64) = v33;
  *(v19 + 80) = v23;
  (*(v6 + 32))(v19 + v18, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21D385B64;
  *(v24 + 24) = v19;
  v29[4] = sub_21D0E622C;
  v29[5] = v24;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = sub_21D0E6204;
  v29[3] = &block_descriptor_43;
  v25 = _Block_copy(v29);
  sub_21D1D9A84(&v31, v30);

  [v16 withActionName:v17 block:v25];

  _Block_release(v25);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D380E70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    (*(a4 + 16))(a3, a4);
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 256))(v4, ObjectType, v6);
  }

  else
  {
    (*(a4 + 16))(a3, a4);
    v9 = v8;
    v10 = swift_getObjectType();
    (*(v9 + 248))(v10, v9);
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateFlagged:)(Swift::Bool updateFlagged)
{
  v4 = v3;
  v23 = v2;
  v5 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](updateFlagged);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v11 = inited + 32;
  v12 = 1702195828;
  if (!updateFlagged)
  {
    v12 = 0x65736C6166;
  }

  v13 = 0xE500000000000000;
  if (updateFlagged)
  {
    v13 = 0xE400000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v14;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v11, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v15 = objc_opt_self();
  v16 = sub_21DBFA12C();

  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v5);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v5;
  *(v18 + 24) = v19;
  (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v18 + v17 + v8) = updateFlagged;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D385BA4;
  *(v20 + 24) = v18;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_53_0;
  v21 = _Block_copy(aBlock);

  [v15 withActionName:v16 block:v21];

  _Block_release(v21);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }
}

uint64_t sub_21D381368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 136))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateDueTimeOn:)(Swift::Bool updateDueTimeOn)
{
  v3 = v2;
  v4 = v1;
  v5 = updateDueTimeOn;
  v118 = *(v1 - 8);
  MEMORY[0x28223BE20](updateDueTimeOn);
  v116 = v6;
  v117 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_21DBF509C();
  v7 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v115 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v104 - v10;
  v114 = v12;
  MEMORY[0x28223BE20](v13);
  v126 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v104 - v16;
  v111 = sub_21DBF5C4C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v104 - v19;
  v122 = sub_21DBF563C();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v21 - 8);
  v123 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v104 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  MEMORY[0x28223BE20](v31);
  v130 = &v104 - v32;
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v33 = sub_21DBF84BC();
  v34 = __swift_project_value_buffer(v33, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v36 = inited + 32;
  v113 = v5;
  v37 = 1702195828;
  if (!v5)
  {
    v37 = 0x65736C6166;
  }

  v38 = 0xE500000000000000;
  if (v5)
  {
    v38 = 0xE400000000000000;
  }

  v39 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v39;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v37;
  *(inited + 56) = v38;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v36, &qword_27CE5A6B0);
  v112 = v34;
  sub_21DAEACDC();

  v40 = v3;
  v41 = *(v3 + 16);
  v124 = v40;
  v41(v4);
  v43 = v42;
  ObjectType = swift_getObjectType();
  v45 = (*(v43 + 16))(ObjectType, v43);
  swift_unknownObjectRelease();
  v46 = [v45 dueDateComponents];

  v127 = v11;
  v125 = v4;
  if (v46)
  {
    sub_21DBF4EFC();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = v129;
  v106 = *(v7 + 56);
  v106(v30, v47, 1, v129);
  v49 = v30;
  v50 = v130;
  sub_21D0D523C(v49, v130, &qword_27CE58D60);
  sub_21D0D3954(v50, v27, &qword_27CE58D60);
  v119 = v7;
  v51 = *(v7 + 48);
  LODWORD(v50) = v51(v27, 1, v48);
  sub_21D0CF7E0(v27, &qword_27CE58D60);
  if (v50 == 1)
  {
    (v41)(v125, v124);
    v53 = v52;
    v54 = swift_getObjectType();
    v55 = (*(v53 + 16))(v54, v53);
    swift_unknownObjectRelease();
    v56 = [v55 displayDate];

    if (v56)
    {
      v57 = [v56 date];
      v58 = v120;
      sub_21DBF55FC();

      v104 = sub_21DBF55BC();
      (*(v121 + 8))(v58, v122);
      v59 = [v56 timeZone];
      if (v59)
      {
        v60 = v105;
        v61 = v59;
        sub_21DBF5C2C();

        v62 = v110;
        v63 = *(v110 + 32);
        v64 = v108;
        v65 = v60;
        v66 = v111;
        v63(v108, v65, v111);
        (*(v62 + 56))(v64, 0, 1, v66);
        v67 = v107;
        v63(v107, v64, v66);
        v68 = v129;
      }

      else
      {
        v62 = v110;
        v69 = v108;
        v66 = v111;
        (*(v110 + 56))(v108, 1, 1, v111);
        v70 = [objc_opt_self() defaultTimeZone];
        v67 = v107;
        sub_21DBF5C2C();

        v71 = (*(v62 + 48))(v69, 1, v66);
        v68 = v129;
        if (v71 != 1)
        {
          sub_21D0CF7E0(v69, &unk_27CE60DB0);
        }
      }

      v72 = objc_opt_self();
      v73 = sub_21DBF5C0C();
      (*(v62 + 8))(v67, v66);
      v74 = [v56 isAllDay];
      v75 = v104;
      v76 = [v72 rem:v104 dateComponentsWithDate:v73 timeZone:v74 isAllDay:?];

      v77 = v109;
      sub_21DBF4EFC();

      v78 = v130;
      sub_21D0CF7E0(v130, &qword_27CE58D60);
      v106(v77, 0, 1, v68);
      sub_21D0D523C(v77, v78, &qword_27CE58D60);
    }
  }

  v79 = v123;
  sub_21D0D3954(v130, v123, &qword_27CE58D60);
  v80 = v129;
  if (v51(v79, 1, v129) == 1)
  {
    sub_21D0CF7E0(v79, &qword_27CE58D60);
    v81 = sub_21DBF84AC();
    v82 = sub_21DBFAEBC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_21D0C9000, v81, v82, "Attempted to toggle dueTimeOn while not having a dueDate.", v83, 2u);
      MEMORY[0x223D46520](v83, -1, -1);
    }

    sub_21D0CF7E0(v130, &qword_27CE58D60);
  }

  else
  {
    v84 = v119;
    v85 = v126;
    v123 = *(v119 + 32);
    (v123)(v126, v79, v80);
    if (v113)
    {
      type metadata accessor for TTRReminderEditor();
      v86 = v120;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v87 = v127;
      static TTRReminderEditor.defaultDueDateComponentsSettingToNextFullHour(dateComponents:now:)(v85, v127);
      (*(v121 + 8))(v86, v122);
    }

    else
    {
      v88 = sub_21DBF4EDC();
      v89 = [v88 rem_allDayDateComponents];

      v87 = v127;
      sub_21DBF4EFC();
    }

    v90 = v128;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v128 = objc_opt_self();
    v122 = sub_21DBFA12C();

    v91 = v118;
    v92 = v117;
    v93 = v90;
    v94 = v125;
    (*(v118 + 16))(v117, v93, v125);
    v95 = v115;
    (*(v84 + 16))(v115, v87, v80);
    v96 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v97 = (v116 + *(v84 + 80) + v96) & ~*(v84 + 80);
    v98 = swift_allocObject();
    v99 = v124;
    *(v98 + 16) = v94;
    *(v98 + 24) = v99;
    (*(v91 + 32))(v98 + v96, v92, v94);
    (v123)(v98 + v97, v95, v80);
    v100 = swift_allocObject();
    *(v100 + 16) = sub_21D385C20;
    *(v100 + 24) = v98;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v100;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_63_0;
    v101 = _Block_copy(aBlock);

    v102 = v122;
    [v128 withActionName:v122 block:v101];
    _Block_release(v101);

    v103 = *(v84 + 8);
    v103(v127, v80);
    v103(v126, v80);
    sub_21D0CF7E0(v130, &qword_27CE58D60);
    LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

    if (v102)
    {
      __break(1u);
    }
  }
}

uint64_t sub_21D382288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  (*(a4 + 16))(a3, a4, v8);
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = sub_21DBF509C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a2, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  (*(v12 + 144))(v10, ObjectType, v12);
  swift_unknownObjectRelease();
  return sub_21D0CF7E0(v10, &qword_27CE58D60);
}

uint64_t TTRReminderDetailPresenterCapability.request(updateDueDateComponents:modifiedComponents:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v4 = a3;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = v8;
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v25 = *(v10 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *a2;
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v28 = a1;
  sub_21D0D3954(a1, v12, &qword_27CE58D60);
  v16 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (v13)
  {
    if (qword_280D1BAA8 != -1)
    {
      goto LABEL_9;
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    sub_21DBF516C();
    v24 = objc_opt_self();
    v18 = sub_21DBFA12C();

    (*(v7 + 2))(v9, v27, v4);
    sub_21D0D3954(v28, v12, &qword_27CE58D60);
    v19 = (v7[80] + 32) & ~v7[80];
    v20 = v9;
    v9 = ((v29 + v19 + *(v25 + 80)) & ~*(v25 + 80));
    v21 = swift_allocObject();
    v22 = v30;
    *(v21 + 16) = v4;
    *(v21 + 24) = v22;
    (*(v7 + 4))(v21 + v19, v20, v4);
    sub_21D0D523C(v12, &v9[v21], &qword_27CE58D60);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21D385CF8;
    *(v4 + 24) = v21;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_73;
    v7 = _Block_copy(aBlock);

    [v24 withActionName:v18 block:v7];

    _Block_release(v7);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  return result;
}

uint64_t sub_21D3829C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 144))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateNotes:)(NSAttributedString_optional updateNotes)
{
  v3 = v2;
  v4 = v1;
  v5 = *&updateNotes.is_nil;
  isa = updateNotes.value.super.isa;
  v6 = *(*&updateNotes.is_nil - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](updateNotes.value.super.isa);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0xEA00000000004449;
  (*(v4 + 16))(v5, v4);
  v24 = v4;
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = [v13 objectID];

  *(inited + 72) = sub_21D37FB1C();
  *(inited + 48) = v14;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v15 = objc_opt_self();
  v16 = sub_21DBFA12C();

  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v5;
  *(v18 + 24) = v19;
  (*(v6 + 32))(v18 + v17, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v20 = isa;
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = isa;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21D385D20;
  *(v21 + 24) = v18;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_83_0;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  [v15 withActionName:v16 block:v22];

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }
}

uint64_t sub_21D382ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 240))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(updateURL:)(Swift::String_optional updateURL)
{
  v63 = v1;
  v64 = v2;
  object = updateURL.value._object;
  countAndFlagsBits = updateURL.value._countAndFlagsBits;
  v65[2] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v62 = sub_21DBF54CC();
  v15 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v57 - v18;
  v19 = sub_21DBF4CAC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    goto LABEL_10;
  }

  v61 = v3;
  v65[0] = countAndFlagsBits;
  v65[1] = object;
  sub_21DBF8E0C();
  sub_21DBF4BBC();
  sub_21D176F0C();
  v24 = sub_21DBFBB3C();
  v26 = v25;
  (*(v20 + 8))(v23, v19);

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

LABEL_10:
    (*(v15 + 56))(v8, 1, 1, v62, v21);
    TTRReminderDetailPresenterCapability.request(updateURL:)(v8, v63, v64);
    sub_21D0CF7E0(v8, &qword_27CE5EA20);
    return;
  }

  v28 = v24;
  v29 = sub_21DBFA28C();
  v30 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v65[0] = 0;
  v31 = [v30 initWithTypes:32 error:v65];
  v58 = v28;
  if (!v31)
  {
    v40 = v65[0];
    v41 = sub_21DBF52DC();

    swift_willThrow();
    v36 = v62;
    goto LABEL_12;
  }

  v32 = v65[0];
  v33 = v31;
  v34 = sub_21DBFA12C();
  v35 = [v33 firstMatchInString:v34 options:0 range:{0, v29}];

  v36 = v62;
  if (!v35)
  {
LABEL_12:
    v42 = *(v15 + 56);
    v42(v14, 1, 1, v36);
    v43 = 0;
    goto LABEL_16;
  }

  v57 = v35;
  v37 = [v35 URL];
  if (v37)
  {
    v38 = v37;
    sub_21DBF546C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v42 = *(v15 + 56);
  v42(v11, v39, 1, v36);
  sub_21D0D523C(v11, v14, &qword_27CE5EA20);
  if ((*(v15 + 48))(v14, 1, v36) != 1)
  {

    v48 = v59;
    (*(v15 + 32))(v59, v14, v36);
    (*(v15 + 16))(v8, v48, v36);
    v42(v8, 0, 1, v36);
    TTRReminderDetailPresenterCapability.request(updateURL:)(v8, v63, v64);

    goto LABEL_23;
  }

  v43 = v57;
LABEL_16:
  sub_21D0CF7E0(v14, &qword_27CE5EA20);
  v44 = objc_opt_self();
  v45 = v58;
  v46 = sub_21DBFA12C();
  v47 = [v44 _lp_URLWithUserTypedString_relativeToURL_];

  if (v47)
  {

    v48 = v60;
    sub_21DBF546C();

    (*(v15 + 16))(v8, v48, v36);
    v42(v8, 0, 1, v36);
    TTRReminderDetailPresenterCapability.request(updateURL:)(v8, v63, v64);

LABEL_23:
    sub_21D0CF7E0(v8, &qword_27CE5EA20);
    (*(v15 + 8))(v48, v36);
    return;
  }

  v49 = v45;
  v50 = v43;
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v51 = sub_21DBF84BC();
  __swift_project_value_buffer(v51, qword_27CE5B108);
  sub_21DBF8E0C();
  v52 = sub_21DBF84AC();
  v53 = sub_21DBFAE9C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v65[0] = v55;
    *v54 = 136315138;
    v56 = sub_21D0CDFB4(v49, v26, v65);

    *(v54 + 4) = v56;
    _os_log_impl(&dword_21D0C9000, v52, v53, "Discarding edits for invalid URL string: {url: %s}", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v54, -1, -1);
  }

  else
  {
  }

  (*(v64 + 24))(v63);
}

uint64_t TTRReminderDetailPresenterCapability.request(updateURL:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v43 = *(a2 - 1);
  v44 = a3;
  MEMORY[0x28223BE20](a1);
  v41 = v5;
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_21DBF84BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27CE5B108);
  (*(v12 + 16))(v14, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v40 = a1;
  sub_21D0D3954(a1, v10, &qword_27CE5EA20);
  v17 = sub_21DBF54CC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5EA20);
    v19 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v35 = v3;
    v20 = sub_21DBF535C();
    v22 = v21;
    (*(v18 + 8))(v10, v17);
    v19 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    if (v22)
    {
      *v19 = v20;
      v3 = v35;
      goto LABEL_9;
    }

    v3 = v35;
  }

  *v19 = 0;
  v22 = 0xE000000000000000;
LABEL_9:
  *(inited + 56) = v22;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  (*(v12 + 8))(v14, v11);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v35 = objc_opt_self();
  v23 = sub_21DBFA12C();

  v25 = v42;
  v24 = v43;
  (*(v43 + 16))(v42, v39, v3);
  v26 = v38;
  sub_21D0D3954(v40, v38, &qword_27CE5EA20);
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = (v41 + v27 + *(v36 + 80)) & ~*(v36 + 80);
  v29 = swift_allocObject();
  v30 = v44;
  *(v29 + 16) = v3;
  *(v29 + 24) = v30;
  (*(v24 + 32))(v29 + v27, v25, v3);
  sub_21D0D523C(v26, v29 + v28, &qword_27CE5EA20);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_21D385ECC;
  *(v31 + 24) = v29;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_93;
  v32 = _Block_copy(aBlock);

  [v35 withActionName:v23 block:v32];

  _Block_release(v32);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D383D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 344))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.requestRemoveEndRepeat()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5B108);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D385FDC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_103_0;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

uint64_t sub_21D38419C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  (*(a3 + 16))(a2, a3, v6);
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  (*(v10 + 216))(v8, ObjectType, v10);
  swift_unknownObjectRelease();
  return sub_21D0CF7E0(v8, &unk_27CE62610);
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.requestEndRepeat(after:)(Swift::UInt after)
{
  v4 = v3;
  v20 = v2;
  v5 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](after);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 0x7265746661;
  v11 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = after;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v11, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v12 = objc_opt_self();
  v13 = sub_21DBFA12C();

  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v5);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v5;
  *(v15 + 3) = v16;
  *(v15 + 4) = after;
  (*(v7 + 32))(&v15[v14], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D385FF4;
  *(v17 + 24) = v15;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_113_0;
  v18 = _Block_copy(aBlock);

  [v12 withActionName:v13 block:v18];

  _Block_release(v18);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

uint64_t sub_21D3846BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRRecurrenceEndModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  (*(a4 + 16))(a3, a4);
  v15 = v14;
  ObjectType = swift_getObjectType();
  sub_21D3862A4(v13, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v15 + 216))(v9, ObjectType, v15);
  swift_unknownObjectRelease();
  sub_21D0CF7E0(v9, &unk_27CE62610);
  return sub_21D386308(v13);
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.requestEndRepeatOnDefaultDate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5B108);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D386034;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_123;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

uint64_t sub_21D384BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 224))(ObjectType, v4);

  return swift_unknownObjectRelease();
}

uint64_t TTRReminderDetailPresenterCapability.requestEndRepeat(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = v6;
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21DBF563C();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = v8;
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56640 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5B108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 0x657461446E6FLL;
  *(inited + 40) = 0xE600000000000000;
  v12 = sub_21DBF555C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v24 = objc_opt_self();
  v14 = sub_21DBFA12C();

  v15 = v28;
  (*(v7 + 16))(v9, a1, v28);
  v16 = v29;
  (*(v5 + 16))(v29, v27, a2);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v25 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v7 + 32))(v19 + v17, v9, v15);
  (*(v5 + 32))(v19 + v18, v16, a2);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21D386090;
  *(v21 + 24) = v19;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_133;
  v22 = _Block_copy(aBlock);

  [v24 withActionName:v14 block:v22];

  _Block_release(v22);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D385160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRecurrenceEndModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF563C();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  swift_storeEnumTagMultiPayload();
  (*(a4 + 16))(a3, a4);
  v16 = v15;
  ObjectType = swift_getObjectType();
  sub_21D3862A4(v13, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v16 + 216))(v9, ObjectType, v16);
  swift_unknownObjectRelease();
  sub_21D0CF7E0(v9, &unk_27CE62610);
  return sub_21D386308(v13);
}

Swift::Void __swiftcall TTRReminderDetailPresenterCapability.request(addAttachments:)(Swift::OpaquePointer addAttachments)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v8 = *(v1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](addAttachments._rawValue);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v10 = objc_opt_self();
  v11 = sub_21DBFA12C();

  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v6);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v5;
  (*(v8 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = addAttachments;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D386160;
  *(v14 + 24) = v13;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_143;
  v15 = _Block_copy(aBlock);
  sub_21DBF8E0C();

  [v10 withActionName:v11 block:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_21D385684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 320))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t TTRReminderDetailPresenterCapability.requestRemove(attachment:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v10 = objc_opt_self();
  v11 = sub_21DBFA12C();

  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D386178;
  *(v14 + 24) = v13;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_153;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v10 withActionName:v11 block:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D385A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 328))(a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D385AF4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_21D380954(v0 + v1, *v2, *(v2 + 8), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_21D385BBC(uint64_t (*a1)(uint64_t, void))
{
  v3 = *(*(v1 + 16) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  return a1(v4, *(v4 + *(v3 + 64)));
}

uint64_t sub_21D385C20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(sub_21DBF509C() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_21D382288(v0 + v3, v6, v1, v2);
}

uint64_t objectdestroy_65Tm(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v6 + 8))(v3 + v8, v5);
  v11 = a3(0);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21D385EF4(uint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(*(v4 - 8) + 64);
  v7 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v9 = v3 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v7, v9, v4, v5);
}

uint64_t sub_21D386090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_21DBF563C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v0 + ((v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_21D385160(v0 + v4, v5, v1, v2);
}

uint64_t sub_21D386190(uint64_t (*a1)(unint64_t, void))
{
  v2 = *(*(v1 + 16) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  return a1(v1 + v3, *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21D386204()
{
  result = qword_27CE5B120[0];
  if (!qword_27CE5B120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE5B120);
  }

  return result;
}

uint64_t sub_21D3862A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D386308(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t REMSmartListType.longTitle.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_21DBFC64C();

    if ((v5 & 1) == 0)
    {
      return REMSmartListType.title.getter();
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t REMSmartListType.navigationSpecifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBFA16C();
  v4 = v3;
  if (v2 == sub_21DBFA16C() && v4 == v5)
  {

    goto LABEL_15;
  }

  v7 = sub_21DBFC64C();

  if (v7)
  {
LABEL_15:
    v18 = *MEMORY[0x277D45128];
    v19 = sub_21DBF667C();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    v20 = MEMORY[0x277D45208];
LABEL_16:
    v21 = *v20;
    v22 = sub_21DBF66FC();
    v62 = *(v22 - 8);
    (*(v62 + 104))(a1, v21, v22);
    v23 = *(v62 + 56);
    v24 = a1;
    v25 = 0;
    v26 = v22;
    goto LABEL_17;
  }

  v8 = sub_21DBFA16C();
  v10 = v9;
  if (v8 == sub_21DBFA16C() && v10 == v11)
  {

    goto LABEL_21;
  }

  v13 = sub_21DBFC64C();

  if (v13)
  {
LABEL_21:
    v28 = *MEMORY[0x277D45128];
    v29 = sub_21DBF667C();
    (*(*(v29 - 8) + 104))(a1, v28, v29);
    v20 = MEMORY[0x277D45258];
    goto LABEL_16;
  }

  v14 = sub_21DBFA16C();
  v16 = v15;
  if (v14 == sub_21DBFA16C() && v16 == v17)
  {

LABEL_23:
    v31 = *MEMORY[0x277D45128];
    v32 = sub_21DBF667C();
    (*(*(v32 - 8) + 104))(a1, v31, v32);
    v20 = MEMORY[0x277D451C8];
    goto LABEL_16;
  }

  v30 = sub_21DBFC64C();

  if (v30)
  {
    goto LABEL_23;
  }

  v33 = sub_21DBFA16C();
  v35 = v34;
  if (v33 == sub_21DBFA16C() && v35 == v36)
  {

LABEL_28:
    v38 = *MEMORY[0x277D45128];
    v39 = sub_21DBF667C();
    (*(*(v39 - 8) + 104))(a1, v38, v39);
    v20 = MEMORY[0x277D45228];
    goto LABEL_16;
  }

  v37 = sub_21DBFC64C();

  if (v37)
  {
    goto LABEL_28;
  }

  v40 = sub_21DBFA16C();
  v42 = v41;
  if (v40 == sub_21DBFA16C() && v42 == v43)
  {

LABEL_33:
    v45 = *MEMORY[0x277D45128];
    v46 = sub_21DBF667C();
    (*(*(v46 - 8) + 104))(a1, v45, v46);
    v20 = MEMORY[0x277D45240];
    goto LABEL_16;
  }

  v44 = sub_21DBFC64C();

  if (v44)
  {
    goto LABEL_33;
  }

  v47 = sub_21DBFA16C();
  v49 = v48;
  if (v47 == sub_21DBFA16C() && v49 == v50)
  {

LABEL_38:
    v52 = *MEMORY[0x277D45128];
    v53 = sub_21DBF667C();
    (*(*(v53 - 8) + 104))(a1, v52, v53);
    v20 = MEMORY[0x277D451E0];
    goto LABEL_16;
  }

  v51 = sub_21DBFC64C();

  if (v51)
  {
    goto LABEL_38;
  }

  v54 = sub_21DBFA16C();
  v56 = v55;
  if (v54 == sub_21DBFA16C() && v56 == v57)
  {

LABEL_43:
    v59 = *MEMORY[0x277D45128];
    v60 = sub_21DBF667C();
    (*(*(v60 - 8) + 104))(a1, v59, v60);
    v20 = MEMORY[0x277D45250];
    goto LABEL_16;
  }

  v58 = sub_21DBFC64C();

  if (v58)
  {
    goto LABEL_43;
  }

  v61 = sub_21DBF66FC();
  v23 = *(*(v61 - 8) + 56);
  v26 = v61;
  v24 = a1;
  v25 = 1;
LABEL_17:

  return v23(v24, v25, 1, v26);
}

uint64_t REMSmartListType.shouldHideRecurringCompletedRemindersPassTodayInWidget.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  v4 = v0 == sub_21DBFA16C() && v2 == v3;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_21DBFC64C();

    if (v6)
    {
      return 1;
    }

    v7 = sub_21DBFA16C();
    v9 = v8;
    if (v7 != sub_21DBFA16C() || v9 != v10)
    {
      v12 = sub_21DBFC64C();

      if (v12)
      {
        return 0;
      }

      v14 = sub_21DBFA16C();
      v16 = v15;
      if (v14 != sub_21DBFA16C() || v16 != v17)
      {
        v18 = sub_21DBFC64C();

        if (v18)
        {
          return 0;
        }

        v19 = sub_21DBFA16C();
        v21 = v20;
        if (v19 != sub_21DBFA16C() || v21 != v22)
        {
          v23 = sub_21DBFC64C();

          if (v23)
          {
            return 0;
          }

          v24 = sub_21DBFA16C();
          v26 = v25;
          if (v24 != sub_21DBFA16C() || v26 != v27)
          {
            v28 = sub_21DBFC64C();

            if (v28)
            {
              return 0;
            }

            v29 = sub_21DBFA16C();
            v31 = v30;
            if (v29 != sub_21DBFA16C() || v31 != v32)
            {
              v33 = sub_21DBFC64C();

              if (v33)
              {
                return 0;
              }

              v34 = sub_21DBFA16C();
              v36 = v35;
              if (v34 != sub_21DBFA16C() || v36 != v37)
              {
                v38 = sub_21DBFC64C();

                if (v38)
                {
                  return 0;
                }

                v39 = sub_21DBFA16C();
                v41 = v40;
                if (v39 != sub_21DBFA16C() || v41 != v42)
                {
                  v43 = sub_21DBFC64C();

                  if (v43)
                  {
                    return 0;
                  }

                  v44 = sub_21DBFA16C();
                  v46 = v45;
                  if (v44 != sub_21DBFA16C() || v46 != v47)
                  {
                    sub_21DBFC64C();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t TTRTreeStorageWithHiddenChildren.__allocating_init(upstreamTree:itemIDsWithHiddenChildren:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRTreeStorageWithHiddenChildren.init(upstreamTree:itemIDsWithHiddenChildren:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRTreeStorageWithHiddenChildren.numberOfChildren(of:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(*(*v1 + 88) + 8) + 8);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v26 = v5;
  v27 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v19 = *(v8 + 16);
  v28 = a1;
  v19(v10, a1, v7, v16);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v20 + 8))(v10, AssociatedTypeWitness);
    v21 = v25;
    (*(v25 + 32))(v18, v14, v12);
    swift_getAssociatedConformanceWitness();
    v22 = sub_21DBFAB6C();
    (*(v21 + 8))(v18, v12);
    if (v22)
    {
      return 0;
    }
  }

  v29 = *(v2 + 16);
  return (*(v27 + 24))(v28, v26);
}

uint64_t TTRTreeStorageWithHiddenChildren.child(_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a3;
  v30 = a1;
  v6 = *(*(*(*v3 + 88) + 8) + 8);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v27 = v7;
  v28 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v26 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  v21 = *(v10 + 16);
  v31 = a2;
  v21(v12, a2, v9, v18);
  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
LABEL_5:
    v32 = *(v4 + 16);
    return (*(v28 + 32))(v30, v31, v27);
  }

  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v22 + 8))(v12, AssociatedTypeWitness);
  v23 = v26;
  (*(v26 + 32))(v20, v16, v14);
  swift_getAssociatedConformanceWitness();
  if ((sub_21DBFAB6C() & 1) == 0)
  {
    (*(v23 + 8))(v20, v14);
    goto LABEL_5;
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t TTRTreeStorageWithHiddenChildren.item(withID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a1;
  v49 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v7;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v46 = v2;
  v21 = v2[2];
  v50 = v21;
  v22 = *(v3 + 40);
  v23 = v48;
  v48 = v4;
  v22(v23, v4, v3, v18);
  v24 = v14;
  v25 = *(v14 + 48);
  if (v25(v13, 1, AssociatedTypeWitness) != 1)
  {
    v39 = v9;
    v40 = v8;
    v28 = v13;
    v29 = *(v14 + 32);
    v29(v20, v28, AssociatedTypeWitness);
    v50 = v21;
    v30 = v14;
    v31 = v47;
    (*(v3 + 48))(v20, v48, v3);
    if (v25(v31, 1, AssociatedTypeWitness) == 1)
    {
      v32 = v14;
      (*(v39 + 8))(v31, v40);
    }

    else
    {
      v33 = v41;
      v29(v41, v31, AssociatedTypeWitness);
      v34 = v42;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v35 = v45;
      swift_getAssociatedConformanceWitness();
      v36 = sub_21DBFAB6C();
      (*(v44 + 8))(v34, v35);
      v32 = v30;
      v37 = *(v30 + 8);
      v37(v33, AssociatedTypeWitness);
      if (v36)
      {
        v37(v20, AssociatedTypeWitness);
        v26 = 1;
        v27 = v49;
LABEL_8:
        v24 = v32;
        return (*(v24 + 56))(v27, v26, 1, AssociatedTypeWitness);
      }
    }

    v27 = v49;
    v29(v49, v20, AssociatedTypeWitness);
    v26 = 0;
    goto LABEL_8;
  }

  (*(v9 + 8))(v13, v8);
  v26 = 1;
  v27 = v49;
  return (*(v24 + 56))(v27, v26, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithHiddenChildren.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - v7;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v32 = v2[2];
  (*(v3 + 48))(v30, v4, v3, v14);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = *(v12 + 32);
    v17(v16, v11, AssociatedTypeWitness);
    v18 = v26;
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v29;
    swift_getAssociatedConformanceWitness();
    v20 = sub_21DBFAB6C();
    (*(v28 + 8))(v18, v19);
    if ((v20 & 1) == 0)
    {
      v23 = v31;
      v17(v31, v16, AssociatedTypeWitness);
      v22 = v23;
      v21 = 0;
      return (*(v12 + 56))(v22, v21, 1, AssociatedTypeWitness);
    }

    (*(v12 + 8))(v16, AssociatedTypeWitness);
  }

  v21 = 1;
  v22 = v31;
  return (*(v12 + 56))(v22, v21, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithHiddenChildren.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  (*(v8 + 16))(v10, v25, v7, v13);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedConformanceWitness();
    v16 = sub_21DBFAB6C();
    (*(v23 + 8))(v6, v4);
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    if (v16)
    {
      v17 = type metadata accessor for TTRDerivedTreeLocation();
      return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
    }
  }

  v19 = type metadata accessor for TTRDerivedTreeLocation();
  v20 = *(v19 - 8);
  v21 = v24;
  (*(v20 + 16))(v24, v25, v19);
  return (*(v20 + 56))(v21, 0, 1, v19);
}

uint64_t TTRTreeStorageWithHiddenChildren.convertToImmediateUpstream(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v59 = a2;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = v5;
  v52 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v45 - v9;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for TTRDerivedTreeLocation();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v49 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  LODWORD(v54) = *v59;
  v25 = *(v21 + 16);
  v58 = v26;
  v59 = &v45 - v27;
  v25(v24);
  v28 = *(v11 + 16);
  v53 = a1;
  v28(v15, a1, v10);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v10);
LABEL_8:
    v33 = v58;
    v36 = v59;
    goto LABEL_9;
  }

  v46 = v11;
  v47 = v10;
  (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
  v48 = v2;
  v29 = v55;
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v30 = v57;
  swift_getAssociatedConformanceWitness();
  v31 = sub_21DBFAB6C();
  (*(v56 + 1))(v29, v30);
  v32 = v19;
  if ((v31 & 1) == 0)
  {
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v33 = v58;
  if ((v54 & 1) == 0 || *(v53 + *(v58 + 36)))
  {
    v34 = sub_21DBFA68C();
    (*(v16 + 8))(v19, AssociatedTypeWitness);
    (*(v21 + 8))(v59, v33);
    return v34;
  }

  v57 = *(v48 + 16);
  v60 = v57;
  v39 = *(v16 + 16);
  v55 = (v16 + 16);
  v56 = v39;
  v40 = v50;
  v39(v50, v19, AssociatedTypeWitness);
  v41 = *(v16 + 56);
  v53 = v16 + 56;
  v54 = v41;
  v41(v40, 0, 1, AssociatedTypeWitness);
  v42 = v52;
  v48 = *(v52 + 24);
  swift_unknownObjectRetain();
  v43 = (v48)(v40, v51, v42);
  (*(v46 + 8))(v40, v47);
  swift_unknownObjectRelease();
  v56(v40, v32, AssociatedTypeWitness);
  v54(v40, 0, 1, AssociatedTypeWitness);
  v44 = v49;
  TTRDerivedTreeLocation.init(parent:index:)(v40, v43, AssociatedTypeWitness, AssociatedConformanceWitness, v49);
  (*(v16 + 8))(v32, AssociatedTypeWitness);
  v36 = v59;
  (*(v21 + 8))(v59, v33);
  (*(v21 + 32))(v36, v44, v33);
LABEL_9:
  sub_21DBFC5CC();
  swift_allocObject();
  v37 = sub_21DBFA60C();
  (*(v21 + 32))(v38, v36, v33);
  result = v37;
  sub_21D23C8B4();
  return result;
}

uint64_t TTRTreeStorageWithHiddenChildren.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRTreeStorageWithHiddenChildren.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D388C34(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D388C70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D388D64()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F320);
  v1 = __swift_project_value_buffer(v0, qword_280D0F320);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRInlineRequestPresentationState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRPrivacyType.description.getter()
{
  v1 = *v0;
  v2 = 0x6163696669746F6ELL;
  v3 = 0x73746361746E6F63;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6C41746E65677275;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

RemindersUICore::TTRPrivacyType_optional __swiftcall TTRPrivacyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D388FC4()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D3890C0()
{
  sub_21DBFA27C();
}

uint64_t sub_21D3891A8()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D3892AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000736E6F6974;
  v4 = 0x6163696669746F6ELL;
  v5 = 0xE800000000000000;
  v6 = 0x73746361746E6F63;
  v7 = 0x800000021DC43740;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x6C41746E65677275;
    v7 = 0xEC000000736D7261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F697461636F6CLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21D389370()
{
  v1 = *v0;
  v2 = 0x6163696669746F6ELL;
  v3 = 0x73746361746E6F63;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6C41746E65677275;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

RemindersUICore::TTRPrivacyAlertResponse_optional __swiftcall TTRPrivacyAlertResponse.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRPrivacyAlertResponse.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_21D3894C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 0x65756E69746E6F63;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E6163;
  }

  else
  {
    v5 = 0x65756E69746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D389564()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D3895E4()
{
  sub_21DBFA27C();
}

uint64_t sub_21D389650()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D3896CC@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21D38972C(uint64_t *a1@<X8>)
{
  v2 = 0x65756E69746E6F63;
  if (*v1)
  {
    v2 = 0x6C65636E6163;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TTRLocationAccessForRemindersInCalendarAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRContactsAccessAlertFeature.description.getter()
{
  v1 = 0x6E6967617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x68535641446C6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t static TTRContactsAccessAlertFeature.hasPreviouslyViewedAlert(for:userDefaults:)(_BYTE *a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  ObjectType = swift_getObjectType();

  return sub_21D397494(a1, a2, ObjectType, a3);
}

uint64_t static TTRContactsAccessAlertFeature.saveHasViewedAlert(for:userDefaults:)(_BYTE *a1, uint64_t a2, uint64_t (**a3)(void, void, void))
{
  ObjectType = swift_getObjectType();

  return sub_21D397750(a1, a2, ObjectType, a3);
}

RemindersUICore::TTRContactsAccessAlertFeature_optional __swiftcall TTRContactsAccessAlertFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D38996C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6967617373656DLL;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x68535641446C6163;
    v4 = 0xED0000676E697261;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E6967617373656DLL;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x68535641446C6163;
    v8 = 0xED0000676E697261;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DBFC64C();
  }

  return v11 & 1;
}

uint64_t sub_21D389A90()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D389B44()
{
  sub_21DBFA27C();
}

uint64_t sub_21D389BE4()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D389CA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E6967617373656DLL;
  if (v2 != 1)
  {
    v5 = 0x68535641446C6163;
    v4 = 0xED0000676E697261;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21D389D10()
{
  v1 = 0x6E6967617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x68535641446C6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_21D389D7C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(a1, a2, a3);
}

uint64_t TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 72) = a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x2822009F8](sub_21D389EC8, v6, v5);
}

uint64_t sub_21D389EC8()
{
  v1 = (*(*(v0 + 24) + 40))();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21D389F88;
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 72);

  return sub_21D3927A0(v5, v1 & 1, v4, v3);
}

uint64_t sub_21D389F88()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D2016E4, v3, v2);
}

uint64_t sub_21D38A0A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D399954;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(a1, a2);
}

uint64_t TTRPrivacyChecker.checkAndPromptLocationAccess()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  sub_21DBFA84C();
  v3[15] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x2822009F8](sub_21D38A1E8, v5, v4);
}

uint64_t sub_21D38A1E8()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[18] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Location Access and request if necessary", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[12];

  v7 = *(v5 + 8);
  v0[19] = v7;
  v0[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x350F000000000000;
  v7(v6, v5);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v12 = (*(v9 + 48) + **(v9 + 48));
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_21D38A400;

  return v12(v8, v9);
}

uint64_t sub_21D38A400()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21D38A520, v3, v2);
}

uint64_t sub_21D38A520()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1(v3, v2);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v8 = (*(v5 + 80) + **(v5 + 80));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_21D38A678;

  return v8(v0 + 24, v4, v5);
}

uint64_t sub_21D38A678()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21D38A798, v3, v2);
}

uint64_t sub_21D38A798()
{
  v18 = v0;
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v17 = v1;
    v6 = TTRGeoLocationAuthorizationStatus.description.getter();
    v8 = sub_21D0CDFB4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] current location authorization status: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D46520](v5, -1, -1);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  if (v1 == 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (v1 != 3 && (v1 & 1) != 0)
  {
    v9 = 1;
LABEL_11:

    v14 = *(v0 + 8);

    return v14(v9);
  }

  *(v0 + 194) = 1;
  v15 = (*(*(v0 + 104) + 72) + **(*(v0 + 104) + 72));
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  *v10 = v0;
  v10[1] = sub_21D38AA10;
  v11 = *(v0 + 104);
  v12 = *(v0 + 96);

  return v15(v0 + 193, v0 + 194, v12, v11);
}

uint64_t sub_21D38AA10()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21D38AB30, v3, v2);
}

uint64_t sub_21D38AB30()
{
  v8 = v0;

  v1 = *(v0 + 193);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v3 = *(v0 + 104);
    v4 = *(v0 + 96);
    v7 = 1;
    (*(v3 + 48))(&v7, v4);
  }

LABEL_7:
  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_21D38AC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.checkAndPromptAccessForRemindersWithDueDate(with:)(a1, a2, a3);
}

uint64_t sub_21D38ACCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v2[4] = swift_task_alloc();
  v2[5] = sub_21DBFA84C();
  v2[6] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21D38ADA0, v4, v3);
}

uint64_t sub_21D38ADA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_21DBFA86C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  v6 = v3;
  v7 = sub_21D392FF0(0, 0, v2, &unk_21DC129E0, v5);
  v0[9] = v7;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_21D38AF10;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 13, v7, v9);
}

uint64_t sub_21D38AF10()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D38B030, v3, v2);
}

uint64_t sub_21D38B030()
{
  if (*(v0 + 104) == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] Detected existing reminders with due date - prompt for system notification permission", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    *(v0 + 88) = sub_21DBFA83C();
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_21D38B2BC;

    return (sub_21D591AA8)(2, 1);
  }

  else
  {

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F320);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "PrivacyChecker: [Notification] Did not detect any existing reminders with due date - do not prompt for system notification permission", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_21D38B2BC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D38B3F8, v1, v0);
}

uint64_t sub_21D38B3F8()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21D38B45C, v1, v2);
}