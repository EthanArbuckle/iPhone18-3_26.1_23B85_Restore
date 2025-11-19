uint64_t sub_1BD8CD6E4()
{
  v1 = v0[28];

  v2 = v0[42];
  v0[43] = v0[41];
  v0[44] = v2;
  v4 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD8CD774, v4, v3);
}

uint64_t sub_1BD8CD774()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  sub_1BD8D39A8(v2, v1, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);
  v5 = (*(v4 + 48))(v1, 2, v3);
  if (!v5)
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 176);
    v29 = *(v0 + 136);
    v30 = *(v0 + 104);
    v20 = *(v0 + 96);
    v31 = *(v0 + 56);
    sub_1BD8D3750(*(v0 + 168), v29, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    sub_1BD8D39A8(v29, v20, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
    v27(v20, 0, 1, v30);
    swift_getKeyPath();
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v20;
    *(v0 + 16) = v31;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    sub_1BD8D2AE0(v29, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
LABEL_11:
    v26 = v28;
    goto LABEL_12;
  }

  if (v5 != 1)
  {
    sub_1BD8D2AE0(*(v0 + 176), type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);
    goto LABEL_13;
  }

  v6 = [*(v0 + 64) offers];
  if (!v6 || ((v7 = v6, sub_1BD0E5E8C(0, &qword_1EBD39018), v8 = sub_1BE052744(), v7, v8 >> 62) ? (v9 = sub_1BE053704()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v9))
  {
    v28 = *(v0 + 176);
    v20 = *(v0 + 96);
    v33 = *(v0 + 56);
    (*(v0 + 352))(v20, 1, 1, *(v0 + 104));
    swift_getKeyPath();
    v34 = swift_task_alloc();
    *(v34 + 16) = v33;
    *(v34 + 24) = v20;
    *(v0 + 24) = v33;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    goto LABEL_11;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = 0x1010001000001uLL >> ((v10[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8] >> 2) & 0x38);
  v41 = *(v0 + 176);
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);
  v39 = *(v0 + 352);
  v15 = *(v0 + 88);
  v37 = *(v0 + 128);
  v38 = *(v0 + 96);
  v40 = v15;
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = v17;
  v18[4] = v16;
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v17;
  v19[4] = v16;
  *v13 = v15;
  *(v13 + 8) = v12;
  *(v13 + 16) = v11;
  *(v13 + 24) = sub_1BD8D4FB8;
  *(v13 + 32) = v18;
  *(v13 + 40) = sub_1BD8D4FF4;
  *(v13 + 48) = v19;
  swift_storeEnumTagMultiPayload();
  sub_1BD8D3750(v13, v37, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  v20 = v38;
  sub_1BD8D39A8(v37, v38, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  v39(v38, 0, 1, v14);
  swift_getKeyPath();
  v21 = swift_task_alloc();
  *(v21 + 16) = v10;
  *(v21 + 24) = v38;
  *(v0 + 32) = v10;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  v22 = v10;
  swift_retain_n();
  v23 = v22;
  v24 = v40;
  v25 = v11;
  sub_1BE04B584();

  sub_1BD8D2AE0(v37, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  v26 = v41;
LABEL_12:
  sub_1BD8D2AE0(v26, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.CanPresentHandoffAction);

  sub_1BD0DE53C(v20, &qword_1EBD57C38);
LABEL_13:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1BD8CDDC4(void *a1, uint64_t a2, void (*a3)(char *))
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  swift_getKeyPath();
  v20 = a2;
  v21 = v12;
  v22 = a2;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v12, &qword_1EBD57C38);
  if (a1)
  {
    v14 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
    v15 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
    (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
    *v8 = 0;
    *(v8 + 1) = a1;
    swift_storeEnumTagMultiPayload();
    v16 = a1;
  }

  else
  {
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
  }

  v19(v8);
  return sub_1BD0DE53C(v8, &unk_1EBD57C50);
}

id sub_1BD8CE054(char a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
  if (!v3 || !a2)
  {
    return 0;
  }

  v5 = a2;
  v6 = v3;
  v7 = [v5 offers];
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  sub_1BD0E5E8C(0, &qword_1EBD39018);
  v9 = sub_1BE052744();

  v10 = *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context);
  v11 = *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8);
  if ((v11 >> 5) - 1 >= 6 && (v11 >> 5 || !v10))
  {
    goto LABEL_34;
  }

  v12 = a1 & 1;
  sub_1BD8D37B8(*(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context), *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8));
  v13 = (v11 & 0xE0) == 0x20 || v12 == 0;
  if (!v13 || !sub_1BD8C1A98())
  {

LABEL_15:

LABEL_16:
    sub_1BD8D3858(v10, v11);
    return 0;
  }

  result = [v5 selectedOfferIdentifier];
  if (result)
  {
    v15 = result;
    sub_1BE052434();
    v16 = [v5 installmentOfferWithIdentifier_];

    if (v16)
    {

LABEL_28:
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        sub_1BD8D3858(v10, v11);
LABEL_34:

        return 0;
      }

      v21 = v20;
      v22 = sub_1BE052404();

      v23 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
      v24 = [v5 sessionIdentifier];
      if (!v24)
      {
        sub_1BE052434();
        v24 = sub_1BE052404();
      }

      v25 = [objc_opt_self() selectedOfferWithInstallmentAssessment:v5 selectedOfferIdentifier:v22 criteria:v6 passDetails:v23 sessionIdentifier:v24];

      if (v25)
      {
        [v25 setIsPreconfiguredOffer_];

        sub_1BD8D3858(v10, v11);
        return v25;
      }

      goto LABEL_15;
    }
  }

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_24;
    }

LABEL_39:

    goto LABEL_16;
  }

  if (sub_1BE053704() != 1)
  {
    goto LABEL_39;
  }

  result = sub_1BE053704();
  if (!result)
  {

    sub_1BD8D3858(v10, v11);

    return 0;
  }

LABEL_24:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1BFB40900](0, v9);
    goto LABEL_27;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v9 + 32);
LABEL_27:
    v18 = v17;

    v19 = [v18 identifier];

    sub_1BE052434();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD8CE404(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  swift_getKeyPath();
  v21 = a2;
  v22 = v13;
  v23 = a2;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v13, &qword_1EBD57C38);
  v15 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
  v16 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
  *v9 = 0;
  *(v9 + 1) = a1;
  swift_storeEnumTagMultiPayload();
  v17 = a1;
  v20(v9);
  return sub_1BD0DE53C(v9, &unk_1EBD57C50);
}

uint64_t sub_1BD8CE664(uint64_t a1, void (*a2)(void *))
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v13 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  swift_getKeyPath();
  v15 = a1;
  v16 = v10;
  v17 = a1;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v10, &qword_1EBD57C38);
  *v6 = 0;
  swift_storeEnumTagMultiPayload();
  v14(v6);
  return sub_1BD0DE53C(v6, &unk_1EBD57C50);
}

uint64_t sub_1BD8CE878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v8[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  v8[15] = swift_task_alloc();
  v9 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  v8[19] = swift_task_alloc();
  sub_1BE0528A4();
  v8[20] = sub_1BE052894();
  v11 = sub_1BE052844();
  v8[21] = v11;
  v8[22] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CE9E0, v11, v10);
}

uint64_t sub_1BD8CE9E0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
  *(v0 + 184) = v2;
  if (!v2)
  {

LABEL_13:
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 88);
    v15 = *(v0 + 48);
    *v13 = 0;
    swift_storeEnumTagMultiPayload();
    v14(v13);
    sub_1BD0DE53C(v13, &unk_1EBD57C50);
    (*(v12 + 56))(v15, 1, 2, v11);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v3 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel___observationRegistrar;
  *(v0 + 16) = v1;
  *(v0 + 192) = v3;
  *(v0 + 200) = sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  v4 = v2;
  sub_1BE04B594();

  v5 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  *(v0 + 208) = v5;
  if (!v5)
  {

    goto LABEL_13;
  }

  v6 = v5;
  if ((PKPaymentOffersUseAuthenticationServicesEnabled() & 1) != 0 || [*(v0 + 56) useAuthenticationSession])
  {
    if (*(v0 + 80))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if (*(v0 + 40))
      {
        [*(v0 + 40) startAllowingAdditionalPaymentPresentation];
        swift_unknownObjectRelease();
      }
    }

    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_1BD8CED98;
    v8 = *(v0 + 152);
    v9 = *(v0 + 56);

    return sub_1BD5F9D64(v8, v4, v9);
  }

  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v21 = *(v0 + 88);
  v29 = *(v0 + 80);
  v30 = *(v0 + 128);
  v27 = *(v0 + 64);
  v28 = *(v0 + 72);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);

  v24 = swift_allocObject();
  v24[2] = v19;
  v24[3] = v4;
  v24[4] = v21;
  v24[5] = v20;
  *v17 = v22;
  v17[1] = v27;
  v17[2] = v28;
  v17[3] = v29;
  v17[4] = sub_1BD8D4F60;
  v17[5] = v24;
  swift_storeEnumTagMultiPayload();
  sub_1BD8D3750(v17, v23, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  (*(v18 + 56))(v23, 0, 2, v30);
  sub_1BE048964();
  v25 = v19;
  sub_1BE048964();
  v26 = v22;
  sub_1BE048C84();
LABEL_14:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BD8CED98()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1BD8CEEB8, v3, v2);
}

uint64_t sub_1BD8CEEB8()
{
  if (*(v0 + 80))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (*(v0 + 32))
    {
      [*(v0 + 32) stopAllowingAdditionalPaymentPresentation];
      swift_unknownObjectRelease();
    }
  }

  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1BD8CEFC8;
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 88);

  return sub_1BD8CF3AC(v2, v4, v3);
}

uint64_t sub_1BD8CEFC8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1BD8CF1DC;
  }

  else
  {
    v5 = sub_1BD8CF104;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8CF104()
{
  v1 = v0[26];
  v2 = v0[23];

  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[6];
  sub_1BD8D2AE0(v0[19], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  (*(v4 + 56))(v5, 2, 2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD8CF1DC()
{
  v1 = v0[13];

  if (*(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading))
  {
    v2 = v0[13];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[3] = v2;
    sub_1BE04B584();
  }

  else
  {
    *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading) = 0;
  }

  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[15];
  v8 = v0[11];
  *v7 = v4;
  swift_storeEnumTagMultiPayload();
  v9 = v4;
  v8(v7);

  sub_1BD0DE53C(v7, &unk_1EBD57C50);
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[6];
  sub_1BD8D2AE0(v0[19], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  (*(v11 + 56))(v12, 2, 2, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD8CF3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  v4[9] = swift_task_alloc();
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for PaymentOfferSetupAuthenticationResult(0);
  v4[17] = swift_task_alloc();
  sub_1BE0528A4();
  v4[18] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD8CF554, v7, v6);
}

uint64_t sub_1BD8CF554()
{
  sub_1BD8D39A8(v0[5], v0[17], type metadata accessor for PaymentOfferSetupAuthenticationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = v0[17];
      v15 = v0[12];
      v18 = v0[6];

      LOBYTE(v17) = *v17;
      sub_1BD8D3B7C();
      v19 = swift_allocError();
      *v20 = v17;
      *v15 = v19;
      swift_storeEnumTagMultiPayload();
      v18(v15);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v2 = v0[8];
        v3 = *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
        v0[21] = v3;
        if (v3)
        {
          v4 = *(v2 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria);
          v0[22] = v4;
          if (v4)
          {
            v5 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading;
            v0[23] = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading;
            if (*(v2 + v5) == 1)
            {
              *(v2 + v5) = 1;
              v6 = v3;
              v7 = v4;
            }

            else
            {
              swift_getKeyPath();
              v34 = swift_task_alloc();
              *(v34 + 16) = v2;
              *(v34 + 24) = 1;
              v0[2] = v2;
              sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
              v35 = v3;
              v36 = v4;
              sub_1BE04B584();
            }

            v37 = v0[8];
            v38 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context;
            v0[24] = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context;
            v39 = v37 + v38;
            v40 = *v39;
            v41 = *(v39 + 8);
            if ((v41 >> 5) - 1 < 6 || !(v41 >> 5) && v40)
            {
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              if (v42)
              {
                sub_1BD8D37B8(v40, v41);
              }
            }

            else
            {
              v42 = 0;
            }

            v0[25] = v42;
            v43 = swift_task_alloc();
            v0[26] = v43;
            *v43 = v0;
            v43[1] = sub_1BD8CFBD0;

            return sub_1BD8D3BD0(v3, v4, v42, 4);
          }
        }
      }

      v15 = v0[12];
      v16 = v0[6];

      *v15 = 0;
      swift_storeEnumTagMultiPayload();
      v16(v15);
    }

    v21 = &unk_1EBD57C50;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    v22 = v0[17];
    v23 = v0[15];
    v24 = v0[8];
    v15 = v0[9];
    v26 = v0[6];
    v25 = v0[7];

    sub_1BD8D3750(v22, v23, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    v27 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A40) + 48));
    sub_1BD8D39A8(v23, v15, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    v28 = swift_allocObject();
    *(v28 + 2) = v24;
    *(v28 + 3) = v26;
    *(v28 + 4) = v25;
    *v27 = sub_1BD8D4A78;
    v27[1] = v28;
    v29 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v24;
    *(v30 + 24) = v15;
    v0[4] = v24;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    v31 = v24;
    sub_1BE048964();
    sub_1BE04B584();

    sub_1BD8D2AE0(v23, type metadata accessor for PaymentOfferSetupProvisioningMetadata);

    v21 = &qword_1EBD57C38;
LABEL_14:
    sub_1BD0DE53C(v15, v21);
    goto LABEL_15;
  }

  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[6];

  sub_1BD8D3750(v8, v9, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
  v14 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
  sub_1BD8D39A8(v9, &v11[v14], type metadata accessor for PaymentOfferSetupProvisioningMetadata);
  (*(v10 + 56))(&v11[v14], 0, 1, v12);
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v13(v11);
  sub_1BD0DE53C(v11, &unk_1EBD57C50);
  sub_1BD8D2AE0(v9, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
LABEL_15:

  v32 = v0[1];

  return v32();
}

uint64_t sub_1BD8CFBD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
    v6 = sub_1BD8CFFB8;
  }

  else
  {

    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
    v6 = sub_1BD8CFCEC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BD8CFCEC()
{
  v1 = v0[23];
  v2 = v0[8];

  if (*(v2 + v1))
  {
    v3 = v0[8];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[3] = v3;
    sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
    sub_1BE04B584();

    v5 = v0[27];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[12];
    v13 = v0[6];
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    v13(v12);
    goto LABEL_12;
  }

  *(v0[8] + v0[23]) = 0;
  v5 = v0[27];
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v22 = v5;
  v6 = v0[8] + v0[24];
  v7 = *v6;
  v8 = *(v6 + 8);
  if ((v8 >> 5) - 1 < 6 || v8 >> 5 != 7 && v7)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      sub_1BD8D37B8(v7, v8);
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = v0[27];
  v11 = v0[22];
  v21 = v0[21];
  v15 = v0[13];
  v16 = v0[14];
  v12 = v0[11];
  v17 = v0[6];
  v18 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  (*(v16 + 56))(v12 + *(v18 + 24), 1, 1, v15);
  *v12 = v9;
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  v10 = v22;
  v17(v12);

LABEL_12:
  sub_1BD0DE53C(v12, &unk_1EBD57C50);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1BD8CFFB8()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD8D007C(void *a1, uint64_t a2, void *a3, char **a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v16[-v12];
  v14 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  swift_getKeyPath();
  v17 = a2;
  v18 = v13;
  v19 = a2;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v13, &qword_1EBD57C38);
  return sub_1BD8D0228(a1, a3, a4, a5);
}

uint64_t sub_1BD8D0228(void *a1, void *a2, char **a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v74 = a2;
  v77 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v73 = &v70 - v7;
  v8 = sub_1BE04D214();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
  MEMORY[0x1EEE9AC00](v76, v11);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v70 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v70 - v24);
  v75 = v4;
  v26 = *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
  v27 = v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context + 8];
  v28 = v27 >> 5;
  if (v27 >> 5 > 3)
  {
    if (v27 >> 5 > 5)
    {
      v81 = 0;
      if (v28 != 6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v81 = *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
      if (v28 == 4)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v81 = v26;
    goto LABEL_5;
  }

  if (v27 >> 5 <= 1)
  {
    v81 = *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
    if (v28)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v81 = *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
  if (v28 != 2)
  {
    goto LABEL_4;
  }

LABEL_5:
  v80 = swift_allocBox();
  v30 = v29;
  *v29 = 0;
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE19C(v77, v25, &qword_1EBD497E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v25;
    v32 = v21;
    if (*v25)
    {
      sub_1BD8D4ACC();
      v33 = swift_allocError();
      *v34 = v31;
      *v21 = v33;
      swift_storeEnumTagMultiPayload();
      sub_1BD8D37B8(v26, v27);
      sub_1BD2C7C4C(v21, v30, &unk_1EBD57C50);
    }

    else
    {
      sub_1BD8D37B8(v26, v27);
      sub_1BD0DE53C(v30, &unk_1EBD57C50);
      *v30 = 0;
      swift_storeEnumTagMultiPayload();
    }

    v42 = v81;
    if (!v81)
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_1BD8D3750(v25, v13, type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult);
    v35 = v13[1];
    v36 = v35;
    v32 = v21;
    if (!v35)
    {
      sub_1BD8D37B8(v26, v27);
      v36 = v81;
    }

    v37 = *v13;
    v38 = *(v76 + 24);
    v39 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
    sub_1BD0DE19C(v13 + v38, v17 + *(v39 + 24), &unk_1EBD49700);
    v40 = v37;
    v41 = v35;
    sub_1BD8D2AE0(v13, type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult);
    *v17 = v35;
    v17[1] = v37;
    swift_storeEnumTagMultiPayload();
    sub_1BD2C7C4C(v17, v30, &unk_1EBD57C50);
    v42 = v36;
    if (!v36)
    {
      goto LABEL_35;
    }
  }

  v43 = [v42 uniqueID];
  if (!v43)
  {
LABEL_35:
    sub_1BD0DE19C(v30, v32, &unk_1EBD57C50);
    (v78)(v32);

    v68 = v32;
    v67 = &unk_1EBD57C50;
    goto LABEL_36;
  }

  v44 = v43;
  v45 = *&v75[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController];
  if (!v45)
  {
LABEL_34:

    goto LABEL_35;
  }

  v46 = [v74 identifier];
  if (!v46)
  {
    sub_1BE052434();
    v46 = sub_1BE052404();
  }

  v47 = [v45 paymentOfferCollectionForCriteriaIdentifier:v46 passUniqueID:v44];

  if (!v47)
  {
    goto LABEL_35;
  }

  v48 = [v47 installmentAssessment];
  if (!v48)
  {
    v44 = v47;
    goto LABEL_34;
  }

  v44 = v48;
  if (([v48 isEligible] & 1) != 0 || (v49 = objc_msgSend(v44, sel_ineligibleDynamicContent)) == 0)
  {

    goto LABEL_34;
  }

  v50 = v49;
  v77 = v47;
  v81 = v42;
  v51 = v75;
  v52 = v70;
  sub_1BE04D1E4();
  v53 = sub_1BE04D204();
  v54 = sub_1BE052C54();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1BD026000, v53, v54, "Presenting ineligible offers modal after partner handoff flow.", v55, 2u);
    MEMORY[0x1BFB45F20](v55, -1, -1);
  }

  (*(v71 + 8))(v52, v72);
  v56 = swift_allocObject();
  v57 = v78;
  v58 = v79;
  v56[2] = v51;
  v56[3] = v57;
  v59 = v80;
  v56[4] = v58;
  v56[5] = v59;
  v60 = v73;
  *v73 = v44;
  *(v60 + 1) = v50;
  *(v60 + 2) = sub_1BD8D4AC0;
  *(v60 + 3) = v56;
  v61 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  KeyPath = swift_getKeyPath();
  v78 = &v70;
  MEMORY[0x1EEE9AC00](KeyPath, v63);
  *(&v70 - 2) = v51;
  *(&v70 - 1) = v60;
  v76 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel___observationRegistrar;
  v82 = v51;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  v64 = v44;
  v65 = v50;
  v66 = v51;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04B584();

  v67 = &qword_1EBD57C38;
  v68 = v60;
LABEL_36:
  sub_1BD0DE53C(v68, v67);
}

uint64_t sub_1BD8D0A50(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v15 = a3;
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  v12 = swift_projectBox();
  v13 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  swift_getKeyPath();
  v17 = a1;
  v18 = v11;
  v19 = a1;
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B584();

  sub_1BD0DE53C(v11, &qword_1EBD57C38);
  swift_beginAccess();
  sub_1BD0DE19C(v12, v7, &unk_1EBD57C50);
  v16(v7);
  return sub_1BD0DE53C(v7, &unk_1EBD57C50);
}

uint64_t sub_1BD8D0C84(void *a1, char a2, void (*a3)(uint64_t *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v22 - v9);
  if ((a2 & 1) == 0)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController);
      if (v12)
      {
        v13 = v11;
        v14 = a1;
        v15 = [v12 selectedOfferDetails];
        v16 = [v15 selectedPaymentOffer];

        if (v16)
        {
          v17 = *(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0) + 24);
          v18 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
          (*(*(v18 - 8) + 56))(v10 + v17, 1, 1, v18);
          *v10 = v13;
          v10[1] = v16;
          swift_storeEnumTagMultiPayload();
          sub_1BD52862C(a1);
          v19 = v16;
          a3(v10);

LABEL_9:
          sub_1BD528638(a1);
          return sub_1BD0DE53C(v10, &unk_1EBD57C50);
        }
      }

      else
      {
        v20 = a1;
      }

      *v10 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-9002 userInfo:0];
      swift_storeEnumTagMultiPayload();
      a3(v10);
      goto LABEL_9;
    }
  }

  *v10 = 0;
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1BD0DE53C(v10, &unk_1EBD57C50);
}

id sub_1BD8D0EC4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = v54 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v65 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v54 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v54 - v17;
  v19 = *MEMORY[0x1E69B80D8];
  v66 = *(v7 + 104);
  v66(v54 - v17, v19, v6, v16);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = result;
  v22 = sub_1BE04B6F4();
  v24 = v23;

  v62 = *(v7 + 8);
  v62(v18, v6);
  v68 = v22;
  v69 = v24;
  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  v61 = v28;
  v30 = v29;
  (v66)(v13, v19, v6);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v31 = result;
  v58 = v30;
  v59 = v27;
  v60 = v25;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  v35 = v62;
  v62(v13, v6);
  v68 = v32;
  v69 = v34;
  v36 = sub_1BE0506C4();
  v56 = v37;
  v57 = v36;
  v54[1] = v38;
  v55 = v39;
  v40 = v65;
  (v66)(v65, *MEMORY[0x1E69B80D0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v41 = result;
    v42 = sub_1BE04B6F4();
    v44 = v43;

    v35(v40, v6);
    v68 = v42;
    v69 = v44;
    v45 = sub_1BE0506C4();
    v47 = v46;
    LOBYTE(v41) = v48;
    v68 = *a1;
    v49 = a1[3];
    v70 = a1[2];
    v50 = swift_allocObject();
    v51 = *(a1 + 1);
    *(v50 + 16) = *a1;
    *(v50 + 32) = v51;
    *(v50 + 48) = a1[4];
    sub_1BD3434EC(&v68, v67);
    sub_1BE048964();
    sub_1BD0DE19C(&v70, v67, &qword_1EBD49710);
    sub_1BD0D44B8(v49);
    v52 = v63;
    sub_1BE051194();

    sub_1BD0DDF10(v45, v47, v41 & 1);

    v53 = sub_1BE0511A4();
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    return sub_1BE051174();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BD8D1374(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A48);
  result = sub_1BE0518F4();
  v3 = *(a1 + 24);
  if (v3)
  {
    return v3(result);
  }

  return result;
}

void sub_1BD8D13E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A48);
  sub_1BE051914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A50);
  sub_1BD0DE4F4(&qword_1EBD57A58, &qword_1EBD57A50);
  sub_1BD8D2B48();
  sub_1BE050EF4();
}

uint64_t sub_1BD8D1524@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a2;
  v58 = a1;
  v65 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v57 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A78);
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v52 - v13;
  *v94 = a2;
  *&v94[8] = a3;
  *&v94[16] = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A80);
  sub_1BE051914();
  v14 = v92[0];
  v15 = *&v92[1];
  swift_getKeyPath();
  *v94 = v14;
  *&v94[16] = v15;
  sub_1BE051904();

  v16 = swift_allocObject();
  v17 = v68;
  v16[2] = v68;
  v16[3] = a3;
  v16[4] = a4;
  sub_1BE048964();
  v18 = a3;
  sub_1BE048964();
  v19 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A88);
  v21 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A90);
  v23 = sub_1BD0DE4F4(&qword_1EBD57A98, &qword_1EBD57A88);
  v24 = sub_1BD8D2BB0(&qword_1EBD57AA0, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  v59 = sub_1BD8D2BF8();
  v60 = v24;
  v61 = v23;
  v25 = v18;
  v26 = v57;
  v63 = v21;
  v64 = v20;
  v62 = v22;
  sub_1BE050F74();

  sub_1BD0DE53C(v26, &qword_1EBD57A70);
  *v94 = v17;
  *&v94[8] = v25;
  v27 = v25;
  v58 = v19;
  *&v94[16] = v19;
  v28 = v53;
  MEMORY[0x1BFB3E970](v92);
  v29 = *&v92[0];
  swift_getKeyPath();
  *v94 = v29;
  v56 = sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  v30 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48];
  v32 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails];
  v31 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16];
  *v95 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32];
  *&v95[16] = v30;
  *v94 = v32;
  *&v94[16] = v31;
  v34 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80];
  v33 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96];
  v35 = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64];
  *&v95[80] = *&v29[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 112];
  *&v95[48] = v34;
  *&v95[64] = v33;
  *&v95[32] = v35;
  sub_1BD0DE19C(v94, v92, &unk_1EBD57B90);

  v36 = *&v94[24];
  v37 = *v95;
  *(v92 + 8) = *&v94[8];
  if (*v94)
  {
    *&v92[0] = *v94;
    *(&v92[1] + 1) = *&v94[24];
    *&v93[0] = *v95;
    *(&v93[1] + 8) = *&v95[24];
    *(&v93[2] + 8) = *&v95[40];
    *(&v93[3] + 8) = *&v95[56];
    *(&v93[4] + 8) = *&v95[72];
    *(v93 + 8) = *&v95[8];
    sub_1BE048C84();
    sub_1BD0DE53C(v92, &unk_1EBD57B90);
  }

  else
  {
    *&v92[0] = 0;
    *(&v92[1] + 1) = *&v94[24];
    *&v93[0] = *v95;
    *(&v93[1] + 8) = *&v95[24];
    *(&v93[2] + 8) = *&v95[40];
    *(&v93[3] + 8) = *&v95[56];
    *(&v93[4] + 8) = *&v95[72];
    *(v93 + 8) = *&v95[8];
    sub_1BD0DE53C(v92, &unk_1EBD57B90);
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  v57 = v37;
  v82 = v36;
  v83 = v37;
  v38 = v68;
  *&v92[0] = v68;
  *(&v92[0] + 1) = v27;
  v39 = v58;
  *&v92[1] = v58;
  sub_1BE051914();
  v40 = v84;
  v41 = v85;
  swift_getKeyPath();
  v80 = v40;
  v81 = v41;
  sub_1BE051904();

  v54 = v78;
  v55 = v79;

  *&v92[0] = v38;
  *(&v92[0] + 1) = v27;
  *&v92[1] = v39;
  MEMORY[0x1BFB3E970](&v84, v28);
  v42 = v84;
  swift_getKeyPath();
  *&v92[0] = v42;
  sub_1BE04B594();

  v43 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 48];
  v45 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails];
  v44 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 16];
  v86 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 32];
  v87 = v43;
  v84 = v45;
  v85 = v44;
  v47 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 80];
  v46 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 96];
  v48 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 64];
  v91 = *&v42[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails + 112];
  v89 = v47;
  v90 = v46;
  v88 = v48;
  sub_1BD0DE19C(&v84, v92, &unk_1EBD57B90);

  v74 = v88;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57BA0);
  *&v92[0] = v64;
  *(&v92[0] + 1) = v63;
  *&v92[1] = v62;
  *(&v92[1] + 1) = v61;
  *&v93[0] = v60;
  *(&v93[0] + 1) = v59;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD8D3370();
  v49 = v67;
  v50 = v69;
  sub_1BE050F14();

  v93[2] = v74;
  v93[3] = v75;
  v93[4] = v76;
  *&v93[5] = v77;
  v92[0] = v70;
  v92[1] = v71;
  v93[0] = v72;
  v93[1] = v73;
  sub_1BD0DE53C(v92, &unk_1EBD57B90);

  return (*(v66 + 8))(v50, v49);
}

void sub_1BD8D1CF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57A80);
  MEMORY[0x1BFB3E970](v9, v7);
  v8 = v9[0];
  sub_1BD8C2380(a1, a5);
}

uint64_t sub_1BD8D1DB8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  v26 = a1[3];
  v27 = v4;
  v6 = a1[6];
  v28 = v5;
  v29 = v6;
  v7 = a1[1];
  v23 = *a1;
  v30 = *(a1 + 14);
  v24 = v7;
  v25 = v3;
  v22[0] = *(&v3 + 1);
  v22[1] = v26;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  v16 = v28;
  v17 = v29;
  v18 = v26;
  *(v15 + 80) = v27;
  *(v15 + 96) = v16;
  *(v15 + 112) = v17;
  v19 = v24;
  v20 = v25;
  *(v15 + 16) = v23;
  *(v15 + 32) = v19;
  *(v15 + 128) = v30;
  *(v15 + 48) = v20;
  *(v15 + 64) = v18;
  v31 = v12 & 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = sub_1BD8D33F4;
  *(a2 + 40) = v15;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return sub_1BD482978(&v23, v22);
}

id sub_1BD8D1EE0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__detailSheet;
  v12 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  v13(&v4[v11], 1, 1, v12);
  v14 = &v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__languageNoticeDetails];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 14) = 0;
  v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__showLanguageNoticeDetails] = 0;
  v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading] = 0;
  v15 = OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel;
  *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel] = 0;
  v16 = &v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler];
  *v16 = 0;
  v16[1] = 0;
  sub_1BE04B5C4();
  v17 = &v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_context];
  *v17 = v9;
  v17[8] = v10;
  *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_paymentOffersController] = a2;
  *&v4[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel_criteria] = a3;
  if (a2)
  {
    if ((v10 >> 5) - 1 < 6 || !(v10 >> 5) && v9)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        sub_1BD8D37B8(v9, v10);
      }
    }

    else
    {
      v18 = 0;
    }

    objc_allocWithZone(type metadata accessor for PaymentOfferSetupAuthenticationModel(0));
    v20 = a3;
    v21 = sub_1BD5F9B7C(a2, v18);

    *&v4[v15] = v21;
  }

  else
  {
    v19 = a3;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1BD8D2130()
{
  sub_1BD8D4EFC(319, &qword_1EBD579C0, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet);
  if (v0 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD8D2284(uint64_t a1, uint64_t a2)
{
  sub_1BD8D235C(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1BD8D24C0(319, v2);
    if (v3 <= 0x3F)
    {
      sub_1BD8D2618();
      if (v4 <= 0x3F)
      {
        sub_1BD8D2698();
        if (v5 <= 0x3F)
        {
          sub_1BD8D2750();
          if (v6 <= 0x3F)
          {
            sub_1BD8D27E4(319, v6);
            if (v7 <= 0x3F)
            {
              sub_1BD8D2928(319, v7);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD8D235C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EBD579D8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BD0E5E8C(255, &qword_1EBD456C0);
    sub_1BD0E5E8C(255, &qword_1EBD3DC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD579D8);
    }
  }
}

void sub_1BD8D24C0(uint64_t a1, uint64_t a2)
{
  if (!qword_1EBD579E8)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BD0E5E8C(255, &qword_1EBD579F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD579E8);
    }
  }
}

void sub_1BD8D2618()
{
  if (!qword_1EBD57A00)
  {
    type metadata accessor for PaymentOfferSetupProvisioningMetadata();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD57A00);
    }
  }
}

void sub_1BD8D2698()
{
  if (!qword_1EBD57A08)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3DC40);
    sub_1BD0E5E8C(255, &qword_1EBD57A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD57A08);
    }
  }
}

void sub_1BD8D2750()
{
  if (!qword_1EBD57A18)
  {
    sub_1BD0E5E8C(255, &qword_1EBD57A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD57A18);
    }
  }
}

void sub_1BD8D27E4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EBD57A20)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BD0E5E8C(255, &qword_1EBD456C0);
    sub_1BD0E5E8C(255, &qword_1EBD3DC40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD57A20);
    }
  }
}

void sub_1BD8D2928(uint64_t a1, uint64_t a2)
{
  if (!qword_1EBD57A28)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1BD0E5E8C(255, &qword_1EBD456C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBD57A28);
    }
  }
}

uint64_t sub_1BD8D2AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8D2B48()
{
  result = qword_1EBD57A60;
  if (!qword_1EBD57A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57A60);
  }

  return result;
}

uint64_t sub_1BD8D2BB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8D2BF8()
{
  result = qword_1EBD57AA8;
  if (!qword_1EBD57AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57A90);
    sub_1BD8D2C84();
    sub_1BD8D3154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57AA8);
  }

  return result;
}

unint64_t sub_1BD8D2C84()
{
  result = qword_1EBD57AB0;
  if (!qword_1EBD57AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57AB8);
    sub_1BD8D2D10();
    sub_1BD8D2F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57AB0);
  }

  return result;
}

unint64_t sub_1BD8D2D10()
{
  result = qword_1EBD57AC0;
  if (!qword_1EBD57AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57AC8);
    sub_1BD8D2D9C();
    sub_1BD8D2E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57AC0);
  }

  return result;
}

unint64_t sub_1BD8D2D9C()
{
  result = qword_1EBD57AD0;
  if (!qword_1EBD57AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57AD8);
    type metadata accessor for PaymentOfferInstallmentSelectionView();
    sub_1BD8D2BB0(&qword_1EBD57AE0, type metadata accessor for PaymentOfferInstallmentSelectionView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57AD0);
  }

  return result;
}

unint64_t sub_1BD8D2E80()
{
  result = qword_1EBD57AE8;
  if (!qword_1EBD57AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57AF0);
    sub_1BD5282BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57AE8);
  }

  return result;
}

unint64_t sub_1BD8D2F30()
{
  result = qword_1EBD57B00;
  if (!qword_1EBD57B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B08);
    sub_1BD8D2FBC();
    sub_1BD8D30A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B00);
  }

  return result;
}

unint64_t sub_1BD8D2FBC()
{
  result = qword_1EBD57B10;
  if (!qword_1EBD57B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B18);
    type metadata accessor for PaymentOfferActionExplanationView();
    sub_1BD8D2BB0(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B10);
  }

  return result;
}

unint64_t sub_1BD8D30A0()
{
  result = qword_1EBD57B28;
  if (!qword_1EBD57B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B30);
    sub_1BD8D2BB0(&qword_1EBD57B38, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B28);
  }

  return result;
}

unint64_t sub_1BD8D3154()
{
  result = qword_1EBD57B40;
  if (!qword_1EBD57B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B48);
    sub_1BD8D31E0();
    sub_1BD349E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B40);
  }

  return result;
}

unint64_t sub_1BD8D31E0()
{
  result = qword_1EBD57B50;
  if (!qword_1EBD57B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B58);
    sub_1BD8D2FBC();
    sub_1BD8D326C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B50);
  }

  return result;
}

unint64_t sub_1BD8D326C()
{
  result = qword_1EBD57B60;
  if (!qword_1EBD57B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57B68);
    sub_1BD8D331C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B60);
  }

  return result;
}

unint64_t sub_1BD8D331C()
{
  result = qword_1EBD57B70;
  if (!qword_1EBD57B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B70);
  }

  return result;
}

unint64_t sub_1BD8D3370()
{
  result = qword_1EBD57BB0;
  if (!qword_1EBD57BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57BB0);
  }

  return result;
}

void *sub_1BD8D3468(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (result)
  {

    sub_1BD0D4744(a12);

    return sub_1BD0D4744(a14);
  }

  return result;
}

uint64_t sub_1BD8D3518(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BD8D35C0;

  return sub_1BD8CA80C(a1, v5, v4);
}

uint64_t sub_1BD8D35C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1BD8D3750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD8D37B8(id result, unsigned __int8 a2)
{
  if (a2 <= 0xDFu)
  {
    return result;
  }

  return result;
}

uint64_t sub_1BD8D37E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1BD8D3858(id a1, unsigned __int8 a2)
{
  if (a2 <= 0xDFu)
  {
  }
}

uint64_t sub_1BD8D387C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD8C6EF0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD8D39A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8D3A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD8CCAFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1BD8D3B7C()
{
  result = qword_1EBD57C60;
  if (!qword_1EBD57C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57C60);
  }

  return result;
}

uint64_t sub_1BD8D3BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a3;
  v4[53] = a4;
  v4[50] = a1;
  v4[51] = a2;
  v5 = sub_1BE04D214();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  sub_1BE0528A4();
  v4[58] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[59] = v7;
  v4[60] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD8D3CD4, v7, v6);
}

uint64_t sub_1BD8D3CD4()
{
  v1 = v0[50];
  v0[2] = v0;
  v0[7] = v0 + 70;
  v0[3] = sub_1BD8D3DF8;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
  v0[61] = v3;
  v0[33] = v3;
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1BD22B1E0;
  v0[29] = &block_descriptor_171;
  v0[30] = v2;
  [v1 updatePaymentOfferCatalogWithReason:7 completion:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD8D3DF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 480);
  v4 = *(v1 + 472);
  if (v2)
  {
    v5 = sub_1BD8D48C0;
  }

  else
  {
    v5 = sub_1BD8D3F28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8D3F28()
{
  v1 = [*(v0 + 408) identifier];
  if (!v1)
  {
    sub_1BE052434();
    v1 = sub_1BE052404();
  }

  *(v0 + 504) = v1;
  v2 = *(v0 + 488);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v5 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
  *(v0 + 512) = v5;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 561;
  *(v0 + 88) = sub_1BD8D40AC;
  v6 = swift_continuation_init();
  *(v0 + 328) = v2;
  *(v0 + 272) = MEMORY[0x1E69E9820];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1BD22B1E0;
  *(v0 + 296) = &block_descriptor_174;
  *(v0 + 304) = v6;
  [v4 updatePaymentOffersForCriteriaIdentifier:v1 selectedPassDetails:v5 reason:v3 completion:v0 + 272];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1BD8D40AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 520) = v2;
  v3 = *(v1 + 480);
  v4 = *(v1 + 472);
  if (v2)
  {
    v5 = sub_1BD8D4944;
  }

  else
  {
    v5 = sub_1BD8D41DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8D41DC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 408);

  v3 = [v2 identifier];
  if (v3)
  {
    v4 = *(v0 + 416);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE052434();
    v3 = sub_1BE052404();

    v4 = *(v0 + 416);
    if (!v4)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = [v4 uniqueID];
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = [*(v0 + 400) paymentOfferCollectionForCriteriaIdentifier:v3 passUniqueID:v5];
  *(v0 + 528) = v6;

  if (v6 && (v7 = [v6 installmentAssessment], (*(v0 + 536) = v7) != 0))
  {
    v8 = v7;
    if (![v7 isEligible])
    {

      v11 = 0;
LABEL_24:

      v24 = *(v0 + 8);

      return v24(v11);
    }

    v9 = [v8 selectedOfferIdentifier];
    if (v9)
    {

      if (v4)
      {
        v10 = [*(v0 + 400) selectedOfferDetails];
        v11 = [v10 selectedPaymentOffer];
        *(v0 + 544) = v11;

        if (v11)
        {
          v12 = [*(v0 + 400) configuration];
          v13 = [v12 context];

          if (v13 == 3)
          {
            v14 = *(v0 + 488);
            v15 = *(v0 + 400);
            *(v0 + 144) = v0;
            *(v0 + 184) = v0 + 562;
            *(v0 + 152) = sub_1BD8D4700;
            v16 = swift_continuation_init();
            *(v0 + 392) = v14;
            *(v0 + 336) = MEMORY[0x1E69E9820];
            *(v0 + 344) = 1107296256;
            *(v0 + 352) = sub_1BD22B1E0;
            *(v0 + 360) = &block_descriptor_178_1;
            *(v0 + 368) = v16;
            [v15 confirmOfferRequestWithCompletion_];

            return MEMORY[0x1EEE6DEC8](v0 + 144);
          }

          goto LABEL_24;
        }
      }
    }

    sub_1BE04D1E4();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BD026000, v25, v26, "The installmentAssessment status is eligible but there is no selected offer defined after a successful handoff", v27, 2u);
      MEMORY[0x1BFB45F20](v27, -1, -1);
    }

    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 440);

    (*(v30 + 8))(v28, v29);
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-9002 userInfo:0];
    swift_willThrow();
  }

  else
  {

    sub_1BE04D1E4();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "No installmentAssessment defined on the payment offers resposne after a successful handoff", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 432);

    (*(v21 + 8))(v20, v22);
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-9002 userInfo:0];
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1BD8D4700()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 552) = v2;
  v3 = *(v1 + 480);
  v4 = *(v1 + 472);
  if (v2)
  {
    v5 = sub_1BD8D49D4;
  }

  else
  {
    v5 = sub_1BD8D4830;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD8D4830()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 544);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1BD8D48C0()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD8D4944()
{
  v1 = v0[63];
  v2 = v0[64];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD8D49D4()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

unint64_t sub_1BD8D4ACC()
{
  result = qword_1EBD57C70;
  if (!qword_1EBD57C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57C70);
  }

  return result;
}

void sub_1BD8D4B20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel);
  *(v1 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__authenticationModel) = v2;
  v4 = v2;
}

uint64_t objectdestroy_156Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BD8D4BF0(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37DA0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1BD8CC34C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD8D4CA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__viewChangedHandler);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1BD0D44B8(v1);
  return sub_1BD0D4744(v4);
}

uint64_t sub_1BD8D4CF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BD8D4D84()
{
  v0 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.DetailSheet(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BD8D4E14()
{
  sub_1BD10315C(319, &qword_1EBD57CB0, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
    if (v1 <= 0x3F)
    {
      sub_1BD8D4EFC(319, &qword_1EBD49738, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD8D4EFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD8D5040()
{
  sub_1BE0493F4();
  if (v0 <= 0x3F)
  {
    sub_1BD3E0D28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD8D50F8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = _s28SpendingTrendDescriptionViewVMa(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for FinanceKitSpendingTrend();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57CC8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  v17 = sub_1BE0493C4();
  v19 = v18;
  v21 = v20;
  v22 = MEMORY[0x1BFB403C0](0);
  LOBYTE(v19) = MEMORY[0x1BFB40440](v17, v19, v21, v22, v23, v24);
  v25 = _s23SpendingDescriptionViewVMa(0);
  v26 = v25;
  if (v19)
  {
    v27 = *(v1 + v25[7]);
    *v16 = *(v1 + v25[6]);
    v16[1] = v27;
    swift_storeEnumTagMultiPayload();
    sub_1BD8D5620();
    sub_1BD8D5674();
    v28 = v39;
    sub_1BE04F9A4();
LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  v28 = v39;
  sub_1BD3E15E4(v1 + v25[5], v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v30 = v37;
    sub_1BD8D5554(v8, v37);
    v31 = *(v1 + v26[6]);
    v32 = *(v1 + v26[7]);
    v33 = v38;
    sub_1BD8D55B8(v30, v38, type metadata accessor for FinanceKitSpendingTrend);
    *(v33 + *(v2 + 20)) = v31;
    *(v33 + *(v2 + 24)) = v32;
    sub_1BD8D55B8(v33, v16, _s28SpendingTrendDescriptionViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_1BD8D5620();
    sub_1BD8D5674();
    sub_1BE04F9A4();
    sub_1BD8D56CC(v33, _s28SpendingTrendDescriptionViewVMa);
    sub_1BD8D56CC(v30, type metadata accessor for FinanceKitSpendingTrend);
    goto LABEL_6;
  }

  sub_1BD8D54EC(v8);
  v29 = 1;
LABEL_7:
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57CD0);
  return (*(*(v34 - 8) + 56))(v28, v29, 1, v34);
}

uint64_t sub_1BD8D54EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD8D5554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8D55B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD8D5620()
{
  result = qword_1EBD57CD8;
  if (!qword_1EBD57CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57CD8);
  }

  return result;
}

unint64_t sub_1BD8D5674()
{
  result = qword_1EBD57CE0;
  if (!qword_1EBD57CE0)
  {
    _s28SpendingTrendDescriptionViewVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57CE0);
  }

  return result;
}

uint64_t sub_1BD8D56CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD8D5754()
{
  result = type metadata accessor for FinanceKitSpendingTrend();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s25NoSpendingDescriptionViewVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s25NoSpendingDescriptionViewVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD8D593C()
{
  result = qword_1EBD57CF8;
  if (!qword_1EBD57CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D00);
    sub_1BD8D59C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57CF8);
  }

  return result;
}

unint64_t sub_1BD8D59C0()
{
  result = qword_1EBD57D08;
  if (!qword_1EBD57D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57CD0);
    sub_1BD8D5620();
    sub_1BD8D5674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57D08);
  }

  return result;
}

uint64_t sub_1BD8D5A68(__int16 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v24 - v10;
  if ((a1 & 0x100) != 0)
  {
    v12 = 0x5245505F5445595FLL;
  }

  else
  {
    v12 = 0xD000000000000010;
  }

  if ((a1 & 0x100) != 0)
  {
    v13 = 0xEB00000000444F49;
  }

  else
  {
    v13 = 0x80000001BE13F530;
  }

  v26 = 0xD000000000000022;
  v27 = 0x80000001BE13F500;
  MEMORY[0x1BFB3F610](v12, v13, v9);

  v24[1] = v26;
  v24[2] = v27;
  v14 = *MEMORY[0x1E69B8040];
  v15 = *(v3 + 104);
  v25 = v11;
  v15(v11, v14, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BE0B69E0;
  v15(v6, v14, v2);
  v17 = sub_1BE04B714();
  v19 = v18;

  v20 = *(v3 + 8);
  v20(v6, v2);
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1BD110550();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = v25;
  v22 = sub_1BE04B714();

  v20(v21, v2);
  return v22;
}

uint64_t sub_1BD8D5D18@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_1BD8D5A68(v3 | *v1);
  sub_1BD0DDEBC();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  sub_1BE04FC94();
  v9 = sub_1BE050574();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1BD0DDF10(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1BD8D5E10(uint64_t a1)
{
  v3 = sub_1BE04B0F4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v61 - v13;
  v68 = sub_1BE04BD74();
  v15 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FinanceKitSpendingTrend();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD8D55B8(a1, v22, type metadata accessor for FinanceKitSpendingTrend);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v63 = v6;
        v64 = v7;
        (*(v7 + 32))(v10, v22, v6);
        v24 = _s28SpendingTrendDescriptionViewVMa(0);
        v25 = *(v1 + *(v24 + 24)) == 0;
        if (*(v1 + *(v24 + 24)))
        {
          v26 = 0x544E45525255435FLL;
        }

        else
        {
          v26 = 0xD000000000000010;
        }

        if (v25)
        {
          v27 = 0x80000001BE13F530;
        }

        else
        {
          v27 = 0xEF444F495245505FLL;
        }

        v69 = 0xD000000000000021;
        v70 = 0x80000001BE13F5E0;
        v62 = v1;
        MEMORY[0x1BFB3F610](v26, v27);

        v61 = v69;
        (*(v15 + 104))(v18, *MEMORY[0x1E69B8040], v68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1BE0B6CA0;
        v29 = v65;
        sub_1BE04B054();
        v30 = sub_1BE0493E4();
        v32 = v31;
        (*(v66 + 8))(v29, v67);
        v33 = MEMORY[0x1E69E6158];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1BD110550();
        *(v28 + 64) = v34;
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        v35 = sub_1BD8D6570();
        *(v28 + 96) = v33;
        *(v28 + 104) = v34;
        *(v28 + 72) = v35;
        *(v28 + 80) = v36;
        v37 = sub_1BE04B714();

        (*(v15 + 8))(v18, v68);
        (*(v64 + 8))(v10, v63);
        return v37;
      }

      goto LABEL_13;
    }

LABEL_12:
    (*(v7 + 8))(v22, v6);
LABEL_13:
    v38 = _s28SpendingTrendDescriptionViewVMa(0);
    v39 = *(v1 + *(v38 + 24)) == 0;
    if (*(v1 + *(v38 + 24)))
    {
      v40 = 0x544E45525255435FLL;
    }

    else
    {
      v40 = 0xD000000000000010;
    }

    if (v39)
    {
      v41 = 0x80000001BE13F530;
    }

    else
    {
      v41 = 0xEF444F495245505FLL;
    }

    v69 = 0xD00000000000001DLL;
    v70 = 0x80000001BE13F640;
    MEMORY[0x1BFB3F610](v40, v41);

    v42 = v68;
    (*(v15 + 104))(v18, *MEMORY[0x1E69B8040], v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1BE0B69E0;
    v44 = sub_1BD8D6570();
    v46 = v45;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1BD110550();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    v37 = sub_1BE04B714();

    (*(v15 + 8))(v18, v42);
    return v37;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_12;
  }

  v63 = v6;
  v64 = v7;
  (*(v7 + 32))(v14, v22, v6);
  v47 = _s28SpendingTrendDescriptionViewVMa(0);
  v48 = *(v1 + *(v47 + 24)) == 0;
  if (*(v1 + *(v47 + 24)))
  {
    v49 = 0x544E45525255435FLL;
  }

  else
  {
    v49 = 0xD000000000000010;
  }

  if (v48)
  {
    v50 = 0x80000001BE13F530;
  }

  else
  {
    v50 = 0xEF444F495245505FLL;
  }

  v69 = 0xD000000000000021;
  v70 = 0x80000001BE13F610;
  v62 = v1;
  MEMORY[0x1BFB3F610](v49, v50);

  v61 = v69;
  (*(v15 + 104))(v18, *MEMORY[0x1E69B8040], v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BE0B6CA0;
  v52 = v65;
  sub_1BE04B054();
  v53 = sub_1BE0493E4();
  v55 = v54;
  (*(v66 + 8))(v52, v67);
  v56 = MEMORY[0x1E69E6158];
  *(v51 + 56) = MEMORY[0x1E69E6158];
  v57 = sub_1BD110550();
  *(v51 + 64) = v57;
  *(v51 + 32) = v53;
  *(v51 + 40) = v55;
  v58 = sub_1BD8D6570();
  *(v51 + 96) = v56;
  *(v51 + 104) = v57;
  *(v51 + 72) = v58;
  *(v51 + 80) = v59;
  v37 = sub_1BE04B714();

  (*(v15 + 8))(v18, v68);
  (*(v64 + 8))(v14, v63);
  return v37;
}

uint64_t sub_1BD8D6570()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s28SpendingTrendDescriptionViewVMa(0);
  v7 = *(v0 + *(v6 + 20));
  v8 = "MARIES_PERIOD_MONTH";
  v9 = "MARIES_PERIOD_YEAR";
  if (v7 == 1)
  {
    v10 = 0xD000000000000023;
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  if (v7 != 1)
  {
    v9 = "BANK_CONNECT_SUMMARIES_STEADY";
  }

  v11 = v7 == 0;
  if (*(v0 + *(v6 + 20)))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xD000000000000022;
  }

  if (!v11)
  {
    v8 = v9;
  }

  if (*(v0 + *(v6 + 24)))
  {
    v13 = 0x5453414C5FLL;
  }

  else
  {
    v13 = 0x554F49564552505FLL;
  }

  if (*(v0 + *(v6 + 24)))
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE900000000000053;
  }

  v17[0] = v12;
  v17[1] = v8 | 0x8000000000000000;
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v13, v14);

  (*(v2 + 104))(v5, *MEMORY[0x1E69B8040], v1);
  v15 = sub_1BE04B714();

  (*(v2 + 8))(v5, v1);
  return v15;
}

uint64_t sub_1BD8D6758@<X0>(uint64_t a1@<X8>)
{
  sub_1BD8D5E10(v1);
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  sub_1BE0503A4();
  v8 = sub_1BE050544();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1BD0DDF10(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1BD8D6874@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D10);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D18);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  *v11 = sub_1BE04F504();
  *(v11 + 1) = 0x4018000000000000;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D20);
  sub_1BD8D6BD8(v2, &v11[*(v16 + 44)]);
  sub_1BE04FF44();
  v17 = sub_1BD0DE4F4(&qword_1EBD57D28, &qword_1EBD57D10);
  sub_1BE050D14();
  (*(v4 + 8))(v7, v3);
  sub_1BD0DE53C(v11, &qword_1EBD57D10);
  v35 = *(v2 + 40);
  v18 = v35;
  v19 = sub_1BE052434();
  if (v18)
  {
    v33 = v19;
    v34 = v20;
    sub_1BD0DE19C(&v35, v32, &qword_1EBD57D30);
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](45, 0xE100000000000000);

    v22 = v33;
    v21 = v34;
    v23 = sub_1BE052434();
    v25 = v24;
    v33 = v22;
    v34 = v21;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v23, v25);

    sub_1BD0DE53C(&v35, &qword_1EBD57D30);
  }

  v33 = v8;
  v34 = v17;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_1BE050DE4();

  return (*(v29 + 8))(v15, v26);
}

uint64_t sub_1BD8D6BD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EA20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = *(a1 + 8);
  if (v12)
  {
    *&v95 = *a1;
    *(&v95 + 1) = v12;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v13 = sub_1BE0506C4();
    v66 = v14;
    v67 = v13;
    v16 = v15;
    v65 = v17;
    v64 = sub_1BE050234();
    sub_1BE04E1F4();
    v63 = v18;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = v16 & 1;
    LOBYTE(v82) = v16 & 1;
    LOBYTE(v81[0]) = 0;
    v62 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v95) = 0;
    *(&v61 + 1) = sub_1BE050424();
    *&v61 = swift_getKeyPath();
    v34 = *(a1 + 32);
    if (v34 == 1)
    {
      v35 = sub_1BE051224();
    }

    else
    {
      v35 = sub_1BE051234();
    }

    *(&v60 + 1) = v35;
    *&v60 = swift_getKeyPath();
    if (v34)
    {
      v36 = sub_1BE051404();
    }

    else
    {
      v37 = [objc_opt_self() quaternarySystemFillColor];
      v36 = sub_1BE0511C4();
    }

    v38 = v36;
    v39 = sub_1BE0501D4();
    if (v34)
    {
      v40 = PKUIPixelLength() != 0.0;
      if (v34 == 2)
      {
        v41 = [objc_opt_self() tertiaryLabelColor];
        v42 = sub_1BE0511C4();
      }

      else
      {
        v42 = sub_1BE051234();
      }

      v45 = v42;
      v43 = PKUIPixelLength();
    }

    else
    {
      v43 = 0.0;
      v45 = sub_1BE051404();
      v40 = 0;
    }

    *&v82 = v67;
    *(&v82 + 1) = v66;
    LOBYTE(v83) = v25;
    *(&v83 + 1) = v65;
    LOBYTE(v84) = v64;
    *(&v84 + 1) = v63;
    *&v85 = v20;
    *(&v85 + 1) = v22;
    *&v86 = v24;
    BYTE8(v86) = 0;
    LOBYTE(v87) = v62;
    *(&v87 + 1) = v27;
    *&v88 = v29;
    *(&v88 + 1) = v31;
    *&v89 = v33;
    BYTE8(v89) = 0;
    v90 = v61;
    v91 = v60;
    *&v92 = v38;
    BYTE8(v92) = v39;
    LOBYTE(v93) = v40;
    *(&v93 + 1) = v45;
    *&v94 = v43;
    *(&v94 + 1) = 0x4010000000000000;
    PKEdgeInsetsMake(&v82, v44);
    v105 = v92;
    v106 = v93;
    v107 = v94;
    v101 = v88;
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v97 = v84;
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v95 = v82;
    v96 = v83;
  }

  else
  {
    sub_1BD349C2C(&v95);
  }

  sub_1BD8D708C(v11);
  v78 = v105;
  v79 = v106;
  v80 = v107;
  v74 = v101;
  v75 = v102;
  v76 = v103;
  v77 = v104;
  v70 = v97;
  v71 = v98;
  v72 = v99;
  v73 = v100;
  v68 = v95;
  v69 = v96;
  sub_1BD0DE19C(v11, v7, &qword_1EBD4EA20);
  v46 = v79;
  v81[10] = v78;
  v81[11] = v79;
  v47 = v80;
  v81[12] = v80;
  v48 = v74;
  v49 = v75;
  v81[6] = v74;
  v81[7] = v75;
  v51 = v76;
  v50 = v77;
  v81[8] = v76;
  v81[9] = v77;
  v52 = v70;
  v53 = v71;
  v81[2] = v70;
  v81[3] = v71;
  v55 = v72;
  v54 = v73;
  v81[4] = v72;
  v81[5] = v73;
  v57 = v68;
  v56 = v69;
  v81[0] = v68;
  v81[1] = v69;
  a2[10] = v78;
  a2[11] = v46;
  a2[12] = v47;
  a2[6] = v48;
  a2[7] = v49;
  a2[8] = v51;
  a2[9] = v50;
  a2[2] = v52;
  a2[3] = v53;
  a2[4] = v55;
  a2[5] = v54;
  *a2 = v57;
  a2[1] = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D38);
  sub_1BD0DE19C(v7, a2 + *(v58 + 48), &qword_1EBD4EA20);
  sub_1BD0DE19C(v81, &v82, &qword_1EBD57D40);
  sub_1BD0DE53C(v11, &qword_1EBD4EA20);
  sub_1BD0DE53C(v7, &qword_1EBD4EA20);
  v92 = v78;
  v93 = v79;
  v94 = v80;
  v88 = v74;
  v89 = v75;
  v90 = v76;
  v91 = v77;
  v84 = v70;
  v85 = v71;
  v86 = v72;
  v87 = v73;
  v82 = v68;
  v83 = v69;
  return sub_1BD0DE53C(&v82, &qword_1EBD57D40);
}

uint64_t sub_1BD8D708C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v9 = &v32 - v8;
  v10 = *(v1 + 24);
  if (v10)
  {
    v35 = *(v1 + 16);
    v36 = v10;
    v33 = v6;
    v34 = v5;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v14;
    sub_1BE0502A4();
    v16 = sub_1BE0505F4();
    v18 = v17;
    v32 = a1;
    v20 = v19;

    sub_1BD0DDF10(v11, v13, v15 & 1);

    sub_1BE051234();
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    KeyPath = swift_getKeyPath();
    v35 = v21;
    v36 = v23;
    v37 = v25 & 1;
    v38 = v27;
    v39 = KeyPath;
    v40 = 2;
    v41 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    sub_1BE050DE4();

    sub_1BD0DDF10(v21, v23, v25 & 1);

    v29 = v32;
    sub_1BD8D7390(v9, v32);
    return (*(v33 + 56))(v29, 0, 1, v34);
  }

  else
  {
    v31 = *(v6 + 56);

    return v31(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD8D7390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD8D7410()
{
  result = qword_1EBD57D48;
  if (!qword_1EBD57D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D10);
    sub_1BD0DE4F4(&qword_1EBD57D28, &qword_1EBD57D10);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57D48);
  }

  return result;
}

unint64_t sub_1BD8D7510()
{
  result = qword_1EBD57D58;
  if (!qword_1EBD57D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57D58);
  }

  return result;
}

uint64_t sub_1BD8D7590@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v44 = sub_1BE04F434();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D68);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D70);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v37 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D78);
  MEMORY[0x1EEE9AC00](v45, v21);
  v38 = &v37 - v22;
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57D80);
  sub_1BD0DE4F4(&qword_1EBD57D88, &qword_1EBD57D80);
  sub_1BE0504A4();
  v53 = *(v2 + 1);
  v48 = *(v2 + 1);
  v23 = sub_1BD0DE4F4(&qword_1EBD57D90, &qword_1EBD57D60);
  v24 = sub_1BD0DDEBC();
  v25 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  (*(v7 + 8))(v10, v6);
  v26 = v39;
  v27 = v44;
  (*(v3 + 104))(v39, *MEMORY[0x1E697C438], v44);
  *&v48 = v6;
  *(&v48 + 1) = v25;
  v49 = v23;
  v50 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v40;
  sub_1BE050E84();
  (*(v3 + 8))(v26, v27);
  (*(v41 + 8))(v15, v29);
  sub_1BE052434();
  *&v48 = v29;
  *(&v48 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v38;
  v31 = v42;
  sub_1BE050DE4();

  (*(v43 + 8))(v20, v31);
  v32 = *v2;
  v51 = v2[4];
  v52 = v32;
  v33 = swift_allocObject();
  v34 = *(v2 + 1);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v34;
  *(v33 + 48) = v2[4];
  v35 = (v30 + *(v45 + 36));
  *v35 = sub_1BD8DAA88;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_1BE052434();
  sub_1BD8DAA8C(&v52, &v48);
  sub_1BD206260(&v53, &v48);
  sub_1BD0DE19C(&v51, &v48, &qword_1EBD3DD40);
  sub_1BD8DAAE8();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v30, &qword_1EBD57D78);
}

id sub_1BD8D7B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DB0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v98 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DB8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v97 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v102 = &v93 - v20;
  v21 = type metadata accessor for UnavailablePaymentMethodItem() - 8;
  MEMORY[0x1EEE9AC00](v21, v22);
  v104 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v93 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v106 = &v93 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v93 - v34;
  v100 = a1;
  v36 = *a1;
  v108 = *(*a1 + 16);
  v99 = v11;
  v101 = v5;
  if (v108)
  {
    v94 = v4;
    v95 = a2;
    v37 = 0;
    v103 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v107 = v36 + v103;
    v109 = *(v33 + 72);
    v112 = 0x80000001BE117FC0;
    v113 = 0x80000001BE117FF0;
    v110 = 0x80000001BE117F70;
    v111 = 0x80000001BE117FA0;
    v105 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CD0];
    do
    {
      sub_1BD8DB938(v107 + v109 * v37, v35, type metadata accessor for UnavailablePaymentMethodItem);
      sub_1BE053D04();
      sub_1BE052524();
      v39 = sub_1BE053D64();
      v40 = ~(-1 << *(v38 + 32));
      for (i = v39 & v40; ; i = (i + 1) & v40)
      {
        if (((*(v38 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> i) & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v38;
          sub_1BD2AAE68(5, i, isUniquelyReferenced_nonNull_native);
          v45 = v116;
          goto LABEL_13;
        }

        v42 = *(*(v38 + 48) + i);
        if (v42 > 4)
        {
          break;
        }

        v43 = sub_1BE053B84();

        if (v43)
        {
          goto LABEL_12;
        }
      }

LABEL_12:
      v45 = v38;
LABEL_13:
      v46 = sub_1BD6CC5F8(*v35, v45);

      if (v46)
      {
        sub_1BD8DB9A0(v35, type metadata accessor for UnavailablePaymentMethodItem);
      }

      else
      {
        sub_1BD8DB8D0(v35, v106, type metadata accessor for UnavailablePaymentMethodItem);
        v47 = v105;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v47;
        v120 = v47;
        if ((v48 & 1) == 0)
        {
          sub_1BD532394(0, *(v47 + 16) + 1, 1);
          v49 = v120;
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1BD532394(v50 > 1, v51 + 1, 1);
          v49 = v120;
        }

        *(v49 + 16) = v51 + 1;
        v105 = v49;
        sub_1BD8DB8D0(v106, v49 + v103 + v51 * v109, type metadata accessor for UnavailablePaymentMethodItem);
      }

      ++v37;
    }

    while (v37 != v108);
    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    v106 = 0xD000000000000015;
    do
    {
      v54 = v27;
      sub_1BD8DB938(v107 + v109 * v52, v27, type metadata accessor for UnavailablePaymentMethodItem);
      sub_1BE053D04();
      sub_1BE052524();
      v55 = sub_1BE053D64();
      v56 = ~(-1 << *(v38 + 32));
      for (j = v55 & v56; ; j = (j + 1) & v56)
      {
        if (((*(v38 + ((j >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> j) & 1) == 0)
        {
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v38;
          sub_1BD2AAE68(5, j, v60);
          v61 = v116;
          goto LABEL_30;
        }

        v58 = *(*(v38 + 48) + j);
        if (v58 > 4)
        {
          break;
        }

        v59 = sub_1BE053B84();

        if (v59)
        {
          goto LABEL_29;
        }
      }

LABEL_29:
      v61 = v38;
LABEL_30:
      v27 = v54;
      v62 = sub_1BD6CC5F8(*v54, v61);

      if (v62)
      {
        sub_1BD8DB8D0(v54, v104, type metadata accessor for UnavailablePaymentMethodItem);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v120 = v53;
        if ((v63 & 1) == 0)
        {
          sub_1BD532394(0, *(v53 + 16) + 1, 1);
          v53 = v120;
        }

        v65 = *(v53 + 16);
        v64 = *(v53 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1BD532394(v64 > 1, v65 + 1, 1);
          v53 = v120;
        }

        *(v53 + 16) = v65 + 1;
        sub_1BD8DB8D0(v104, v53 + v103 + v65 * v109, type metadata accessor for UnavailablePaymentMethodItem);
      }

      else
      {
        sub_1BD8DB9A0(v54, type metadata accessor for UnavailablePaymentMethodItem);
      }

      ++v52;
    }

    while (v52 != v108);
    a2 = v95;
    v4 = v94;
    v5 = v101;
    v66 = v105;
    if (*(v105 + 16))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
    v53 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_37:
      v67 = v100;
      v68 = v100[3];
      v105 = v66;
      v116 = sub_1BD8DACF8(v68);
      v117 = v69;
      sub_1BD0DDEBC();
      v70 = sub_1BE0506C4();
      v113 = &v93;
      v116 = v70;
      v117 = v71;
      v118 = v72 & 1;
      v119 = v73;
      v120 = v67[4];
      v115 = v120;
      MEMORY[0x1EEE9AC00](v70, v71);
      sub_1BD0DE19C(&v120, v114, &qword_1EBD3DD40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DD8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD40);
      sub_1BD8DB084();
      sub_1BD27AC24(&qword_1EBD3DD38, &qword_1EBD3DD40);
      v74 = v102;
      sub_1BE051A34();

      v5 = v101;
      v75 = 0;
      goto LABEL_40;
    }
  }

  v75 = 1;
  v74 = v102;
LABEL_40:
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DC0);
  (*(*(v76 - 8) + 56))(v74, v75, 1, v76);
  if (!*(v53 + 16))
  {

    v88 = 1;
    v87 = v98;
    goto LABEL_44;
  }

  v77 = v96;
  (*(v5 + 104))(v96, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v79 = result;
    v80 = sub_1BE04B6F4();
    v81 = v77;
    v83 = v82;

    (*(v5 + 8))(v81, v4);
    v116 = v80;
    v117 = v83;
    sub_1BD0DDEBC();
    v116 = sub_1BE0506C4();
    v117 = v84;
    v118 = v85 & 1;
    v119 = v86;
    MEMORY[0x1EEE9AC00](v116, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DD8);
    sub_1BD8DB084();
    v87 = v98;
    sub_1BE051A24();

    v88 = 0;
    v74 = v102;
LABEL_44:
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DC8);
    (*(*(v89 - 8) + 56))(v87, v88, 1, v89);
    v90 = v97;
    sub_1BD0DE19C(v74, v97, &qword_1EBD57DB8);
    v91 = v99;
    sub_1BD0DE19C(v87, v99, &qword_1EBD57DB0);
    sub_1BD0DE19C(v90, a2, &qword_1EBD57DB8);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DD0);
    sub_1BD0DE19C(v91, a2 + *(v92 + 48), &qword_1EBD57DB0);
    sub_1BD0DE53C(v87, &qword_1EBD57DB0);
    sub_1BD0DE53C(v74, &qword_1EBD57DB8);
    sub_1BD0DE53C(v91, &qword_1EBD57DB0);
    return sub_1BD0DE53C(v90, &qword_1EBD57DB8);
  }

  __break(1u);
  return result;
}

void sub_1BD8D883C(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1BE04FF64();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E60);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E38);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E68);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E20);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E70);
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = (v49 - v26);
  if (*a1 == 2)
  {
    v28 = &a1[*(type metadata accessor for UnavailablePaymentMethodItem() + 36)];
    v29 = *v28;
    v30 = *(v28 + 1);
    if (*v28)
    {
      KeyPath = swift_getKeyPath();
      v32 = swift_allocObject();
      *(v32 + 16) = 1;
      v33 = v30;
      sub_1BE048964();
      sub_1BE048964();
      v34 = v29;
      v35 = sub_1BD185ABC;
      v36 = v30;
    }

    else
    {
      v36 = 0;
      KeyPath = 0;
      v35 = 0;
      v32 = 0;
    }

    *v27 = v29;
    v27[1] = v36;
    v27[2] = 0;
    v27[3] = KeyPath;
    v27[4] = v35;
    v27[5] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1BD3EFCD8(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E00);
    sub_1BD8DB1C0();
    sub_1BD8DB270(&qword_1EBD57E18, &qword_1EBD57E20, &unk_1BE102A58, sub_1BD8DB320);
    sub_1BE04F9A4();
    sub_1BD8DB4A8(v29, v36);
  }

  else
  {
    v49[1] = v25;
    *v14 = sub_1BE04F504();
    *(v14 + 1) = 0x4020000000000000;
    v14[16] = 0;
    *v10 = sub_1BE04F504();
    *(v10 + 1) = 0x4030000000000000;
    v10[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E78);
    sub_1BD8D90F4(a1, &v10[*(v37 + 44)]);
    sub_1BE051CE4();
    v50 = v19;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E80) + 44);
    v49[0] = v3;
    v39 = &v14[v38];
    sub_1BE04EE54();
    sub_1BD0DE204(v10, v39, &qword_1EBD57E60);
    v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E88) + 36));
    v41 = v62;
    v40[4] = v61;
    v40[5] = v41;
    v40[6] = v63;
    v42 = v58;
    *v40 = v57;
    v40[1] = v42;
    v43 = v60;
    v40[2] = v59;
    v40[3] = v43;
    sub_1BE04FF44();
    v44 = sub_1BD0DE4F4(&qword_1EBD57E40, &qword_1EBD57E38);
    sub_1BE050D14();
    (*(v53 + 8))(v6, v49[0]);
    sub_1BD0DE53C(v14, &qword_1EBD57E38);
    sub_1BE052434();
    v55 = v11;
    v56 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v52;
    sub_1BE050DE4();

    (*(v51 + 8))(v18, v45);
    v46 = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    v48 = &v22[*(v50 + 36)];
    *v48 = v46;
    v48[1] = sub_1BD10DF54;
    v48[2] = v47;
    sub_1BD0DE19C(v22, v27, &qword_1EBD57E20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E00);
    sub_1BD8DB1C0();
    sub_1BD8DB270(&qword_1EBD57E18, &qword_1EBD57E20, &unk_1BE102A58, sub_1BD8DB320);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v22, &qword_1EBD57E20);
  }
}

uint64_t sub_1BD8D8F4C(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  swift_getKeyPath();
  v10 = *a2;
  v9 = *(a2 + 1);
  v8 = a2[4];
  v3 = swift_allocObject();
  v4 = *(a2 + 1);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[4];
  sub_1BE048C84();
  sub_1BD8DAA8C(&v10, v6);
  sub_1BD206260(&v9, v6);
  sub_1BD0DE19C(&v8, v6, &qword_1EBD3DD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57DF0);
  sub_1BD0DE4F4(&qword_1EBD57E50, &qword_1EBD57E48);
  sub_1BD8DB6CC(&qword_1EBD57E58, type metadata accessor for UnavailablePaymentMethodItem);
  sub_1BD8DB108();
  return sub_1BE0519C4();
}

uint64_t sub_1BD8D90F4@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDA8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E90);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  sub_1BD8D9320(a1, &v23 - v18);
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDC0);
  sub_1BD8DA1AC(&v11[*(v20 + 44)]);
  sub_1BD0DE19C(v19, v15, &qword_1EBD57E90);
  sub_1BD0DE19C(v11, v7, &qword_1EBD3DDA8);
  sub_1BD0DE19C(v15, a2, &qword_1EBD57E90);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57E98);
  sub_1BD0DE19C(v7, a2 + *(v21 + 48), &qword_1EBD3DDA8);
  sub_1BD0DE53C(v11, &qword_1EBD3DDA8);
  sub_1BD0DE53C(v19, &qword_1EBD57E90);
  sub_1BD0DE53C(v7, &qword_1EBD3DDA8);
  return sub_1BD0DE53C(v15, &qword_1EBD57E90);
}

uint64_t sub_1BD8D9320@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EA0);
  v125 = *(v3 - 8);
  v126 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v123 = &v123 - v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EA8);
  MEMORY[0x1EEE9AC00](v132, v6);
  v124 = &v123 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EB0);
  MEMORY[0x1EEE9AC00](v130, v8);
  v131 = &v123 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EB8);
  MEMORY[0x1EEE9AC00](v140, v10);
  v133 = &v123 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EC0);
  MEMORY[0x1EEE9AC00](v137, v12);
  v139 = &v123 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EC8);
  MEMORY[0x1EEE9AC00](v127, v14);
  v128 = (&v123 - v15);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57ED0);
  MEMORY[0x1EEE9AC00](v138, v16);
  v129 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0);
  v19 = *(v18 - 8);
  v134 = v18;
  v135 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v123 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v123 - v29;
  v31 = type metadata accessor for WrappedPass(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v123 - v38;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB8);
  MEMORY[0x1EEE9AC00](v136, v40);
  v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v123 - v45;
  v47 = *a1;
  if (v47 > 2)
  {
    if (v47 - 3 < 2)
    {
      sub_1BD7D071C(v26);
      if ((*(v32 + 48))(v26, 1, v31) == 1)
      {
        sub_1BD0DE53C(v26, &unk_1EBD43B90);
        v50 = 1;
        v51 = v134;
      }

      else
      {
        sub_1BD8DB8D0(v26, v35, type metadata accessor for WrappedPass);
        v106 = type metadata accessor for PassImage(0);
        sub_1BD8DB938(v35, &v22[v106[6]], type metadata accessor for WrappedPass);
        PKPassFrontFaceContentSize();
        *(v22 + 3) = 0x4049800000000000;
        *(v22 + 4) = v108 / v107 * 51.0;
        *v22 = sub_1BD70C870;
        *(v22 + 1) = 0;
        v22[16] = 0;
        v22[v106[7]] = 0;
        *&v22[v106[8]] = 1911;
        LOBYTE(v106) = sub_1BE050234();
        sub_1BE04E1F4();
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        sub_1BD8DB9A0(v35, type metadata accessor for WrappedPass);
        v51 = v134;
        v117 = &v22[*(v134 + 36)];
        *v117 = v106;
        *(v117 + 1) = v110;
        *(v117 + 2) = v112;
        *(v117 + 3) = v114;
        *(v117 + 4) = v116;
        v117[40] = 0;
        sub_1BD0DE204(v22, v42, &qword_1EBD3DDB0);
        v50 = 0;
      }

      (*(v135 + 56))(v42, v50, 1, v51);
      v103 = &qword_1EBD3DDB8;
      sub_1BD0DE19C(v42, v131, &qword_1EBD3DDB8);
      swift_storeEnumTagMultiPayload();
      sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
      sub_1BD8DB508(&qword_1EBD57ED8, &qword_1EBD57EA8, &unk_1BE102B70, sub_1BD8DB584);
      v118 = v133;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v118, v139, &qword_1EBD57EB8);
      swift_storeEnumTagMultiPayload();
      sub_1BD8DB714();
      sub_1BD8DB7EC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v118, &qword_1EBD57EB8);
      v119 = v42;
      goto LABEL_25;
    }

    v54 = type metadata accessor for UnavailablePaymentMethodItem();
    v55 = *&a1[*(v54 + 40)];
    v46 = v124;
    if (v55)
    {
      v56 = *&a1[*(v54 + 44)];
      if (v56)
      {
        v57 = v56;
        v58 = v55;
        if ([v58 type] == 1)
        {
          objc_opt_self();
          v59 = swift_dynamicCastObjCClass();
          if (v59)
          {
            v60 = v59;
            v61 = v58;
            v62 = [v60 icon];
            v63 = *(type metadata accessor for PaymentOfferInstallmentCriteriaIconView() + 28);
            KeyPath = swift_getKeyPath();
            v65 = v123;
            *&v123[v63] = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
            swift_storeEnumTagMultiPayload();
            *v65 = v62;
            *(v65 + 8) = v60;
            __asm { FMOV            V0.2D, #30.0 }

            *(v65 + 16) = _Q0;
            v71 = v61;
            LOBYTE(v61) = sub_1BE050204();
            sub_1BE04E1F4();
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v80 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57EF0) + 36);
            *v80 = v61;
            *(v80 + 8) = v73;
            *(v80 + 16) = v75;
            *(v80 + 24) = v77;
            *(v80 + 32) = v79;
            *(v80 + 40) = 0;
            LOBYTE(v61) = sub_1BE050224();
            sub_1BE04E1F4();
            v82 = v81;
            v84 = v83;
            v86 = v85;
            v88 = v87;

            v89 = v126;
            v90 = v65 + *(v126 + 36);
            *v90 = v61;
            *(v90 + 8) = v82;
            *(v90 + 16) = v84;
            *(v90 + 24) = v86;
            *(v90 + 32) = v88;
            *(v90 + 40) = 0;
            sub_1BD0DE204(v65, v46, &qword_1EBD57EA0);
            (*(v125 + 56))(v46, 0, 1, v89);
LABEL_23:
            v103 = &qword_1EBD57EA8;
            sub_1BD0DE19C(v46, v131, &qword_1EBD57EA8);
            swift_storeEnumTagMultiPayload();
            sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
            sub_1BD8DB508(&qword_1EBD57ED8, &qword_1EBD57EA8, &unk_1BE102B70, sub_1BD8DB584);
            v104 = v133;
            sub_1BE04F9A4();
            v105 = &qword_1EBD57EB8;
            sub_1BD0DE19C(v104, v139, &qword_1EBD57EB8);
LABEL_24:
            swift_storeEnumTagMultiPayload();
            sub_1BD8DB714();
            sub_1BD8DB7EC();
            sub_1BE04F9A4();
            sub_1BD0DE53C(v104, v105);
            v119 = v46;
LABEL_25:
            v121 = v103;
            return sub_1BD0DE53C(v119, v121);
          }
        }
      }
    }

    (*(v125 + 56))(v46, 1, 1, v126);
    goto LABEL_23;
  }

  if (v47 < 2)
  {
    sub_1BD7D071C(v30);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_1BD0DE53C(v30, &unk_1EBD43B90);
      v48 = 1;
      v49 = v134;
    }

    else
    {
      sub_1BD8DB8D0(v30, v39, type metadata accessor for WrappedPass);
      v91 = type metadata accessor for PassImage(0);
      sub_1BD8DB938(v39, &v22[v91[6]], type metadata accessor for WrappedPass);
      PKPassFrontFaceContentSize();
      *(v22 + 3) = 0x4049800000000000;
      *(v22 + 4) = v93 / v92 * 51.0;
      *v22 = sub_1BD70C870;
      *(v22 + 1) = 0;
      v22[16] = 0;
      v22[v91[7]] = 0;
      *&v22[v91[8]] = 1911;
      LOBYTE(v91) = sub_1BE050234();
      sub_1BE04E1F4();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v101 = v100;
      sub_1BD8DB9A0(v39, type metadata accessor for WrappedPass);
      v49 = v134;
      v102 = &v22[*(v134 + 36)];
      *v102 = v91;
      *(v102 + 1) = v95;
      *(v102 + 2) = v97;
      *(v102 + 3) = v99;
      *(v102 + 4) = v101;
      v102[40] = 0;
      sub_1BD0DE204(v22, v46, &qword_1EBD3DDB0);
      v48 = 0;
    }

    (*(v135 + 56))(v46, v48, 1, v49);
    v103 = &qword_1EBD3DDB8;
    sub_1BD0DE19C(v46, v128, &qword_1EBD3DDB8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC68);
    sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
    sub_1BD27AC24(&qword_1EBD3FC60, &qword_1EBD3FC68);
    v104 = v129;
    sub_1BE04F9A4();
    v105 = &qword_1EBD57ED0;
    sub_1BD0DE19C(v104, v139, &qword_1EBD57ED0);
    goto LABEL_24;
  }

  if (*&a1[*(type metadata accessor for UnavailablePaymentMethodItem() + 36)])
  {
    v52 = PKPassKitUIBundle();
    v53 = sub_1BE0515F4();
    sub_1BE048964();
  }

  else
  {
    v53 = 0;
  }

  *v128 = v53;
  swift_storeEnumTagMultiPayload();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC68);
  sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
  sub_1BD27AC24(&qword_1EBD3FC60, &qword_1EBD3FC68);
  v120 = v129;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v120, v139, &qword_1EBD57ED0);
  swift_storeEnumTagMultiPayload();
  sub_1BD8DB714();
  sub_1BD8DB7EC();
  sub_1BE04F9A4();

  v119 = v120;
  v121 = &qword_1EBD57ED0;
  return sub_1BD0DE53C(v119, v121);
}

uint64_t sub_1BD8DA1AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE0);
  sub_1BD8DA3D8(&v17[*(v18 + 44)]);
  sub_1BD8DA7B8(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD3DDD8);
  sub_1BD0DE19C(v9, v5, &unk_1EBD5BB60);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3DDD8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDF8);
  sub_1BD0DE19C(v5, a1 + *(v19 + 48), &unk_1EBD5BB60);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60);
  sub_1BD0DE53C(v17, &qword_1EBD3DDD8);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v13, &qword_1EBD3DDD8);
}

uint64_t sub_1BD8DA3D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDD0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  sub_1BD8DA600();
  v11 = sub_1BE04F794();
  v12 = &v10[*(v3 + 44)];
  *v12 = v11;
  v12[1] = sub_1BD21636C;
  v12[2] = 0;
  sub_1BD7D10D4();
  v13 = 1;
  if (v14)
  {

    v15 = sub_1BD7D10D4();
    v17 = v16;
    v18 = *MEMORY[0x1E69B9D88];
    LOBYTE(v29[0]) = 1;
    v19 = 1;
    v20 = v18;

    v13 = v17;
  }

  else
  {
    v15 = 0;
    v18 = 0;
    v19 = 0;
  }

  sub_1BD0DE19C(v10, v6, &qword_1EBD3DDD0);
  sub_1BD0DE19C(v6, a1, &qword_1EBD3DDD0);
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDE8) + 48));
  *&v25 = 0;
  *(&v25 + 1) = v19;
  *&v26 = v15;
  *(&v26 + 1) = v13;
  v27 = 0uLL;
  *&v28 = 0;
  *(&v28 + 1) = v18;
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  v23 = v28;
  v21[2] = v27;
  v21[3] = v23;
  sub_1BD0DE19C(&v25, v29, &qword_1EBD3DDF0);
  sub_1BD0DE53C(v10, &qword_1EBD3DDD0);
  v29[0] = 0;
  v29[1] = v19;
  v29[2] = v15;
  v29[3] = v13;
  memset(&v29[4], 0, 24);
  v29[7] = v18;
  sub_1BD0DE53C(v29, &qword_1EBD3DDF0);
  return sub_1BD0DE53C(v6, &qword_1EBD3DDD0);
}

uint64_t sub_1BD8DA600()
{
  sub_1BD7D02FC();
  sub_1BD0DDEBC();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE051234();
  v10 = sub_1BE050564();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v14 & 1);
}

uint64_t sub_1BD8DA7B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - v4;
  v6 = sub_1BD7D0C30();
  if (v7)
  {
    v32 = v6;
    v33 = v7;
    sub_1BD0DDEBC();
    v8 = sub_1BE0506C4();
    v10 = v9;
    v12 = v11;
    sub_1BE0502E4();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v29 = a1;
    v30 = v2;
    v17 = v16;

    sub_1BD0DDF10(v8, v10, v12 & 1);

    sub_1BE051234();
    v18 = sub_1BE050564();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_1BD0DDF10(v13, v15, v17 & 1);

    v32 = v18;
    v33 = v20;
    v34 = v22 & 1;
    v35 = v24;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v18, v20, v22 & 1);

    v25 = v29;
    sub_1BD0DE204(v5, v29, &qword_1EBD452C0);
    return (*(v31 + 56))(v25, 0, 1, v30);
  }

  else
  {
    v27 = *(v31 + 56);

    return v27(a1, 1, 1, v2);
  }
}

unint64_t sub_1BD8DAAE8()
{
  result = qword_1EBD57D98;
  if (!qword_1EBD57D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D78);
    sub_1BD8DAB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57D98);
  }

  return result;
}

unint64_t sub_1BD8DAB74()
{
  result = qword_1EBD57DA0;
  if (!qword_1EBD57DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57D60);
    sub_1BD0DE4F4(&qword_1EBD57D90, &qword_1EBD57D60);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD8DB6CC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57DA0);
  }

  return result;
}

id sub_1BD8DACF8(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v17 - v9;
  v12 = *MEMORY[0x1E69B8068];
  v13 = *(v3 + 104);
  if (a1)
  {
    v13(v6, v12, v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v11 = v6;
LABEL_6:

      (*(v3 + 8))(v11, v2);
      return v16;
    }

    __break(1u);
  }

  else
  {
    v13(&v17 - v9, v12, v2, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD8DAEC4()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD8DB6CC(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v11 = sub_1BE052224();

  [v0 subject:v1 sendEvent:v11];
}

unint64_t sub_1BD8DB084()
{
  result = qword_1EBD57DE0;
  if (!qword_1EBD57DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57DD8);
    sub_1BD8DB108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57DE0);
  }

  return result;
}

unint64_t sub_1BD8DB108()
{
  result = qword_1EBD57DE8;
  if (!qword_1EBD57DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57DF0);
    sub_1BD8DB1C0();
    sub_1BD8DB270(&qword_1EBD57E18, &qword_1EBD57E20, &unk_1BE102A58, sub_1BD8DB320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57DE8);
  }

  return result;
}

unint64_t sub_1BD8DB1C0()
{
  result = qword_1EBD57DF8;
  if (!qword_1EBD57DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57E00);
    sub_1BD8DB270(&qword_1EBD57E08, &qword_1EBD57E10, &unk_1BE102A48, sub_1BD5CEBB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57DF8);
  }

  return result;
}

uint64_t sub_1BD8DB270(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD8DB320()
{
  result = qword_1EBD57E28;
  if (!qword_1EBD57E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57E38);
    sub_1BD0DE4F4(&qword_1EBD57E40, &qword_1EBD57E38);
    swift_getOpaqueTypeConformance2();
    sub_1BD8DB6CC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57E28);
  }

  return result;
}

void sub_1BD8DB4A8(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1BD8DB508(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD8DB584()
{
  result = qword_1EBD57EE0;
  if (!qword_1EBD57EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57EA0);
    sub_1BD8DB610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57EE0);
  }

  return result;
}

unint64_t sub_1BD8DB610()
{
  result = qword_1EBD57EE8;
  if (!qword_1EBD57EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57EF0);
    sub_1BD8DB6CC(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57EE8);
  }

  return result;
}

uint64_t sub_1BD8DB6CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD8DB714()
{
  result = qword_1EBD57EF8;
  if (!qword_1EBD57EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57ED0);
    sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
    sub_1BD27AC24(&qword_1EBD3FC60, &qword_1EBD3FC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57EF8);
  }

  return result;
}

unint64_t sub_1BD8DB7EC()
{
  result = qword_1EBD57F00;
  if (!qword_1EBD57F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57EB8);
    sub_1BD8DB508(&qword_1EBD4CCC8, &qword_1EBD3DDB8, &unk_1BE0C2850, sub_1BD5F89D0);
    sub_1BD8DB508(&qword_1EBD57ED8, &qword_1EBD57EA8, &unk_1BE102B70, sub_1BD8DB584);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57F00);
  }

  return result;
}

uint64_t sub_1BD8DB8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8DB938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8DB9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8DBA00()
{
  result = qword_1EBD57F08;
  if (!qword_1EBD57F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57F10);
    sub_1BD8DAAE8();
    sub_1BD8DB6CC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57F08);
  }

  return result;
}

uint64_t static SetupBulletListView.BulletContent.Plain(_:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for SetupBulletListView.BulletContent(0);
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0;
  sub_1BD0DE19C(a7, a8 + *(v16 + 32), &unk_1EBD3CF70);
  *(a8 + 56) = a1;
  *(a8 + 64) = a2;
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t static SetupBulletListView.BulletContent.Bullet(_:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = xmmword_1BE0CB9B0;
  v16 = type metadata accessor for SetupBulletListView.BulletContent(0);
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0;
  sub_1BD0DE19C(a7, a8 + *(v16 + 32), &unk_1EBD3CF70);
  *(a8 + 56) = a1;
  *(a8 + 64) = a2;
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t static SetupBulletListView.BulletContent.Symbol<A>(_:symbolStyle:title:subtitle:linkText:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[5] = a12;
  a9[6] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9 + 2);
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_1, a3, a12);
  v20 = type metadata accessor for SetupBulletListView.BulletContent(0);
  sub_1BD0DE19C(a11, a9 + *(v20 + 32), &unk_1EBD3CF70);
  a9[7] = a4;
  a9[8] = a5;
  a9[9] = a6;
  a9[10] = a7;
  a9[11] = a8;
  a9[12] = a10;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t sub_1BD8DBD78@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB3F690](*(v1 + 56), *(v1 + 64));
  *a1 = result;
  return result;
}

uint64_t SetupBulletListView.init(contents:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE050474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetupBulletListView(0);
  if (qword_1EBD36E70 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBDAB5E0;
  v9 = *MEMORY[0x1E6980EF8];
  v10 = *(v5 + 104);
  v10(v8, v9, v4);
  sub_1BD0DBFDC();
  sub_1BE04E514();
  if (qword_1EBD36E80 != -1)
  {
    swift_once();
  }

  v13 = qword_1EBDAB5F0;
  v10(v8, v9, v4);
  result = sub_1BE04E514();
  *a2 = a1;
  return result;
}

uint64_t SetupBulletListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SetupBulletListView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  if (qword_1EBD36E68 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB5D8;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F18);
  v11[1] = *v1;
  sub_1BD8DC43C(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1BD8DC4A0(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F28);
  sub_1BD0DE4F4(&qword_1EBD57F30, &qword_1EBD57F20);
  sub_1BD0DE4F4(&qword_1EBD57F38, &qword_1EBD57F28);
  sub_1BD8DC508();
  return sub_1BE0519D4();
}

__n128 sub_1BD8DC1D8@<Q0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[10];
  v27 = a1[9];
  v28 = v8;
  v29 = v10;
  v30 = v9;
  v11 = a1[12];
  v26 = a1[11];
  v12 = type metadata accessor for SetupBulletListView.BulletContent(0);
  sub_1BD0DE19C(a1 + *(v12 + 32), v7, &unk_1EBD3CF70);
  sub_1BD8DD8A0(a1, &v35);
  if (*(&v35 + 1) >= 2uLL)
  {
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();

    v25 = sub_1BE04F4E4();
    __swift_destroy_boxed_opaque_existential_0(&v36);
  }

  else
  {
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v25 = sub_1BE04F4D4();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F28);
  sub_1BD0DE19C(v7, a2 + v13[11], &unk_1EBD3CF70);
  sub_1BD8DC57C(a1, v31);
  sub_1BD0DE53C(v7, &unk_1EBD3CF70);
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v41 = v31[6];
  v42 = v31[7];
  v43 = v31[8];
  v44 = v31[9];
  v37 = v31[2];
  v38 = v31[3];
  v39 = v31[4];
  v40 = v31[5];
  v35 = v31[0];
  v36 = v31[1];
  v14 = a2 + v13[13];
  v15 = v33;
  *(v14 + 10) = v32;
  *(v14 + 11) = v15;
  v14[192] = v47;
  v16 = v42;
  *(v14 + 6) = v41;
  *(v14 + 7) = v16;
  v17 = v44;
  *(v14 + 8) = v43;
  *(v14 + 9) = v17;
  v18 = v38;
  *(v14 + 2) = v37;
  *(v14 + 3) = v18;
  v19 = v40;
  *(v14 + 4) = v39;
  *(v14 + 5) = v19;
  result = v36;
  *v14 = v35;
  *(v14 + 1) = result;
  v21 = v30;
  *a2 = v28;
  a2[1] = v21;
  v22 = v29;
  a2[2] = v27;
  a2[3] = v22;
  v23 = v25;
  a2[4] = v26;
  a2[5] = v11;
  *(a2 + v13[12]) = v23;
  return result;
}

uint64_t sub_1BD8DC43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupBulletListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8DC4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupBulletListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD8DC508()
{
  result = qword_1EBD57F40;
  if (!qword_1EBD57F40)
  {
    type metadata accessor for SetupBulletListView.BulletContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57F40);
  }

  return result;
}

__n128 sub_1BD8DC57C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  KeyPath = &v56 - v11;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD8DD8A0(a1, &v110);
  v18 = v111;
  if (v111 == 1)
  {
    v58 = a2;
    (*(v14 + 104))(v17, *MEMORY[0x1E69B80D8], v13);
    v19 = PKPassKitBundle();
    if (v19)
    {
      v21 = v19;
      v22 = sub_1BE04B6F4();
      v24 = v23;

      (*(v14 + 8))(v17, v13);
      *&v113 = v22;
      *(&v113 + 1) = v24;
      sub_1BD0DDEBC();
      v25 = sub_1BE0506C4();
      v27 = v26;
      v29 = v28;
      type metadata accessor for SetupBulletListView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
      sub_1BE04E534();
      sub_1BE0503A4();
      v30 = sub_1BE050354();
      (*(*(v30 - 8) + 56))(KeyPath, 1, 1, v30);
      sub_1BE0503B4();
      sub_1BD0DE53C(KeyPath, &qword_1EBD49130);
      v31 = sub_1BE0505F4();
      v57 = v32;
      v34 = v33;
      v36 = v35;

      sub_1BD0DDF10(v25, v27, v29 & 1);

      if (qword_1EBD36E78 != -1)
      {
        swift_once();
      }

      sub_1BE051CE4();
      a2 = v58;
      sub_1BE04EE54();
      v89 = v34 & 1;
      *&v69 = v31;
      *(&v69 + 1) = v57;
      v70.n128_u8[0] = v34 & 1;
      *(v70.n128_u32 + 1) = *v88;
      v70.n128_u32[1] = *&v88[3];
      v70.n128_u64[1] = v36;
      v80 = v71;
      v81 = v72;
      v78 = v69;
      v79 = v70;
      v85 = v76;
      v86 = v77;
      v83 = v74;
      v84 = v75;
      v82 = v73;
      sub_1BD6434BC(&v78);
      v119 = v84;
      v120 = v85;
      v121 = v86;
      LOBYTE(v122) = v87;
      v115 = v80;
      v116 = v81;
      v117 = v82;
      v118 = v83;
      v113 = v78;
      v114 = v79;
      sub_1BD0DE19C(&v69, &v96, &qword_1EBD3E090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
      sub_1BD19D16C();
      sub_1BE04F9A4();
      v102 = v65;
      v103 = v66;
      v104 = v67;
      LOBYTE(v105) = v68;
      v98 = v61;
      v99 = v62;
      v100 = v63;
      v101 = v64;
      v96 = v59;
      v97 = v60;
      sub_1BD8DDBF8(&v96);
      v123 = v106;
      v124 = v107;
      v125 = v108;
      v119 = v102;
      v120 = v103;
      v121 = v104;
      v122 = v105;
      v115 = v98;
      v116 = v99;
      v117 = v100;
      v118 = v101;
      v113 = v96;
      v114 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F88);
      sub_1BD8DD8E4();
      sub_1BD8DD970();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v69, &qword_1EBD3E090);
      v123 = v94[6];
      v124 = v94[7];
      v125 = v95;
      v119 = v94[2];
      v120 = v94[3];
      v121 = v94[4];
      v122 = v94[5];
      v37 = v91;
      v115 = v92;
      v116 = v93;
      v117 = v94[0];
      v118 = v94[1];
      v38 = v90;
      goto LABEL_14;
    }

    __break(1u);
    v57 = v20;
    v58 = 0;
    sub_1BE052C44();
    v54 = a2;
    v55 = sub_1BE050174();
    sub_1BE04CF84();

    a2 = v54;
LABEL_13:
    sub_1BE04EE54();
    *&v109[55] = v81;
    *&v109[71] = v82;
    *&v109[87] = v83;
    *&v109[103] = v84;
    *&v109[7] = v78;
    *&v109[23] = v79;
    *&v109[39] = v80;
    *&v90 = v13;
    *(&v90 + 1) = v18;
    v91.n128_u64[0] = KeyPath;
    v91.n128_u64[1] = v2;
    LOBYTE(v92) = v17;
    *(&v92 + 1) = v3;
    *&v93 = v4;
    *(&v93 + 1) = v5;
    *&v94[0] = v6;
    BYTE8(v94[0]) = 0;
    *(&v94[3] + 9) = *&v109[48];
    *(&v94[2] + 9) = *&v109[32];
    *(&v94[1] + 9) = *&v109[16];
    *(v94 + 9) = *v109;
    *(&v94[7] + 1) = *(&v84 + 1);
    *(&v94[6] + 9) = *&v109[96];
    *(&v94[5] + 9) = *&v109[80];
    *(&v94[4] + 9) = *&v109[64];
    sub_1BD8DD8D8(&v90);
    v123 = v94[6];
    v124 = v94[7];
    v125 = v95;
    v119 = v94[2];
    v120 = v94[3];
    v121 = v94[4];
    v122 = v94[5];
    v115 = v92;
    v116 = v93;
    v117 = v94[0];
    v118 = v94[1];
    v113 = v90;
    v114 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F88);
    sub_1BD8DD8E4();
    sub_1BD8DD970();
    sub_1BE04F9A4();
    __swift_destroy_boxed_opaque_existential_0(&v59);
    v123 = v106;
    v124 = v107;
    v125 = v108;
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    v115 = v98;
    v116 = v99;
    v117 = v100;
    v118 = v101;
    v38 = v96;
    v37 = v97;
LABEL_14:
    v113 = v38;
    v114 = v37;
    goto LABEL_15;
  }

  if (v111)
  {
    sub_1BD043990(&v112, &v59);
    v13 = sub_1BE0515A4();
    v39 = __swift_project_boxed_opaque_existential_1(&v59, v60.n128_i64[1]);
    v40 = MEMORY[0x1EEE9AC00](v39, v39);
    (*(v42 + 16))(&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
    v18 = sub_1BE04E5F4();
    type metadata accessor for SetupBulletListView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
    sub_1BE04E534();
    v43 = sub_1BE050354();
    (*(*(v43 - 8) + 56))(KeyPath, 1, 1, v43);
    v2 = sub_1BE0503B4();
    sub_1BD0DE53C(KeyPath, &qword_1EBD49130);
    KeyPath = swift_getKeyPath();
    LOBYTE(v17) = sub_1BE050204();
    if (qword_1EBD36E88 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v3 = v44;
    v4 = v45;
    v5 = v46;
    v6 = v47;
    LOBYTE(v69) = 0;
    if (qword_1EBD36E90 != -1)
    {
      swift_once();
    }

    sub_1BE051CE4();
    goto LABEL_13;
  }

  sub_1BD6434D8(&v78);
  v119 = v84;
  v120 = v85;
  v121 = v86;
  LOBYTE(v122) = v87;
  v115 = v80;
  v116 = v81;
  v117 = v82;
  v118 = v83;
  v113 = v78;
  v114 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090);
  sub_1BD19D16C();
  sub_1BE04F9A4();
  v102 = v65;
  v103 = v66;
  v104 = v67;
  LOBYTE(v105) = v68;
  v98 = v61;
  v99 = v62;
  v100 = v63;
  v101 = v64;
  v96 = v59;
  v97 = v60;
  sub_1BD8DDBF8(&v96);
  v94[5] = v105;
  v94[6] = v106;
  v94[7] = v107;
  v94[1] = v101;
  v94[2] = v102;
  v94[3] = v103;
  v94[4] = v104;
  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94[0] = v100;
  v95 = v108;
  v90 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F88);
  sub_1BD8DD8E4();
  sub_1BD8DD970();
  sub_1BE04F9A4();
LABEL_15:
  v48 = v124;
  *(a2 + 160) = v123;
  *(a2 + 176) = v48;
  *(a2 + 192) = v125;
  v49 = v120;
  *(a2 + 96) = v119;
  *(a2 + 112) = v49;
  v50 = v122;
  *(a2 + 128) = v121;
  *(a2 + 144) = v50;
  v51 = v116;
  *(a2 + 32) = v115;
  *(a2 + 48) = v51;
  v52 = v118;
  *(a2 + 64) = v117;
  *(a2 + 80) = v52;
  result = v114;
  *a2 = v113;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD8DD180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  if (qword_1EBD36E68 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB5D8;
  *a3 = sub_1BE04F7B4();
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F18);
  v11[1] = *v3;
  sub_1BD8DC43C(v3, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD8DC4A0(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57F28);
  sub_1BD0DE4F4(&qword_1EBD57F30, &qword_1EBD57F20);
  sub_1BD0DE4F4(&qword_1EBD57F38, &qword_1EBD57F28);
  sub_1BD8DC508();
  return sub_1BE0519D4();
}

void sub_1BD8DD3E0()
{
  sub_1BD8DD588(319, &qword_1EBD57F58, type metadata accessor for SetupBulletListView.BulletContent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BD0DDCF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD8DD4BC()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD8DD588(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD8DD588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9PassKitUI19SetupBulletListViewV0E7ContentV5StyleO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD8DD604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD8DD658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1BD8DD6C0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t objectdestroyTm_109()
{
  v1 = (type metadata accessor for SetupBulletListView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[8], v4);

  return swift_deallocObject();
}

double sub_1BD8DD820@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetupBulletListView(0);

  *&result = sub_1BD8DC1D8(a1, a2).n128_u64[0];
  return result;
}

unint64_t sub_1BD8DD8E4()
{
  result = qword_1EBD57F90;
  if (!qword_1EBD57F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57F80);
    sub_1BD19D16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57F90);
  }

  return result;
}

unint64_t sub_1BD8DD970()
{
  result = qword_1EBD57F98;
  if (!qword_1EBD57F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57F88);
    sub_1BD8DD9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57F98);
  }

  return result;
}

unint64_t sub_1BD8DD9FC()
{
  result = qword_1EBD57FA0;
  if (!qword_1EBD57FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57FA8);
    sub_1BD8DDA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57FA0);
  }

  return result;
}

unint64_t sub_1BD8DDA88()
{
  result = qword_1EBD57FB0;
  if (!qword_1EBD57FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57FB8);
    sub_1BD8DDB40();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57FB0);
  }

  return result;
}

unint64_t sub_1BD8DDB40()
{
  result = qword_1EBD57FC0;
  if (!qword_1EBD57FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57FC8);
    sub_1BD0DE4F4(&qword_1EBD57FD0, &qword_1EBD57FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57FC0);
  }

  return result;
}

uint64_t static SetupFooterView.Configuration.ButtonConfiguration.Primary(text:loading:disabled:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (qword_1EBD36ED8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDAB648;
  v15 = qword_1EBD36EE0;
  sub_1BE048964();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDAB650;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v14;
  *(a7 + 24) = v16;
  *(a7 + 32) = a3 & 1;
  *(a7 + 33) = a4 & 1;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  sub_1BE048964();
  sub_1BE048C84();

  return sub_1BE048964();
}

__n128 SetupFooterView.Configuration.init(primaryButtonConfig:secondaryButtonConfig:footerConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = *(a1 + 48);
  v6 = *(a2 + 16);
  *(a4 + 56) = *a2;
  *(a4 + 72) = v6;
  *(a4 + 88) = *(a2 + 32);
  *(a4 + 104) = v4;
  result = *a3;
  v8 = *(a3 + 16);
  *(a4 + 112) = *a3;
  *(a4 + 128) = v8;
  return result;
}

__n128 SetupFooterView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t SetupFooterView.Configuration.ButtonConfiguration.init(text:textColor:tintColor:loading:disabled:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t static SetupFooterView.Configuration.ButtonConfiguration.Secondary(text:loading:disabled:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (qword_1EBD36EE8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDAB658;
  v15 = qword_1EBD36EF0;
  sub_1BE048964();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDAB660;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v14;
  *(a7 + 24) = v16;
  *(a7 + 32) = a3 & 1;
  *(a7 + 33) = a4 & 1;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  sub_1BE048964();
  sub_1BE048C84();

  return sub_1BE048964();
}

uint64_t SetupFooterView.Configuration.FooterConfiguration.init(text:urlHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t SetupFooterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v29[6] = v1[6];
  v29[7] = v3;
  v29[8] = v1[8];
  v4 = v1[3];
  v29[2] = v1[2];
  v29[3] = v4;
  v5 = v1[5];
  v29[4] = v1[4];
  v29[5] = v5;
  v6 = v1[1];
  v29[0] = *v1;
  v29[1] = v6;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FE0);
  sub_1BD8DE03C(v29, a1 + *(v7 + 44));
  v8 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FE8) + 36);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_1BE0501F4();
  if (qword_1EBD36EF8 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FF0);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1BD8DE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58018);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v3);
  v111 = &v98 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58020);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v118 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v116 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58028);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v117 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v122 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58030);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v98 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58038);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v114 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v98 - v27;
  v29 = *(a1 + 16);
  v140 = *a1;
  v141 = v29;
  v142 = *(a1 + 32);
  v30 = *(a1 + 56);
  v143 = *(a1 + 48);
  v31 = *(a1 + 64);
  v112 = *(a1 + 72);
  v113 = v31;
  v32 = *(a1 + 88);
  v109 = *(a1 + 80);
  v110 = v30;
  v33 = *(a1 + 96);
  v34 = *(a1 + 104);
  v35 = *(a1 + 128);
  v146[0] = *(a1 + 112);
  v146[1] = v35;
  v121 = &v98 - v27;
  v107 = v34;
  v108 = v33;
  if (*(&v146[0] + 1))
  {
    v105 = v18;
    v106 = v32;
    sub_1BD0DE19C(v146, &v129, &qword_1EBD58048);
    sub_1BE048C84();
    sub_1BE04F624();
    v36 = sub_1BE050694();
    v103 = v37;
    v104 = v36;
    v39 = v38;
    v102 = v40;
    v101 = sub_1BE0501E4();
    if (qword_1EBD36EA8 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v39 & 1;
    LOBYTE(v144[0]) = v49;
    LOBYTE(v138[0]) = 0;
    v100 = sub_1BE0501F4();
    v50 = v17;
    if (qword_1EBD36EB0 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    LOBYTE(v129) = 0;
    KeyPath = swift_getKeyPath();
    v59 = swift_allocObject();
    v60 = *(a1 + 112);
    v59[7] = *(a1 + 96);
    v59[8] = v60;
    v59[9] = *(a1 + 128);
    v61 = *(a1 + 48);
    v59[3] = *(a1 + 32);
    v59[4] = v61;
    v62 = *(a1 + 80);
    v59[5] = *(a1 + 64);
    v59[6] = v62;
    v63 = *(a1 + 16);
    v59[1] = *a1;
    v59[2] = v63;
    v64 = &v21[*(v17 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58050);
    sub_1BD8DF9D4(a1, &v129);
    sub_1BE04E764();
    sub_1BD0DE53C(v146, &qword_1EBD58048);
    *v64 = KeyPath;
    v65 = v103;
    *v21 = v104;
    *(v21 + 1) = v65;
    v21[16] = v49;
    *(v21 + 3) = v102;
    LOBYTE(v65) = v100;
    v21[32] = v101;
    *(v21 + 5) = v42;
    *(v21 + 6) = v44;
    *(v21 + 7) = v46;
    *(v21 + 8) = v48;
    v21[72] = 0;
    v21[80] = v65;
    *(v21 + 11) = v52;
    *(v21 + 12) = v54;
    *(v21 + 13) = v56;
    *(v21 + 14) = v58;
    v21[120] = 0;
    v66 = v121;
    sub_1BD0DE204(v21, v121, &qword_1EBD58030);
    (*(v105 + 56))(v66, 0, 1, v50);
    v67 = v122;
    v68 = v120;
    v32 = v106;
  }

  else
  {
    (*(v18 + 56))(&v98 - v27, 1, 1, v17);
    v66 = v28;
    v67 = v122;
    v68 = v120;
  }

  v69 = *(a1 + 64);
  v134 = *(a1 + 80);
  v70 = *(a1 + 112);
  v135 = *(a1 + 96);
  v136 = v70;
  v137 = *(a1 + 128);
  v71 = *a1;
  v130 = *(a1 + 16);
  v72 = *(a1 + 48);
  v131 = *(a1 + 32);
  v132 = v72;
  v133 = v69;
  v129 = v71;
  v144[0] = v140;
  v144[1] = v141;
  v144[2] = v142;
  v145 = v143;
  sub_1BD8DF900(v144, v138);
  sub_1BD8DEA74(&v140, v67);
  v138[0] = v140;
  v138[1] = v141;
  v138[2] = v142;
  v139 = v143;
  sub_1BD8DF938(v138);
  if (v113)
  {
    v73 = *(a1 + 64);
    v134 = *(a1 + 80);
    v74 = *(a1 + 112);
    v135 = *(a1 + 96);
    v136 = v74;
    v137 = *(a1 + 128);
    v75 = *a1;
    v130 = *(a1 + 16);
    v76 = *(a1 + 48);
    v131 = *(a1 + 32);
    v132 = v76;
    v133 = v73;
    v129 = v75;
    v77 = v110;
    v124[0] = v110;
    v124[1] = v113;
    v124[2] = v112;
    v124[3] = v109;
    v125 = v32 & 0x101;
    v126 = v108;
    v127 = v107;
    v128[0] = v110;
    v128[1] = v113;
    v128[2] = v112;
    v128[3] = v109;
    v128[4] = v32;
    v128[5] = v108;
    v128[6] = v107;
    v78 = v113;
    sub_1BD8DF900(v128, &v123);
    v79 = v111;
    sub_1BD8DEA74(v124, v111);
    v80 = sub_1BE0501E4();
    if (qword_1EBD36ED0 != -1)
    {
      swift_once();
    }

    sub_1BE04E1F4();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    sub_1BD8DF968(v77, v78);
    v89 = v120;
    v90 = v79 + *(v120 + 36);
    *v90 = v80;
    *(v90 + 8) = v82;
    *(v90 + 16) = v84;
    *(v90 + 24) = v86;
    *(v90 + 32) = v88;
    *(v90 + 40) = 0;
    v91 = v116;
    sub_1BD0DE204(v79, v116, &qword_1EBD58018);
    (*(v115 + 56))(v91, 0, 1, v89);
    v66 = v121;
  }

  else
  {
    v91 = v116;
    (*(v115 + 56))(v116, 1, 1, v68);
  }

  v92 = v114;
  sub_1BD0DE19C(v66, v114, &qword_1EBD58038);
  v93 = v117;
  sub_1BD0DE19C(v122, v117, &qword_1EBD58028);
  v94 = v118;
  sub_1BD0DE19C(v91, v118, &qword_1EBD58020);
  v95 = v119;
  sub_1BD0DE19C(v92, v119, &qword_1EBD58038);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58040);
  sub_1BD0DE19C(v93, v95 + *(v96 + 48), &qword_1EBD58028);
  sub_1BD0DE19C(v94, v95 + *(v96 + 64), &qword_1EBD58020);
  sub_1BD0DE53C(v91, &qword_1EBD58020);
  sub_1BD0DE53C(v122, &qword_1EBD58028);
  sub_1BD0DE53C(v121, &qword_1EBD58038);
  sub_1BD0DE53C(v94, &qword_1EBD58020);
  sub_1BD0DE53C(v93, &qword_1EBD58028);
  return sub_1BD0DE53C(v92, &qword_1EBD58038);
}

uint64_t sub_1BD8DE998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v8[0] = *(a2 + 112);
  v8[1] = v2;
  v3 = v2;
  if (*(&v8[0] + 1))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    return MEMORY[0x1EEDDE3A0]();
  }

  else
  {
    sub_1BD0DE19C(v8, &v7, &qword_1EBD58048);
    sub_1BD0D44B8(v3);
    v3(a1);
    sub_1BD0D4744(v3);
    return sub_1BD0DE53C(v8, &qword_1EBD58048);
  }
}

uint64_t sub_1BD8DEA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = sub_1BE04FD54();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BE051504();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v55 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58058);
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58060);
  v59 = *(v21 - 8);
  v60 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v55 - v23;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58068);
  MEMORY[0x1EEE9AC00](v56, v25);
  v58 = &v55 - v26;
  v27 = *(a1 + 16);
  v70[0] = *a1;
  v70[1] = v27;
  v71 = *(a1 + 32);
  v72 = *(a1 + 48);
  v28 = v2[6];
  v29 = v2[7];
  v30 = v2[4];
  v69[5] = v2[5];
  v69[6] = v28;
  v31 = v2[8];
  v69[7] = v29;
  v69[8] = v31;
  v32 = v2[3];
  v69[2] = v2[2];
  v69[3] = v32;
  v69[4] = v30;
  v33 = v2[1];
  v69[0] = *v2;
  v69[1] = v33;
  if (qword_1EBD36EC0 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBDAB630;
  if (qword_1EBD36EC8 != -1)
  {
    swift_once();
  }

  v35 = qword_1EBDAB638;
  v36 = swift_allocObject();
  v37 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v37;
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = *(a1 + 48);
  MEMORY[0x1EEE9AC00](v36, v38);
  *(&v55 - 4) = v69;
  *(&v55 - 3) = v70;
  *(&v55 - 2) = v35;
  *(&v55 - 1) = v34;
  sub_1BD8DF900(v70, &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58070);
  sub_1BD8DFA40();
  v55 = v20;
  sub_1BE051704();
  sub_1BE0514F4();
  sub_1BE0514E4();
  v39 = *(v7 + 8);
  v40 = v63;
  v39(v10, v63);
  v41 = v62;
  MEMORY[0x1BFB3E560](1);
  v39(v14, v40);
  v42 = v64;
  sub_1BE04FD44();
  sub_1BD0DE4F4(&qword_1EBD58098, &qword_1EBD58058);
  sub_1BD8DFC3C();
  v43 = v57;
  v44 = v66;
  v45 = v55;
  sub_1BE0508D4();
  (*(v65 + 8))(v42, v44);
  v39(v41, v40);
  (*(v61 + 8))(v45, v43);
  v46 = BYTE1(v71);
  if (BYTE1(v71))
  {
    v47 = 0.5;
  }

  else
  {
    v47 = 1.0;
  }

  v48 = v58;
  (*(v59 + 32))(v58, v24, v60);
  *&v48[*(v56 + 36)] = v47;
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  v51 = v48;
  v52 = v67;
  sub_1BD0DE204(v51, v67, &qword_1EBD58068);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58028);
  v54 = (v52 + *(result + 36));
  *v54 = KeyPath;
  v54[1] = sub_1BD10DF54;
  v54[2] = v50;
  return result;
}

__n128 sub_1BD8DF0BC@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58088);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v19 - v8;
  v10 = a1[7];
  v27 = a1[6];
  v28 = v10;
  v29 = a1[8];
  v11 = a1[3];
  v23 = a1[2];
  v24 = v11;
  v12 = a1[5];
  v25 = a1[4];
  v26 = v12;
  v13 = a1[1];
  v21 = *a1;
  v22 = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v19[2] = *(a2 + 32);
  v20 = *(a2 + 48);
  sub_1BD8DF2B8(v19, v19 - v8);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v9, a3, &qword_1EBD58088);
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58070) + 36);
  v16 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v16;
  *(v15 + 96) = v27;
  v17 = v22;
  *v15 = v21;
  *(v15 + 16) = v17;
  result = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_1BD8DF2B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580A8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v35 - v10;
  v12 = a1[2];
  if (*(a1 + 32) == 1)
  {
    sub_1BE04E4F4();
    KeyPath = swift_getKeyPath();
    v36 = v12;
    sub_1BE048964();
    v14 = sub_1BE04E5F4();
    v15 = &v11[*(v8 + 36)];
    *v15 = KeyPath;
    v15[1] = v14;
    sub_1BD0DE19C(v11, v7, &qword_1EBD424B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8DFB58();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v11, &qword_1EBD424B8);
  }

  else
  {
    v35[1] = v4;
    v35[2] = v8;
    v35[3] = a2;
    v17 = a1[1];
    v36 = *a1;
    v37 = v17;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    if (qword_1EBD36EB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1BE0505F4();
    v25 = v24;
    v27 = v26;
    sub_1BD0DDF10(v18, v20, v22 & 1);

    v36 = v12;
    sub_1BE048964();
    v28 = sub_1BE050574();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_1BD0DDF10(v23, v25, v27 & 1);

    *v7 = v28;
    *(v7 + 1) = v30;
    v7[16] = v32 & 1;
    *(v7 + 3) = v34;
    swift_storeEnumTagMultiPayload();
    sub_1BD8DFB58();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD8DF5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v29[6] = v1[6];
  v29[7] = v3;
  v29[8] = v1[8];
  v4 = v1[3];
  v29[2] = v1[2];
  v29[3] = v4;
  v5 = v1[5];
  v29[4] = v1[4];
  v29[5] = v5;
  v6 = v1[1];
  v29[0] = *v1;
  v29[1] = v6;
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FE0);
  sub_1BD8DE03C(v29, a1 + *(v7 + 44));
  v8 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FE8) + 36);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_1BE0501F4();
  if (qword_1EBD36EF8 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57FF0);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLV7SwiftUI13OpenURLActionV6ResultVIegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1BD8DF7BC()
{
  result = qword_1EBD57FF8;
  if (!qword_1EBD57FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57FF0);
    sub_1BD8DF848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57FF8);
  }

  return result;
}

unint64_t sub_1BD8DF848()
{
  result = qword_1EBD58000;
  if (!qword_1EBD58000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD57FE8);
    sub_1BD0DE4F4(&qword_1EBD58008, &qword_1EBD58010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58000);
  }

  return result;
}

uint64_t sub_1BD8DF968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BD8DFA40()
{
  result = qword_1EBD58078;
  if (!qword_1EBD58078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58070);
    sub_1BD8DFACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58078);
  }

  return result;
}

unint64_t sub_1BD8DFACC()
{
  result = qword_1EBD58080;
  if (!qword_1EBD58080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58088);
    sub_1BD8DFB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58080);
  }

  return result;
}

unint64_t sub_1BD8DFB58()
{
  result = qword_1EBD58090;
  if (!qword_1EBD58090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD424B8);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58090);
  }

  return result;
}

unint64_t sub_1BD8DFC3C()
{
  result = qword_1EBD580A0;
  if (!qword_1EBD580A0)
  {
    sub_1BE04FD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD580A0);
  }

  return result;
}

uint64_t FlightWidgetArrivedView.content.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

__n128 FlightWidgetArrivedView.init(content:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1[1];
  v8 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = type metadata accessor for FlightWidgetArrivedView();
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *(a2 + *(v5 + 24)) = 0x4048000000000000;
  result = v7;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t type metadata accessor for FlightWidgetArrivedView()
{
  result = qword_1EBD580B8;
  if (!qword_1EBD580B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlightWidgetArrivedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580B0);
  return sub_1BD8DFE28(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1BD8DFE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580D8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v40 - v12;
  v14 = a1;
  v15 = *a1;
  v16 = a1[1];
  v17 = v14;
  v44 = v15;
  v45 = v16;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  type metadata accessor for FlightWidgetArrivedView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0);
  v41 = v17;
  sub_1BE04E534();
  sub_1BE050364();
  v23 = sub_1BE050354();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_1BE0503B4();
  sub_1BD3FA0F4(v13);
  v24 = sub_1BE0505F4();
  v26 = v25;
  LOBYTE(v17) = v27;

  sub_1BD0DDF10(v18, v20, v22 & 1);

  v44 = sub_1BE051424();
  v28 = sub_1BE050574();
  v30 = v29;
  LOBYTE(v20) = v31;
  v33 = v32;
  sub_1BD0DDF10(v24, v26, v17 & 1);

  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580E0);
  sub_1BD8E01D0(v41, &v9[*(v34 + 44)]);
  v35 = v42;
  sub_1BD0DE19C(v9, v42, &qword_1EBD580D8);
  v36 = v43;
  *v43 = v28;
  v36[1] = v30;
  *(v36 + 16) = v20 & 1;
  v36[3] = v33;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580E8);
  sub_1BD0DE19C(v35, v37 + *(v38 + 48), &qword_1EBD580D8);
  sub_1BD0D7F18(v28, v30, v20 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v9, &qword_1EBD580D8);
  sub_1BD0DE53C(v35, &qword_1EBD580D8);
  sub_1BD0DDF10(v28, v30, v20 & 1);
}

uint64_t sub_1BD8E01D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580F0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  sub_1BE048C84();
  v11 = sub_1BE051574();
  v12 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v44 = v11;
  v45 = KeyPath;
  v46 = v12;
  sub_1BE0503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180);
  sub_1BD0F14E8();
  v41 = v10;
  sub_1BE050854();

  *&v10[*(v4 + 44)] = sub_1BE0513E4();
  v14 = *(a1 + 40);
  v44 = *(a1 + 32);
  v45 = v14;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v15 = sub_1BE0506C4();
  v17 = v16;
  v19 = v18;
  sub_1BE050454();
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v12) = v23;

  sub_1BD0DDF10(v15, v17, v19 & 1);

  sub_1BE0503A4();
  v24 = sub_1BE050544();
  v26 = v25;
  v28 = v27;
  sub_1BD0DDF10(v20, v22, v12 & 1);

  v44 = sub_1BE0513E4();
  v29 = sub_1BE050574();
  v31 = v30;
  LOBYTE(v22) = v32;
  v34 = v33;
  sub_1BD0DDF10(v24, v26, v28 & 1);

  v36 = v41;
  v35 = v42;
  sub_1BD0DE19C(v41, v42, &qword_1EBD580F0);
  v37 = v43;
  sub_1BD0DE19C(v35, v43, &qword_1EBD580F0);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580F8) + 48);
  *v38 = v29;
  *(v38 + 8) = v31;
  *(v38 + 16) = v22 & 1;
  *(v38 + 24) = v34;
  sub_1BD0D7F18(v29, v31, v22 & 1);
  sub_1BE048C84();
  sub_1BD0DE53C(v36, &qword_1EBD580F0);
  sub_1BD0DDF10(v29, v31, v22 & 1);

  return sub_1BD0DE53C(v35, &qword_1EBD580F0);
}

uint64_t sub_1BD8E052C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BE048C84();
}

__n128 sub_1BD8E0580@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *(a3 + *(a2 + 24)) = 0x4048000000000000;
  result = v8;
  *a3 = v9;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  return result;
}

unint64_t sub_1BD8E0608(uint64_t a1)
{
  result = sub_1BD8E0630();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD8E0630()
{
  result = qword_1EBD50B88;
  if (!qword_1EBD50B88)
  {
    type metadata accessor for FlightWidgetArrivedView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B88);
  }

  return result;
}

uint64_t sub_1BD8E06A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD580B0);
  return sub_1BD8DFE28(v1, (a1 + *(v3 + 44)));
}

void sub_1BD8E0720()
{
  sub_1BD0DDCF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void NearbyPeerPaymentAmountEntryView.init(authController:initialAmount:initialMemo:dismissAction:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a4;
  v46 = a6;
  v43 = a3;
  v44 = a5;
  v47 = a7;
  v48 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v21 + 36);
  v23 = type metadata accessor for FeatureError(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1BD0DE19C(v15, v11, &qword_1EBD416C0);
  sub_1BE051694();
  sub_1BD0DE53C(v15, &qword_1EBD416C0);
  v24 = (v20 + *(v16 + 40));
  type metadata accessor for AirDropRequirements();
  v25 = swift_allocObject();
  v26 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v26 activate];
  *(v25 + 16) = v26;
  *(v25 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v25 + 25) = 769;
  sub_1BE04B5C4();
  v49 = v25;
  sub_1BE051694();
  v27 = v51;
  *v24 = v50;
  v24[1] = v27;
  v28 = [objc_opt_self() sharedInstance];
  if (!v28)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 account];

  if (!v30)
  {

    sub_1BD0DE53C(v20 + v22, &qword_1EBD3E968);

    (*(v17 + 56))(v47, 1, 1, v16);
    return;
  }

  *v20 = v48;
  v20[3] = v30;
  if (a2)
  {
    v31 = v30;
    v32 = a2;
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD38840);
    v33 = v30;
    v32 = sub_1BE053054();
  }

  v34 = a2;
  v35 = [v30 currentBalance];

  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = [v35 currency];

  v37 = PKCurrencyAmountMake();
  if (!v37)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v20[4] = v37;
  v20[5] = 0;

  v38 = v43;
  if (!v45)
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v45)
  {
    v39 = v45;
  }

  v20[6] = v38;
  v20[7] = v39;
  v20[8] = 0;
  v40 = v46;
  v41 = v47;
  v20[1] = v44;
  v20[2] = v40;
  sub_1BD8E5CD0(v20, v41, type metadata accessor for NearbyPeerPaymentAmountEntryView);
  (*(v17 + 56))(v41, 0, 1, v16);
  sub_1BD8E5DB8(v20, type metadata accessor for NearbyPeerPaymentAmountEntryView);
}

uint64_t type metadata accessor for NearbyPeerPaymentAmountEntryView()
{
  result = qword_1EBD581A8;
  if (!qword_1EBD581A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NearbyPeerPaymentAmountEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58100);
  sub_1BD8E1C4C();
  sub_1BE04EC04();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58198) + 36));
  *v2 = sub_1BD8E3ECC;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581A0);
  v4 = (a1 + *(result + 36));
  *v4 = 0;
  v4[1] = 0;
  v4[2] = sub_1BD8E3ED8;
  v4[3] = 0;
  return result;
}

id sub_1BD8E0D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_1BE04FF64();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v117 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v112 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v6);
  v136 = v7;
  v116 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v114, v8);
  v113 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04F434();
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v128 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BE04BD74();
  v138 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v13);
  v132 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58160);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v101 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58140);
  MEMORY[0x1EEE9AC00](v131, v20);
  v22 = &v101 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58138);
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v23);
  v137 = &v101 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58130);
  v125 = *(v25 - 8);
  v126 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v123 = &v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58228);
  v101 = *(v28 - 8);
  v102 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v127 = &v101 - v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58120);
  MEMORY[0x1EEE9AC00](v135, v31);
  v103 = &v101 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58230);
  v105 = *(v33 - 8);
  v106 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v104 = &v101 - v35;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58110);
  MEMORY[0x1EEE9AC00](v109, v36);
  v107 = &v101 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58238);
  v110 = *(v38 - 8);
  v111 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v108 = &v101 - v40;
  v134 = sub_1BE04F7B4();
  LOBYTE(v159[0]) = 1;
  v139 = a1;
  sub_1BD8E229C(a1, &v142);
  v154 = v146;
  v155 = v147;
  v156 = v148;
  v150 = v142;
  v151 = v143;
  v152 = v144;
  v153 = v145;
  v157[0] = v142;
  v157[1] = v143;
  v157[2] = v144;
  v157[3] = v145;
  v157[4] = v146;
  v157[5] = v147;
  v158 = v148;
  sub_1BD0DE19C(&v150, &v140, &qword_1EBD58240);
  sub_1BD0DE53C(v157, &qword_1EBD58240);
  *&v149[55] = v153;
  *&v149[71] = v154;
  *&v149[87] = v155;
  *&v149[7] = v150;
  *&v149[23] = v151;
  v149[103] = v156;
  *&v149[39] = v152;
  v41 = v159[0];
  v42 = sub_1BE04EC64();
  v43 = sub_1BE0501D4();
  v44 = *(v16 + 44);
  v45 = *MEMORY[0x1E697DBA8];
  v46 = sub_1BE04E354();
  v47 = *(v46 - 8);
  (*(v47 + 104))(&v19[v44], v45, v46);
  (*(v47 + 56))(&v19[v44], 0, 1, v46);
  v48 = *&v149[32];
  *(v19 + 65) = *&v149[48];
  v49 = *&v149[80];
  *(v19 + 81) = *&v149[64];
  *(v19 + 97) = v49;
  v50 = *&v149[16];
  *(v19 + 17) = *v149;
  *(v19 + 33) = v50;
  *v19 = v134;
  *(v19 + 1) = 0;
  v19[16] = v41;
  *(v19 + 113) = *&v149[96];
  *(v19 + 49) = v48;
  v51 = v159[0];
  *(v19 + 31) = *(v159 + 3);
  *(v19 + 121) = v51;
  *(v19 + 16) = v42;
  v19[136] = v43;
  v134 = objc_opt_self();
  v52 = [v134 clearColor];
  v121 = objc_opt_self();
  result = [v121 backgroundColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v54 = sub_1BE0511C4();
  v55 = sub_1BE0501D4();
  v56 = sub_1BD0DE204(v19, v22, &qword_1EBD58160);
  v57 = v131;
  v58 = &v22[*(v131 + 36)];
  *v58 = v54;
  v58[8] = v55;
  MEMORY[0x1EEE9AC00](v56, v59);
  *(&v101 - 2) = v139;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58148);
  v61 = sub_1BD8E2074();
  v62 = sub_1BD0DE4F4(&qword_1EBD58188, &qword_1EBD58148);
  sub_1BE051024();
  sub_1BD0DE53C(v22, &qword_1EBD58140);
  v63 = v132;
  v64 = v133;
  (*(v138 + 13))(v132, *MEMORY[0x1E69B8050], v133);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v65 = result;
  v66 = sub_1BE04B6F4();
  v68 = v67;

  (*(v138 + 1))(v63, v64);
  v140 = v66;
  v141 = v68;
  *&v142 = v57;
  *(&v142 + 1) = v60;
  *&v143 = v61;
  *(&v143 + 1) = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = sub_1BD0DDEBC();
  v71 = MEMORY[0x1E69E6158];
  v73 = v123;
  v72 = v124;
  v74 = v137;
  sub_1BE050B74();

  (*(v122 + 8))(v74, v72);
  v76 = v128;
  v75 = v129;
  v77 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x1E697C438], v130);
  *&v142 = v72;
  *(&v142 + 1) = v71;
  *&v143 = OpaqueTypeConformance2;
  *(&v143 + 1) = v70;
  swift_getOpaqueTypeConformance2();
  v78 = v126;
  v79 = v127;
  sub_1BE050E84();
  (*(v75 + 8))(v76, v77);
  (*(v125 + 8))(v73, v78);
  v80 = [v134 clearColor];
  result = [v121 primaryTextColor];
  if (result)
  {

    v81 = sub_1BE0511C4();
    v82 = v103;
    (*(v101 + 32))(v103, v79, v102);
    *(v82 + *(v135 + 36)) = v81;
    v83 = v139;
    v84 = *v139;
    swift_getKeyPath();
    *&v142 = v84;
    sub_1BD8E5C88(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
    sub_1BE04B594();

    v85 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
    swift_beginAccess();
    v86 = v113;
    sub_1BD8E5CD0(v84 + v85, v113, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    v138 = type metadata accessor for NearbyPeerPaymentAmountEntryView;
    v87 = v116;
    sub_1BD8E5CD0(v83, v116, type metadata accessor for NearbyPeerPaymentAmountEntryView);
    v88 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v89 = swift_allocObject();
    sub_1BD6DD8A0(v87, v89 + v88);
    sub_1BD8E1E8C();
    sub_1BD8E5C88(&qword_1EBD58190, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    v90 = v104;
    sub_1BE051064();

    sub_1BD8E5DB8(v86, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    sub_1BD0DE53C(v82, &qword_1EBD58120);
    v91 = v109;
    v92 = v107;
    v93 = &v107[*(v109 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v94 = v139;
    sub_1BE0516C4();
    sub_1BD8E5CD0(v94, v87, v138);
    v95 = swift_allocObject();
    sub_1BD6DD8A0(v87, v95 + v88);
    (*(v105 + 32))(v92, v90, v106);
    v96 = &v93[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v96 = sub_1BD8E5E18;
    v96[1] = v95;
    v97 = v117;
    sub_1BE04FF54();
    v98 = sub_1BD8E1D44();
    v99 = v108;
    sub_1BE050D14();
    (*(v118 + 8))(v97, v119);
    sub_1BD0DE53C(v92, &qword_1EBD58110);
    sub_1BE052434();
    v140 = v91;
    v141 = v98;
    swift_getOpaqueTypeConformance2();
    v100 = v111;
    sub_1BE050DE4();

    return (*(v110 + 8))(v99, v100);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1BD8E1C4C()
{
  result = qword_1EBD58108;
  if (!qword_1EBD58108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58110);
    sub_1BD8E1D44();
    swift_getOpaqueTypeConformance2();
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58108);
  }

  return result;
}

unint64_t sub_1BD8E1D44()
{
  result = qword_1EBD58118;
  if (!qword_1EBD58118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58120);
    type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(255);
    sub_1BD8E1E8C();
    sub_1BD8E5C88(&qword_1EBD58190, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
    swift_getOpaqueTypeConformance2();
    sub_1BD8E5C88(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58118);
  }

  return result;
}

unint64_t sub_1BD8E1E8C()
{
  result = qword_1EBD58128;
  if (!qword_1EBD58128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58148);
    sub_1BD8E2074();
    sub_1BD0DE4F4(&qword_1EBD58188, &qword_1EBD58148);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58128);
  }

  return result;
}

unint64_t sub_1BD8E2074()
{
  result = qword_1EBD58150;
  if (!qword_1EBD58150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58140);
    sub_1BD8E212C();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58150);
  }

  return result;
}

unint64_t sub_1BD8E212C()
{
  result = qword_1EBD58158;
  if (!qword_1EBD58158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58160);
    sub_1BD8E21E4();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58158);
  }

  return result;
}

unint64_t sub_1BD8E21E4()
{
  result = qword_1EBD58168;
  if (!qword_1EBD58168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58170);
    sub_1BD0DE4F4(&qword_1EBD58178, &qword_1EBD58180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58168);
  }

  return result;
}

uint64_t sub_1BD8E229C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *&v22 = *(a1 + 32);
  *(&v22 + 1) = v5;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8);
  sub_1BE0516C4();
  v7 = *(a1 + 64);
  v22 = *(a1 + 48);
  *&v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  sub_1BD4F9598(v6, v27, *(&v27 + 1), v28, v27, *(&v27 + 1), v28, *(&v28 + 1), &v17);
  v8 = v21;
  v26 = v21;
  *&v15[71] = v21;
  v16 = 1;
  v24 = v19;
  v25 = v20;
  v22 = v17;
  v23 = v18;
  *&v15[23] = v18;
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[7] = v17;
  v14 = 1;
  *(a2 + 8) = 1;
  v9 = v14;
  *a2 = 0;
  v10 = *v15;
  *(a2 + 25) = *&v15[16];
  v11 = *&v15[48];
  *(a2 + 41) = *&v15[32];
  *(a2 + 57) = v11;
  *(a2 + 72) = *&v15[63];
  *(a2 + 9) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = v9;
  v31 = v8;
  v29 = v19;
  v30 = v20;
  v27 = v17;
  v28 = v18;
  sub_1BD4F9790(&v22, &v13);
  return sub_1BD4F97C8(&v27);
}

uint64_t sub_1BD8E2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58248);
  MEMORY[0x1EEE9AC00](v20[0], v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58250);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  v11 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58258);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BE04FB04();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58260);
  sub_1BD8E5E38();
  sub_1BE04E424();
  sub_1BE04FB14();
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58270);
  sub_1BD8E5F44();
  sub_1BE04E424();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_1BE04F854();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD8E2738(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  sub_1BD8E5CD0(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentAmountEntryView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD6DD8A0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78);
  sub_1BD12DFE4();
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
  sub_1BE050DE4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD8E29A0(uint64_t a1)
{
  (*(a1 + 8))(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v2 = *MEMORY[0x1E69BA440];
  *(inited + 32) = *MEMORY[0x1E69BA440];
  v3 = sub_1BE052434();
  v4 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = *v4;
  *(inited + 56) = *v4;
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = *v8;
  *(inited + 80) = *v8;
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v11;
  *(inited + 96) = v13;
  v14 = *v12;
  *(inited + 104) = *v12;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v15;
  v16 = v2;
  v17 = v6;
  v18 = v10;
  v19 = v14;
  v20 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v20);
}

id sub_1BD8E2B98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8050], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8E2D04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = &v61 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582D8);
  MEMORY[0x1EEE9AC00](v78, v6);
  v79 = &v61 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E0);
  MEMORY[0x1EEE9AC00](v73, v8);
  v74 = &v61 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58288);
  MEMORY[0x1EEE9AC00](v77, v10);
  v75 = &v61 - v11;
  v65 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v64 = *(v65 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65, v13);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582C8);
  MEMORY[0x1EEE9AC00](v67, v14);
  v16 = &v61 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582B8);
  MEMORY[0x1EEE9AC00](v66, v17);
  v68 = &v61 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582A8);
  MEMORY[0x1EEE9AC00](v69, v19);
  v70 = &v61 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58298);
  MEMORY[0x1EEE9AC00](v72, v21);
  v71 = &v61 - v22;
  v23 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  swift_getKeyPath();
  v89 = v27;
  sub_1BD8E5C88(&qword_1EBD47178, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController);
  sub_1BE04B594();

  v28 = OBJC_IVAR____TtC9PassKitUI46NearbyPeerPaymentSenderAuthorizationController__state;
  swift_beginAccess();
  sub_1BD8E5CD0(v27 + v28, v26, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v31 = v62;
      sub_1BE04E4F4();
      v32 = v63;
      (*(v63 + 16))(v74, v31, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E6088();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      v33 = v75;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v33, v79, &qword_1EBD58288);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E5FD0();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v33, &qword_1EBD58288);
      return (*(v32 + 8))(v31, v3);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD8E5DB8(v26, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
      swift_storeEnumTagMultiPayload();
      sub_1BD8E5FD0();
      return sub_1BE04F9A4();
    }

    sub_1BD8E5DB8(v26, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  v34 = v2[3];
  v35 = v2[5];
  v86 = v2[4];
  v87 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8);
  sub_1BE0516A4();
  v36 = v83;
  v37 = [v83 amount];

  v38 = [v34 deviceTapFeatureDescriptor];
  LODWORD(v34) = [v34 transactionAmountIsValid:v37 feature:v38];
  LODWORD(v62) = v34;

  LODWORD(v63) = v34 ^ 1;
  sub_1BD8E5CD0(v2, &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NearbyPeerPaymentAmountEntryView);
  v39 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v40 = swift_allocObject();
  sub_1BD6DD8A0(&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78);
  sub_1BD12DFE4();
  v61 = v16;
  sub_1BE051704();
  v41 = v2 + *(v65 + 40);
  v65 = v3;
  v43 = *(v41 + 1);
  v83 = *v41;
  v42 = v83;
  v84 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F0);
  sub_1BE0516C4();
  v44 = v86;
  v45 = v87;
  v46 = v88;
  swift_getKeyPath();
  v86 = v44;
  v87 = v45;
  v88 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F8);
  sub_1BE051904();

  v48 = v83;
  v47 = v84;
  v49 = v85;

  v81 = v42;
  v82 = v43;
  sub_1BE0516A4();
  v50 = v80;
  v51 = v61;
  v52 = &v61[*(v67 + 36)];
  *v52 = v48;
  *(v52 + 1) = v47;
  v52[16] = v49;
  *(v52 + 3) = v50;
  if (v62)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.5;
  }

  v54 = v68;
  sub_1BD0DE204(v51, v68, &qword_1EBD582C8);
  *(v54 + *(v66 + 36)) = v53;
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v63;
  v57 = v70;
  sub_1BD0DE204(v54, v70, &qword_1EBD582B8);
  v58 = (v57 + *(v69 + 36));
  *v58 = KeyPath;
  v58[1] = sub_1BD10DF54;
  v58[2] = v56;
  sub_1BE052434();
  sub_1BD8E6144();
  v59 = v71;
  sub_1BE050DE4();

  sub_1BD0DE53C(v57, &qword_1EBD582A8);
  sub_1BD0DE19C(v59, v74, &qword_1EBD58298);
  swift_storeEnumTagMultiPayload();
  sub_1BD8E6088();
  sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
  v60 = v75;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v60, v79, &qword_1EBD58288);
  swift_storeEnumTagMultiPayload();
  sub_1BD8E5FD0();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v60, &qword_1EBD58288);
  return sub_1BD0DE53C(v59, &qword_1EBD58298);
}

uint64_t sub_1BD8E382C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v45 - v13;
  v15 = sub_1BE04B824();
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47198);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v45 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v45 - v29;
  v31 = type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD8E5CD0(v50, v34, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v14;
    v47 = v22;
    v45 = v18;
    v50 = v10;
    sub_1BD0DE204(v34, v30, &qword_1EBD47198);
    sub_1BD0DE19C(v30, v26, &qword_1EBD47198);
    v37 = sub_1BE04B7C4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v26, 1, v37) == 1)
    {
      sub_1BD0DE53C(v26, &qword_1EBD47198);
      v39 = v46;
      (*(v48 + 56))(v46, 1, 1, v15);
    }

    else
    {
      v39 = v46;
      sub_1BE04B7B4();
      (*(v38 + 8))(v26, v37);
      v40 = v48;
      if ((*(v48 + 48))(v39, 1, v15) != 1)
      {
        v41 = v45;
        (*(v40 + 32))(v45, v39, v15);
        _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
        (*(v40 + 8))(v41, v15);
        goto LABEL_10;
      }
    }

    sub_1BD0DE53C(v39, &unk_1EBD3F6C0);
LABEL_10:
    v42 = v6;
    v43 = v50;
    v44 = v47;
    sub_1BD0DE19C(v30, v47, &qword_1EBD47198);
    FeatureError.init(_:)(v44, v43);
    type metadata accessor for NearbyPeerPaymentAmountEntryView();
    sub_1BD0DE19C(v43, v42, &qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516B4();
    sub_1BD0DE53C(v43, &qword_1EBD416C0);
    return sub_1BD0DE53C(v30, &qword_1EBD47198);
  }

  if (EnumCaseMultiPayload)
  {
    return sub_1BD8E5DB8(v34, type metadata accessor for NearbyPeerPaymentSenderAuthorizationController.State);
  }

  (*(v49 + 8))(*v34);
}

uint64_t sub_1BD8E3D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  type metadata accessor for NearbyPeerPaymentAmountEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516A4();
  NearbyPeerPaymentSenderAuthorizationController.errorProcessed(_:)(v7);
  sub_1BD0DE53C(v7, &qword_1EBD416C0);
  v8 = type metadata accessor for FeatureError(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1BD0DE19C(v7, v3, &qword_1EBD416C0);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &qword_1EBD416C0);
}

void sub_1BD8E3EE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B98E0;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = sub_1BE052434();
  v4 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = *v4;
  *(inited + 56) = *v4;
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = *v8;
  *(inited + 80) = *v8;
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v11;
  *(inited + 96) = v13;
  v14 = *v12;
  *(inited + 104) = *v12;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v15;
  v16 = v2;
  v17 = v6;
  v18 = v10;
  v19 = v14;
  v20 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1BE0B69E0;
  v22 = *MEMORY[0x1E69BA850];
  *(v21 + 32) = *MEMORY[0x1E69BA850];
  *(v21 + 40) = sub_1BE052434();
  *(v21 + 48) = v23;
  v24 = v22;
  v25 = sub_1BD1AAF50(v21);
  swift_setDeallocating();
  sub_1BD0DE53C(v21 + 32, &qword_1EBD3F590);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v25;
  sub_1BD6BC0F4(v20, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v30);

  v27 = *MEMORY[0x1E69BB6A8];
  v28 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD8E5C88(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v29 = sub_1BE052224();

  [v28 subject:v27 sendEvent:v29];
}

uint64_t sub_1BD8E41A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v40 - v4;
  v6 = sub_1BE04B824();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for NearbyPeerPaymentAmountEntryView() + 40));
  v13 = v11[1];
  *&v43 = *v11;
  v12 = v43;
  *(&v43 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582F0);
  sub_1BE0516A4();
  sub_1BD9B0214();

  *&v43 = v12;
  *(&v43 + 1) = v13;
  sub_1BE0516A4();
  v14 = v41;
  swift_getKeyPath();
  *&v43 = v14;
  sub_1BD8E5C88(&qword_1EBD5A450, type metadata accessor for AirDropRequirements);
  sub_1BE04B594();

  v15 = *(v14 + 26);

  if (v15 == 3)
  {
    v16 = *(a1 + 40);
    *&v43 = *(a1 + 32);
    *(&v43 + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD582E8);
    sub_1BE0516A4();
    v17 = v41;
    v18 = *(a1 + 64);
    v43 = *(a1 + 48);
    v44 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516A4();
    NearbyPeerPaymentSenderAuthorizationController.authorizeAmount(_:memo:completion:)(v17, v41, v42, 0, 0);
  }

  else
  {
    sub_1BD9AF408();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1BD0DE53C(v5, &unk_1EBD3F6C0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
      (*(v7 + 8))(v10, v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v20 = *MEMORY[0x1E69BA440];
  *(inited + 32) = *MEMORY[0x1E69BA440];
  v21 = sub_1BE052434();
  v22 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v21;
  *(inited + 48) = v23;
  v24 = *v22;
  *(inited + 56) = *v22;
  v25 = sub_1BE052434();
  v26 = MEMORY[0x1E69BAFB0];
  *(inited + 64) = v25;
  *(inited + 72) = v27;
  v28 = *v26;
  *(inited + 80) = *v26;
  v29 = sub_1BE052434();
  v30 = MEMORY[0x1E69BAF60];
  *(inited + 88) = v29;
  *(inited + 96) = v31;
  v32 = *v30;
  *(inited + 104) = *v30;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v33;
  v34 = v20;
  v35 = v24;
  v36 = v28;
  v37 = v32;
  v38 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  _s9PassKitUI9AnalyticsO25trackPeerPaymentButtonTap4withySDySo14PKAnalyticsKeyaSSG_tFZ_0(v38);
}

uint64_t sub_1BD8E4664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE051574();
  *a1 = result;
  return result;
}

id sub_1BD8E46AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8050], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8E4818@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58100);
  sub_1BD8E1C4C();
  sub_1BE04EC04();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58198) + 36));
  *v2 = sub_1BD8E3ECC;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581A0);
  v4 = (a1 + *(result + 36));
  *v4 = 0;
  v4[1] = 0;
  v4[2] = sub_1BD8E3ED8;
  v4[3] = 0;
  return result;
}

void sub_1BD8E4918()
{
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD4AD68);
      if (v2 <= 0x3F)
      {
        sub_1BD8E4A24();
        if (v3 <= 0x3F)
        {
          sub_1BD366900();
          if (v4 <= 0x3F)
          {
            sub_1BD243964();
            if (v5 <= 0x3F)
            {
              sub_1BD8E4A8C();
              if (v6 <= 0x3F)
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

void sub_1BD8E4A24()
{
  if (!qword_1EBD581B8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43B00);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD581B8);
    }
  }
}

void sub_1BD8E4A8C()
{
  if (!qword_1EBD581C0)
  {
    type metadata accessor for AirDropRequirements();
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD581C0);
    }
  }
}

unint64_t sub_1BD8E4AE4()
{
  result = qword_1EBD581C8;
  if (!qword_1EBD581C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD581A0);
    sub_1BD8E4B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD581C8);
  }

  return result;
}

unint64_t sub_1BD8E4B70()
{
  result = qword_1EBD581D0;
  if (!qword_1EBD581D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58198);
    sub_1BD0DE4F4(&qword_1EBD581D8, &qword_1EBD581E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD581D0);
  }

  return result;
}

_BYTE *sub_1BD8E4C54(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8);
    return sub_1BE0518F4();
  }

  return result;
}

uint64_t sub_1BD8E4CB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1BE0528A4();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v9 = sub_1BE052894();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 56) = a5;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v12 = sub_1BE052894();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  sub_1BE051934();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8);
  MEMORY[0x1BFB3E970](&v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  sub_1BD0DE4F4(&qword_1EBD58200, &qword_1EBD581F0);
  sub_1BD8E5BD8();
  sub_1BD0DE4F4(&qword_1EBD58210, &qword_1EBD581F8);
  sub_1BD1B9AAC();
  sub_1BE050ED4();
}

id sub_1BD8E4F58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v91 = a2;
  v92 = a4;
  v90 = a3;
  v93 = a1;
  v85 = a5;
  v5 = sub_1BE04ED14();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v77 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2A8);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v8);
  v80 = v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58218);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v84 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v82 = v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v73 - v18;
  v20 = sub_1BE04BD74();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v88 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v94 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v75 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v76 = v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v89 = v73 - v41;
  v42 = *(v21 + 104);
  v87 = *MEMORY[0x1E69B8050];
  v86 = v42;
  v42(v27, v40);
  result = PKPassKitBundle();
  if (result)
  {
    v44 = result;
    v45 = sub_1BE04B6F4();
    v47 = v46;

    v74 = *(v21 + 8);
    v73[0] = v21 + 8;
    v74(v27, v20);
    v95 = v45;
    v96 = v47;
    sub_1BE04E1B4();
    v48 = sub_1BE04E1D4();
    (*(*(v48 - 8) + 56))(v19, 0, 1, v48);
    v49 = swift_allocObject();
    v50 = v92;
    v51 = v91;
    *(v49 + 16) = v93;
    *(v49 + 24) = v51;
    *(v49 + 32) = v90;
    *(v49 + 40) = v50;
    v52 = v20;
    v53 = sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v73[1] = v53;
    sub_1BE051724();
    sub_1BE052434();
    v54 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BE050DE4();

    v55 = *(v94 + 8);
    v94 += 8;
    v55(v34, v28);
    v56 = v88;
    v86(v88, v87, v52);
    result = PKPassKitBundle();
    if (result)
    {
      v57 = result;
      v58 = sub_1BE04B6F4();
      v60 = v59;

      v74(v56, v52);
      v95 = v58;
      v96 = v60;
      v61 = swift_allocObject();
      v62 = v92;
      *(v61 + 16) = v93;
      *(v61 + 24) = v91;
      *(v61 + 32) = v90;
      *(v61 + 40) = v62;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v63 = v75;
      sub_1BE051744();
      v64 = v77;
      sub_1BE04ED04();
      v65 = v80;
      sub_1BE050BA4();
      (*(v78 + 8))(v64, v79);
      v55(v63, v28);
      sub_1BE052434();
      v95 = v28;
      v96 = v54;
      swift_getOpaqueTypeConformance2();
      v66 = v82;
      v67 = v83;
      sub_1BE050DE4();

      (*(v81 + 8))(v65, v67);
      v68 = v89;
      v69 = v76;
      sub_1BD0DE19C(v89, v76, &unk_1EBD45200);
      v70 = v84;
      sub_1BD0C1840(v66, v84);
      v71 = v85;
      sub_1BD0DE19C(v69, v85, &unk_1EBD45200);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58220);
      sub_1BD0C1840(v70, v71 + *(v72 + 48));
      sub_1BD0DE53C(v66, &qword_1EBD58218);
      sub_1BD0DE53C(v68, &unk_1EBD45200);
      sub_1BD0DE53C(v70, &qword_1EBD58218);
      return sub_1BD0DE53C(v69, &unk_1EBD45200);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD8E57EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 26) != 3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1BD8E5C88(&qword_1EBD5A450, type metadata accessor for AirDropRequirements);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD8E58FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - v6;
  v8 = sub_1BD9AF5C4(*a1);
  if (v9)
  {
    v20 = v8;
    v21 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v20 = v10;
    v21 = v11;
    v14 = v13 & 1;
    v22 = v13 & 1;
    v23 = v15;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v10, v12, v14);

    sub_1BD0DE204(v7, a2, &qword_1EBD452C0);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v17 = *(v19 + 56);

    return v17(a2, 1, 1, v4);
  }
}

void *sub_1BD8E5AFC@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD581E8);
  result = MEMORY[0x1BFB3E970](&v7, v5);
  *a1 = v7 != 3;
  return result;
}

uint64_t objectdestroyTm_110()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1BD8E5BD8()
{
  result = qword_1EBD58208;
  if (!qword_1EBD58208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58208);
  }

  return result;
}

uint64_t sub_1BD8E5C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD8E5CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8E5D38(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NearbyPeerPaymentAmountEntryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD8E382C(a1, a2, v6);
}

uint64_t sub_1BD8E5DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD8E5E38()
{
  result = qword_1EBD58268;
  if (!qword_1EBD58268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58260);
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58268);
  }

  return result;
}

unint64_t sub_1BD8E5F44()
{
  result = qword_1EBD58278;
  if (!qword_1EBD58278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58270);
    sub_1BD8E5FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58278);
  }

  return result;
}

unint64_t sub_1BD8E5FD0()
{
  result = qword_1EBD58280;
  if (!qword_1EBD58280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58288);
    sub_1BD8E6088();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58280);
  }

  return result;
}

unint64_t sub_1BD8E6088()
{
  result = qword_1EBD58290;
  if (!qword_1EBD58290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58298);
    sub_1BD8E6144();
    sub_1BD8E5C88(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58290);
  }

  return result;
}

unint64_t sub_1BD8E6144()
{
  result = qword_1EBD582A0;
  if (!qword_1EBD582A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582A8);
    sub_1BD8E61FC();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582A0);
  }

  return result;
}

unint64_t sub_1BD8E61FC()
{
  result = qword_1EBD582B0;
  if (!qword_1EBD582B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582B8);
    sub_1BD8E6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582B0);
  }

  return result;
}

unint64_t sub_1BD8E6288()
{
  result = qword_1EBD582C0;
  if (!qword_1EBD582C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD582C8);
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68);
    sub_1BD8E6340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582C0);
  }

  return result;
}

unint64_t sub_1BD8E6340()
{
  result = qword_1EBD582D0;
  if (!qword_1EBD582D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD582D0);
  }

  return result;
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = (v2 + *(v1 + 36));
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  return swift_deallocObject();
}

uint64_t sub_1BD8E65B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NearbyPeerPaymentAmountEntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD8E6658()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58300);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - v4;
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58308);
  sub_1BD8E6968(v1, &v5[*(v6 + 44)]);
  v7 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58310) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = sub_1BE0501E4();
  v18 = sub_1BE04EC54();
  v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58318) + 36)];
  *v19 = v18;
  v19[8] = v17;
  type metadata accessor for InStoreTopUpTokenModel();
  sub_1BD8E9E98(&qword_1EBD40240, type metadata accessor for InStoreTopUpTokenModel);
  v20 = sub_1BE04E964();
  swift_getKeyPath();
  v21 = &v5[*(v2 + 36)];
  sub_1BE04E974();

  v22 = &v21[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v23 = v29;
  v31 = v29;
  v32 = v30;
  v24 = swift_allocObject();
  v25 = *(v1 + 48);
  *(v24 + 48) = *(v1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v1 + 64);
  v26 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v26;
  sub_1BD291C6C(v1, &v29);
  sub_1BD8E9A78();
  sub_1BD8E9C78();
  sub_1BE051064();

  sub_1BD576BB0(v23);
  return sub_1BD0DE53C(v5, &qword_1EBD58300);
}

void sub_1BD8E6968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v88 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58350);
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v94 = &v81 - v7;
  v8 = sub_1BE051584();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB70);
  MEMORY[0x1EEE9AC00](v82, v13);
  v15 = &v81 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42570);
  MEMORY[0x1EEE9AC00](v83, v16);
  v18 = &v81 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58358);
  MEMORY[0x1EEE9AC00](v84, v19);
  v86 = &v81 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58360);
  MEMORY[0x1EEE9AC00](v85, v21);
  v93 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v81 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v92 = &v81 - v29;
  v30 = PKAccountHeroImageName();
  v31 = PKUIImageNamed(v30);

  if (v31)
  {
    sub_1BE051544();
    (*(v9 + 104))(v12, *MEMORY[0x1E6981630], v8);
    v32 = sub_1BE0515E4();

    (*(v9 + 8))(v12, v8);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v128 = 1;
    *&v127[6] = v129;
    *&v127[22] = v130;
    *&v127[38] = v131;
    v33 = &v15[*(v82 + 36)];
    v34 = *(sub_1BE04EDE4() + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1BE04F684();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #4.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v42 = *&v127[16];
    *(v15 + 18) = *v127;
    *v15 = v32;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    *(v15 + 34) = v42;
    *(v15 + 50) = *&v127[32];
    *(v15 + 8) = *&v127[46];
    sub_1BE0513F4();
    v43 = sub_1BE051454();

    sub_1BD0DE204(v15, v18, &qword_1EBD3EB70);
    v44 = &v18[*(v83 + 36)];
    *v44 = v43;
    *(v44 + 8) = xmmword_1BE0CACB0;
    *(v44 + 3) = 0x3FF0000000000000;
    sub_1BE0513F4();
    v45 = sub_1BE051454();

    v46 = v86;
    sub_1BD0DE204(v18, v86, &qword_1EBD42570);
    v47 = v46 + *(v84 + 36);
    *v47 = v45;
    *(v47 + 8) = xmmword_1BE0CC060;
    *(v47 + 24) = 0x4000000000000000;
    LOBYTE(v35) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_1BD0DE204(v46, v26, &qword_1EBD58358);
    v56 = &v26[*(v85 + 36)];
    *v56 = v35;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    v57 = v92;
    sub_1BD0DE204(v26, v92, &qword_1EBD58360);
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58370);
    sub_1BD0DE4F4(&qword_1EBD58378, &qword_1EBD58368);
    sub_1BD8E9CCC();
    v58 = v94;
    sub_1BE051C74();
    v86 = sub_1BE04F7B4();
    v96 = 0;
    sub_1BD8E81F8(v87, &v117);
    v109 = *&v118[176];
    v110 = *&v118[192];
    v111[0] = *&v118[208];
    *(v111 + 9) = *&v118[217];
    v105 = *&v118[112];
    v106 = *&v118[128];
    v107 = *&v118[144];
    v108 = *&v118[160];
    v101 = *&v118[48];
    v102 = *&v118[64];
    v103 = *&v118[80];
    v104 = *&v118[96];
    v97 = v117;
    v98 = *v118;
    v99 = *&v118[16];
    v100 = *&v118[32];
    v112[12] = *&v118[176];
    v112[13] = *&v118[192];
    *v113 = *&v118[208];
    *&v113[9] = *&v118[217];
    v112[8] = *&v118[112];
    v112[9] = *&v118[128];
    v112[10] = *&v118[144];
    v112[11] = *&v118[160];
    v112[4] = *&v118[48];
    v112[5] = *&v118[64];
    v112[6] = *&v118[80];
    v112[7] = *&v118[96];
    v112[0] = v117;
    v112[1] = *v118;
    v112[2] = *&v118[16];
    v112[3] = *&v118[32];
    sub_1BD0DE19C(&v97, v116, &qword_1EBD58388);
    sub_1BD0DE53C(v112, &qword_1EBD58388);
    *(&v95[12] + 7) = v109;
    *(&v95[13] + 7) = v110;
    *(&v95[14] + 7) = v111[0];
    v95[15] = *(v111 + 9);
    *(&v95[8] + 7) = v105;
    *(&v95[9] + 7) = v106;
    *(&v95[10] + 7) = v107;
    *(&v95[11] + 7) = v108;
    *(&v95[4] + 7) = v101;
    *(&v95[5] + 7) = v102;
    *(&v95[6] + 7) = v103;
    *(&v95[7] + 7) = v104;
    *(v95 + 7) = v97;
    *(&v95[1] + 7) = v98;
    *(&v95[2] + 7) = v99;
    *(&v95[3] + 7) = v100;
    LOBYTE(v45) = v96;
    LODWORD(v87) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v57;
    v68 = v93;
    sub_1BD0DE19C(v67, v93, &qword_1EBD58360);
    v69 = v89;
    v70 = v90;
    v71 = *(v90 + 16);
    v72 = v58;
    v73 = v91;
    v71(v89, v72, v91);
    v74 = v68;
    v75 = v88;
    sub_1BD0DE19C(v74, v88, &qword_1EBD58360);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58390);
    v71((v75 + v76[12]), v69, v73);
    v77 = v76[16];
    *(&v116[32] + 1) = v95[15];
    *(&v116[26] + 1) = v95[12];
    *(&v116[28] + 1) = v95[13];
    *(&v116[30] + 1) = v95[14];
    *(&v116[18] + 1) = v95[8];
    *(&v116[20] + 1) = v95[9];
    *(&v116[22] + 1) = v95[10];
    *(&v116[24] + 1) = v95[11];
    *(&v116[10] + 1) = v95[4];
    *(&v116[12] + 1) = v95[5];
    *(&v116[14] + 1) = v95[6];
    *(&v116[16] + 1) = v95[7];
    *(&v116[6] + 1) = v95[2];
    *(&v116[8] + 1) = v95[3];
    *(&v116[2] + 1) = v95[0];
    v78 = v86;
    v116[0] = v86;
    v116[1] = 0x4030000000000000;
    LOBYTE(v116[2]) = v45;
    *(&v116[4] + 1) = v95[1];
    *(&v116[34] + 1) = *v115;
    HIDWORD(v116[34]) = *&v115[3];
    LOBYTE(v33) = v87;
    LOBYTE(v116[35]) = v87;
    *(&v116[35] + 1) = *v114;
    HIDWORD(v116[35]) = *&v114[3];
    v116[36] = v60;
    v116[37] = v62;
    v116[38] = v64;
    v116[39] = v66;
    LOBYTE(v116[40]) = 0;
    memcpy((v75 + v77), v116, 0x141uLL);
    v79 = v75 + v76[20];
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_1BD0DE19C(v116, &v117, &qword_1EBD58398);
    v80 = *(v70 + 8);
    v80(v94, v73);
    sub_1BD0DE53C(v92, &qword_1EBD58360);
    *&v118[241] = v95[15];
    *&v118[193] = v95[12];
    *&v118[209] = v95[13];
    *&v118[225] = v95[14];
    *&v118[129] = v95[8];
    *&v118[145] = v95[9];
    *&v118[161] = v95[10];
    *&v118[177] = v95[11];
    *&v118[65] = v95[4];
    *&v118[81] = v95[5];
    *&v118[97] = v95[6];
    *&v118[113] = v95[7];
    *&v118[1] = v95[0];
    *&v118[17] = v95[1];
    *&v118[33] = v95[2];
    *&v117 = v78;
    *(&v117 + 1) = 0x4030000000000000;
    v118[0] = v45;
    *&v118[49] = v95[3];
    *v119 = *v115;
    *&v119[3] = *&v115[3];
    v120 = v33;
    *v121 = *v114;
    *&v121[3] = *&v114[3];
    v122 = v60;
    v123 = v62;
    v124 = v64;
    v125 = v66;
    v126 = 0;
    sub_1BD0DE53C(&v117, &qword_1EBD58398);
    v80(v69, v73);
    sub_1BD0DE53C(v93, &qword_1EBD58360);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BD8E74C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v23 = 1;
  sub_1BD8E7648(&v11);
  v32 = v19;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v35[8] = v19;
  v35[9] = v20;
  v35[4] = v15;
  v35[5] = v16;
  v35[6] = v17;
  v35[7] = v18;
  v35[0] = v11;
  v35[1] = v12;
  v34 = v21;
  v36 = v21;
  v35[2] = v13;
  v35[3] = v14;
  sub_1BD0DE19C(&v24, &v10, &qword_1EBD583B0);
  sub_1BD0DE53C(v35, &qword_1EBD583B0);
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[151] = v33;
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  v3 = *&v22[96];
  *(a1 + 129) = *&v22[112];
  v4 = *&v22[144];
  *(a1 + 145) = *&v22[128];
  *(a1 + 161) = v4;
  v5 = *&v22[32];
  *(a1 + 65) = *&v22[48];
  v6 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = v3;
  result = *v22;
  v8 = *&v22[16];
  *(a1 + 17) = *v22;
  *(a1 + 33) = v8;
  v22[167] = v34;
  v9 = v23;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 177) = *&v22[160];
  *(a1 + 49) = v5;
  return result;
}

uint64_t sub_1BD8E7648@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7C4();
  LOBYTE(v27[0]) = 1;
  sub_1BD8E78B8(&v32);
  v22 = v33;
  v23 = v34;
  v24[0] = v35[0];
  *(v24 + 9) = *(v35 + 9);
  v21 = v32;
  v25[1] = v33;
  v25[2] = v34;
  v26[0] = v35[0];
  *(v26 + 9) = *(v35 + 9);
  v25[0] = v32;
  sub_1BD0DE19C(&v21, v41, &qword_1EBD40828);
  sub_1BD0DE53C(v25, &qword_1EBD40828);
  *&v20[23] = v22;
  *&v20[39] = v23;
  *&v20[55] = v24[0];
  *&v20[64] = *(v24 + 9);
  *&v20[7] = v21;
  v3 = v27[0];
  v4 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v27[0] = v2;
  v27[1] = 0;
  v28[0] = v3;
  v5 = *v20;
  *&v28[1] = *v20;
  v6 = *&v20[16];
  *&v28[17] = *&v20[16];
  v7 = *&v20[32];
  *&v28[33] = *&v20[32];
  v8 = *&v20[48];
  *&v28[49] = *&v20[48];
  v9 = *&v20[64];
  *&v28[65] = *&v20[64];
  v28[88] = v4;
  *&v29 = v10;
  *(&v29 + 1) = v11;
  *&v30 = v12;
  *(&v30 + 1) = v13;
  v33 = *v28;
  v32 = v2;
  v39 = v30;
  v37 = *&v28[80];
  v38 = v29;
  v35[1] = *&v28[48];
  v36 = *&v28[64];
  v34 = *&v28[16];
  v35[0] = *&v28[32];
  v14 = v29;
  *(a1 + 96) = *&v28[80];
  *(a1 + 112) = v14;
  *(a1 + 128) = v39;
  v15 = v35[0];
  *(a1 + 32) = v34;
  *(a1 + 48) = v15;
  v16 = v36;
  *(a1 + 64) = v35[1];
  *(a1 + 80) = v16;
  v17 = v33;
  *a1 = v32;
  *(a1 + 16) = v17;
  v44 = v6;
  v31 = 0;
  LOBYTE(v40) = 0;
  v19[152] = 1;
  *(a1 + 144) = v40;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  v41[0] = v2;
  v41[1] = 0;
  v42 = v3;
  v45 = v7;
  v46 = v8;
  v47 = v9;
  v43 = v5;
  v48 = v4;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v53 = 0;
  sub_1BD0DE19C(v27, v19, &qword_1EBD58370);
  return sub_1BD0DE53C(v41, &qword_1EBD58370);
}

uint64_t sub_1BD8E78B8@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *MEMORY[0x1E69B8060];
  v7 = *(v2 + 104);
  v61 = v2 + 104;
  v62 = v7;
  v56 = v1;
  v7(v6, v4);
  v8 = sub_1BE04B714();
  v10 = v9;
  v11 = *(v2 + 8);
  v58 = v2 + 8;
  v59 = v11;
  v11(v6, v1);
  v70 = v8;
  v71 = v10;
  v57 = sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v17 = PKOBKHeaderTitleFont();
  sub_1BE050484();
  v18 = sub_1BE0505F4();
  v20 = v19;
  LOBYTE(v2) = v21;

  sub_1BD0DDF10(v12, v14, v16 & 1);

  v22 = PKOBKHeaderTitleTextColor();
  v70 = sub_1BE0511C4();
  v23 = sub_1BE050574();
  v65 = v24;
  v66 = v23;
  v64 = v25;
  v63 = v26;
  sub_1BD0DDF10(v18, v20, v2 & 1);

  v27 = v56;
  v62(v6, v60, v56);
  v28 = sub_1BE04B714();
  v30 = v29;
  v59(v6, v27);
  v70 = v28;
  v71 = v30;
  v31 = sub_1BE0506C4();
  v33 = v32;
  v35 = v34;
  v36 = PKOBKHeaderSubtitleFont();
  sub_1BE050484();
  v37 = sub_1BE0505F4();
  v39 = v38;
  LOBYTE(v14) = v40;

  sub_1BD0DDF10(v31, v33, v35 & 1);

  v41 = PKOBKHeaderSubtitleTextColor();
  v70 = sub_1BE0511C4();
  v42 = sub_1BE050574();
  v44 = v43;
  LOBYTE(v33) = v45;
  v47 = v46;
  sub_1BD0DDF10(v37, v39, v14 & 1);

  KeyPath = swift_getKeyPath();
  v49 = v63 & 1;
  LOBYTE(v70) = v63 & 1;
  v69 = v63 & 1;
  LOBYTE(v33) = v33 & 1;
  v68 = v33;
  v51 = v66;
  v50 = v67;
  v53 = v64;
  v52 = v65;
  *v67 = v66;
  v50[1] = v53;
  *(v50 + 16) = v49;
  v50[3] = v52;
  v50[4] = v42;
  v50[5] = v44;
  *(v50 + 48) = v33;
  v50[7] = v47;
  v50[8] = KeyPath;
  *(v50 + 72) = 0;
  sub_1BD0D7F18(v51, v53, v49);
  sub_1BE048C84();
  sub_1BD0D7F18(v42, v44, v33);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v42, v44, v33);

  sub_1BD0DDF10(v51, v53, v70);
}

uint64_t sub_1BD8E7D08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7B4();
  v18 = 0;
  sub_1BD8E7E20(&v13);
  v21 = v15;
  v22[0] = v16[0];
  *(v22 + 9) = *(v16 + 9);
  v19 = v13;
  v20 = v14;
  v23[2] = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v23[0] = v13;
  v23[1] = v14;
  sub_1BD0DE19C(&v19, &v12, &qword_1EBD40828);
  sub_1BD0DE53C(v23, &qword_1EBD40828);
  *&v17[23] = v20;
  *&v17[39] = v21;
  *&v17[55] = v22[0];
  *&v17[64] = *(v22 + 9);
  *&v17[7] = v19;
  v3 = v18;
  v4 = sub_1BE0501E4();
  result = sub_1BE04E1F4();
  v6 = *v17;
  *(a1 + 33) = *&v17[16];
  v7 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = *&v17[64];
  *a1 = v2;
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = v3;
  *(a1 + 17) = v6;
  *(a1 + 104) = v4;
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1BD8E7E20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE050474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *MEMORY[0x1E69B8060];
  v49 = *(v8 + 104);
  v45 = v7;
  v49(v12, v10);
  v13 = sub_1BE04B714();
  v15 = v14;
  v16 = *(v8 + 8);
  v47 = v8 + 8;
  v48 = v16;
  v16(v12, v7);
  v53 = v13;
  v54 = v15;
  v46 = sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  LOBYTE(v15) = v20;
  v42 = v21;
  (*(v3 + 104))(v6, *MEMORY[0x1E6980EE8], v2);
  sub_1BE0503A4();
  sub_1BE050284();
  (*(v3 + 8))(v6, v2);
  v22 = sub_1BE0505F4();
  v44 = v23;
  v43 = v24;
  v26 = v25;

  sub_1BD0DDF10(v17, v19, v15 & 1);

  v27 = v45;
  (v49)(v12, v50, v45);
  v28 = sub_1BE04B714();
  v30 = v29;
  v48(v12, v27);
  v53 = v28;
  v54 = v30;
  v31 = sub_1BE0506C4();
  v33 = v32;
  LOBYTE(v30) = v34;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = v43 & 1;
  LOBYTE(v53) = v43 & 1;
  v52 = v43 & 1;
  LOBYTE(v30) = v30 & 1;
  v51 = v30;
  v39 = v44;
  *a1 = v22;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38;
  *(a1 + 24) = v26;
  *(a1 + 32) = v31;
  *(a1 + 40) = v33;
  *(a1 + 48) = v30;
  *(a1 + 56) = v36;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 1;
  v40 = v39;
  sub_1BD0D7F18(v22, v39, v38);
  sub_1BE048C84();
  sub_1BD0D7F18(v31, v33, v30);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v31, v33, v30);

  sub_1BD0DDF10(v22, v40, v53);
}

uint64_t sub_1BD8E81F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E69B8060];
  v50 = *(v5 + 104);
  v50(v9, v10, v4, v7);
  v11 = sub_1BE04B714();
  v48 = v12;
  v49 = v11;
  v51 = *(v5 + 8);
  v51(v9, v4);
  v63 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v46 = v67;
  v47 = v68[0];
  v13 = swift_allocObject();
  v45 = v13;
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  (v50)(v9, v10, v4);
  sub_1BD291C6C(a1, &v67);
  v16 = sub_1BE04B714();
  v43 = v17;
  v44 = v16;
  v51(v9, v4);
  v63 = *(a1 + 40);
  sub_1BE0516C4();
  v50 = *(&v67 + 1);
  v51 = v67;
  v42 = v68[0];
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_1BD291C6C(a1, &v67);
  v21 = sub_1BE04F504();
  v52[0] = 1;
  sub_1BD8E881C(&v67);
  v56 = *&v68[16];
  v57 = *&v68[32];
  v58 = v68[48];
  v54 = v67;
  v55 = *v68;
  v59[2] = *&v68[16];
  v59[3] = *&v68[32];
  v60 = v68[48];
  v59[0] = v67;
  v59[1] = *v68;
  sub_1BD0DE19C(&v54, &v63, &qword_1EBD583A0);
  sub_1BD0DE53C(v59, &qword_1EBD583A0);
  *(&v53[1] + 7) = v55;
  *(&v53[2] + 7) = v56;
  *(&v53[3] + 7) = v57;
  BYTE7(v53[4]) = v58;
  *(v53 + 7) = v54;
  v22 = v52[0];
  LOBYTE(a1) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v63 = v21;
  LOBYTE(v64[0]) = v22;
  *(&v64[1] + 1) = v53[1];
  *(&v64[2] + 1) = v53[2];
  *(&v64[3] + 1) = v53[3];
  *(&v64[4] + 1) = *&v53[4];
  *(v64 + 1) = v53[0];
  HIDWORD(v64[4]) = *&v62[3];
  *(&v64[4] + 9) = *v62;
  LOBYTE(v65) = a1;
  v23 = a1;
  DWORD1(v65) = *&v61[3];
  *(&v65 + 1) = *v61;
  *(&v65 + 1) = v24;
  *&v66[0] = v25;
  *(&v66[0] + 1) = v26;
  *&v66[1] = v27;
  BYTE8(v66[1]) = 0;
  v28 = v48;
  *a2 = v49;
  *(a2 + 8) = v28;
  v29 = *(&v46 + 1);
  *(a2 + 16) = v46;
  *(a2 + 24) = v29;
  *(a2 + 32) = v47;
  v30 = v44;
  v31 = v45;
  *(a2 + 40) = sub_1BD8E9D84;
  *(a2 + 48) = v31;
  v32 = v43;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32;
  v33 = v50;
  *(a2 + 72) = v51;
  *(a2 + 80) = v33;
  *(a2 + 88) = v42;
  *(a2 + 96) = sub_1BD8E9D8C;
  *(a2 + 104) = v18;
  v34 = v63;
  v35 = v64[0];
  v36 = v64[2];
  *(a2 + 144) = v64[1];
  *(a2 + 160) = v36;
  *(a2 + 112) = v34;
  *(a2 + 128) = v35;
  v37 = v64[3];
  v38 = v64[4];
  *(a2 + 233) = *(v66 + 9);
  v39 = v66[0];
  *(a2 + 208) = v65;
  *(a2 + 224) = v39;
  *(a2 + 176) = v37;
  *(a2 + 192) = v38;
  v67 = v21;
  v68[0] = v22;
  *&v68[17] = v53[1];
  *&v68[33] = v53[2];
  v69 = v53[3];
  v70 = *&v53[4];
  *&v68[1] = v53[0];
  *v71 = *v62;
  *&v71[3] = *&v62[3];
  v72 = v23;
  *&v73[3] = *&v61[3];
  *v73 = *v61;
  v74 = v24;
  v75 = v25;
  v76 = v26;
  v77 = v27;
  v78 = 0;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BD0DE19C(&v63, v52, &qword_1EBD583A8);
  sub_1BD0DE53C(&v67, &qword_1EBD583A8);
}

uint64_t sub_1BD8E8730(uint64_t a1)
{
  v7[0] = *(a1 + 24);
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516B4();
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = swift_allocObject();
    v5 = *(a1 + 48);
    *(v4 + 48) = *(a1 + 32);
    *(v4 + 64) = v5;
    *(v4 + 80) = *(a1 + 64);
    v6 = *(a1 + 16);
    *(v4 + 16) = *a1;
    *(v4 + 32) = v6;
    sub_1BD0D44B8(v3);
    sub_1BD291C6C(a1, v7);
    v3(sub_1BD8E9E10, v4);

    return sub_1BD0D4744(v3);
  }

  return result;
}

uint64_t sub_1BD8E881C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - v3;
  v44 = sub_1BE050474();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x1E69B8060], v9, v12);
  v15 = sub_1BE04B714();
  v17 = v16;
  (*(v10 + 8))(v14, v9);
  *&v54 = v15;
  *(&v54 + 1) = v17;
  sub_1BD0DDEBC();
  v18 = sub_1BE0506C4();
  v20 = v19;
  LOBYTE(v14) = v21;
  v22 = v44;
  (*(v5 + 104))(v8, *MEMORY[0x1E6980F30], v44);
  v23 = sub_1BE050354();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_1BE0503C4();
  sub_1BD0DE53C(v4, &qword_1EBD49130);
  (*(v5 + 8))(v8, v22);
  v24 = sub_1BE0505F4();
  v26 = v25;
  LOBYTE(v5) = v27;

  sub_1BD0DDF10(v18, v20, v14 & 1);

  v28 = [objc_opt_self() secondaryLabelColor];
  sub_1BE0511C4();
  v29 = sub_1BE050564();
  v31 = v30;
  LOBYTE(v20) = v32;
  v34 = v33;

  sub_1BD0DDF10(v24, v26, v5 & 1);

  KeyPath = swift_getKeyPath();
  *&v50 = v29;
  *(&v50 + 1) = v31;
  LOBYTE(v51) = v20 & 1;
  v36 = *v49;
  *(&v51 + 1) = *v49;
  DWORD1(v51) = *&v49[3];
  *(&v51 + 1) = v34;
  v37 = v47;
  *(&v52 + 2) = v47;
  WORD3(v52) = v48;
  LOWORD(v52) = 256;
  *(&v52 + 1) = KeyPath;
  v53 = 0;
  LOBYTE(v57) = 0;
  v55 = v51;
  v56 = v52;
  v54 = v50;
  v46[56] = 1;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v45;
  *(v45 + 64) = 1;
  v42 = v57;
  *(v41 + 16) = v39;
  *(v41 + 32) = v40;
  *v41 = v38;
  *(v41 + 48) = v42;
  *(v41 + 56) = 0;
  v58[0] = v29;
  v58[1] = v31;
  v59 = v20 & 1;
  *&v60[3] = *&v49[3];
  *v60 = v36;
  v61 = v34;
  v62 = 256;
  v64 = v48;
  v63 = v37;
  v65 = KeyPath;
  v66 = 0;
  sub_1BD0DE19C(&v50, v46, &qword_1EBD48328);
  return sub_1BD0DE53C(v58, &qword_1EBD48328);
}

void sub_1BD8E8CA8(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    sub_1BD711364(0, 1, *(a3 + 8));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }
}

uint64_t sub_1BD8E8DA8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1BE050014();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - v10;
  v26 = *v1;
  v25 = *(v1 + 2);
  v12 = swift_allocObject();
  v13 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = v1[2];
  *(v12 + 64) = *(v1 + 6);
  v23 = v1;
  sub_1BD206260(&v26, v24);
  sub_1BD3434EC(&v25, v24);
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583C0);
  sub_1BD0DE4F4(&qword_1EBD583C8, &qword_1EBD583C0);
  sub_1BE051704();
  sub_1BE050004();
  sub_1BD0DE4F4(&qword_1EBD583D0, &qword_1EBD583B8);
  sub_1BD8E9E98(&qword_1EBD366F0, MEMORY[0x1E697CB70]);
  v14 = v22;
  sub_1BE050894();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  v16 = sub_1BE0511C4();
  KeyPath = swift_getKeyPath();
  v24[0] = v16;
  v18 = sub_1BE04E5F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583D8);
  v20 = (v14 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  return result;
}

uint64_t sub_1BD8E911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583E0);
  return sub_1BD8E9174(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD8E9174@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v97 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583E8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v101 = &v97 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583F0);
  MEMORY[0x1EEE9AC00](v102, v10);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD583F8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v97 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58400);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v116 = &v97 - v23;
  v24 = *(a1 + 8);
  *&v126 = *a1;
  *(&v126 + 1) = v24;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v25 = sub_1BE0506C4();
  v113 = v26;
  v114 = v25;
  v28 = v27;
  v115 = v29;
  v112 = sub_1BE050234();
  sub_1BE04E1F4();
  v108 = v31;
  v109 = v30;
  v106 = v33;
  v107 = v32;
  v110 = v28 & 1;
  LOBYTE(v117) = v28 & 1;
  v148 = 0;
  v111 = sub_1BE050204();
  sub_1BE04E1F4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v126) = 0;
  v42 = objc_opt_self();
  v43 = [v42 labelColor];
  *(&v104 + 1) = sub_1BE0511C4();
  *&v104 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v126 = *(a1 + 16);
  LOBYTE(v127) = *(a1 + 32);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v117, v44);
  if (v117 == 1)
  {
    sub_1BE04E4F4();
    v45 = sub_1BE050224();
    sub_1BE04E1F4();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58) + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    v55 = [v42 tertiaryLabelColor];
    v56 = sub_1BE0511C4();
    v57 = swift_getKeyPath();
    *&v126 = v56;
    v58 = sub_1BE04E5F4();
    v59 = &v16[*(v13 + 36)];
    *v59 = v57;
    v59[1] = v58;
    sub_1BD0DE19C(v16, v12, &qword_1EBD583F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8E9EE0();
    sub_1BD8EA050();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v16, &qword_1EBD583F8);
  }

  else
  {
    v60 = sub_1BE051574();
    v61 = sub_1BE050354();
    (*(*(v61 - 8) + 56))(v6, 1, 1, v61);
    v62 = sub_1BE0503B4();
    v99 = v42;
    v63 = v62;
    sub_1BD0DE53C(v6, &qword_1EBD49130);
    v64 = swift_getKeyPath();
    *&v126 = v60;
    *(&v126 + 1) = v64;
    v127 = v63;
    sub_1BE0503A4();
    v100 = v13;
    v98 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180);
    sub_1BD0F14E8();
    v65 = v101;
    sub_1BE050854();

    v66 = sub_1BE050224();
    sub_1BE04E1F4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58408) + 36);
    *v75 = v66;
    *(v75 + 8) = v68;
    *(v75 + 16) = v70;
    *(v75 + 24) = v72;
    *(v75 + 32) = v74;
    *(v75 + 40) = 0;
    v76 = [v99 tertiaryLabelColor];
    v77 = sub_1BE0511C4();
    v78 = swift_getKeyPath();
    v79 = (v65 + *(v98 + 36));
    *v79 = v78;
    v79[1] = v77;
    sub_1BD0DE19C(v65, v12, &qword_1EBD583E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD8E9EE0();
    sub_1BD8EA050();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v65, &qword_1EBD583E8);
  }

  v80 = v116;
  sub_1BD0DE19C(v116, v20, &qword_1EBD58400);
  *&v117 = v114;
  *(&v117 + 1) = v113;
  LOBYTE(v118) = v110;
  *(&v118 + 1) = v153[0];
  DWORD1(v118) = *(v153 + 3);
  *(&v118 + 1) = v115;
  LOBYTE(v119) = v112;
  *(&v119 + 1) = *v152;
  DWORD1(v119) = *&v152[3];
  v82 = v108;
  v81 = v109;
  *(&v119 + 1) = v109;
  *&v120 = v108;
  v84 = v106;
  v83 = v107;
  *(&v120 + 1) = v107;
  *&v121 = v106;
  BYTE8(v121) = 0;
  HIDWORD(v121) = *&v151[3];
  *(&v121 + 9) = *v151;
  LOBYTE(v122) = v111;
  DWORD1(v122) = *&v150[3];
  *(&v122 + 1) = *v150;
  *(&v122 + 1) = v35;
  *&v123 = v37;
  *(&v123 + 1) = v39;
  *&v124 = v41;
  BYTE8(v124) = 0;
  HIDWORD(v124) = *&v149[3];
  *(&v124 + 9) = *v149;
  v85 = v104;
  v125[0] = v104;
  v86 = KeyPath;
  *&v125[1] = KeyPath;
  BYTE8(v125[1]) = 0;
  v87 = v118;
  v88 = v105;
  *v105 = v117;
  v88[1] = v87;
  v89 = v119;
  v90 = v120;
  v91 = v122;
  v88[4] = v121;
  v88[5] = v91;
  v88[2] = v89;
  v88[3] = v90;
  v92 = v123;
  v93 = v124;
  v94 = v125[0];
  *(v88 + 137) = *(v125 + 9);
  v88[7] = v93;
  v88[8] = v94;
  v88[6] = v92;
  *(v88 + 20) = 0;
  *(v88 + 168) = 1;
  v95 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58430) + 64);
  sub_1BD0DE19C(v20, v95, &qword_1EBD58400);
  sub_1BD0DE19C(&v117, &v126, &qword_1EBD58438);
  sub_1BD0DE53C(v80, &qword_1EBD58400);
  sub_1BD0DE53C(v20, &qword_1EBD58400);
  *&v126 = v114;
  *(&v126 + 1) = v113;
  LOBYTE(v127) = v110;
  *(&v127 + 1) = v153[0];
  HIDWORD(v127) = *(v153 + 3);
  v128 = v115;
  v129 = v112;
  *v130 = *v152;
  *&v130[3] = *&v152[3];
  v131 = v81;
  v132 = v82;
  v133 = v83;
  v134 = v84;
  v135 = 0;
  *&v136[3] = *&v151[3];
  *v136 = *v151;
  v137 = v111;
  *&v138[3] = *&v150[3];
  *v138 = *v150;
  v139 = v35;
  v140 = v37;
  v141 = v39;
  v142 = v41;
  v143 = 0;
  *v144 = *v149;
  *&v144[3] = *&v149[3];
  v145 = v85;
  v146 = v86;
  v147 = 0;
  return sub_1BD0DE53C(&v126, &qword_1EBD58438);
}