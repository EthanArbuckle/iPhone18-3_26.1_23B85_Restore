uint64_t sub_1BD8AFA90@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD8AFB10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8AFBB0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD8AFC30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8AFCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8AFD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8AFD6C()
{
  v2 = *(type metadata accessor for AutoFillFPANCardsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD8AB574(v4, v5, v0 + v3);
}

void sub_1BD8AFF58()
{
  sub_1BD8B0054();
  if (v0 <= 0x3F)
  {
    sub_1BD8B02C0(319, &qword_1EBD368F0, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD8B0054()
{
  if (!qword_1EBD572E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD572F0);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD572E8);
    }
  }
}

void sub_1BD8B00E0()
{
  sub_1BD8B02C0(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD8B022C();
    if (v1 <= 0x3F)
    {
      sub_1BD170C00();
      if (v2 <= 0x3F)
      {
        sub_1BD8B02C0(319, &qword_1EBD53A50, MEMORY[0x1E697BD78]);
        if (v3 <= 0x3F)
        {
          sub_1BD10315C(319, &qword_1EBD53A80, &qword_1EBD53A88);
          if (v4 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD53A90, &qword_1EBD53A98);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD8B022C()
{
  if (!qword_1EBD57308)
  {
    type metadata accessor for DescriptorsModel(255);
    sub_1BD8B0314(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD57308);
    }
  }
}

void sub_1BD8B02C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD8B0314(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8B039C()
{
  result = qword_1EBD57340;
  if (!qword_1EBD57340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57340);
  }

  return result;
}

void sub_1BD8B03F0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = type metadata accessor for AddAutoFillCardViewController();
  v13 = objc_allocWithZone(v40);
  v14 = OBJC_IVAR___PKAddAutoFillCardViewController_context;
  *&v13[OBJC_IVAR___PKAddAutoFillCardViewController_context] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType];
  *v17 = 0;
  *(v17 + 1) = 0;
  v39 = a3;
  swift_unknownObjectWeakAssign();
  *&v13[OBJC_IVAR___PKAddAutoFillCardViewController_webService] = a1;
  *&v13[v14] = a2;
  v18 = a1;
  v19 = sub_1BD88B610();
  sub_1BD3F0574(v19);

  v20 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v21 = sub_1BE052724();

  v22 = [v20 initWithPaymentSetupFields_];

  if (v22)
  {
    v23 = OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel;
    *&v13[OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel] = v22;
    *v15 = a4;
    *(v15 + 1) = a5;
    sub_1BE048C84();

    *v16 = a6;
    *(v16 + 1) = a7;
    sub_1BE048C84();

    *v17 = a8;
    *(v17 + 1) = a9;
    sub_1BE048C84();

    v24 = objc_allocWithZone(PKPaymentCameraCaptureViewController);
    v25 = v18;
    v26 = [v24 initWithWebService:v25 context:a2];
    if (v26)
    {
      v27 = v26;

      [v27 configureForModalPresentation];
      [v27 setShowTypeCardNumberButton_];
      v45.receiver = v13;
      v45.super_class = v40;
      v28 = objc_msgSendSuper2(&v45, sel_initWithRootViewController_, v27);
      [v27 setFlowItemDelegate_];

LABEL_6:
      return;
    }

    v29 = *&v13[v23];
    v30 = type metadata accessor for AutofillManualEntryViewController();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v32 = &v31[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier];
    *v32 = 0;
    *(v32 + 1) = 0;
    v33 = &v31[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier];
    *v33 = 0;
    *(v33 + 1) = 0;
    v34 = &v31[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType];
    *v34 = 0;
    *(v34 + 1) = 0;
    *&v31[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields] = v29;
    *v32 = a4;
    *(v32 + 1) = a5;
    *v33 = a6;
    *(v33 + 1) = a7;
    *v34 = a8;
    *(v34 + 1) = a9;
    v47.receiver = v31;
    v47.super_class = v30;
    v35 = v29;
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v36 = v35;
    v37 = objc_msgSendSuper2(&v47, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v25, a2, 0, v36);
    if (v37)
    {
      v38 = v37;

      v46.receiver = v13;
      v46.super_class = v40;
      objc_msgSendSuper2(&v46, sel_initWithRootViewController_, v38);

      *&v38[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = &off_1F3BC1BF0;
      swift_unknownObjectWeakAssign();
      v25 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD8B07D4()
{
  result = qword_1EBD57350;
  if (!qword_1EBD57350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57350);
  }

  return result;
}

unint64_t sub_1BD8B0828()
{
  result = qword_1EBD57378;
  if (!qword_1EBD57378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57370);
    sub_1BD23F914();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57378);
  }

  return result;
}

uint64_t objectdestroy_81Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_111Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BD8B0AF0()
{
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BD8B039C();
  return sub_1BE04E934();
}

uint64_t objectdestroy_146Tm()
{
  v1 = type metadata accessor for AutoFillFPANCardsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD8B0D08(uint64_t a1)
{
  type metadata accessor for AutoFillFPANCardsView(0);

  return sub_1BD8AE898(a1);
}

uint64_t sub_1BD8B0DA0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AutoFillFPANCardsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD8B0E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD573F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_104()
{
  v1 = type metadata accessor for AutoFillFPANCardsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BE04E664();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD8B0FEC()
{
  type metadata accessor for AutoFillFPANCardsView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD8ADCD4();
}

uint64_t sub_1BD8B10DC(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for AutoFillFPANCardsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD8AD024(a1, a2, v6);
}

uint64_t sub_1BD8B115C(uint64_t a1)
{
  type metadata accessor for AutoFillFPANCardsView(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD126968;

  return sub_1BD8AD220(a1);
}

uint64_t sub_1BD8B124C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AutoFillFPANCardsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD8AC760(a1, v6, a2);
}

id sub_1BD8B12E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 0;
  return v2;
}

unint64_t sub_1BD8B12F4()
{
  result = qword_1EBD57450;
  if (!qword_1EBD57450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57450);
  }

  return result;
}

unint64_t sub_1BD8B1348()
{
  result = qword_1EBD57458;
  if (!qword_1EBD57458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57448);
    sub_1BD8B0314(&qword_1EBD57460, type metadata accessor for AutoFillFPANCardDetailsView);
    sub_1BD0DE4F4(&qword_1EBD57468, &qword_1EBD57470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57458);
  }

  return result;
}

unint64_t sub_1BD8B1430()
{
  result = qword_1EBD57478;
  if (!qword_1EBD57478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57480);
    sub_1BD0DE4F4(&qword_1EBD57488, &qword_1EBD57490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57478);
  }

  return result;
}

Swift::Void __swiftcall UIView.applyContainerCornerConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57498);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD574A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1BE04D394();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1BE04D3A4();
  sub_1BD8B16AC(v3);
  v9 = sub_1BE04D3B4();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1BE052FA4();
}

uint64_t sub_1BD8B16AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD8B1714(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57498);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD574A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04D394();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = a1;
  sub_1BE04D3A4();
  sub_1BD8B16AC(v5);
  v12 = sub_1BE04D3B4();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_1BE052FA4();
}

uint64_t UIView.applyContainerCornerConfiguration(with:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57498);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD574A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1BE04D384();
  v8 = sub_1BE04D394();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  sub_1BE04D3A4();
  sub_1BD8B16AC(v3);
  v9 = sub_1BE04D3B4();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  return sub_1BE052FA4();
}

void sub_1BD8B1A00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57498);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD574A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = a1;
  sub_1BE04D384();
  v11 = sub_1BE04D394();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_1BE04D3A4();
  sub_1BD8B16AC(v5);
  v12 = sub_1BE04D3B4();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_1BE052FA4();
}

void sub_1BD8B1B88()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_1BD8B235C(319, &qword_1EBD57528, &qword_1EBD57530, &unk_1BE101220, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1BD3A0F90();
        if (v3 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v4 <= 0x3F)
          {
            sub_1BD8B2304();
            if (v5 <= 0x3F)
            {
              sub_1BD8B235C(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &unk_1BE0BAA50, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1BD8B235C(319, &qword_1EBD52B18, &qword_1EBD3DC88, &unk_1BE0C88A0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD10EE48();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD79EE5C();
                    if (v9 <= 0x3F)
                    {
                      sub_1BD8B235C(319, &qword_1EBD39358, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
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
}

uint64_t sub_1BD8B1DB0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1BE04AA64() - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 64);
  if (v11 <= 0x18)
  {
    v11 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = (v11 & 0xFFFFFFFFFFFFFFF8) + ((v12 + ((((((((((((((*(v6 + 64) + ((v10 + 80) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v12) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v22 = *(v6 + 48);

      return v22((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, v7, v5);
    }

    else
    {
      v21 = *(a1 + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1BD8B202C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1BE04AA64() - 8);
  v12 = *(v8 + 80);
  v13 = *(v11 + 64);
  if (v13 <= 0x18)
  {
    v13 = 24;
  }

  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v13 & 0xFFFFFFFFFFFFFFF8) + ((v14 + ((((((((((((((*(v8 + 64) + ((v12 + 80) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v14) + 16;
  if (v10 >= a3)
  {
    v18 = 0;
    v19 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = a3 - v10 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  if (v15)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v15)
  {
    bzero(a1, v15);
    *a1 = ~v10 + a2;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void sub_1BD8B2304()
{
  if (!qword_1EBD42448)
  {
    type metadata accessor for Decimal(255);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42448);
    }
  }
}

void sub_1BD8B235C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BD8B2404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v100 = &v70 - v5;
  v98 = sub_1BE04FDC4();
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v6);
  v95 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6981840];
  v105 = MEMORY[0x1E6981840];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57538);
  v97 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v106 = sub_1BE051854();
  v107 = v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57540);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  v9 = sub_1BE051854();
  WitnessTable = swift_getWitnessTable();
  v105 = v9;
  v106 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1BE0500D4();
  v11 = sub_1BE04EBD4();
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - v13;
  v105 = v9;
  v106 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1BD8B5174(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v111 = OpaqueTypeConformance2;
  v112 = v16;
  v17 = swift_getWitnessTable();
  v105 = v11;
  v106 = v17;
  v88 = v11;
  v18 = v17;
  v89 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v20);
  v87 = &v70 - v21;
  v105 = v11;
  v106 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1BD0DDEBC();
  v83 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeMetadata2;
  v106 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v107 = v22;
  v108 = v23;
  v85 = v22;
  v25 = v23;
  v84 = v23;
  v26 = swift_getOpaqueTypeMetadata2();
  v91 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v86 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57548);
  v105 = OpaqueTypeMetadata2;
  v106 = v24;
  v107 = v22;
  v108 = v25;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1BD0DE4F4(&qword_1EBD57550, &qword_1EBD57548);
  v72 = v26;
  v105 = v26;
  v106 = v29;
  v107 = v30;
  v108 = v31;
  v32 = v30;
  v74 = v30;
  v33 = v31;
  v73 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v80 = v34;
  v90 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v76 = &v70 - v36;
  v37 = type metadata accessor for MultiHyperLinkDetailSheet();
  v79 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
  v78 = v38;
  v105 = v26;
  v106 = v29;
  v107 = v32;
  v108 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1BD8B5174(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
  v71 = v40;
  v41 = sub_1BD10CC54();
  v105 = v34;
  v106 = v37;
  v107 = v38;
  v108 = v39;
  v109 = v40;
  v110 = v41;
  v42 = v41;
  v81 = MEMORY[0x1E697D530];
  v77 = swift_getOpaqueTypeMetadata2();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v43);
  v70 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v75 = &v70 - v47;
  v48 = v94;
  v49 = v99;
  sub_1BD8B2E7C(v94, v14);
  v50 = v95;
  sub_1BE04FDB4();
  v51 = v87;
  v52 = v88;
  sub_1BE050E14();
  (*(v96 + 8))(v50, v98);
  (*(v93 + 8))(v14, v52);
  v53 = v49[1];
  v105 = *v49;
  v106 = v53;
  v54 = v86;
  v55 = v83;
  sub_1BE050B74();
  (*(v92 + 8))(v51, v55);
  v56 = *(v48 + 24);
  v102 = v97;
  v103 = v56;
  v104 = v49;
  v57 = v76;
  v58 = v72;
  sub_1BE051024();
  (*(v91 + 8))(v54, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  v59 = v100;
  sub_1BE0516C4();
  v60 = v42;
  v61 = v71;
  v62 = v70;
  v63 = v80;
  v64 = v79;
  v65 = v78;
  sub_1BE050F74();
  sub_1BD0DE53C(v59, &qword_1EBD393E8);
  (*(v90 + 8))(v57, v63);
  v105 = v63;
  v106 = v64;
  v107 = v65;
  v108 = v39;
  v109 = v61;
  v110 = v60;
  swift_getOpaqueTypeConformance2();
  v66 = v75;
  v67 = v77;
  sub_1BD147308(v62);
  v68 = *(v82 + 8);
  v68(v62, v67);
  sub_1BD147308(v66);
  return (v68)(v66, v67);
}

uint64_t sub_1BD8B2E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v3 = sub_1BE04FF64();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6981840];
  v46 = MEMORY[0x1E6981840];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57538);
  v34 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v47 = sub_1BE051854();
  v48 = v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57540);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  v31[1] = swift_getWitnessTable();
  v7 = sub_1BE051854();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v31 - v9;
  WitnessTable = swift_getWitnessTable();
  v46 = v7;
  v47 = WitnessTable;
  v31[2] = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v13);
  v15 = v31 - v14;
  sub_1BE0500D4();
  v16 = sub_1BE04EBD4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v31 - v23;
  v25 = *(v35 + 24);
  v41 = v34;
  v42 = v25;
  v43 = v36;
  sub_1BE04F7B4();
  sub_1BE051844();
  v26 = v37;
  sub_1BE04FF54();
  sub_1BE050D14();
  (*(v38 + 8))(v26, v39);
  (*(v33 + 8))(v10, v7);
  sub_1BE052434();
  v46 = v7;
  v47 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  (*(v32 + 8))(v15, OpaqueTypeMetadata2);
  v28 = sub_1BD8B5174(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v44 = OpaqueTypeConformance2;
  v45 = v28;
  swift_getWitnessTable();
  sub_1BD147308(v20);
  v29 = *(v17 + 8);
  v29(v20, v16);
  sub_1BD147308(v24);
  return (v29)(v24, v16);
}

uint64_t sub_1BD8B33B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57558);
  MEMORY[0x1EEE9AC00](v27, v7);
  v25 = &v25 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57560);
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v10);
  v12 = &v25 - v11;
  v13 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57568);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v25 - v18;
  sub_1BE04FB04();
  v32 = a2;
  v33 = a3;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57570);
  sub_1BD8B51D4();
  sub_1BE04E424();
  sub_1BE04FB14();
  v29 = a2;
  v30 = a3;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57580);
  sub_1BD8B52C8();
  sub_1BE04E424();
  v20 = *(v27 + 48);
  v21 = v25;
  (*(v16 + 16))(v25, v19, v15);
  v22 = &v21[v20];
  v23 = v26;
  (*(v9 + 16))(v22, v12, v26);
  sub_1BE04F854();
  (*(v9 + 8))(v12, v23);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1BD8B36E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  sub_1BE04E1B4();
  v9 = sub_1BE04E1D4();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  type metadata accessor for PaymentOfferAmountEntryView();
  sub_1BE048964();
  sub_1BE0516F4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
  sub_1BE050DE4();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD8B3930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for PaymentOfferAmountEntryView();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v44 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57598);
  MEMORY[0x1EEE9AC00](v52, v17);
  v49 = &v43 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575A0);
  MEMORY[0x1EEE9AC00](v50, v19);
  v21 = &v43 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v22 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v23);
  v25 = &v43 - v24;
  if (*(a1 + *(v5 + 60)) == 1)
  {
    sub_1BE04E4F4();
    v26 = v51;
    (*(v22 + 16))(v21, v25, v51);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD8B5380();
    sub_1BE04F9A4();
    return (*(v22 + 8))(v25, v26);
  }

  else
  {
    v28 = a1;
    sub_1BE04E1C4();
    v29 = sub_1BE04E1D4();
    (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
    v30 = v44;
    (*(v6 + 16))(v44, v28, v5);
    v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v32 = swift_allocObject();
    v33 = v46;
    *(v32 + 16) = v45;
    *(v32 + 24) = v33;
    (*(v6 + 32))(v32 + v31, v30, v5);
    sub_1BE0516F4();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    v34 = v49;
    v35 = v48;
    sub_1BE050DE4();

    (*(v47 + 8))(v16, v35);
    v36 = (v28 + *(v5 + 84));
    v37 = *v36;
    v38 = *(v36 + 1);
    v55 = v37;
    v56 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    v39 = v54;
    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    v42 = (v34 + *(v52 + 36));
    *v42 = KeyPath;
    v42[1] = sub_1BD10DF54;
    v42[2] = v41;
    sub_1BD0DE19C(v34, v21, &qword_1EBD57598);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD8B5380();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v34, &qword_1EBD57598);
  }
}

uint64_t sub_1BD8B3F58(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferAmountEntryView();
  LOBYTE(v5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  sub_1BE04E234();
  v3 = *(a1 + *(v2 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516A4();
  return v3(v5, v6, v7);
}

uint64_t sub_1BD8B402C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

uint64_t sub_1BD8B406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57538);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051854();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v22 - v14;
  sub_1BE04F7B4();
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a1;
  sub_1BE051844();
  WitnessTable = swift_getWitnessTable();
  sub_1BD147308(v11);
  v22[0] = *(v8 + 8);
  (v22[0])(v11, v7);
  v17 = type metadata accessor for PaymentOfferAmountEntryView();
  v18 = sub_1BD8B4AC4(v17, v36);
  v33 = 0;
  v34 = 1;
  v35[0] = &v33;
  (*(v8 + 16))(v11, v15, v7, v18);
  v31 = 0;
  v32 = 1;
  v35[1] = v11;
  v35[2] = &v31;
  v28 = v36[4];
  v29 = v36[5];
  v30 = v37;
  v24 = v36[0];
  v25 = v36[1];
  v26 = v36[2];
  v27 = v36[3];
  v35[3] = &v24;
  sub_1BD0DE19C(v36, v38, &qword_1EBD57540);
  v23[0] = MEMORY[0x1E6981840];
  v23[1] = v7;
  v23[2] = MEMORY[0x1E6981840];
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57540);
  v22[8] = MEMORY[0x1E6981838];
  v22[9] = WitnessTable;
  v22[10] = MEMORY[0x1E6981838];
  v22[11] = sub_1BD8B5468();
  sub_1BD13A4C4(v35, 4uLL, v23);
  sub_1BD0DE53C(v36, &qword_1EBD57540);
  v19 = v15;
  v20 = v22[0];
  (v22[0])(v19, v7);
  v38[4] = v28;
  v38[5] = v29;
  v39 = v30;
  v38[0] = v24;
  v38[1] = v25;
  v38[2] = v26;
  v38[3] = v27;
  sub_1BD0DE53C(v38, &qword_1EBD57540);
  return v20(v11, v7);
}

uint64_t sub_1BD8B43B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57538);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v26 - v20;
  v22 = type metadata accessor for PaymentOfferAmountEntryView();
  sub_1BD8B45D4(v22, v23, v21);
  sub_1BD147308(a1 + *(v22 + 52));
  sub_1BD0BEF20(v21, v17);
  v28[0] = v17;
  (*(v7 + 16))(v9, v13, a2);
  v28[1] = v9;
  v27[0] = v14;
  v27[1] = a2;
  v26[2] = sub_1BD8B5604();
  v26[3] = a3;
  sub_1BD13A4C4(v28, 2uLL, v27);
  v24 = *(v7 + 8);
  v24(v13, a2);
  sub_1BD0BEF90(v21);
  v24(v9, a2);
  return sub_1BD0BEF90(v17);
}

uint64_t sub_1BD8B45D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v66 = a3;
  v6 = *(a1 - 8);
  v67 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + *(v9 + 72));
  v11 = v10[1];
  v75[0] = *v10;
  v75[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516C4();
  v12 = v3 + *(a1 + 76);
  v13 = *(v12 + 16);
  v68[0] = *v12;
  *&v68[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516C4();
  v57 = v75[0];
  v56 = *(&v75[1] + 1);
  v52 = *&v75[1];
  v68[0] = *(v3 + *(a1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F28);
  sub_1BE0516C4();
  v55 = v75[0];
  v14 = *(v3 + 24);
  v53 = *(v3 + 16);
  v54 = *&v75[1];
  v48 = v14;
  sub_1BE048C84();
  v15 = MEMORY[0x1BFB403C0](0);
  v49 = v16;
  v50 = v15;
  v51 = v17;
  v18 = MEMORY[0x1BFB403C0](0);
  v45 = v19;
  v46 = v18;
  v47 = v20;
  v73 = *(v3 + 32);
  v74 = *(v3 + 48);
  v71 = *(v3 + 52);
  v72 = *(v3 + 68);
  v21 = (v3 + *(a1 + 84));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v68[0]) = v22;
  *(&v68[0] + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v43 = *(&v75[0] + 1);
  v44 = *&v75[0];
  v42 = LOBYTE(v75[1]);
  v24 = *(v3 + 72);
  v65 = *(v6 + 16);
  v58 = v8;
  v65(v8, v3, a1);
  v64 = *(v6 + 80);
  v25 = (v64 + 32) & ~v64;
  v59 = v25;
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  v62 = *(a1 + 24);
  v28 = v62;
  v63 = v27;
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  v29 = *(v6 + 32);
  v60 = v6 + 32;
  v61 = v29;
  v29(v26 + v25, v8, a1);
  KeyPath = swift_getKeyPath();
  v68[0] = v68[17];
  v68[1] = v68[18];
  LODWORD(v68[2]) = v69;
  v70 = 0;
  *(&v68[2] + 8) = v57;
  *(&v68[3] + 1) = v52;
  *&v68[4] = v56;
  *(&v68[4] + 8) = v55;
  *(&v68[5] + 1) = v54;
  *&v68[6] = v53;
  *(&v68[6] + 1) = v48;
  *&v68[7] = v50;
  *(&v68[7] + 1) = v49;
  *(&v68[8] + 4) = v46;
  *(&v68[8] + 12) = v45;
  LODWORD(v68[8]) = v51;
  DWORD1(v68[9]) = v47;
  *(&v68[9] + 1) = 0;
  v68[10] = v73;
  LODWORD(v68[11]) = v74;
  DWORD1(v68[12]) = v72;
  *(&v68[11] + 4) = v71;
  *(&v68[12] + 1) = v44;
  *&v68[13] = v43;
  BYTE8(v68[13]) = v42;
  *&v68[14] = v24;
  *(&v68[14] + 1) = sub_1BD8B56CC;
  *&v68[15] = v26;
  WORD4(v68[15]) = 257;
  BYTE10(v68[15]) = 0;
  *&v68[16] = KeyPath;
  BYTE8(v68[16]) = 0;
  *(&v68[16] + 9) = 256;
  v31 = (v4 + *(a1 + 88));
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v31) = v31[16];
  LOBYTE(v75[0]) = v32;
  *(&v75[0] + 1) = v33;
  LOBYTE(v75[1]) = v31;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  sub_1BE04E244();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F48);
  sub_1BD7A12F4();
  v34 = v66;
  sub_1BE050FC4();

  memcpy(v75, v68, 0x10BuLL);
  sub_1BD0DE53C(v75, &qword_1EBD52F48);
  v35 = v58;
  v65(v58, v4, a1);
  v36 = v59;
  v37 = swift_allocObject();
  v38 = v62;
  *(v37 + 16) = v63;
  *(v37 + 24) = v38;
  v61(v37 + v36, v35, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57538);
  v40 = (v34 + *(result + 36));
  *v40 = sub_1BD8B59C8;
  v40[1] = v37;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

double sub_1BD8B4AC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, v3);
  v11 = *(v10 + *(v9 + 64));
  if (v11)
  {
    (*(v6 + 16))(&v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = *(a1 + 16);
    (*(v6 + 32))(v13 + v12, &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    v15[5] = sub_1BD8B5578;
    v15[6] = v13;
    aBlock[4] = sub_1BD3A376C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_202;
    v16 = _Block_copy(aBlock);
    v17 = v11;
    sub_1BE048964();

    v18 = [v14 hyperlinkSourcesFromApplyFooter:v17 linkTapped:v16];
    _Block_release(v16);
    if (v18)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8);
      v19 = sub_1BE052744();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v25 = [v17 footerText];
    v21 = sub_1BE052434();
    v22 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v28 = sub_1BE050204();
    *(inited + 32) = v28;
    v29 = sub_1BE050224();
    *(inited + 33) = v29;
    v30 = sub_1BE0501F4();
    *(inited + 34) = v30;
    v31 = sub_1BE050214();
    sub_1BE050214();
    if (sub_1BE050214() != v28)
    {
      v31 = sub_1BE050214();
    }

    sub_1BE050214();
    if (sub_1BE050214() != v29)
    {
      v31 = sub_1BE050214();
    }

    sub_1BE050214();
    if (sub_1BE050214() != v30)
    {
      v31 = sub_1BE050214();
    }

    LOBYTE(aBlock[0]) = 0;
    v20 = 1;
    v35 = 1;
    v24 = v31;
    v23 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v24;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = v23;
  return result;
}

uint64_t sub_1BD8B4E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + *(type metadata accessor for PaymentOfferAmountEntryView() + 72));
  v5 = v4[1];
  v9[0] = *v4;
  v9[1] = v5;
  v7 = *v4;
  v8 = v4[1];
  sub_1BD0DE19C(v9, v10, &qword_1EBD42500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42500);
  sub_1BE0516B4();
  v10[0] = v7;
  v10[1] = v8;
  return sub_1BD0DE53C(v10, &qword_1EBD42500);
}

uint64_t sub_1BD8B4F48()
{
  type metadata accessor for PaymentOfferAmountEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570);
  return sub_1BE04E234();
}

uint64_t sub_1BD8B4FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04AA64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  type metadata accessor for PaymentOfferAmountEntryView();
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

uint64_t sub_1BD8B5174(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8B51D4()
{
  result = qword_1EBD57578;
  if (!qword_1EBD57578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57570);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    sub_1BD8B5174(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57578);
  }

  return result;
}

unint64_t sub_1BD8B52C8()
{
  result = qword_1EBD57588;
  if (!qword_1EBD57588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57580);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD8B5380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57588);
  }

  return result;
}

unint64_t sub_1BD8B5380()
{
  result = qword_1EBD57590;
  if (!qword_1EBD57590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57598);
    sub_1BD8B51D4();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57590);
  }

  return result;
}

unint64_t sub_1BD8B5468()
{
  result = qword_1EBD575A8;
  if (!qword_1EBD575A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57540);
    sub_1BD8B54EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD575A8);
  }

  return result;
}

unint64_t sub_1BD8B54EC()
{
  result = qword_1EBD43EA0;
  if (!qword_1EBD43EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43E98);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43EA0);
  }

  return result;
}

uint64_t sub_1BD8B5578(uint64_t a1)
{
  type metadata accessor for PaymentOfferAmountEntryView();

  return sub_1BD8B4FC4(a1);
}

unint64_t sub_1BD8B5604()
{
  result = qword_1EBD575B0;
  if (!qword_1EBD575B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F48);
    sub_1BD7A12F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD575B0);
  }

  return result;
}

uint64_t sub_1BD8B56CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PaymentOfferAmountEntryView() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD8B4E84(a1, a2, a3, v8);
}

uint64_t objectdestroyTm_105()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PaymentOfferAmountEntryView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[15], v1);

  v4 = (v3 + v2[25]);
  v5 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1BE04AA64();
      (*(*(v6 - 8) + 8))(v4, v6);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  return swift_deallocObject();
}

uint64_t sub_1BD8B59E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PaymentOfferAmountEntryView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

id sub_1BD8B5AA4@<X0>(void *a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04A264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v11 = [v37 label];
  v12 = sub_1BE052434();
  v14 = v13;

  v38 = v12;
  v39 = v14;
  sub_1BE04A224();
  sub_1BD0DDEBC();
  v15 = sub_1BE053564();
  v35 = v16;
  v36 = v15;
  (*(v7 + 8))(v10, v6);

  v17 = sub_1BD8B5CD0(v37);
  v19 = v18;
  sub_1BD8B5FD0(v37);
  v21 = v20;
  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v24 = sub_1BD7C641C(0);
    v26 = v25;
  }

  else
  {

    v26 = 0;
  }

  v27 = sub_1BE04F4E4();
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 0;
  v29 = sub_1BE051234();
  v30 = v38;
  v31 = v35;
  *a3 = v36;
  *(a3 + 8) = v31;
  *(a3 + 16) = v17;
  *(a3 + 24) = v19;
  *(a3 + 32) = v21;
  *(a3 + 40) = v23;
  *(a3 + 48) = v24;
  *(a3 + 56) = v26;
  *(a3 + 64) = a2;
  *(a3 + 72) = v27;
  *(a3 + 80) = KeyPath;
  *(a3 + 88) = v30;
  *(a3 + 96) = v29;
  *(a3 + 104) = 0;
  v32 = v37;
  *(a3 + 112) = v37;

  return v32;
}

uint64_t sub_1BD8B5CD0(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = a1;
    v13 = sub_1BD7C51C0();
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = a1;
      v18 = [v16 deferredDate];
      sub_1BE04AEE4();

      v19 = sub_1BD8B6234(v11);
      v21 = v20;
      (*(v8 + 8))(v11, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
      v14 = sub_1BE04B714();

      (*(v3 + 8))(v6, v2);
      return v14;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return 0;
    }

    v12 = a1;
    v13 = sub_1BD59BFAC();
  }

  v14 = v13;

  return v14;
}

void sub_1BD8B5FD0(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  if ([v7 type] == 1)
  {

    (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
    v8 = PKPassKitBundle();
    if (v8)
    {
      v9 = v8;
      sub_1BE04B6F4();

      (*(v3 + 8))(v6, v2);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1BD7C4F84();
LABEL_8:

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1BD2DB880();
    goto LABEL_8;
  }

  v10 = [v7 amount];
  v11 = sub_1BE052404();
  v12 = PKFormattedCurrencyStringFromNumber();

  if (v12)
  {
    sub_1BE052434();

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1BD8B6234(uint64_t a1)
{
  v39 = a1;
  v1 = sub_1BE04ACA4();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04ABD4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AC64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AD84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v34 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v34 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v34 - v29;
  MEMORY[0x1BFB371E0](v28);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v9 + 8))(v12, v8);
  v31 = *(v14 + 8);
  v31(v17, v13);
  sub_1BE04ABC4();
  sub_1BE04AB64();
  (*(v34 + 8))(v7, v35);
  v31(v21, v13);
  v32 = v36;
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v37 + 8))(v32, v38);
  v31(v25, v13);
  sub_1BD7C6EE0();
  sub_1BE04AF44();
  v31(v30, v13);
  return v40;
}

unint64_t sub_1BD8B65C4()
{
  result = qword_1EBD575B8;
  if (!qword_1EBD575B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD575C0);
    sub_1BD8B6650();
    sub_1BD8B66A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD575B8);
  }

  return result;
}

unint64_t sub_1BD8B6650()
{
  result = qword_1EBD575C8;
  if (!qword_1EBD575C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD575C8);
  }

  return result;
}

unint64_t sub_1BD8B66A4()
{
  result = qword_1EBD575D0;
  if (!qword_1EBD575D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD575D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD575D0);
  }

  return result;
}

BOOL sub_1BD8B6708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04A264();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = (*(a2 + 32))(a1, a2, v7);
  v16[1] = v10;
  sub_1BE04A214();
  sub_1BD0DDEBC();
  v11 = sub_1BE053564();
  v13 = v12;
  (*(v5 + 8))(v9, v4);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  return v14 == 0;
}

uint64_t FeatureError.init(feature:error:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureError(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    if (!a2 || (v18 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0), sub_1BD8B8208(), !swift_dynamicCast()))
    {
LABEL_11:
      v15 = 1;
      return (*(v7 + 56))(a3, v15, 1, v6);
    }
  }

  else
  {
    if (a2)
    {
      v11 = sub_1BE04A844();
    }

    else
    {
      v11 = 0;
    }

    v12 = PKAccountDisplayableError();

    if (!v12)
    {
      goto LABEL_11;
    }

    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BD8B8208();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *v10 = v17;
  v13 = *(v6 + 20);
  v14 = sub_1BE04B824();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  sub_1BD8B853C(v10, a3, type metadata accessor for FeatureError);
  v15 = 0;
  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t sub_1BD8B6AC8(uint64_t (*a1)(void))
{
  v2 = sub_1BE04A844();
  v3 = a1();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE052434();

  return v4;
}

uint64_t FeatureError.matches(error:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v53 - v5;
  v7 = type metadata accessor for FeatureError(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0DE19C(a1, v6, &qword_1EBD416C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD416C0);
    v12 = 0;
    return v12 & 1;
  }

  sub_1BD8B853C(v6, v11, type metadata accessor for FeatureError);
  v13 = *v1;
  v14 = [v13 domain];
  v15 = sub_1BE052434();
  v17 = v16;

  if (v15 == sub_1BE052434() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_1BE053B84();

    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v21 = [v13 userInfo];
  v22 = sub_1BE052244();

  v23 = sub_1BE052434();
  if (!*(v22 + 16))
  {

    goto LABEL_15;
  }

  v25 = sub_1BD148F70(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1BD038CD0(*(v22 + 56) + 32 * v25, v55);

  sub_1BD8B8208();
  if (swift_dynamicCast())
  {

    v13 = v54;
  }

LABEL_16:
  v28 = *v11;
  v29 = [v28 domain];
  v30 = sub_1BE052434();
  v32 = v31;

  if (v30 == sub_1BE052434() && v32 == v33)
  {
  }

  else
  {
    v35 = sub_1BE053B84();

    if ((v35 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v36 = [v28 userInfo];
  v37 = sub_1BE052244();

  v38 = sub_1BE052434();
  if (*(v37 + 16))
  {
    v40 = sub_1BD148F70(v38, v39);
    v42 = v41;

    if (v42)
    {
      sub_1BD038CD0(*(v37 + 56) + 32 * v40, v55);

      sub_1BD8B8208();
      if (swift_dynamicCast())
      {

        v28 = v54;
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

LABEL_29:
  v43 = [v13 code];
  if (v43 == [v28 code])
  {
    v44 = [v13 domain];
    v45 = sub_1BE052434();
    v47 = v46;

    v48 = [v28 domain];
    v49 = sub_1BE052434();
    v51 = v50;

    if (v45 == v49 && v47 == v51)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1BE053B84();
    }
  }

  else
  {

    v12 = 0;
  }

  sub_1BD230994(v11);
  return v12 & 1;
}

uint64_t FeatureError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v30 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  v31 = type metadata accessor for FeatureError(0);
  v14 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v15);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0DE19C(a1, v13, &qword_1EBD47198);
  v18 = sub_1BE04B7C4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v13, 1, v18) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD47198);
LABEL_6:
    sub_1BD0DE53C(a1, &qword_1EBD47198);
    v24 = 1;
    v25 = v31;
    v26 = v32;
    return (*(v14 + 56))(v26, v24, 1, v25);
  }

  v21 = sub_1BE04B7A4();
  v29 = *(v19 + 8);
  v29(v13, v18);
  if (!v21)
  {
    goto LABEL_6;
  }

  *v17 = v21;
  sub_1BD0DE19C(a1, v9, &qword_1EBD47198);
  if (v20(v9, 1, v18) == 1)
  {
    sub_1BD0DE53C(a1, &qword_1EBD47198);
    sub_1BD0DE53C(v9, &qword_1EBD47198);
    v22 = sub_1BE04B824();
    v23 = v30;
    (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  }

  else
  {
    v23 = v30;
    sub_1BE04B7B4();
    sub_1BD0DE53C(a1, &qword_1EBD47198);
    v29(v9, v18);
  }

  v27 = v31;
  v26 = v32;
  sub_1BD8B8254(v23, v17 + *(v31 + 20));
  sub_1BD8B853C(v17, v26, type metadata accessor for FeatureError);
  v25 = v27;
  v24 = 0;
  return (*(v14 + 56))(v26, v24, 1, v25);
}

uint64_t sub_1BD8B7484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1BE04A844();
  v5 = a3();

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1BE052434();

  return v6;
}

uint64_t sub_1BD8B74FC@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8);
  MEMORY[0x1BFB3E970](v6);
  v7 = type metadata accessor for FeatureError(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  result = sub_1BD0DE53C(v5, &qword_1EBD416C0);
  *a1 = v8;
  return result;
}

void sub_1BD8B75FC(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  if ((*a1 & 1) == 0)
  {
    v10 = type metadata accessor for FeatureError(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1BD0DE19C(v9, v5, &qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8);
    sub_1BE0518F4();
    sub_1BD0DE53C(v9, &qword_1EBD416C0);
  }
}

uint64_t sub_1BD8B7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v21 = v19 - v5;
  v6 = type metadata accessor for ErrorAlertModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1BD8B88FC(v2, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ErrorAlertModifier);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BD8B853C(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ErrorAlertModifier);
  sub_1BD8B88FC(v2, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ErrorAlertModifier);
  v14 = sub_1BE052894();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_1BD8B853C(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11, type metadata accessor for ErrorAlertModifier);
  sub_1BE051934();
  v19[1] = v25;
  v20 = v26;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8);
  v17 = v21;
  MEMORY[0x1BFB3E970](v16);
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57618);
  type metadata accessor for FeatureError(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD57620, &qword_1EBD57618);
  sub_1BD8B8858(&qword_1EBD57628);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BD12E194();
  sub_1BE050ED4();

  return sub_1BD0DE53C(v17, &qword_1EBD416C0);
}

id sub_1BD8B7B04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = type metadata accessor for ErrorAlertModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69B80D0], v10, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v11 + 8))(v15, v10);
    v24[2] = v18;
    v24[3] = v20;
    sub_1BE04E1B4();
    v21 = sub_1BE04E1D4();
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    sub_1BD8B88FC(v24[0], v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ErrorAlertModifier);
    v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v23 = swift_allocObject();
    sub_1BD8B853C(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ErrorAlertModifier);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8B7DF8(uint64_t a1)
{
  v2 = type metadata accessor for FeatureError(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25 - v13;
  v15 = sub_1BE04B824();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8);
  MEMORY[0x1BFB3E970](v20);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1BD0DE53C(v10, &qword_1EBD416C0);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_4:
    sub_1BD0DE53C(v14, &unk_1EBD3F6C0);
    goto LABEL_5;
  }

  sub_1BD8B88FC(v10, v6, type metadata accessor for FeatureError);
  sub_1BD0DE53C(v10, &qword_1EBD416C0);
  sub_1BD0DE19C(&v6[*(v2 + 20)], v14, &unk_1EBD3F6C0);
  sub_1BD230994(v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  (*(v16 + 32))(v19, v14, v15);
  v23 = sub_1BE052434();
  _s9PassKitUI9AnalyticsO31trackNearbyPeerPaymentButtonTap_13analyticsInfoySS_0aB4Core0fgH0O0dL0VtFZ_0(v23, v24);

  (*(v16 + 8))(v19, v15);
LABEL_5:
  result = type metadata accessor for ErrorAlertModifier(0);
  v22 = (a1 + *(result + 20));
  if (*v22)
  {
    return (*v22)();
  }

  return result;
}

uint64_t sub_1BD8B8160@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE04A844();
  v3 = MEMORY[0x1BFB42D10]();

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v8 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

unint64_t sub_1BD8B8208()
{
  result = qword_1EBD45E80;
  if (!qword_1EBD45E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45E80);
  }

  return result;
}

uint64_t sub_1BD8B8254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD8B8320()
{
  sub_1BD8B8208();
  if (v0 <= 0x3F)
  {
    sub_1BD8B83A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD8B83A4()
{
  if (!qword_1EBD575F0)
  {
    sub_1BE04B824();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD575F0);
    }
  }
}

void sub_1BD8B8444()
{
  sub_1BD553DEC(319, &qword_1EBD57610, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1BD553DEC(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD8B853C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8B85A4@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for ErrorAlertModifier(0);

  return sub_1BD8B74FC(a1);
}

uint64_t objectdestroyTm_106()
{
  v1 = type metadata accessor for ErrorAlertModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = (v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD575F8) + 32));
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

void sub_1BD8B87DC(_BYTE *a1)
{
  type metadata accessor for ErrorAlertModifier(0);

  sub_1BD8B75FC(a1);
}

uint64_t sub_1BD8B8858(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeatureError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD8B889C()
{
  v1 = *(type metadata accessor for ErrorAlertModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD8B7DF8(v2);
}

uint64_t sub_1BD8B88FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void AccountAutomaticPaymentsAmountView.init(model:dismissAction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE048964();
  sub_1BE051694();
  v8 = v39;
  v9 = v40;
  [*(a1 + 48) featureIdentifier];
  v37 = sub_1BE04C124();
  v38 = v10;
  if ([*(a1 + 48) featureIdentifier] == 2)
  {
    v11 = [*(a1 + 48) account];
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = v11;
    v13 = [v11 creditDetails];

    if (!v13)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v14 = [v13 installmentPlans];

    if (v14)
    {
      sub_1BD8BAE78();
      sub_1BD8BB874(&qword_1EBD57638, sub_1BD8BAE78);
      v15 = sub_1BE052A34();

      if ((v15 & 0xC000000000000001) != 0)
      {
        if (sub_1BE053704())
        {
          v31 = v40;
          v32 = v39;
          v33 = a2;
          v34 = a3;
          swift_unknownObjectRetain();
          sub_1BE0536B4();
          sub_1BE052A74();
          v16 = v39;
          v17 = v40;
          v18 = v41;
          v19 = v42;
          v20 = v43;
LABEL_13:
          v30 = v18;
          v35 = v16;
          while (1)
          {
            if (v16 < 0)
            {
              if (!sub_1BE053744() || (swift_dynamicCast(), (v27 = v36) == 0))
              {
LABEL_29:
                sub_1BD0D45FC();

                goto LABEL_30;
              }
            }

            else
            {
              v25 = v19;
              v26 = v20;
              if (!v20)
              {
                while (1)
                {
                  v19 = v25 + 1;
                  if (__OFADD__(v25, 1))
                  {
                    break;
                  }

                  if (v19 >= ((v18 + 64) >> 6))
                  {
                    goto LABEL_29;
                  }

                  v26 = *(v17 + 8 * v19);
                  ++v25;
                  if (v26)
                  {
                    goto LABEL_19;
                  }
                }

                __break(1u);
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_19:
              v20 = (v26 - 1) & v26;
              v27 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
              if (!v27)
              {
                goto LABEL_29;
              }
            }

            v28 = [v27 isComplete];

            v16 = v35;
            if ((v28 & 1) == 0)
            {
              sub_1BD0D45FC();

              [*(a1 + 48) featureIdentifier];
              v29 = sub_1BE04C124();
              MEMORY[0x1BFB3F610](v29);

              MEMORY[0x1BFB3F610](2570, 0xE200000000000000);

LABEL_30:
              a2 = v33;
              a3 = v34;
              v9 = v31;
              v8 = v32;
              goto LABEL_28;
            }
          }
        }
      }

      else if (*(v15 + 16))
      {
        v31 = v40;
        v32 = v39;
        v33 = a2;
        v34 = a3;
        v21 = -1 << *(v15 + 32);
        v17 = v15 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(v15 + 56);
        sub_1BE048C84();
        v24 = v15;
        v19 = 0;
        v16 = v24;
        goto LABEL_13;
      }
    }
  }

LABEL_28:
  *a4 = v8;
  a4[1] = v9;
  a4[2] = v37;
  a4[3] = v38;
  a4[4] = a2;
  a4[5] = a3;
}

uint64_t AccountAutomaticPaymentsAmountView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v57 = sub_1BE04F5B4();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v3);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04FB94();
  v54 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57640);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v50 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57648);
  MEMORY[0x1EEE9AC00](v51, v14);
  v16 = &v50 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57650);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v17);
  v19 = &v50 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57658);
  MEMORY[0x1EEE9AC00](v50, v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57660);
  v59 = *(v23 - 8);
  v60 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v58 = &v50 - v25;
  v26 = v2[1];
  v67[0] = *v2;
  v67[1] = v26;
  v67[2] = v2[2];
  v62 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57668);
  sub_1BD8BAECC();
  sub_1BE0504E4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD576D8, &qword_1EBD57640);
  sub_1BE050DE4();

  (*(v10 + 8))(v13, v9);
  sub_1BE04FB84();
  v27 = sub_1BD8BB318();
  v28 = MEMORY[0x1E697C750];
  v29 = v51;
  sub_1BE051144();
  v30 = v8;
  v31 = v50;
  (*(v54 + 8))(v30, v5);
  sub_1BD0DE53C(v16, &qword_1EBD57648);
  v63 = v29;
  v64 = v5;
  v65 = v27;
  v66 = v28;
  swift_getOpaqueTypeConformance2();
  v32 = v52;
  sub_1BE050DF4();
  (*(v53 + 8))(v19, v32);
  v33 = v55;
  sub_1BE04F584();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576E8) + 36);
  v35 = v56;
  v36 = v57;
  (*(v56 + 16))(&v22[v34], v33, v57);
  v37 = v35;
  v38 = *(v35 + 56);
  v38(&v22[v34], 0, 1, v36);
  KeyPath = swift_getKeyPath();
  v40 = &v22[*(v31 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v37 + 32))(v40 + v41, v33, v36);
  v38(v40 + v41, 0, 1, v36);
  *v40 = KeyPath;
  sub_1BE0501C4();
  if (qword_1EBD36DD0 != -1)
  {
    swift_once();
  }

  v42 = sub_1BD8BB4CC();
  v43 = v58;
  sub_1BE050904();
  v44 = sub_1BD0DE53C(v22, &qword_1EBD57658);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v50 - 2) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8);
  v63 = v31;
  v64 = v42;
  swift_getOpaqueTypeConformance2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0);
  v47 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  v63 = v46;
  v64 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  sub_1BE051024();
  return (*(v59 + 8))(v43, v48);
}

uint64_t sub_1BD8B9560(_OWORD *a1)
{
  v6[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v2 = *(v7 + 16);
  sub_1BE048C84();

  v7 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = a1[2];
  sub_1BD8BB738(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57680);
  sub_1BD0DE4F4(&qword_1EBD57710, &qword_1EBD57708);
  sub_1BD8BAF50();
  return sub_1BE0519C4();
}

uint64_t sub_1BD8B96D4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576A0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v11 = *a1;
  v12 = a2;
  sub_1BD8BA6AC(v11, &v10[-v6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57718);
  sub_1BD8BB0B8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576A8);
  v8 = sub_1BD8BB178();
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A24();
}

uint64_t sub_1BD8B9810@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576D0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576A8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v21 - v15;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57720);
  sub_1BD8B9AD4(a1, a2, &v8[*(v17 + 44)]);
  v21[0] = a1;
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD576C8, &qword_1EBD576D0);
  sub_1BE050DE4();

  sub_1BD0DE53C(v8, &qword_1EBD576D0);
  sub_1BD8BB780(v12, v16);
  v16[*(v13 + 36)] = 0;
  v18 = swift_allocObject();
  v19 = a2[1];
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 48) = a2[2];
  *(v18 + 64) = v21[0];
  sub_1BD8BB738(a2, v22);
  sub_1BD8BB178();
  sub_1BE0509D4();

  return sub_1BD0DE53C(v16, &qword_1EBD576A8);
}

uint64_t sub_1BD8B9AD4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v30 = sub_1BE04C744();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE04C734();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26[-v16];
  v28 = sub_1BE04F7B4();
  v49 = 0;
  sub_1BD8B9EB8(a1, a2, v40);
  memcpy(v50, v40, sizeof(v50));
  memcpy(v51, v40, 0x120uLL);
  sub_1BD0DE19C(v50, v39, &qword_1EBD467B0);
  sub_1BD0DE53C(v51, &qword_1EBD467B0);
  memcpy(&v48[7], v50, 0x120uLL);
  v18 = v49;
  v27 = v49;
  sub_1BE051CD4();
  sub_1BE04EE54();
  (*(v5 + 104))(v8, *MEMORY[0x1E69BC950], v30);
  sub_1BE04C724();
  v31 = 1;
  v19 = *(v10 + 16);
  v19(v13, v17, v9);
  v20 = v28;
  v39[0] = v28;
  v39[1] = 0;
  LOBYTE(v39[2]) = v18;
  memcpy(&v39[2] + 1, v48, 0x127uLL);
  *&v39[47] = v36;
  *&v39[49] = v37;
  *&v39[51] = v38;
  *&v39[39] = v32;
  *&v39[41] = v33;
  *&v39[43] = v34;
  *&v39[45] = v35;
  v21 = v29;
  memcpy(v29, v39, 0x1A8uLL);
  v22 = v31;
  v21[53] = 0;
  *(v21 + 432) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57728);
  v19(v21 + *(v23 + 64), v13, v9);
  sub_1BD0DE19C(v39, v40, &qword_1EBD55C50);
  v24 = *(v10 + 8);
  v24(v17, v9);
  v24(v13, v9);
  v40[0] = v20;
  v40[1] = 0;
  LOBYTE(v40[2]) = v27;
  memcpy(&v40[2] + 1, v48, 0x127uLL);
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  return sub_1BD0DE53C(v40, &qword_1EBD55C50);
}

uint64_t sub_1BD8B9EB8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v111 = *a2;
  v89 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v78[0] + 48) featureIdentifier];

  if (a1 == 1 || a1 == 3 || a1 == 2)
  {
    v4 = sub_1BE04C124();
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *&v89 = v4;
  *(&v89 + 1) = v5;
  sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  if (qword_1EBD36DE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BE0505F4();
  v13 = v12;
  v15 = v14;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  if (qword_1EBD36DE8 != -1)
  {
    swift_once();
  }

  sub_1BE048964();
  v16 = sub_1BE050574();
  v48 = v17;
  v49 = v16;
  v19 = v18;
  v50 = v20;
  sub_1BD0DDF10(v11, v13, v15 & 1);

  v45 = sub_1BE051CE4();
  v46 = v21;
  LOBYTE(v44) = 1;
  LOBYTE(v43) = 1;
  sub_1BE04EE54();
  v47 = v19 & 1;
  v110 = v19 & 1;
  v89 = v111;
  sub_1BE0516A4();
  [*(v78[0] + 48) featureIdentifier];

  if (a1 == 1 || a1 == 3 || a1 == 2)
  {
    v22 = sub_1BE04C124();
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  *&v89 = v22;
  *(&v89 + 1) = v23;
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  v29 = PKOBKListSubtitleCellSubtitleFont(0);
  sub_1BE050484();
  v30 = sub_1BE0505F4();
  v32 = v31;
  v34 = v33;

  sub_1BD0DDF10(v24, v26, v28 & 1);

  if (qword_1EBD36DF0 != -1)
  {
    swift_once();
  }

  *&v89 = qword_1EBDAB558;
  sub_1BE048964();
  v35 = sub_1BE050574();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1BD0DDF10(v30, v32, v34 & 1);

  sub_1BE051CE4();
  sub_1BE04EE54();
  v101 = v39 & 1;
  *&v60 = v49;
  *(&v60 + 1) = v48;
  LOBYTE(v61) = v47;
  *(&v61 + 1) = *v109;
  DWORD1(v61) = *&v109[3];
  *(&v61 + 1) = v50;
  v66 = v106;
  v67 = v107;
  v68 = v108;
  v62 = v102;
  v63 = v103;
  v64 = v104;
  v65 = v105;
  __src[6] = v106;
  __src[7] = v107;
  __src[2] = v102;
  __src[3] = v103;
  __src[4] = v104;
  __src[5] = v105;
  __src[0] = v60;
  __src[1] = v61;
  *&v69 = v35;
  *(&v69 + 1) = v37;
  LOBYTE(v70) = v39 & 1;
  *(&v70 + 1) = *v100;
  DWORD1(v70) = *&v100[3];
  *(&v70 + 1) = v41;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  __src[12] = v54;
  __src[13] = v55;
  __src[10] = v70;
  __src[11] = v53;
  __src[14] = v56;
  __src[15] = v57;
  __src[16] = v58;
  __src[17] = v59;
  __src[8] = v108;
  __src[9] = v69;
  memcpy(a3, __src, 0x120uLL);
  v78[0] = v35;
  v78[1] = v37;
  v79 = v39 & 1;
  *v80 = *v100;
  *&v80[3] = *&v100[3];
  v81 = v41;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  sub_1BD0DE19C(&v60, &v89, &qword_1EBD3E090);
  sub_1BD0DE19C(&v69, &v89, &qword_1EBD3E090);
  sub_1BD0DE53C(v78, &qword_1EBD3E090);
  *&v89 = v49;
  *(&v89 + 1) = v48;
  v90 = v47;
  *v91 = *v109;
  *&v91[3] = *&v109[3];
  v92 = v50;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v93 = v102;
  v94 = v103;
  v95 = v104;
  return sub_1BD0DE53C(&v89, &qword_1EBD3E090);
}

uint64_t sub_1BD8BA560(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  if (*(v6 + 24) == a2)
  {
    sub_1BDA20DE0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BD8BB874(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8BA6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54268);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = &v29 - v8;
  if (a1 == 3)
  {
    v30 = a2;
    v31 = v6;
    v10 = sub_1BE04F7B4();
    v41 = 0;
    sub_1BD8BAA18(&v47);
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v46[0] = v47;
    v46[1] = v48;
    v46[2] = v49;
    v46[3] = v50;
    sub_1BD0DE19C(&v42, &v32, &qword_1EBD54278);
    sub_1BD0DE53C(v46, &qword_1EBD54278);
    *&v40[7] = v42;
    *&v40[23] = v43;
    *&v40[39] = v44;
    *&v40[55] = v45;
    v11 = v41;
    v12 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    LOBYTE(v47) = 0;
    v21 = sub_1BE0501F4();
    sub_1BE04E1F4();
    *(&v33[1] + 1) = *&v40[16];
    *(&v33[2] + 1) = *&v40[32];
    *(&v33[3] + 1) = *&v40[48];
    v41 = 0;
    v32 = v10;
    LOBYTE(v33[0]) = v11;
    *&v33[4] = *&v40[63];
    *(v33 + 1) = *v40;
    BYTE8(v33[4]) = v12;
    *&v34 = v14;
    *(&v34 + 1) = v16;
    *&v35 = v18;
    *(&v35 + 1) = v20;
    LOBYTE(v36) = 0;
    BYTE8(v36) = v21;
    *&v37 = v22;
    *(&v37 + 1) = v23;
    *&v38 = v24;
    *(&v38 + 1) = v25;
    v39 = 0;
    sub_1BE0501C4();
    if (qword_1EBD36DD8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541A0);
    sub_1BD7E3BFC();
    sub_1BE050A34();
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v51 = v33[3];
    v52 = v33[4];
    v53 = v34;
    v54 = v35;
    v47 = v32;
    v48 = v33[0];
    v49 = v33[1];
    v50 = v33[2];
    sub_1BD0DE53C(&v47, &qword_1EBD541A0);
    v26 = v30;
    (*(v31 + 32))(v30, v9, v4);
    return (*(v31 + 56))(v26, 0, 1, v4);
  }

  else
  {
    v28 = *(v6 + 56);

    return v28(a2, 1, 1, v4, v7);
  }
}

uint64_t sub_1BD8BAA18@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  [*(v17 + 48) featureIdentifier];

  sub_1BE04C124();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BE048C84();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v12 = v6 & 1;
  v18 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v15;
  sub_1BD0D7F18(v2, v4, v12);
  sub_1BE048C84();
  sub_1BD0D7F18(v9, v11, v14);
  sub_1BE048C84();
  sub_1BD0DDF10(v9, v11, v14);

  sub_1BD0DDF10(v2, v4, v18);
}

uint64_t sub_1BD8BABB0(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FAE4();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD8BAD9C(_OWORD *a1)
{
  v2 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04E1A4();
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  sub_1BD8BB738(a1, v9);
  return MEMORY[0x1BFB3E7A0](v5, sub_1BD8BB710, v6);
}

unint64_t sub_1BD8BAE78()
{
  result = qword_1EBD57630;
  if (!qword_1EBD57630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD57630);
  }

  return result;
}

unint64_t sub_1BD8BAECC()
{
  result = qword_1EBD57670;
  if (!qword_1EBD57670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57668);
    sub_1BD8BAF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57670);
  }

  return result;
}

unint64_t sub_1BD8BAF50()
{
  result = qword_1EBD57678;
  if (!qword_1EBD57678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57680);
    sub_1BD8BAFDC();
    sub_1BD734220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57678);
  }

  return result;
}

unint64_t sub_1BD8BAFDC()
{
  result = qword_1EBD57688;
  if (!qword_1EBD57688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57690);
    sub_1BD8BB0B8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576A8);
    sub_1BD8BB178();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57688);
  }

  return result;
}

unint64_t sub_1BD8BB0B8()
{
  result = qword_1EBD57698;
  if (!qword_1EBD57698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
    sub_1BD7E3BFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57698);
  }

  return result;
}

unint64_t sub_1BD8BB178()
{
  result = qword_1EBD576B0;
  if (!qword_1EBD576B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576A8);
    sub_1BD8BB230();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD576B0);
  }

  return result;
}

unint64_t sub_1BD8BB230()
{
  result = qword_1EBD576B8;
  if (!qword_1EBD576B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576C0);
    sub_1BD0DE4F4(&qword_1EBD576C8, &qword_1EBD576D0);
    sub_1BD8BB874(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD576B8);
  }

  return result;
}

unint64_t sub_1BD8BB318()
{
  result = qword_1EBD576E0;
  if (!qword_1EBD576E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57648);
    sub_1BD0DE4F4(&qword_1EBD576D8, &qword_1EBD57640);
    sub_1BD8BB874(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD576E0);
  }

  return result;
}

uint64_t sub_1BD8BB424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57700);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD57700);
  return MEMORY[0x1BFB3C220](v5);
}

unint64_t sub_1BD8BB4CC()
{
  result = qword_1EBD576F0;
  if (!qword_1EBD576F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57658);
    sub_1BD8BB584();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD576F0);
  }

  return result;
}

unint64_t sub_1BD8BB584()
{
  result = qword_1EBD576F8;
  if (!qword_1EBD576F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD576E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57648);
    sub_1BE04FB94();
    sub_1BD8BB318();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD576F8);
  }

  return result;
}

uint64_t sub_1BD8BB780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD576C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_107()
{

  return swift_deallocObject();
}

uint64_t sub_1BD8BB874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MerchantInfoRow()
{
  result = qword_1EBD57730;
  if (!qword_1EBD57730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8BB930()
{
  _s8MerchantVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD8BB9BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD8BB9BC()
{
  if (!qword_1EBD365E0)
  {
    type metadata accessor for PassEligibleRewardsInfo();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD365E0);
    }
  }
}

uint64_t sub_1BD8BBA30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_1BE04FF64();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57740);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57748);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57750);
  MEMORY[0x1EEE9AC00](v55, v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57758);
  v56 = *(v21 - 8);
  v57 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v54 = &v52 - v23;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57760);
  sub_1BD8BC01C(v2, &v13[*(v24 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v26 = sub_1BE0501E4();
  *(inited + 32) = v26;
  v27 = sub_1BE0501F4();
  *(inited + 33) = v27;
  v28 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v26)
  {
    v28 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v27)
  {
    v28 = sub_1BE050214();
  }

  type metadata accessor for MerchantInfoRow();
  sub_1BE04E1F4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1BD0DE204(v13, v17, &qword_1EBD57740);
  v37 = &v17[*(v14 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B69E0;
  v40 = *v2;
  v39 = v2[1];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1BD110550();
  *(v38 + 32) = v40;
  *(v38 + 40) = v39;
  v42 = v52;
  v41 = v53;
  (*(v52 + 104))(v9, *MEMORY[0x1E69B8068], v53);
  sub_1BE048C84();
  v43 = sub_1BE04B714();
  v45 = v44;

  (*(v42 + 8))(v9, v41);
  v62 = v43;
  v63 = v45;
  sub_1BD8BCF54();
  sub_1BD0DDEBC();
  sub_1BE050C34();

  sub_1BD0DE53C(v17, &qword_1EBD57748);
  v46 = v58;
  sub_1BE04FF44();
  v47 = sub_1BD8BD00C();
  v49 = v54;
  v48 = v55;
  sub_1BE050D14();
  (*(v59 + 8))(v46, v60);
  sub_1BD0DE53C(v20, &qword_1EBD57750);
  sub_1BE052434();
  v62 = v48;
  v63 = v47;
  swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_1BE050DE4();

  return (*(v56 + 8))(v49, v50);
}

uint64_t sub_1BD8BC01C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57780);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57788);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v45 = &v44 - v17;
  v18 = type metadata accessor for MerchantOriginIconImage();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57790);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v44 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v44 - v27;
  v29 = _s8MerchantVMa(0);
  sub_1BD129504(a1 + *(v29 + 20), &v21[*(v18 + 20)]);
  v30 = *a1;
  v31 = a1[1];
  *v21 = 1;
  v32 = &v21[*(v18 + 24)];
  *v32 = v30;
  v32[1] = v31;
  sub_1BD8BD0C8(&qword_1EBD39C20, type metadata accessor for MerchantOriginIconImage);
  sub_1BE048C84();
  sub_1BE050A24();
  sub_1BD8BD3A0(v21, type metadata accessor for MerchantOriginIconImage);
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57798);
  sub_1BD8BC460(a1, &v6[*(v33 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v6, v14, &qword_1EBD57780);
  v34 = &v14[*(v8 + 44)];
  v35 = v53;
  *(v34 + 4) = v52;
  *(v34 + 5) = v35;
  *(v34 + 6) = v54;
  v36 = v49;
  *v34 = v48;
  *(v34 + 1) = v36;
  v37 = v51;
  *(v34 + 2) = v50;
  *(v34 + 3) = v37;
  v38 = v45;
  sub_1BD0DE204(v14, v45, &qword_1EBD57788);
  v39 = v44;
  sub_1BD0DE19C(v28, v44, &qword_1EBD57790);
  v40 = v46;
  sub_1BD0DE19C(v38, v46, &qword_1EBD57788);
  v41 = v47;
  sub_1BD0DE19C(v39, v47, &qword_1EBD57790);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD577A0);
  sub_1BD0DE19C(v40, v41 + *(v42 + 48), &qword_1EBD57788);
  sub_1BD0DE53C(v38, &qword_1EBD57788);
  sub_1BD0DE53C(v28, &qword_1EBD57790);
  sub_1BD0DE53C(v40, &qword_1EBD57788);
  return sub_1BD0DE53C(v39, &qword_1EBD57790);
}

uint64_t sub_1BD8BC460@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v83 = v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v90 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v86 = v82 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD577A8);
  MEMORY[0x1EEE9AC00](v85, v12);
  v14 = v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD577B0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v87 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v92 = v82 - v20;
  v84 = a1;
  v21 = *a1;
  v22 = a1[1];
  v93 = v21;
  v94 = v22;
  v23 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v82[1] = v23;
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  sub_1BE050324();
  v29 = sub_1BE0505F4();
  v31 = v30;
  v33 = v32;

  sub_1BD0DDF10(v24, v26, v28 & 1);

  sub_1BE050384();
  v34 = sub_1BE050544();
  v36 = v35;
  LOBYTE(v26) = v37;
  sub_1BD0DDF10(v29, v31, v33 & 1);

  sub_1BE051224();
  v38 = sub_1BE050564();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_1BD0DDF10(v34, v36, v26 & 1);

  KeyPath = swift_getKeyPath();
  v46 = swift_getKeyPath();
  LOBYTE(v36) = v42 & 1;
  LOBYTE(v93) = v42 & 1;
  v47 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD577B8) + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
  v49 = *MEMORY[0x1E6980FA8];
  v50 = sub_1BE050554();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  *v14 = v38;
  *(v14 + 1) = v40;
  v14[16] = v36;
  *(v14 + 3) = v44;
  *(v14 + 4) = KeyPath;
  v51 = 1;
  v14[40] = 1;
  *(v14 + 6) = v46;
  *(v14 + 7) = 0x3FE6666666666666;
  v52 = swift_getKeyPath();
  v53 = &v14[*(v85 + 36)];
  *v53 = v52;
  *(v53 + 1) = 2;
  v53[16] = 0;
  sub_1BE052434();
  sub_1BD8BD110();
  sub_1BE050DE4();

  sub_1BD0DE53C(v14, &qword_1EBD577A8);
  v54 = sub_1BD8BCB78();
  if (v55)
  {
    v93 = v54;
    v94 = v55;
    v56 = sub_1BE0506C4();
    v58 = v57;
    v60 = v59;
    sub_1BE0502E4();
    v61 = sub_1BE0505F4();
    v63 = v62;
    v65 = v64;

    sub_1BD0DDF10(v56, v58, v60 & 1);

    sub_1BE051234();
    v66 = sub_1BE050564();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    sub_1BD0DDF10(v61, v63, v65 & 1);

    v73 = swift_getKeyPath();
    v93 = v66;
    v94 = v68;
    v70 &= 1u;
    v95 = v70;
    v96 = v72;
    v97 = v73;
    v98 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    v74 = v83;
    sub_1BE050DE4();

    sub_1BD0DDF10(v66, v68, v70);

    v75 = v86;
    sub_1BD0DE204(v74, v86, &qword_1EBD38A98);
    v51 = 0;
  }

  else
  {
    v75 = v86;
  }

  (*(v88 + 56))(v75, v51, 1, v89);
  v76 = v92;
  v77 = v87;
  sub_1BD0DE19C(v92, v87, &qword_1EBD577B0);
  v78 = v90;
  sub_1BD0DE19C(v75, v90, &qword_1EBD3E660);
  v79 = v91;
  sub_1BD0DE19C(v77, v91, &qword_1EBD577B0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD577E0);
  sub_1BD0DE19C(v78, v79 + *(v80 + 48), &qword_1EBD3E660);
  sub_1BD0DE53C(v75, &qword_1EBD3E660);
  sub_1BD0DE53C(v76, &qword_1EBD577B0);
  sub_1BD0DE53C(v78, &qword_1EBD3E660);
  return sub_1BD0DE53C(v77, &qword_1EBD577B0);
}

uint64_t sub_1BD8BCB78()
{
  v1 = v0;
  v2 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7WebInfoVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PassEligibleRewardsInfo();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MerchantInfoRow();
  sub_1BD0DE19C(v1 + *(v19 + 20), v13, &unk_1EBD4C940);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD4C940);
    goto LABEL_18;
  }

  sub_1BD8BD338(v13, v18, type metadata accessor for PassEligibleRewardsInfo);
  if (sub_1BD579C04())
  {
    v20 = *(v18 + 9);
    if (v20 != 1)
    {
      v21 = *(v18 + 8);
      v22 = *(v18 + 11);
      v31 = *(v18 + 10);
      v32 = v21;
      v24 = *(v18 + 12);
      v23 = *(v18 + 13);
      v25 = v18[112];
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      if (PKOslo2024UIUpdatesEnabled())
      {
        if (v20 || (v25 & 1) != 0)
        {
          goto LABEL_14;
        }
      }

      else if ((v25 & 1) != 0 || v22)
      {
        goto LABEL_14;
      }

      sub_1BD38BF48(v32, v20);
    }
  }

  if (*(v18 + 2) == 1)
  {
LABEL_17:
    sub_1BD8BD3A0(v18, type metadata accessor for PassEligibleRewardsInfo);
    goto LABEL_18;
  }

  v24 = *(v18 + 5);
  v23 = *(v18 + 6);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
LABEL_14:

  if (!v23)
  {
    goto LABEL_17;
  }

  v26 = sub_1BD57A1B8();
  sub_1BD8BD3A0(v18, type metadata accessor for PassEligibleRewardsInfo);
  if (v26)
  {
    return v24;
  }

LABEL_18:
  v27 = _s8MerchantVMa(0);
  sub_1BD129504(v1 + *(v27 + 20), v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD8BD3A0(v5, _s14MerchantOriginOMa);
    return 0;
  }

  sub_1BD8BD338(v5, v9, _s7WebInfoVMa);
  v24 = sub_1BE04AA14();
  v29 = v28;
  sub_1BD8BD3A0(v9, _s7WebInfoVMa);
  if (!v29)
  {
    return 0;
  }

  return v24;
}

unint64_t sub_1BD8BCF54()
{
  result = qword_1EBD57768;
  if (!qword_1EBD57768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57748);
    sub_1BD0DE4F4(&qword_1EBD57770, &qword_1EBD57740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57768);
  }

  return result;
}

unint64_t sub_1BD8BD00C()
{
  result = qword_1EBD57778;
  if (!qword_1EBD57778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57750);
    sub_1BD8BCF54();
    sub_1BD8BD0C8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57778);
  }

  return result;
}

uint64_t sub_1BD8BD0C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8BD110()
{
  result = qword_1EBD577C0;
  if (!qword_1EBD577C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD577A8);
    sub_1BD8BD1C8();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD577C0);
  }

  return result;
}

unint64_t sub_1BD8BD1C8()
{
  result = qword_1EBD577C8;
  if (!qword_1EBD577C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD577B8);
    sub_1BD8BD280();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD577C8);
  }

  return result;
}

unint64_t sub_1BD8BD280()
{
  result = qword_1EBD577D0;
  if (!qword_1EBD577D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD577D8);
    sub_1BD0EF0FC();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD577D0);
  }

  return result;
}

uint64_t sub_1BD8BD338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8BD3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8BD400()
{
  result = qword_1EBD577E8;
  if (!qword_1EBD577E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD577F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57750);
    sub_1BD8BD00C();
    swift_getOpaqueTypeConformance2();
    sub_1BD8BD0C8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD577E8);
  }

  return result;
}

void *sub_1BD8BD4F8()
{
  v1 = OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1BD8BDCC8(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1BD28B4C8(v4);
  }

  sub_1BD28B4A8(v2);
  return v3;
}

void sub_1BD8BD56C(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v6 = objc_allocWithZone(PKNavigationController);
    v7 = a1;
    v8 = [v6 initWithRootViewController_];
    (a3)(v8, a2);
  }

  else
  {
    a3();
  }
}

uint64_t sub_1BD8BD628(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1BD8BDF10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_203;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v22);
}

void sub_1BD8BD8D0(void *a1, uint64_t a2, void (*a3)(void))
{
  if (!a1 || a2)
  {
    a3(0);
  }

  else
  {
    v5 = a1;
    (a3)(a1, 0);
  }
}

void sub_1BD8BD95C(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
LABEL_9:
      [a1 dismissViewControllerAnimated:1 completion:0];
      return;
    }

    v9 = v8;
    v10 = a1;
    if (![v9 hasFieldsSubmitted])
    {

      goto LABEL_9;
    }

    v11 = v1;
    sub_1BE04D1E4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "FCC step up completed, sheet dismissing, updating account", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      v17 = [*(v11 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account) accountIdentifier];
      [v16 updateAccountWithIdentifier:v17 extended:0 completion:0];

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD8BDC24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SavingsFCCStepUpController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD8BDCC8(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedService];
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

  v9 = [objc_allocWithZone(PKApplyControllerConfiguration) initWithSetupDelegate:a1 context:0 provisioningController:v8];
  v10 = v9;
  if (v9)
  {
    [v9 setApplicationType_];
    v11 = *(a1 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account);
    v12 = v10;
    [v12 setFeature_];
  }

  v13 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
  v14 = OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController;
  v15 = *(a1 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController);
  *(a1 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController____lazy_storage___applyController) = v13;
  sub_1BD28B4C8(v15);
  v16 = sub_1BD8BD4F8();
  if (v16)
  {
    v17 = v16;
    v18 = [*(a1 + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account) applyServiceURL];
    if (v18)
    {
      v19 = v18;
      sub_1BE04A9F4();

      v20 = sub_1BE04A9C4();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v20 = 0;
    }

    [v17 setApplyServiceURL_];
  }

  return *(a1 + v14);
}

void PaymentOfferSelectorView.init(paymentPass:transactionSourceCollection:paymentOffersController:beginSuppressCardEmulation:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57810);
  sub_1BE051694();
  *(a6 + 16) = v17;
  *(a6 + 32) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C80);
  sub_1BE051694();
  *(a6 + 40) = v17;
  sub_1BE051694();
  *(a6 + 56) = v17;
  *(a6 + 64) = *(&v17 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE40);
  sub_1BE051694();
  *(a6 + 88) = v17;
  *(a6 + 104) = v18;
  objc_allocWithZone(type metadata accessor for PaymentOfferSelectorModel());
  v12 = a2;
  v13 = a3;
  v14 = a1;
  v15 = sub_1BD22CE54(a3, v14, a2);

  v16 = v15;
  sub_1BE051694();

  *a6 = v17;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
}

id PaymentOfferSelectionViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentOfferSelectionViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferSelectionViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentOfferSelectionViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferSelectionViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PaymentOfferSelectorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = v1[5];
  v96 = v1[4];
  v97 = v2;
  v98 = v1[6];
  v3 = v1[1];
  v92 = *v1;
  v93 = v3;
  v4 = v1[3];
  v94 = v1[2];
  v95 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372D0);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v74 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57818);
  MEMORY[0x1EEE9AC00](v80, v9);
  v81 = v74 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57820);
  MEMORY[0x1EEE9AC00](v78, v11);
  v79 = v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57828);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57830);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57838);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v74 - v22;
  sub_1BD8BEC54(&v92, v74 - v22);
  v99 = v93;
  v100 = v94;
  v86 = v93;
  v87 = v94;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57840);
  sub_1BE0516A4();
  v85 = v8;
  if (*(&v89 + 1))
  {

    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  sub_1BD0DE204(v23, v19, &qword_1EBD57838);
  *&v19[*(v16 + 36)] = v25;
  v89 = v99;
  v90 = v100;
  sub_1BE0516C4();
  v74[2] = v24;
  v74[1] = v88;
  v89 = v86;
  v90 = v87;
  v91 = v88;
  v26 = swift_allocObject();
  v27 = v97;
  v26[5] = v96;
  v26[6] = v27;
  v26[7] = v98;
  v28 = v93;
  v26[1] = v92;
  v26[2] = v28;
  v29 = v95;
  v26[3] = v94;
  v26[4] = v29;
  sub_1BD8C011C(&v92, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57848);
  sub_1BD8C0154();
  sub_1BD8C0488();
  v30 = type metadata accessor for PaymentOfferSelectorOverlay();
  v31 = sub_1BD8C0A98(&qword_1EBD578B0, type metadata accessor for PaymentOfferSelectorOverlay);
  *&v86 = v30;
  *(&v86 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v75;
  sub_1BE050B54();

  sub_1BD0DE53C(v19, &qword_1EBD57830);
  v33 = v79;
  (*(v76 + 32))(v79, v32, v77);
  v34 = (v33 + *(v78 + 36));
  *v34 = sub_1BD8BF8F4;
  v34[1] = 0;
  v35 = swift_allocObject();
  v36 = v97;
  *(v35 + 5) = v96;
  *(v35 + 6) = v36;
  *(v35 + 7) = v98;
  v37 = v93;
  *(v35 + 1) = v92;
  *(v35 + 2) = v37;
  v38 = v95;
  *(v35 + 3) = v94;
  *(v35 + 4) = v38;
  v39 = v81;
  sub_1BD0BFE04(v33, v81);
  v40 = (v39 + *(v80 + 9));
  *v40 = sub_1BD8C04DC;
  v40[1] = v35;
  v89 = v99;
  v90 = v100;
  sub_1BD8C011C(&v92, &v86);
  sub_1BE0516A4();
  v89 = v86;
  v41 = swift_allocObject();
  v42 = v97;
  v41[5] = v96;
  v41[6] = v42;
  v41[7] = v98;
  v43 = v93;
  v41[1] = v92;
  v41[2] = v43;
  v44 = v95;
  v41[3] = v94;
  v41[4] = v44;
  sub_1BD8C011C(&v92, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57810);
  sub_1BD8C0574();
  sub_1BD8C079C();
  v45 = v85;
  sub_1BE051064();

  sub_1BD0BFE74(v39);
  sub_1BE0528A4();
  sub_1BD8C011C(&v92, &v86);
  v46 = sub_1BE052894();
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  v49 = v97;
  *(v47 + 96) = v96;
  *(v47 + 112) = v49;
  *(v47 + 128) = v98;
  v50 = v93;
  *(v47 + 32) = v92;
  *(v47 + 48) = v50;
  v51 = v95;
  *(v47 + 64) = v94;
  *(v47 + 80) = v51;
  v81 = sub_1BE0528D4();
  v52 = *(v81 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v81, v54);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v74 - v55;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v79 = sub_1BE04EAA4();
    v80 = v74;
    v78 = *(v79 - 1);
    MEMORY[0x1EEE9AC00](v79, v57);
    v59 = v74 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    sub_1BE053834();

    *&v86 = 0xD000000000000035;
    *(&v86 + 1) = 0x80000001BE13EF40;
    *&v89 = 117;
    v60 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v60);

    v77 = v74;
    v63 = MEMORY[0x1EEE9AC00](v61, v62);
    v64 = v74 - v55;
    v65 = v74 - v55;
    v66 = v81;
    (*(v52 + 16))(v64, v65, v81, v63);
    sub_1BE04EA94();
    (*(v52 + 8))(v56, v66);
    v67 = v84;
    (*(v82 + 32))(v84, v85, v83);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372D8);
    return (*(v78 + 32))(v67 + *(v68 + 36), v59, v79);
  }

  else
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372E0);
    v71 = v84;
    v72 = (v84 + *(v70 + 36));
    v73 = sub_1BE04E7B4();
    (*(v52 + 32))(&v72[*(v73 + 20)], v74 - v55, v81);
    *v72 = &unk_1BE101A50;
    *(v72 + 1) = v47;
    return (*(v82 + 32))(v71, v45, v83);
  }
}

uint64_t sub_1BD8BEC54@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v66, v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57878);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v57 - v10;
  v81 = *a1;
  v72[0] = *a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v13 = *&v68[0];
  sub_1BD228650(v72);

  if (*(&v72[0] + 1))
  {
    v78 = v72[5];
    v79 = v72[6];
    v57 = v72[0];
    v80 = v73;
    v74 = v72[1];
    v75 = v72[2];
    v76 = v72[3];
    v77 = v72[4];
    v68[0] = v81;
    v62 = v12;
    sub_1BE0516A4();
    v60 = v69;
    v61 = *MEMORY[0x1E69B9A60];
    v14 = v61;
    sub_1BE0528A4();
    v15 = v14;
    v16 = sub_1BE052894();
    v65 = a2;
    v17 = v16;
    v18 = swift_allocObject();
    v63 = v8;
    v64 = v7;
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    sub_1BD8C011C(a1, v68);
    sub_1BD0DE19C(v72, v68, &qword_1EBD3E550);
    v20 = sub_1BE052894();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    v22 = a1[5];
    *(v21 + 96) = a1[4];
    *(v21 + 112) = v22;
    *(v21 + 128) = a1[6];
    v23 = a1[1];
    *(v21 + 32) = *a1;
    *(v21 + 48) = v23;
    v24 = a1[3];
    *(v21 + 64) = a1[2];
    *(v21 + 80) = v24;
    v25 = v57;
    v26 = v6;
    v27 = *(&v57 + 1);
    *(v21 + 144) = v57;
    *(v21 + 152) = v27;
    v28 = v79;
    *(v21 + 224) = v78;
    *(v21 + 240) = v28;
    *(v21 + 256) = v80;
    v29 = v75;
    *(v21 + 160) = v74;
    *(v21 + 176) = v29;
    v30 = v77;
    *(v21 + 192) = v76;
    *(v21 + 208) = v30;
    sub_1BE051934();
    v31 = v70;
    v59 = v69;
    v58 = v71;
    v32 = type metadata accessor for MultiHyperLinkDetailSheet();
    (*(*(v32 - 8) + 56))(v26, 1, 1, v32);
    v33 = type metadata accessor for PaymentOfferSelectorTile();
    sub_1BE051944();
    sub_1BD0DE53C(v26, &unk_1EBD45160);
    v34 = swift_allocObject();
    v35 = a1[5];
    *(v34 + 80) = a1[4];
    *(v34 + 96) = v35;
    *(v34 + 112) = a1[6];
    v36 = a1[1];
    *(v34 + 16) = *a1;
    *(v34 + 32) = v36;
    v37 = a1[3];
    *(v34 + 48) = a1[2];
    *(v34 + 64) = v37;
    *(v34 + 128) = v25;
    *(v34 + 136) = v27;
    v38 = v79;
    *(v34 + 208) = v78;
    *(v34 + 224) = v38;
    *(v34 + 240) = v80;
    v39 = v75;
    *(v34 + 144) = v74;
    *(v34 + 160) = v39;
    v40 = v77;
    *(v34 + 176) = v76;
    *(v34 + 192) = v40;
    v67 = v60;
    sub_1BD8C011C(a1, v68);
    sub_1BD0DE19C(v72, v68, &qword_1EBD3E550);
    type metadata accessor for PaymentOfferSelectorModel();
    sub_1BE051694();
    v41 = *(&v68[0] + 1);
    *v11 = *&v68[0];
    *(v11 + 1) = v41;
    *(v11 + 2) = v25;
    *(v11 + 3) = v27;
    v42 = v79;
    *(v11 + 6) = v78;
    *(v11 + 7) = v42;
    *(v11 + 16) = v80;
    v43 = v75;
    *(v11 + 2) = v74;
    *(v11 + 3) = v43;
    v44 = v77;
    *(v11 + 4) = v76;
    *(v11 + 5) = v44;
    v11[136] = 0;
    v45 = v59;
    *(v11 + 18) = v61;
    *(v11 + 19) = v45;
    *(v11 + 20) = v31;
    v11[168] = v58;
    v46 = &v11[v33[10]];
    *v46 = PKEdgeInsetsMake;
    *(v46 + 1) = 0;
    v47 = &v11[v33[11]];
    *v47 = 0;
    *(v47 + 1) = 0;
    v48 = &v11[v33[12]];
    *v48 = sub_1BD8C0A48;
    v48[1] = v34;
    v8 = v63;
    v7 = v64;
    v68[0] = v81;
    sub_1BE0516A4();
    v49 = v69;
    swift_getKeyPath();
    *&v68[0] = v49;
    sub_1BD8C0A98(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    LOBYTE(v26) = v49[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled];

    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = v26;
    v52 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57888) + 36)];
    *v52 = KeyPath;
    v52[1] = sub_1BD10DF54;
    v52[2] = v51;
    a2 = v65;
    v53 = sub_1BE0516E4();
    v54 = &v11[*(v7 + 36)];
    *v54 = v53;
    v54[1] = sub_1BD8BF534;
    v54[2] = 0;
    sub_1BD0DE204(v11, a2, &qword_1EBD57878);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  return (*(v8 + 56))(a2, v55, 1, v7);
}

uint64_t sub_1BD8BF260()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57840);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8BF2C4(uint64_t a1)
{
  v3 = v1[5];
  *&v34[16] = v1[4];
  *v35 = v3;
  *&v35[16] = v1[6];
  v4 = v1[1];
  v31 = *v1;
  v32 = v4;
  v5 = v1[3];
  v33 = v1[2];
  *v34 = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  *(v6 + 80) = v1[4];
  *(v6 + 96) = v7;
  v8 = v1[6];
  v9 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v9;
  v10 = v1[3];
  *(v6 + 48) = v1[2];
  *(v6 + 64) = v10;
  v11 = *a1;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v6 + 144) = *(a1 + 16);
  *(v6 + 160) = v12;
  *(v6 + 112) = v8;
  *(v6 + 128) = v11;
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  *(v6 + 240) = *(a1 + 112);
  *(v6 + 208) = v15;
  *(v6 + 224) = v16;
  *(v6 + 176) = v13;
  *(v6 + 192) = v14;
  sub_1BD70AB6C(a1, &v29);
  sub_1BD8C011C(&v31, &v29);
  if (PKDeviceLocked())
  {
    v29 = *&v34[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v17 = sub_1BE0516A4();
    if ((v28[0] & 1) == 0)
    {
      v18 = (*&v34[24])(v17);
      v20 = v19;
      v29 = *&v35[8];
      v30 = *&v35[24];
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578E8);
      sub_1BE0516B4();
      v22 = swift_allocObject();
      v23 = *v35;
      *(v22 + 80) = *&v34[16];
      *(v22 + 96) = v23;
      *(v22 + 112) = *&v35[16];
      v24 = v32;
      *(v22 + 16) = v31;
      *(v22 + 32) = v24;
      v25 = *v34;
      *(v22 + 48) = v33;
      *(v22 + 64) = v25;
      *(v22 + 128) = sub_1BD8C0BA8;
      *(v22 + 136) = v6;
      v28[4] = sub_1BD8C0BB4;
      v28[5] = v22;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = sub_1BD8BFD78;
      v28[3] = &block_descriptor_204;
      v26 = _Block_copy(v28);
      sub_1BD8C011C(&v31, &v29);
      sub_1BE048964();

      SBSRequestPasscodeUnlockAlertUI();
      _Block_release(v26);
    }
  }

  else
  {
    sub_1BD8BFB68(&v31);
  }
}

uint64_t sub_1BD8BF53C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PaymentOfferSelectorOverlay();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v32 = *a1;
  v36 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v31 = v34;
  v34 = *(a2 + 40);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578F0);
  sub_1BE0516C4();
  v30 = v36;
  v18 = v37;
  v19 = v13[7];
  *&v16[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v20 = &v16[v13[8]];
  LOBYTE(v34) = 0;
  sub_1BE051694();
  v21 = *(&v36 + 1);
  *v20 = v36;
  *(v20 + 1) = v21;
  v22 = &v16[v13[9]];
  v35 = 0;
  v34 = 3uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C90);
  sub_1BE051694();
  v23 = v37;
  *v22 = v36;
  *(v22 + 1) = v23;
  v24 = type metadata accessor for MultiHyperLinkDetailSheet();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  sub_1BD0DE19C(v12, v8, &unk_1EBD45160);
  sub_1BE051694();
  sub_1BD0DE53C(v12, &unk_1EBD45160);
  v25 = &v16[v13[11]];
  v34 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE051694();
  v26 = v37;
  *v25 = v36;
  *(v25 + 2) = v26;
  v27 = v13[12];
  *&v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
  sub_1BE051694();
  *&v16[v27] = v36;
  *&v16[v13[13]] = 0;
  *&v34 = v31;
  type metadata accessor for PaymentOfferSelectorModel();
  sub_1BE051694();
  v28 = *(&v36 + 1);
  *v16 = v36;
  *(v16 + 1) = v28;
  *(v16 + 2) = v32;
  *(v16 + 3) = v17;
  *(v16 + 2) = v30;
  *(v16 + 6) = v18;
  sub_1BD8C0A98(&qword_1EBD578B0, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE050CE4();
  return sub_1BD8C09D4(v16);
}

uint64_t sub_1BD8BF91C()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578F0);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8BF978(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v2 = *(a2 + 8) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578E8);
    v3 = sub_1BE0516A4();
    if (v4)
    {
      v4(v3);
      sub_1BD0D4744(v4);
    }

    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD8BFA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_1BE0528A4();
  *(v3 + 48) = sub_1BE052894();
  v5 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD8BFAD0, v5, v4);
}

uint64_t sub_1BD8BFAD0()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v2 = *(v0 + 32);
  sub_1BD2299B0(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD8BFB68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578E8);
  sub_1BE0516A4();
  if (v7)
  {
    sub_1BD0D4744(v7);
  }

  else
  {
    v2 = (*(a1 + 72))();
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    sub_1BE0516B4();
  }

  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57840);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8BFC8C(char a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    a3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578E8);
    v3 = sub_1BE0516A4();
    if (v5)
    {
      v5(v3);
      sub_1BD0D4744(v5);
    }

    sub_1BE0516B4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD8BFD78(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;
  sub_1BE048964();
  v2(v3);
}

void *sub_1BD8BFDD8(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t _s9PassKitUI24PaymentOfferSelectorViewV2eeoiySbAC_ACtFZ_0()
{
  sub_1BD22F42C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v0 = *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  sub_1BE0516A4();
  v1 = *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v2 = sub_1BE053074();
  return v2 & 1;
}

uint64_t _s9PassKitUI29PaymentOfferSelectionViewHostC6create07paymentA027transactionSourceCollection0J16OffersController26beginSuppressCardEmulationSo6UIViewCSgSo09PKPaymentA0C_So013PKTransactionlM0CSgSo0unO0CyycyctFZ_0(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57810);
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C80);
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE40);
  sub_1BE051694();
  objc_allocWithZone(type metadata accessor for PaymentOfferSelectorModel());
  v6 = a2;
  v7 = a3;
  v8 = a1;
  sub_1BD22CE54(a3, v8, a2);

  sub_1BE051694();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD578F8));
  sub_1BE048964();
  return sub_1BE04EAC4();
}

unint64_t sub_1BD8C0154()
{
  result = qword_1EBD57850;
  if (!qword_1EBD57850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57830);
    sub_1BD8C01E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57850);
  }

  return result;
}

unint64_t sub_1BD8C01E0()
{
  result = qword_1EBD57858;
  if (!qword_1EBD57858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57838);
    sub_1BD8C0264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57858);
  }

  return result;
}

unint64_t sub_1BD8C0264()
{
  result = qword_1EBD57860;
  if (!qword_1EBD57860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57868);
    sub_1BD8C02E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57860);
  }

  return result;
}

unint64_t sub_1BD8C02E8()
{
  result = qword_1EBD57870;
  if (!qword_1EBD57870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57878);
    sub_1BD8C03A0();
    sub_1BD0DE4F4(&qword_1EBD57898, &qword_1EBD578A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57870);
  }

  return result;
}

unint64_t sub_1BD8C03A0()
{
  result = qword_1EBD57880;
  if (!qword_1EBD57880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57888);
    sub_1BD8C0A98(&qword_1EBD57890, type metadata accessor for PaymentOfferSelectorTile);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57880);
  }

  return result;
}

unint64_t sub_1BD8C0488()
{
  result = qword_1EBD578A8;
  if (!qword_1EBD578A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD578A8);
  }

  return result;
}

uint64_t objectdestroyTm_108()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD8C0574()
{
  result = qword_1EBD578B8;
  if (!qword_1EBD578B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57818);
    sub_1BD8C062C();
    sub_1BD0DE4F4(&qword_1EBD578C8, &qword_1EBD578D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD578B8);
  }

  return result;
}

unint64_t sub_1BD8C062C()
{
  result = qword_1EBD578C0;
  if (!qword_1EBD578C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57848);
    sub_1BD8C0154();
    sub_1BD8C0488();
    type metadata accessor for PaymentOfferSelectorOverlay();
    sub_1BD8C0A98(&qword_1EBD578B0, type metadata accessor for PaymentOfferSelectorOverlay);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD578C0);
  }

  return result;
}

unint64_t sub_1BD8C079C()
{
  result = qword_1EBD578D8;
  if (!qword_1EBD578D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57810);
    sub_1BD8C0820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD578D8);
  }

  return result;
}

unint64_t sub_1BD8C0820()
{
  result = qword_1EBD578E0;
  if (!qword_1EBD578E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD578E0);
  }

  return result;
}

uint64_t sub_1BD8C0874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD8BFA38(v2, v3, v0 + 32);
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyytIsegr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t (*sub_1BD8C096C())()
{
  v1 = (*(*(v0 + 16) + 16))();
  *(swift_allocObject() + 16) = v1;
  return sub_1BD166E88;
}

uint64_t sub_1BD8C09D4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectorOverlay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD8C0A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_30Tm_0()
{

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 240))
  {
  }

  return swift_deallocObject();
}

double sub_1BD8C0BEC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04F504();
  v28 = 0;
  sub_1BD8C0D7C(a1, a2, a3, &v20);
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v36[0] = v20;
  v36[1] = v21;
  v36[2] = v22;
  v36[3] = v23;
  v36[4] = v24;
  v36[5] = v25;
  v37 = v26;
  sub_1BD8C1764(&v29, &v19);
  sub_1BD8C17D4(v36);
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[7] = v29;
  *&v27[23] = v30;
  *&v27[103] = v35;
  *&v27[39] = v31;
  v9 = v28;
  v10 = sub_1BE0502A4();
  KeyPath = swift_getKeyPath();
  v12 = sub_1BE051234();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = *&v27[32];
  *(a4 + 65) = *&v27[48];
  v16 = *&v27[80];
  *(a4 + 81) = *&v27[64];
  *(a4 + 97) = v16;
  *(a4 + 112) = *&v27[95];
  result = *v27;
  v18 = *&v27[16];
  *(a4 + 17) = *v27;
  *(a4 + 33) = v18;
  *a4 = v8;
  *(a4 + 8) = 0x4008000000000000;
  *(a4 + 16) = v9;
  *(a4 + 49) = v15;
  *(a4 + 128) = KeyPath;
  *(a4 + 136) = v10;
  *(a4 + 144) = v13;
  *(a4 + 152) = v12;
  *(a4 + 160) = v14;
  *(a4 + 168) = 2;
  *(a4 + 176) = 0;
  return result;
}

uint64_t sub_1BD8C0D7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE051574();
  v34 = sub_1BE050424();
  KeyPath = swift_getKeyPath();
  v39 = sub_1BD8C1038(a1, a2, a3);
  v40 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v31 = v14;
  v32 = v15;
  v17 = v16;
  LOBYTE(a3) = v18;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B8088], v8);
  v19 = sub_1BE04B714();
  v21 = v20;
  (*(v9 + 8))(v12, v8);
  v39 = v19;
  v40 = v21;
  v22 = sub_1BE0506C4();
  v24 = v23;
  LOBYTE(a3) = a3 & 1;
  LOBYTE(v39) = a3;
  v38 = a3;
  v37 = 0;
  LOBYTE(v19) = v25 & 1;
  v36 = v25 & 1;
  v26 = v34;
  v27 = KeyPath;
  *a4 = v35;
  *(a4 + 8) = v27;
  *(a4 + 16) = v26;
  *(a4 + 24) = v14;
  *(a4 + 32) = v17;
  *(a4 + 40) = a3;
  *(a4 + 48) = v32;
  *(a4 + 56) = 0x4030000000000000;
  *(a4 + 64) = 0;
  *(a4 + 72) = v22;
  *(a4 + 80) = v23;
  *(a4 + 88) = v25 & 1;
  *(a4 + 96) = v28;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v29 = v31;
  sub_1BD0D7F18(v31, v17, a3);
  sub_1BE048C84();
  sub_1BD0D7F18(v22, v24, v19);
  sub_1BE048C84();
  sub_1BD0DDF10(v22, v24, v19);

  sub_1BD0DDF10(v29, v17, v39);
}

uint64_t sub_1BD8C1038(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE053304();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    v18 = [v17 formattedStringValue];
    if (v18)
    {
      v43 = v17;
      v44 = v11;
      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;

      if (a1 == 3)
      {
        v11 = v44;
        (*(v12 + 104))(v16, *MEMORY[0x1E69B8088], v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BE0B69E0;
        *(v23 + 56) = MEMORY[0x1E69E6158];
        *(v23 + 64) = sub_1BD110550();
        *(v23 + 32) = v20;
        *(v23 + 40) = v22;
LABEL_15:
        v24 = sub_1BE04B714();

        goto LABEL_16;
      }

      v42 = v20;
      v11 = v44;
      if (a3)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 1;
        v25 = sub_1BE0533E4();
        if (v48 != 1)
        {
          v41 = v22;
          MEMORY[0x1BFB37210](v25);
          sub_1BD154B6C();
          sub_1BE053464();
          (*(v7 + 8))(v10, v6);
          v26 = v45;
          v27 = v46;
          if (a1 == 2)
          {
            v11 = v44;
            (*(v12 + 104))(v16, *MEMORY[0x1E69B8088], v44);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_1BE0B6CA0;
            v34 = MEMORY[0x1E69E6158];
            *(v33 + 56) = MEMORY[0x1E69E6158];
            v35 = sub_1BD110550();
            *(v33 + 32) = v26;
            *(v33 + 40) = v27;
            *(v33 + 96) = v34;
            *(v33 + 104) = v35;
            v36 = v41;
            v37 = v42;
            *(v33 + 64) = v35;
            *(v33 + 72) = v37;
            *(v33 + 80) = v36;
            goto LABEL_15;
          }

          v11 = v44;
          if (a1 == 1)
          {
            (*(v12 + 104))(v16, *MEMORY[0x1E69B8088], v44);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_1BE0B6CA0;
            v29 = MEMORY[0x1E69E6158];
            *(v28 + 56) = MEMORY[0x1E69E6158];
            v30 = sub_1BD110550();
            *(v28 + 32) = v26;
            *(v28 + 40) = v27;
            *(v28 + 96) = v29;
            *(v28 + 104) = v30;
            v31 = v41;
            v32 = v42;
            *(v28 + 64) = v30;
            *(v28 + 72) = v32;
            *(v28 + 80) = v31;
            goto LABEL_15;
          }

          v22 = v41;
        }
      }

      (*(v12 + 104))(v16, *MEMORY[0x1E69B8088], v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BE0B69E0;
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1BD110550();
      *(v38 + 32) = v42;
      *(v38 + 40) = v22;
      goto LABEL_15;
    }
  }

  (*(v12 + 104))(v16, *MEMORY[0x1E69B8088], v11, v14);
  v24 = sub_1BE04B714();
LABEL_16:
  (*(v12 + 8))(v16, v11);
  return v24;
}

uint64_t sub_1BD8C1578(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v7 = a3;
    v8 = a6;
    sub_1BD0E5E8C(0, &qword_1EBD43B00);
    v10 = a5;
    v11 = a2;
    v12 = sub_1BE053074();

    a6 = v8;
    a3 = v7;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      v13 = a3;
      v14 = a6;
      sub_1BD0E5E8C(0, &qword_1EBD38840);
      v15 = v14;
      v16 = v13;
      v17 = sub_1BE053074();

      if (v17)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BD8C1688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BD8C16E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD8C1764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8C17D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD8C183C()
{
  result = qword_1EBD57908;
  if (!qword_1EBD57908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57910);
    sub_1BD8C18F4();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57908);
  }

  return result;
}

unint64_t sub_1BD8C18F4()
{
  result = qword_1EBD57918;
  if (!qword_1EBD57918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57920);
    sub_1BD8C19AC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57918);
  }

  return result;
}

unint64_t sub_1BD8C19AC()
{
  result = qword_1EBD57928;
  if (!qword_1EBD57928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57930);
    sub_1BD0DE4F4(&qword_1EBD57938, &unk_1EBD57940);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57928);
  }

  return result;
}

BOOL sub_1BD8C1A98()
{
  v1 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  if (!v1)
  {
    return 0;
  }

  if (!*(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context);
  v3 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8);
  if ((v3 >> 5) - 1 >= 6 && (v3 >> 5 || !v2))
  {
    return 0;
  }

  v4 = v1;
  sub_1BD8D37B8(v2, v3);
  v5 = [v2 uniqueID];
  v6 = [v4 preconfiguredInstallmentOfferStateForPassUniqueID_];

  sub_1BD8D3858(v2, v3);
  return (v6 - 4) < 3;
}

uint64_t sub_1BD8C1B80(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22[-v11];
  swift_getKeyPath();
  v24 = v4;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  if ((*(v4 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v23 = a2;
    MEMORY[0x1EEE9AC00](KeyPath, v15);
    *&v22[-16] = v4;
    v22[-8] = 1;
    v24 = v4;
    sub_1BE04B584();

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v17 = sub_1BE0528D4();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    sub_1BE0528A4();
    sub_1BE048964();
    sub_1BE048964();
    v18 = v4;
    sub_1BE048964();
    v19 = sub_1BE052894();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v18;
    *(v20 + 40) = v23 & 1;
    *(v20 + 48) = sub_1BD619664;
    *(v20 + 56) = v16;
    *(v20 + 64) = a1;
    sub_1BD122C00(0, 0, v12, &unk_1BE102428, v20);
  }

  return result;
}

uint64_t sub_1BD8C1E50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v27 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v19 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler);
  if (v19)
  {
    v25 = v5;
    v26 = v9;
    swift_getKeyPath();
    v28 = v0;
    sub_1BE048964();
    sub_1BE04B594();

    v20 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__detailSheet;
    swift_beginAccess();
    sub_1BD0DE19C(v1 + v20, v13, &qword_1EBD57C38);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1BD0D4744(v19);
      return sub_1BD0DE53C(v13, &qword_1EBD57C38);
    }

    else
    {
      v21 = v27;
      sub_1BD8D3750(v13, v27, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
      v22 = v26;
      sub_1BD8C2380(v21, v26);
      sub_1BD0DE19C(v22, v25, &qword_1EBD57A90);
      v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C40));
      v24 = sub_1BE04F894();
      v19();
      sub_1BD0D4744(v19);

      sub_1BD0DE53C(v22, &qword_1EBD57A90);
      return sub_1BD8D2AE0(v21, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    }
  }

  return result;
}

uint64_t sub_1BD8C21E8()
{
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler);
  sub_1BD0D44B8(v1);
  return v1;
}

uint64_t sub_1BD8C22A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v3 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__detailSheet;
  swift_beginAccess();
  return sub_1BD0DE19C(v5 + v3, a1, &qword_1EBD57C38);
}

id sub_1BD8C2380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v399 = a1;
  v405 = a2;
  v369 = type metadata accessor for SelectedPaymentOfferActionView();
  v359 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369, v2);
  v353 = &v339 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v352 = &v339 - v6;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57B80);
  MEMORY[0x1EEE9AC00](v391, v7);
  v360 = &v339 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57BB8);
  v361 = *(v9 - 8);
  v362 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v339 = &v339 - v11;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B68);
  MEMORY[0x1EEE9AC00](v381, v12);
  v363 = &v339 - v13;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57BC0);
  MEMORY[0x1EEE9AC00](v388, v14);
  v390 = &v339 - v15;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57BC8);
  MEMORY[0x1EEE9AC00](v379, v16);
  v380 = &v339 - v17;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B58);
  MEMORY[0x1EEE9AC00](v389, v18);
  *&v382 = &v339 - v19;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B48);
  MEMORY[0x1EEE9AC00](v404, v20);
  v392 = &v339 - v21;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
  MEMORY[0x1EEE9AC00](v348, v22);
  v346 = &v339 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v342 = &v339 - v26;
  v27 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v355 = *(v27 - 8);
  v356 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v387 = &v339 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v350 = &v339 - v32;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B30);
  MEMORY[0x1EEE9AC00](v377, v33);
  v386 = &v339 - v34;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57BD8);
  MEMORY[0x1EEE9AC00](v374, v35);
  v376 = &v339 - v36;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B08);
  MEMORY[0x1EEE9AC00](v397, v37);
  v378 = &v339 - v38;
  v354 = type metadata accessor for PaymentOfferActionExplanationView();
  MEMORY[0x1EEE9AC00](v354, v39);
  v344 = &v339 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v345 = &v339 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v347 = &v339 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v351 = &v339 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57BE0);
  v370 = *(v50 - 8);
  v371 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v343 = &v339 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v349 = &v339 - v55;
  *&v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57B18);
  MEMORY[0x1EEE9AC00](v398, v56);
  v357 = &v339 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v358 = &v339 - v60;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49758);
  *&v385 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365, v61);
  *&v384 = &v339 - v62;
  *(&v382 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57AF0);
  MEMORY[0x1EEE9AC00](*(&v382 + 1), v63);
  v364 = &v339 - v64;
  v65 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v340 = *(v65 - 8);
  v341 = v65;
  MEMORY[0x1EEE9AC00](v65, v66);
  v372 = &v339 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57BF0);
  MEMORY[0x1EEE9AC00](v401, v68);
  v403 = &v339 - v69;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57BF8);
  MEMORY[0x1EEE9AC00](v393, v70);
  v395 = &v339 - v71;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C00);
  MEMORY[0x1EEE9AC00](v373, v72);
  v375 = &v339 - v73;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57AC8);
  MEMORY[0x1EEE9AC00](v394, v74);
  v383 = &v339 - v75;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57AB8);
  MEMORY[0x1EEE9AC00](v402, v76);
  v396 = &v339 - v77;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v368, v78);
  v366 = &v339 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80, v81);
  v367 = &v339 - v82;
  v83 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v339 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C10);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v89);
  v91 = &v339 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57AD8);
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = &v339 - v94;
  v96 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = (&v339 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD8D39A8(v399, v99, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v206 = *v99;
        v399 = v99[2];
        v207 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria];
        v396 = v99[4];
        v397 = v206;
        if (v207 && (v208 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController]) != 0)
        {
          v209 = v99[1];
          v400 = v99[3];
          v210 = swift_allocObject();
          v386 = v210;
          *(v210 + 2) = v209;
          *(v210 + 3) = v399;
          v211 = sub_1BE052434();
          v394 = v212;
          v395 = v211;
          v393 = sub_1BE052434();
          *&v387 = v213;
          LOBYTE(v407) = 0;
          v214 = v354;
          v215 = type metadata accessor for MultiHyperLinkDetailSheet();
          v216 = v367;
          (*(*(v215 - 8) + 56))(v367, 1, 1, v215);
          sub_1BD0DE19C(v216, v366, &unk_1EBD45160);
          v217 = v208;
          v218 = v207;
          v219 = v217;
          v220 = v218;
          v221 = v397;
          sub_1BE048964();
          sub_1BE048964();
          v222 = v344;
          v223 = v214;
          sub_1BE051694();
          sub_1BD0DE53C(v216, &unk_1EBD45160);
          v224 = v222 + *(v214 + 68);
          *v224 = swift_getKeyPath();
          *(v224 + 8) = 0;
          *v222 = v219;
          *(v222 + 8) = v220;
          *(v222 + 16) = v221;
          *(v222 + 24) = 0;
          *(v222 + 32) = 0xE000000000000000;
          *(v222 + 88) = 0;
          *(v222 + 72) = 0u;
          *(v222 + 56) = 0u;
          *(v222 + 40) = 0u;
          *(v222 + 96) = 0;
          *(v222 + 104) = 0;
          v225 = v386;
          *(v222 + 128) = sub_1BD8D371C;
          *(v222 + 136) = v225;
          *(v222 + 144) = 1795;
          v226 = v219;
          v227 = [v220 identifier];
          if (!v227)
          {
            sub_1BE052434();
            v227 = sub_1BE052404();
          }

          v228 = [v226 preferredLocalizationLanguageForCriteriaIdentifier_];

          v229 = sub_1BE052434();
          v231 = v230;

          *(v222 + 112) = v229;
          *(v222 + 120) = v231;
          v406 = 0;
          sub_1BE051944();
          v232 = *(&v419 + 1);
          v233 = v420;
          v234 = v222 + *(v223 + 64);
          *v234 = v419;
          *(v234 + 8) = v232;
          *(v234 + 16) = v233;
          v235 = v394;
          *(v222 + 152) = v395;
          *(v222 + 160) = v235;
          v236 = v387;
          *(v222 + 168) = v393;
          *(v222 + 176) = v236;
          *(v222 + 184) = 1;
          v237 = v396;
          *(v222 + 192) = v400;
          *(v222 + 200) = v237;
          v238 = v345;
          sub_1BD8D3750(v222, v345, type metadata accessor for PaymentOfferActionExplanationView);
          sub_1BD8D2BB0(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
          v239 = v343;
          sub_1BE050E54();

          sub_1BD8D2AE0(v238, type metadata accessor for PaymentOfferActionExplanationView);
          v241 = v370;
          v240 = v371;
          v242 = v357;
          (*(v370 + 32))(v357, v239, v371);
          (*(v241 + 56))(v242, 0, 1, v240);
        }

        else
        {
          v242 = v357;
          (*(v370 + 56))(v357, 1, 1, v371);
        }

        sub_1BD0DE19C(v242, v380, &qword_1EBD57B18);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2FBC();
        sub_1BD8D326C();
        v272 = v382;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v272, v390, &qword_1EBD57B58);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D31E0();
        sub_1BD349E94();
        v273 = v392;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v272, &qword_1EBD57B58);
        sub_1BD0DE19C(v273, v403, &qword_1EBD57B48);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2C84();
        sub_1BD8D3154();
        sub_1BE04F9A4();

        sub_1BD0DE53C(v273, &qword_1EBD57B48);
        v274 = v242;
        return sub_1BD0DE53C(v274, &qword_1EBD57B18);
      }

      v101 = *v99;
      v392 = v99[1];
      v102 = v99[2];
      v399 = v99[3];

      v103 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
      if (!v103 || (v104 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria]) == 0)
      {
        v271 = v358;
        (*(v370 + 56))(v358, 1, 1, v371);
LABEL_78:
        sub_1BD0DE19C(v271, v376, &qword_1EBD57B18);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2FBC();
        sub_1BD8D30A0();
        v325 = v378;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v325, v395, &qword_1EBD57B08);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2D10();
        sub_1BD8D2F30();
        v326 = v396;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v325, &qword_1EBD57B08);
        sub_1BD0DE19C(v326, v403, &qword_1EBD57AB8);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2C84();
        sub_1BD8D3154();
        sub_1BE04F9A4();

        sub_1BD0DE53C(v326, &qword_1EBD57AB8);
        v274 = v271;
        return sub_1BD0DE53C(v274, &qword_1EBD57B18);
      }

      v105 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
      LODWORD(v388) = v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8];
      v106 = v388 >> 5;
      if (v388 >> 5 > 3)
      {
        if (v388 >> 5 > 5)
        {
          if (v106 != 6)
          {
            v107 = 0;
            goto LABEL_75;
          }
        }

        else
        {
          v107 = v105;
          if (v106 == 4)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        v107 = v105;
        if (v388 >> 5 > 1)
        {
          if (v106 == 2)
          {
            goto LABEL_75;
          }
        }

        else if (v106)
        {
          goto LABEL_75;
        }
      }

      v107 = v105;
LABEL_75:
      v386 = v105;
      *&v387 = v107;
      v293 = swift_allocObject();
      v294 = v399;
      *(v293 + 16) = v102;
      *(v293 + 24) = v294;
      v400 = sub_1BE052434();
      v391 = v295;
      v296 = sub_1BE052434();
      v389 = v297;
      v390 = v296;
      LOBYTE(v407) = 0;
      v298 = v354;
      v299 = type metadata accessor for MultiHyperLinkDetailSheet();
      v300 = v367;
      (*(*(v299 - 8) + 56))(v367, 1, 1, v299);
      sub_1BD0DE19C(v300, v366, &unk_1EBD45160);
      v301 = v104;
      v302 = v103;
      v303 = v301;
      v304 = v302;
      v305 = v392;
      sub_1BE048964();
      sub_1BD8D37B8(v386, v388);
      v306 = v347;
      sub_1BE051694();
      sub_1BD0DE53C(v300, &unk_1EBD45160);
      v307 = &v306[*(v298 + 68)];
      *v307 = swift_getKeyPath();
      v307[8] = 0;
      v308 = v306;
      *v306 = v304;
      *(v306 + 1) = v303;
      *(v306 + 2) = v305;
      *(v306 + 3) = 0;
      *(v306 + 4) = 0xE000000000000000;
      *(v306 + 11) = 0;
      *(v306 + 72) = 0u;
      *(v306 + 56) = 0u;
      *(v306 + 40) = 0u;
      v306[96] = 0;
      *(v306 + 13) = v387;
      *(v306 + 16) = sub_1BD214190;
      *(v306 + 17) = v293;
      *(v306 + 72) = 1792;
      v309 = v304;
      v310 = [v303 identifier];
      if (!v310)
      {
        sub_1BE052434();
        v310 = sub_1BE052404();
      }

      v311 = [v309 preferredLocalizationLanguageForCriteriaIdentifier_];

      v312 = sub_1BE052434();
      v314 = v313;

      *(v308 + 112) = v312;
      *(v308 + 120) = v314;
      v406 = 0;
      sub_1BE051944();
      v315 = *(&v419 + 1);
      v316 = v420;
      v317 = v308 + *(v298 + 64);
      *v317 = v419;
      *(v317 + 8) = v315;
      *(v317 + 16) = v316;
      v319 = v390;
      v318 = v391;
      *(v308 + 152) = v400;
      *(v308 + 160) = v318;
      v320 = v389;
      *(v308 + 168) = v319;
      *(v308 + 176) = v320;
      *(v308 + 184) = 1;
      *(v308 + 192) = 0;
      *(v308 + 200) = 0;
      v321 = v351;
      sub_1BD8D3750(v308, v351, type metadata accessor for PaymentOfferActionExplanationView);
      sub_1BD8D2BB0(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
      v322 = v349;
      sub_1BE050E54();

      sub_1BD8D2AE0(v321, type metadata accessor for PaymentOfferActionExplanationView);
      v324 = v370;
      v323 = v371;
      v271 = v358;
      (*(v370 + 32))(v358, v322, v371);
      (*(v324 + 56))(v271, 0, 1, v323);
      goto LABEL_78;
    }

    v123 = v400;
    if (EnumCaseMultiPayload == 5)
    {
      v124 = v99[1];
      v399 = *v99;
      v125 = v99[3];
      v126 = v99[5];
      v127 = v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8] & 0xE0;
      v395 = v126;
      v396 = v125;
      v397 = v124;
      if (v127 != 160 || (v128 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController]) == 0 || (v129 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria]) == 0)
      {
        v143 = v363;
        (*(v361 + 56))(v363, 1, 1, v362);
LABEL_47:
        sub_1BD0DE19C(v143, v380, &qword_1EBD57B68);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2FBC();
        sub_1BD8D326C();
        v266 = v143;
        v267 = v382;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v267, v390, &qword_1EBD57B58);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D31E0();
        sub_1BD349E94();
        v268 = v392;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v267, &qword_1EBD57B58);
        sub_1BD0DE19C(v268, v403, &qword_1EBD57B48);
        swift_storeEnumTagMultiPayload();
        sub_1BD8D2C84();
        sub_1BD8D3154();
        sub_1BE04F9A4();

        sub_1BD0DE53C(v268, &qword_1EBD57B48);
        return sub_1BD0DE53C(v266, &qword_1EBD57B68);
      }

      v394 = v99[2];
      v130 = v99[4];
      v131 = swift_allocObject();
      *(v131 + 16) = v128;
      *(v131 + 24) = v123;
      v393 = v131;
      v132 = swift_allocObject();
      v132[2] = v128;
      v132[3] = v130;
      *&v387 = v132;
      v132[4] = v126;
      v407 = 0u;
      v408 = 0u;
      v133 = v128;
      v134 = v129;
      v135 = v133;
      v136 = v134;
      v137 = v135;
      v386 = v399;
      v138 = v124;
      v139 = v123;
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DCA0);
      sub_1BE051694();
      v384 = v420;
      v385 = v419;
      v383 = v421;
      *&v407 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C20);
      sub_1BE051694();
      v378 = *(&v419 + 1);
      *(&v382 + 1) = v419;
      LOBYTE(v407) = 0;
      sub_1BE051694();
      LODWORD(v376) = v419;
      v375 = *(&v419 + 1);
      *&v407 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
      sub_1BE051694();
      v373 = *(&v419 + 1);
      v374 = v419;
      v400 = v136;
      v140 = v137;
      v141 = [v140 configuration];
      v142 = [v141 currencyCode];

      v143 = v363;
      v377 = v140;
      if (v142)
      {
        v371 = sub_1BE052434();
        v145 = v144;

        v146 = [v140 configuration];
        v147 = [v146 transactionAmount];

        if (v147)
        {
          v148 = v400;

          v149 = sub_1BE0533F4();
          v151 = v150;
          v372 = v145;
          v153 = v152;

          v124 = v397;
          v154 = v371;
LABEL_87:
          *&v407 = v386;
          *(&v407 + 1) = v148;
          *&v408 = v124;
          v335 = v377;
          *(&v408 + 1) = v377;
          *&v409 = &unk_1BE1023A8;
          *(&v409 + 1) = v393;
          *&v410 = sub_1BD8D36BC;
          *(&v410 + 1) = v387;
          *&v411 = v394;
          *(&v411 + 1) = v125;
          v412 = v385;
          v413 = v384;
          *&v414 = v383;
          *(&v414 + 1) = *(&v382 + 1);
          *&v415 = v378;
          BYTE8(v415) = v376;
          *&v416 = v375;
          *(&v416 + 1) = v374;
          *&v417 = v373;
          *(&v417 + 1) = v154;
          *&v418[0] = v372;
          *(&v418[0] + 1) = v149;
          *&v418[1] = v151;
          DWORD2(v418[1]) = v153;
          sub_1BD8D331C();
          v336 = v339;
          sub_1BE050E54();

          v428 = v416;
          v429 = v417;
          v430[0] = v418[0];
          *(v430 + 12) = *(v418 + 12);
          v425 = v413;
          v426 = v414;
          v427 = v415;
          v421 = v409;
          v422 = v410;
          v423 = v411;
          v424 = v412;
          v419 = v407;
          v420 = v408;
          sub_1BD8D36C8(&v419);
          v338 = v361;
          v337 = v362;
          (*(v361 + 32))(v143, v336, v362);
          (*(v338 + 56))(v143, 0, 1, v337);
          goto LABEL_47;
        }

        v124 = v397;
      }

      else
      {
      }

      v327 = v400;
      v328 = [v400 preferredCurrencyCode];

      if (v328)
      {
        v329 = sub_1BE052434();
        v372 = v330;

        v149 = MEMORY[0x1BFB403C0](0);
        v154 = v329;
      }

      else
      {
        v333 = sub_1BE052434();
        v372 = v334;
        v149 = MEMORY[0x1BFB403C0](0);
        v154 = v333;
      }

      v151 = v331;
      v153 = v332;
      v148 = v400;
      goto LABEL_87;
    }

    v243 = *v99;
    v244 = v99[1];
    v245 = v99[3];
    v399 = v99[5];
    v246 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
    v397 = v243;
    *&v398 = v245;
    if (!v246 || !v244)
    {
      v257 = v360;
      (*(v359 + 56))(v360, 1, 1, v369);
LABEL_61:
      sub_1BD0DE19C(v257, v390, &unk_1EBD57B80);
      swift_storeEnumTagMultiPayload();
      sub_1BD8D31E0();
      sub_1BD349E94();
      v277 = v392;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v277, v403, &qword_1EBD57B48);
      swift_storeEnumTagMultiPayload();
      sub_1BD8D2C84();
      sub_1BD8D3154();
      sub_1BE04F9A4();

      sub_1BD0DE53C(v277, &qword_1EBD57B48);
      v278 = v257;
      v279 = &unk_1EBD57B80;
      return sub_1BD0DE53C(v278, v279);
    }

    v400 = v99[2];
    v247 = v99[4];
    LOBYTE(v407) = 0;
    v248 = v243;
    v249 = v399;
    sub_1BE048964();
    sub_1BE048964();
    v244 = v244;
    v250 = v246;
    sub_1BE051694();
    v251 = *(&v419 + 1);
    v252 = v353;
    v353[80] = v419;
    *(v252 + 88) = v251;
    *&v407 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
    sub_1BE051694();
    *(v252 + 96) = v419;
    v253 = *(v369 + 56);
    *(v252 + v253) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    *v252 = v248;
    *(v252 + 8) = v250;
    *(v252 + 24) = v244;
    *(v252 + 32) = v247;
    *(v252 + 40) = v249;
    *(v252 + 72) = 0;
    v254 = v248;
    v255 = v250;
    v256 = [v244 identifier];
    v257 = v360;
    if (!v256)
    {
      sub_1BE052434();
      v256 = sub_1BE052404();
    }

    v258 = [v254 uniqueID];

    v259 = [v255 paymentOfferCollectionForCriteriaIdentifier:v256 passUniqueID:v258];
    v260 = [v259 installmentAssessment];

    *(v252 + 16) = v260;
    *(v252 + 48) = v400;
    *(v252 + 56) = v245;
    if (v260)
    {
      v261 = v260;
      v262 = [v261 dynamicContent];
      if (v262)
      {
        v263 = v262;
        v264 = [v262 dynamicContentPageForPageType_];

        if (v264)
        {
          goto LABEL_45;
        }
      }

      v265 = [v261 dynamicContent];

      if (v265)
      {
        v264 = [v265 dynamicContentPageForPageType_];
        v261 = v265;
LABEL_45:

LABEL_60:
        *(v252 + 64) = v264;
        v276 = v352;
        sub_1BD8D3750(v252, v352, type metadata accessor for SelectedPaymentOfferActionView);
        sub_1BD8D3750(v276, v257, type metadata accessor for SelectedPaymentOfferActionView);
        (*(v359 + 56))(v257, 0, 1, v369);
        goto LABEL_61;
      }
    }

    v264 = 0;
    goto LABEL_60;
  }

  v388 = v91;
  v389 = v86;
  v390 = v88;
  v391 = v87;
  v108 = v383;
  v109 = v384;
  v110 = v385;
  v392 = v95;
  v399 = v92;
  v112 = v386;
  v111 = v387;
  if (!EnumCaseMultiPayload)
  {
    v155 = *v99;
    v156 = *(v99 + 8);
    v157 = *(v99 + 2);
    v387 = *(v99 + 1);
    v398 = v157;
    v158 = v99[6];

    v159 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
    v160 = v108;
    if (v159 && (v161 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria]) != 0)
    {
      *&v385 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
      v162 = v385;
      v163 = v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8];
      LODWORD(v384) = v163;
      *&v407 = 0;
      v164 = v159;
      v165 = v161;
      v400 = v164;
      v386 = v165;
      sub_1BD8D37B8(v162, v163);
      v166 = v387;
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
      sub_1BE051694();
      v167 = v389;
      *(v389 + 72) = v419;
      LODWORD(v382) = v156;
      v168 = v83;
      v169 = type metadata accessor for MultiHyperLinkDetailSheet();
      v170 = *(*(v169 - 8) + 56);
      v381 = v158;
      v171 = v367;
      v170(v367, 1, 1, v169);
      sub_1BD0DE19C(v171, v366, &unk_1EBD45160);
      v172 = v108;
      sub_1BE051694();
      sub_1BD0DE53C(v171, &unk_1EBD45160);
      v173 = v167 + v168[13];
      LOBYTE(v407) = 0;
      sub_1BE051694();
      v174 = *(&v419 + 1);
      *v173 = v419;
      *(v173 + 8) = v174;
      v175 = v167 + v168[14];
      v407 = 0uLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
      sub_1BE051694();
      v176 = v420;
      *v175 = v419;
      *(v175 + 16) = v176;
      v177 = v167 + v168[15];
      LOBYTE(v407) = 0;
      sub_1BE051694();
      v178 = *(&v419 + 1);
      *v177 = v419;
      *(v177 + 8) = v178;
      v179 = v167 + v168[16];
      LOBYTE(v407) = 0;
      sub_1BE051694();
      v180 = *(&v419 + 1);
      *v179 = v419;
      *(v179 + 8) = v180;
      v181 = v168[17];
      *(v167 + v181) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
      swift_storeEnumTagMultiPayload();
      v182 = v167 + v168[18];
      *v182 = swift_getKeyPath();
      *(v182 + 8) = 0;
      *v167 = v385;
      *(v167 + 8) = v384;
      *(v167 + 9) = v382;
      v183 = v400;
      v184 = v386;
      *(v167 + 16) = v400;
      *(v167 + 24) = v184;
      v185 = v398;
      *(v167 + 32) = v387;
      *(v167 + 48) = v185;
      *(v167 + 64) = v381;
      sub_1BD8D2BB0(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView);
      v186 = v388;
      sub_1BE050E54();

      sub_1BD8D2AE0(v167, type metadata accessor for PaymentOfferInstallmentSelectionView);
      v188 = v390;
      v187 = v391;
      v189 = v392;
      (*(v390 + 32))(v392, v186, v391);
      v190 = 0;
    }

    else
    {
      v190 = 1;
      v187 = v391;
      v189 = v392;
      v188 = v390;
      v172 = v160;
    }

    (*(v188 + 56))(v189, v190, 1, v187);
    sub_1BD0DE19C(v189, v375, &qword_1EBD57AD8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2D9C();
    sub_1BD8D2E80();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v172, v395, &qword_1EBD57AC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2D10();
    sub_1BD8D2F30();
    v269 = v396;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v172, &qword_1EBD57AC8);
    sub_1BD0DE19C(v269, v403, &qword_1EBD57AB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2C84();
    sub_1BD8D3154();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v269, &qword_1EBD57AB8);
    return sub_1BD0DE53C(v189, &qword_1EBD57AD8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v113 = *v99;
    v114 = v99[2];
    v115 = v99[3];
    v116 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
    v399 = v99[5];
    v391 = v115;
    v392 = v113;
    if (v116 && (v117 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria]) != 0)
    {
      v118 = v99[1];
      v119 = v99[4];
      v120 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
      v121 = v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8];
      v389 = v119;
      v390 = v114;
      v388 = v118;
      if (((v121 >> 5) - 1 < 6 || v121 >> 5 != 7 && v120) && (objc_opt_self(), (v122 = swift_dynamicCastObjCClass()) != 0))
      {
        v400 = v122;
        sub_1BD8D37B8(v120, v121);
      }

      else
      {
        v400 = 0;
      }

      *&v407 = 0;
      sub_1BE048964();
      *&v385 = v113;
      *&v384 = v117;
      v383 = v116;
      sub_1BE048964();
      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD496C8);
      sub_1BE051694();
      v382 = v419;
      LOBYTE(v407) = 0;
      sub_1BE051694();
      v280 = *(&v419 + 1);
      *(v111 + 88) = v419;
      *(v111 + 96) = v280;
      LOBYTE(v407) = 0;
      sub_1BE051694();
      v281 = *(&v419 + 1);
      *(v111 + 104) = v419;
      *(v111 + 112) = v281;
      *&v407 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD496F0);
      sub_1BE051694();
      *(v111 + 120) = v419;
      v282 = v356;
      v283 = v342;
      (*(v340 + 56))(v342, 1, 1, v341);
      sub_1BD0DE19C(v283, v346, &unk_1EBD49700);
      sub_1BE051694();
      sub_1BD0DE53C(v283, &unk_1EBD49700);
      v284 = v282;
      v285 = *(v282 + 64);
      *&v407 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
      sub_1BE051694();
      *(v111 + v285) = v419;
      v286 = v383;
      *v111 = v384;
      *(v111 + 8) = v385;
      *(v111 + 16) = v286;
      *(v111 + 80) = v115;
      *(v111 + 24) = 1;
      v287 = v390;
      *(v111 + 32) = v388;
      *(v111 + 40) = v287;
      *&v407 = v400;
      sub_1BE051694();

      *(v111 + 48) = v419;
      v288 = v399;
      *(v111 + 64) = v389;
      *(v111 + 72) = v288;
      v289 = v111;
      v290 = v350;
      sub_1BD8D3750(v289, v350, type metadata accessor for PaymentOfferCriteriaActionSetupView);
      v270 = v112;
      sub_1BD8D3750(v290, v112, type metadata accessor for PaymentOfferCriteriaActionSetupView);
      (*(v355 + 56))(v112, 0, 1, v284);
    }

    else
    {

      v270 = v112;
      (*(v355 + 56))(v112, 1, 1, v356);
    }

    sub_1BD0DE19C(v270, v376, &qword_1EBD57B30);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2FBC();
    sub_1BD8D30A0();
    v291 = v378;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v291, v395, &qword_1EBD57B08);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2D10();
    sub_1BD8D2F30();
    v292 = v396;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v291, &qword_1EBD57B08);
    sub_1BD0DE19C(v292, v403, &qword_1EBD57AB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2C84();
    sub_1BD8D3154();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v292, &qword_1EBD57AB8);
    v278 = v270;
    v279 = &qword_1EBD57B30;
    return sub_1BD0DE53C(v278, v279);
  }

  v191 = v383;
  v192 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A40) + 48));
  v194 = *v192;
  v193 = v192[1];
  sub_1BD8D3750(v99, v372, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
  v195 = *&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
  if (!v195)
  {
    v205 = 1;
    v196 = v375;
LABEL_57:
    v203 = v364;
    v204 = v365;
    goto LABEL_58;
  }

  v196 = v375;
  if (!*&v400[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria])
  {
    v205 = 1;
    goto LABEL_57;
  }

  *&v398 = v194;
  v197 = v195;
  sub_1BD6FB2CC();
  v400 = v198;
  v199 = objc_allocWithZone(PKPaymentSetupDismissibleNavigationController);
  v200 = v197;
  sub_1BE048964();
  result = [v199 initWithContext_];
  if (result)
  {
    v202 = result;
    *&v419 = v400;
    *(&v419 + 1) = v200;
    *&v420 = v398;
    *(&v420 + 1) = v193;
    *&v421 = result;
    sub_1BD5282BC();
    sub_1BE050E54();

    v203 = v364;
    v204 = v365;
    (*(v110 + 32))(v364, v109, v365);
    v205 = 0;
LABEL_58:
    (*(v110 + 56))(v203, v205, 1, v204);
    sub_1BD0DE19C(v203, v196, &unk_1EBD57AF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2D9C();
    sub_1BD8D2E80();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v191, v395, &qword_1EBD57AC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2D10();
    sub_1BD8D2F30();
    v275 = v396;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v191, &qword_1EBD57AC8);
    sub_1BD0DE19C(v275, v403, &qword_1EBD57AB8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D2C84();
    sub_1BD8D3154();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v275, &qword_1EBD57AB8);
    sub_1BD0DE53C(v203, &unk_1EBD57AF0);
    return sub_1BD8D2AE0(v372, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD8C51B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__detailSheet;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD57C38);
}

uint64_t sub_1BD8C5290(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD57C38);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD57C38);
}

uint64_t sub_1BD8C53E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1BD0DE19C(a2, &v10 - v6, &qword_1EBD57C38);
  v8 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__detailSheet;
  swift_beginAccess();
  sub_1BD8D37E8(v7, a1 + v8);
  swift_endAccess();
  sub_1BD8C1E50();
  return sub_1BD0DE53C(v7, &qword_1EBD57C38);
}

double sub_1BD8C54D4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v15 = v1;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v3 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64);
  v4 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96);
  v20 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80);
  v21 = v4;
  v5 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16);
  v15 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails);
  v6 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32);
  v7 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48);
  v16 = v5;
  v17 = v6;
  v22 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 112);
  v18 = v7;
  v19 = v3;
  sub_1BD0DE19C(&v15, v14, &unk_1EBD57B90);
  v8 = v20;
  v9 = v21;
  v10 = v18;
  *(a1 + 64) = v19;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  result = *&v15;
  v12 = v16;
  v13 = v17;
  *a1 = v15;
  *(a1 + 16) = v12;
  *(a1 + 112) = v22;
  *(a1 + 32) = v13;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_1BD8C55F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v19[0] = v3;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v4 = v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails;
  v5 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails);
  v6 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16);
  v7 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48);
  v19[2] = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32);
  v19[3] = v7;
  v19[1] = v6;
  v19[0] = v5;
  v8 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64);
  v9 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80);
  v10 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96);
  v20 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 112);
  v19[5] = v9;
  v19[6] = v10;
  v19[4] = v8;
  v11 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails);
  v12 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16);
  v13 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48);
  *(a2 + 32) = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32);
  *(a2 + 48) = v13;
  *a2 = v11;
  *(a2 + 16) = v12;
  v14 = *(v4 + 64);
  v15 = *(v4 + 80);
  v16 = *(v4 + 96);
  *(a2 + 112) = *(v4 + 112);
  *(a2 + 80) = v15;
  *(a2 + 96) = v16;
  *(a2 + 64) = v14;
  return sub_1BD0DE19C(v19, v18, &unk_1EBD57B90);
}

uint64_t sub_1BD8C5720()
{
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();
}

void *sub_1BD8C5814(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails;
  v3 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails);
  v4 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 8);
  v5 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16);
  v6 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 24);
  v7 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32);
  v8 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 40);
  v9 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48);
  v10 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 56);
  v16 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80);
  v17 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64);
  v15 = *(a1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96);
  v11 = *(a2 + 80);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = v11;
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 112) = *(a2 + 112);
  v12 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v12;
  v13 = *(a2 + 48);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 48) = v13;
  sub_1BD0DE19C(a2, v18, &unk_1EBD57B90);
  return sub_1BD8D3468(v3, v4, v5, v6, v7, v8, v9, v10, v17, *(&v17 + 1), v16, *(&v16 + 1), v15, *(&v15 + 1));
}

uint64_t sub_1BD8C5910()
{
  swift_getKeyPath();
  *&v49 = v0;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  if (*(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails) == 1)
  {
    swift_getKeyPath();
    *&v47[0] = v0;
    sub_1BE04B594();

    v2 = v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails;
    v3 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80);
    v53 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64);
    v54 = v3;
    v55 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96);
    v56 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 112);
    v4 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16);
    v49 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails);
    v50 = v4;
    v5 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48);
    v51 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32);
    v52 = v5;
    if (v49)
    {
      v33 = v49;
      v6 = *(v2 + 8);
      v7 = *(v2 + 104);
      v57 = *(v2 + 88);
      v58 = v7;
      v59 = v6;
      v8 = *(v2 + 80);
      v10 = *(v2 + 32);
      v9 = *(v2 + 48);
      v47[4] = *(v2 + 64);
      v47[5] = v8;
      v47[6] = *(v2 + 96);
      v11 = *(v2 + 16);
      v47[0] = *v2;
      v47[1] = v11;
      v12 = *(&v50 + 1);
      v13 = v51;
      v14 = v52;
      v31 = v53;
      v32 = *(&v52 + 1);
      v34 = *(&v53 + 1);
      v35 = v54;
      v48 = *(v2 + 112);
      v47[2] = v10;
      v47[3] = v9;
      swift_getKeyPath();
      *&v37[0] = v0;
      sub_1BD482978(v47, &aBlock);
      sub_1BE04B594();

      if (*(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler))
      {
        v30 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler);
        sub_1BE048964();
        v15 = sub_1BE052404();
        v16 = sub_1BE052404();
        v29 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

        v17 = swift_allocObject();
        *(v17 + 16) = v33;
        v18 = v58;
        *(v17 + 24) = v59;
        *(v17 + 40) = v12;
        *(v17 + 48) = v13;
        *(v17 + 64) = v14;
        *(v17 + 72) = v32;
        *(v17 + 80) = v31;
        *(v17 + 88) = v34;
        *(v17 + 96) = v35;
        *(v17 + 104) = v57;
        *(v17 + 120) = v18;
        v37[1] = v50;
        v37[2] = v51;
        v37[0] = v49;
        v38 = v56;
        v37[5] = v54;
        v37[6] = v55;
        v37[3] = v52;
        v37[4] = v53;
        sub_1BD482978(v37, &aBlock);
        v19 = sub_1BE052404();
        *&v41 = sub_1BD8D343C;
        *(&v41 + 1) = v17;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_1BD198918;
        *(&v40 + 1) = &block_descriptor_205;
        v20 = _Block_copy(&aBlock);

        v21 = objc_opt_self();
        v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
        _Block_release(v20);

        v23 = swift_allocObject();
        *(v23 + 16) = v33;
        v24 = v58;
        *(v23 + 24) = v59;
        *(v23 + 40) = v12;
        *(v23 + 48) = v13;
        *(v23 + 64) = v14;
        *(v23 + 72) = v32;
        *(v23 + 80) = v31;
        *(v23 + 88) = v34;
        *(v23 + 96) = v35;
        *(v23 + 104) = v57;
        *(v23 + 120) = v24;
        v41 = v51;
        v42 = v52;
        aBlock = v49;
        v40 = v50;
        v46 = v56;
        v44 = v54;
        v45 = v55;
        v43 = v53;
        sub_1BD482978(&aBlock, v36);
        v25 = sub_1BE052404();
        v36[4] = sub_1BD8D3444;
        v36[5] = v23;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 1107296256;
        v36[2] = sub_1BD198918;
        v36[3] = &block_descriptor_49_3;
        v26 = _Block_copy(v36);

        v27 = [v21 actionWithTitle:v25 style:0 handler:v26];
        _Block_release(v26);

        [v29 addAction_];
        [v29 addAction_];
        v28 = v29;
        v30(v29);

        sub_1BD0D4744(v30);
      }

      return sub_1BD0DE53C(&v49, &unk_1EBD57B90);
    }
  }

  return result;
}

uint64_t sub_1BD8C5E70(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  return *(v2 + *a2);
}

void sub_1BD8C5F10(uint64_t a1, uint64_t a2)
{
  sub_1BD482578();
  v3 = *a2;
  v4 = sub_1BE052404();
  [v3 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v5 = *(a2 + 88);
  if (v5)
  {
    v6 = sub_1BE048964();
    v5(v6);

    sub_1BD0D4744(v5);
  }
}

void sub_1BD8C5FA8(uint64_t a1, uint64_t a2)
{
  sub_1BD48256C();
  v3 = *a2;
  v4 = sub_1BE052404();
  [v3 markLanguageDisclosureAsSeenForCriteriaForIdentifier_];

  v5 = *(a2 + 104);
  if (v5)
  {
    v6 = sub_1BE048964();
    v5(v6);

    sub_1BD0D4744(v5);
  }
}

uint64_t sub_1BD8C6040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails);
  return result;
}

uint64_t sub_1BD8C60F0(char a1)
{
  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails) = a1 & 1;

    return sub_1BD8C5910();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8C622C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();
  }

  return result;
}

void *sub_1BD8C6344()
{
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  v2 = v1;
  return v1;
}

id sub_1BD8C63F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  *a2 = v4;

  return v4;
}

void sub_1BD8C64B4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel;
  v5 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PaymentOfferSetupAuthenticationModel(0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1BD8C663C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler);
  v5 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BD8D4D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BD0D44B8(v4);
}

uint64_t sub_1BD8C6734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BD8D4CF8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_1BD0D44B8(v1);
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();
  sub_1BD0D4744(v4);
}

id static PaymentOfferInstallmentPlanSelectionModel.initForPostPurchaseInstallments(paymentOffersController:criteria:pass:fromPushNotification:)(void *a1, void *a2, void *a3, char a4)
{
  v14 = a3;
  v15 = a4 ^ 1 | 0xC0;
  v8 = objc_allocWithZone(v4);
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = sub_1BD8D1EE0(&v14, a1, a2);

  return v12;
}

uint64_t PaymentOfferInstallmentPlanSelectionModel.start(handler:viewChangedHandler:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BD8C1B80(0, 1, sub_1BD8D2120, v4);
}

void sub_1BD8C6B00(uint64_t a1, void (*a2)(void, uint64_t, void *))
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v14 - v10);
  sub_1BD0DE19C(a1, &v14 - v10, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = v12;
      a2(0, 0, v12);
    }

    else
    {
      a2(0, 1, 0);
    }
  }

  else
  {
    sub_1BD8D3750(v11, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    a2(*(v7 + 1), 0, 0);
    sub_1BD8D2AE0(v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

void sub_1BD8C6E70(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1BE04A844();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

uint64_t sub_1BD8C6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 160) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = sub_1BE0528A4();
  *(v8 + 88) = sub_1BE052894();
  v10 = swift_task_alloc();
  *(v8 + 96) = v10;
  *v10 = v8;
  v10[1] = sub_1BD8C6FF8;

  return sub_1BD8C7BA0(a5 & 1);
}

uint64_t sub_1BD8C6FF8(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  v4 = sub_1BE052844();
  if (v1)
  {
    v6 = sub_1BD8C7A04;
  }

  else
  {
    v3[15] = v4;
    v3[16] = v5;
    v6 = sub_1BD8C7164;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BD8C7164()
{
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[3] = v1;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    v3 = v0[13];
    if (v3)
    {
LABEL_3:
      v4 = v3;
      v5 = swift_task_alloc();
      v0[17] = v5;
      *v5 = v0;
      v5[1] = sub_1BD8C7384;

      return sub_1BD8C8218(v4);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) = 0;
    v3 = v0[13];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v7 = v0[9];
  v8 = v0[5];

  *v7 = 0;
  swift_storeEnumTagMultiPayload();
  v8(v7);
  sub_1BD0DE53C(v7, &unk_1EBD57C50);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD8C7384(char a1)
{
  v2 = *v1;
  *(*v1 + 161) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C74AC, v4, v3);
}

uint64_t sub_1BD8C74AC()
{
  v1 = *(v0 + 104);
  if (*(v0 + 161) == 1)
  {
    v2 = *(v0 + 160);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1BD8C75F8;

    return sub_1BD8C8628(v1, v2 & 1);
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 40);

    *v5 = 0;
    swift_storeEnumTagMultiPayload();
    v6(v5);

    sub_1BD0DE53C(v5, &unk_1EBD57C50);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1BD8C75F8(char a1)
{
  v2 = *v1;
  *(*v1 + 162) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C7720, v4, v3);
}

uint64_t sub_1BD8C7720()
{
  v1 = *(v0 + 104);
  if (*(v0 + 162) == 1)
  {
    v2 = *(v0 + 160);
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1BD8C7870;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_1BD8C8CF0(v1, v4, v2 & 1, v6, v5);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);

    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    v9(v8);

    sub_1BD0DE53C(v8, &unk_1EBD57C50);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1BD8C7870()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C7990, v3, v2);
}

uint64_t sub_1BD8C7990()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD8C7A04()
{
  v1 = v0[4];

  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading))
  {
    v2 = v0[4];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();
  }

  else
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) = 0;
  }

  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[5];
  *v5 = v4;
  swift_storeEnumTagMultiPayload();
  v7 = v4;
  v6(v5);

  sub_1BD0DE53C(v5, &unk_1EBD57C50);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BD8C7BA0(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 112) = a1;
  sub_1BE0528A4();
  *(v2 + 32) = sub_1BE052894();
  v4 = sub_1BE052844();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD8C7C3C, v4, v3);
}

uint64_t sub_1BD8C7C3C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectWeakInit();
  v2 = sub_1BD8CB628();
  v3 = [v2 installmentAssessment];
  *(v0 + 56) = v3;

  v4 = 1 << (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8) >> 5);
  if ((v4 & 0x33) != 0)
  {
    if (v3)
    {

      MEMORY[0x1BFB46050](v0 + 16);
LABEL_11:
      v9 = *(v0 + 8);

      return v9(v3);
    }

    v5 = *(v0 + 112);
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v7 = sub_1BD8C7E00;
  }

  else
  {
    if ((v4 & 0xC8) == 0)
    {
      MEMORY[0x1BFB46050](v0 + 16);

      goto LABEL_11;
    }

    LOBYTE(v5) = *(v0 + 112);
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v7 = sub_1BD8C7F98;
  }

  v6[1] = v7;

  return sub_1BD8CAC7C(v5 & 1, v0 + 16);
}

uint64_t sub_1BD8C7E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1BD8C8138;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1BD8C7F28;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD8C7F28()
{

  MEMORY[0x1BFB46050](v0 + 16);
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD8C7F98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1BD8C81A4;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1BD8C80C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD8C80C0()
{
  v1 = v0[7];

  MEMORY[0x1BFB46050](v0 + 2);
  v2 = v0[13];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1BD8C8138()
{

  MEMORY[0x1BFB46050](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD8C81A4()
{

  MEMORY[0x1BFB46050](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD8C8218(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1BE0528A4();
  v2[5] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD8C82B4, v4, v3);
}

uint64_t sub_1BD8C82B4()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  v0[8] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria), (v0[9] = v3) != 0))
  {
    v4 = v0[2];
    v5 = v2;
    v6 = v3;
    v7 = sub_1BE052894();
    v0[10] = v7;
    v8 = swift_task_alloc();
    v0[11] = v8;
    v8[2] = v1;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v4;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1BD8C8458;
    v10 = MEMORY[0x1E69E85E0];
    v11 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 13, v7, v10, 0xD000000000000038, 0x80000001BE13F4C0, sub_1BD8D4C84, v8, v11);
  }

  else
  {

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_1BD8C8458()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C85B8, v3, v2);
}

uint64_t sub_1BD8C85B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = *(v0 + 104);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1BD8C8628(uint64_t a1, char a2)
{
  *(v3 + 137) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = sub_1BE0528A4();
  *(v3 + 40) = sub_1BE052894();
  v5 = sub_1BE052844();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD8C86C8, v5, v4);
}

uint64_t sub_1BD8C86C8()
{
  if ((*(v0 + 137) & 1) == 0)
  {
    goto LABEL_11;
  }

  v1 = *(*(v0 + 24) + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  if (v1)
  {
    v2 = [v1 configuration];
    v3 = [v2 context];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(v0 + 16) dynamicContent];
  if (!v4 || (v5 = v4, v6 = [v4 dynamicContentPageForPageType_], *(v0 + 64) = v6, v5, !v6))
  {
LABEL_11:

    goto LABEL_12;
  }

  v7 = *(*(v0 + 24) + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
  if (!v7 || (v8 = [v7 associatedPassUniqueID]) == 0)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_1BE052434();
  v12 = v11;
  *(v0 + 72) = v11;
  v13 = PKHasSeenPaymentOfferInstallmentPartnerExplanationScreen();

  if (v13)
  {

LABEL_12:
    v14 = *(v0 + 8);

    return v14(1);
  }

  v16 = [*(v0 + 16) action];
  v32 = v10;
  if (PKPaymentOffersUseAuthenticationServicesEnabled())
  {
  }

  else if (!v16 || (v17 = [v16 useAuthenticationSession], v16, !v17))
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = 1;
LABEL_22:
  v31 = *(v0 + 24);
  v19 = swift_allocObject();
  *(v0 + 80) = v19;
  *(v19 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C78);
  v20 = swift_allocBox();
  v22 = v21;
  *(v0 + 88) = v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = swift_allocObject();
  *(v0 + 96) = v24;
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  *(v0 + 104) = v25;
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  *(v25 + 32) = v24;
  *(v25 + 40) = v18;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v26 = sub_1BE052894();
  *(v0 + 112) = v26;
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  v27[2] = v31;
  v27[3] = v6;
  v27[4] = v32;
  v27[5] = v12;
  v27[6] = v3;
  v27[7] = sub_1BD8D4BA8;
  v27[8] = v25;
  v27[9] = v20;
  v27[10] = v19;
  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_1BD8C8AC4;
  v29 = MEMORY[0x1E69E85E0];
  v30 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 136, v26, v29, 0xD000000000000043, 0x80000001BE13F470, sub_1BD8D4BB8, v27, v30);
}

uint64_t sub_1BD8C8AC4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C8C48, v3, v2);
}

uint64_t sub_1BD8C8C48()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD8C8CF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 296) = a3;
  *(v6 + 64) = a1;
  v7 = sub_1BE04D214();
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  v8 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction(0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = sub_1BE0528A4();
  *(v6 + 216) = sub_1BE052894();
  v10 = sub_1BE052844();
  *(v6 + 224) = v10;
  *(v6 + 232) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD8C8F14, v10, v9);
}

uint64_t sub_1BD8C8F14()
{
  if (![*(v0 + 64) isEligible])
  {
    v25 = *(v0 + 64);

    v26 = [v25 ineligibleDynamicContent];
    if (v26)
    {
      v27 = v26;
      v28 = *(v0 + 200);
      v29 = *(v0 + 128);
      v30 = *(v0 + 136);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);
      v33 = *(v0 + 80);
      v34 = *(v0 + 64);
      v35 = swift_allocObject();
      v35[2] = v32;
      v35[3] = v33;
      v35[4] = v31;
      *v28 = v34;
      *(v28 + 1) = v27;
      *(v28 + 2) = sub_1BD8D399C;
      *(v28 + 3) = v35;
      swift_storeEnumTagMultiPayload();
      (*(v30 + 56))(v28, 0, 1, v29);
      swift_getKeyPath();
      v36 = swift_task_alloc();
      *(v36 + 16) = v32;
      *(v36 + 24) = v28;
      *(v0 + 16) = v32;
      sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
      v37 = v32;
      sub_1BE048964();
      v38 = v34;
      v39 = v27;
      sub_1BE04B584();

      v23 = &qword_1EBD57C38;
LABEL_15:
      v24 = v28;
      goto LABEL_16;
    }

    sub_1BE04D1E4();
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1BD026000, v40, v41, "No dynamic content defined for ineligible installment assessment", v42, 2u);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    v28 = *(v0 + 192);
    v44 = *(v0 + 112);
    v43 = *(v0 + 120);
    v45 = *(v0 + 104);
    v46 = *(v0 + 80);

    (*(v44 + 8))(v43, v45);
    v47 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
    v48 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
    (*(*(v48 - 8) + 56))(&v28[v47], 1, 1, v48);
    *v28 = 0;
    *(v28 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v46(v28);
LABEL_14:
    v23 = &unk_1EBD57C50;
    goto LABEL_15;
  }

  v1 = *(v0 + 96);
  v2 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context;
  *(v0 + 240) = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context;
  v3 = v1 + v2;
  v4 = *(v3 + 8);
  if ((v4 & 0xE0) == 0xC0)
  {
    v5 = *(v0 + 64);
    v6 = *v3;
    sub_1BD8D37B8(*v3, *(v3 + 8));
    v7 = [v5 dynamicContent];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 dynamicContentPageForPageType_];

      if (v9)
      {
        v10 = *(v0 + 200);
        v11 = *(v0 + 136);
        v12 = *(v0 + 96);
        v63 = *(v0 + 88);
        v64 = *(v0 + 128);
        v13 = *(v0 + 80);
        v14 = *(v0 + 64);

        v15 = *&v12[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria];
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = v14;
        v16[4] = v13;
        v16[5] = v63;
        v16[6] = v6;
        v17 = swift_allocObject();
        v17[2] = v12;
        v17[3] = v13;
        v17[4] = v63;
        *v10 = v6;
        v10[1] = v15;
        v10[2] = sub_1BD8D3A78;
        v10[3] = v16;
        v10[4] = sub_1BD8D3A88;
        v10[5] = v17;
        swift_storeEnumTagMultiPayload();
        (*(v11 + 56))(v10, 0, 1, v64);
        swift_getKeyPath();
        v18 = swift_task_alloc();
        *(v18 + 16) = v12;
        *(v18 + 24) = v10;
        *(v0 + 56) = v12;
        sub_1BD8D37B8(v6, v4);
        v19 = v12;
        sub_1BE048964();
        sub_1BD8D37B8(v6, v4);
        sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
        v20 = v19;
        sub_1BE048964();
        v21 = v15;
        v22 = v14;
        sub_1BE04B584();
        sub_1BD8D3858(v6, v4);

        v23 = &qword_1EBD57C38;
        v24 = v10;
LABEL_16:
        sub_1BD0DE53C(v24, v23);

        v59 = *(v0 + 8);

        return v59();
      }
    }

    sub_1BD8D3858(v6, v4);
  }

  v49 = sub_1BD8CE054(*(v0 + 296) & 1, *(v0 + 64));
  if (v49)
  {
    v50 = v49;
    v28 = *(v0 + 192);
    v51 = *(v0 + 200);
    v52 = *(v0 + 128);
    v53 = *(v0 + 136);
    v54 = *(v0 + 96);
    v65 = *(v0 + 80);

    (*(v53 + 56))(v51, 1, 1, v52);
    swift_getKeyPath();
    v55 = swift_task_alloc();
    *(v55 + 16) = v54;
    *(v55 + 24) = v51;
    *(v0 + 48) = v54;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    sub_1BD0DE53C(v51, &qword_1EBD57C38);
    v56 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
    v57 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
    (*(*(v57 - 8) + 56))(&v28[v56], 1, 1, v57);
    *v28 = 0;
    *(v28 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    v58 = v50;
    v65(v28);

    goto LABEL_14;
  }

  *(v0 + 248) = sub_1BE052894();
  v62 = sub_1BE052844();
  *(v0 + 256) = v62;
  *(v0 + 264) = v61;

  return MEMORY[0x1EEE6DFA0](sub_1BD8C9738, v62, v61);
}

uint64_t sub_1BD8C9738()
{
  v1 = [*(v0 + 64) action];
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 64) sessionIdentifier];
    v4 = sub_1BE052434();
    v6 = v5;

    *(v0 + 280) = v6;
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_1BD8C98B0;
    v8 = *(v0 + 176);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);

    return sub_1BD8CE878(v8, v2, v4, v6, v10, v11, v9);
  }

  else
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);

    (*(v15 + 56))(v13, 1, 2, v14);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);

    return MEMORY[0x1EEE6DFA0](sub_1BD8C9A60, v16, v17);
  }
}

uint64_t sub_1BD8C98B0()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1BD8C99F4, v3, v2);
}

uint64_t sub_1BD8C99F4()
{
  v1 = v0[34];

  v2 = v0[28];
  v3 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1BD8C9A60, v2, v3);
}

uint64_t sub_1BD8C9A60()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  sub_1BD8D39A8(v2, v1, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);
  v5 = (*(v4 + 48))(v1, 2, v3);
  if (!v5)
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    sub_1BD8D3750(*(v0 + 168), v15, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    sub_1BD8D39A8(v15, v13, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    (*(v17 + 56))(v13, 0, 1, v16);
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v13;
    *(v0 + 24) = v18;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    sub_1BD8D2AE0(v15, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    sub_1BD8D2AE0(v14, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);

    sub_1BD0DE53C(v13, &qword_1EBD57C38);
    goto LABEL_24;
  }

  if (v5 != 1)
  {
    v20 = *(v0 + 176);
LABEL_23:
    sub_1BD8D2AE0(v20, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);
    goto LABEL_24;
  }

  v6 = *(v0 + 96);
  v7 = v6 + *(v0 + 240);
  v8 = *v7;
  v9 = *(v7 + 8);
  if ((v9 >> 5) - 1 >= 6 && (v9 >> 5 || v8 == 0))
  {
    v41 = *(v0 + 192);
    v42 = *(v0 + 176);
    v43 = *(v0 + 80);
    *v41 = 0;
    swift_storeEnumTagMultiPayload();
    v43(v41);
    sub_1BD0DE53C(v41, &unk_1EBD57C50);
    v20 = v42;
    goto LABEL_23;
  }

  if ((v9 & 0xE0) != 0xA0)
  {
    sub_1BD8D37B8(v8, v9);
LABEL_11:
    v21 = [*(v0 + 64) offers];
    if (v21)
    {
      v22 = v21;
      sub_1BD0E5E8C(0, &qword_1EBD39018);
      v23 = sub_1BE052744();

      v24 = v23 >> 62 ? sub_1BE053704() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v24)
      {
        v25 = *(v0 + 88);
        v26 = *(v0 + 96);
        v27 = *(v0 + 144);
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v28 = *(v0 + 136);
        v58 = 0x1010001000001uLL >> ((v26[*(v0 + 240) + 8] >> 2) & 0x38);
        v59 = *(v0 + 128);
        v29 = *(v0 + 80);
        v30 = *(v0 + 64);
        v60 = *(v0 + 200);
        v31 = swift_allocObject();
        v31[2] = v26;
        v31[3] = v29;
        v31[4] = v25;
        v32 = swift_allocObject();
        v32[2] = v26;
        v32[3] = v29;
        v32[4] = v25;
        *v27 = v8;
        *(v27 + 8) = v58;
        *(v27 + 16) = v30;
        *(v27 + 24) = sub_1BD8D3A10;
        *(v27 + 32) = v31;
        *(v27 + 40) = sub_1BD8D3A44;
        *(v27 + 48) = v32;
        swift_storeEnumTagMultiPayload();
        sub_1BD8D3750(v27, v64, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
        sub_1BD8D39A8(v64, v60, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
        (*(v28 + 56))(v60, 0, 1, v59);
        swift_getKeyPath();
        v33 = swift_task_alloc();
        *(v33 + 16) = v26;
        *(v33 + 24) = v60;
        *(v0 + 32) = v26;
        v34 = v26;
        swift_retain_n();
        v35 = v34;
        v36 = v30;
        sub_1BD8D37B8(v8, v9);
        sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
        sub_1BE04B584();

        sub_1BD8D3858(v8, v9);
        sub_1BD8D2AE0(v64, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
        sub_1BD8D2AE0(v62, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);

        sub_1BD0DE53C(v60, &qword_1EBD57C38);
        goto LABEL_24;
      }
    }

    v37 = *(v0 + 192);
    v38 = *(v0 + 176);
    v39 = *(v0 + 80);
    *v37 = 0;
    swift_storeEnumTagMultiPayload();
    v39(v37);
    sub_1BD8D3858(v8, v9);
    sub_1BD0DE53C(v37, &unk_1EBD57C50);
    v20 = v38;
    goto LABEL_23;
  }

  v10 = *(v6 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  if (v10)
  {
    sub_1BD8D37B8(v8, v9);
    v11 = [v10 configuration];
    v12 = [v11 transactionAmount];

    if (v12)
    {

      goto LABEL_11;
    }
  }

  else
  {
    sub_1BD8D37B8(v8, v9);
  }

  v46 = *(v0 + 200);
  v47 = *(v0 + 136);
  v61 = *(v0 + 128);
  v48 = *(v0 + 88);
  v49 = *(v0 + 96);
  v50 = *(v0 + 80);
  v51 = *(v0 + 64);
  v63 = v51;
  v65 = *(v0 + 176);
  v52 = swift_allocObject();
  v52[2] = v49;
  v52[3] = v50;
  v52[4] = v48;
  v53 = swift_allocObject();
  v53[2] = v49;
  v53[3] = v50;
  v53[4] = v48;
  *v46 = v8;
  v46[1] = v51;
  v46[2] = sub_1BD8D3A10;
  v46[3] = v52;
  v46[4] = sub_1BD8D3A44;
  v46[5] = v53;
  swift_storeEnumTagMultiPayload();
  (*(v47 + 56))(v46, 0, 1, v61);
  swift_getKeyPath();
  v54 = swift_task_alloc();
  *(v54 + 16) = v49;
  *(v54 + 24) = v46;
  *(v0 + 40) = v49;
  v55 = v49;
  swift_retain_n();
  v56 = v55;
  v57 = v63;
  sub_1BD8D37B8(v8, v9);
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();
  sub_1BD8D3858(v8, v9);

  sub_1BD8D2AE0(v65, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);

  sub_1BD0DE53C(v46, &qword_1EBD57C38);
LABEL_24:

  v44 = *(v0 + 8);

  return v44();
}

id PaymentOfferInstallmentPlanSelectionModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentOfferInstallmentPlanSelectionModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD8CA54C()
{
  v1 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD8D39A8(v0, v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
        return 0x4872656E74726170;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A40);

        sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
        return 0xD000000000000010;
      }
    }

    else
    {
      sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
      return 0xD000000000000014;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
      return 0x6E45746E756F6D61;
    }

    else
    {
      sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
      return 0xD000000000000026;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    return 0xD000000000000015;
  }

  else
  {
    sub_1BD8D2AE0(v4, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    return 0xD000000000000012;
  }
}

uint64_t sub_1BD8CA7E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD8CA54C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD8CA80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1BE0528A4();
  v3[5] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CA8A8, v5, v4);
}

id sub_1BD8CA8A8()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) configuration];
  result = [v1 amount];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  [v2 updateTransactionAmount_];

  v7 = [v5 configuration];
  result = [v6 currency];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v0 + 24);
  [v7 updateCurrencyCode_];

  [v9 removeCachedPaymentOffers];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1BD8CAA18;

  return sub_1BD8C7BA0(1);
}

uint64_t sub_1BD8CAA18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1BD8CABA8;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1BD8CAB40;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD8CAB40()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1BD8CABA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD8CAC0C(void *a1, uint64_t (*a2)(id))
{
  v4 = [a1 configuration];
  [v4 removeTransactionAmount];

  return a2([a1 removeCachedPaymentOffers]);
}

uint64_t sub_1BD8CAC7C(char a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 120) = a1;
  sub_1BE0528A4();
  *(v2 + 72) = sub_1BE052894();
  v4 = sub_1BE052844();
  *(v2 + 80) = v4;
  *(v2 + 88) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CAD18, v4, v3);
}

uint64_t sub_1BD8CAD18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    if (*(v0 + 120))
    {
      v2 = 3;
    }

    else
    {
      v2 = 7;
    }

    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1BD8CAE7C;

    return sub_1BD8CB0C0(v2);
  }

  else
  {

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = sub_1BD8CB628();

      v5 = [v6 installmentAssessment];
    }

    v7 = *(v0 + 8);

    return v7(v5);
  }
}

uint64_t sub_1BD8CAE7C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1BD8CB054;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1BD8CAF98;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD8CAF98()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_1BD8CB628();

    Strong = [v2 installmentAssessment];
  }

  v3 = *(v0 + 8);

  return v3(Strong);
}

uint64_t sub_1BD8CB054()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD8CB0C0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1BE0528A4();
  v2[20] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CB158, v4, v3);
}

uint64_t sub_1BD8CB158()
{
  v1 = v0[19];
  v2 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  v0[23] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria), (v0[24] = v3) != 0))
  {
    v4 = v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context;
    v5 = *v4;
    v6 = *(v4 + 8);
    if ((v6 >> 5) - 1 < 6 || !(v6 >> 5) && v5)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        sub_1BD8D37B8(v5, v6);
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = objc_allocWithZone(MEMORY[0x1E69B9208]);
    v11 = v3;
    v12 = v2;
    v13 = [v10 initWithPaymentPass_];
    v0[25] = v13;

    v14 = [v11 identifier];
    if (!v14)
    {
      sub_1BE052434();
      v14 = sub_1BE052404();
    }

    v0[26] = v14;
    v15 = v0[18];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1BD8CB3DC;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD22B1E0;
    v0[13] = &block_descriptor_80_0;
    v0[14] = v16;
    [v12 updatePaymentOffersForCriteriaIdentifier:v14 selectedPassDetails:v13 reason:v15 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1BD8CB3DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1BD8CB594;
  }

  else
  {
    v5 = sub_1BD8CB50C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8CB50C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD8CB594()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

id sub_1BD8CB628()
{
  v1 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 identifier];
  if (!v5)
  {
    sub_1BE052434();
    v5 = sub_1BE052404();
  }

  v6 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context);
  v7 = *(v0 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8) >> 5;
  if (((v7 - 1) < 6 || !v7 && v6) && (v8 = [v6 uniqueID]) != 0)
  {
    v9 = v8;
    sub_1BE052434();

    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  v12 = [v4 paymentOfferCollectionForCriteriaIdentifier:v5 passUniqueID:v10];

  return v12;
}

uint64_t sub_1BD8CB774(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v31 = a5;
  v30 = a4;
  v29 = a3;
  v32 = a2;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v28 - v14;
  v16 = *(v7 + 16);
  v16(&v28 - v14, a1, v6, v13);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v18 = *(v7 + 32);
  v18(v28 + v17, v15, v6);
  (v16)(v10, v33, v6);
  v19 = swift_allocObject();
  v18(v19 + v17, v10, v6);
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v23 = v31;
  sub_1BD482A40(v20, v21, v22, sub_1BD8D4C90, v28, sub_1BD8D4C98, v19, v37);
  swift_getKeyPath();
  v34 = v32;
  v35 = v37;
  v36 = v32;
  v24 = v32;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();
  sub_1BD0DE53C(v37, &unk_1EBD57B90);

  swift_getKeyPath();
  v36 = v24;
  sub_1BE04B594();

  if (*(v24 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails))
  {
    if (*(v24 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails) == 1)
    {
      *(v24 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails) = 1;
      return sub_1BD8C5910();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v27);
      *(&v28 - 2) = v24;
      *(&v28 - 8) = 1;
      v36 = v24;
      sub_1BE04B584();
    }
  }

  else
  {
    LOBYTE(v36) = 1;
    return sub_1BE052864();
  }
}

uint64_t sub_1BD8CBB74(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v45 = a7;
  v47 = a6;
  v50 = a5;
  v44 = a3;
  v49 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C78);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v46 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v51 = &v43 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v43 - v29;
  v31 = swift_projectBox();
  sub_1BD0DE19C(a1, v19, &unk_1EBD57C78);
  v48 = *(v21 + 48);
  if (v48(v19, 1, v20) == 1)
  {
    sub_1BD0DE53C(v19, &unk_1EBD57C78);
  }

  else
  {
    v32 = v21;
    v33 = *(v21 + 32);
    v33(v30, v19, v20);
    v33(v15, v30, v20);
    v21 = v32;
    (*(v32 + 56))(v15, 0, 1, v20);
    swift_beginAccess();
    sub_1BD2C7C4C(v15, v31, &unk_1EBD57C78);
  }

  v34 = v49;
  v35 = v51;
  if (v49 != 2)
  {
    v36 = v50;
    swift_beginAccess();
    *(v36 + 16) = v34;
  }

  swift_beginAccess();
  sub_1BD0DE19C(v31, v11, &unk_1EBD57C78);
  if (v48(v11, 1, v20) == 1)
  {
    return sub_1BD0DE53C(v11, &unk_1EBD57C78);
  }

  (*(v21 + 32))(v35, v11, v20);
  v38 = v50;
  swift_beginAccess();
  v39 = *(v38 + 16);
  if (v39 == 2)
  {
    return (*(v21 + 8))(v35, v20);
  }

  v40 = v47;
  swift_beginAccess();
  if (*(v40 + 16))
  {
    return (*(v21 + 8))(v35, v20);
  }

  v41 = v46;
  (*(v21 + 16))(v46, v35, v20);
  if (v39 & 1) == 0 || (v45 & 1) == 0 || (v44)
  {
    swift_beginAccess();
    *(v40 + 16) = 1;
    v52 = v39 & 1;
    sub_1BE052864();
  }

  v42 = *(v21 + 8);
  v42(v41, v20);
  return (v42)(v35, v20);
}

uint64_t sub_1BD8CC01C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v40 = a10;
  v41 = a3;
  v39 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = (&v36 - v22);
  (*(v15 + 16))(v18, a1, v14, v21);
  v24 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v26 = v36;
  v27 = v37;
  *(v25 + 2) = a2;
  *(v25 + 3) = v26;
  v28 = v38;
  *(v25 + 4) = v27;
  *(v25 + 5) = v28;
  *(v25 + 6) = a7;
  *(v25 + 7) = a8;
  (*(v15 + 32))(&v25[v24], v18, v14);
  v29 = swift_allocObject();
  v29[2] = a7;
  v29[3] = a8;
  v30 = v40;
  v29[4] = v39;
  v29[5] = v30;
  v31 = v41;
  *v23 = v41;
  v23[1] = sub_1BD8D4BF0;
  v23[2] = v25;
  v23[3] = sub_1BD8D4C78;
  v23[4] = v29;
  v32 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
  swift_getKeyPath();
  v42 = a2;
  v43 = v23;
  v44 = a2;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  swift_retain_n();
  v33 = v31;
  v34 = a2;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04B584();

  return sub_1BD0DE53C(v23, &qword_1EBD57C38);
}

uint64_t sub_1BD8CC34C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, void, void), uint64_t a7, uint64_t a8)
{
  v24[2] = a7;
  v25 = a6;
  v24[0] = a4;
  v24[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C78);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v24 - v17;
  v19 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  swift_getKeyPath();
  v26 = a2;
  v27 = v18;
  v28 = a2;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v18, &qword_1EBD57C38);
  if (a1)
  {
    v20 = sub_1BE052404();
    PKSetHasSeenPaymentOfferInstallmentPartnerExplanationScreen();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, a8, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  v25(v14, a1 & 1, 0);
  return sub_1BD0DE53C(v14, &unk_1EBD57C78);
}

uint64_t sub_1BD8CC620(void (*a1)(_BYTE *, void, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C78);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  v10 = swift_projectBox();
  swift_beginAccess();
  sub_1BD0DE19C(v10, v9, &unk_1EBD57C78);
  swift_beginAccess();
  a1(v9, *(a4 + 16), 1);
  return sub_1BD0DE53C(v9, &unk_1EBD57C78);
}

uint64_t sub_1BD8CC72C(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16[-v10];
  v12 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  swift_getKeyPath();
  v17 = a1;
  v18 = v11;
  v19 = a1;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v11, &qword_1EBD57C38);
  v13 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
  v14 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  a2(v7);
  return sub_1BD0DE53C(v7, &unk_1EBD57C50);
}

uint64_t sub_1BD8CC994(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = sub_1BE0528D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1BE0528A4();
  v15 = a1;
  v16 = a2;
  sub_1BE048964();
  v17 = a5;
  v18 = sub_1BE052894();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = v17;
  sub_1BD122C00(0, 0, v13, &unk_1BE102460, v19);
}

uint64_t sub_1BD8CCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  v8[12] = swift_task_alloc();
  v9 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  v8[19] = swift_task_alloc();
  type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  v8[20] = swift_task_alloc();
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction(0);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = sub_1BE0528A4();
  v8[24] = sub_1BE052894();
  v8[25] = sub_1BE052894();
  v11 = sub_1BE052844();
  v8[26] = v11;
  v8[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CCCF8, v11, v10);
}

uint64_t sub_1BD8CCCF8()
{
  v1 = [*(v0 + 64) action];
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = [*(v0 + 64) sessionIdentifier];
    v3 = sub_1BE052434();
    v5 = v4;

    *(v0 + 232) = v3;
    *(v0 + 240) = v5;
    *(v0 + 248) = sub_1BE052894();
    v6 = sub_1BE052844();
    v8 = v7;
    *(v0 + 256) = v6;
    *(v0 + 264) = v7;
    v9 = sub_1BD8CCE44;
    v10 = v6;
  }

  else
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    v14 = *(v13 + 56);
    v14(v11, 1, 2, v12);
    *(v0 + 344) = 0;
    *(v0 + 352) = v14;
    v15 = sub_1BE052844();
    v17 = v16;
    v9 = sub_1BD8CD774;
    v10 = v15;
    v8 = v17;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v8);
}

uint64_t sub_1BD8CCE44()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
  v0[34] = v2;
  if (!v2)
  {

LABEL_10:
    v11 = v0[22];
    v12 = v0[19];
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[9];
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    v15(v12);
    sub_1BD0DE53C(v12, &unk_1EBD57C50);
    v16 = *(v14 + 56);
    v16(v11, 1, 2, v13);

    goto LABEL_11;
  }

  swift_getKeyPath();
  v3 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel___observationRegistrar;
  v0[5] = v1;
  v0[35] = v3;
  v0[36] = sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  v4 = v2;
  sub_1BE04B594();

  v5 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  v0[37] = v5;
  if (!v5)
  {

    goto LABEL_10;
  }

  v6 = v5;
  if ((PKPaymentOffersUseAuthenticationServicesEnabled() & 1) != 0 || [v0[28] useAuthenticationSession])
  {
    v7 = swift_task_alloc();
    v0[38] = v7;
    *v7 = v0;
    v7[1] = sub_1BD8CD17C;
    v8 = v0[28];
    v9 = v0[20];

    return sub_1BD5F9D64(v9, v4, v8);
  }

  v19 = v0[28];
  v29 = v0[29];
  v30 = v0[30];
  v31 = v0[22];
  v20 = v0[17];
  v21 = v0[13];
  v22 = v0[14];
  v24 = v0[9];
  v23 = v0[10];
  v25 = v0[7];

  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v4;
  v26[4] = v24;
  v26[5] = v23;
  *v20 = v19;
  v20[1] = v29;
  v20[2] = v30;
  v20[3] = 0;
  v20[4] = sub_1BD8D3B70;
  v20[5] = v26;
  swift_storeEnumTagMultiPayload();
  sub_1BD8D3750(v20, v31, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  v16 = *(v22 + 56);
  v16(v31, 0, 2, v21);
  v27 = v19;
  v28 = v25;
  sub_1BE048964();
LABEL_11:
  v0[41] = 0;
  v0[42] = v16;
  v17 = v0[26];
  v18 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1BD8CD6E4, v17, v18);
}

uint64_t sub_1BD8CD17C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[39] = v3;
  *v3 = v2;
  v3[1] = sub_1BD8CD2FC;
  v4 = v1[20];
  v5 = v1[10];
  v6 = v1[9];

  return sub_1BD8CF3AC(v4, v6, v5);
}

uint64_t sub_1BD8CD2FC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_1BD8CD514;
  }

  else
  {
    v5 = sub_1BD8CD438;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8CD438()
{
  v1 = v0[37];
  v2 = v0[34];

  v3 = v0[40];
  v4 = v0[22];
  v5 = v0[13];
  v6 = v0[14];
  sub_1BD8D2AE0(v0[20], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  v7 = *(v6 + 56);
  v7(v4, 2, 2, v5);

  v0[41] = v3;
  v0[42] = v7;
  v8 = v0[26];
  v9 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1BD8CD6E4, v8, v9);
}

uint64_t sub_1BD8CD514()
{
  v1 = v0[7];

  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) == 1)
  {
    v2 = v0[7];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[6] = v2;
    sub_1BE04B584();
  }

  else
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) = 0;
  }

  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[19];
  v8 = v0[9];
  *v7 = v4;
  swift_storeEnumTagMultiPayload();
  v9 = v4;
  v8(v7);

  sub_1BD0DE53C(v7, &unk_1EBD57C50);
  v10 = v0[22];
  v11 = v0[13];
  v12 = v0[14];
  sub_1BD8D2AE0(v0[20], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  v13 = *(v12 + 56);
  v13(v10, 2, 2, v11);

  v0[41] = 0;
  v0[42] = v13;
  v14 = v0[26];
  v15 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1BD8CD6E4, v14, v15);
}