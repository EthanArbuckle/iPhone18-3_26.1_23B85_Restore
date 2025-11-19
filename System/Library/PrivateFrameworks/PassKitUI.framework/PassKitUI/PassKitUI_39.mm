unint64_t sub_1BD45857C()
{
  result = qword_1EBD46750;
  if (!qword_1EBD46750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46758);
    sub_1BD0DE4F4(&qword_1EBD46760, &qword_1EBD46758);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46750);
  }

  return result;
}

unint64_t sub_1BD45869C()
{
  result = qword_1EBD46780;
  if (!qword_1EBD46780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46778);
    sub_1BD0DE4F4(&qword_1EBD46788, &qword_1EBD46790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46780);
  }

  return result;
}

uint64_t sub_1BD458754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1BD4587BC@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1BD455010(a1, a2, v8, a3);
}

uint64_t sub_1BD458844(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46830);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1BD4588AC()
{
  result = qword_1EBD46808;
  if (!qword_1EBD46808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD467F8);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BD4579A8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46808);
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{
  v1 = (type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(type metadata accessor for SEStorageUsageGroup(0) + 20);
  v4 = sub_1BE04C164();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_1BE051AD4();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD458BF8()
{
  v1 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SEStorageUsageGroup.PassEntry(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD4566B4((v0 + v2), v5);
}

uint64_t sub_1BD458CC4()
{
  v1 = *(type metadata accessor for SEStorageAppletUsageSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD455FC4((v0 + v2), v3);
}

uint64_t get_enum_tag_for_layout_string_So19PKSecureElementPassCSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD458D7C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (v9 && (v10 = v9, v11 = [objc_opt_self() sharedService], v12 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69B8D48]), sel_initWithWebService_paymentOffersController_, v11, a3), v11, v12))
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69B90E0]) initWithEnvironment:8 provisioningController:v12 groupsController:0];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = v10;
    sub_1BE04BC44();
    v15 = a2;
    v16 = a3;
    sub_1BD0D44B8(a4);
    v40 = v10;
    v41 = v13;
    v17 = MEMORY[0x1BFB389E0]();
    v18 = type metadata accessor for PaymentSetupProductFlowSection();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v20 = &v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
    *v20 = 0xD000000000000012;
    *(v20 + 1) = 0x80000001BE118AA0;
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v17;
    *&v19[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v15;
    v43.receiver = v19;
    v43.super_class = v18;
    v21 = v15;
    sub_1BE048964();
    v22 = objc_msgSendSuper2(&v43, sel_init);
    v23 = sub_1BD34FA40(v17, 0, 0);
    sub_1BE04BB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BE0B6CA0;
    v25 = type metadata accessor for ProvisioningHeroFlowItem();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v27 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v28 = &v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v28[13] = 0;
    *(v28 + 7) = -5120;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v17;
    v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v29 = *&v26[v27];
    *&v26[v27] = 0;
    swift_retain_n();

    v26[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v42.receiver = v26;
    v42.super_class = v25;
    v30 = objc_msgSendSuper2(&v42, sel_init);

    *(v24 + 32) = v30;
    *(v24 + 40) = &off_1F3BA7D00;
    *(v24 + 48) = v22;
    *(v24 + 56) = &off_1F3BAAA80;
    v31 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v32 = v22;
    v33 = sub_1BD3986F8(v24);
    *(*&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v34 = &v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v35 = *&v33[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    *v34 = PKEdgeInsetsMake;
    *(v34 + 1) = 0;
    sub_1BD0D4744(v35);
    v36 = swift_allocObject();
    v36[2] = v17;
    v36[3] = sub_1BD45947C;
    v36[4] = v14;
    v36[5] = v23;
    v36[6] = v33;
    sub_1BE048964();
    v37 = v23;
    sub_1BE048964();
    v38 = v33;
    sub_1BD398318(sub_1BD359314, v36);

    return v40;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

id sub_1BD4592AC(uint64_t a1, int a2, int a3, void (*a4)(uint64_t), int a5, id a6)
{
  if (a4)
  {
    sub_1BE048964();
    a4(a1);
    sub_1BD0D4744(a4);
  }

  return [a6 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1BD459334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45948C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD459398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45948C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4593FC()
{
  sub_1BD45948C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD459428()
{
  result = qword_1EBD46868;
  if (!qword_1EBD46868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46868);
  }

  return result;
}

unint64_t sub_1BD45948C()
{
  result = qword_1EBD46870;
  if (!qword_1EBD46870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46870);
  }

  return result;
}

uint64_t sub_1BD4594E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  v36 = 0;
  sub_1BD459768(a1, &v31);
  v39 = v33;
  v40[0] = v34[0];
  *(v40 + 9) = *(v34 + 9);
  v37 = v31;
  v38 = v32;
  v41[2] = v33;
  v42[0] = v34[0];
  *(v42 + 9) = *(v34 + 9);
  v41[0] = v31;
  v41[1] = v32;
  sub_1BD459D64(&v37, v30);
  sub_1BD459DD4(v41);
  *&v35[23] = v38;
  *&v35[39] = v39;
  *&v35[55] = v40[0];
  *&v35[64] = *(v40 + 9);
  *&v35[7] = v37;
  v5 = v36;
  LOBYTE(a1) = sub_1BE050204();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  v30[0] = 0;
  sub_1BE051694();
  v16 = *v35;
  *(a2 + 97) = *&v35[16];
  v17 = *&v35[48];
  *(a2 + 113) = *&v35[32];
  *(a2 + 129) = v17;
  *(a2 + 145) = *&v35[64];
  v18 = *(&v31 + 1);
  *(a2 + 48) = v31;
  *(a2 + 56) = v18;
  *(a2 + 64) = v4;
  *(a2 + 72) = 0x4000000000000000;
  *(a2 + 80) = v5;
  *(a2 + 81) = v16;
  *(a2 + 168) = a1;
  *(a2 + 176) = v7;
  *(a2 + 184) = v9;
  *(a2 + 192) = v11;
  *(a2 + 200) = v13;
  *(a2 + 208) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46880);
  v20 = *(v19 + 60);
  LOBYTE(a1) = sub_1BE051C54();
  v21 = sub_1BE04C894();
  v22 = MEMORY[0x1E69BCA08];
  if ((a1 & 1) == 0)
  {
    v22 = MEMORY[0x1E69BCA00];
  }

  (*(*(v21 - 8) + 104))(a2 + v20, *v22, v21);
  v23 = (a2 + *(v19 + 64));
  sub_1BE04C7E4();
  v25 = v24;
  v26 = *(sub_1BE04EDE4() + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1BE04F684();
  result = (*(*(v28 - 8) + 104))(&v23[v26], v27, v28);
  *v23 = v25;
  *(v23 + 1) = v25;
  return result;
}

id sub_1BD459768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = [a1 localizedTitle];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();

    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    sub_1BE0502B4();
    v10 = sub_1BE0505F4();
    v12 = v11;
    v14 = v13;

    sub_1BD0DDF10(v5, v7, v9 & 1);

    sub_1BE051234();
    v15 = v2;
    v16 = sub_1BE050564();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_1BD0DDF10(v10, v12, v14 & 1);

    v52 = v18;
    v53 = v16;
    v23 = v16;
    v2 = v15;
    v49 = v20 & 1;
    sub_1BD0D7F18(v23, v18, v20 & 1);
    v51 = v22;
    sub_1BE048C84();
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v49 = 0;
    v51 = 0;
  }

  v24 = [v2 label];
  sub_1BE052434();

  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  v29 = v28;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    sub_1BE050484();
    v31 = sub_1BE0505F4();
    v33 = v32;
    v35 = v34;

    sub_1BD0DDF10(v25, v27, v29 & 1);

    sub_1BE0503A4();
    v36 = sub_1BE050544();
    v38 = v37;
    v40 = v39;
    sub_1BD0DDF10(v31, v33, v35 & 1);

    sub_1BE051224();
    v41 = sub_1BE050564();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_1BD0DDF10(v36, v38, v40 & 1);

    KeyPath = swift_getKeyPath();
    sub_1BD1969AC(v53, v52, v50, v51);
    sub_1BD0D7F18(v41, v43, v45 & 1);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BD1969F0(v53, v52, v50, v51);
    *a2 = v53;
    *(a2 + 8) = v52;
    *(a2 + 16) = v50;
    *(a2 + 24) = v51;
    *(a2 + 32) = v41;
    *(a2 + 40) = v43;
    *(a2 + 48) = v45 & 1;
    *(a2 + 56) = v47;
    *(a2 + 64) = KeyPath;
    *(a2 + 72) = 1;
    sub_1BD0DDF10(v41, v43, v45 & 1);

    return sub_1BD1969F0(v53, v52, v50, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD459B24@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD459BA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD459C20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!(v5 >> 62))
  {
    v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v0)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v0 = sub_1BE053704();
  if (!v0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = __OFSUB__(v0, 1);
  result = v0 - 1;
  if (v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v3 = MEMORY[0x1BFB40900](result);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v5 + 8 * result + 32);
LABEL_8:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD459D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD459DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD459E3C()
{
  result = qword_1EBD46888;
  if (!qword_1EBD46888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46888);
  }

  return result;
}

UIColor __swiftcall UIColor.interpolate(with:fraction:)(UIColor with, Swift::Double fraction)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = fmin(fraction, 1.0);
  if (fraction < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14[0] = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  [v2 getRed:v14 green:&v13 blue:&v12 alpha:&v11];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [(objc_class *)with.super.isa getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v14[0] + v5 * (v10 - v14[0]) green:v13 + v5 * (v9 - v13) blue:v12 + v5 * (v8 - v12) alpha:v11 + v5 * (v7 - v11)];
}

uint64_t sub_1BD45A0D0()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController];
  v8 = [v7 pass];
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_context];
  v40 = v2;
  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_methodGroup];
  v12 = *&v0[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_method];
  KeyPath = swift_getKeyPath();
  v39 = v6;
  v14 = sub_1BD1875E0(v0, KeyPath);

  v38 = type metadata accessor for ProvisioningVerificationURLViewController();
  v15 = objc_allocWithZone(v38);
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_delegate + 8] = 0;
  v16 = swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_provisioningContext] = v10;
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_pass] = v9;
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_methodGroup] = v11;
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_method] = v12;
  v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_showChangeMethodButton] = (v14 & 1) == 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_verificationController] = v7;
  *(v16 + 8) = &off_1F3BA7808;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v37 = v1;
  sub_1BE048964();
  v17 = v11;
  v18 = v12;
  v19 = v7;
  v20 = v9;
  v21 = sub_1BE04BB74();

  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_reporter] = v21;
  v22 = type metadata accessor for ProvisioningVerificationURLPerformController();
  v23 = objc_allocWithZone(v22);
  v24 = OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession;
  v25 = objc_allocWithZone(PKWebAuthenticationSession);
  v26 = v20;
  v27 = v25;
  v28 = v26;
  *&v23[v24] = [v27 init];
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window] = 0;
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_provisioningContext] = v10;
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass] = v28;
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup] = v17;
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method] = v18;
  *&v23[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController] = v19;
  v42.receiver = v23;
  v42.super_class = v22;
  sub_1BE048964();
  v29 = v17;
  v30 = v18;
  v31 = v19;
  *&v15[OBJC_IVAR____TtC9PassKitUI41ProvisioningVerificationURLViewController_performController] = objc_msgSendSuper2(&v42, sel_init);
  v32 = v39;
  sub_1BE04BC34();
  v33 = sub_1BE04B9A4();
  (*(v40 + 8))(v32, v37);
  v41.receiver = v15;
  v41.super_class = v38;
  result = objc_msgSendSuper2(&v41, sel_initWithContext_, v33);
  if (result)
  {
    v35 = result;
    v36 = result;
    [v36 setExplanationViewControllerDelegate_];

    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD45A460()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD45A49C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD45A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8);
  sub_1BE0516A4();
  if (v5)
  {

    v6 = *(a1 + 24);
    sub_1BE0516A4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D0);
  sub_1BD45B0D8();
  result = sub_1BE04F9A4();
  *a2 = v6;
  *(a2 + 8) = BYTE8(v6);
  return result;
}

uint64_t sub_1BD45A5D4(uint64_t a1)
{
  v1[2] = sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = *(a1 + 24);
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v7 = swift_task_alloc();
  v1[4] = v7;
  *v7 = v1;
  v7[1] = sub_1BD16DB04;

  return sub_1BD45AC80(v3, v4, v5);
}

uint64_t sub_1BD45A698@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  *v16 = *v1;
  *&v16[16] = v3;
  v17 = v1[2];
  v4 = sub_1BE04F7B4();
  sub_1BD45A4EC(v16, &v18);
  v6 = *(&v17 + 1);
  v5 = v18;
  v7 = BYTE8(v18);
  v8 = *v16;
  v18 = *&v16[8];
  v19 = v17;
  v20 = *&v16[24];
  v9 = swift_allocObject();
  v10 = *&v16[16];
  v9[1] = *v16;
  v9[2] = v10;
  v9[3] = v17;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D8) + 36));
  sub_1BE04E7B4();
  v12 = v8;
  sub_1BD206260(&v18, v15);
  sub_1BD0DE19C(&v20, v15, &qword_1EBD468D0);
  sub_1BD0DE19C(&v19, v15, &qword_1EBD468E0);
  v13 = v6;
  result = sub_1BE0528B4();
  *v11 = &unk_1BE0D78A0;
  v11[1] = v9;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return result;
}

id sub_1BD45A7EC(int a1, id a2)
{
  v3 = [a2 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD46920);
  sub_1BE050154();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v6 action:sel_dismiss];

  [v3 setRightBarButtonItem_];

  return [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
}

uint64_t sub_1BD45A8E4()
{

  return swift_deallocClassInstance();
}

id sub_1BD45A974@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  type metadata accessor for _AccountTermsAndConditionsViewController.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = v3;

  return v5;
}

uint64_t sub_1BD45A9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45B2B4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD45AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD45B2B4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD45AA9C()
{
  sub_1BD45B2B4();
  sub_1BE0500A4();
  __break(1u);
}

void sub_1BD45AAC4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468D0);
  sub_1BE051694();
  v8 = objc_opt_self();
  v9 = a1;
  sub_1BE048C84();
  v10 = [v8 sharedService];
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(PKAccountTermsAndConditionsController);
    v13 = sub_1BE052404();

    v14 = [v12 initWithAccount:v9 webService:v11 context:8 termsIdentifier:v13];

    *a4 = v9;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = v15;
    a4[4] = v16;
    a4[5] = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD45ABEC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD45A5D4(v0 + 16);
}

uint64_t sub_1BD45AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  sub_1BE0528A4();
  v3[22] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD45AD1C, v5, v4);
}

uint64_t sub_1BD45AD1C()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD45AE38;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EA10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16F63C;
  v0[13] = &block_descriptor_96;
  v0[14] = v2;
  [v1 termsViewControllerWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD45AE38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1BD45B000;
  }

  else
  {
    v5 = sub_1BD45AF68;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD45AF68()
{
  v2 = v0[19];
  v1 = v0[20];

  v0[10] = v2;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8);
  sub_1BE0516B4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD45B000()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];

  swift_willThrow();
  v0[10] = v3;
  v0[11] = v2;
  v0[18] = 0;
  sub_1BE048964();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD468E8);
  sub_1BE0516B4();

  v5 = v0[1];

  return v5();
}

unint64_t sub_1BD45B0D8()
{
  result = qword_1EBD468F0;
  if (!qword_1EBD468F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD468D0);
    sub_1BD45B15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD468F0);
  }

  return result;
}

unint64_t sub_1BD45B15C()
{
  result = qword_1EBD468F8;
  if (!qword_1EBD468F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD468F8);
  }

  return result;
}

unint64_t sub_1BD45B1C0()
{
  result = qword_1EBD46900;
  if (!qword_1EBD46900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD468D8);
    sub_1BD45B24C();
    sub_1BD306B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46900);
  }

  return result;
}

unint64_t sub_1BD45B24C()
{
  result = qword_1EBD46908;
  if (!qword_1EBD46908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46908);
  }

  return result;
}

unint64_t sub_1BD45B2B4()
{
  result = qword_1EBD46918;
  if (!qword_1EBD46918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46918);
  }

  return result;
}

void sub_1BD45B310()
{
  sub_1BE052804();
  sub_1BE051964();
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    sub_1BE051964();
    if (v1 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD469A8, &qword_1EBD45E80);
      if (v2 <= 0x3F)
      {
        sub_1BD45C2C0(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD10315C(319, &qword_1EBD469B0, &qword_1EBD3E6C8);
          if (v4 <= 0x3F)
          {
            sub_1BE0516D4();
            if (v5 <= 0x3F)
            {
              sub_1BE0534B4();
              if (v6 <= 0x3F)
              {
                sub_1BD45C270();
                if (v7 <= 0x3F)
                {
                  sub_1BD45C2C0(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BE0516D4();
                    if (v9 <= 0x3F)
                    {
                      swift_getAssociatedTypeWitness();
                      sub_1BE0534B4();
                      swift_getAssociatedConformanceWitness();
                      swift_getWitnessTable();
                      sub_1BE04E294();
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

uint64_t sub_1BD45B5D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v52 = *(v4 - 8);
  v54 = *(v52 + 84);
  if (v54)
  {
    v5 = v54 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v53 = *(v3 - 8);
  v7 = *(v53 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(sub_1BE051AD4() - 8);
  v10 = *(v9 + 80);
  v50 = *(v9 + 64);
  v48 = v8;
  if (v5 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v6;
  }

  if (v8 > v11)
  {
    v11 = v8;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v5;
  }

  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v4;
  v15 = v10;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= v13)
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v54)
  {
    v20 = *(v52 + 64);
  }

  else
  {
    v20 = *(v52 + 64) + 1;
  }

  if (v7)
  {
    v21 = *(v53 + 64);
  }

  else
  {
    v21 = *(v53 + 64) + 1;
  }

  v22 = 8;
  if (((v15 + 16) & ~v15) + v50 > 8)
  {
    v22 = ((v15 + 16) & ~v15) + v50;
  }

  v23 = *(v52 + 80);
  v24 = *(v53 + 80);
  v25 = *(v16 + 80);
  v26 = *(v16 + 64);
  if (v18)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v23 | 7;
  v29 = v20 + 7;
  v30 = v29 + ((v23 + 16) & ~v23);
  v31 = v15 | 7;
  v32 = v21 + 7;
  v33 = v29 & 0xFFFFFFFFFFFFFFF8;
  v34 = v25 | 7;
  if (a2 <= v19)
  {
    goto LABEL_61;
  }

  v35 = v27 - ((-9 - v25 - ((v27 + 7) & 0xFFFFFFFFFFFFFFF8)) | v25) - ((((~v22 - v28 + ((((((-17 - v24 - ((((((((((v30 + ((v23 + 24) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v24) - v32) | 7) - v31 - 32) | v31)) | v28) - (v33 + v34) - 8) | v34) - 2;
  v36 = 8 * v35;
  if (v35 > 3)
  {
    goto LABEL_41;
  }

  v38 = ((a2 - v19 + ~(-1 << v36)) >> v36) + 1;
  if (HIWORD(v38))
  {
    v37 = *(a1 + v35);
    if (v37)
    {
      goto LABEL_48;
    }

LABEL_61:
    if (v19 == 0x7FFFFFFF)
    {
      v42 = *(a1 + 1);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      return (v42 + 1);
    }

    v44 = (a1 + v28 + 24) & ~v28;
    if (v19 == v6)
    {
      v45 = (*(v52 + 48))((v23 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v23, v54, v14, v30);
      goto LABEL_67;
    }

    v46 = (v24 + ((((((((((v30 + v44) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24;
    if (v48 != v19)
    {
      v47 = (v22 + v28 + ((v15 + ((v32 + v46) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v31) + 1) & ~v28;
      if (v12 == v19)
      {
        v45 = (*(v52 + 48))(v47, v54, v14);
      }

      else
      {
        v45 = (*(v17 + 48))((v33 + v25 + v47 + 8) & ~v34);
      }

      goto LABEL_67;
    }

    if (v7 >= 2)
    {
      v45 = (*(v53 + 48))(v46, v7, v3);
LABEL_67:
      if (v45 >= 2)
      {
        return v45 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v38 > 0xFF)
  {
    v37 = *(a1 + v35);
    if (*(a1 + v35))
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  if (v38 < 2)
  {
    goto LABEL_61;
  }

LABEL_41:
  v37 = *(a1 + v35);
  if (!*(a1 + v35))
  {
    goto LABEL_61;
  }

LABEL_48:
  v39 = (v37 - 1) << v36;
  if (v35 > 3)
  {
    v39 = 0;
  }

  if (v35)
  {
    if (v35 <= 3)
    {
      v40 = v35;
    }

    else
    {
      v40 = 4;
    }

    if (v40 > 2)
    {
      if (v40 == 3)
      {
        v41 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v41 = *a1;
      }
    }

    else if (v40 == 1)
    {
      v41 = *a1;
    }

    else
    {
      v41 = *a1;
    }
  }

  else
  {
    v41 = 0;
  }

  return v19 + (v41 | v39) + 1;
}

void sub_1BD45BB2C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v63 = *(v4 - 8);
  v62 = *(v63 + 84);
  if (v62)
  {
    v5 = v62 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v55 = *(a4 + 24);
  v7 = *(v55 - 8);
  v68 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_1BE051AD4() - 8);
  v61 = *(v10 + 80);
  v64 = *(v10 + 64);
  v59 = v5;
  v60 = v6;
  if (v5 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v6;
  }

  v58 = v9;
  if (v9 > v11)
  {
    v11 = v9;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v5;
  }

  v56 = v12;
  if (v11 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v57 = v4;
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v13 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v13;
  }

  if (v62)
  {
    v21 = *(v63 + 64);
  }

  else
  {
    v21 = *(v63 + 64) + 1;
  }

  v22 = *(v63 + 80);
  v23 = *(v7 + 80);
  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  v26 = ((v61 + 16) & ~v61) + v64;
  if (v8)
  {
    v27 = *(v7 + 64);
  }

  else
  {
    v27 = *(v7 + 64) + 1;
  }

  if (v26 <= 8)
  {
    v26 = 8;
  }

  v28 = v22 | 7;
  v29 = v21 + 7 + ((v22 + 16) & ~v22);
  v30 = v61 | 7;
  v31 = v27 + 7;
  v32 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = v24 | 7;
  if (!v17)
  {
    ++v25;
  }

  v34 = v25 + 7;
  v35 = v25 - ((-9 - v24 - ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) | v24) - ((((~v26 - v28 + ((((((-17 - v23 - ((((((((((v29 + ((v22 + 24) & ~(v22 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v23) - v31) | 7) - v30 - 32) | v30)) | v28) - (v32 + v33) - 8) | v33) - 2;
  if (a3 > v20)
  {
    if (v35 <= 3)
    {
      v36 = ((a3 - v20 + ~(-1 << (8 * v35))) >> (8 * v35)) + 1;
      if (HIWORD(v36))
      {
        v14 = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          v14 = v37;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v20 < a2)
  {
    v38 = ~v20 + a2;
    if (v35 >= 4)
    {
      bzero(a1, v35);
      *a1 = v38;
      v39 = 1;
      if (v14 > 1)
      {
        goto LABEL_54;
      }

      goto LABEL_95;
    }

    v39 = (v38 >> (8 * v35)) + 1;
    if (v25 - ((-9 - v24 - ((v25 + 7) & 0xFFFFFFF8)) | v24) - ((((~v26 - v28 + ((((((-17 - v23 - ((((((((((v29 + ((v22 + 24) & ~(v22 | 7))) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) | v23) - v31) | 7) - v30 - 32) | v30)) | v28) - (v32 + v33) - 8) | v33) != 2)
    {
      v40 = v38 & ~(-1 << (8 * v35));
      bzero(a1, v35);
      if (v35 != 3)
      {
        if (v35 == 2)
        {
          *a1 = v40;
          if (v14 > 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *a1 = v38;
          if (v14 > 1)
          {
LABEL_54:
            if (v14 == 2)
            {
              *(a1 + v35) = v39;
            }

            else
            {
              *(a1 + v35) = v39;
            }

            return;
          }
        }

LABEL_95:
        if (v14)
        {
          *(a1 + v35) = v39;
        }

        return;
      }

      *a1 = v40;
      *(a1 + 2) = BYTE2(v40);
    }

    if (v14 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_68;
    }

    *(a1 + v35) = 0;
  }

  else if (v14)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_68;
  }

  if (!a2)
  {
    return;
  }

LABEL_68:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v41 = (a1 + v28 + 24) & ~v28;
  if (v20 == v60)
  {
    v42 = (v22 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v22;
  }

  else
  {
    v47 = (v23 + ((((((((((v29 + v41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
    if (v58 == v20)
    {
      if (v8 < 2)
      {
        return;
      }

      v48 = *(v68 + 56);
      v49 = a2 + 1;
      v50 = v8;
      v51 = v55;
      goto LABEL_101;
    }

    v42 = (v26 + v28 + ((v61 + ((v31 + v47) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v30) + 1) & ~v28;
    if (v56 != v20)
    {
      v42 = (v32 + v24 + v42 + 8) & ~v33;
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v54 = *(v16 + 56);

          v54(v42, a2 + 1);
        }

        else
        {
          if (v25 <= 3)
          {
            v53 = ~(-1 << (8 * v25));
          }

          else
          {
            v53 = -1;
          }

          if (v25)
          {
            v44 = v53 & (~v18 + a2);
            if (v25 <= 3)
            {
              v45 = v25;
            }

            else
            {
              v45 = 4;
            }

            v46 = v42;
            v21 = v25;
            goto LABEL_83;
          }
        }
      }

      else
      {
        v21 = ((v24 + (v34 & 0xFFFFFFF8) + 8) & ~v24) + v25;
        v52 = -1 << (8 * (((v24 + (v34 & 0xF8) + 8) & ~v24) + v25));
        if (v21 <= 3)
        {
          v43 = ~v52;
        }

        else
        {
          v43 = -1;
        }

        if (v21)
        {
          goto LABEL_79;
        }
      }

      return;
    }
  }

  if (v59 >= a2)
  {
    v48 = *(v63 + 56);
    v49 = a2 + 1;
    v47 = v42;
    v50 = v62;
    v51 = v57;
LABEL_101:

    v48(v47, v49, v50, v51);
    return;
  }

  if (v21 <= 3)
  {
    v43 = ~(-1 << (8 * v21));
  }

  else
  {
    v43 = -1;
  }

  if (v21)
  {
    v19 = v59;
LABEL_79:
    v44 = v43 & (~v19 + a2);
    if (v21 <= 3)
    {
      v45 = v21;
    }

    else
    {
      v45 = 4;
    }

    v46 = v42;
LABEL_83:
    bzero(v46, v21);
    if (v45 > 2)
    {
      if (v45 == 3)
      {
        *v42 = v44;
        *(v42 + 2) = BYTE2(v44);
      }

      else
      {
        *v42 = v44;
      }
    }

    else if (v45 == 1)
    {
      *v42 = v44;
    }

    else
    {
      *v42 = v44;
    }
  }
}

void sub_1BD45C270()
{
  if (!qword_1EBD469B8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD469B8);
    }
  }
}

void sub_1BD45C2C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1BD45C368(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v29 = sub_1BE04B304();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46820);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v24 - v8;
  v10 = sub_1BE04B344();
  v11 = MEMORY[0x1E6969B50];
  sub_1BD463284(&qword_1EBD469E8, MEMORY[0x1E6969B50]);
  sub_1BE0526A4();
  sub_1BD463284(&unk_1EBD4D4D0, v11);
  v27 = (v3 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  v24[1] = v10;
  while (1)
  {
    v13 = v28;
    sub_1BE052B04();
    sub_1BD463284(&qword_1EBD46828, MEMORY[0x1E6969B18]);
    v14 = v29;
    v15 = sub_1BE052334();
    (*v27)(v13, v14);
    if (v15)
    {
      sub_1BD0DE53C(v9, &qword_1EBD46820);
      return v12;
    }

    v16 = sub_1BE052B34();
    v18 = *v17;
    v16(v30, 0);
    sub_1BE052B14();
    v31 = v18;
    v19 = v25(&v31);
    if (v2)
    {
      break;
    }

    if (v19)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD532148(0, *(v12 + 16) + 1, 1);
        v12 = v32;
      }

      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BD532148((v21 > 1), v22 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v22 + 1;
      *(v12 + 8 * v22 + 32) = v18;
    }
  }

  sub_1BD0DE53C(v9, &qword_1EBD46820);

  return v12;
}

uint64_t sub_1BD45C6C0()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  sub_1BE052804();
  v1 = sub_1BE051964();
  MEMORY[0x1BFB3E970](v3, v1);
  return v3[0];
}

uint64_t sub_1BD45C71C()
{
  sub_1BE0534B4();
  v0 = sub_1BE051964();
  return MEMORY[0x1BFB3E970](v0);
}

uint64_t sub_1BD45C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0);
  v108 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v88[0] = v88 - v5;
  *&v100 = a1 + 40;
  v122 = *(a1 + 24);
  v103 = sub_1BE0534B4();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v6);
  v104 = v88 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8);
  MEMORY[0x1EEE9AC00](v106, v8);
  v107 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v111 = v88 - v12;
  v13 = *(a1 + 16);
  v14 = a1;
  v123 = a1;
  v120 = sub_1BE0534B4();
  v124 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v15);
  v102 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = v88 - v19;
  swift_getTupleTypeMetadata2();
  v20 = sub_1BE052804();
  v95 = *(v14 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ContactFormItemRow();
  type metadata accessor for ListRowGestureActionsModifier();
  v22 = sub_1BE04EBD4();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v140 = v20;
  v141 = AssociatedTypeWitness;
  v142 = v22;
  v143 = WitnessTable;
  v144 = AssociatedConformanceWitness;
  sub_1BE0519E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D4A0);
  sub_1BE04EBD4();
  v109 = v3;
  sub_1BE04F9B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E98);
  v25 = MEMORY[0x1E6981148];
  v26 = sub_1BE051A64();
  v114 = v26;
  v98 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v117 = v88 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200);
  v113 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1BD12E194();
  v147 = MEMORY[0x1E6981138];
  v148 = v30;
  v32 = MEMORY[0x1E6981138];
  v149 = v31;
  v33 = swift_getWitnessTable();
  v115 = v33;
  v116 = sub_1BD35CEE0();
  v140 = v26;
  v141 = v29;
  v142 = v25;
  v143 = v13;
  v34 = v13;
  v144 = v33;
  v145 = v116;
  v146 = v32;
  v96 = MEMORY[0x1E697D4C0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v35);
  v101 = v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v112 = v88 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v118 = v88 - v42;
  v43 = v123;
  v44 = v119;
  v45 = (v119 + *(v123 + 72));
  v46 = v45[1];
  v140 = *v45;
  v141 = v46;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v140 = sub_1BE0506C4();
  v141 = v47;
  LOBYTE(v142) = v48 & 1;
  v143 = v49;
  v50 = (v44 + *(v43 + 88));
  v51 = v50[1];
  v52 = v50[2];
  v53 = v50[3];
  v136 = *v50;
  v137 = v51;
  v138 = v52;
  v139 = v53;
  *&v54 = v34;
  *(&v54 + 1) = v122;
  v93 = v54;
  *&v55 = v95;
  *(&v55 + 1) = *v100;
  v100 = v55;
  v131 = v54;
  v132 = v55;
  v133 = v44;
  sub_1BD1969AC(v136, v51, v52, v53);
  sub_1BE051A34();
  v140 = sub_1BD4607E8(v43);
  v141 = v56;
  v57 = sub_1BE0506C4();
  v94 = v58;
  v95 = v57;
  v91 = v59;
  v92 = v60;
  v61 = v120;
  sub_1BE0516D4();
  v62 = v99;
  sub_1BE0516A4();
  v63 = *(*(v34 - 8) + 48);
  v89 = v34;
  LOBYTE(v30) = v63(v62, 1, v34) != 1;
  v64 = *(v124 + 8);
  v124 += 8;
  v90 = v64;
  v64(v62, v61);
  LOBYTE(v136) = v30;
  sub_1BE051944();
  LODWORD(v99) = v142;
  v65 = v102;
  sub_1BE0516A4();
  v88[1] = v88;
  v128 = v93;
  v129 = v100;
  v130 = v44;
  v125 = v93;
  v126 = v100;
  v127 = v44;
  LOBYTE(v34) = v91;
  v67 = v94;
  v66 = v95;
  v68 = v117;
  sub_1BE050F04();
  v69 = v119;

  sub_1BD0DDF10(v66, v67, v34 & 1);

  v90(v65, v120);
  v70 = v114;
  (*(v98 + 8))(v68, v114);
  v140 = v70;
  v141 = v113;
  v142 = MEMORY[0x1E6981148];
  v143 = v89;
  v144 = v115;
  v145 = v116;
  v146 = MEMORY[0x1E6981138];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v112;
  v73 = OpaqueTypeMetadata2;
  v124 = OpaqueTypeConformance2;
  sub_1BD147308(v112);
  v74 = v97;
  v75 = *(v97 + 8);
  v75(v72, v73);
  v76 = v104;
  v77 = v105;
  v78 = v103;
  (*(v105 + 16))(v104, v69 + *(v123 + 84), v103);
  LODWORD(v22) = (*(*(v122 - 8) + 48))(v76, 1);
  (*(v77 + 8))(v76, v78);
  v79 = 1;
  if (v22 != 1)
  {
    v80 = v88[0];
    sub_1BD4605C4(v123, 1);
    sub_1BD46232C(v80, v111);
    v79 = 0;
  }

  v81 = v111;
  (*(v108 + 56))(v111, v79, 1, v109);
  v82 = *(v74 + 16);
  v83 = v101;
  v84 = v118;
  v85 = OpaqueTypeMetadata2;
  v82(v101, v118, OpaqueTypeMetadata2);
  v140 = v83;
  v86 = v107;
  sub_1BD0DE19C(v81, v107, &qword_1EBD469C8);
  v141 = v86;
  v136 = v85;
  v137 = v106;
  v134 = v124;
  v135 = sub_1BD462198();
  sub_1BD13A4C4(&v140, 2uLL, &v136);
  sub_1BD0DE53C(v81, &qword_1EBD469C8);
  v75(v84, v85);
  sub_1BD0DE53C(v86, &qword_1EBD469C8);
  return (v75)(v83, v85);
}

uint64_t sub_1BD45D2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v131 = a1;
  v128 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v104 = &v101 - v12;
  v13 = sub_1BE0534B4();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x1EEE9AC00](v13, v13);
  v103 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v102 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v123 = &v101 - v20;
  v124 = v10;
  v21 = sub_1BE04F9B4();
  v126 = *(v21 - 8);
  v127 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v125 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v135 = &v101 - v26;
  v153 = a2;
  v154 = a3;
  v155 = a4;
  v156 = a5;
  v27 = type metadata accessor for ContactEditingSection();
  v112 = *(v27 - 8);
  v115 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v109 = &v101 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_1BE052804();
  v130 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = type metadata accessor for ContactFormItemRow();
  type metadata accessor for ListRowGestureActionsModifier();
  v32 = sub_1BE04EBD4();
  v114 = v32;
  v119 = v30;
  WitnessTable = swift_getWitnessTable();
  v118 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v153 = v30;
  v154 = AssociatedTypeWitness;
  v155 = v32;
  v156 = WitnessTable;
  v157 = AssociatedConformanceWitness;
  v116 = sub_1BE0519E4();
  v120 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v34);
  v110 = &v101 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D4A0);
  v134 = sub_1BE04EBD4();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v36);
  v111 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v133 = &v101 - v40;
  v41 = v131;
  sub_1BD45C6C0();
  v42 = *(v27 + 80);
  v129 = v27;
  v43 = (v41 + v42);
  v45 = *v43;
  v44 = v43[1];
  v153 = v45;
  v154 = v44;
  v46 = sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE0516A4();
  v47 = sub_1BE052794();

  v152[0] = v47;
  v48 = swift_getWitnessTable();
  MEMORY[0x1BFB3F750](&v153, v46, v48);

  v152[0] = v153;
  sub_1BE0539B4();
  swift_getWitnessTable();
  v49 = sub_1BE052814();
  v50 = v41;
  v152[0] = sub_1BD45C6C0();
  v105 = a2;
  v141 = a2;
  v142 = a3;
  v51 = v130;
  v52 = v136;
  v143 = v130;
  v144 = v136;
  v145 = v41;
  swift_getWitnessTable();
  sub_1BE052B24();

  v107 = v153;
  v106 = v154;
  v153 = v49;
  v137 = a2;
  v138 = a3;
  v139 = v51;
  v140 = v52;
  v53 = v52;
  TupleTypeMetadata2 = swift_getKeyPath();
  v54 = v112;
  v55 = v109;
  v56 = v50;
  v57 = v129;
  (*(v112 + 16))(v109, v56, v129);
  v58 = (*(v54 + 80) + 57) & ~*(v54 + 80);
  v59 = swift_allocObject();
  v60 = v105;
  *(v59 + 16) = v105;
  *(v59 + 24) = a3;
  v61 = v130;
  *(v59 + 32) = v130;
  *(v59 + 40) = v53;
  *(v59 + 48) = v107;
  *(v59 + 56) = v106;
  (*(v54 + 32))(v59 + v58, v55, v57);
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = a3;
  v63 = v60;
  v64 = a3;
  v62[4] = v61;
  v62[5] = v53;
  v62[6] = sub_1BD462510;
  v62[7] = v59;
  v65 = swift_getWitnessTable();
  v66 = sub_1BD463284(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier);
  v152[7] = v65;
  v152[8] = v66;
  v100 = swift_getWitnessTable();
  v67 = v110;
  v68 = v131;
  sub_1BE0519C4();
  sub_1BD45FF2C(v68, v63, v64, v61, v53);
  v152[6] = v100;
  v69 = v116;
  swift_getWitnessTable();
  v70 = v111;
  sub_1BE04F534();

  v120[1](v67, v69);
  v152[5] = v100;
  v71 = v122;
  v72 = swift_getWitnessTable();
  v73 = sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0);
  v152[3] = v72;
  v152[4] = v73;
  v74 = v134;
  v119 = swift_getWitnessTable();
  sub_1BD147308(v70);
  v75 = *(v132 + 8);
  v76 = v70;
  v130 = v132 + 8;
  v120 = v75;
  (v75)(v70, v74);
  v77 = v129;
  v78 = *(v129 + 84);
  v79 = v121;
  v80 = v123;
  (*(v121 + 16))(v123, v68 + v78, v71);
  LODWORD(v74) = (*(*(v64 - 8) + 48))(v80, 1, v64);
  v81 = *(v79 + 8);
  v81(v80, v71);
  if (v74 == 1)
  {
    v83 = v104;
    sub_1BD4605C4(v77, v82);
    v152[2] = v136;
    swift_getWitnessTable();
    sub_1BD46221C();
    sub_1BD13A7F8(v83, v71, v124);
    sub_1BD0DE53C(v83, &qword_1EBD469C0);
  }

  else
  {
    v146 = v136;
    swift_getWitnessTable();
    v84 = v68 + v78;
    v85 = v102;
    sub_1BD147308(v84);
    v86 = v103;
    sub_1BD147308(v85);
    sub_1BD46221C();
    sub_1BD13A700(v86, v71);
    v81(v86, v71);
    v81(v85, v71);
  }

  v87 = v133;
  v88 = v76;
  v89 = v76;
  v90 = v134;
  (*(v132 + 16))(v89, v133, v134);
  v153 = v88;
  v92 = v125;
  v91 = v126;
  v93 = v135;
  v94 = v127;
  (*(v126 + 16))(v125, v135, v127);
  v154 = v92;
  v152[0] = v90;
  v152[1] = v94;
  v149 = v136;
  v150 = v119;
  v95 = swift_getWitnessTable();
  v96 = sub_1BD46221C();
  v147 = v95;
  v148 = v96;
  v151 = swift_getWitnessTable();
  sub_1BD13A4C4(&v153, 2uLL, v152);
  v97 = *(v91 + 8);
  v97(v93, v94);
  v98 = v120;
  (v120)(v87, v90);
  v97(v92, v94);
  return (v98)(v88, v90);
}

uint64_t sub_1BD45DF04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v59 = a4;
  v65 = a2;
  v57 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v14 = &v50 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v58 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v50 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v50 - v26;
  (*(v8 + 16))(&v50 - v26, v57, a3, v25);
  (*(v8 + 56))(v27, 0, 1, a3);
  v61 = a3;
  v62 = v59;
  v52 = a5;
  v63 = a5;
  v64 = v60;
  type metadata accessor for ContactEditingSection();
  sub_1BD45C71C();
  v54 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v56 = v15;
  v29 = *(v15 + 16);
  v29(v14, v27, v10);
  v57 = v28;
  v60 = v10;
  v29(&v14[v28], v22, v10);
  v55 = v8;
  v30 = *(v8 + 48);
  v65 = v14;
  v59 = a3;
  if (v30(v14, 1, a3) != 1)
  {
    v50 = v27;
    v37 = v56;
    v38 = v65;
    v29(v58, v65, v60);
    v39 = v57;
    v40 = v59;
    if (v30(&v38[v57], 1, v59) != 1)
    {
      v43 = v55;
      v44 = v51;
      (*(v55 + 32))(v51, &v65[v39], v40);
      v45 = v58;
      v36 = sub_1BE052334();
      v46 = *(v43 + 8);
      v46(v44, v40);
      v47 = *(v37 + 8);
      v48 = v60;
      v47(v22, v60);
      v47(v50, v48);
      v46(v45, v40);
      v47(v65, v48);
      return v36 & 1;
    }

    v41 = *(v37 + 8);
    v42 = v60;
    v41(v22, v60);
    v41(v50, v42);
    (*(v55 + 8))(v58, v40);
    v35 = v65;
    goto LABEL_7;
  }

  v31 = *(v56 + 8);
  v32 = v60;
  v31(v22, v60);
  v31(v27, v32);
  v33 = v65;
  v34 = v30(&v65[v57], 1, v59) == 1;
  v35 = v33;
  if (!v34)
  {
LABEL_7:
    (*(v53 + 8))(v35, v54);
    v36 = 0;
    return v36 & 1;
  }

  v31(v33, v60);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_1BD45E3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, unint64_t, int *)@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v116 = a4;
  v123 = a3;
  v127 = a1;
  v117 = a8;
  v115 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v114 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v91 - v15;
  v135 = v16;
  v136 = v17;
  v129 = v18;
  v130 = v17;
  v137 = v19;
  v138 = v18;
  v20 = type metadata accessor for ContactEditingSection();
  v131 = *(v20 - 1);
  v21 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v106 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v128 = &v91 - v25;
  v26 = *(a7 + 16);
  swift_getAssociatedTypeWitness();
  sub_1BE0534B4();
  v122 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1BE04E264();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v125 = (&v91 - v29);
  v30 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v124 = &v91 - v32;
  v33 = type metadata accessor for ContactFormItemRow();
  v109 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v105 = &v91 - v35;
  type metadata accessor for ListRowGestureActionsModifier();
  v111 = v33;
  v113 = sub_1BE04EBD4();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v36);
  v107 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v110 = &v91 - v41;
  v42 = *(a7 + 32);
  v126 = a7;
  v103 = v42(a6, a7, v40);
  v102 = v43;
  v44 = v127;
  v101 = sub_1BD45EE00(v127);
  v45 = *(a5 + v20[14]);
  if (v45)
  {
    v46 = [v45 localizedDescription];
    v100 = sub_1BE052434();
    v99 = v47;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v97 = v44 == v123;
  v48 = v20[16];
  v98 = *(a5 + v20[17]);
  v96 = *(a5 + v48);
  v49 = v96;
  v118 = a2;
  sub_1BE053844();
  sub_1BE04E294();
  sub_1BE04E244();
  v50 = v131;
  v51 = *(v131 + 16);
  v122 = v131 + 16;
  v123 = v51;
  v51(v128, a5, v20);
  WitnessTable = a5;
  v52 = a6;
  v53 = v115;
  v94 = *(v115 + 16);
  v54 = v108;
  v94(v108, a2, v52);
  v55 = *(v50 + 80);
  v95 = ((v55 + 48) & ~v55) + v21;
  v56 = (v55 + 48) & ~v55;
  v119 = v56;
  v120 = v55 | 7;
  v57 = (v95 + *(v53 + 80)) & ~*(v53 + 80);
  v92 = &v104[v57];
  v93 = v57;
  v58 = swift_allocObject();
  v59 = v130;
  v58[2] = v52;
  v58[3] = v59;
  v60 = v128;
  v61 = v129;
  v58[4] = v126;
  v58[5] = v61;
  v62 = *(v50 + 32);
  v131 = v50 + 32;
  v63 = v58 + v56;
  v64 = v62;
  v104 = v62;
  v62(v63, v60, v20);
  v115 = *(v53 + 32);
  (v115)(v58 + v57, v54, v52);
  v65 = v106;
  v123(v106, WitnessTable, v20);
  v66 = v114;
  v94(v114, v118, v52);
  v67 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v129;
  v70 = v130;
  *(v68 + 2) = v52;
  *(v68 + 3) = v70;
  v71 = v126;
  *(v68 + 4) = v126;
  *(v68 + 5) = v69;
  v64(&v68[v119], v65, v20);
  (v115)(&v68[v93], v66, v52);
  *&v68[v67] = v127;
  v72 = v71;
  v73 = v105;
  sub_1BD29DFF4(v103, v102, v97 & ~v116, v101, v100, v99, v98, v96, v105, v124, v125, sub_1BD462D28, v58, sub_1BD462E1C, v68);
  v74 = WitnessTable;
  v75 = v129;
  v76 = v130;
  v125 = sub_1BD45F884(WitnessTable, v118, v52, v130, v71, v129);
  v78 = v77;
  v79 = v128;
  v123(v128, v74, v20);
  v80 = (v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v81[2] = v52;
  v81[3] = v76;
  v81[4] = v72;
  v81[5] = v75;
  (v104)(v81 + v119, v79, v20);
  *(v81 + v80) = v127;
  v82 = v111;
  v83 = swift_getWitnessTable();
  v84 = v107;
  v85 = v125;
  sub_1BD843CBC(v125, v78, sub_1BD462F68, v81, v82, v83);

  sub_1BD0D4744(v85);
  (*(v109 + 8))(v73, v82);
  v86 = sub_1BD463284(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier);
  v132 = v83;
  v133 = v86;
  v87 = v113;
  swift_getWitnessTable();
  v88 = v110;
  sub_1BD147308(v84);
  v89 = *(v112 + 8);
  v89(v84, v87);
  sub_1BD147308(v88);
  return (v89)(v88, v87);
}

BOOL sub_1BD45EE00(uint64_t a1)
{
  sub_1BD45C6C0();
  v2 = sub_1BE0527D4();

  return v2 <= a1;
}

uint64_t sub_1BD45EE54(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0534B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v42 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v55 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v56 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  result = sub_1BD461BB8();
  if ((result & 1) == 0)
  {
    v28 = v5[2];
    v48 = v5 + 2;
    v46 = v28;
    v28(v26, v57, v4);
    v29 = v5[7];
    v47 = v5 + 7;
    v45 = v29;
    v29(v26, 0, 1, v4);
    v52 = a2;
    v50 = v2;
    sub_1BD45C71C();
    v43 = TupleTypeMetadata2;
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = *(v12 + 16);
    v31(v11, v26, v7);
    v51 = v30;
    v31(&v11[v30], v22, v7);
    v44 = v5;
    v32 = v5[6];
    v33 = v32(v11, 1, v4);
    v49 = v12;
    if (v33 == 1)
    {
      v34 = *(v12 + 8);
      v34(v22, v7);
      v34(v26, v7);
      if (v32(&v11[v51], 1, v4) == 1)
      {
        return (v34)(v11, v7);
      }
    }

    else
    {
      v31(v56, v11, v7);
      v35 = v51;
      if (v32(&v11[v51], 1, v4) != 1)
      {
        v38 = v44;
        v39 = &v11[v35];
        v40 = v53;
        (v44[4])(v53, v39, v4);
        LODWORD(v54) = sub_1BE052334();
        v41 = v38[1];
        v41(v40, v4);
        v34 = *(v49 + 8);
        v34(v22, v7);
        v34(v26, v7);
        v41(v56, v4);
        result = (v34)(v11, v7);
        v36 = v57;
        if (v54)
        {
          return result;
        }

        goto LABEL_8;
      }

      v34 = *(v49 + 8);
      v34(v22, v7);
      v34(v26, v7);
      (v44[1])(v56, v4);
    }

    v36 = v57;
    (*(v54 + 8))(v11, v43);
LABEL_8:
    v37 = v55;
    v46(v55, v36, v4);
    v45(v37, 0, 1, v4);
    sub_1BD463198(v37);
    return (v34)(v37, v7);
  }

  return result;
}

uint64_t sub_1BD45F3D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6)
{
  v47 = a5;
  v11 = *(a6 + 16);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v48 = v45 - v18;
  result = sub_1BD45EE00(v19);
  v21 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v21 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if (!v21)
    {
      return result;
    }

    v45[1] = sub_1BD46210C(a2);
    v22 = (v6 + *(a6 + 80));
    v24 = v22[1];
    v54 = *v22;
    v23 = v54;
    v55 = v24;
    sub_1BE052804();
    v46 = v11;
    sub_1BE0516D4();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE0516A4();
    sub_1BE0527F4();
    v51 = v23;
    v52 = v24;
    v50 = v57;
    sub_1BE0516B4();

    v25 = *(*(a6 + 32) + 48);
    v26 = a3;
    v27 = v48;
    v28 = v46;
    v25(v26, a4, v47, v46);
    v30 = v6[1];
    v31 = v6[2];
    v54 = *v6;
    v29 = v54;
    v55 = v30;
    v56 = v31;
    v32 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v57, v32);
    sub_1BE0527E4();
    v51 = v29;
    v52 = v30;
    v53 = v31;
    v50 = v57;
    sub_1BE0518F4();
    (*(v49 + 8))(v27, v28);
  }

  else
  {
    if (v21)
    {
      (*(*(a6 + 32) + 48))(a3, a4, v47, v11);
      v33 = *v6;
      v34 = v6[1];
      v35 = v6[2];
      v54 = *v6;
      v55 = v34;
      v56 = v35;
      sub_1BE052804();
      v36 = sub_1BE051964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048C84();
      MEMORY[0x1BFB3E970](&v57, v36);
      sub_1BE0527A4();
      v37 = v57;
      sub_1BD463144(a2, v57);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v39 = v37 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v39 = v37;
      }

      (*(v49 + 40))(v39 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * a2, v13, v11);
      v51 = v33;
      v52 = v34;
      v53 = v35;
      v50 = v57;
      sub_1BE0518F4();
    }

    v41 = v6[1];
    v42 = v6[2];
    v54 = *v6;
    v40 = v54;
    v55 = v41;
    v56 = v42;
    sub_1BE052804();
    v43 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v57, v43);
    v44 = v48;
    sub_1BE0527F4();
    (*(v49 + 8))(v44, v11);
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v50 = v57;
    sub_1BE0518F4();
  }
}

uint64_t (*sub_1BD45F884(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v37 = a3;
  v38 = a4;
  v35 = a4;
  v36 = a5;
  v39 = a5;
  v40 = a6;
  v10 = type metadata accessor for ContactEditingSection();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a1 + *(v19 + 60));
  v21 = *v20;
  if (!*v20)
  {
    return 0;
  }

  v32 = a1;
  v33 = a6;
  v34 = v17;
  v22 = v16;
  v23 = v20[1];
  sub_1BE048964();
  if (sub_1BD8B6708(a3, v36))
  {
    sub_1BD0D4744(v21);
    return 0;
  }

  (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  (*(v22 + 16))(v34, v32, v10);
  v32 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = (v13 + *(v22 + 80) + v32) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = v35;
  v28 = v36;
  *(v26 + 2) = a3;
  *(v26 + 3) = v27;
  v30 = v32;
  v29 = v33;
  *(v26 + 4) = v28;
  *(v26 + 5) = v29;
  *(v26 + 6) = v21;
  *(v26 + 7) = v23;
  (*(v12 + 32))(&v26[v30], v18, a3);
  (*(v22 + 32))(&v26[v25], v34, v10);
  return sub_1BD463040;
}

uint64_t sub_1BD45FAFC(void (*a1)(uint64_t, double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v12 = sub_1BE0534B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v25 - v20;
  a1(a3, v19);
  v27 = a5;
  v28 = a6;
  v29 = v25;
  v30 = v26;
  v22 = type metadata accessor for ContactEditingSection();
  sub_1BD45EE54(a3, v22);
  v23 = *(a5 - 8);
  (*(v23 + 16))(v21, a3, a5);
  (*(v23 + 56))(v21, 0, 1, a5);
  (*(v13 + 16))(v16, v21, v12);
  sub_1BE0516D4();
  sub_1BE0516B4();
  return (*(v13 + 8))(v21, v12);
}

uint64_t sub_1BD45FCF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BD45EE00(v9))
  {
    sub_1BD46210C(a1);
    v10 = (v2 + *(a2 + 80));
    v12 = v10[1];
    v22 = *v10;
    v11 = v22;
    v23 = v12;
    sub_1BE052804();
    sub_1BE0516D4();
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE0516A4();
    sub_1BE0527F4();
    (*(v6 + 8))(v8, v5);
    v19 = v11;
    v20 = v12;
    v18 = v25;
    sub_1BE0516B4();
  }

  else
  {
    v15 = v2[1];
    v16 = v2[2];
    v22 = *v2;
    v14 = v22;
    v23 = v15;
    v24 = v16;
    sub_1BE052804();
    v17 = sub_1BE051964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048C84();
    MEMORY[0x1BFB3E970](&v25, v17);
    sub_1BE0527F4();
    (*(v6 + 8))(v8, v5);
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v18 = v25;
    sub_1BE0518F4();
  }
}

uint64_t (*sub_1BD45FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v10 = type metadata accessor for ContactEditingSection();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v19 - v14;
  (*(v11 + 16))(v19 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v11 + 32))(&v17[v16], v15, v10);
  return sub_1BD462B44;
}

uint64_t sub_1BD460088(uint64_t a1, void *a2)
{
  v61 = a1;
  v4 = sub_1BE04B344();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = &v53 - v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v53 - v22;
  v65 = v5;
  v24 = *(v5 + 16);
  v24(&v53 - v22, a1, v4, v21);
  v25 = a2[2];
  v59 = a2[3];
  v70 = v25;
  v71 = v59;
  v26 = a2[4];
  v27 = a2[5];
  v62 = a2;
  v56 = v26;
  v57 = v27;
  v72 = v26;
  v73 = v27;
  v28 = v26;
  v74 = v66;
  v60 = sub_1BD45C368(sub_1BD462BEC, v69);
  (v24)(v23, v61, v4);
  v29 = v59;
  v68[2] = v25;
  v68[3] = v59;
  v68[4] = v28;
  v30 = v57;
  v31 = v66;
  v68[5] = v57;
  v68[6] = v66;
  v32 = sub_1BD45C368(sub_1BD462C54, v68);
  v58 = v25;
  v67[2] = v25;
  v67[3] = v29;
  v67[4] = v56;
  v67[5] = v30;
  v33 = v60;
  v67[6] = v31;
  v61 = sub_1BDA3DD20(sub_1BD462CB8, v67, v32);

  sub_1BD463284(&qword_1EBD46840, MEMORY[0x1E6969B50]);
  sub_1BE053654();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = (v33 + 32);
    do
    {
      v36 = *v35++;
      v76 = v36;
      sub_1BE053634();
      --v34;
    }

    while (v34);
  }

  v37 = v65;
  v59 = *(v65 + 32);
  v60 = v65 + 32;
  v59(v64, v15, v4);
  v38 = v66[1];
  v39 = v66[2];
  v79 = *v66;
  v80 = v38;
  v54 = v38;
  v55 = v79;
  v81 = v39;
  v40 = sub_1BE052804();
  v41 = sub_1BE051964();
  v53 = v41;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  MEMORY[0x1BFB3E970](v82, v41);
  WitnessTable = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = v64;
  v57 = v40;
  v58 = WitnessTable;
  v56 = v43;
  sub_1BE052B44();
  v64 = *(v37 + 8);
  v65 = v37 + 8;
  (v64)(v44, v4);
  v76 = v55;
  v77 = v54;
  v78 = v39;
  v75 = v82[0];
  sub_1BE0518F4();

  sub_1BE053654();
  v45 = *(v61 + 16);
  if (v45)
  {
    v46 = (v61 + 32);
    do
    {
      v47 = *v46++;
      v76 = v47;
      sub_1BE053634();
      --v45;
    }

    while (v45);
  }

  v48 = v63;
  v59(v63, v8, v4);
  v49 = (v66 + *(v62 + 20));
  v51 = v49[1];
  v79 = *v49;
  v50 = v79;
  v80 = v51;
  sub_1BE0516D4();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE0516A4();
  sub_1BE052B44();
  (v64)(v48, v4);
  v76 = v50;
  v77 = v51;
  v75 = v82[0];
  sub_1BE0516B4();
}

uint64_t sub_1BD4605C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + *(v9 + 76));
  v12 = *v10;
  v11 = v10[1];
  (*(v5 + 16))(v8, v3, a1, v7);
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  *(v14 + 16) = *(a1 + 16);
  *(v14 + 32) = v15;
  (*(v5 + 32))(v14 + v13, v8, a1);
  LOBYTE(v21[0]) = 0;
  sub_1BE048C84();
  sub_1BE051944();
  v16 = v24;
  LOBYTE(v13) = v25;
  v17 = sub_1BE0511D4();
  *&v24 = v12;
  *(&v24 + 1) = v11;
  *&v25 = sub_1BD46239C;
  *(&v25 + 1) = v14;
  v26 = v16;
  LOBYTE(v27) = v13;
  *(&v27 + 1) = v17;
  v22 = sub_1BE052434();
  v23 = v18;
  MEMORY[0x1BFB3F610](45, 0xE100000000000000);
  v19 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v19);

  sub_1BD4622D8();
  sub_1BE050DE4();

  v21[0] = v24;
  v21[1] = v25;
  v21[2] = v26;
  v21[3] = v27;
  return sub_1BD4623B4(v21);
}

uint64_t sub_1BD4607E8(uint64_t a1)
{
  v24 = sub_1BE04BD74();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_1BE0534B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0516D4();
  sub_1BE0516A4();
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B69E0;
    v18 = (*(*(a1 + 32) + 32))(v5);
    v20 = v19;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1BD110550();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = v24;
    (*(v2 + 104))(v25, *MEMORY[0x1E69B8068], v24);
    v22 = v25;
    v23 = sub_1BE04B714();

    (*(v2 + 8))(v22, v21);
    (*(v11 + 8))(v15, v5);
    return v23;
  }
}

uint64_t sub_1BD460B40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v28 = a6;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v8 = type metadata accessor for ContactEditingSection();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v25 - v17;
  (*(v9 + 16))(v12, a1, v8, v16);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v25;
  v22 = v26;
  *(v20 + 2) = a2;
  *(v20 + 3) = v21;
  v23 = v27;
  *(v20 + 4) = v22;
  *(v20 + 5) = v23;
  (*(v9 + 32))(&v20[v19], v12, v8);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1BD460DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE0534B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v20 - v17;
  (*(*(a2 - 8) + 56))(v20 - v17, 1, 1, a2, v16);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  type metadata accessor for ContactEditingSection();
  (*(v10 + 16))(v13, v18, v9);
  sub_1BE0516D4();
  sub_1BE0516B4();
  return (*(v10 + 8))(v18, v9);
}

id sub_1BD460F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
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

uint64_t sub_1BD4610C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactEditingSection();
  sub_1BD461138(v2);
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_1BD461138(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v18 - v10;
  v13 = *MEMORY[0x1E69B8068];
  v14 = *(v4 + 104);
  if (*(v1 + *(a1 + 68)))
  {
    v14(v7, v13, v3, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v12 = v7;
LABEL_6:

      (*(v4 + 8))(v12, v3);
      return v17;
    }

    __break(1u);
  }

  else
  {
    v14(&v18 - v10, v13, v3, v11);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD461308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a3;
  v40 = a5;
  v36 = a1;
  v43 = sub_1BE051F54();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v10);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v15 = type metadata accessor for ContactEditingSection();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v38 = &v36 - v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v37 = a4;
  (*(a4 + 24))(0, 0xE000000000000000, 6, a2, a4, v21);
  v22 = (a1 + *(v15 + 80));
  v23 = v22[1];
  aBlock = *v22;
  v24 = aBlock;
  v48 = v23;
  sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE0516A4();
  sub_1BE0527E4();
  v54 = v24;
  v55 = v23;
  v53 = v56;
  sub_1BE0516B4();

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v25 = sub_1BE052D54();
  v26 = v38;
  (*(v16 + 16))(v38, v36, v15);
  v27 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 2) = a2;
  *(v28 + 3) = v29;
  v30 = v40;
  *(v28 + 4) = v37;
  *(v28 + 5) = v30;
  (*(v16 + 32))(&v28[v27], v26, v15);
  v51 = sub_1BD462408;
  v52 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BD126964;
  v50 = &block_descriptor_97;
  v31 = _Block_copy(&aBlock);

  v32 = v41;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD463284(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v34 = v42;
  v33 = v43;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v32, v34, v31);
  _Block_release(v31);

  (*(v46 + 8))(v34, v33);
  return (*(v44 + 8))(v32, v45);
}

uint64_t sub_1BD461800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE0534B4();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  v34 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1BE0534B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v32 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v23 = *(type metadata accessor for ContactEditingSection() + 80);
  v33 = a1;
  v24 = (a1 + v23);
  v26 = *v24;
  v25 = v24[1];
  v37 = v26;
  v38 = v25;
  sub_1BE052804();
  sub_1BE0516D4();
  sub_1BE0516A4();
  v37 = v36;
  swift_getWitnessTable();
  sub_1BE0522C4();

  v27 = *(a2 - 8);
  if ((*(v27 + 48))(v13, 1, a2) == 1)
  {
    (*(v30 + 8))(v13, v31);
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1BE053844();
    (*(v27 + 8))(v13, a2);
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 0, 1, AssociatedTypeWitness);
  }

  (*(v16 + 16))(v32, v22, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1BE04E294();
  sub_1BE04E234();
  return (*(v16 + 8))(v22, v15);
}

uint64_t sub_1BD461BB8()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  sub_1BD70A2C8(v11);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD40450);
    v25 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v24);
    sub_1BD0DE53C(v11, &qword_1EBD40520);
    v25 = 0;
  }

  v26 = *(v1 + 56);
  v26(v23, v25, 1, v0);
  (*(v1 + 104))(v19, *MEMORY[0x1E697D708], v0);
  v26(v19, 0, 1, v0);
  v27 = *(v4 + 48);
  sub_1BD0DE19C(v23, v7, &qword_1EBD40530);
  sub_1BD0DE19C(v19, &v7[v27], &qword_1EBD40530);
  v28 = *(v1 + 48);
  if (v28(v7, 1, v0) != 1)
  {
    sub_1BD0DE19C(v7, v15, &qword_1EBD40530);
    if (v28(&v7[v27], 1, v0) != 1)
    {
      v30 = v34;
      (*(v1 + 32))(v34, &v7[v27], v0);
      sub_1BD463284(&qword_1EBD40538, MEMORY[0x1E697D718]);
      v29 = sub_1BE052334();
      v31 = *(v1 + 8);
      v31(v30, v0);
      sub_1BD0DE53C(v19, &qword_1EBD40530);
      sub_1BD0DE53C(v23, &qword_1EBD40530);
      v31(v15, v0);
      sub_1BD0DE53C(v7, &qword_1EBD40530);
      return v29 & 1;
    }

    sub_1BD0DE53C(v19, &qword_1EBD40530);
    sub_1BD0DE53C(v23, &qword_1EBD40530);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v19, &qword_1EBD40530);
  sub_1BD0DE53C(v23, &qword_1EBD40530);
  if (v28(&v7[v27], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v7, &qword_1EBD40528);
    v29 = 0;
    return v29 & 1;
  }

  sub_1BD0DE53C(v7, &qword_1EBD40530);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1BD46210C(uint64_t a1)
{
  sub_1BD45C6C0();
  v2 = sub_1BE0527D4();

  result = a1 - v2;
  if (__OFSUB__(a1, v2))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD462198()
{
  result = qword_1EBD469D0;
  if (!qword_1EBD469D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C8);
    sub_1BD46221C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469D0);
  }

  return result;
}

unint64_t sub_1BD46221C()
{
  result = qword_1EBD469D8;
  if (!qword_1EBD469D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD469C0);
    sub_1BD4622D8();
    sub_1BD463284(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469D8);
  }

  return result;
}

unint64_t sub_1BD4622D8()
{
  result = qword_1EBD469E0;
  if (!qword_1EBD469E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD469E0);
  }

  return result;
}

uint64_t sub_1BD46232C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD462438(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for ContactEditingSection() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1BD462510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(type metadata accessor for ContactEditingSection() - 8);
  return sub_1BD45E3FC(a1, a2, *(v3 + 48), *(v3 + 56), v3 + ((*(v9 + 80) + 57) & ~*(v9 + 80)), v7, v8, a3);
}

uint64_t sub_1BD4625D0(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t objectdestroyTm_43()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ContactEditingSection();
  v24 = *(*(v3 - 1) + 80);
  v4 = v0 + ((v24 + 48) & ~v24);

  v5 = v4 + v3[13];

  sub_1BE0534B4();
  v6 = *(sub_1BE051964() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  if (*(v4 + v3[15]))
  {
  }

  v9 = v3[21];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v4 + v9, 1, v2))
  {
    (*(v10 + 8))(v4 + v9, v2);
  }

  v11 = v4 + v3[22];
  if (*(v11 + 24))
  {
    sub_1BD0DDF10(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v4 + v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 32);
      v15 = sub_1BE051AD4();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  else
  {
  }

  v16 = v4 + v3[24];
  if (!v8(v16, 1, v1))
  {
    (*(v7 + 8))(v16, v1);
  }

  sub_1BE0516D4();

  v17 = v4 + v3[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17, AssociatedTypeWitness);
  }

  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v21 = sub_1BE04E294();

  v22 = *(v21 + 40);
  if (!v20(v17 + v22, 1, AssociatedTypeWitness))
  {
    (*(v19 + 8))(v17 + v22, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD462B44(uint64_t a1)
{
  type metadata accessor for ContactEditingSection();
  v2 = type metadata accessor for ContactEditingSection();
  return sub_1BD460088(a1, v2);
}

BOOL sub_1BD462BEC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ContactEditingSection();
  return !sub_1BD45EE00(v1);
}

BOOL sub_1BD462C54(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ContactEditingSection();
  return sub_1BD45EE00(v1);
}

uint64_t sub_1BD462CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ContactEditingSection();
  result = sub_1BD46210C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1BD462D28()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ContactEditingSection() - 8);
  v3 = (((*(v2 + 80) + 48) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v4 = type metadata accessor for ContactEditingSection();
  return sub_1BD45EE54(v0 + v3, v4);
}

uint64_t sub_1BD462E1C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = *(v3 + 16);
  v7 = *(type metadata accessor for ContactEditingSection() - 8);
  v8 = (((*(v7 + 80) + 48) & ~*(v7 + 80)) + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v9 = *(v3 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = type metadata accessor for ContactEditingSection();
  return sub_1BD45F3D4(v3 + v8, v9, a1, a2, a3, v10);
}

uint64_t sub_1BD462F68()
{
  v1 = *(type metadata accessor for ContactEditingSection() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 48) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = type metadata accessor for ContactEditingSection();
  return sub_1BD45FCF0(v2, v3);
}

uint64_t sub_1BD463040()
{
  v1 = (*(*(v0[2] - 8) + 80) + 64) & ~*(*(v0[2] - 8) + 80);
  v2 = *(*(v0[2] - 8) + 64);
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v3 = *(type metadata accessor for ContactEditingSection() - 8);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0 + ((v1 + v2 + *(v3 + 80)) & ~*(v3 + 80));

  return sub_1BD45FAFC(v4, v5, v0 + v1, v6, v8, v9, v10, v11);
}

uint64_t sub_1BD463144(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD463198(uint64_t a1)
{
  v2 = sub_1BE0534B4();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - v5, a1, v2, v4);
  sub_1BE051964();
  return sub_1BE0518F4();
}

uint64_t sub_1BD463284(unint64_t *a1, void (*a2)(uint64_t))
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

int *AppleCashConfirmationSnippetView.init(person:note:isSend:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1BE048724();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for AppleCashConfirmationSnippetView();
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t type metadata accessor for AppleCashConfirmationSnippetView()
{
  result = qword_1EBD46A00;
  if (!qword_1EBD46A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AppleCashConfirmationSnippetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F7D4();
  v27 = 0;
  sub_1BD463520(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, sizeof(v29));
  sub_1BD0DE19C(__dst, &v24, &qword_1EBD469F0);
  sub_1BD0DE53C(v29, &qword_1EBD469F0);
  memcpy(&v26[7], __dst, 0x168uLL);
  v5 = v27;
  LOBYTE(v2) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  __src[0] = 0;
  v14 = sub_1BE050234();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *a1 = v4;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v26, 0x16FuLL);
  *(a1 + 384) = v2;
  *(a1 + 392) = v7;
  *(a1 + 400) = v9;
  *(a1 + 408) = v11;
  *(a1 + 416) = v13;
  *(a1 + 424) = 0;
  *(a1 + 432) = v14;
  *(a1 + 440) = v16;
  *(a1 + 448) = v18;
  *(a1 + 456) = v20;
  *(a1 + 464) = v22;
  *(a1 + 472) = 0;
  return result;
}

uint64_t sub_1BD463520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BE04F504();
  LOBYTE(v62[0]) = 0;
  sub_1BD463CFC(&v63);
  v84 = *&v64[10];
  v85 = *&v64[12];
  v86[0] = *&v64[14];
  *(v86 + 9) = *(&v64[15] + 1);
  v80 = *&v64[2];
  v81 = *&v64[4];
  v82 = *&v64[6];
  v83 = *&v64[8];
  v78 = v63;
  v79 = *v64;
  v87[6] = *&v64[10];
  v87[7] = *&v64[12];
  v88[0] = *&v64[14];
  *(v88 + 9) = *(&v64[15] + 1);
  v87[2] = *&v64[2];
  v87[3] = *&v64[4];
  v87[4] = *&v64[6];
  v87[5] = *&v64[8];
  v87[0] = v63;
  v87[1] = *v64;
  sub_1BD0DE19C(&v78, &v49, &qword_1EBD46A40);
  sub_1BD0DE53C(v87, &qword_1EBD46A40);
  *(&v65[6] + 7) = v84;
  *(&v65[7] + 7) = v85;
  *(&v65[8] + 7) = v86[0];
  v65[9] = *(v86 + 9);
  *(&v65[2] + 7) = v80;
  *(&v65[3] + 7) = v81;
  *(&v65[4] + 7) = v82;
  *(&v65[5] + 7) = v83;
  *(v65 + 7) = v78;
  *(&v65[1] + 7) = v79;
  v45 = LOBYTE(v62[0]);
  v8 = sub_1BD464BD0(186.0, 130.0);
  v9 = MEMORY[0x1E6981630];
  if (v8)
  {
    v10 = v8;
    sub_1BE051544();
    v11 = v9;
    (*(v4 + 104))(v7, *v9, v3);
    v44 = sub_1BE0515E4();

    (*(v4 + 8))(v7, v3);
    [v10 size];
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v63) = 1;
    LOBYTE(v49) = 1;
    v42 = v67;
    v43 = v66;
    v40 = v69;
    v41 = v68;
    v47 = v71;
    v38 = 1;
    v39 = v70;
    v12 = 1;
  }

  else
  {
    v11 = MEMORY[0x1E6981630];
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v47 = 0;
    v12 = 0;
    v38 = 0;
  }

  v13 = *(a1 + *(type metadata accessor for AppleCashConfirmationSnippetView() + 20) + 8);
  if (v13)
  {
    v14 = objc_allocWithZone(PKPeerPaymentMessageMemoBalloonView);
    v15 = sub_1BE052404();
    v16 = [v14 initWithMemo_];

    v17 = v16;
    [v17 sizeThatFits_];
    v19 = v18;
    v21 = v20;
    [v17 setFrame_];

    v22 = sub_1BD464D98(v17, v19, v21);
    v23 = v22;
    sub_1BE051544();
    (*(v4 + 104))(v7, *v11, v3);
    v36 = sub_1BE0515E4();

    (*(v4 + 8))(v7, v3);
    [v23 size];
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v63) = 1;
    LOBYTE(v49) = 1;
    v24 = v72;
    v13 = v73;
    v25 = v74;
    v26 = v75;
    v27 = v76;
    v28 = v77;
    v29 = 1;
    v30 = 1;
  }

  else
  {
    v36 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v30 = 0;
    v29 = 0;
  }

  *&v49 = v46;
  *(&v49 + 1) = 0x4020000000000000;
  v50[0] = v45;
  *&v50[49] = v65[3];
  *&v50[33] = v65[2];
  *&v50[97] = v65[6];
  *&v50[113] = v65[7];
  *&v50[129] = v65[8];
  *&v50[145] = v65[9];
  *&v50[65] = v65[4];
  *&v50[81] = v65[5];
  *&v50[1] = v65[0];
  *&v50[17] = v65[1];
  v48[8] = *&v50[112];
  v48[9] = *&v50[128];
  v48[10] = *&v50[144];
  LOBYTE(v48[11]) = HIBYTE(v65[9]);
  v48[4] = *&v50[48];
  v48[5] = *&v50[64];
  v48[6] = *&v50[80];
  v48[7] = *&v50[96];
  v48[0] = v49;
  v48[1] = *v50;
  v48[2] = *&v50[16];
  v48[3] = *&v50[32];
  v51[0] = v44;
  v51[1] = 0;
  v51[2] = v38;
  v51[3] = 0;
  *&v52 = v12;
  *(&v52 + 1) = v43;
  *&v53 = v42;
  *(&v53 + 1) = v41;
  v35 = v12;
  *&v54 = v40;
  *(&v54 + 1) = v39;
  v55 = v47;
  *(&v48[16] + 1) = v47;
  *(&v48[13] + 8) = v52;
  *(&v48[14] + 8) = v53;
  *(&v48[15] + 8) = v54;
  *(&v48[11] + 8) = v44;
  *(&v48[12] + 8) = v38;
  v31 = v36;
  v56[0] = v36;
  v56[1] = 0;
  v56[2] = v29;
  v56[3] = 0;
  *&v57 = v30;
  *(&v57 + 1) = v24;
  *&v58 = v13;
  *(&v58 + 1) = v25;
  *&v59 = v26;
  *(&v59 + 1) = v27;
  v60 = v28;
  v48[17] = v36;
  v48[18] = v29;
  *&v48[22] = v28;
  v48[20] = v58;
  v48[21] = v59;
  v48[19] = v57;
  v32 = v30;
  memcpy(v37, v48, 0x168uLL);
  v61[0] = v31;
  v61[1] = 0;
  v61[2] = v29;
  v61[3] = 0;
  v61[4] = v32;
  v61[5] = v24;
  v61[6] = v13;
  v61[7] = v25;
  v61[8] = v26;
  v61[9] = v27;
  v61[10] = v28;
  sub_1BD0DE19C(&v49, &v63, &qword_1EBD46A48);
  sub_1BD0DE19C(v51, &v63, &qword_1EBD46A50);
  sub_1BD0DE19C(v56, &v63, &qword_1EBD46A50);
  sub_1BD0DE53C(v61, &qword_1EBD46A50);
  v62[0] = v44;
  v62[1] = 0;
  v62[2] = v38;
  v62[3] = 0;
  v62[4] = v35;
  v62[5] = v43;
  v62[6] = v42;
  v62[7] = v41;
  v62[8] = v40;
  v62[9] = v39;
  v62[10] = v47;
  sub_1BD0DE53C(v62, &qword_1EBD46A50);
  *(&v64[12] + 1) = v65[6];
  *(&v64[14] + 1) = v65[7];
  *(&v64[16] + 1) = v65[8];
  *(&v64[18] + 1) = v65[9];
  *(&v64[4] + 1) = v65[2];
  *(&v64[6] + 1) = v65[3];
  *(&v64[8] + 1) = v65[4];
  *(&v64[10] + 1) = v65[5];
  *(v64 + 1) = v65[0];
  *&v63 = v46;
  *(&v63 + 1) = 0x4020000000000000;
  LOBYTE(v64[0]) = v45;
  *(&v64[2] + 1) = v65[1];
  return sub_1BD0DE53C(&v63, &qword_1EBD46A48);
}

uint64_t sub_1BD463CFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051CB4();
  v21 = v3;
  v22 = v2;
  sub_1BD463F30(&v43);
  v25 = v45;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v23 = v43;
  v24 = v44;
  v29[4] = v47;
  v29[5] = v48;
  v29[2] = v45;
  v29[3] = v46;
  v29[0] = v43;
  v29[1] = v44;
  sub_1BD0DE19C(&v23, &v36, &qword_1EBD46A60);
  sub_1BD0DE53C(v29, &qword_1EBD46A60);
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v30 = v23;
  v31 = v24;
  *&v43 = IntentPerson.pkDisplayName.getter();
  *(&v43 + 1) = v4;
  sub_1BD0DDEBC();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  sub_1BE050364();
  v10 = sub_1BE050544();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  *&v36 = v22;
  *(&v36 + 1) = v21;
  v17 = v32;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v37 = v30;
  v38 = v31;
  *(a1 + 32) = v31;
  *(a1 + 48) = v17;
  v18 = v37;
  *a1 = v36;
  *(a1 + 16) = v18;
  v19 = v42;
  *(a1 + 80) = v41;
  *(a1 + 96) = v19;
  *(a1 + 64) = v40;
  *(a1 + 112) = v10;
  *(a1 + 120) = v12;
  *(a1 + 128) = v14 & 1;
  *(a1 + 136) = v16;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  sub_1BD0DE19C(&v36, &v43, &qword_1EBD46A68);
  sub_1BD0D7F18(v10, v12, v14 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v10, v12, v14 & 1);

  *&v43 = v22;
  *(&v43 + 1) = v21;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v44 = v30;
  v45 = v31;
  return sub_1BD0DE53C(&v43, &qword_1EBD46A68);
}

uint64_t sub_1BD463F30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4641F8();
  v7 = sub_1BE051544();
  v8 = sub_1BE052434();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v12 = sub_1BD469048(v8, v10, 1);
  v13 = PKUIGetAppIconForApplicationRecord(v12);
  if (v13)
  {
    v14 = v13;
    sub_1BE051544();
    (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
    v15 = sub_1BE0515E4();

    (*(v3 + 8))(v6, v2);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    LOBYTE(v35[0]) = 1;
    LOBYTE(v29) = 1;
    v16 = v35[12];
    v17 = v35[13];
    v18 = v35[14];
    v19 = v35[15];
    v20 = v35[16];
    v21 = v35[17];
    v22 = 1;
    v23 = 1;
  }

  else
  {

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
  }

  v29 = v15;
  v30 = v22;
  *&v31 = v23;
  *(&v31 + 1) = v16;
  *&v32 = v17;
  *(&v32 + 1) = v18;
  *&v33 = v19;
  *(&v33 + 1) = v20;
  *(a1 + 40) = v31;
  v24 = v33;
  *(a1 + 56) = v32;
  *(a1 + 72) = v24;
  v25 = v30;
  *(a1 + 8) = v29;
  v34 = v21;
  v35[0] = v15;
  *a1 = v7;
  *(a1 + 88) = v21;
  *(a1 + 24) = v25;
  v35[1] = 0;
  v35[2] = v22;
  v35[3] = 0;
  v35[4] = v23;
  v35[5] = v16;
  v35[6] = v17;
  v35[7] = v18;
  v35[8] = v19;
  v35[9] = v20;
  v35[10] = v21;
  sub_1BE048964();
  sub_1BD0DE19C(&v29, &v28, &qword_1EBD46A50);
  sub_1BD0DE53C(v35, &qword_1EBD46A50);
}

id sub_1BD4641F8()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

  v2 = [objc_opt_self() defaultContactResolver];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = v2;
  IntentPerson.pkStringHandle.getter();
  if (v5)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 contactForHandle_];

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [v8 scopeWithPointSize:1 scale:0 rightToLeft:64.0 style:{64.0, PKUIScreenScale()}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BE0B7020;
    *(v10 + 32) = v7;
    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    v11 = v7;
    v12 = sub_1BE052724();

    v13 = [v1 avatarImageForContacts:v12 scope:v9];

    swift_unknownObjectRelease();
    return v13;
  }

  else
  {
LABEL_7:
    v15 = [objc_msgSend(v1 placeholderImageProvider)];

    swift_unknownObjectRelease();
    return v15;
  }
}

id IntentPerson.pkDisplayName.getter()
{
  v0 = sub_1BE04BD74();
  v69 = *(v0 - 8);
  v70 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = &v61 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v61 - v9;
  v10 = sub_1BE0486E4();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v61 - v15;
  v17 = sub_1BE048704();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04A704();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE048694();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0486A4();
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == *MEMORY[0x1E6959FA0])
  {
    (*(v27 + 96))(v30, v26);
    return *v30;
  }

  if (v31 == *MEMORY[0x1E6959FA8])
  {
    (*(v27 + 96))(v30, v26);
    (*(v22 + 32))(v25, v30, v21);
    v33 = sub_1BE04A664();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0xE000000000000000;
    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v71 = v35;
    v72 = v37;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](32, 0xE100000000000000);

    v39 = v71;
    v38 = v72;
    v40 = sub_1BE04A684();
    if (v41)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v36 = v41;
    }

    v71 = v39;
    v72 = v38;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v42, v36);

    v43 = v71;
    (*(v22 + 8))(v25, v21);
    return v43;
  }

  if (v31 != *MEMORY[0x1E6959FB8])
  {
    v51 = v69;
    v50 = v70;
    (*(v69 + 104))(v3, *MEMORY[0x1E69B8050], v70);
    result = PKPassKitBundle();
    if (result)
    {
      v52 = result;
      v43 = sub_1BE04B6F4();

      (*(v51 + 8))(v3, v50);
      (*(v27 + 8))(v30, v26);
      return v43;
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1BE048714();
  v45 = v67;
  v44 = v68;
  if ((*(v67 + 48))(v16, 1, v68) != 1)
  {
    (*(v45 + 32))(v20, v16, v44);
    v53 = v64;
    sub_1BE0486F4();
    v55 = v65;
    v54 = v66;
    v56 = (*(v65 + 88))(v53, v66);
    if (v56 == *MEMORY[0x1E695A020] || v56 == *MEMORY[0x1E695A028] || v56 == *MEMORY[0x1E695A030])
    {
      (*(v45 + 8))(v20, v44);
      (*(v55 + 96))(v53, v54);
      return *v53;
    }

    v58 = v69;
    v57 = v70;
    v59 = v62;
    (*(v69 + 104))(v62, *MEMORY[0x1E69B8050], v70);
    result = PKPassKitBundle();
    if (result)
    {
      v60 = result;
      v43 = sub_1BE04B6F4();

      (*(v58 + 8))(v59, v57);
      (*(v67 + 8))(v20, v68);
      (*(v55 + 8))(v53, v54);
      return v43;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  sub_1BD0DE53C(v16, &qword_1EBD469F8);
  v47 = v69;
  v46 = v70;
  v48 = v63;
  (*(v69 + 104))(v63, *MEMORY[0x1E69B8050], v70);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v49 = result;
  v43 = sub_1BE04B6F4();

  (*(v47 + 8))(v48, v46);
  return v43;
}

uint64_t sub_1BD464BD0(double a1, double a2)
{
  v5 = type metadata accessor for AppleCashConfirmationSnippetView();
  v6 = *(v2 + *(v5 + 28));
  v7 = [v6 amount];
  v8 = [v6 currency];
  if (v8)
  {
    v9 = v8;
    sub_1BE052434();
    v11 = v10;

    v12 = *(v2 + *(v5 + 24));
    if (v12)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    if (v11)
    {
      v14 = sub_1BE052404();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = *(v2 + *(v5 + 24));
    if (v12)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = [objc_allocWithZone(PKPeerPaymentBubbleView) initWithAmount:v7 currency:v14 state:v13];

  if (v15)
  {
    [v15 setDisplaysCashLogo_];
    if (v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    v17 = [objc_allocWithZone(PKPeerPaymentMessageBalloonView) initWithBubbleView:v15 peerPaymentType:v16];
    if (v17)
    {
      v18 = v17;
      [v17 setHasTail_];
      [v18 setFrame_];
      v19 = sub_1BD464D98(v18, a1, a2);

      return v19;
    }
  }

  return 0;
}

uint64_t sub_1BD464D98(void *a1, double a2, double a3)
{
  sub_1BD0E5E8C(0, &qword_1EBD46A58);
  v6 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v6 setScale_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{a2, a3}];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD465988;
  *(v9 + 24) = v8;
  v14[4] = sub_1BD465990;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD4883A0;
  v14[3] = &block_descriptor_98;
  v10 = _Block_copy(v14);
  v11 = a1;
  sub_1BE048964();

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

void sub_1BD464F8C(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t IntentPerson.pkStringHandle.getter()
{
  v0 = sub_1BE0486E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_1BE048704();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE048714();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD469F8);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1BE0486F4();
    (*(v10 + 8))(v13, v9);
    v14 = (*(v1 + 88))(v4, v0);
    if (v14 == *MEMORY[0x1E695A020] || v14 == *MEMORY[0x1E695A028] || v14 == *MEMORY[0x1E695A030])
    {
      (*(v1 + 96))(v4, v0);
      return *v4;
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

uint64_t static IntentPerson.pkMePerson(counterpartHandle:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v32 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - v9;
  v11 = sub_1BE048694();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE048674();
  v17 = *(v16 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, a1);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21 && (v22 = sub_1BE052404(), v23 = PKPeerPaymentSenderAddressForRecipientAddress(v22), v22, v23))
  {
    v24 = sub_1BE052434();
    v31 = a2;
    v26 = v25;

    (*(v17 + 104))(v20, *MEMORY[0x1E6959F90], v16);
    (*(v12 + 104))(v15, *MEMORY[0x1E6959FB8], v11);
    static IntentPerson.Handle.pkHandleFromString(_:)(v24, v26);

    v27 = 0;
  }

  else
  {
    (*(v17 + 104))(v20, *MEMORY[0x1E6959F90], v16, v18);
    (*(v12 + 104))(v15, *MEMORY[0x1E6959FB8], v11);
    v27 = 1;
  }

  v28 = sub_1BE048704();
  (*(*(v28 - 8) + 56))(v10, v27, 1, v28);
  v29 = sub_1BE048BB4();
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  return sub_1BE048684();
}

uint64_t static IntentPerson.Handle.pkHandleFromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0486D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = a1;
  v11[3] = a2;
  v11[0] = 64;
  v11[1] = 0xE100000000000000;
  sub_1BD0DDEBC();
  v9 = sub_1BE0535F4();
  (*(v5 + 104))(v8, *MEMORY[0x1E6959FE0], v4);
  sub_1BE048C84();
  if (v9)
  {
    return sub_1BE0486C4();
  }

  else
  {
    return sub_1BE0486B4();
  }
}

void sub_1BD4657BC()
{
  sub_1BE048724();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD43B00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD4658A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD465924()
{
  result = qword_1EBD46A30;
  if (!qword_1EBD46A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46A30);
  }

  return result;
}

char *sub_1BD465998(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  *&v3[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_tokenModel] = a3;
  type metadata accessor for InStoreTopUpTokenModel();
  sub_1BD291C14();
  v27 = v5;
  v7 = sub_1BE04E954();
  v9 = v8;
  v29 = 0;
  sub_1BE051694();
  LOBYTE(v5) = v30;
  v10 = v31;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A90));
  type metadata accessor for ObservableHostingController();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + *((*MEMORY[0x1E69E7D40] & *v11) + class metadata base offset for WrapperHostingController + 16)) = v12;
  v30 = v7;
  v31 = v9;
  v32 = v5;
  v33 = v10;
  v34 = 0;
  v35 = 0;
  v36 = v12;
  swift_retain_n();
  sub_1BE048964();
  v13 = v9;
  sub_1BD0D44B8(0);
  sub_1BE048964();
  v14 = sub_1BE04F894();

  sub_1BD0D4744(0);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] = v14;
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_account] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_context] = a2;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v15 = a1;
  v16 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  v17 = OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC;
  v18 = *&v16[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v16;
  v21 = v18;
  sub_1BE048964();
  v22 = sub_1BE04F8A4();
  v24 = *(v23 + 32);
  *(v23 + 32) = sub_1BD466328;
  *(v23 + 40) = v19;
  sub_1BD0D4744(v24);
  v22(&v30, 0);

  [v20 addChildViewController_];

  return v20;
}

void sub_1BD465D24()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v24.receiver = v0;
  v24.super_class = v7;
  objc_msgSendSuper2(&v24, sel_loadView);
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC;
  v11 = [*&v1[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_hostingVC] view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v9 addSubview_];

  [*&v1[v10] didMoveToParentViewController_];
  v13 = sub_1BD85D55C();
  v15 = v14;
  v16 = [v1 navigationItem];
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1BE053834();

  v22 = 0x45524F54535F4E49;
  v23 = 0xEF5F454C5449545FLL;
  MEMORY[0x1BFB3F610](v13, v15);

  (*(v3 + 104))(v6, *MEMORY[0x1E69B8060], v2);
  v17 = PKPassKitBundle();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_1BE04B6F4();

  (*(v3 + 8))(v6, v2);
  v19 = sub_1BE052404();

  [v16 setTitle_];

  if (!*&v1[OBJC_IVAR____TtC9PassKitUI38AppleBalanceInStoreTopUpViewController_context])
  {
    v20 = [v1 navigationItem];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissAction];
    [v20 setLeftBarButtonItem_];
  }
}

void sub_1BD466188(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    [v10 *a5];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD466274()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceInStoreTopUpViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static FinanceKitPredictedTransactionsViewControllerProvider.makeViewController(pass:navigationController:)(void *a1, void *a2)
{
  v4 = type metadata accessor for FinanceKitPredictedTransactionsView();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationController();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = a1;
  v10 = a2;
  sub_1BD982048(v9, v8, v7);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A98));
  return sub_1BE04F894();
}

id FinanceKitPredictedTransactionsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitPredictedTransactionsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FinanceKitPredictedTransactionsViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4666E0(void (*a1)(BOOL, unint64_t, unint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v28 = sub_1BD1870B8(v1, KeyPath) & 1;
  v29 = v4;
  v30 = v5;
  sub_1BD4F8958();
  if (*(v30 + 16) <= *(v29 + 16) >> 3)
  {
    sub_1BE048C84();
    sub_1BD534FE4(v30);
    v6 = v29;
  }

  else
  {
    sub_1BE048C84();
    v6 = sub_1BD2AD830(v30, v29);
  }

  v7 = *(v6 + 16);

  v8 = v1;
  sub_1BD12F66C(v28, v29, v30, v8, KeyPath);

  v9 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
  v10 = *&v8[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod];
  if (!v10)
  {
    swift_getKeyPath();
    v11 = sub_1BD187848(v8);

    v12 = *&v8[v9];
    *&v8[v9] = v11;

    v10 = *&v8[v9];
    if (!v10)
    {
      v19 = *&v8[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product];
      if (!v19)
      {
        v23 = swift_getKeyPath();
        v24 = sub_1BD1879C8(v8, v23);

        a1((v24 & 1) == 0, 0xD000000000000023, 0x80000001BE12A4D0, 2);
        return;
      }

      v27 = v19;
      v20 = [v27 configuration];
      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = v20;
      v22 = [v20 type];

      if ((v22 - 3) < 2)
      {
        v25 = swift_getKeyPath();
        v26 = sub_1BD1879C8(v8, v25);

        v14 = ~v26 & 1;
        v15 = 0xD000000000000023;
        v16 = 0x80000001BE12A4D0;
        goto LABEL_13;
      }

      if (v22 == 10)
      {
        v18 = " seen all privacy disclosures";
        v14 = 0xD00000000000001ELL;
      }

      else
      {
        if (v22 != 12)
        {
          v14 = v7 != 0;
          v15 = 0xD00000000000002DLL;
          goto LABEL_12;
        }

        v18 = "identity product not supported";
        v14 = 0xD000000000000029;
      }

LABEL_15:
      v15 = v18 | 0x8000000000000000;
      v16 = 0;
      v17 = 1;
      goto LABEL_16;
    }
  }

  v27 = v10;
  v13 = [v27 type];
  if (v13 > 8 || ((1 << v13) & 0x199) != 0)
  {
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000014, 0x80000001BE12A580);
    [v27 type];
    type metadata accessor for PKSetupProductMethodType(0);
    sub_1BE053974();
    a1(0, 0xE000000000000000, 0, 1);

    return;
  }

  if (((1 << v13) & 6) == 0)
  {
    v18 = "Invalid method type ";
    v14 = 0xD000000000000030;
    goto LABEL_15;
  }

  v14 = v7 != 0;
  v15 = 0xD00000000000002DLL;
LABEL_12:
  v16 = 0x80000001BE12A500;
LABEL_13:
  v17 = 2;
LABEL_16:
  a1(v14, v15, v16, v17);
}

id sub_1BD466B2C()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v65 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context];
  KeyPath = swift_getKeyPath();
  LOBYTE(aBlock) = sub_1BD1870B8(v0, KeyPath) & 1;
  v68 = v13;
  v69 = v14;
  v66 = v11;
  sub_1BD4F8958();
  v15 = v68;
  v16 = v69;
  if (*(v69 + 2) <= *(v68 + 16) >> 3)
  {
    v73 = v68;
    sub_1BE048C84();
    sub_1BD534FE4(v16);
  }

  else
  {
    sub_1BE048C84();
    sub_1BD2AD830(v16, v15);
  }

  v17 = aBlock;
  v18 = v1;
  sub_1BD12F66C(v17, v15, v16, v18, KeyPath);

  if (v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] != 2)
  {
    LODWORD(v65) = v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style];
    v22 = sub_1BE04BBD4();
    sub_1BE04BC34();
    v23 = sub_1BE04B9A4();
    (*(v7 + 8))(v10, v6);
    v24 = [objc_allocWithZone(PKPaymentSetupHeroViewController) initWithProvisioningController:v22 context:v23 delegate:0 product:*&v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] selectedMethod:*&v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] allowsManualEntry:v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry]];

    [v24 setFlowDelegate_];
    v25 = swift_getKeyPath();
    LOBYTE(aBlock) = sub_1BD1870B8(v18, v25) & 1;
    v68 = v26;
    v69 = v27;
    sub_1BD4F8958();
    v28 = v68;
    v29 = v69;
    if (*(v69 + 2) <= *(v68 + 16) >> 3)
    {
      v73 = v68;
      sub_1BE048C84();
      sub_1BD534FE4(v29);
      v30 = v73;
    }

    else
    {
      sub_1BE048C84();
      v30 = sub_1BD2AD830(v29, v28);
    }

    v43 = aBlock;
    v44 = v18;
    sub_1BD12F66C(v43, v28, v29, v44, v25);

    v64 = v44;

    if (*(v30 + 16) && (sub_1BE053D04(), sub_1BE052524(), v45 = sub_1BE053D64(), v46 = -1 << *(v30 + 32), v47 = v45 & ~v46, ((*(v30 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0))
    {
      v48 = ~v46;
      while (1)
      {
        v49 = *(*(v30 + 48) + v47);
        if (v49 != 1 && v49 != 2)
        {
          break;
        }

        v50 = sub_1BE053B84();

        if ((v50 & 1) == 0)
        {
          v47 = (v47 + 1) & v48;
          if ((*(v30 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            continue;
          }
        }

        v51 = v50 ^ 1;
        goto LABEL_26;
      }

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

LABEL_26:
    [v24 setHidePrivacyView_];
    if (*(v30 + 16) && (sub_1BE053D04(), sub_1BE052524(), v52 = sub_1BE053D64(), v53 = -1 << *(v30 + 32), v54 = v52 & ~v53, ((*(v30 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
    {
      v55 = ~v53;
      while (!*(*(v30 + 48) + v54) || *(*(v30 + 48) + v54) == 1)
      {
        v56 = sub_1BE053B84();

        if ((v56 & 1) == 0)
        {
          v54 = (v54 + 1) & v55;
          if ((*(v30 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v56 = 1;
    }

    else
    {
      v56 = 0;
    }

LABEL_35:
    [v24 setShowChinaPrivacyDisclosure_];
    if (*(v30 + 16) && (sub_1BE053D04(), sub_1BE052524(), v57 = sub_1BE053D64(), v58 = -1 << *(v30 + 32), v59 = v57 & ~v58, ((*(v30 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) != 0))
    {
      v60 = ~v58;
      while (!*(*(v30 + 48) + v59) || *(*(v30 + 48) + v59) == 2)
      {
        v61 = sub_1BE053B84();

        if ((v61 & 1) == 0)
        {
          v59 = (v59 + 1) & v60;
          if ((*(v30 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            continue;
          }
        }

        goto LABEL_44;
      }

      v61 = 1;
    }

    else
    {
      v61 = 0;
    }

LABEL_44:

    [v24 setShowSouthKoreaPrivacyDisclosure_];
    sub_1BE052434();
    v62 = sub_1BE04BB74();

    [v24 setReporter_];

    [v24 setShowPaymentCardTitle_];
    v42 = v64;
    goto LABEL_45;
  }

  v19 = *&v18[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product];
  if (v19)
  {
    v20 = [v19 partnerName];
    if (v20)
    {
      v21 = v20;
      sub_1BE052434();

LABEL_12:
      sub_1BE04BC34();
      v34 = sub_1BE04B9A4();
      (*(v7 + 8))(v10, v6);
      v35 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
      v36 = sub_1BE052404();

      v24 = [v35 initWithIssuerName:v36 context:v34];

      if (v24)
      {
        sub_1BE052434();
        v37 = v24;
        v38 = sub_1BE04BB74();

        [v37 setReporter_];

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = sub_1BD467DFC;
        v72 = v39;
        aBlock = MEMORY[0x1E69E9820];
        v68 = 1107296256;
        v69 = sub_1BD2749B0;
        v70 = &block_descriptor_99;
        v40 = _Block_copy(&aBlock);
        v41 = v37;

        [v41 setContinueHandler_];
        _Block_release(v40);
      }

      v42 = v18;
LABEL_45:
      sub_1BD4674D4(v42);
      return v24;
    }
  }

  v31 = v65;
  (*(v65 + 104))(v5, *MEMORY[0x1E69B80C8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    sub_1BE04B6F4();

    (*(v31 + 8))(v5, v2);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4674D4(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = a1;
  sub_1BD12F68C(1, v3, KeyPath);

  v37 = swift_getKeyPath();
  v33 = sub_1BD1870B8(v3, v37);
  v35 = v4;
  v6 = v5;
  sub_1BE053D04();
  sub_1BE052524();
  v7 = sub_1BE053D64();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + v9);
      if (v11 != 1 && v11 != 2)
      {
        break;
      }

      v12 = sub_1BE053B84();

      if (v12)
      {
        goto LABEL_8;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v6;
    sub_1BD2A9690(0, v9, isUniquelyReferenced_nonNull_native);
  }

LABEL_8:
  v14 = v3;
  sub_1BD12F66C(v33 & 1, v35, v6, v14, v37);

  v15 = swift_getKeyPath();
  v16 = sub_1BD1870B8(v14, v15);
  v18 = v17;
  v40 = v19;
  sub_1BD2A50F4(&v39, 2);
  v20 = v40;
  v21 = v14;
  sub_1BD12F66C(v16 & 1, v18, v20, v21, v15);

  v38 = swift_getKeyPath();
  v34 = sub_1BD1870B8(v21, v38);
  v36 = v22;
  v24 = v23;
  sub_1BE053D04();
  sub_1BE052524();
  v25 = sub_1BE053D64();
  v26 = -1 << *(v24 + 32);
  v27 = v25 & ~v26;
  if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v28 = ~v26;
    while (!*(*(v24 + 48) + v27) || *(*(v24 + 48) + v27) == 2)
    {
      v29 = sub_1BE053B84();

      if (v29)
      {
        goto LABEL_15;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v24;
    sub_1BD2A9690(1, v27, v30);
    v24 = v40;
  }

LABEL_15:
  v31 = v21;
  sub_1BD12F66C(v34 & 1, v36, v24, v31, v38);
}

void sub_1BD4678D0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v3 = Strong;
  v4 = Strong + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = v3;
    sub_1BD8659A4(v7, &off_1F3BA7D00, ObjectType, v5);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

uint64_t sub_1BD4679A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4679E0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD467A34(void *a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  v5 = a2;
  v6 = a1;
  sub_1BD12FDD4(a2, v6, KeyPath);

  v7 = *&v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod];
  *&v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = a2;
  v8 = v5;

  v9 = &v6[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v6, &off_1F3BA7D00, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningHeroFlowItem.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningHeroFlowItem.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD467E04()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5[0] = [objc_opt_self() userCancelError];
    v6 = 1;
    sub_1BD865A00(v0, &off_1F3BA7D00, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

uint64_t sub_1BD467FC4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BD468024(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

uint64_t sub_1BD4680BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_1BE048C84();
}

uint64_t sub_1BD468128()
{
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1BE048C84();
  return v2;
}

uint64_t sub_1BD468180(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id AppPrivacySettingsProvider.__allocating_init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

id AppPrivacySettingsProvider.init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AppPrivacySettingsProvider();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  swift_unknownObjectRelease();
  return v6;
}

void sub_1BD4684D0()
{
  v59 = sub_1BE04D214();
  v1 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59, v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - v12;
  v60 = v0;
  v14 = &v0[OBJC_IVAR____TtC9PassKitUI26AppPrivacySettingsProvider_bundleIdentifier];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1BE048C84();
  v17 = sub_1BD469048(v15, v16, 0);
  v58 = v9;
  if (v17)
  {
    v59 = v17;
    v61 = MEMORY[0x1E69E7CC0];
    v26 = objc_opt_self();
    sub_1BE048C84();
    v27 = sub_1BE052404();

    v28 = [v26 authorizationStatusForCapability:0 bundleIdentifier:v27];

    if (v28 >= 2)
    {

      return;
    }

    v29 = objc_opt_self();
    v30 = [v29 emptyGroupSpecifier];
    if (v30)
    {
      v31 = v30;
      v55 = v29;
      v32 = v6;
      v33 = *(v6 + 104);
      v57 = *MEMORY[0x1E69B80F0];
      v34 = v5;
      v56 = v33;
      v33(v13);
      v35 = PKPassKitBundle();
      if (v35)
      {
        v36 = v35;
        sub_1BE04B6F4();

        v53 = *(v32 + 8);
        v54 = v32 + 8;
        v53(v13, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1BE0B69E0;
        v38 = [v59 localizedName];
        v39 = sub_1BE052434();
        v41 = v40;

        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1BD110550();
        *(v37 + 32) = v39;
        *(v37 + 40) = v41;
        sub_1BE052454();
        v42 = sub_1BE052404();
        [v31 setProperty:v42 forKey:*MEMORY[0x1E69C5900]];

        v43 = v31;
        MEMORY[0x1BFB3F7A0]();
        v44 = v58;
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v56(v44, v57, v34);
        v45 = PKPassKitBundle();
        if (v45)
        {
          v46 = v45;
          sub_1BE04B6F4();

          v53(v44, v34);
          v47 = sub_1BE052404();

          v48 = [v55 preferenceSpecifierNamed:v47 target:v60 set:sel_setBackgroundAddAuthorization:: get:sel_backgroundAddAuthorizationWithSpecifier_ detail:0 cell:6 edit:0];

          if (v48)
          {

            sub_1BE048C84();
            v49 = sub_1BE052404();

            v50 = sub_1BE052404();
            [v48 setProperty:v49 forKey:v50];

            v51 = v48;
            MEMORY[0x1BFB3F7A0]();
            if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BE052774();
            }

            sub_1BE0527C4();

            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1BE04D1C4();
  v18 = v60;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v61 = v22;
    *v21 = 136315138;
    v24 = *v14;
    v23 = v14[1];
    sub_1BE048C84();
    v25 = sub_1BD123690(v24, v23, &v61);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1BD026000, v19, v20, "Failed to get application record for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1BFB45F20](v22, -1, -1);
    MEMORY[0x1BFB45F20](v21, -1, -1);
  }

  (*(v1 + 8))(v4, v59);
}

void *sub_1BD468BB4(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE052404();
  v11 = [a2 propertyForKey_];

  if (v11)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = [a1 BOOLValue];
      v13 = objc_opt_self();
      v14 = sub_1BE052404();

      [v13 setAuthorizationForCapability:0 granted:v12 bundleIdentifier:v14];

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a2];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_1BD14EC0C(v22);
  }

  sub_1BE04D1C4();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v16, v17, "Expected bundleID property on specifier", v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

id AppPrivacySettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppPrivacySettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPrivacySettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD469048(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BE052404();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BE04A854();

    swift_willThrow();
  }

  return v6;
}

id sub_1BD469124(void *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - v9;
  v11 = sub_1BE052404();
  v12 = [a1 propertyForKey_];

  if (v12)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_1BD14EC0C(v31);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BE04D1C4();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "Expected bundleID property on specifier", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_16;
  }

  v14 = v28[0];
  v13 = v28[1];
  v15 = objc_opt_self();
  v16 = sub_1BE052404();
  v17 = [v15 authorizationStatusForCapability:0 bundleIdentifier:v16];

  if (v17 + 1 < 2 || v17 == 2)
  {

LABEL_16:
    v18 = 0;
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v17 != 1)
  {
    sub_1BE04D1C4();
    sub_1BE048C84();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v31[0] = v26;
      *v25 = 134218242;
      *(v25 + 4) = v17;
      *(v25 + 12) = 2080;
      v27 = sub_1BD123690(v14, v13, v31);

      *(v25 + 14) = v27;
      _os_log_impl(&dword_1BD026000, v23, v24, "Unhandled authorization status %ld for bundle %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v10, v2);
    goto LABEL_16;
  }

  v18 = 1;
  return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
}

unint64_t sub_1BD469708()
{
  result = qword_1EBD46B20;
  if (!qword_1EBD46B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD46B20);
  }

  return result;
}

uint64_t FlightWidgetPassSnapshotView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B28);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v32 - v3;
  v5 = sub_1BE051584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v14 = *v0;
  v15 = *(v14 + 24);
  if (v15)
  {
    v33 = v15;
    sub_1BE051544();
    (*(v6 + 104))(v9, *MEMORY[0x1E6981630], v5);
    v16 = sub_1BE0515E4();

    (*(v6 + 8))(v9, v5);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v35 = 1;
    *&v34[6] = v36;
    *&v34[22] = v37;
    *&v34[38] = v38;
    v17 = sub_1BE0501D4();
    v35 = 0;
    v18 = &v13[*(v10 + 36)];
    v19 = *(sub_1BE04EDE4() + 20);
    v20 = *MEMORY[0x1E697F468];
    v21 = sub_1BE04F684();
    (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
    __asm { FMOV            V0.2D, #2.0 }

    *v18 = _Q0;
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v27 = *&v34[16];
    *(v13 + 18) = *v34;
    *v13 = v16;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    *(v13 + 34) = v27;
    *(v13 + 50) = *&v34[32];
    *(v13 + 8) = *&v34[46];
    v13[72] = 0;
    v13[80] = v17;
    *(v13 + 88) = xmmword_1BE0CC930;
    __asm { FMOV            V0.2D, #-2.0 }

    *(v13 + 104) = _Q0;
    v13[120] = 0;
    sub_1BD469D08(v13, v4);
    swift_storeEnumTagMultiPayload();
    sub_1BD469B38();
    sub_1BD469CB4();
    sub_1BE04F9A4();

    return sub_1BD469D78(v13);
  }

  else
  {
    v30 = sub_1BE0513C4();
    v31 = *(v14 + 16);
    *v4 = 0xD000000000000014;
    *(v4 + 1) = 0x80000001BE12A8B0;
    *(v4 + 2) = v30;
    v4[24] = v31;
    swift_storeEnumTagMultiPayload();
    sub_1BD469B38();
    sub_1BD469CB4();
    return sub_1BE04F9A4();
  }
}

unint64_t sub_1BD469B38()
{
  result = qword_1EBD46B38;
  if (!qword_1EBD46B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B30);
    sub_1BD469BC4();
    sub_1BD469C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B38);
  }

  return result;
}

unint64_t sub_1BD469BC4()
{
  result = qword_1EBD46B40;
  if (!qword_1EBD46B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B48);
    sub_1BD275C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B40);
  }

  return result;
}

unint64_t sub_1BD469C50()
{
  result = qword_1EBD3B468;
  if (!qword_1EBD3B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B468);
  }

  return result;
}

unint64_t sub_1BD469CB4()
{
  result = qword_1EBD46B50;
  if (!qword_1EBD46B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B50);
  }

  return result;
}

uint64_t sub_1BD469D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD469D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD469DE4()
{
  result = qword_1EBD44068;
  if (!qword_1EBD44068)
  {
    type metadata accessor for FlightWidgetPassSnapshotContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44068);
  }

  return result;
}

unint64_t sub_1BD469E48(uint64_t a1)
{
  result = sub_1BD469E70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD469E70()
{
  result = qword_1EBD46B58;
  if (!qword_1EBD46B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B58);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1BE048964();
  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1BE048964();

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_1BD469F9C()
{
  result = qword_1EBD46B60;
  if (!qword_1EBD46B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B68);
    sub_1BD469B38();
    sub_1BD469CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B60);
  }

  return result;
}

uint64_t type metadata accessor for StateMachineAuthorizationModel()
{
  result = qword_1EBD36008;
  if (!qword_1EBD36008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD46A074()
{
  sub_1BD46A518();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BD46A174()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD46A1E8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD46A268(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD1123AC(&unk_1F3B8E168);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD6CF234(v1);

  return sub_1BE04C914();
}

void sub_1BD46A35C()
{
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + qword_1EBDAAD68;
  v4 = *(v0 + qword_1EBDAAD68);
  v5 = *(v3 + 32);
  v6 = *(v3 + 24);

  swift_unknownObjectRelease();
}

uint64_t sub_1BD46A418()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  sub_1BE048964();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1BD46A518()
{
  if (!qword_1EBD368C0)
  {
    type metadata accessor for PKPaymentAuthorizationState(255);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD368C0);
    }
  }
}

id sub_1BD46A578(uint64_t a1)
{
  v2 = *a1;
  v16 = *(a1 + 8);
  v3 = *(a1 + 16);
  v15 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v6;
  v5[2] = *(a1 + 32);
  swift_beginAccess();
  v14 = v3;
  v7 = v2;
  v8 = v4;
  sub_1BE048964();
  sub_1BD0DE19C(&v16, v13, &qword_1EBD3D490);
  sub_1BD0DE19C(&v15, v13, &qword_1EBD40150);
  type metadata accessor for PKPaymentAuthorizationState(0);
  sub_1BE04D874();
  swift_endAccess();
  result = [v8 paymentRequest];
  if (result)
  {
    v10 = result;
    v11 = [result localizedNavigationTitle];

    if (v11)
    {
      sub_1BE052434();
    }

    v12 = sub_1BE04C8B4();
    sub_1BE048964();
    sub_1BE04C8F4();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46A748()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD46A80C();
      if (v2 <= 0x3F)
      {
        sub_1BD170C00();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD46A80C()
{
  if (!qword_1EBD46B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46B88);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46B80);
    }
  }
}

unint64_t sub_1BD46A884()
{
  result = qword_1EBD46B90;
  if (!qword_1EBD46B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46B90);
  }

  return result;
}

uint64_t sub_1BD46A8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BA8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for PaymentPassDetailsSheet(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*a1 passActivationState] == 1 || (v14 = *(a1 + 24), v21[16] = *(a1 + 16), v22 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BA0), sub_1BE0516A4(), (v21[15] & 1) != 0))
  {
    sub_1BD471B10(a1, &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassDetailsSheet);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_1BD471FF8(&v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for PaymentPassDetailsSheet);
    *v9 = sub_1BD471AE0;
    v9[1] = v16;
    v9[2] = 0;
    v9[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB8);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &unk_1BE0D7FB0, sub_1BD47182C);
    return sub_1BE04F9A4();
  }

  else
  {
    sub_1BD46ACDC(v5);
    sub_1BD471B10(a1, &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassDetailsSheet);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_1BD471FF8(&v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for PaymentPassDetailsSheet);
    v20 = &v5[*(v2 + 36)];
    *v20 = sub_1BD4716FC;
    v20[1] = v19;
    v20[2] = 0;
    v20[3] = 0;
    sub_1BD0DE19C(v5, v9, &qword_1EBD46BA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BB8);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &unk_1BE0D7FB0, sub_1BD47182C);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v5, &qword_1EBD46BA8);
  }
}

uint64_t sub_1BD46ACDC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v49 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  MEMORY[0x1EEE9AC00](v49, v2);
  v45[0] = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C10);
  MEMORY[0x1EEE9AC00](v48, v4);
  v6 = v45 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C00);
  MEMORY[0x1EEE9AC00](v51, v7);
  v9 = v45 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C18);
  MEMORY[0x1EEE9AC00](v50, v10);
  v12 = v45 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C20);
  MEMORY[0x1EEE9AC00](v46, v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46BE8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v47 = v45 - v18;
  v19 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = (v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *v1;
  v25 = [*v1 devicePrimaryPaymentApplication];
  if (v25)
  {
    v26 = v25;
    v45[1] = v16;
    v27 = [v25 state];

    v28 = *(v1 + 8);
    if (v27 == 6)
    {
      *(v23 + v19[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
      swift_storeEnumTagMultiPayload();
      *v23 = v24;
      v23[1] = v28;
      *(v23 + v19[7]) = 0;
      v38 = v23 + v19[8];
      v53 = 0;
      v39 = v24;
      sub_1BE048964();
      sub_1BE051694();
      v40 = v55;
      *v38 = v54;
      *(v38 + 1) = v40;
      sub_1BD471B10(v23, v15, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    }

    else
    {
      if (v27 != 7)
      {
        v43 = v24;
        sub_1BE048964();
        v23 = v45[0];
        sub_1BD46B54C(v43, v28, v45[0]);
        sub_1BD471B10(v23, v6, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
        swift_storeEnumTagMultiPayload();
        sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
        sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
        sub_1BE04F9A4();
        sub_1BD0DE19C(v9, v12, &qword_1EBD46C00);
        swift_storeEnumTagMultiPayload();
        sub_1BD4718B8();
        sub_1BD47198C();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v9, &qword_1EBD46C00);
        v42 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
        return sub_1BD471B78(v23, v42);
      }

      *(v23 + v19[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
      swift_storeEnumTagMultiPayload();
      *v23 = v24;
      v23[1] = v28;
      *(v23 + v19[7]) = 1;
      v29 = v23 + v19[8];
      v53 = 0;
      v30 = v24;
      sub_1BE048964();
      sub_1BE051694();
      v31 = v55;
      *v29 = v54;
      *(v29 + 1) = v31;
      sub_1BD471B10(v23, v15, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    v41 = v47;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v41, v12, &qword_1EBD46BE8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4718B8();
    sub_1BD47198C();
    sub_1BE04F9A4();
    v36 = v41;
    v37 = &qword_1EBD46BE8;
  }

  else
  {
    v32 = *(v1 + 8);
    *(v23 + v19[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    *v23 = v24;
    v23[1] = v32;
    *(v23 + v19[7]) = 0;
    v33 = v23 + v19[8];
    v53 = 0;
    v34 = v24;
    sub_1BE048964();
    sub_1BE051694();
    v35 = v55;
    *v33 = v54;
    *(v33 + 1) = v35;
    sub_1BD471B10(v23, v6, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    swift_storeEnumTagMultiPayload();
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v9, v12, &qword_1EBD46C00);
    swift_storeEnumTagMultiPayload();
    sub_1BD4718B8();
    sub_1BD47198C();
    sub_1BE04F9A4();
    v36 = v9;
    v37 = &qword_1EBD46C00;
  }

  sub_1BD0DE53C(v36, v37);
  v42 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  return sub_1BD471B78(v23, v42);
}

uint64_t sub_1BD46B54C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BE051694();
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  v6 = *(type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0) + 36);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v7 = WalletSettingsModel.transactionsModelForPass(pass:)(a1);
  *a3 = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v7;
  swift_getKeyPath();
  sub_1BD471A78(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel);
  v8 = v7;
  v9 = a1;
  sub_1BE048964();
  sub_1BE04B594();

  v10 = *(a2 + 48);
  sub_1BE048964();

  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_1BD46B6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_1BD46A8F4(v3);
  sub_1BD471B10(v3, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD471FF8(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PaymentPassDetailsSheet);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B98);
  v10 = (a3 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1BD46B7FC;
  v10[3] = v8;
  return result;
}

id sub_1BD46B82C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BE04ECF4();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v6);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D28);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v8);
  v10 = &v32 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D30);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v11);
  v13 = &v32 - v12;
  v47 = v1;
  v35 = v1;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D40);
  v14 = v40;
  sub_1BD0DE4F4(&qword_1EBD46D48, &qword_1EBD46D38);
  v15 = v38;
  v16 = v41;
  sub_1BD0DE4F4(&qword_1EBD46D50, &qword_1EBD46D40);
  sub_1BE050494();
  v17 = v39;
  sub_1BE051DD4();
  v18 = sub_1BD0DE4F4(&qword_1EBD46D58, &qword_1EBD46D28);
  v19 = sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  v33 = v13;
  v21 = v44;
  v20 = v45;
  sub_1BE051134();
  (v43[1])(v17, v20);
  (*(v42 + 8))(v10, v21);
  (*(v16 + 104))(v15, *MEMORY[0x1E69B80F0], v14);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v16 + 8))(v15, v14);
    v54 = v24;
    v55 = v26;
    v27 = *(v35 + 16);
    v52 = *(v35 + 8);
    v53 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v28 = sub_1BE0516C4();
    v43 = &v32;
    MEMORY[0x1EEE9AC00](v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CB0);
    v48 = v44;
    v49 = v45;
    v50 = v18;
    v51 = v19;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0);
    v30 = v36;
    v31 = v33;
    sub_1BE050F44();

    return (*(v34 + 8))(v31, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46BE64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D68);
  MEMORY[0x1EEE9AC00](v95, v4);
  v6 = &v77 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D70);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v77 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D78);
  MEMORY[0x1EEE9AC00](v94, v11);
  v93 = (&v77 - v12);
  v13 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v88 = *(v13 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v89 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AppleCardDetailsSheet();
  MEMORY[0x1EEE9AC00](v90, v16);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v92 = (&v77 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D80);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v77 - v27;
  v29 = *(a1 + 24);
  v30 = *a1;
  sub_1BE048964();
  v96 = v30;
  if ([v30 isAppleCardPass])
  {
    if (PKAppleCardMacTransactionHistoryEnabled())
    {
      v86 = v29;
      v31 = v28;
      v32 = v24;
      v33 = v10;
      v34 = v14;
      v35 = a2;
      v36 = *(a1 + 32);
      swift_getKeyPath();
      v87 = v7;
      v98 = v36;
      sub_1BD471A78(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
      sub_1BE04B594();

      v85 = v36;
      v37 = *&v36[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account];
      a2 = v35;
      v38 = v34;
      v10 = v33;
      v24 = v32;
      v28 = v31;
      v29 = v86;
      if (v37)
      {
        v39 = v37;
        if ([v39 accessLevel] == 1)
        {
          v40 = [v39 creditDetails];
          v84 = v39;
          if (v40)
          {
            v41 = v40;
            v42 = [v40 accountSummary];
            if (!v42)
            {
LABEL_21:

              goto LABEL_22;
            }

            v43 = v42;
            v44 = [v42 pastDueAmount];
            if (v44)
            {
              v80 = v38;
              v81 = v43;
              v45 = v44;
              v46 = [objc_opt_self() zero];
              sub_1BD0E5E8C(0, &qword_1EBD38840);
              v83 = v45;
              v47 = sub_1BE053074();

              if (v47)
              {

                v82 = 0;
                v83 = 0;
LABEL_23:
                v60 = v89;
                sub_1BD471B10(a1, v89, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
                v61 = (*(v88 + 80) + 16) & ~*(v88 + 80);
                v62 = swift_allocObject();
                sub_1BD471FF8(v60, v62 + v61, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
                KeyPath = swift_getKeyPath();
                v64 = v92;
                *v92 = KeyPath;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
                swift_storeEnumTagMultiPayload();
                v65 = v90;
                v66 = v96;
                *(v64 + v90[5]) = v96;
                v67 = (v64 + v65[6]);
                *v67 = sub_1BD4726AC;
                v67[1] = v62;
                v68 = (v64 + v65[7]);
                v69 = v84;
                v97 = v84;
                v88 = sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
                v70 = v66;
                sub_1BE048964();
                v89 = v69;
                v71 = v85;
                sub_1BE051694();
                v72 = v99;
                *v68 = v98;
                v68[1] = v72;
                *(v64 + v65[8]) = v71;
                *(v64 + v65[9]) = v29;
                v73 = v91;
                sub_1BD471B10(v64, v91, type metadata accessor for AppleCardDetailsSheet);
                v74 = v93;
                v75 = v83;
                *v93 = v82;
                *(v74 + 8) = v75;
                v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DA0);
                sub_1BD471B10(v73, v74 + *(v76 + 48), type metadata accessor for AppleCardDetailsSheet);
                sub_1BE048C84();
                v90 = type metadata accessor for AppleCardDetailsSheet;
                sub_1BD471B78(v73, type metadata accessor for AppleCardDetailsSheet);

                sub_1BD0DE19C(v74, v10, &qword_1EBD46D78);
                swift_storeEnumTagMultiPayload();
                sub_1BD0DE4F4(&qword_1EBD46D88, &qword_1EBD46D78);
                sub_1BD0DE4F4(&qword_1EBD46D90, &qword_1EBD46D68);
                sub_1BE04F9A4();

                sub_1BD0DE53C(v74, &qword_1EBD46D78);
                sub_1BD471B78(v64, v90);
                goto LABEL_12;
              }

              v51 = [v41 currencyCode];
              v52 = v81;
              if (v51)
              {
                v53 = v51;
                v54 = v83;
                v78 = PKCurrencyAmountCreate(v54, v53);
                v79 = v54;

                if (v78)
                {
                  v55 = v78;
                  v56 = [v78 minimalFormattedStringValue];
                  v57 = v81;
                  if (v56)
                  {
                    v58 = v56;
                    v82 = sub_1BE052434();
                    v83 = v59;

                    goto LABEL_23;
                  }

                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

LABEL_22:
          v82 = 0;
          v83 = 0;
          goto LABEL_23;
        }
      }
    }
  }

  sub_1BD46C7E8(v6);
  sub_1BD0DE19C(v6, v10, &qword_1EBD46D68);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD46D88, &qword_1EBD46D78);
  sub_1BD0DE4F4(&qword_1EBD46D90, &qword_1EBD46D68);
  sub_1BE04F9A4();
  sub_1BD0DE53C(v6, &qword_1EBD46D68);
LABEL_12:
  sub_1BD0DE19C(v28, v24, &qword_1EBD46D80);
  v48 = v96;
  *a2 = v96;
  *(a2 + 8) = v29;
  *(a2 + 16) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D98);
  sub_1BD0DE19C(v24, a2 + *(v49 + 48), &qword_1EBD46D80);
  v50 = v48;
  sub_1BE048964();
  sub_1BD0DE53C(v28, &qword_1EBD46D80);
  sub_1BD0DE53C(v24, &qword_1EBD46D80);
}

uint64_t sub_1BD46C7E8@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for SettingsTransactionSection();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DA8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB30);
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v14);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v46 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DB0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v20);
  v55 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v46 - v24;
  v59 = v1;
  sub_1BD472618();
  v54 = v25;
  sub_1BE051A44();
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB90);
  sub_1BD0DE4F4(&qword_1EBD3DB98, &qword_1EBD3DB90);
  v56 = v19;
  sub_1BE051A44();
  v26 = *v1;
  if (([*v1 supportsFPANNotifications] & 1) != 0 || objc_msgSend(v26, sel_supportsDPANNotifications))
  {
    v27 = *(v1 + 32);
    *v6 = v26;
    type metadata accessor for TransactionsModel();
    sub_1BD471A78(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    v28 = v26;
    v29 = v27;
    sub_1BE051A94();
    *(v6 + *(v2 + 24)) = 0;
    sub_1BD471FF8(v6, v13, type metadata accessor for SettingsTransactionSection);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = *(v3 + 56);
  v47 = v13;
  v31(v13, v30, 1, v2);
  v32 = v49;
  v33 = *(v49 + 16);
  v34 = v55;
  v35 = v51;
  v33(v55, v54, v51);
  v36 = v52;
  v46 = *(v52 + 16);
  v37 = v48;
  v46(v57, v56, v48);
  v38 = v13;
  v39 = v50;
  sub_1BD0DE19C(v38, v50, &qword_1EBD46DA8);
  v40 = v53;
  v33(v53, v34, v35);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46DC0);
  v42 = v57;
  v46(&v40[*(v41 + 48)], v57, v37);
  sub_1BD0DE19C(v39, &v40[*(v41 + 64)], &qword_1EBD46DA8);
  sub_1BD0DE53C(v47, &qword_1EBD46DA8);
  v43 = *(v36 + 8);
  v43(v56, v37);
  v44 = *(v32 + 8);
  v44(v54, v35);
  sub_1BD0DE53C(v39, &qword_1EBD46DA8);
  v43(v42, v37);
  return (v44)(v55, v35);
}

uint64_t sub_1BD46CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  sub_1BD471B10(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_1BD471FF8(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  (*(v8 + 8))(v11, v7);
  sub_1BD0DE19C(v19, v15, &unk_1EBD45200);
  v22 = v26;
  sub_1BD0DE19C(v15, v26, &unk_1EBD45200);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D60) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1BD0DE53C(v19, &unk_1EBD45200);
  return sub_1BD0DE53C(v15, &unk_1EBD45200);
}

id sub_1BD46D0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

uint64_t sub_1BD46D240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v55 - v8;
  v68 = sub_1BE04E6D4();
  v66 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v68, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v58 = v15;
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC0);
  v27 = *(v26 - 8);
  v64 = v26;
  v65 = v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v55 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC8);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v67 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v55 - v36;
  sub_1BE04E194();
  v62 = sub_1BE04E1D4();
  v38 = *(v62 - 8);
  v61 = *(v38 + 56);
  v63 = v38 + 56;
  v61(v20, 0, 1, v62);
  v59 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
  v56 = v16;
  sub_1BD471B10(a1, v16, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v39 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v57 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet;
  sub_1BD471FF8(v16, v40 + v39, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  sub_1BE0516F4();
  sub_1BE04E6C4();
  sub_1BE04E7F4();
  v41 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v42 = v72;
  sub_1BE050B94();
  (*(v66 + 8))(v11, v68);
  v43 = *(v73 + 8);
  v73 += 8;
  v68 = v43;
  v43(v25, v42);
  sub_1BE052434();
  v74 = v42;
  v75 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v37;
  v45 = v64;
  sub_1BE050DE4();

  (*(v65 + 8))(v30, v45);
  sub_1BE04E1B4();
  v61(v20, 0, 1, v62);
  v46 = v56;
  sub_1BD471B10(v60, v56, v59);
  v47 = swift_allocObject();
  sub_1BD471FF8(v46, v47 + v39, v57);
  sub_1BE0516F4();
  sub_1BE052434();
  v48 = v69;
  v49 = v72;
  sub_1BE050DE4();

  v68(v25, v49);
  v50 = v67;
  sub_1BD0DE19C(v44, v67, &qword_1EBD46CC8);
  v51 = v70;
  sub_1BD0DE19C(v48, v70, &unk_1EBD45200);
  v52 = v71;
  sub_1BD0DE19C(v50, v71, &qword_1EBD46CC8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD0);
  sub_1BD0DE19C(v51, v52 + *(v53 + 48), &unk_1EBD45200);
  sub_1BD0DE53C(v48, &unk_1EBD45200);
  sub_1BD0DE53C(v44, &qword_1EBD46CC8);
  sub_1BD0DE53C(v51, &unk_1EBD45200);
  return sub_1BD0DE53C(v50, &qword_1EBD46CC8);
}

void sub_1BD46D9CC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 uniqueID];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1BE052434();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v7);

  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 removePass_];
}

__n128 sub_1BD46DAFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *a1;
  sub_1BE048964();
  sub_1BD5F8A8C(v4, v3, v7);
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v7[4];
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1BD46DB6C(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v16 = *a1;
  v17 = a1[3];
  sub_1BD471B10(a1, &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  sub_1BD471FF8(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
  v43 = 0;
  v20 = v16;
  sub_1BE048964();
  sub_1BE051694();
  v42 = v44;
  v41 = v45;
  type metadata accessor for WalletSettingsModel(0);
  v21 = [v20 paymentPass];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052434();
    sub_1BD4089F0(v22, v23, v24, v11);

    v25 = sub_1BE04AA64();
    if ((*(*(v25 - 8) + 48))(v11, 1, v25) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26 = sub_1BE04AA64();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  }

  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
  v27 = [v20 paymentPass];
  if (!v27)
  {
    v38 = sub_1BE04AA64();
    (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
    goto LABEL_10;
  }

  v28 = v27;
  v29 = sub_1BE052434();
  sub_1BD4089F0(v28, v29, v30, v7);

  v31 = sub_1BE04AA64();
  if ((*(*(v31 - 8) + 48))(v7, 1, v31) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v7, &unk_1EBD3CF70);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_11;
  }

  v11 = v7;
LABEL_8:
  sub_1BD0DE53C(v11, &unk_1EBD3CF70);
  v43 = 0;
  v32 = v20;
  sub_1BE051694();
  v33 = v44;
  v34 = v45;
  v43 = 0;
  sub_1BE051694();
  v35 = v44;
  v36 = v45;
  sub_1BE048964();
  v37 = v32;
  sub_1BE048964();
LABEL_11:
  v39 = v41;
  sub_1BE048964();
  v40 = v20;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD20FDB8(v32);
  sub_1BD20FE04(v32);
  *a2 = v40;
  *(a2 + 8) = sub_1BD472674;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v42;
  *(a2 + 40) = v39;
  *(a2 + 48) = v32;
  *(a2 + 56) = v33;
  *(a2 + 64) = v34;
  *(a2 + 72) = v35;
  *(a2 + 80) = v36;
  sub_1BD20FE04(v32);
}

uint64_t sub_1BD46E06C(uint64_t a1)
{
  v19 = sub_1BE04F3D4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0);
  sub_1BD0DE19C(a1 + *(v15 + 36), v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD46E2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  sub_1BD0DE19C(v1 + *(v12 + 24), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_1BD46E500()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v17 - v9;
  v11 = [*v0 devicePrimaryPaymentApplication];
  if (!v11 || (v12 = v11, v13 = [v11 state], v12, v13 == 6))
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
    v16 = sub_1BE04B714();
    v10 = v5;
    goto LABEL_7;
  }

  if (v13 != 7)
  {
    return 0;
  }

  (*(v2 + 104))(v10, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();

LABEL_7:
    (*(v2 + 8))(v10, v1);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_1BD46E768()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v23 - v9;
  v11 = *v0;
  v12 = [*v0 devicePrimaryPaymentApplication];
  if (!v12)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
    v17 = sub_1BE04B714();
LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v12 state];

  if (v14 == 6)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80F0], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    v19 = [v11 organizationName];
    v20 = sub_1BE052434();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1BD110550();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    v17 = sub_1BE04B714();

    goto LABEL_8;
  }

  if (v14 != 7)
  {
    return 0;
  }

  (*(v2 + 104))(v10, *MEMORY[0x1E69B80F0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();

LABEL_9:
    (*(v2 + 8))(v10, v1);
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1BD46EA58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_1BE04ECF4();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE04BD74();
  v6 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v48 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C78);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v15);
  v17 = &v48 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C80);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v18);
  v54 = &v48 - v19;
  v63 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C88);
  sub_1BD0DE4F4(&qword_1EBD46C90, &qword_1EBD46C88);
  sub_1BE0504A4();
  v50 = v2;
  v62 = v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46C98);
  v21 = sub_1BD0DE4F4(&qword_1EBD46CA0, &qword_1EBD46C70);
  v22 = sub_1BD0DE4F4(&qword_1EBD46CA8, &qword_1EBD46C98);
  v51 = v17;
  v48 = v20;
  v23 = v21;
  v24 = v22;
  sub_1BE051024();
  v25 = *(v11 + 8);
  v49 = v10;
  v26 = v10;
  v27 = v61;
  v25(v14, v26);
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80F0], v27);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    (*(v6 + 8))(v9, v27);
    v72 = v30;
    v73 = v32;
    v33 = (v50 + *(type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0) + 32));
    v34 = *v33;
    v35 = *(v33 + 1);
    v70 = v34;
    v71 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v36 = sub_1BE0516C4();
    v61 = &v48;
    MEMORY[0x1EEE9AC00](v36, v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CB0);
    v64 = v49;
    v65 = v48;
    v66 = v23;
    v67 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = sub_1BD0DDEBC();
    v47 = sub_1BD0DE4F4(&qword_1EBD46CB8, &qword_1EBD46CB0);
    v40 = v54;
    v41 = v53;
    v42 = v51;
    sub_1BE050F44();

    (*(v52 + 8))(v42, v41);
    v43 = v57;
    sub_1BE051DD4();
    v64 = v41;
    v65 = MEMORY[0x1E69E6158];
    v66 = v38;
    v67 = OpaqueTypeConformance2;
    v68 = v46;
    v69 = v47;
    swift_getOpaqueTypeConformance2();
    sub_1BD471A78(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    v44 = v56;
    v45 = v60;
    sub_1BE051134();
    (*(v59 + 8))(v43, v45);
    return (*(v55 + 8))(v40, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD46F1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D00);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16[-v10];
  v12 = *(a1 + 8);
  v13 = *a1;
  sub_1BE048964();
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D08);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D10);
  sub_1BD0DE4F4(&qword_1EBD46D18, &qword_1EBD46D10);
  sub_1BE04E2B4();
  sub_1BD0DE19C(v11, v7, &qword_1EBD46D00);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46D20);
  sub_1BD0DE19C(v7, a2 + *(v14 + 48), &qword_1EBD46D00);
  v15 = v13;
  sub_1BE048964();
  sub_1BD0DE53C(v11, &qword_1EBD46D00);
  sub_1BD0DE53C(v7, &qword_1EBD46D00);
}

uint64_t sub_1BD46F3BC@<X0>(uint64_t *a1@<X8>)
{
  sub_1BD46E500();
  if (!v2)
  {
    v3 = 0;
    v5 = 0;
    v9 = 0;
    v7 = 0;
    sub_1BD46E768();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8 & 1;
  sub_1BD0D7F18(v3, v4, v8 & 1);
  sub_1BE048C84();
  sub_1BD46E768();
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v15 = v14;
  v17 = v16 & 1;
  sub_1BD0D7F18(v11, v12, v16 & 1);
  sub_1BE048C84();
LABEL_6:
  sub_1BD1969AC(v3, v5, v9, v7);
  sub_1BD1969AC(v11, v13, v17, v15);
  sub_1BD1969F0(v3, v5, v9, v7);
  sub_1BD1969F0(v11, v13, v17, v15);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v9;
  a1[3] = v7;
  a1[4] = v11;
  a1[5] = v13;
  a1[6] = v17;
  a1[7] = v15;
  sub_1BD1969F0(v11, v13, v17, v15);
  return sub_1BD1969F0(v3, v5, v9, v7);
}

uint64_t sub_1BD46F544@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD8);
  MEMORY[0x1EEE9AC00](v64, v3);
  v63 = &v53 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
  v58 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v5);
  v56 = &v53 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CE0);
  MEMORY[0x1EEE9AC00](v55, v7);
  v54 = &v53 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CE8);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v9);
  v57 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CF0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v66 = &v53 - v13;
  v14 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v53 - v27;
  sub_1BE04FAF4();
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v60 = v28;
  sub_1BE04E424();
  LODWORD(v28) = a1[*(type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0) + 28)];
  sub_1BE04FB04();
  v67 = a1;
  if (v28 == 1)
  {
    v29 = v24;
    v53 = v24;
    sub_1BE04E424();
    v30 = sub_1BE04FAC4();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v53 - 2) = a1;
    sub_1BE04E424();
    v32 = *(v55 + 48);
    v33 = *(v17 + 16);
    v34 = v54;
    v33(v54, v29, v16);
    v33(&v34[v32], v20, v16);
    v35 = v57;
    sub_1BE04F854();
    v36 = sub_1BD0DE4F4(&qword_1EBD46CF8, &qword_1EBD46CE8);
    v37 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    v69 = v16;
    v70 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v61;
    MEMORY[0x1BFB3CC60](v35, v61, v62, v36, OpaqueTypeConformance2);
    (*(v59 + 8))(v35, v39);
    v40 = *(v17 + 8);
    v40(v20, v16);
    v40(v53, v16);
  }

  else
  {
    v41 = v24;
    sub_1BE04E424();
    v42 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    v43 = v56;
    MEMORY[0x1BFB3CC50](v41, v16, v42);
    v44 = sub_1BD0DE4F4(&qword_1EBD46CF8, &qword_1EBD46CE8);
    v69 = v16;
    v70 = v42;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v62;
    MEMORY[0x1BFB3CC70](v43, v61, v62, v44, v45);
    (*(v58 + 8))(v43, v46);
    v40 = *(v17 + 8);
    v40(v41, v16);
    v33 = *(v17 + 16);
  }

  v47 = v63;
  v48 = *(v64 + 48);
  v49 = v60;
  v33(v63, v60, v16);
  v50 = &v47[v48];
  v51 = v66;
  sub_1BD0DE19C(v66, v50, &qword_1EBD46CF0);
  sub_1BE04F854();
  sub_1BD0DE53C(v51, &qword_1EBD46CF0);
  return (v40)(v49, v16);
}

id sub_1BD46FD04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v24[2] = v10;
    v24[3] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE0513B4();
    v17 = sub_1BE050564();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21 & 1;
    *(a1 + 24) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD46FED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80F0], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v20[2] = v15;
    v20[3] = v17;
    sub_1BD471B10(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1BD471FF8(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD470130(uint64_t a1)
{
  v2 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD471B10(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD471FF8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  return sub_1BE051704();
}

uint64_t sub_1BD470274()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD46E2F4(v4);
  sub_1BE04E654();
  (*(v1 + 8))(v4, v0);
  return sub_1BD40EC88();
}

id sub_1BD470344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

id sub_1BD4704B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80F0], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v20[2] = v15;
    v20[3] = v17;
    sub_1BD471B10(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1BD471FF8(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD470708(uint64_t a1)
{
  v19 = sub_1BE04F3D4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  sub_1BD0DE19C(a1 + *(v15 + 24), v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1BD470990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v55 - v8;
  v68 = sub_1BE04E6D4();
  v66 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v68, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v58 = v15;
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC0);
  v27 = *(v26 - 8);
  v64 = v26;
  v65 = v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v55 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CC8);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v67 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v55 - v36;
  sub_1BE04E194();
  v62 = sub_1BE04E1D4();
  v38 = *(v62 - 8);
  v61 = *(v38 + 56);
  v63 = v38 + 56;
  v61(v20, 0, 1, v62);
  v59 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  v56 = v16;
  sub_1BD471B10(a1, v16, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  v39 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v57 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet;
  sub_1BD471FF8(v16, v40 + v39, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
  sub_1BE0516F4();
  sub_1BE04E6C4();
  sub_1BE04E7F4();
  v41 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  v42 = v72;
  sub_1BE050B94();
  (*(v66 + 8))(v11, v68);
  v43 = *(v73 + 8);
  v73 += 8;
  v68 = v43;
  v43(v25, v42);
  sub_1BE052434();
  v74 = v42;
  v75 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v37;
  v45 = v64;
  sub_1BE050DE4();

  (*(v65 + 8))(v30, v45);
  sub_1BE04E1B4();
  v61(v20, 0, 1, v62);
  v46 = v56;
  sub_1BD471B10(v60, v56, v59);
  v47 = swift_allocObject();
  sub_1BD471FF8(v46, v47 + v39, v57);
  sub_1BE0516F4();
  sub_1BE052434();
  v48 = v69;
  v49 = v72;
  sub_1BE050DE4();

  v68(v25, v49);
  v50 = v67;
  sub_1BD0DE19C(v44, v67, &qword_1EBD46CC8);
  v51 = v70;
  sub_1BD0DE19C(v48, v70, &unk_1EBD45200);
  v52 = v71;
  sub_1BD0DE19C(v50, v71, &qword_1EBD46CC8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46CD0);
  sub_1BD0DE19C(v51, v52 + *(v53 + 48), &unk_1EBD45200);
  sub_1BD0DE53C(v48, &unk_1EBD45200);
  sub_1BD0DE53C(v44, &qword_1EBD46CC8);
  sub_1BD0DE53C(v51, &unk_1EBD45200);
  return sub_1BD0DE53C(v50, &qword_1EBD46CC8);
}

void sub_1BD47111C(void **a1)
{
  v2 = sub_1BE04E664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD46E2F4(v6);
  sub_1BE04E654();
  (*(v3 + 8))(v6, v2);
  v7 = *a1;
  v8 = [v7 uniqueID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE052434();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v13);

    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      [v14 removePass_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD471280@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

uint64_t sub_1BD4713EC()
{
  type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD471460@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
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

uint64_t objectdestroyTm_44()
{
  v1 = (type metadata accessor for PaymentPassDetailsSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
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

unint64_t sub_1BD4717A8()
{
  result = qword_1EBD46BC0;
  if (!qword_1EBD46BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BC0);
  }

  return result;
}

unint64_t sub_1BD47182C()
{
  result = qword_1EBD46BD0;
  if (!qword_1EBD46BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BD8);
    sub_1BD4718B8();
    sub_1BD47198C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BD0);
  }

  return result;
}

unint64_t sub_1BD4718B8()
{
  result = qword_1EBD46BE0;
  if (!qword_1EBD46BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46BE8);
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BE0);
  }

  return result;
}

unint64_t sub_1BD47198C()
{
  result = qword_1EBD46BF8;
  if (!qword_1EBD46BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C00);
    sub_1BD471A78(&qword_1EBD46BF0, type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet);
    sub_1BD471A78(&qword_1EBD46C08, type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46BF8);
  }

  return result;
}

uint64_t sub_1BD471A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD471B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD471B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD471C00()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD10EE48();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WalletSettingsModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for TransactionsModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AddressInformation(319);
          if (v4 <= 0x3F)
          {
            sub_1BD170C00();
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

void sub_1BD471D1C()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalletSettingsModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD170C00();
      if (v2 <= 0x3F)
      {
        sub_1BD10EE48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD471DE8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD471E6C()
{
  result = qword_1EBD46C50;
  if (!qword_1EBD46C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C58);
    sub_1BD471EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46C50);
  }

  return result;
}

unint64_t sub_1BD471EF0()
{
  result = qword_1EBD46C60;
  if (!qword_1EBD46C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46C68);
    sub_1BD4717A8();
    sub_1BD471DE8(&qword_1EBD46BC8, &qword_1EBD46BA8, &unk_1BE0D7FB0, sub_1BD47182C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46C60);
  }

  return result;
}

uint64_t sub_1BD471FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for PaymentPassDetailsSheet.SuspendedDetailsSheet(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 24);
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

uint64_t sub_1BD47238C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = (type metadata accessor for PaymentPassDetailsSheet.PaymentDetailsSheet(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[11];
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

unint64_t sub_1BD472618()
{
  result = qword_1EBD46DB8;
  if (!qword_1EBD46DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46DB8);
  }

  return result;
}

uint64_t sub_1BD4726B0()
{
  type metadata accessor for SavingsActionSheetObserver(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD3B488);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear) = 0;
  return v0;
}

uint64_t sub_1BD47273C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for SavingsView(0);
  v41 = *(v2 - 8);
  v39 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BE04FB94();
  v37 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E58);
  MEMORY[0x1EEE9AC00](v44, v8);
  v10 = &v34 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E60);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v36 = &v34 - v12;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E68);
  sub_1BD0DE4F4(&qword_1EBD46E70, &qword_1EBD46E68);
  sub_1BE0504E4();
  v13 = sub_1BE051D74();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v14 = v56;
  v15 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E78) + 36)];
  *v15 = v13;
  v15[1] = v14;
  v16 = sub_1BE051D74();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v17 = v56;
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E80) + 36)];
  *v18 = v16;
  v18[1] = v17;
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46E88) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  v22 = &v10[*(v44 + 36)];
  *v22 = v21;
  v22[1] = 0;
  sub_1BE04FB84();
  v23 = sub_1BD47B620();
  v24 = v45;
  sub_1BE051144();
  (*(v37 + 1))(v7, v24);
  sub_1BD0DE53C(v10, &qword_1EBD46E58);
  v35 = v1;
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v51 = v56;
  v52 = v57;
  v53 = v58;
  v55 = v60;
  v54 = v59;
  v37 = type metadata accessor for SavingsView;
  v25 = v38;
  sub_1BD47C300(v1, v38, type metadata accessor for SavingsView);
  v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v27 = swift_allocObject();
  sub_1BD47B1C8(v25, v27 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46EE0);
  v47 = v44;
  v48 = v45;
  v49 = v23;
  v50 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1BD1828C4();
  sub_1BD47B9AC();
  v28 = v43;
  v29 = v40;
  v30 = v36;
  sub_1BE051124();

  (*(v42 + 8))(v30, v29);
  sub_1BD47C300(v35, v25, v37);
  v31 = swift_allocObject();
  sub_1BD47B1C8(v25, v31 + v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F40);
  v33 = (v28 + *(result + 36));
  *v33 = sub_1BD47BD10;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

void sub_1BD472E24(uint64_t a1)
{
  v2 = type metadata accessor for SavingsView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  sub_1BD472FEC();
  v7 = *(a1 + 24);
  sub_1BD47C300(a1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1BD47B1C8(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v7 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v11 = *(v7 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  *v10 = sub_1BD47B500;
  v10[1] = v9;
  sub_1BD0D4744(v11);
  v12 = (a1 + *(v3 + 76));
  v13 = *v12;
  v14 = v12[1];
  v15 = (v7 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v16 = *(v7 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  *v15 = v13;
  v15[1] = v14;
  sub_1BD0D44B8(v13);
  sub_1BD0D4744(v16);
  v17 = [objc_allocWithZone(MEMORY[0x1E69B8390]) initWithApp:1 page:3];
  sub_1BE04BEF4();
  v18 = v17;
  sub_1BE04BEF4();
}

void sub_1BD472FEC()
{
  v1 = sub_1BE051F54();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v41 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE051FA4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavingsView(0);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1BE051FC4();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  v17 = v0 + *(v6 + 72);
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    type metadata accessor for SavingsActionSheetObserver(0);
    sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
    v19 = *(sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUI26SavingsActionSheetObserver_hasPresentedSheetOnAppear);

    if ((v19 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v20 = aBlock[0];
      v21 = [aBlock[0] supportsMoneyMovement];

      if (v21)
      {
        if (v18 == 2)
        {
          v35 = v0;
          v22 = 0x100000000;
        }

        else
        {
          if (v18 != 3)
          {
            return;
          }

          v35 = v0;
          v22 = 0x4100000000;
        }

        sub_1BD0E5E8C(0, &qword_1EBD35E90);
        v34 = sub_1BE052D54();
        sub_1BE051FB4();
        sub_1BE051FF4();
        v37 = *(v37 + 8);
        v23 = v12;
        v24 = v38;
        (v37)(v23, v38);
        sub_1BD47C300(v35, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsView);
        v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v26 = swift_allocObject();
        sub_1BD47B1C8(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v26[v25]);
        v27 = &v26[(v7 + v25 + 3) & 0xFFFFFFFFFFFFFFFCLL];
        *v27 = 0;
        *(v27 + 1) = 0;
        v27[20] = BYTE4(v22);
        *(v27 + 4) = v22;
        aBlock[4] = sub_1BD47B57C;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_100;
        v28 = _Block_copy(aBlock);

        v29 = v39;
        sub_1BE051F74();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1BD47AD44(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
        v30 = v41;
        v31 = v44;
        sub_1BE053664();
        v32 = v34;
        MEMORY[0x1BFB3FD90](v16, v29, v30, v28);
        _Block_release(v28);

        (*(v43 + 8))(v30, v31);
        (*(v40 + 8))(v29, v42);
        (v37)(v16, v24);
      }
    }
  }
}

uint64_t sub_1BD4735C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v12 = a1;
  v15 = sub_1BE04D214();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsView(0);
  type metadata accessor for SavingsActionSheetObserver(0);
  sub_1BD47AD44(&qword_1EBD3AE00, type metadata accessor for SavingsActionSheetObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v19 >> 1 <= 0x7EuLL)
  {
    sub_1BE04D1E4();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Savings action sheet already set, ignoring", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v15);
  }

  else
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v12;
    v17 = v13;
    v19 = BYTE4(v14);
    v18 = v14;
    return sub_1BE04D8C4();
  }
}

uint64_t sub_1BD473854(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet);
  *v2 = 0;
  v2[1] = 0;
  sub_1BD0D4744(v3);
  v4 = (v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration);
  *v4 = 0;
  v4[1] = 0;

  return sub_1BD0D4744(v5);
}

uint64_t sub_1BD4738B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a1;
  v201 = a2;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F70);
  MEMORY[0x1EEE9AC00](v198, v3);
  v202 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v199 = &v179 - v7;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F78);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v8);
  v189 = (&v179 - v9);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F80);
  MEMORY[0x1EEE9AC00](v186, v10);
  v188 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v187 = (&v179 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F88);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v200 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v210 = &v179 - v20;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F90);
  MEMORY[0x1EEE9AC00](v182, v21);
  v181 = &v179 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F98);
  MEMORY[0x1EEE9AC00](v183, v23);
  v203 = &v179 - v24;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FA0);
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v25);
  v185 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v184 = &v179 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FA8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v197 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v214 = &v179 - v35;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FB0);
  v191 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v36);
  v180 = &v179 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FB8);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v211 = &v179 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v220 = &v179 - v43;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FC0);
  v190 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v44);
  v179 = &v179 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FC8);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v209 = &v179 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v179 - v51;
  v53 = sub_1BE04F5B4();
  v217 = v53;
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v55);
  v57 = &v179 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v57;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FD0) - 8;
  MEMORY[0x1EEE9AC00](v212, v58);
  v208 = &v179 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v179 - v62;
  v223 = a1;
  type metadata accessor for SavingsSummaryView();
  sub_1BD47AD44(&qword_1EBD46FD8, type metadata accessor for SavingsSummaryView);
  sub_1BE051A44();
  sub_1BE04F594();
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FE0) + 36);
  v65 = v54[2];
  v216 = v54 + 2;
  v221 = v65;
  v65(&v63[v64], v57, v53);
  v66 = v54[7];
  v215 = v54 + 7;
  v66(&v63[v64], 0, 1, v53);
  KeyPath = swift_getKeyPath();
  v67 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FE8) + 36)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580);
  v69 = *(v68 + 28);
  v70 = v54[4];
  v218 = v54 + 4;
  v213 = v70;
  v70(&v67[v69], v57, v53);
  v71 = v52;
  v66(&v67[v69], 0, 1, v53);
  *v67 = KeyPath;
  v72 = *(v212 + 44);
  v73 = v66;
  KeyPath = v63;
  v74 = &v63[v72];
  v75 = v68;
  *v74 = xmmword_1BE0D82A0;
  *(v74 + 1) = xmmword_1BE0D82A0;
  v74[32] = 0;
  v76 = *(v222 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v192 = v76;
  sub_1BE04D8B4();

  v77 = v224;
  LODWORD(v68) = [v224 supportsMoneyMovement];

  v79 = 1;
  v212 = v71;
  if (v68)
  {
    MEMORY[0x1EEE9AC00](v78, 1);
    *(&v179 - 2) = v222;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47070);
    sub_1BD47C204();
    v80 = v179;
    sub_1BE051A44();
    v224 = sub_1BE051404();
    v81 = sub_1BE0518D4();
    *(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470A0) + 36)) = v81;
    v82 = v219;
    sub_1BE04F594();
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470A8) + 36);
    v84 = v217;
    v221(v80 + v83, v82, v217);
    v73((v80 + v83), 0, 1, v84);
    v85 = swift_getKeyPath();
    v86 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470B0) + 36));
    v87 = *(v75 + 28);
    v88 = v82;
    v71 = v212;
    v213(v86 + v87, v88, v84);
    v89 = v86 + v87;
    v90 = v204;
    v73(v89, 0, 1, v84);
    *v86 = v85;
    v91 = v80 + *(v90 + 36);
    *v91 = xmmword_1BE0CACB0;
    *(v91 + 16) = xmmword_1BE0CACB0;
    *(v91 + 32) = 0;
    sub_1BD0DE204(v80, v71, &qword_1EBD46FC0);
    v79 = 0;
  }

  v92 = 1;
  (*(v190 + 56))(v71, v79, 1, v204);
  if (PKSavingsFDICSignageEnabled())
  {
    v224 = sub_1BE051404();
    v93 = sub_1BE0518D4();
    v94 = v219;
    sub_1BE04F594();
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47060) + 36);
    v96 = v75;
    v97 = v180;
    v98 = v217;
    v221(&v180[v95], v94, v217);
    v73(&v97[v95], 0, 1, v98);
    *v97 = 5;
    *(v97 + 2) = 16777217;
    *(v97 + 2) = v93;
    v99 = swift_getKeyPath();
    v100 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47068) + 36)];
    v101 = *(v96 + 28);
    v213(v100 + v101, v94, v98);
    v73(v100 + v101, 0, 1, v98);
    *v100 = v99;
    v102 = &v97[*(v205 + 36)];
    *v102 = xmmword_1BE0D82B0;
    *(v102 + 1) = xmmword_1BE0D82C0;
    v102[32] = 0;
    v103 = v97;
    v75 = v96;
    sub_1BD0DE204(v103, v220, &qword_1EBD46FB0);
    v92 = 0;
  }

  (*(v191 + 56))(v220, v92, 1, v205);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v224 >> 62)
  {
    v104 = sub_1BE053704();
  }

  else
  {
    v104 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v205 = v75;
  if (v104 < 1)
  {
    v121 = 1;
    v114 = v214;
    v115 = v194;
  }

  else
  {
    sub_1BD476160(v181);
    sub_1BD47BFFC();
    v105 = v203;
    sub_1BE051A24();
    v106 = v75;
    v107 = v219;
    sub_1BE04F594();
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47058) + 36);
    v109 = v217;
    v221(v105 + v108, v107, v217);
    v73((v105 + v108), 0, 1, v109);
    v110 = swift_getKeyPath();
    v111 = (v105 + *(v183 + 36));
    v112 = *(v106 + 28);
    v213(v111 + v112, v107, v109);
    v73(v111 + v112, 0, 1, v109);
    *v111 = v110;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v224 >> 62)
    {
      v113 = sub_1BE053704();
    }

    else
    {
      v113 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v114 = v214;
    v115 = v194;

    if (v113 <= 1)
    {
      v116 = 0x4024000000000000;
    }

    else
    {
      v116 = 0xC01C000000000000;
    }

    v117 = v185;
    sub_1BD0DE204(v203, v185, &qword_1EBD46F98);
    v118 = v117 + *(v115 + 36);
    *v118 = xmmword_1BE0D82D0;
    *(v118 + 16) = v116;
    *(v118 + 24) = 0xC030000000000000;
    *(v118 + 32) = 0;
    v119 = v117;
    v120 = v184;
    sub_1BD0DE204(v119, v184, &qword_1EBD46FA0);
    sub_1BD0DE204(v120, v114, &qword_1EBD46FA0);
    v121 = 0;
  }

  v122 = v221;
  v206 = v73;
  (*(v193 + 56))(v114, v121, 1, v115);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v123 = v224;
  v124 = [v224 state];

  if (v124 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v125 = v224, v126 = [v224 state], v125, v126 == 2))
  {
    v127 = *(v222 + *(type metadata accessor for SavingsView(0) + 44));
    type metadata accessor for TransactionList();
    sub_1BD47AD44(&qword_1EBD3AFF8, type metadata accessor for TransactionList);
    v128 = v127;
    v204 = sub_1BE04E954();
    v130 = v129;
    v131 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(0);
    v132 = [*&v128[OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher] paymentDataProvider];
    v133 = v217;
    v134 = [objc_allocWithZone(PKPaymentTransactionDetailsFactory) initWithContactResolver:0 peerPaymentWebService:0 paymentServiceDataProvider:v132 detailViewStyle:v131 context:0];
    swift_unknownObjectRelease();
    v135 = v128;
    v136 = sub_1BE04E954();
    v138 = v137;
    v139 = v219;
    sub_1BE04F594();
    v140 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47020) + 36);
    v141 = v187;
    v221(v187 + v140, v139, v133);
    v142 = v206;
    v206(v141 + v140, 0, 1, v133);
    *v141 = v136;
    v141[1] = v138;
    v141[2] = 0;
    v143 = swift_getKeyPath();
    v144 = (v141 + *(v186 + 36));
    v145 = *(v205 + 28);
    v146 = v139;
    v147 = v213;
    v213(v144 + v145, v146, v133);
    v142(v144 + v145, 0, 1, v133);
    *v144 = v143;
    v148 = v188;
    sub_1BD0DE19C(v141, v188, &qword_1EBD46F80);
    v149 = v189;
    *v189 = v204;
    v149[1] = v130;
    v149[2] = 0;
    v149[3] = v134;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47028);
    sub_1BD0DE19C(v148, v149 + *(v150 + 48), &qword_1EBD46F80);
    v151 = v130;
    v152 = v134;
    sub_1BD0DE53C(v141, &qword_1EBD46F80);
    v153 = v148;
    v154 = v147;
    sub_1BD0DE53C(v153, &qword_1EBD46F80);

    v155 = v149;
    v122 = v221;
    v156 = v210;
    sub_1BD0DE204(v155, v210, &qword_1EBD46F78);
    v157 = 0;
  }

  else
  {
    v157 = 1;
    v156 = v210;
    v154 = v213;
  }

  v158 = (*(v195 + 56))(v156, v157, 1, v196);
  MEMORY[0x1EEE9AC00](v158, v159);
  *(&v179 - 2) = v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46FF0);
  sub_1BD47BF40();
  v160 = v199;
  sub_1BE051A44();
  v224 = sub_1BE051404();
  v161 = sub_1BE0518D4();
  *(v160 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47000) + 36)) = v161;
  v162 = v219;
  sub_1BE04F594();
  v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47008) + 36);
  v164 = v217;
  v122(v160 + v163, v162, v217);
  v165 = v206;
  v206((v160 + v163), 0, 1, v164);
  v166 = swift_getKeyPath();
  v167 = (v160 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47010) + 36));
  v168 = *(v205 + 28);
  v154(v167 + v168, v162, v164);
  v165(v167 + v168, 0, 1, v164);
  *v167 = v166;
  v169 = v160 + *(v198 + 36);
  *v169 = xmmword_1BE0D82E0;
  *(v169 + 16) = xmmword_1BE0D82F0;
  *(v169 + 32) = 0;
  v170 = v208;
  sub_1BD0DE19C(KeyPath, v208, &qword_1EBD46FD0);
  v171 = v209;
  sub_1BD0DE19C(v212, v209, &qword_1EBD46FC8);
  v172 = v211;
  sub_1BD0DE19C(v220, v211, &qword_1EBD46FB8);
  v173 = v197;
  sub_1BD0DE19C(v214, v197, &qword_1EBD46FA8);
  v174 = v200;
  sub_1BD0DE19C(v156, v200, &qword_1EBD46F88);
  v175 = v202;
  sub_1BD0DE19C(v160, v202, &qword_1EBD46F70);
  v176 = v201;
  sub_1BD0DE19C(v170, v201, &qword_1EBD46FD0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47018);
  sub_1BD0DE19C(v171, v176 + v177[12], &qword_1EBD46FC8);
  sub_1BD0DE19C(v172, v176 + v177[16], &qword_1EBD46FB8);
  sub_1BD0DE19C(v173, v176 + v177[20], &qword_1EBD46FA8);
  sub_1BD0DE19C(v174, v176 + v177[24], &qword_1EBD46F88);
  sub_1BD0DE19C(v175, v176 + v177[28], &qword_1EBD46F70);
  sub_1BD0DE53C(v160, &qword_1EBD46F70);
  sub_1BD0DE53C(v210, &qword_1EBD46F88);
  sub_1BD0DE53C(v214, &qword_1EBD46FA8);
  sub_1BD0DE53C(v220, &qword_1EBD46FB8);
  sub_1BD0DE53C(v212, &qword_1EBD46FC8);
  sub_1BD0DE53C(KeyPath, &qword_1EBD46FD0);
  sub_1BD0DE53C(v175, &qword_1EBD46F70);
  sub_1BD0DE53C(v174, &qword_1EBD46F88);
  sub_1BD0DE53C(v173, &qword_1EBD46FA8);
  sub_1BD0DE53C(v211, &qword_1EBD46FB8);
  sub_1BD0DE53C(v209, &qword_1EBD46FC8);
  return sub_1BD0DE53C(v208, &qword_1EBD46FD0);
}

uint64_t sub_1BD475154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = *(a1 + 8);
  v13 = type metadata accessor for SavingsView(0);
  v14 = *(a1 + *(v13 + 48));
  v15 = *(a1 + *(v13 + 52));
  *a2 = v12;
  type metadata accessor for AccountBalanceHistory(0);
  sub_1BD47AD44(&qword_1EBD47108, type metadata accessor for AccountBalanceHistory);
  v16 = v12;
  v17 = v14;
  v18 = v15;
  a2[1] = sub_1BE04E954();
  a2[2] = v19;
  a2[3] = v18;
  type metadata accessor for SavingsSummaryView();
  v20 = type metadata accessor for AccountBalance(0);
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1BD0DE19C(v11, v7, &qword_1EBD40EC8);
  sub_1BE051694();
  return sub_1BD0DE53C(v11, &qword_1EBD40EC8);
}

uint64_t sub_1BD47532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47098);
  MEMORY[0x1EEE9AC00](v34, v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470B8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47088);
  MEMORY[0x1EEE9AC00](v33, v14);
  v16 = &v32 - v15;
  v17 = sub_1BE04EB24();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SavingsView(0);
  sub_1BD70A2A0(v21);
  v22 = sub_1BE04EB14();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    *v16 = sub_1BE04F7B4();
    *(v16 + 1) = 0x4030000000000000;
    v16[16] = 0;
    sub_1BD475DD0(a1, sub_1BD47C2E8, &unk_1F3BA84D0, sub_1BD47C2F4, v13);
    sub_1BE051CD4();
    v23 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D0) + 44)];
    sub_1BE04EE54();
    sub_1BD0DE204(v13, v23, &qword_1EBD470C0);
    v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D8) + 36));
    v25 = v41;
    v24[4] = v40;
    v24[5] = v25;
    v24[6] = v42;
    v26 = v37;
    *v24 = v36;
    v24[1] = v26;
    v27 = v39;
    v24[2] = v38;
    v24[3] = v27;
    v28 = &qword_1EBD47088;
    sub_1BD0DE19C(v16, v9, &qword_1EBD47088);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098);
    sub_1BE04F9A4();
    v29 = v16;
  }

  else
  {
    *v5 = sub_1BE050194();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C8);
    sub_1BD475828(a1, &v5[*(v30 + 44)]);
    v28 = &qword_1EBD47098;
    sub_1BD0DE19C(v5, v9, &qword_1EBD47098);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD47080, &qword_1EBD47088);
    sub_1BD0DE4F4(&qword_1EBD47090, &qword_1EBD47098);
    sub_1BE04F9A4();
    v29 = v5;
  }

  return sub_1BD0DE53C(v29, v28);
}

uint64_t sub_1BD475828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v52 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47088);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470E8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470F0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470F8);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v52 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v52 - v34;
  *v17 = 0x4030000000000000;
  v17[8] = 0;
  sub_1BD475DD0(a1, sub_1BD47C5C0, &unk_1F3BA8570, sub_1BD47C5C4, &v17[*(v14 + 52)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v17, v22, &qword_1EBD470E8);
  v36 = &v22[*(v19 + 44)];
  v37 = v60;
  *(v36 + 4) = v59;
  *(v36 + 5) = v37;
  *(v36 + 6) = v61;
  v38 = v56;
  *v36 = v55;
  *(v36 + 1) = v38;
  v39 = v58;
  *(v36 + 2) = v57;
  *(v36 + 3) = v39;
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v22, v31, &qword_1EBD470F0);
  v41 = &v31[*(v24 + 44)];
  *v41 = KeyPath;
  *(v41 + 1) = 1;
  v41[16] = 0;
  sub_1BD0DE204(v31, v35, &qword_1EBD470F8);
  *v12 = sub_1BE04F7B4();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v42 = v52;
  sub_1BD475DD0(a1, sub_1BD47C5C0, &unk_1F3BA8520, sub_1BD47C5C4, v52);
  sub_1BE051CD4();
  v43 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D0) + 44)];
  sub_1BE04EE54();
  sub_1BD0DE204(v42, v43, &qword_1EBD470C0);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470D8) + 36));
  v45 = v67;
  v44[4] = v66;
  v44[5] = v45;
  v44[6] = v68;
  v46 = v63;
  *v44 = v62;
  v44[1] = v46;
  v47 = v65;
  v44[2] = v64;
  v44[3] = v47;
  sub_1BD0DE19C(v35, v27, &qword_1EBD470F8);
  v48 = v53;
  sub_1BD0DE19C(v12, v53, &qword_1EBD47088);
  v49 = v54;
  sub_1BD0DE19C(v27, v54, &qword_1EBD470F8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47100);
  sub_1BD0DE19C(v48, v49 + *(v50 + 48), &qword_1EBD47088);
  sub_1BD0DE53C(v12, &qword_1EBD47088);
  sub_1BD0DE53C(v35, &qword_1EBD470F8);
  sub_1BD0DE53C(v48, &qword_1EBD47088);
  return sub_1BD0DE53C(v27, &qword_1EBD470F8);
}

uint64_t sub_1BD475DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v43 = a2;
  v48 = a5;
  v6 = type metadata accessor for SavingsView(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v40[1] = v9;
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MoneyTransferButton();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v45 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v44 = v40 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v40 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v40 - v24;
  v26 = *(a1 + 8);
  v41 = type metadata accessor for SavingsView;
  v42 = a1;
  sub_1BD47C300(a1, v10, type metadata accessor for SavingsView);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  sub_1BD47B1C8(v10, v28 + v27);
  *v25 = 1;
  v40[0] = type metadata accessor for AccountModel();
  sub_1BD47AD44(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v29 = v26;
  *(v25 + 1) = sub_1BE04E954();
  *(v25 + 2) = v30;
  *(v25 + 3) = v43;
  *(v25 + 4) = v28;
  v31 = *(v12 + 40);
  *&v25[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  sub_1BD47C300(v42, v10, v41);
  v32 = swift_allocObject();
  sub_1BD47B1C8(v10, v32 + v27);
  *v21 = 0;
  *(v21 + 1) = sub_1BE04E954();
  *(v21 + 2) = v33;
  *(v21 + 3) = v47;
  *(v21 + 4) = v32;
  v34 = *(v12 + 40);
  *&v21[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v44;
  sub_1BD47C300(v25, v44, type metadata accessor for MoneyTransferButton);
  v36 = v45;
  sub_1BD47C300(v21, v45, type metadata accessor for MoneyTransferButton);
  v37 = v48;
  sub_1BD47C300(v35, v48, type metadata accessor for MoneyTransferButton);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD470E0);
  sub_1BD47C300(v36, v37 + *(v38 + 48), type metadata accessor for MoneyTransferButton);
  sub_1BD183810(v21);
  sub_1BD183810(v25);
  sub_1BD183810(v36);
  return sub_1BD183810(v35);
}

id sub_1BD476160@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_1BE04BD74();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v72 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v71, v5);
  v70 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = v60 - v9;
  v10 = type metadata accessor for SavingsView(0);
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v67 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47050);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v60 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47040);
  MEMORY[0x1EEE9AC00](v61, v18);
  v62 = v60 - v19;
  v20 = v1[2];
  v21 = v1[3];
  v22 = type metadata accessor for SavingsDashboardMessageSource(0);
  v23 = sub_1BD47AD44(&qword_1EBD3BD50, type metadata accessor for SavingsDashboardMessageSource);
  v60[2] = v21;
  v60[3] = v20;
  v60[0] = v22;
  v24 = sub_1BE04E964();
  swift_getKeyPath();
  v60[1] = v23;
  sub_1BE04E974();

  v66 = v75;
  v65 = v76;
  v64 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v25 = v75;
  type metadata accessor for FCCStepUpModel(0);
  sub_1BD47AD44(&qword_1EBD46E28, type metadata accessor for FCCStepUpModel);
  v26 = v17;
  sub_1BE04E3D4();
  swift_getKeyPath();
  sub_1BE04E974();

  v27 = v75;
  v28 = v76;
  LOBYTE(v21) = BYTE8(v76);
  v29 = v67;
  sub_1BD47C300(v1, v67, type metadata accessor for SavingsView);
  v30 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v31 = swift_allocObject();
  sub_1BD47B1C8(v29, v31 + v30);
  v32 = v26 + *(v14 + 44);
  *v32 = v25;
  *(v32 + 8) = v27;
  *(v32 + 16) = v28;
  *(v32 + 24) = v21;
  *(v32 + 32) = sub_1BD47C368;
  *(v32 + 40) = v31;
  v33 = type metadata accessor for SavingsFCCStepUpPresenter();
  v34 = type metadata accessor for FeatureError(0);
  v35 = v69;
  (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
  sub_1BD0DE19C(v35, v70, &qword_1EBD416C0);
  sub_1BE051694();
  sub_1BD0DE53C(v35, &qword_1EBD416C0);
  v36 = v32 + *(v33 + 32);
  *v36 = sub_1BD3633F4;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *v26 = v66;
  *(v26 + 8) = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v37 = v75;
  if (v75)
  {
    v38 = [v75 contactNumber];

    if (v38)
    {
      v37 = sub_1BE052434();
      v40 = v39;

      goto LABEL_6;
    }

    v37 = 0;
  }

  v40 = 0;
LABEL_6:
  v42 = v73;
  v41 = v74;
  v43 = v72;
  (*(v73 + 104))(v72, *MEMORY[0x1E69B80E0], v74);
  result = PKPassKitBundle();
  if (result)
  {
    v45 = result;
    v46 = sub_1BE04B6F4();
    v48 = v47;

    (*(v42 + 8))(v43, v41);
    v49 = sub_1BE04E964();
    swift_getKeyPath();
    sub_1BE04E974();

    v50 = v75;
    v51 = v76;
    v52 = BYTE8(v76);
    v53 = v62;
    sub_1BD0DE204(v26, v62, &qword_1EBD47050);
    v54 = v53 + *(v61 + 36);
    *v54 = v37;
    *(v54 + 8) = v40;
    *(v54 + 16) = v46;
    *(v54 + 24) = v48;
    *(v54 + 32) = 0;
    *(v54 + 40) = v50;
    *(v54 + 48) = v51;
    *(v54 + 56) = v52;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46F90);
    v56 = v63;
    v57 = (v63 + *(v55 + 36));
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v59 = sub_1BE0505C4();
    (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
    *v57 = swift_getKeyPath();
    return sub_1BD0DE204(v53, v56, &qword_1EBD47040);
  }

  else
  {
    __break(1u);
  }

  return result;
}