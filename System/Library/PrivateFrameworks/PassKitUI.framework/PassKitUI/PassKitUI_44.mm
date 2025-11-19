uint64_t sub_1BD4E6124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  LOBYTE(v43) = 0;
  sub_1BD4E6448(a1, v30);
  *&v29[7] = v30[0];
  *&v29[23] = v30[1];
  *&v29[39] = v30[2];
  *&v29[55] = v30[3];
  v5 = v43;
  v6 = sub_1BE04F7D4();
  LOBYTE(v20[0]) = 1;
  sub_1BD4E6AA0(&v43);
  v35 = v44[3];
  v36[0] = v44[4];
  *(v36 + 9) = *(&v44[4] + 9);
  v31 = v43;
  v32 = v44[0];
  v33 = v44[1];
  v34 = v44[2];
  v37[0] = v43;
  v37[1] = v44[0];
  v37[2] = v44[1];
  v37[3] = v44[2];
  v37[4] = v44[3];
  v38[0] = v44[4];
  *(v38 + 9) = *(&v44[4] + 9);
  sub_1BD0DE19C(&v31, &v41, &qword_1EBD48430);
  sub_1BD0DE53C(v37, &qword_1EBD48430);
  *(&v28[3] + 7) = v34;
  *(&v28[4] + 7) = v35;
  *(&v28[5] + 7) = v36[0];
  v28[6] = *(v36 + 9);
  *(v28 + 7) = v31;
  *(&v28[1] + 7) = v32;
  *(&v28[2] + 7) = v33;
  *&v39 = v4;
  *(&v39 + 1) = 0x4010000000000000;
  v40[0] = v5;
  *&v40[1] = *v29;
  *&v40[64] = *&v29[63];
  *&v40[49] = *&v29[48];
  *&v40[33] = *&v29[32];
  *&v40[17] = *&v29[16];
  v41 = v6;
  v42[0] = 1;
  v7 = v28[1];
  *&v42[33] = v28[2];
  v8 = v28[0];
  *&v42[17] = v28[1];
  *&v42[1] = v28[0];
  v9 = v28[5];
  *&v42[97] = *(v36 + 9);
  v10 = v28[4];
  *&v42[81] = v28[5];
  v11 = v28[3];
  *&v42[65] = v28[4];
  v12 = v28[2];
  *&v42[49] = v28[3];
  *&v26[7] = v6;
  *&v26[71] = *&v42[48];
  *&v26[55] = *&v42[32];
  *&v26[39] = *&v42[16];
  *&v26[23] = *v42;
  v26[135] = BYTE8(v36[1]);
  *&v26[119] = *&v42[96];
  *&v26[103] = *&v42[80];
  *&v26[87] = *&v42[64];
  v13 = *&v40[32];
  *(a2 + 32) = *&v40[16];
  *(a2 + 48) = v13;
  *(a2 + 64) = *&v40[48];
  v14 = *v40;
  *a2 = v39;
  *(a2 + 16) = v14;
  v15 = *&v26[16];
  *(a2 + 97) = *v26;
  v16 = *&v26[80];
  *(a2 + 161) = *&v26[64];
  v17 = *&v26[32];
  *(a2 + 145) = *&v26[48];
  *(a2 + 129) = v17;
  *(a2 + 113) = v15;
  v18 = *&v26[96];
  *(a2 + 209) = *&v26[112];
  *(a2 + 193) = v18;
  *(a2 + 177) = v16;
  *(&v44[3] + 1) = v11;
  *(&v44[4] + 1) = v10;
  v27 = 1;
  *(a2 + 80) = *&v40[64];
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 225) = *&v26[128];
  v43 = v6;
  LOBYTE(v44[0]) = 1;
  *(&v44[5] + 1) = v9;
  *(&v44[6] + 1) = v28[6];
  *(v44 + 1) = v8;
  *(&v44[1] + 1) = v7;
  *(&v44[2] + 1) = v12;
  sub_1BD0DE19C(&v39, v20, &qword_1EBD48438);
  sub_1BD0DE19C(&v41, v20, &qword_1EBD48440);
  sub_1BD0DE53C(&v43, &qword_1EBD48440);
  v20[0] = v4;
  v20[1] = 0x4010000000000000;
  v21 = v5;
  v23 = *&v29[16];
  v24 = *&v29[32];
  v25[0] = *&v29[48];
  *(v25 + 15) = *&v29[63];
  v22 = *v29;
  return sub_1BD0DE53C(v20, &qword_1EBD48438);
}

uint64_t sub_1BD4E6448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = a1;
  v87 = sub_1BD4E37EC(&selRef_highTemperature);
  v88 = v8;
  v77 = sub_1BD0DDEBC();
  v9 = sub_1BE0506C4();
  v11 = v10;
  v13 = v12;
  sub_1BE050294();
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;

  sub_1BD0DDF10(v9, v11, v13 & 1);

  v76 = objc_opt_self();
  v19 = [v76 labelColor];
  v87 = sub_1BE0511C4();
  v20 = sub_1BE050574();
  v22 = v21;
  v24 = v23;
  v75[1] = v25;
  sub_1BD0DDF10(v14, v16, v18 & 1);

  sub_1BE04F604();
  sub_1BE04F5F4();
  v26 = sub_1BE052404();
  v27 = PKLocalizedTicketingString(v26);

  if (v27)
  {
    sub_1BE052434();
  }

  sub_1BE04F5E4();

  sub_1BE04F5F4();
  sub_1BD4E37EC(&selRef_highTemperature);
  sub_1BE04F5E4();

  sub_1BE04F5F4();
  sub_1BE04F634();
  v28 = sub_1BE050694();
  v30 = v29;
  v32 = v31;
  v33 = sub_1BE050584();
  v79 = v34;
  v80 = v33;
  v78 = v35;
  v81 = v36;
  sub_1BD0DDF10(v28, v30, v32 & 1);

  sub_1BD0DDF10(v20, v22, v24 & 1);

  v87 = sub_1BD4E37EC(&selRef_lowTemperature);
  v88 = v37;
  v38 = sub_1BE0506C4();
  v40 = v39;
  v42 = v41;
  sub_1BE050294();
  v43 = sub_1BE0505F4();
  v45 = v44;
  v47 = v46;

  sub_1BD0DDF10(v38, v40, v42 & 1);

  v48 = [v76 secondaryLabelColor];
  v87 = sub_1BE0511C4();
  v76 = sub_1BE050574();
  v50 = v49;
  LODWORD(v77) = v51;
  v53 = v52;
  sub_1BD0DDF10(v43, v45, v47 & 1);

  sub_1BE04F604();
  sub_1BE04F5F4();
  v54 = sub_1BE052404();
  v55 = PKLocalizedTicketingString(v54);

  if (v55)
  {
    sub_1BE052434();
  }

  sub_1BE04F5E4();

  sub_1BE04F5F4();
  sub_1BD4E37EC(&selRef_lowTemperature);
  sub_1BE04F5E4();

  sub_1BE04F5F4();
  sub_1BE04F634();
  v56 = sub_1BE050694();
  v58 = v57;
  v60 = v59;
  v61 = v77;
  v62 = v76;
  v63 = sub_1BE050584();
  v65 = v64;
  v82 = v53;
  v66 = v62;
  LODWORD(v84) = v67;
  v69 = v68;
  sub_1BD0DDF10(v56, v58, v60 & 1);

  sub_1BD0DDF10(v66, v50, v61 & 1);

  v70 = v78 & 1;
  v85 = v78 & 1;
  LOBYTE(v87) = v78 & 1;
  LOBYTE(v56) = v84 & 1;
  v86 = v84 & 1;
  v71 = v83;
  v73 = v79;
  v72 = v80;
  *v83 = v80;
  v71[1] = v73;
  *(v71 + 16) = v70;
  v71[3] = v81;
  v71[4] = v63;
  v71[5] = v65;
  *(v71 + 48) = v56;
  v71[7] = v69;
  sub_1BD0D7F18(v72, v73, v70);
  sub_1BE048C84();
  sub_1BD0D7F18(v63, v65, v56);
  sub_1BE048C84();
  sub_1BD0DDF10(v63, v65, v56);

  sub_1BD0DDF10(v72, v73, v85);
}

uint64_t sub_1BD4E6AA0@<X0>(uint64_t a1@<X8>)
{
  sub_1BD4E3AE4();
  if (v1)
  {
    sub_1BD0DDEBC();
    v2 = sub_1BE0506C4();
    v4 = v3;
    v6 = v5;
    sub_1BE050454();
    v7 = sub_1BE0505F4();
    v9 = v8;
    v11 = v10;

    sub_1BD0DDF10(v2, v4, v6 & 1);

    sub_1BE050384();
    v12 = sub_1BE050544();
    v14 = v13;
    LOBYTE(v4) = v15;
    sub_1BD0DDF10(v7, v9, v11 & 1);

    v16 = [objc_opt_self() secondaryLabelColor];
    sub_1BE0511C4();
    v17 = sub_1BE050574();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1BD0DDF10(v12, v14, v4 & 1);

    KeyPath = swift_getKeyPath();
    v55 = v19;
    v56 = v17;
    v51 = v21 & 1;
    sub_1BD0D7F18(v17, v19, v21 & 1);
    v54 = v23;
    sub_1BE048C84();
    v53 = KeyPath;
    sub_1BE048964();
    v50 = 1;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v50 = 0;
    v51 = 0;
    v53 = 0;
    v54 = 0;
  }

  sub_1BD4E3E50();
  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  v29 = v28;
  sub_1BE050454();
  v30 = sub_1BE0505F4();
  v32 = v31;
  v34 = v33;

  sub_1BD0DDF10(v25, v27, v29 & 1);

  sub_1BE050384();
  v35 = sub_1BE050544();
  v37 = v36;
  v39 = v38;
  sub_1BD0DDF10(v30, v32, v34 & 1);

  v40 = [objc_opt_self() secondaryLabelColor];
  sub_1BE0511C4();
  v48 = sub_1BE050574();
  v49 = v41;
  v43 = v42;
  v45 = v44;
  sub_1BD0DDF10(v35, v37, v39 & 1);

  v46 = swift_getKeyPath();
  sub_1BD2B5270(v56, v55, v51, v54);
  v45 &= 1u;
  sub_1BD0D7F18(v48, v43, v45);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD2B52C0(v56, v55, v51, v54);
  *a1 = v56;
  *(a1 + 8) = v55;
  *(a1 + 16) = v51;
  *(a1 + 24) = v54;
  *(a1 + 32) = v53;
  *(a1 + 40) = v50;
  *(a1 + 48) = 0;
  *(a1 + 56) = v48;
  *(a1 + 64) = v43;
  *(a1 + 72) = v45;
  *(a1 + 80) = v49;
  *(a1 + 88) = v46;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  sub_1BD0DDF10(v48, v43, v45);

  return sub_1BD2B52C0(v56, v55, v51, v54);
}

void *static TileContextWeatherViewHost.create(weatherInformation:)(void *a1)
{
  v2 = type metadata accessor for TileContextWeatherView();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - v8;
  *(&v15 - v8) = a1;
  v11 = *(v10 + 28);
  *&v9[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483C8));
  sub_1BD4E70A4(v9, v5);
  v12 = a1;
  v13 = sub_1BE04EAC4();
  sub_1BD4E7108(v9);
  [v13 setUserInteractionEnabled_];
  return v13;
}

uint64_t type metadata accessor for TileContextWeatherView()
{
  result = qword_1EBD483D0;
  if (!qword_1EBD483D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4E70A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileContextWeatherView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E7108(uint64_t a1)
{
  v2 = type metadata accessor for TileContextWeatherView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TileContextWeatherViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextWeatherViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextWeatherViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextWeatherViewHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextWeatherViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4E73D0()
{
  sub_1BD0E5E8C(319, &qword_1EBD483E0);
  if (v0 <= 0x3F)
  {
    sub_1BD249694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD4E7480()
{
  result = qword_1EBD483F8;
  if (!qword_1EBD483F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD483F0);
    sub_1BD0DE4F4(&qword_1EBD48400, &qword_1EBD48408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD483F8);
  }

  return result;
}

uint64_t sub_1BD4E7538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if ((a7 & 0xFF00) != 0xFE00)
  {
    return sub_1BD4E7550(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1BD4E7550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if (HIBYTE(a7) != 255)
  {
    return sub_1BD4E7568(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 1);
  }

  return result;
}

uint64_t sub_1BD4E7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  if (a8)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  else
  {
    v10 = a7 & 1;

    return sub_1BD4E75DC(a1, a2, a3, a4, a5, a6, v10);
  }
}

uint64_t sub_1BD4E75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_1BE048964();
  }

  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();

  return sub_1BE048964();
}

uint64_t sub_1BD4E7670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if ((a7 & 0xFF00) != 0xFE00)
  {
    return sub_1BD4E7688(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1BD4E7688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if (HIBYTE(a7) != 255)
  {
    return sub_1BD4E76A0(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 1);
  }

  return result;
}

uint64_t sub_1BD4E76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  if (a8)
  {
  }

  else
  {
    v10 = a7 & 1;

    return sub_1BD4E7710(a1, a2, a3, a4, a5, a6, v10);
  }
}

uint64_t sub_1BD4E7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1BD4E77A4()
{
  result = qword_1EBD48470;
  if (!qword_1EBD48470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48478);
    sub_1BD0DE4F4(&qword_1EBD43E30, &qword_1EBD43E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48470);
  }

  return result;
}

unint64_t sub_1BD4E785C()
{
  result = qword_1EBD48498;
  if (!qword_1EBD48498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48488);
    sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &unk_1BE0DC070, sub_1BD4E77A4);
    sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &unk_1BE0DC078, sub_1BD324274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48498);
  }

  return result;
}

uint64_t sub_1BD4E7940(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD4E79F0()
{
  result = qword_1EBD484A8;
  if (!qword_1EBD484A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51200);
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD484A8);
  }

  return result;
}

void sub_1BD4E7B7C(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductsViewController) initWithProvisioningController:v11 context:v12 setupDelegate:0 product:*(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product)];

  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController) = v13;
  v15 = v13;

  if (v15)
  {
    [v15 setFlowDelegate_];
    sub_1BE052434();
    v16 = sub_1BE04BB74();

    [v15 setReporter_];

    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_109;
    v17 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 preflightWithCompletion_];
    _Block_release(v17);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD4E7DD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4E7E10(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4E7E60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD4E7F08(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_context);
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_product);
  objc_allocWithZone(type metadata accessor for PaymentSetupPurchaseServiceProductFlowItem());
  sub_1BE048964();
  v9 = sub_1BD4FC05C(v4, v5, a1);
  v6 = v2 + OBJC_IVAR____TtC9PassKitUI43PaymentSetupServiceProviderProductsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAA578, v9, &off_1F3BAB238, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD4E8028(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1BD4E8084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1BD4E80E4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = a2;
    sub_1BD0E8CBC();
    v5 = a2;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    [v6 setContactType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BE0B7020;
    *(v7 + 32) = v6;
    sub_1BD0E8CBC();
    v5 = v6;
  }

  v8 = v5;
  v9 = sub_1BE052724();

  [v3 setContacts_];

  return v3;
}

void sub_1BD4E8228(void *a1)
{
  v2 = *v1;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = v2;
    sub_1BD0E8CBC();
    v5 = v2;
    v6 = sub_1BE052724();

    [a1 setContacts_];
  }
}

uint64_t sub_1BD4E8304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4E844C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD4E8368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4E844C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4E83CC()
{
  sub_1BD4E844C();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD4E83F8()
{
  result = qword_1EBD48550;
  if (!qword_1EBD48550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48550);
  }

  return result;
}

unint64_t sub_1BD4E844C()
{
  result = qword_1EBD48558;
  if (!qword_1EBD48558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48558);
  }

  return result;
}

void sub_1BD4E84A0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
  v8 = PKPassKitBundle();
  if (v8)
  {
    v9 = v8;
    sub_1BE04B6F4();

    (*(v3 + 8))(v7, v2);
    v22 = ObjectType;
    v21[0] = v0;
    v10 = v0;
    v11 = sub_1BE052404();

    v12 = v22;
    if (v22)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13, v13);
      v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_1BE053B74();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v11 style:0 target:v18 action:sel_doneButtonPressed];

    swift_unknownObjectRelease();
    [v19 setEnabled_];
    v20 = [v10 navigationItem];
    [v20 setRightBarButtonItem:v19 animated:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD4E87B8(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter];
  if (v3)
  {
    [v3 reportViewAppeared];
  }

  result = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView];
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

void sub_1BD4E888C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, sel_loadView, v6);
  v9 = [v1 explanationView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential];
  v13 = [v12 configuration];
  if (!v13)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v65 = v10;
  v15 = [v13 provisioningTemplateIdentifier];

  if (v15)
  {
    v16 = sub_1BE052434();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v63 = sub_1BD4E8F48(0xD000000000000029, 0x80000001BE12C760, v11, v16, v18);
  v64 = v11;
  v20 = v19;
  v21 = [v12 configuration];
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v23 = [v21 issuerIdentifier];

  sub_1BE04BB94();
  v24 = sub_1BE04B8E4();
  (*(v4 + 8))(v8, v3);
  v25 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

  v26 = sub_1BE052434();
  v28 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BE0B69E0;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1BD110550();
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  sub_1BE048C84();
  sub_1BE052454();
  v30 = sub_1BE052404();

  v31 = v65;
  [v65 setTitleText_];

  [v31 setTitleHyphenationFactor_];
  v32 = v64;
  v62 = v16;
  v63 = v18;
  v33 = v16;
  v34 = v31;
  sub_1BD4E8F48(0xD000000000000028, 0x80000001BE12C790, v64, v33, v18);
  v35 = sub_1BE052404();

  [v31 setBodyText_];

  v36 = [v31 dockView];
  if (!v36)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = v36;
  v61[1] = v20;
  v38 = v32;
  [v36 setPrimaryButton_];

  [v1 setPrivacyLinkController_];
  v39 = PKCredentialPairingPincodeLengthOverride();
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = 8;
  }

  v41 = [objc_allocWithZone(PKPinCodeField) initWithPinCodeLength:v40 delegate:v1];
  if (!v41)
  {
    goto LABEL_20;
  }

  v42 = v41;
  [v41 setHyphenatePinCode_];
  [v31 setBodyView_];
  [v31 setBodyViewPadding_];
  aBlock[4] = sub_1BD4E9108;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4E9164;
  aBlock[3] = &block_descriptor_110;
  v43 = _Block_copy(aBlock);
  [v31 setBodyViewThatFitsOverride_];
  _Block_release(v43);
  v44 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView];
  *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_pinCodeView] = v42;
  v45 = v42;

  v46 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
  [*&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel] setNumberOfLines_];
  v47 = *MEMORY[0x1E69DDD10];
  v48 = *MEMORY[0x1E69DDC70];
  v49 = *&v1[v46];
  v50 = PKFontForDefaultDesign(v47, v48);
  [v49 setFont_];

  v51 = *&v1[v46];
  v52 = objc_opt_self();
  v53 = v51;
  v54 = [v52 systemGrayColor];
  [v53 setTextColor_];

  [*&v1[v46] setTextAlignment_];
  v55 = *&v1[v46];
  sub_1BD4E8F48(0xD000000000000028, 0x80000001BE12C7F0, v38, v62, v63);
  v56 = sub_1BE052404();

  [v55 setText_];

  v57 = [v1 view];
  if (!v57)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v58 = v57;

  [v58 addSubview_];

  v59 = [v1 sheetPresentationController];
  if (v59)
  {
    v60 = v59;
    [v59 setDelegate_];
  }
}

id sub_1BD4E8F48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v13 = [a3 provisioningString:v12 templateIdentifier:a5];

  if (v13)
  {
    v14 = sub_1BE052434();

    return v14;
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();

      (*(v8 + 8))(v11, v7);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1BD4E9108(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  PKFloatRoundToPixel();
  [a1 sizeThatFits_];
  return result;
}

double sub_1BD4E9164(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v8 = a2;
  v9 = v7(a2, a3, a4);

  return v9;
}

void sub_1BD4E9228()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 readableContentGuide];
    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    Width = CGRectGetWidth(v29);
    v13 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel;
    [*&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_helpLabel] sizeThatFits_];
    v15 = v14;
    v16 = [v2 keyboardLayoutGuide];
    [v16 layoutFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v30.origin.x = v18;
    v30.origin.y = v20;
    v30.size.width = v22;
    v30.size.height = v24;
    MinY = CGRectGetMinY(v30);
    v31.origin.y = 0.0;
    v31.origin.x = v5;
    v31.size.width = Width;
    v31.size.height = v15;
    v26 = MinY - CGRectGetHeight(v31) + -24.0;
    v27 = *&v0[v13];
    [v27 setFrame_];
  }
}

void sub_1BD4E96EC(void *a1, char a2)
{
  v5 = [v2 navigationItem];
  v6 = [v5 rightBarButtonItem];

  [v6 setEnabled_];
  v7 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_credential] configuration];
  if (!v7)
  {
    return;
  }

  v10 = v7;
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = [a1 pinCode];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  [v10 setPassword_];

  [v10 setPasswordEnteredManually_];
}

id sub_1BD4E9AC4()
{
  v1 = [objc_allocWithZone(PKRewardsSummaryChartBarConfiguration) initWithSummary_];
  v2 = [objc_allocWithZone(PKSegmentedBarView) init];
  v3 = [objc_allocWithZone(PKRewardsSummaryBarViewWrapper) initWithBarView:v2 configuration:v1];

  return v3;
}

uint64_t sub_1BD4E9B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4EBEB0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD4E9BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4EBEB0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD4E9C20()
{
  sub_1BD4EBEB0();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD4E9C48()
{
  result = sub_1BE051C54();
  v1 = 10.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_1EBDAB1C0 = *&v1;
  return result;
}

uint64_t sub_1BD4E9C78()
{
  result = sub_1BE051C54();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1EBDAB1C8 = *&v1;
  return result;
}

uint64_t sub_1BD4E9CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48660);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v51[-v4 - 8];
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48668);
  sub_1BD4E9FB8(v1, &v5[*(v6 + 44)]);
  v7 = sub_1BE0501E4();
  if (qword_1EBD36C48 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48670) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48678) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_1BE050204();
  if (qword_1EBD36C50 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48680) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1BE050224();
  sub_1BE04E1F4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48688) + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v5[*(v2 + 36)] = 0;
  v47 = swift_allocObject();
  v48 = *(v1 + 16);
  *(v47 + 16) = *v1;
  *(v47 + 32) = v48;
  *(v47 + 48) = *(v1 + 32);
  *(v47 + 64) = *(v1 + 48);
  sub_1BD4EB7F4(v1, v51);
  sub_1BD4EB82C();
  sub_1BE0509D4();

  return sub_1BD08214C(v5);
}

uint64_t sub_1BD4E9FB8@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486D0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v51 - v8;
  v9 = sub_1BE04FF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486D8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD486E0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v18);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v60 = &v51 - v22;
  sub_1BD4EA604(a1, v17);
  sub_1BE04FF44();
  sub_1BD4EBAAC();
  sub_1BE050D14();
  (*(v10 + 8))(v13, v9);
  sub_1BD0DE53C(v17, &qword_1EBD486D8);
  sub_1BE051CD4();
  v23 = *a1;
  sub_1BE04EE54();
  v24 = v23;
  v53 = v24;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v54 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v84 = 0;
  v33 = sub_1BE04F504();
  LOBYTE(v73[0]) = 0;
  sub_1BD4EADCC(a1, &v77[7]);
  LOBYTE(v77[0]) = 1;
  v77[1] = v33;
  v77[2] = 0x4028000000000000;
  LOBYTE(v77[3]) = v73[0];
  *&v77[4] = xmmword_1BE0DC270;
  v77[6] = 0x4024000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48700);
  sub_1BD4EBB5C();
  v34 = v59;
  sub_1BE050A24();
  v71[6] = *&v77[12];
  v71[7] = *&v77[14];
  v71[8] = *&v77[16];
  v72 = v77[18];
  v71[2] = *&v77[4];
  v71[3] = *&v77[6];
  v71[4] = *&v77[8];
  v71[5] = *&v77[10];
  v71[0] = *v77;
  v71[1] = *&v77[2];
  sub_1BD0DE53C(v71, &qword_1EBD48700);
  v35 = v52;
  v36 = *(v52 + 16);
  v37 = v58;
  v38 = v55;
  v36(v58, v60, v55);
  v39 = v56;
  sub_1BD0DE19C(v34, v56, &qword_1EBD486D0);
  v40 = v57;
  v36(v57, v37, v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48730);
  v42 = &v40[*(v41 + 48)];
  *&v73[0] = v24;
  *(&v73[3] + 8) = v67;
  *(&v73[4] + 8) = v68;
  *(&v73[5] + 8) = v69;
  *(&v73[6] + 8) = v70;
  *(&v73[2] + 8) = v66;
  *(v73 + 8) = v64;
  *(&v73[1] + 8) = v65;
  *(&v73[9] + 8) = v63;
  *(&v73[8] + 8) = v62;
  *(&v73[7] + 8) = v61;
  LOBYTE(v24) = v54;
  BYTE8(v73[10]) = v54;
  *&v74 = v26;
  *(&v74 + 1) = v28;
  *&v75 = v30;
  *(&v75 + 1) = v32;
  v76 = 0;
  v42[208] = 0;
  v43 = v73[1];
  *v42 = v73[0];
  *(v42 + 1) = v43;
  v44 = v73[5];
  *(v42 + 4) = v73[4];
  *(v42 + 5) = v44;
  v45 = v73[3];
  *(v42 + 2) = v73[2];
  *(v42 + 3) = v45;
  v46 = v73[9];
  *(v42 + 8) = v73[8];
  *(v42 + 9) = v46;
  v47 = v73[7];
  *(v42 + 6) = v73[6];
  *(v42 + 7) = v47;
  v48 = v74;
  *(v42 + 10) = v73[10];
  *(v42 + 11) = v48;
  *(v42 + 12) = v75;
  sub_1BD0DE19C(v39, &v40[*(v41 + 64)], &qword_1EBD486D0);
  sub_1BD0DE19C(v73, v77, &qword_1EBD48738);
  sub_1BD0DE53C(v59, &qword_1EBD486D0);
  v49 = *(v35 + 8);
  v49(v60, v38);
  sub_1BD0DE53C(v39, &qword_1EBD486D0);
  v77[0] = v53;
  *&v77[7] = v67;
  *&v77[9] = v68;
  *&v77[11] = v69;
  *&v77[13] = v70;
  *&v77[1] = v64;
  *&v77[3] = v65;
  *&v77[5] = v66;
  *&v77[19] = v63;
  *&v77[17] = v62;
  *&v77[15] = v61;
  v78 = v24;
  v79 = v26;
  v80 = v28;
  v81 = v30;
  v82 = v32;
  v83 = 0;
  sub_1BD0DE53C(v77, &qword_1EBD48738);
  return (v49)(v58, v38);
}

void sub_1BD4EA604(id *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v66 - v7;
  v75 = sub_1BE050404();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v73 = &v66 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48740);
  MEMORY[0x1EEE9AC00](v71, v20);
  v22 = &v66 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48748);
  MEMORY[0x1EEE9AC00](v72, v23);
  v67 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v66 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v74 = &v66 - v32;
  (*(v13 + 104))(v16, *MEMORY[0x1E69B80B0], v12, v31);
  v33 = PKPassKitBundle();
  if (!v33)
  {
    __break(1u);
    goto LABEL_6;
  }

  v34 = v33;
  v35 = sub_1BE04B6F4();
  v37 = v36;

  (*(v13 + 8))(v16, v12);
  *&v81 = v35;
  *(&v81 + 1) = v37;
  LOBYTE(v82) = 0;
  *(&v82 + 1) = MEMORY[0x1E69E7CC0];
  sub_1BE052434();
  v38 = v73;
  sub_1BE050DE4();

  sub_1BE050324();
  v39 = v75;
  (*(v8 + 104))(v11, *MEMORY[0x1E6980EA8], v75);
  v40 = sub_1BE050434();

  (*(v8 + 8))(v11, v39);
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v38, v22, &qword_1EBD452C0);
  v42 = &v22[*(v71 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = sub_1BE051494();
  v44 = swift_getKeyPath();
  sub_1BD0DE204(v22, v28, &qword_1EBD48740);
  v45 = &v28[*(v72 + 36)];
  *v45 = v44;
  v45[1] = v43;
  v46 = v74;
  sub_1BD0DE204(v28, v74, &qword_1EBD48748);
  v47 = [*v76 totalCurrencyAmount];
  v48 = [v47 formattedStringValue];

  if (!v48)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();

  if (PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]))
  {
    sub_1BE050484();
    v49 = sub_1BE0505F4();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v56 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v86 = v53 & 1;
    v85 = 0;
    *&v77 = v49;
    *(&v77 + 1) = v51;
    LOBYTE(v78) = v53 & 1;
    *(&v78 + 1) = v55;
    LOBYTE(v79) = v56;
    *(&v79 + 1) = v57;
    *v80 = v58;
    *&v80[8] = v59;
    *&v80[16] = v60;
    v80[24] = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD2A275C();
    v61 = v68;
    sub_1BE050DE4();

    v84[0] = *v80;
    *(v84 + 9) = *&v80[9];
    v82 = v78;
    v83 = v79;
    v81 = v77;
    sub_1BD0DE53C(&v81, &unk_1EBD3DF90);
    v62 = v67;
    sub_1BD0DE19C(v46, v67, &qword_1EBD48748);
    v63 = v70;
    sub_1BD0DE19C(v61, v70, &qword_1EBD40540);
    v64 = v69;
    sub_1BD0DE19C(v62, v69, &qword_1EBD48748);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48750);
    sub_1BD0DE19C(v63, v64 + *(v65 + 48), &qword_1EBD40540);
    sub_1BD0DE53C(v61, &qword_1EBD40540);
    sub_1BD0DE53C(v46, &qword_1EBD48748);
    sub_1BD0DE53C(v63, &qword_1EBD40540);
    sub_1BD0DE53C(v62, &qword_1EBD48748);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD4EADCC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  result = sub_1BE0516A4();
  *a2 = v3;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = 2;
  *(a2 + 40) = v5;
  *(a2 + 48) = v3;
  *(a2 + 56) = 3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v3;
  *(a2 + 80) = 4;
  *(a2 + 88) = v5;
  return result;
}

uint64_t sub_1BD4EAEDC(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2[1] = *(a1 + 40);
  v4 = *(&v3 + 1);
  sub_1BD0DE19C(&v4, v2, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v2[0] = v3;
  sub_1BE0516B4();
  return sub_1BD0DE53C(&v3, &qword_1EBD54350);
}

uint64_t sub_1BD4EAFA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = PKColorForRewardsTier(a2);
  v9 = sub_1BE0511C4();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v35[3] = *&v35[27];
  *&v35[11] = *&v35[35];
  *&v35[19] = v36;
  v10 = sub_1BE050224();
  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v57) = 0;
  v19 = sub_1BE051CE4();
  v21 = v20;
  sub_1BD4EB3E4(a1, a2, a3, &v57);
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v48 = v68;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v44 = v64;
  v37 = v57;
  v38 = v58;
  v39 = v59;
  v40 = v60;
  v52[12] = v69;
  v52[13] = v70;
  v52[14] = v71;
  v52[8] = v65;
  v52[9] = v66;
  v52[11] = v68;
  v52[10] = v67;
  v52[4] = v61;
  v52[5] = v62;
  v52[7] = v64;
  v52[6] = v63;
  v52[0] = v57;
  v52[1] = v58;
  v52[2] = v59;
  v52[3] = v60;
  sub_1BD0DE19C(&v37, v56, &qword_1EBD48768);
  sub_1BD0DE53C(v52, &qword_1EBD48768);
  v70 = v49;
  v71 = v50;
  v72 = v51;
  v66 = v45;
  v67 = v46;
  v69 = v48;
  v68 = v47;
  v62 = v41;
  v63 = v42;
  v65 = v44;
  v64 = v43;
  v58 = v37;
  v59 = v38;
  v61 = v40;
  v60 = v39;
  *v53 = v9;
  *&v53[8] = 256;
  *&v53[10] = *v35;
  *&v53[26] = *&v35[8];
  *&v53[42] = *&v35[16];
  *&v53[56] = *(&v36 + 1);
  LOBYTE(v54) = v10;
  *(&v54 + 1) = v12;
  *v55 = v14;
  *&v55[8] = v16;
  *&v55[16] = v18;
  v55[24] = 0;
  __src[0] = *v53;
  __src[1] = *&v53[16];
  *(&__src[5] + 9) = *&v55[9];
  __src[4] = v54;
  __src[5] = *v55;
  __src[2] = *&v53[32];
  __src[3] = *&v53[48];
  v56[2] = v38;
  v56[1] = v37;
  v56[6] = v42;
  v56[5] = v41;
  v56[3] = v39;
  v56[4] = v40;
  v56[10] = v46;
  v56[9] = v45;
  v56[7] = v43;
  v56[8] = v44;
  v56[15] = v51;
  *&v56[0] = v19;
  *(&v56[0] + 1) = v21;
  v56[14] = v50;
  v56[13] = v49;
  v56[11] = v47;
  v56[12] = v48;
  __src[19] = v48;
  __src[20] = v49;
  __src[21] = v50;
  __src[22] = v51;
  __src[15] = v44;
  __src[16] = v45;
  __src[17] = v46;
  __src[18] = v47;
  __src[11] = v40;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  __src[7] = v56[0];
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  memcpy(a4, __src, 0x170uLL);
  *&v57 = v19;
  *(&v57 + 1) = v21;
  sub_1BD0DE19C(v53, &v23, &qword_1EBD48770);
  sub_1BD0DE19C(v56, &v23, &qword_1EBD48778);
  sub_1BD0DE53C(&v57, &qword_1EBD48778);
  v25 = *v35;
  v23 = v9;
  v24 = 256;
  v26 = *&v35[8];
  *v27 = *&v35[16];
  *&v27[14] = *&v35[23];
  v28 = v10;
  v29 = v12;
  v30 = v14;
  v31 = v16;
  v32 = v18;
  v33 = 0;
  return sub_1BD0DE53C(&v23, &qword_1EBD48770);
}

double sub_1BD4EB3E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1BD4EB55C(a1, a2, a3, v18);
  v5 = sub_1BE050454();
  KeyPath = swift_getKeyPath();
  v7 = sub_1BE051494();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v19[55] = v23;
  *&v19[71] = v24;
  *&v19[87] = v25;
  *&v19[103] = v26;
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  v10 = v18[0];
  v11 = v18[1];
  v12 = v18[4];
  v13 = v18[2];
  *(a4 + 48) = v18[3];
  *(a4 + 64) = v12;
  *(a4 + 16) = v11;
  *(a4 + 32) = v13;
  *a4 = v10;
  *(a4 + 80) = KeyPath;
  *(a4 + 88) = v5;
  *(a4 + 96) = v8;
  *(a4 + 104) = v7;
  *(a4 + 112) = v9;
  *(a4 + 120) = 0;
  *(a4 + 232) = *&v19[111];
  *(a4 + 217) = *&v19[96];
  v14 = *&v19[64];
  *(a4 + 201) = *&v19[80];
  *(a4 + 185) = v14;
  v15 = *&v19[32];
  *(a4 + 169) = *&v19[48];
  *(a4 + 153) = v15;
  result = *&v19[16];
  v17 = *v19;
  *(a4 + 137) = *&v19[16];
  *(a4 + 121) = v17;
  return result;
}

void sub_1BD4EB55C(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1BD4EBCD4();
  v10 = v9;
  v11 = [a1 currencyAmountForRewardsTier_];
  v12 = [v11 formattedStringValue];

  if (v12)
  {
    v13 = sub_1BE052434();
    v15 = v14;

    v16 = 1.0;
    if (a3)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    if ((a3 & 1) == 0)
    {
      v16 = 0.0;
    }

    *a4 = v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = 0;
    v18 = MEMORY[0x1E69E7CC0];
    *(a4 + 24) = MEMORY[0x1E69E7CC0];
    *(a4 + 32) = v17;
    *(a4 + 40) = v13;
    *(a4 + 48) = v15;
    *(a4 + 56) = 0;
    *(a4 + 64) = v18;
    *(a4 + 72) = v16;
    sub_1BD0D7F18(v8, v10, 0);
    sub_1BE048C84();
    sub_1BD0D7F18(v13, v15, 0);
    sub_1BE048C84();
    sub_1BD0DDF10(v13, v15, 0);

    sub_1BD0DDF10(v8, v10, 0);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1BD4EB6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = sub_1BE04F504();
  v12 = 0;
  sub_1BD4EAFA0(v3, v4, v5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_1BD0DE19C(__dst, &v9, &qword_1EBD48760);
  sub_1BD0DE53C(v14, &qword_1EBD48760);
  memcpy(&v11[7], __dst, 0x170uLL);
  v7 = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  return memcpy((a1 + 17), v11, 0x177uLL);
}

unint64_t sub_1BD4EB82C()
{
  result = qword_1EBD48690;
  if (!qword_1EBD48690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48660);
    sub_1BD4EB940(&qword_1EBD48698, &qword_1EBD48688, &unk_1BE0DC340, sub_1BD4EB910);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48690);
  }

  return result;
}

uint64_t sub_1BD4EB940(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD4EB9F4()
{
  result = qword_1EBD486B0;
  if (!qword_1EBD486B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48670);
    sub_1BD0DE4F4(&qword_1EBD486B8, &qword_1EBD486C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD486B0);
  }

  return result;
}

unint64_t sub_1BD4EBAAC()
{
  result = qword_1EBD486E8;
  if (!qword_1EBD486E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD486D8);
    sub_1BD0DE4F4(&qword_1EBD486F0, &qword_1EBD486F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD486E8);
  }

  return result;
}

unint64_t sub_1BD4EBB5C()
{
  result = qword_1EBD48708;
  if (!qword_1EBD48708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48700);
    sub_1BD0DE4F4(&qword_1EBD48710, &qword_1EBD48718);
    sub_1BD0DE4F4(&qword_1EBD48720, &qword_1EBD48728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48708);
  }

  return result;
}

unint64_t sub_1BD4EBC64()
{
  result = qword_1EBD48758;
  if (!qword_1EBD48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48758);
  }

  return result;
}

id sub_1BD4EBCD4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80B0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();

    (*(v1 + 8))(v5, v0);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD4EBEB0()
{
  result = qword_1EBD48780;
  if (!qword_1EBD48780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48780);
  }

  return result;
}

uint64_t sub_1BD4EBF04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD4EBF78()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController;
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account);

      [v3 setAccount_];
      return;
    }

    v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_webService);
    v7 = objc_allocWithZone(MEMORY[0x1E69B8A60]);
    v8 = v1;
    v9 = [v7 init];
    v10 = [objc_allocWithZone(PKPeerPaymentAccountResolutionController) initWithAccount:v8 webService:v6 context:0 delegate:v0 passLibraryDataProvider:v9];

    v5 = *(v0 + v2);
    *(v0 + v2) = v10;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController);
    *(v0 + OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController) = 0;
  }
}

id sub_1BD4EC170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD487E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel__currentView;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD487E0);
  sub_1BE04D874();
  (*(v7 + 32))(&v0[v11], v10, v6);
  v12 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel__loading;
  LOBYTE(v20) = 0;
  sub_1BE04D874();
  (*(v2 + 32))(&v0[v12], v5, v1);
  v13 = &v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = 0;
  v14 = &v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_verificationContext];
  *v14 = 0;
  v14[8] = 1;
  *&v0[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController] = 0;
  v15 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_webService;
  *&v0[v15] = [objc_opt_self() sharedService];
  v16 = type metadata accessor for PeerPaymentAccountResolutionControllerModel();
  v19.receiver = v0;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1BD4EC3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentAccountResolutionControllerModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PeerPaymentAccountResolutionControllerModel()
{
  result = qword_1EBD487C8;
  if (!qword_1EBD487C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4EC574()
{
  sub_1BD4EC660();
  if (v0 <= 0x3F)
  {
    sub_1BD1E1120();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD4EC660()
{
  if (!qword_1EBD487D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD487E0);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD487D8);
    }
  }
}

uint64_t sub_1BD4EC6C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PeerPaymentAccountResolutionControllerModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD4EC704@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD4EC784(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

void sub_1BD4EC7F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1BE04D8C4();
  v2 = [*&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_resolutionController] account];
  v3 = OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account;
  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account];
  *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_account] = v2;
  v5 = v2;

  sub_1BD4EBF78();
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = *&v1[OBJC_IVAR____TtC9PassKitUI43PeerPaymentAccountResolutionControllerModel_updateAccountAction];
    if (v7)
    {
      v8 = v6;
      sub_1BD0D44B8(v7);
      v7(v8);
      sub_1BD0D4744(v7);
    }
  }
}

unint64_t sub_1BD4EC90C()
{
  result = qword_1EBD487F0;
  if (!qword_1EBD487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD487F0);
  }

  return result;
}

id sub_1BD4EC960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v68 - v5;
  v6 = sub_1BE04BD74();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Passes(0);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v9);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for IdentityPassMethodSheet();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v11);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v75 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for IdentityPassVendor();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1BD0DE53C(v20, &qword_1EBD3F140);
    v26 = 1;
    v27 = v82;
    v28 = v79;
    return (*(v81 + 56))(v27, v26, 1, v28);
  }

  sub_1BD4EDC8C(v20, v25, type metadata accessor for IdentityPassVendor);
  sub_1BD395DD4(v25, v80, type metadata accessor for Passes);
  sub_1BD250A68(v2, v97);
  v29 = swift_allocObject();
  v30 = v97[9];
  *(v29 + 144) = v97[8];
  *(v29 + 160) = v30;
  *(v29 + 176) = v98;
  v31 = v97[5];
  *(v29 + 80) = v97[4];
  *(v29 + 96) = v31;
  v32 = v97[7];
  *(v29 + 112) = v97[6];
  *(v29 + 128) = v32;
  v33 = v97[1];
  *(v29 + 16) = v97[0];
  *(v29 + 32) = v33;
  v34 = v97[3];
  *(v29 + 48) = v97[2];
  *(v29 + 64) = v34;
  sub_1BD250A68(v2, v95);
  v35 = swift_allocObject();
  v36 = v95[9];
  *(v35 + 144) = v95[8];
  *(v35 + 160) = v36;
  *(v35 + 176) = v96;
  v37 = v95[5];
  *(v35 + 80) = v95[4];
  *(v35 + 96) = v37;
  v38 = v95[7];
  *(v35 + 112) = v95[6];
  *(v35 + 128) = v38;
  v39 = v95[1];
  *(v35 + 16) = v95[0];
  *(v35 + 32) = v39;
  v40 = v95[3];
  *(v35 + 48) = v95[2];
  *(v35 + 64) = v40;
  sub_1BD250A68(v2, &v84);
  v41 = swift_allocObject();
  v42 = v93;
  *(v41 + 144) = v92;
  *(v41 + 160) = v42;
  *(v41 + 176) = v94;
  v43 = v89;
  *(v41 + 80) = v88;
  *(v41 + 96) = v43;
  v44 = v91;
  *(v41 + 112) = v90;
  *(v41 + 128) = v44;
  v45 = v85;
  *(v41 + 16) = v84;
  *(v41 + 32) = v45;
  v46 = v87;
  *(v41 + 48) = v86;
  *(v41 + 64) = v46;
  v48 = v76;
  v47 = v77;
  v49 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x1E69B8068], v78);
  result = PKPassKitBundle();
  if (result)
  {
    v51 = result;
    v70 = v25;
    v52 = sub_1BE04B6F4();
    v68 = v53;
    v69 = v52;

    (*(v47 + 8))(v48, v49);
    if (qword_1EBD36CB0 != -1)
    {
      swift_once();
    }

    v54 = unk_1EBDAB330;
    v78 = qword_1EBDAB328;
    v28 = v79;
    *&v86 = 0;
    v84 = 0u;
    v85 = 0u;
    sub_1BD0DE19C(&v84, &v83, &qword_1EBD51EC0);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0);
    sub_1BE051694();
    sub_1BD0DE53C(&v84, &qword_1EBD51EC0);
    *v13 = v72;
    v55 = v80;
    sub_1BD395DD4(v80, v13 + v28[5], type metadata accessor for Passes);
    v56 = (v13 + v28[6]);
    *v56 = sub_1BD4EDC0C;
    v56[1] = v29;
    v57 = (v13 + v28[7]);
    *v57 = sub_1BD4EDC14;
    v57[1] = v35;
    v58 = (v13 + v28[8]);
    v59 = v68;
    *v58 = v69;
    v58[1] = v59;
    v60 = (v13 + v28[9]);
    *v60 = v78;
    v60[1] = v54;
    v61 = (v13 + v28[11]);
    *v61 = sub_1BD4EDC38;
    v61[1] = v41;
    v62 = v74;
    sub_1BD395DD4(v55, v74, type metadata accessor for Passes);
    (*(v71 + 56))(v62, 0, 1, v73);
    *&v84 = MEMORY[0x1E69E7CC0];
    v63 = sub_1BD69175C(v62);
    sub_1BDA7A7E4(v63);
    sub_1BD0DE53C(v62, &unk_1EBD43B40);
    *(v13 + v28[10]) = v84;
    sub_1BD4EDC40();
    v64 = [swift_getObjCClassFromMetadata() appearance];
    v65 = [objc_opt_self() clearColor];
    [v64 setBackgroundColor_];

    sub_1BD4EDCF4(v55, type metadata accessor for Passes);
    sub_1BD4EDCF4(v70, type metadata accessor for IdentityPassVendor);
    v66 = v75;
    sub_1BD4EDC8C(v13, v75, type metadata accessor for IdentityPassMethodSheet);
    v67 = v66;
    v27 = v82;
    sub_1BD4EDC8C(v67, v82, type metadata accessor for IdentityPassMethodSheet);
    v26 = 0;
    return (*(v81 + 56))(v27, v26, 1, v28);
  }

  __break(1u);
  return result;
}

void sub_1BD4ED1BC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35[-v8];
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v37 = v10;
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A8);
  sub_1BE0516A4();
  if (v36)
  {
    if (sub_1BE04C904())
    {
      v37 = v10;
      v38 = v11;
      v36 = 0;
      sub_1BE0516B4();
      v12 = objc_opt_self();
      v13 = *MEMORY[0x1E69BB6D8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98D0;
      v15 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v16 = sub_1BE052434();
      v17 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v16;
      *(inited + 48) = v18;
      v19 = *v17;
      *(inited + 56) = *v17;
      v20 = sub_1BE052434();
      v21 = MEMORY[0x1E69BA440];
      *(inited + 64) = v20;
      *(inited + 72) = v22;
      v23 = *v21;
      *(inited + 80) = *v21;
      *(inited + 88) = sub_1BE052434();
      *(inited + 96) = v24;
      v25 = v15;
      v26 = v19;
      v27 = v23;
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD1F0E18();
      v28 = sub_1BE052224();

      [v12 subject:v13 sendEvent:v28];
    }

    else
    {
      sub_1BE04D084();
      v32 = sub_1BE04D204();
      v33 = sub_1BE052C34();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1BD026000, v32, v33, "Authorizing identity presentment, ignoring detail sheet", v34, 2u);
        MEMORY[0x1BFB45F20](v34, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    sub_1BE04D084();
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BD026000, v29, v30, "Detail sheet already set, ignoring", v31, 2u);
      MEMORY[0x1BFB45F20](v31, -1, -1);
    }

    (*(v2 + 8))(v9, v1);
  }
}

uint64_t sub_1BD4ED564()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD4ED5E0()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD4ED638@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1BE053A44();

  *a1 = v2 != 0;
  return result;
}

void sub_1BD4ED68C(uint64_t a1@<X8>)
{
  strcpy(a1, "identityPass");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1BD4ED6B4()
{
  result = qword_1EBD487F8;
  if (!qword_1EBD487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD487F8);
  }

  return result;
}

uint64_t sub_1BD4ED708(uint64_t a1, void *a2, uint64_t a3)
{
  v34[1] = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v34 - v6;
  v36 = type metadata accessor for IdentityCredential(0);
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v34[0] = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v34 - v25;
  sub_1BD0DE19C(a1, v18, &qword_1EBD520A0);
  v27 = type metadata accessor for AvailablePass(0);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v18, 1, v27) == 1)
  {
    return sub_1BD0DE53C(v18, &qword_1EBD520A0);
  }

  sub_1BD395DD4(v18, v22, type metadata accessor for WrappedPass);
  sub_1BD4EDCF4(v18, type metadata accessor for AvailablePass);
  sub_1BD4EDC8C(v22, v26, type metadata accessor for WrappedPass);
  sub_1BD0DE19C(a1, v14, &qword_1EBD520A0);
  if (v28(v14, 1, v27) == 1)
  {
    sub_1BD4EDCF4(v26, type metadata accessor for WrappedPass);
    sub_1BD0DE53C(v14, &qword_1EBD520A0);
    (*(v8 + 56))(v7, 1, 1, v36);
    return sub_1BD0DE53C(v7, &qword_1EBD3F190);
  }

  sub_1BD0DE19C(&v14[*(v27 + 24)], v7, &qword_1EBD3F190);
  sub_1BD4EDCF4(v14, type metadata accessor for AvailablePass);
  if ((*(v8 + 48))(v7, 1, v36) == 1)
  {
    sub_1BD4EDCF4(v26, type metadata accessor for WrappedPass);
    return sub_1BD0DE53C(v7, &qword_1EBD3F190);
  }

  v30 = v34[0];
  sub_1BD4EDC8C(v7, v34[0], type metadata accessor for IdentityCredential);
  v31 = objc_allocWithZone(MEMORY[0x1E69B85A0]);
  v32 = sub_1BE052404();
  v33 = [v31 initWithIdentifier_];

  sub_1BD390F88(v26, v35, v33);
  sub_1BD4EDCF4(v30, type metadata accessor for IdentityCredential);
  return sub_1BD4EDCF4(v26, type metadata accessor for WrappedPass);
}

unint64_t sub_1BD4EDC40()
{
  result = qword_1EBD43B70;
  if (!qword_1EBD43B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43B70);
  }

  return result;
}

uint64_t sub_1BD4EDC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4EDCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI18ContactInformationVIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD4EDD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1BD4EDDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD4EDE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v1, 0);
    v3 = (a1 + 32);
    v4 = v24;
    v5 = 0x31746565727473;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = v7 == 6;
      if (v7 == 6)
      {
        v9 = 0x6F436C6174736F70;
      }

      else
      {
        v9 = 0x7972746E756F63;
      }

      if (v8)
      {
        v10 = 0xEA00000000006564;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v6 == 4)
      {
        v11 = 0xD000000000000015;
      }

      else
      {
        v11 = 0x6574617473;
      }

      if (v6 == 4)
      {
        v12 = 0x80000001BE1173C0;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      if (v6 <= 5)
      {
        v9 = v11;
        v10 = v12;
      }

      if (v6 == 2)
      {
        v13 = 0x6C61636F4C627573;
      }

      else
      {
        v13 = 2037672291;
      }

      if (v6 == 2)
      {
        v14 = 0xEB00000000797469;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      if (v6)
      {
        v15 = 0x32746565727473;
      }

      else
      {
        v15 = v5;
      }

      if (v6 <= 1)
      {
        v13 = v15;
        v14 = 0xE700000000000000;
      }

      if (v6 <= 3)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }

      if (v6 <= 3)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }

      v25 = v4;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = v5;
        sub_1BD03B254((v18 > 1), v19 + 1, 1);
        v5 = v21;
        v4 = v25;
      }

      *(v4 + 16) = v19 + 1;
      v20 = v4 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
  v22 = sub_1BE0522E4();

  return v22;
}

uint64_t sub_1BD4EE0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48800);
  MEMORY[0x1EEE9AC00](v24, v3);
  v5 = &v23 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48808);
  MEMORY[0x1EEE9AC00](v23, v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48810);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - v12;
  v28 = *v1;
  v14 = sub_1BD20C578();
  v15 = v14;
  if (v2[2])
  {
    v27 = v14;
    swift_getKeyPath();
    v16 = *(v2 + 2);
    v17 = swift_allocObject();
    v18 = v2[1];
    *(v17 + 16) = *v2;
    *(v17 + 32) = v18;
    *(v17 + 47) = *(v2 + 31);
    sub_1BD0DE19C(&v28, v26, &qword_1EBD48820);
    sub_1BD0D44B8(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48830);
    sub_1BD0DE4F4(&qword_1EBD48838, &qword_1EBD48828);
    sub_1BD4F083C();
    sub_1BE0519C4();
    (*(v10 + 16))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &unk_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800);
    sub_1BE04F9A4();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    *v5 = sub_1BE04F7C4();
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48818);
    v27 = v15;
    swift_getKeyPath();
    v20 = *(v2 + 2);
    v21 = swift_allocObject();
    v22 = v2[1];
    *(v21 + 16) = *v2;
    *(v21 + 32) = v22;
    *(v21 + 47) = *(v2 + 31);
    sub_1BD0DE19C(&v28, v26, &qword_1EBD48820);
    sub_1BD0D44B8(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48830);
    sub_1BD0DE4F4(&qword_1EBD48838, &qword_1EBD48828);
    sub_1BD4F083C();
    sub_1BE0519C4();
    sub_1BD0DE19C(v5, v8, &qword_1EBD48800);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &unk_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v5, &qword_1EBD48800);
  }
}

uint64_t sub_1BD4EE650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48910);
  MEMORY[0x1EEE9AC00](v50, v4);
  v6 = v44 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48928);
  MEMORY[0x1EEE9AC00](v46, v7);
  v47 = v44 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48900);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v9);
  v11 = v44 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488F0);
  MEMORY[0x1EEE9AC00](v52, v12);
  v49 = v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48860);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v44 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48930);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48938);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48850);
  MEMORY[0x1EEE9AC00](v25, v26);
  v29 = v44 - v28;
  v30 = *(a1 + 16);
  if (v30 == 1)
  {
    sub_1BD4EEF44(*(a1 + 32), v17);
    sub_1BD0DE19C(v17, v24, &qword_1EBD48860);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0954();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v29, v20, &qword_1EBD48850);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F08C8();
    sub_1BD4F0F80();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v29, &qword_1EBD48850);
    v32 = v17;
    v33 = &qword_1EBD48860;
  }

  else
  {
    if (v30)
    {
      v44[1] = v27;
      if (v2[2])
      {
        v55 = a1;
        swift_getKeyPath();
        v56 = *v2;
        v34 = *(v2 + 2);
        v35 = swift_allocObject();
        v36 = v2[1];
        *(v35 + 16) = *v2;
        *(v35 + 32) = v36;
        *(v35 + 47) = *(v2 + 31);
        sub_1BE048C84();
        sub_1BD0DE19C(&v56, v54, &qword_1EBD48820);
        sub_1BD0D44B8(v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30);
        sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30);
        sub_1BD4F0954();
        sub_1BE0519C4();
        v37 = v45;
        v38 = v48;
        (*(v45 + 16))(v47, v11, v48);
        swift_storeEnumTagMultiPayload();
        sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &unk_1BE0DC9F8, sub_1BD4F0954);
        sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910);
        v39 = v49;
        sub_1BE04F9A4();
        (*(v37 + 8))(v11, v38);
      }

      else
      {
        *v6 = sub_1BE04F504();
        *(v6 + 1) = 0x4020000000000000;
        v6[16] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48940);
        v55 = a1;
        swift_getKeyPath();
        v56 = *v2;
        v40 = *(v2 + 2);
        v41 = swift_allocObject();
        v42 = v2[1];
        *(v41 + 16) = *v2;
        *(v41 + 32) = v42;
        *(v41 + 47) = *(v2 + 31);
        sub_1BE048C84();
        sub_1BD0DE19C(&v56, v54, &qword_1EBD48820);
        sub_1BD0D44B8(v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30);
        sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30);
        sub_1BD4F0954();
        sub_1BE0519C4();
        sub_1BD0DE19C(v6, v47, &qword_1EBD48910);
        swift_storeEnumTagMultiPayload();
        sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &unk_1BE0DC9F8, sub_1BD4F0954);
        sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910);
        v39 = v49;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v6, &qword_1EBD48910);
      }

      v31 = &qword_1EBD488F0;
      sub_1BD0DE19C(v39, v20, &qword_1EBD488F0);
      swift_storeEnumTagMultiPayload();
      sub_1BD4F08C8();
      sub_1BD4F0F80();
      sub_1BE04F9A4();
      v32 = v39;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD4F0954();
      sub_1BE04F9A4();
      v31 = &qword_1EBD48850;
      sub_1BD0DE19C(v29, v20, &qword_1EBD48850);
      swift_storeEnumTagMultiPayload();
      sub_1BD4F08C8();
      sub_1BD4F0F80();
      sub_1BE04F9A4();
      v32 = v29;
    }

    v33 = v31;
  }

  return sub_1BD0DE53C(v32, v33);
}

uint64_t sub_1BD4EEF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v4);
  v157 = &v125 - v5;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8);
  MEMORY[0x1EEE9AC00](v146, v6);
  v142 = &v125 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48950);
  v147 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v8);
  v144 = &v125 - v9;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D0);
  MEMORY[0x1EEE9AC00](v163, v10);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v148 = &v125 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v125 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48958);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v125 - v22;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48960);
  MEMORY[0x1EEE9AC00](v136, v24);
  v140 = &v125 - v25;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488B8);
  MEMORY[0x1EEE9AC00](v139, v26);
  v135 = &v125 - v27;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48968);
  v130 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v28);
  v129 = &v125 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488B0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v138 = &v125 - v32;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48970);
  MEMORY[0x1EEE9AC00](v155, v33);
  v156 = &v125 - v34;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48978);
  MEMORY[0x1EEE9AC00](v132, v35);
  v133 = &v125 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48980);
  v128 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v127 = &v125 - v39;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48880);
  MEMORY[0x1EEE9AC00](v153, v40);
  v134 = &v125 - v41;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48870);
  MEMORY[0x1EEE9AC00](v160, v42);
  v154 = &v125 - v43;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488A0);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v44);
  v149 = &v125 - v45;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48888);
  MEMORY[0x1EEE9AC00](v131, v46);
  v165 = &v125 - v47;
  v158 = *v2;
  v152 = v2;
  *&v166 = sub_1BD20D008(a1);
  *(&v166 + 1) = v48;
  v49 = sub_1BD20D69C(a1);
  v159 = **(&unk_1E800FFA8 + a1);
  v50 = sub_1BD20D60C(a1);
  v167 = a1;
  v161 = v20;
  v162 = v23;
  if (v50)
  {
    LODWORD(v147) = v49;
    v157 = v30;
    *&v172 = v50;
    sub_1BE048C84();
    sub_1BD4F1198(&v172);

    v51 = v172;
    v52 = sub_1BD20B2EC();
    v54 = v52;
    v55 = v53;
    v56 = *(v51 + 2);
    v57 = MEMORY[0x1E69E7CC0];
    v126 = v37;
    v148 = v51;
    if (v56)
    {
      v145 = v52;
      v146 = v53;
      *&v172 = MEMORY[0x1E69E7CC0];
      sub_1BD03B254(0, v56, 0);
      v57 = v172;
      v58 = (v51 + 40);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;
        *&v172 = v57;
        v61 = *(v57 + 16);
        v62 = *(v57 + 24);
        v52 = sub_1BE048C84();
        if (v61 >= v62 >> 1)
        {
          v52 = sub_1BD03B254((v62 > 1), v61 + 1, 1);
          v57 = v172;
        }

        *(v57 + 16) = v61 + 1;
        v63 = v57 + 16 * v61;
        *(v63 + 32) = v59;
        *(v63 + 40) = v60;
        v58 += 4;
        --v56;
      }

      while (v56);
      v55 = v146;
      v54 = v145;
    }

    *&v172 = v54;
    *(&v172 + 1) = v55;
    MEMORY[0x1EEE9AC00](v52, v53);
    v123 = &v172;
    v64 = sub_1BD2FF084(sub_1BD20DFC4, &v121, v57);

    v65 = v165;
    if (v147)
    {
      v66 = 1;
    }

    else
    {
      v72 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v72 = v54 & 0xFFFFFFFFFFFFLL;
      }

      v66 = (v72 == 0) | v64 ^ 1;
    }

    v171 = v166;
    type metadata accessor for PostalAddressEditingModel();
    sub_1BD4F1150(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
    v73 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v73, v74);
    swift_getKeyPath();
    sub_1BE04E974();

    v168 = v172;
    v169 = v173;
    v170 = v174;
    MEMORY[0x1EEE9AC00](v75, v76);
    v121 = v148;
    LOBYTE(v122) = v66 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48988);
    v77 = sub_1BD4F1064(&qword_1EBD48990, &qword_1EBD48988, &unk_1BE0DCAF8, sub_1BD4F2614);
    v78 = sub_1BD0DDEBC();
    v123 = v77;
    v124 = v78;
    v79 = v149;
    sub_1BE051804();

    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD48898, &qword_1EBD488A0);
    v80 = v151;
    sub_1BE050DE4();

    (*(v150 + 8))(v79, v80);
    v81 = *(v152 + 33);
    if (v66)
    {
      if (*(v152 + 33))
      {
        sub_1BD0DE19C(v65, v133, &qword_1EBD48888);
        swift_storeEnumTagMultiPayload();
        v82 = sub_1BD4F0B38();
        *&v172 = v131;
        *(&v172 + 1) = v82;
        swift_getOpaqueTypeConformance2();
        v83 = v134;
        sub_1BE04F9A4();
      }

      else
      {
        v108 = sub_1BD4F0B38();
        v109 = v127;
        v110 = v131;
        sub_1BE0509C4();
        v111 = v128;
        v112 = v126;
        (*(v128 + 16))(v133, v109, v126);
        swift_storeEnumTagMultiPayload();
        *&v172 = v110;
        *(&v172 + 1) = v108;
        swift_getOpaqueTypeConformance2();
        v83 = v134;
        sub_1BE04F9A4();
        (*(v111 + 8))(v109, v112);
      }

      v113 = v162;
      v114 = v159;
      v115 = &qword_1EBD48880;
      sub_1BD0DE19C(v83, v156, &qword_1EBD48880);
    }

    else
    {
      v84 = sub_1BE051264();
      KeyPath = swift_getKeyPath();
      v86 = v135;
      sub_1BD0DE19C(v65, v135, &qword_1EBD48888);
      v87 = v139;
      v88 = (v86 + *(v139 + 36));
      *v88 = KeyPath;
      v88[1] = v84;
      if (v81)
      {
        sub_1BD0DE19C(v86, v140, &qword_1EBD488B8);
        swift_storeEnumTagMultiPayload();
        v89 = sub_1BD4F0CEC();
        *&v172 = v87;
        *(&v172 + 1) = v89;
        swift_getOpaqueTypeConformance2();
        v83 = v138;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v86, &qword_1EBD488B8);
      }

      else
      {
        v116 = sub_1BD4F0CEC();
        v117 = v129;
        sub_1BE0509C4();
        sub_1BD0DE53C(v86, &qword_1EBD488B8);
        v118 = v130;
        v119 = v137;
        (*(v130 + 16))(v140, v117, v137);
        swift_storeEnumTagMultiPayload();
        *&v172 = v87;
        *(&v172 + 1) = v116;
        swift_getOpaqueTypeConformance2();
        v83 = v138;
        sub_1BE04F9A4();
        (*(v118 + 8))(v117, v119);
      }

      v113 = v162;
      v114 = v159;
      v115 = &qword_1EBD488B0;
      sub_1BD0DE19C(v83, v156, &qword_1EBD488B0);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BD4F0A6C();
    sub_1BD4F0C20();
    v120 = v154;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v83, v115);
    sub_1BD0DE19C(v120, v113, &qword_1EBD48870);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v120, &qword_1EBD48870);
    return sub_1BD0DE53C(v165, &qword_1EBD48888);
  }

  else
  {
    v165 = v12;
    v67 = v141;
    v68 = sub_1BD20B2EC();
    v70 = v69;

    if (v49)
    {
      v71 = 1;
    }

    else
    {
      v90 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v90 = v68 & 0xFFFFFFFFFFFFLL;
      }

      v71 = v90 == 0;
    }

    v91 = v67;
    type metadata accessor for PostalAddressEditingModel();
    sub_1BD4F1150(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
    v92 = *(&v166 + 1);
    sub_1BE048C84();
    v93 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v93, v94);
    swift_getKeyPath();
    sub_1BE04E974();

    *&v168 = v166;
    *(&v168 + 1) = v92;
    v123 = sub_1BD0DDEBC();
    v121 = 0;
    v122 = MEMORY[0x1E69E6158];
    sub_1BE051E14();
    v95 = 0;
    v96 = v19;
    v97 = v165;
    if (!v71)
    {
      v95 = sub_1BE051264();
    }

    v98 = swift_getKeyPath();
    v99 = v142;
    (*(v143 + 32))(v142, v157, v145);
    v100 = v146;
    v101 = (v99 + *(v146 + 36));
    *v101 = v98;
    v101[1] = v95;
    v102 = sub_1BD4F0E9C();
    v103 = v144;
    MEMORY[0x1BFB3DDE0](1, v100, v102);
    sub_1BD0DE53C(v99, &qword_1EBD488D8);
    v172 = v166;
    *&v168 = v100;
    *(&v168 + 1) = v102;
    swift_getOpaqueTypeConformance2();
    sub_1BE050C34();
    (*(v147 + 8))(v103, v91);

    *&v172 = sub_1BD20B2EC();
    *(&v172 + 1) = v104;
    v105 = v148;
    sub_1BE04EB94();

    sub_1BD0DE53C(v97, &qword_1EBD488D0);
    v106 = v159;
    sub_1BE052434();
    sub_1BE04EBB4();

    sub_1BD0DE53C(v105, &qword_1EBD488D0);
    sub_1BD0DE19C(v96, v162, &qword_1EBD488D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v96, &qword_1EBD488D0);
  }
}

uint64_t sub_1BD4F03A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489A0);
  sub_1BD0DE4F4(&qword_1EBD489C0, &qword_1EBD489B8);
  sub_1BD4F2614();
  sub_1BD4F2764();
  return sub_1BE0519D4();
}

uint64_t sub_1BD4F04D0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a3;
  v31 = a2;
  v35 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489D0);
  MEMORY[0x1EEE9AC00](v33, v6);
  v8 = &v28 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B0);
  MEMORY[0x1EEE9AC00](v34, v9);
  v11 = &v28 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v32, v12);
  v14 = &v28 - v13;
  v15 = *a1;
  v28 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v36 = v16;
  v37 = v17;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v36 = v18;
  v37 = v19;
  v22 = v21 & 1;
  v38 = v21 & 1;
  v39 = v23;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v18, v20, v22);

  if (v31 & 1) == 0 && (v15 == v30 && v28 == v29 || (sub_1BE053B84()))
  {
    v24 = sub_1BE051264();
    KeyPath = swift_getKeyPath();
    sub_1BD0DE19C(v14, v11, &qword_1EBD452C0);
    v26 = &v11[*(v34 + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    sub_1BD0DE19C(v11, v8, &qword_1EBD489B0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F26A0();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v11, &qword_1EBD489B0);
  }

  else
  {
    sub_1BD0DE19C(v14, v8, &qword_1EBD452C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F26A0();
    sub_1BD1103C8();
    sub_1BE04F9A4();
  }

  return sub_1BD0DE53C(v14, &qword_1EBD452C0);
}

unint64_t sub_1BD4F083C()
{
  result = qword_1EBD48840;
  if (!qword_1EBD48840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48830);
    sub_1BD4F08C8();
    sub_1BD4F0F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48840);
  }

  return result;
}

unint64_t sub_1BD4F08C8()
{
  result = qword_1EBD48848;
  if (!qword_1EBD48848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48850);
    sub_1BD4F0954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48848);
  }

  return result;
}

unint64_t sub_1BD4F0954()
{
  result = qword_1EBD48858;
  if (!qword_1EBD48858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48860);
    sub_1BD4F09E0();
    sub_1BD4F0DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48858);
  }

  return result;
}

unint64_t sub_1BD4F09E0()
{
  result = qword_1EBD48868;
  if (!qword_1EBD48868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48870);
    sub_1BD4F0A6C();
    sub_1BD4F0C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48868);
  }

  return result;
}

unint64_t sub_1BD4F0A6C()
{
  result = qword_1EBD48878;
  if (!qword_1EBD48878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48888);
    sub_1BD4F0B38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48878);
  }

  return result;
}

unint64_t sub_1BD4F0B38()
{
  result = qword_1EBD48890;
  if (!qword_1EBD48890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48888);
    sub_1BD0DE4F4(&qword_1EBD48898, &qword_1EBD488A0);
    sub_1BD4F1150(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48890);
  }

  return result;
}

unint64_t sub_1BD4F0C20()
{
  result = qword_1EBD488A8;
  if (!qword_1EBD488A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B8);
    sub_1BD4F0CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488A8);
  }

  return result;
}

unint64_t sub_1BD4F0CEC()
{
  result = qword_1EBD488C0;
  if (!qword_1EBD488C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488B8);
    sub_1BD4F0B38();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488C0);
  }

  return result;
}

unint64_t sub_1BD4F0DA4()
{
  result = qword_1EBD488C8;
  if (!qword_1EBD488C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8);
    sub_1BD4F0E9C();
    swift_getOpaqueTypeConformance2();
    sub_1BD4F1150(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488C8);
  }

  return result;
}

unint64_t sub_1BD4F0E9C()
{
  result = qword_1EBD488E0;
  if (!qword_1EBD488E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8);
    sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488E0);
  }

  return result;
}

unint64_t sub_1BD4F0F80()
{
  result = qword_1EBD488E8;
  if (!qword_1EBD488E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488F0);
    sub_1BD4F1064(&qword_1EBD488F8, &qword_1EBD48900, &unk_1BE0DC9F8, sub_1BD4F0954);
    sub_1BD0DE4F4(&qword_1EBD48908, &qword_1EBD48910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD488E8);
  }

  return result;
}

uint64_t sub_1BD4F1064(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t objectdestroyTm_51()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD4F1150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD4F1198(char **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1BD5ED77C(v7);
  }

  v8 = *(v7 + 2);
  v42[0] = v7 + 32;
  v42[1] = v8;
  result = sub_1BE053B14();
  if (result >= v8)
  {
    if (v8 >= 2)
    {
      v31 = a1;
      v32 = v1;
      v43 = sub_1BE04B0F4();
      v12 = *(v43 - 8);
      v13 = *(v12 + 56);
      v37 = v12 + 56;
      v38 = v13;
      v30 = v7;
      v14 = v7 + 48;
      v15 = -1;
      v16 = 1;
      v33 = v8;
      do
      {
        v34 = v16;
        v35 = v15;
        v36 = v14;
        v17 = v14;
        do
        {
          v18 = *(v17 + 5);
          v19 = *v17;
          v20 = *(v17 + 1);
          v40 = *(v17 + 4);
          v41 = v18;
          v39[0] = v19;
          v39[1] = v20;
          v38(v6, 1, 1, v43);
          sub_1BD0DDEBC();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          v21 = sub_1BE0535E4();
          sub_1BD0DE53C(v6, &qword_1EBD450F0);

          if (v21 != -1)
          {
            break;
          }

          v22 = *(v17 + 2);
          v23 = *(v17 + 3);
          v24 = *(v17 + 4);
          v25 = *(v17 + 5);
          v26 = *v17;
          *(v17 + 1) = *(v17 - 1);
          *(v17 + 2) = v26;
          *(v17 - 2) = v22;
          *(v17 - 1) = v23;
          *v17 = v24;
          *(v17 + 1) = v25;
          v17 -= 32;
        }

        while (!__CFADD__(v15++, 1));
        v16 = v34 + 1;
        v14 = v36 + 32;
        v15 = v35 - 1;
      }

      while (v34 + 1 != v33);
      a1 = v31;
      v7 = v30;
    }
  }

  else
  {
    v10 = result;
    if (v8 >= 2)
    {
      v11 = sub_1BE0527B4();
      *(v11 + 16) = v8 >> 1;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v40 = v11 + 32;
    v41 = v8 >> 1;
    v28 = v11;
    sub_1BD4F145C(&v40, v39, v42, v10);
    *(v28 + 16) = 0;
  }

  *a1 = v7;
  return result;
}

void sub_1BD4F145C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v151 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v166 = &v150 - v8;
  v154 = a3;
  v9 = *(a3 + 8);
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_129:
    a3 = *v151;
    if (*v151)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

LABEL_167:
    __break(1u);
    return;
  }

  v150 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v159 = v11;
      v14 = *v154;
      v15 = *v154 + 32 * v13;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v157 = 32 * v12;
      v18 = v14 + 32 * v12;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v169 = v16;
      v170 = v17;
      v167 = v19;
      v168 = v20;
      v21 = sub_1BE04B0F4();
      v22 = *(v21 - 1);
      v23 = v166;
      v162 = *(v22 + 56);
      v163 = v21;
      v161 = (v22 + 56);
      v162(v166, 1, 1);
      v24 = sub_1BD0DDEBC();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048C84();
      v160 = v24;
      v164 = sub_1BE0535E4();
      sub_1BD0DE53C(v23, &qword_1EBD450F0);

      v158 = v12;
      v25 = v12 + 2;
      a3 = v18 + 88;
      while (v9 != v25)
      {
        LODWORD(v165) = v164 == -1;
        v26 = *a3;
        v27 = *(a3 - 40);
        v28 = *(a3 - 32);
        v169 = *(a3 - 8);
        v170 = v26;
        v167 = v27;
        v168 = v28;
        v29 = v166;
        (v162)(v166, 1, 1, v163);
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v30 = sub_1BE0535E4();
        sub_1BD0DE53C(v29, &qword_1EBD450F0);

        ++v25;
        a3 += 32;
        if (((v165 ^ (v30 != -1)) & 1) == 0)
        {
          v9 = v25 - 1;
          break;
        }
      }

      v12 = v158;
      v11 = v159;
      if (v164 == -1)
      {
        if (v9 < v158)
        {
          goto LABEL_160;
        }

        if (v158 < v9)
        {
          v31 = 32 * v9 - 16;
          v32 = v157 + 24;
          v33 = v9;
          v34 = v158;
          do
          {
            if (v34 != --v33)
            {
              v41 = *v154;
              if (!*v154)
              {
                goto LABEL_164;
              }

              v35 = (v41 + v32);
              v36 = (v41 + v31);
              v37 = *(v35 - 3);
              v38 = *(v35 - 1);
              v39 = *v35;
              v40 = *v36;
              *(v35 - 3) = *(v36 - 1);
              *(v35 - 1) = v40;
              *(v36 - 1) = v37;
              *v36 = v38;
              *(v36 + 1) = v39;
            }

            ++v34;
            v31 -= 32;
            v32 += 32;
          }

          while (v34 < v33);
        }
      }

      v13 = v9;
    }

    v42 = v154[1];
    if (v13 >= v42)
    {
      goto LABEL_29;
    }

    a3 = v13;
    v61 = __OFSUB__(v13, v12);
    v43 = v13 - v12;
    if (v61)
    {
      goto LABEL_157;
    }

    if (v43 >= v150)
    {
      goto LABEL_28;
    }

    if (__OFADD__(v12, v150))
    {
      goto LABEL_158;
    }

    if (v12 + v150 >= v42)
    {
      v44 = v154[1];
    }

    else
    {
      v44 = v12 + v150;
    }

    if (v44 < v12)
    {
      goto LABEL_159;
    }

    if (a3 == v44)
    {
LABEL_28:
      v13 = a3;
LABEL_29:
      if (v13 < v12)
      {
        goto LABEL_154;
      }

      goto LABEL_30;
    }

    v159 = v11;
    v129 = *v154;
    v165 = sub_1BE04B0F4();
    v130 = *(v165 - 8);
    v131 = *(v130 + 56);
    v163 = (v130 + 56);
    v164 = v131;
    v132 = v129;
    v133 = v129 + 32 * a3 - 32;
    v158 = v12;
    v134 = (v12 - a3);
    v160 = v44;
    do
    {
      v153 = a3;
      v135 = v132 + 32 * a3;
      a3 = v133;
      v136 = *(v135 + 16);
      v137 = *(v135 + 24);
      v161 = v134;
      v162 = a3;
      do
      {
        v138 = *(a3 + 16);
        v11 = *(a3 + 24);
        v169 = v136;
        v170 = v137;
        v167 = v138;
        v168 = v11;
        v139 = v166;
        v164(v166, 1, 1, v165);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v140 = sub_1BE0535E4();
        sub_1BD0DE53C(v139, &qword_1EBD450F0);

        if (v140 != -1)
        {
          break;
        }

        if (!v132)
        {
          goto LABEL_161;
        }

        v141 = *(a3 + 32);
        v142 = *(a3 + 40);
        v136 = *(a3 + 48);
        v137 = *(a3 + 56);
        v143 = *(a3 + 16);
        *(a3 + 32) = *a3;
        *(a3 + 48) = v143;
        *a3 = v141;
        *(a3 + 8) = v142;
        *(a3 + 16) = v136;
        *(a3 + 24) = v137;
        a3 -= 32;
      }

      while (!__CFADD__(v134++, 1));
      a3 = v153 + 1;
      v133 = v162 + 32;
      v134 = v161 - 1;
    }

    while (v153 + 1 != v160);
    v13 = v160;
    v12 = v158;
    v11 = v159;
    if (v160 < v158)
    {
      goto LABEL_154;
    }

LABEL_30:
    v153 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BD1D7844(0, *(v11 + 2) + 1, 1, v11);
    }

    a3 = *(v11 + 2);
    v45 = *(v11 + 3);
    v46 = a3 + 1;
    if (a3 >= v45 >> 1)
    {
      v11 = sub_1BD1D7844((v45 > 1), a3 + 1, 1, v11);
    }

    *(v11 + 2) = v46;
    v47 = &v11[16 * a3];
    v48 = v153;
    *(v47 + 4) = v12;
    *(v47 + 5) = v48;
    v49 = *v151;
    if (!*v151)
    {
      goto LABEL_165;
    }

    if (a3)
    {
      break;
    }

LABEL_3:
    v10 = v153;
    v9 = v154[1];
    if (v153 >= v9)
    {
      goto LABEL_129;
    }
  }

  v163 = *v151;
  while (1)
  {
    v50 = v46 - 1;
    if (v46 >= 4)
    {
      v55 = &v11[16 * v46 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_143;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_144;
      }

      v62 = &v11[16 * v46];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_146;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_149;
      }

      if (v66 >= v58)
      {
        v84 = &v11[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_153;
        }

        if (v53 < v87)
        {
          v50 = v46 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v46 == 3)
    {
      v51 = *(v11 + 4);
      v52 = *(v11 + 5);
      v61 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      v54 = v61;
LABEL_50:
      if (v54)
      {
        goto LABEL_145;
      }

      v67 = &v11[16 * v46];
      v69 = *v67;
      v68 = *(v67 + 1);
      v70 = __OFSUB__(v68, v69);
      v71 = v68 - v69;
      v72 = v70;
      if (v70)
      {
        goto LABEL_148;
      }

      v73 = &v11[16 * v50 + 32];
      v75 = *v73;
      v74 = *(v73 + 1);
      v61 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v61)
      {
        goto LABEL_151;
      }

      if (__OFADD__(v71, v76))
      {
        goto LABEL_152;
      }

      if (v71 + v76 >= v53)
      {
        if (v53 < v76)
        {
          v50 = v46 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v77 = &v11[16 * v46];
    v79 = *v77;
    v78 = *(v77 + 1);
    v61 = __OFSUB__(v78, v79);
    v71 = v78 - v79;
    v72 = v61;
LABEL_64:
    if (v72)
    {
      goto LABEL_147;
    }

    v80 = &v11[16 * v50];
    v82 = *(v80 + 4);
    v81 = *(v80 + 5);
    v61 = __OFSUB__(v81, v82);
    v83 = v81 - v82;
    if (v61)
    {
      goto LABEL_150;
    }

    if (v83 < v71)
    {
      goto LABEL_3;
    }

LABEL_71:
    if (v50 - 1 >= v46)
    {
      break;
    }

    v88 = *v154;
    if (!*v154)
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v159 = v11;
    v155 = v50 - 1;
    v156 = v50;
    v89 = *&v11[16 * v50 + 16];
    v90 = *&v11[16 * v50 + 40];
    v91 = 32 * v89;
    v92 = (v88 + 32 * v89);
    v93 = 32 * *&v11[16 * v50 + 32];
    v94 = (v88 + v93);
    v11 = (32 * v90);
    v164 = (v88 + 32 * v90);
    v95 = v93 - 32 * v89;
    v96 = 32 * v90 - v93;
    v157 = v90;
    v158 = v89;
    if (v95 >= v96)
    {
      v110 = v164;
      if (v94 != v49 || v164 <= v49)
      {
        memmove(v163, v94, 32 * v90 - v93);
        v49 = v163;
      }

      v97 = v49 + v96;
      if (v96 < 1 || v93 <= v91)
      {
        v98 = v49;
LABEL_108:
        v122 = v94;
      }

      else
      {
        v162 = sub_1BE04B0F4();
        v111 = *(v162 - 1);
        v112 = *(v111 + 56);
        v160 = v111 + 56;
        v161 = v112;
        v165 = v92;
        do
        {
          v110 = (v110 - 32);
          while (1)
          {
            v113 = (v110 + 32);
            v114 = *(v97 - 16);
            v11 = *(v97 - 8);
            v115 = *(v94 - 2);
            v164 = *(v94 - 3);
            v116 = v94;
            v117 = *(v94 - 1);
            v169 = v114;
            v170 = v11;
            v167 = v115;
            v168 = v117;
            v118 = v166;
            (v161)(v166, 1, 1, v162);
            sub_1BD0DDEBC();
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            sub_1BE048C84();
            v119 = sub_1BE0535E4();
            sub_1BD0DE53C(v118, &qword_1EBD450F0);

            if (v119 == -1)
            {
              break;
            }

            v120 = (v97 - 32);
            if (v113 != v97)
            {
              v121 = *(v97 - 16);
              *v110 = *v120;
              *(v110 + 1) = v121;
            }

            v110 = (v110 - 32);
            v97 -= 32;
            v94 = v116;
            if (v120 <= v163)
            {
              v97 = v120;
              v98 = v163;
              goto LABEL_108;
            }
          }

          v122 = (v116 - 32);
          v123 = v165;
          if (v113 != v116)
          {
            v124 = *(v116 - 1);
            *v110 = *v122;
            *(v110 + 1) = v124;
          }

          v98 = v163;
          if (v97 <= v163)
          {
            break;
          }

          v94 = (v116 - 32);
        }

        while (v123 < v122);
      }
    }

    else
    {
      if (v92 != v49 || v94 <= v49)
      {
        memmove(v163, v92, v93 - 32 * v89);
        v49 = v163;
      }

      v97 = v49 + v95;
      if (v95 >= 1 && v11 > v93)
      {
        v98 = v49;
        v162 = sub_1BE04B0F4();
        v99 = *(v162 - 1);
        v100 = *(v99 + 56);
        v160 = v99 + 56;
        v161 = v100;
        while (1)
        {
          v165 = v92;
          v101 = *(v94 + 3);
          v102 = *(v98 + 2);
          v11 = *(v98 + 3);
          v169 = *(v94 + 2);
          v170 = v101;
          v167 = v102;
          v168 = v11;
          v103 = v94;
          v104 = v166;
          (v161)(v166, 1, 1, v162);
          sub_1BD0DDEBC();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE048C84();
          v105 = sub_1BE0535E4();
          sub_1BD0DE53C(v104, &qword_1EBD450F0);

          if (v105 != -1)
          {
            break;
          }

          v106 = v103;
          v94 = (v103 + 32);
          v107 = v165;
          if (v165 != v103)
          {
            goto LABEL_82;
          }

LABEL_83:
          v92 = (v107 + 2);
          if (v98 >= v97 || v94 >= v164)
          {
            goto LABEL_105;
          }
        }

        v106 = v98;
        v107 = v165;
        v108 = v165 == v98;
        v98 = (v98 + 32);
        v94 = v103;
        if (v108)
        {
          goto LABEL_83;
        }

LABEL_82:
        v109 = *(v106 + 1);
        *v107 = *v106;
        v107[1] = v109;
        goto LABEL_83;
      }

      v98 = v49;
LABEL_105:
      v122 = v92;
    }

    if (v122 != v98 || v122 >= v98 + ((v97 - v98 + ((v97 - v98) < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0))
    {
      memmove(v122, v98, 32 * ((v97 - v98) / 32));
    }

    v126 = v157;
    v125 = v158;
    a3 = v159;
    if (v157 < v158)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_1BD5ED6C8(a3);
    }

    v127 = v156;
    if (v156 > *(a3 + 16))
    {
      goto LABEL_142;
    }

    v128 = a3 + 16 * v155;
    *(v128 + 32) = v125;
    *(v128 + 40) = v126;
    v171 = a3;
    sub_1BD5ED63C(v127);
    v11 = v171;
    v46 = *(v171 + 16);
    v49 = v163;
    if (v46 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v11 = sub_1BD5ED6C8(v11);
LABEL_131:
  v171 = v11;
  v145 = *(v11 + 2);
  if (v145 >= 2)
  {
    while (*v154)
    {
      v146 = *&v11[16 * v145];
      v147 = *&v11[16 * v145 + 24];
      v148 = v152;
      sub_1BD4F2168((*v154 + 32 * v146), (*v154 + 32 * *&v11[16 * v145 + 16]), (*v154 + 32 * v147), a3);
      v152 = v148;
      if (v148)
      {
        goto LABEL_139;
      }

      if (v147 < v146)
      {
        goto LABEL_155;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD5ED6C8(v11);
      }

      if (v145 - 2 >= *(v11 + 2))
      {
        goto LABEL_156;
      }

      v149 = &v11[16 * v145];
      *v149 = v146;
      *(v149 + 1) = v147;
      v171 = v11;
      sub_1BD5ED63C(v145 - 1);
      v11 = v171;
      v145 = *(v171 + 16);
      if (v145 <= 1)
      {
        goto LABEL_139;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

LABEL_139:
}

uint64_t sub_1BD4F2168(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v57 = &v46 - v10;
  v11 = a2 - a1 + 31;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 5;
  v13 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 5;
  if (v12 >= v13 >> 5)
  {
    if (a4 != a2 || &a2[32 * v14] <= a4)
    {
      memmove(a4, a2, 32 * v14);
    }

    v16 = &a4[32 * v14];
    v15 = a4;
    if (a3 - a2 >= 32 && a2 > a1)
    {
      v49 = sub_1BE04B0F4();
      v29 = *(v49 - 8);
      v30 = *(v29 + 56);
      v47 = v29 + 56;
      v48 = v30;
      v52 = a1;
      v50 = a4;
LABEL_26:
      v51 = a2;
      v31 = a3 - 32;
      do
      {
        v32 = v31;
        v33 = v31 + 32;
        v34 = *(v16 - 1);
        v35 = *(v51 - 2);
        v36 = *(v51 - 1);
        v55 = *(v16 - 2);
        v56 = v34;
        v53 = v35;
        v54 = v36;
        v37 = v57;
        v48(v57, 1, 1, v49);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v38 = sub_1BE0535E4();
        sub_1BD0DE53C(v37, &qword_1EBD450F0);

        if (v38 == -1)
        {
          v41 = v51;
          v42 = v52;
          v43 = v51 - 32;
          a3 = v32;
          if (v33 != v51)
          {
            v44 = *(v51 - 1);
            *v32 = *v43;
            *(v32 + 1) = v44;
          }

          v15 = v50;
          if (v16 <= v50 || (a2 = v41 - 32, v43 <= v42))
          {
            a2 = v41 - 32;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v39 = v16 - 32;
        if (v33 != v16)
        {
          v40 = *(v16 - 1);
          *v32 = *v39;
          *(v32 + 1) = v40;
        }

        v31 = v32 - 32;
        v16 -= 32;
        v15 = v50;
      }

      while (v39 > v50);
      v16 = v39;
      a2 = v51;
    }
  }

  else
  {
    v15 = a4;
    if (a4 != a1 || &a1[32 * v12] <= a4)
    {
      memmove(a4, a1, 32 * v12);
    }

    v16 = &a4[32 * v12];
    if (a2 - a1 >= 32 && a2 < a3)
    {
      v49 = sub_1BE04B0F4();
      v17 = *(v49 - 8);
      v18 = *(v17 + 56);
      v47 = v17 + 56;
      v48 = v18;
      v51 = v16;
      while (1)
      {
        v52 = a1;
        v19 = *(a2 + 3);
        v20 = *(v15 + 2);
        v21 = *(v15 + 3);
        v55 = *(a2 + 2);
        v56 = v19;
        v53 = v20;
        v54 = v21;
        v22 = a2;
        v23 = v57;
        v48(v57, 1, 1, v49);
        sub_1BD0DDEBC();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BE048C84();
        v24 = sub_1BE0535E4();
        sub_1BD0DE53C(v23, &qword_1EBD450F0);

        if (v24 != -1)
        {
          break;
        }

        v25 = v22;
        a2 = v22 + 32;
        v26 = v52;
        if (v52 != v22)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 = v26 + 32;
        v16 = v51;
        if (v15 >= v51 || a2 >= a3)
        {
          goto LABEL_36;
        }
      }

      v25 = v15;
      v26 = v52;
      v27 = v52 == v15;
      v15 += 32;
      a2 = v22;
      if (v27)
      {
        goto LABEL_15;
      }

LABEL_14:
      v28 = *(v25 + 1);
      *v26 = *v25;
      *(v26 + 1) = v28;
      goto LABEL_15;
    }

LABEL_36:
    a2 = a1;
  }

LABEL_38:
  if (a2 != v15 || a2 >= &v15[(v16 - v15 + (v16 - v15 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(a2, v15, 32 * ((v16 - v15) / 32));
  }

  return 1;
}

unint64_t sub_1BD4F2614()
{
  result = qword_1EBD48998;
  if (!qword_1EBD48998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489A0);
    sub_1BD4F26A0();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48998);
  }

  return result;
}

unint64_t sub_1BD4F26A0()
{
  result = qword_1EBD489A8;
  if (!qword_1EBD489A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489B0);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489A8);
  }

  return result;
}

unint64_t sub_1BD4F2764()
{
  result = qword_1EBD489C8;
  if (!qword_1EBD489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489C8);
  }

  return result;
}

unint64_t sub_1BD4F27B8()
{
  result = qword_1EBD489D8;
  if (!qword_1EBD489D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD489E0);
    sub_1BD4F1064(&qword_1EBD48918, &qword_1EBD48810, &unk_1BE0DC950, sub_1BD4F083C);
    sub_1BD0DE4F4(&qword_1EBD48920, &qword_1EBD48800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD489D8);
  }

  return result;
}

id PeerPaymentRecurringBubbleContentViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentRecurringBubbleContentViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentRecurringBubbleContentViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeerPaymentRecurringBubbleContentViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentRecurringBubbleContentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_1BD4F2AAC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A10);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = v18 - v7;
  v9 = *(v2 + 8);
  if (v9 && (v10 = [v9 emoji]) != 0)
  {
    v11 = v10;
    sub_1BE052434();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A18);
  sub_1BD4F2C5C(v2, v12 ^ 1, &v8[*(v13 + 44)]);
  if (v12)
  {
    sub_1BE051CD4();
  }

  else
  {
    sub_1BE051CE4();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v8, a1, &qword_1EBD48A10);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A20) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

id sub_1BD4F2C5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v98 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v82 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A28);
  MEMORY[0x1EEE9AC00](v93, v8);
  v10 = &v82 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A30);
  v11 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v12);
  v95 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v94 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A38);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v82 - v24;
  v26 = *(a1 + 8);
  if (v26 && (v27 = [*(a1 + 8) emoji]) != 0)
  {
    v87 = v11;
    v88 = v25;
    v89 = v20;
    v91 = a1;
    v28 = v27;
    v29 = sub_1BE052434();
    v31 = v30;

    v92 = [v26 color];
    *&v109 = v29;
    *(&v109 + 1) = v31;
    sub_1BD0DDEBC();
    v86 = v31;
    sub_1BE048C84();
    v32 = sub_1BE0506C4();
    v34 = v33;
    v36 = v35;
    v90 = v37;
    v38 = type metadata accessor for PeerPaymentRecurringBubbleContentView();
    v39 = sub_1BE050354();
    (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
    sub_1BE0503B4();
    sub_1BD0DE53C(v7, &qword_1EBD49130);
    v40 = sub_1BE0505F4();
    v84 = v41;
    v85 = v40;
    v43 = v42;
    v83 = v44;

    sub_1BD0DDF10(v32, v34, v36 & 1);

    v45 = v38;
    v46 = v91;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v47 = v43 & 1;
    LOBYTE(v105[0]) = v47;
    result = PKPeerPaymentMessageColorFromSemanticColor(v92);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v92 = sub_1BE0511C4();
    v49 = sub_1BE0501D4();
    v108[0] = *v110;
    v108[1] = *&v110[2];
    v107 = v109;
    v50 = v46;
    v51 = *(v46 + *(v45 + 36));
    v52 = &v10[*(v93 + 36)];
    v53 = *(sub_1BE04EDE4() + 20);
    v54 = *MEMORY[0x1E697F468];
    v55 = sub_1BE04F684();
    (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
    *v52 = v51;
    *(v52 + 1) = v51;
    *&v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    v56 = v84;
    *v10 = v85;
    *(v10 + 1) = v56;
    v10[16] = v47;
    *(v10 + 3) = v83;
    v57 = v108[0];
    *(v10 + 2) = v107;
    *(v10 + 3) = v57;
    *(v10 + 4) = v108[1];
    *(v10 + 10) = v92;
    v10[88] = v49;
    LOBYTE(v54) = sub_1BE050224();
    sub_1BE04E1F4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v95;
    sub_1BD0DE204(v10, v95, &qword_1EBD48A28);
    v67 = v96;
    v68 = v66 + *(v96 + 36);
    *v68 = v54;
    *(v68 + 8) = v59;
    *(v68 + 16) = v61;
    *(v68 + 24) = v63;
    *(v68 + 32) = v65;
    *(v68 + 40) = 0;
    v69 = v66;
    v70 = v94;
    sub_1BD0DE204(v69, v94, &qword_1EBD48A30);
    v25 = v88;
    sub_1BD0DE204(v70, v88, &qword_1EBD48A30);
    (*(v87 + 56))(v25, 0, 1, v67);
    v20 = v89;
    a1 = v50;
  }

  else
  {
    (*(v11 + 56))(v25, 1, 1, v96, v23);
  }

  v71 = v25;
  if (v97)
  {
    v72 = sub_1BE04F7C4();
  }

  else
  {
    v72 = sub_1BE04F7B4();
  }

  v73 = v72;
  v112 = 0;
  sub_1BD4F344C(a1, &v109);
  v103 = *&v110[6];
  v104[0] = *&v110[8];
  *(v104 + 9) = *(&v110[9] + 1);
  v99 = v109;
  v100 = *v110;
  v101 = *&v110[2];
  v102 = *&v110[4];
  v105[0] = v109;
  v105[1] = *v110;
  v105[2] = *&v110[2];
  v105[3] = *&v110[4];
  v105[4] = *&v110[6];
  v106[0] = *&v110[8];
  *(v106 + 9) = *(&v110[9] + 1);
  sub_1BD0DE19C(&v99, &v107, &qword_1EBD48A40);
  sub_1BD0DE53C(v105, &qword_1EBD48A40);
  *&v111[55] = v102;
  *&v111[71] = v103;
  *&v111[87] = v104[0];
  *&v111[96] = *(v104 + 9);
  *&v111[7] = v99;
  *&v111[23] = v100;
  *&v111[39] = v101;
  v74 = v112;
  sub_1BD0DE19C(v71, v20, &qword_1EBD48A38);
  v75 = v98;
  sub_1BD0DE19C(v20, v98, &qword_1EBD48A38);
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48A48) + 48);
  *(&v108[3] + 1) = *&v111[48];
  *(&v108[4] + 1) = *&v111[64];
  *(&v108[5] + 1) = *&v111[80];
  *(&v108[6] + 1) = *&v111[96];
  *(v108 + 1) = *v111;
  v77 = v75 + v76;
  v107 = v73;
  LOBYTE(v108[0]) = v74;
  *(&v108[1] + 1) = *&v111[16];
  *(&v108[2] + 1) = *&v111[32];
  *(v77 + 128) = v111[111];
  v78 = v108[4];
  *(v77 + 64) = v108[3];
  *(v77 + 80) = v78;
  v79 = v108[2];
  *(v77 + 32) = v108[1];
  *(v77 + 48) = v79;
  v80 = v108[0];
  *v77 = v107;
  *(v77 + 16) = v80;
  v81 = v108[6];
  *(v77 + 96) = v108[5];
  *(v77 + 112) = v81;
  sub_1BD0DE19C(&v107, &v109, &qword_1EBD48A50);
  sub_1BD0DE53C(v71, &qword_1EBD48A38);
  *(&v110[6] + 1) = *&v111[48];
  *(&v110[8] + 1) = *&v111[64];
  *(&v110[10] + 1) = *&v111[80];
  *(&v110[12] + 1) = *&v111[96];
  *(v110 + 1) = *v111;
  *(&v110[2] + 1) = *&v111[16];
  v109 = v73;
  LOBYTE(v110[0]) = v74;
  *(&v110[4] + 1) = *&v111[32];
  sub_1BD0DE53C(&v109, &qword_1EBD48A50);
  return sub_1BD0DE53C(v20, &qword_1EBD48A38);
}

id sub_1BD4F344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD4F3958();
  v3 = &selRef_playerItemWithAsset_;
  if (v4)
  {
    v59 = a1;
    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    sub_1BE050424();
    v10 = sub_1BE0505F4();
    v12 = v11;
    v14 = v13;

    sub_1BD0DDF10(v5, v7, v9 & 1);

    sub_1BE0503A4();
    v15 = sub_1BE050544();
    v17 = v16;
    v19 = v18;
    sub_1BD0DDF10(v10, v12, v14 & 1);

    v20 = [objc_opt_self() clearColor];
    result = [objc_opt_self() primaryTextColor];
    if (!result)
    {
      __break(1u);
      goto LABEL_12;
    }

    sub_1BE0511C4();
    v22 = sub_1BE050574();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_1BD0DDF10(v15, v17, v19 & 1);

    KeyPath = swift_getKeyPath();
    v67 = v22;
    v65 = v24;
    v61 = v26 & 1;
    sub_1BD0D7F18(v22, v24, v26 & 1);
    v64 = v28;
    sub_1BE048C84();
    v66 = KeyPath;
    sub_1BE048964();
    v63 = 2;
    v3 = &selRef_playerItemWithAsset_;
    a1 = v59;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v61 = 0;
    v63 = 0;
  }

  v30 = *(a1 + 8);
  if (!v30 || (v31 = [v30 text]) == 0)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_10;
  }

  v32 = v31;
  sub_1BE052434();

  sub_1BD0DDEBC();
  v33 = sub_1BE0506C4();
  v35 = v34;
  v37 = v36;
  sub_1BE050424();
  v38 = sub_1BE0505F4();
  v58 = v39;
  v60 = v38;
  v41 = v40;

  sub_1BD0DDF10(v33, v35, v37 & 1);

  v42 = [objc_opt_self() clearColor];
  result = [objc_opt_self() v3[324]];
  if (result)
  {

    sub_1BE0511C4();
    v43 = sub_1BE050574();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_1BD0DDF10(v60, v58, v41 & 1);

    v50 = swift_getKeyPath();
    v51 = v47 & 1;
    v52 = v43;
    v53 = v45;
    v54 = v47 & 1;
    sub_1BD0D7F18(v43, v45, v51);
    v55 = v49;
    sub_1BE048C84();
    v56 = v50;
    sub_1BE048964();
    v57 = 2;
LABEL_10:
    sub_1BD2B5270(v67, v65, v61, v64);
    sub_1BD2B5270(v52, v53, v54, v55);
    sub_1BD2B52C0(v67, v65, v61, v64);
    sub_1BD2B52C0(v52, v53, v54, v55);
    *a2 = v67;
    *(a2 + 8) = v65;
    *(a2 + 16) = v61;
    *(a2 + 24) = v64;
    *(a2 + 32) = v66;
    *(a2 + 40) = v63;
    *(a2 + 48) = 0;
    *(a2 + 56) = v52;
    *(a2 + 64) = v53;
    *(a2 + 72) = v54;
    *(a2 + 80) = v55;
    *(a2 + 88) = v56;
    *(a2 + 96) = v57;
    *(a2 + 104) = 0;
    sub_1BD2B52C0(v52, v53, v54, v55);
    return sub_1BD2B52C0(v67, v65, v61, v64);
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1BD4F3958()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v29 - v17;
  v19 = [*v0 minimalFormattedStringValue];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = *(v0 + *(type metadata accessor for PeerPaymentRecurringBubbleContentView() + 28));
  if (v24 > 1)
  {
    switch(v24)
    {
      case 2:
        v30 = v21;
        (*(v2 + 104))(v13, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v26 = result;
          sub_1BE04B6F4();
          v18 = v13;
          goto LABEL_18;
        }

        __break(1u);
        break;
      case 3:
        v30 = v21;
        (*(v2 + 104))(v9, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v26 = result;
          sub_1BE04B6F4();
          v18 = v9;
          goto LABEL_18;
        }

        break;
      case 4:
        v30 = v21;
        (*(v2 + 104))(v5, *MEMORY[0x1E69B80A0], v1);
        result = PKPassKitBundle();
        if (result)
        {
          v26 = result;
          sub_1BE04B6F4();
          v18 = v5;
LABEL_18:

          (*(v2 + 8))(v18, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BE0B69E0;
          *(v28 + 56) = MEMORY[0x1E69E6158];
          *(v28 + 64) = sub_1BD110550();
          *(v28 + 32) = v30;
          *(v28 + 40) = v23;
          v27 = sub_1BE052454();

          return v27;
        }

        goto LABEL_22;
      default:
LABEL_13:

        return 0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v24 != 1)
  {
    goto LABEL_13;
  }

  v30 = v21;
  (*(v2 + 104))(v18, *MEMORY[0x1E69B80A0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    sub_1BE04B6F4();
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_1BD4F3D7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD489E8);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = type metadata accessor for PeerPaymentRecurringBubbleContentView();
  if (sub_1BE04AED4())
  {
    return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
  }

  return 0;
}

id _s9PassKitUI45PeerPaymentRecurringBubbleContentViewProviderC09recurringgI10Controller14currencyAmount4memo9startDate9frequencySo06UIViewL0CSo010PKCurrencyN0C_So06PKPeerefE4MemoC10Foundation0Q0VSo0uefE9FrequencyVtFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PeerPaymentRecurringBubbleContentView();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29[-v15];
  v17 = v9[8];
  v18 = sub_1BE04AF64();
  (*(*(v18 - 8) + 16))(&v16[v17], a3, v18);
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v16[v9[9]] = a4;
  *&v16[v9[10]] = 0x4028000000000000;
  *&v16[v9[11]] = 0x4024000000000000;
  *&v16[v9[12]] = 0x4044000000000000;
  *&v16[v9[13]] = 0x4038000000000000;
  sub_1BD4F40E0(v16, v12);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489F0));
  v19 = a2;
  v20 = a1;
  v21 = sub_1BE04F894();
  v22 = sub_1BE04EC64();
  v24 = sub_1BE04F864();
  if ((*v23 & v22) != 0)
  {
    *v23 &= ~v22;
  }

  v24(v29, 0);
  v25 = v21;
  result = [v25 view];
  if (result)
  {
    v27 = result;
    v28 = [objc_opt_self() clearColor];
    [v27 setBackgroundColor_];

    sub_1BD4F4144(v16);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PeerPaymentRecurringBubbleContentView()
{
  result = qword_1EBD489F8;
  if (!qword_1EBD489F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4F40E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentRecurringBubbleContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4F4144(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentRecurringBubbleContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD4F41C8()
{
  sub_1BD0E5E8C(319, &qword_1EBD43B00);
  if (v0 <= 0x3F)
  {
    sub_1BD4F42A0();
    if (v1 <= 0x3F)
    {
      sub_1BE04AF64();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKPeerPaymentRecurringPaymentFrequency(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4F42A0()
{
  if (!qword_1EBD48A08)
  {
    sub_1BD0E5E8C(255, &qword_1EBD489E8);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD48A08);
    }
  }
}

unint64_t sub_1BD4F4324()
{
  result = qword_1EBD48A58;
  if (!qword_1EBD48A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48A20);
    sub_1BD4F43B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A58);
  }

  return result;
}

unint64_t sub_1BD4F43B0()
{
  result = qword_1EBD48A60;
  if (!qword_1EBD48A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A60);
  }

  return result;
}

void sub_1BD4F44E8(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v11 = [v10 configuration];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 type];

    if (v13 <= 0xC)
    {
      if (((1 << v13) & 0xF1F) == 0)
      {
LABEL_19:
        a1(1);
        return;
      }

      v14 = [v10 setupProductMethods];
      if (v14)
      {
        v15 = v14;
        sub_1BD0E5E8C(0, &qword_1EBD48A90);
        v16 = sub_1BE052744();

        v34 = a1;
        v35 = a2;
        v32 = v5;
        v33 = v10;
        v31 = v6;
        if (v16 >> 62)
        {
          goto LABEL_22;
        }

        for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
        {
          v18 = 0;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1BFB40900](v18, v16);
            }

            else
            {
              if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            v22 = [v19 type];

            if (v22 > 8 || ((1 << v22) & 0x160) == 0)
            {
              goto LABEL_23;
            }

            ++v18;
            if (v21 == i)
            {

              a1 = v34;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          ;
        }

LABEL_23:

        a1 = v34;
        a2 = v35;
        v5 = v32;
        v10 = v33;
        v6 = v31;
      }
    }

    v24 = v36;
    sub_1BE04BC34();
    v25 = sub_1BE04BA54();
    (*(v6 + 8))(v24, v5);
    v26 = sub_1BE04BBD4();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = a1;
    v28[4] = a2;
    aBlock[4] = sub_1BD4F68C0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4F4AA0;
    aBlock[3] = &block_descriptor_111;
    v29 = _Block_copy(aBlock);
    sub_1BE048964();

    [v26 setupProductForProvisioning:v10 includePurchases:(v25 & 1) == 0 withCompletionHandler:v29];
    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD4F4888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = sub_1BE04A844();
      v14 = swift_allocObject();
      *(v14 + 16) = a5;
      *(v14 + 24) = a6;
      aBlock[4] = sub_1BD1B5F6C;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_12_2;
      v15 = _Block_copy(aBlock);
      sub_1BE048964();

      v16 = PKAlertForDisplayableErrorWithCancelHandler(v13, 0, v15);
      _Block_release(v15);

      if (v16)
      {
        v17 = &v11[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 1);
          ObjectType = swift_getObjectType();
          (*(v18 + 24))(v16, ObjectType, v18);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        a5(0);
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v20 = a3;
      }

      *(Strong + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials) = v20;
      sub_1BE048C84();

      a5(1);
    }
  }
}

uint64_t sub_1BD4F4AA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v8 = a3;
  v7(a2, a3, v4);
}

unint64_t sub_1BD4F4B4C(void *a1)
{
  if (!a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
    type metadata accessor for ProvisioningRequirementsFlowSection();
    swift_allocObject();
    sub_1BE048964();
    v5 = v4;
    sub_1BD4435E4(v3, v4, 0);
    v7 = v6;

    type metadata accessor for UIFlowModifier();
    v8 = swift_allocObject();
    v9 = byte_1EBDAB281;
    *(v8 + 32) = byte_1EBDAB280;
    *(v8 + 33) = v9;
    *(v8 + 48) = 0;
    swift_unknownObjectWeakInit();
    result = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = &off_1F3B98C00;
    *(v8 + 33) = 1;
    return result;
  }

  if (object_getClass(a1) != _TtC9PassKitUI35ProvisioningRequirementsFlowSection)
  {
    return 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  result = [v10 configuration];
  if (!result)
  {
    goto LABEL_54;
  }

  v11 = result;
  v12 = [result type];

  result = 0;
  if (v12 <= 6)
  {
    if (v12 >= 5)
    {
      if (v12 != 5)
      {
        if (v12 == 6)
        {
          v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
          type metadata accessor for PaymentSetupAppExtensionFlowSection();
          swift_allocObject();
          sub_1BE048964();
          v14 = v10;
          v15 = sub_1BD7FCCF0(v13, v14);

          return v15;
        }

        return result;
      }

LABEL_27:
      v27 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
      type metadata accessor for PaymentSetupProductAppFlowSection();
      v28 = swift_allocObject();
      v28[5] = 0;
      swift_unknownObjectWeakInit();
      v28[6] = 0xD000000000000012;
      v28[7] = 0x80000001BE12CB40;
      v28[2] = v27;
      v28[3] = v10;
      v29 = v10;
      sub_1BE048964();
      return v28;
    }

LABEL_14:
    v16 = sub_1BD4F53F8();
    if (v16 >> 62)
    {
      v54 = v16;
      v55 = sub_1BE053704();
      v16 = v54;
      if (v55)
      {
        goto LABEL_16;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v17 = sub_1BD4F66A8(v16);

      return v17;
    }

    result = [v10 configuration];
    if (result)
    {
      v56 = result;

      v57 = [v56 state];

      if ((v57 - 3) > 1)
      {
        v60 = sub_1BD4F5B20();
        v61 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
        v62 = objc_allocWithZone(v61);
        v63 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
        *&v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
        *&v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v64 = &v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
        *v64 = 0xD00000000000001DLL;
        v64[1] = 0x80000001BE12CB20;
        *&v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
        *&v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v10;
        v65 = *&v62[v63];
        *&v62[v63] = 0;
        v66 = v10;

        v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = v60 & 1;
        v62[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
        v69.receiver = v62;
        v69.super_class = v61;
        return objc_msgSendSuper2(&v69, sel_init);
      }

      v58 = objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
      v59 = v10;
      v23 = sub_1BE048964();
      v24 = v59;
      v25 = 1;
      return sub_1BD89F14C(v23, v24, v25);
    }

    goto LABEL_55;
  }

  if (v12 <= 9)
  {
    if ((v12 - 8) >= 2)
    {
      if (v12 != 7)
      {
        return result;
      }

      result = [v10 configuration];
      if (result)
      {
        v20 = result;
        v21 = [result featureIdentifier];

        if (v21 >= 4)
        {
          if (v21 == 4)
          {
            v51 = v10;
            v52 = sub_1BE048964();
            v53 = sub_1BD4D8C78(v52, v51);

            return v53;
          }

          if (v21 != 5)
          {
            return 0;
          }
        }

        objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
        v22 = v10;
        v23 = sub_1BE048964();
        v24 = v22;
        v25 = 0;
        return sub_1BD89F14C(v23, v24, v25);
      }

      goto LABEL_56;
    }

    goto LABEL_14;
  }

  if (v12 != 10)
  {
    if (v12 != 11)
    {
      if (v12 == 12)
      {
        objc_allocWithZone(type metadata accessor for ProvisioningIssuerInstallmentsFlowItem());
        v18 = v10;
        v19 = sub_1BE048964();
        return sub_1BD5C3C54(v19, v18);
      }

      return result;
    }

    result = sub_1BD4F53F8();
    v30 = result;
    if (result >> 62)
    {
      if (sub_1BE053704() == 1)
      {
        result = sub_1BE053704();
        if (result)
        {
          goto LABEL_30;
        }
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_30:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1BFB40900](0, v30);
        goto LABEL_33;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v30 + 32);
LABEL_33:
        v32 = v31;

        v33 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
        v34 = v10;
        v35 = sub_1BD4F5B20();
        v36 = type metadata accessor for ProvisioningCredentialFlowSection();
        v37 = objc_allocWithZone(v36);
        *&v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v38 = &v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
        *v38 = 0x100000000000001ALL;
        v38[1] = 0x80000001BE1199C0;
        v39 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
        v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
        *&v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
        *&v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v33;
        *&v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v32;
        *&v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v10;
        v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = v35 & 1;
        v37[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
        v37[v39] = 1;
        v68.receiver = v37;
        v68.super_class = v36;
        sub_1BE048964();
        return objc_msgSendSuper2(&v68, sel_init);
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v67 = sub_1BD4F66A8(v30);

    return v67;
  }

  v26 = [v10 setupProductMethodsOfType_];
  if (v26)
  {

    goto LABEL_27;
  }

  result = [v10 configuration];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = [result state];

  v42 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
  if ((v41 - 3) > 1)
  {
    sub_1BE048964();
    v46 = 0;
    v44 = 0;
  }

  else
  {
    v43 = objc_allocWithZone(type metadata accessor for PaymentSetupFeatureOnboardingFlowItem());
    swift_retain_n();
    v44 = sub_1BD89F14C(v42, v10, 1);
    v45 = v44;
    v46 = &off_1F3BC23D0;
  }

  type metadata accessor for PaymentSetupIdentityFlowSection();
  swift_allocObject();
  v47 = v10;
  v48 = sub_1BD4B7FFC(v42, v10, 0, 0, v44, v46);

  swift_unknownObjectRelease();
  type metadata accessor for UIFlowModifier();
  v49 = swift_allocObject();
  v50 = byte_1EBDAB281;
  *(v49 + 32) = byte_1EBDAB280;
  *(v49 + 33) = v50;
  *(v49 + 48) = 0;
  swift_unknownObjectWeakInit();
  result = v49;
  *(v49 + 16) = v48;
  *(v49 + 24) = &off_1F3B98C00;
  *(v49 + 33) = 1;
  return result;
}

id sub_1BD4F53F8()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BA14();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BAC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B9D4();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v59 - v20;
  v64 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v65 = v0;
  result = [v64 configuration];
  if (result)
  {
    v23 = result;
    v24 = [result type];

    if (v24 != 10)
    {
      if (v24 != 3)
      {
        goto LABEL_12;
      }

      sub_1BE04BC34();
      sub_1BE04BA24();
      (*(v9 + 8))(v12, v8);
      v25 = v60;
      if ((*(v60 + 88))(v7, v4) == *MEMORY[0x1E69B8020])
      {
        (*(v25 + 96))(v7, v4);
        v26 = v59;
        (*(v59 + 32))(v21, v7, v13);
        (*(v26 + 104))(v16, *MEMORY[0x1E69B7FE8], v13);
        sub_1BD4F6868();
        v27 = sub_1BE052334();
        v28 = *(v26 + 8);
        v28(v16, v13);
        v28(v21, v13);
        if ((v27 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        (*(v25 + 8))(v7, v4);
      }

      v29 = sub_1BE04BBD4();
      v30 = [v29 requiredTransitNetworkIdentifiers];

      if (!v30)
      {
LABEL_12:
        v35 = *(v65 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials);
        sub_1BE048C84();
        return v35;
      }
    }

LABEL_10:
    v31 = sub_1BE04BBD4();
    v32 = [v31 allCredentials];

    v33 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      sub_1BD0E5E8C(0, &qword_1EBD444C0);
      v34 = sub_1BE052744();
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    v36 = [v64 productIdentifier];
    if (v36)
    {
      v37 = v36;
      v64 = sub_1BE052434();
      v39 = v38;
    }

    else
    {
      v64 = 0;
      v39 = 0;
    }

    v66 = v33;
    if (v34 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v41 = 0;
      v65 = v34 & 0xC000000000000001;
      while (1)
      {
        if (v65)
        {
          v42 = MEMORY[0x1BFB40900](v41, v34);
        }

        else
        {
          if (v41 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v42 = *(v34 + 8 * v41 + 32);
        }

        v43 = v42;
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v45 = [v42 setupProductIdentifier];
        if (v45)
        {
          v46 = v45;
          v47 = sub_1BE052434();
          v49 = v48;

          if (v39)
          {
            if (v47 == v64 && v39 == v49)
            {

LABEL_38:
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
              goto LABEL_22;
            }

            v51 = sub_1BE053B84();

            if (v51)
            {
              goto LABEL_38;
            }
          }

          else
          {
          }
        }

        else if (!v39)
        {
          goto LABEL_38;
        }

LABEL_22:
        ++v41;
        if (v44 == i)
        {
          v35 = v66;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v52 = v61;
    sub_1BE04D0E4();
    sub_1BE048964();
    v53 = sub_1BE04D204();
    v54 = sub_1BE052C54();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      v57 = v62;
      v56 = v63;
      if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
      {
        v58 = sub_1BE053704();
      }

      else
      {
        v58 = *(v35 + 16);
      }

      *(v55 + 4) = v58;

      _os_log_impl(&dword_1BD026000, v53, v54, "Filtered credentials for product and found %ld credentials", v55, 0xCu);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    else
    {

      v57 = v62;
      v56 = v63;
    }

    (*(v57 + 8))(v52, v56);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4F5B20()
{
  v1 = sub_1BE04BAC4();
  v92 = *(v1 - 8);
  v93 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v101 = v4;
  v102 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v94 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v95 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v100 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v99 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v98 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v97 = &v88 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v96 = &v88 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v88 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v88 - v38;
  v40 = sub_1BE04B944();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BE04BBD4();
  v46 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  result = [v46 configuration];
  if (!result)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v48 = result;
  v49 = [result type];

  sub_1BE04BB94();
  v50 = sub_1BE04B8E4();
  (*(v41 + 8))(v44, v40);
  v51 = [v50 paymentSetupSupportedInRegion];

  v52 = [v45 isCurrentUserUnder13];
  v53 = [v46 setupProductMethods];
  if (v53)
  {
    sub_1BD0E5E8C(0, &qword_1EBD48A90);
    v54 = sub_1BE052744();

    if (v54 >> 62)
    {
      v53 = sub_1BE053704();
    }

    else
    {
      v53 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v53 != 0;
    LOBYTE(v53) = [v46 supportsSetupProductMethodForType_];
  }

  else
  {
    v55 = 0;
  }

  if (([v46 allSupportedProtocols] & 4) != 0 && !((PKFelicaSecureElementIsAvailable() != 0) | v53 & 1))
  {
    sub_1BE04D0E4();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BD026000, v61, v62, "Manual entry is disabled for typeF product as a local Felica secure element  is not available and digital issuance is not supported", v63, 2u);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    goto LABEL_24;
  }

  if (v55)
  {
    if (!PKSecureElementIsAvailable())
    {
      sub_1BE04D0E4();
      v64 = sub_1BE04D204();
      v65 = sub_1BE052C54();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1BD026000, v64, v65, "Manual entry is disabled for because secure element is not available", v66, 2u);
        MEMORY[0x1BFB45F20](v66, -1, -1);
      }

      (*(v102 + 8))(v35, v101);
      return 0;
    }

    if (v49 != 11)
    {
      if (v49 != 10)
      {
        if (v49 != 6)
        {
          goto LABEL_37;
        }

LABEL_34:
        v67 = v98;
        sub_1BE04D0E4();
        v68 = sub_1BE04D204();
        v69 = sub_1BE052C54();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1BD026000, v68, v69, "Manual entry is disabled because a issuer provisioning extension backed product was selected", v70, 2u);
          MEMORY[0x1BFB45F20](v70, -1, -1);
        }

        (*(v102 + 8))(v67, v101);
        return 0;
      }

LABEL_32:
      v56 = v99;
      sub_1BE04D0E4();
      v57 = sub_1BE04D204();
      v58 = sub_1BE052C54();
      if (!os_log_type_enabled(v57, v58))
      {
        goto LABEL_46;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Manual entry is disabled because an identity product was selected";
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  if (v49 > 5)
  {
    if (v49 == 6)
    {
      goto LABEL_34;
    }

    if (v49 == 10)
    {
      goto LABEL_32;
    }

    if (v49 != 11)
    {
      goto LABEL_37;
    }

LABEL_19:
    v56 = v100;
    sub_1BE04D0E4();
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_46;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Manual entry is disabled because a car key product was selected";
LABEL_45:
    _os_log_impl(&dword_1BD026000, v57, v58, v60, v59, 2u);
    MEMORY[0x1BFB45F20](v59, -1, -1);
    goto LABEL_46;
  }

  if (v49 == 3)
  {
    v56 = v96;
    sub_1BE04D0E4();
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Manual entry is disabled because transit product lacks provisioning method";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v49 == 4)
  {
    v56 = v97;
    sub_1BE04D0E4();
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_46;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Manual entry is disabled because eWallet product lacks provisioning method";
    goto LABEL_45;
  }

LABEL_37:
  if (v51 == 2)
  {
    v56 = v95;
    sub_1BE04D0E4();
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Manual entry is disabled because the user is out of apple pay region";
      goto LABEL_45;
    }

LABEL_46:

    (*(v102 + 8))(v56, v101);
    return 0;
  }

  if (v52 == 1)
  {
    v56 = v94;
    sub_1BE04D0E4();
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Manual entry is disabled because the user is under 13";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v71 = v45;
  v72 = [v46 productIdentifier];
  if (v72)
  {
    v73 = v72;
    v74 = sub_1BE052434();
    v76 = v75;
  }

  else
  {
    v76 = 0xE300000000000000;
    v74 = 7104878;
  }

  result = [v46 configuration];
  if (!result)
  {
    goto LABEL_66;
  }

  v77 = result;
  v78 = [result state];

  if (v78 > 2)
  {
    if ((v78 - 3) < 2)
    {
      v85 = v91;
      sub_1BE04BC34();
      v86 = sub_1BE04BA54();
      (*(v92 + 8))(v85, v93);
      if (v86)
      {
        v39 = v90;
        sub_1BE04D0E4();
        sub_1BE048C84();
        v79 = sub_1BE04D204();
        v80 = sub_1BE052C54();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v103 = v82;
          *v81 = 136446210;
          v87 = sub_1BD123690(v74, v76, &v103);

          *(v81 + 4) = v87;
          v84 = "Manual entry is disabled for %{public}s because we are in setup assistant and notify me is not supported";
          goto LABEL_60;
        }

LABEL_62:

        goto LABEL_63;
      }
    }
  }

  else if (v78 == 2)
  {
    v39 = v89;
    sub_1BE04D0E4();
    sub_1BE048C84();
    v79 = sub_1BE04D204();
    v80 = sub_1BE052C54();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v103 = v82;
      *v81 = 136446210;
      v83 = sub_1BD123690(v74, v76, &v103);

      *(v81 + 4) = v83;
      v84 = "Manual entry is disabled because %{public}s is set as unavailable";
LABEL_60:
      _os_log_impl(&dword_1BD026000, v79, v80, v84, v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1BFB45F20](v82, -1, -1);
      MEMORY[0x1BFB45F20](v81, -1, -1);

LABEL_63:
LABEL_24:
      (*(v102 + 8))(v39, v101);
      return 0;
    }

    goto LABEL_62;
  }

  return 1;
}

id sub_1BD4F66A8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context);
  v4 = sub_1BD4F5B20();
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product);
  v6 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001BE1229B0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v3;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = a1;
  v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = v4 & 1;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = v5;
  sub_1BE048964();
  sub_1BE048C84();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BD4F67DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4F6818(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD4F6868()
{
  result = qword_1EBD48A98;
  if (!qword_1EBD48A98)
  {
    sub_1BE04B9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48A98);
  }

  return result;
}

uint64_t sub_1BD4F69A8(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BA14();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = v47 - v11;
  v12 = sub_1BE04B9C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v47 - v19;
  v21 = sub_1BE04BAC4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PKAppleCardFinancialLearningLabEnabled())
  {
    return a1(0xD000000000000027, 0x80000001BE12CC30, 0, 1);
  }

  v47[2] = a2;
  v48 = a1;
  v26 = sub_1BE04BC84();
  v27 = [v26 associatedAccountFeatureIdentifier];

  if (v27 != 2)
  {
    v31 = 0x6C70706120746F6ELL;
    v32 = 0xEE00647261632065;
    return v48(v31, v32, 0, 1);
  }

  v47[1] = *(v3 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_context);
  sub_1BE04BC34();
  sub_1BE04BAA4();
  v28 = *(v22 + 8);
  v28(v25, v21);
  (*(v13 + 104))(v16, *MEMORY[0x1E69B7FB8], v12);
  sub_1BD37FFEC(qword_1EBD43518, MEMORY[0x1E69B7FC8]);
  v29 = sub_1BE052334();
  v30 = *(v13 + 8);
  v30(v16, v12);
  v30(v20, v12);
  if (v29)
  {
    v31 = 0xD00000000000002ELL;
    v32 = 0x80000001BE12CC80;
    return v48(v31, v32, 0, 1);
  }

  sub_1BE04BC34();
  v34 = v50;
  sub_1BE04BA24();
  v28(v25, v21);
  v35 = *MEMORY[0x1E69B8010];
  v36 = sub_1BE04B9F4();
  v37 = v49;
  (*(*(v36 - 8) + 104))(v49, v35, v36);
  v39 = v51;
  v38 = v52;
  v40 = *(v51 + 104);
  v40(v37, *MEMORY[0x1E69B8018], v52);
  LOBYTE(v35) = MEMORY[0x1BFB38A90](v34, v37);
  v41 = *(v39 + 8);
  v41(v37, v38);
  if (v35 & 1) != 0 || (v42 = *MEMORY[0x1E69B7FD8], v43 = sub_1BE04B9D4(), (*(*(v43 - 8) + 104))(v37, v42, v43), v40(v37, *MEMORY[0x1E69B8020], v38), LOBYTE(v42) = MEMORY[0x1BFB38A90](v34, v37), v41(v37, v38), (v42))
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = 0x80000001BE12CC60;
    v44 = 0xD00000000000001CLL;
    v46 = 1;
  }

  v48(v44, v45, 0, v46);
  return (v41)(v34, v38);
}

uint64_t sub_1BD4F6F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = sub_1BD4F771C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_15_5;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD37FFEC(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_1BD4F71C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v3(a2);
}

void sub_1BD4F721C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = v1;
      sub_1BD8659A4(v5, &off_1F3BAABC0, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD4F72CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4F7308(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD4F7358(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6967DD0]) init];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1BD4F7714;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BD4F71C8;
  v7[3] = &block_descriptor_9_4;
  v6 = _Block_copy(v7);
  sub_1BE048964();

  [v4 loadLabSharingPermissionWithCompletion_];
  _Block_release(v6);
}

void *sub_1BD4F7458()
{
  v0 = sub_1BD4F7624();
  sub_1BD28B498(v0);
  return v0;
}

id sub_1BD4F7484(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_identifier];
  *v12 = 0xD00000000000002ALL;
  *(v12 + 1) = 0x80000001BE0DCCB0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_provisionedPasses] = a2;
  sub_1BE048964();
  v13 = a2;
  sub_1BE04BC34();
  v14 = sub_1BE04B9A4();
  (*(v8 + 8))(v11, v7);
  result = [objc_allocWithZone(PKFinancialLabPermissionController) initWithContext_];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_permissionController] = result;
    v16.receiver = v3;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD4F7624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningFinancialLabPermissionFlowItem_permissionController);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_1BD4F770C;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1BD976224;
  v5[3] = &block_descriptor_112;
  v3 = _Block_copy(v5);

  [v1 setContinueHandler_];
  _Block_release(v3);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI18ContactInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1BD4F77B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD4F7800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BD4F7884@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = *(v1 + 120);
    v14 = *(v1 + 112);
    v5 = *(v1 + 128);
    v4 = *(v1 + 136);
    sub_1BE048C84();
    sub_1BE048C84();
    swift_bridgeObjectRelease_n();
    if ((*(v1 + 193) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(v1 + 144);
    v9 = *(v1 + 152);
    v6 = *(v1 + 160);
    v8 = *(v1 + 168);
    sub_1BE048C84();
    sub_1BE048C84();
    swift_bridgeObjectRelease_n();
    if ((*(v1 + 194) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = *(v1 + 176);
    v11 = *(v1 + 184);
    sub_1BE048C84();

    goto LABEL_8;
  }

  v5 = 0;
  v14 = 0;
  v4 = 0xE000000000000000;
  v3 = 0xE000000000000000;
  if (*(v1 + 193))
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 0;
  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = 0xE000000000000000;
  if (*(v1 + 194))
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_8:
  *&v16 = v14;
  *(&v16 + 1) = v3;
  v17.n128_u64[0] = v5;
  v17.n128_u64[1] = v4;
  *&v18 = v7;
  *(&v18 + 1) = v9;
  *&v19 = v6;
  *(&v19 + 1) = v8;
  *&v20 = v10;
  *(&v20 + 1) = v11;
  v21[0] = v14;
  v21[1] = v3;
  v21[2] = v5;
  v21[3] = v4;
  v21[4] = v7;
  v21[5] = v9;
  v21[6] = v6;
  v21[7] = v8;
  v21[8] = v10;
  v21[9] = v11;
  sub_1BD4F8278(&v16, v15);
  sub_1BD4F82D4(v21);
  v12 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v12;
  *(a1 + 64) = v20;
  result = v17;
  *a1 = v16;
  *(a1 + 16) = result;
  return result;
}

BOOL sub_1BD4F79E0()
{
  result = 0;
  if ((*(v0 + 104) & 1) == 0 || (v1 = *(v0 + 32)) == 0 || ((v2 = *(v0 + 40), v3 = *(v0 + 48), v4 = *(v0 + 128), v5 = *(v0 + 136), *(v0 + 24) == *(v0 + 112)) ? (v6 = v1 == *(v0 + 120)) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0 || (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), !v7 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v8 = *v0;
    v9 = sub_1BE052404();
    v10 = sub_1BE052404();
    v11 = [v8 isGivenName:v9 validFormatForCountryCode:v10];

    if (v11)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7AD4()
{
  result = 0;
  if ((*(v0 + 104) & 1) == 0 || (v1 = *(v0 + 32)) == 0 || ((v2 = *(v0 + 40), v3 = *(v0 + 48), v4 = *(v0 + 128), v5 = *(v0 + 136), *(v0 + 24) == *(v0 + 112)) ? (v6 = v1 == *(v0 + 120)) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0 || (v2 == v4 ? (v7 = v3 == v5) : (v7 = 0), !v7 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v8 = *v0;
    v9 = sub_1BE052404();
    v10 = sub_1BE052404();
    v11 = [v8 isFamilyName:v9 validFormatForCountryCode:v10];

    if (v11)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7BC8()
{
  result = 0;
  if ((*(v0 + 105) & 1) == 0 || !*(v0 + 32) || ((v1 = *(v0 + 72), v2 = *(v0 + 80), v3 = *(v0 + 160), v4 = *(v0 + 168), *(v0 + 56) == *(v0 + 144)) ? (v5 = *(v0 + 64) == *(v0 + 152)) : (v5 = 0), !v5 && (sub_1BE053B84() & 1) == 0 || (v1 == v3 ? (v6 = v2 == v4) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v7 = *v0;
    v8 = sub_1BE052404();
    v9 = sub_1BE052404();
    v10 = [v7 isPhoneticGivenName:v8 validFormatForCountryCode:v9];

    if (v10)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7CBC()
{
  result = 0;
  if ((*(v0 + 105) & 1) == 0 || !*(v0 + 32) || ((v1 = *(v0 + 72), v2 = *(v0 + 80), v3 = *(v0 + 160), v4 = *(v0 + 168), *(v0 + 56) == *(v0 + 144)) ? (v5 = *(v0 + 64) == *(v0 + 152)) : (v5 = 0), !v5 && (sub_1BE053B84() & 1) == 0 || (v1 == v3 ? (v6 = v2 == v4) : (v6 = 0), !v6 && (sub_1BE053B84() & 1) == 0)))
  {
    if (!*v0)
    {
      return 1;
    }

    v7 = *v0;
    v8 = sub_1BE052404();
    v9 = sub_1BE052404();
    v10 = [v7 isPhoneticFamilyName:v8 validFormatForCountryCode:v9];

    if (v10)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1BD4F7DB0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  if (*(v0 + 192))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      return 0;
    }

    if (*(v0 + 104))
    {
      v11 = *(v0 + 32);
      if (v11)
      {
        if (v13 = *(v0 + 40), v12 = *(v0 + 48), *(v0 + 24) == v5) && v11 == v6 || (v28 = *(v0 + 48), v14 = sub_1BE053B84(), v12 = v28, (v14))
        {
          if (v13 == v8 && v12 == v9 || (sub_1BE053B84() & 1) != 0)
          {
            return 0;
          }
        }
      }
    }

    if (*v0)
    {
      v15 = *v0;
      v16 = sub_1BE052404();
      v17 = sub_1BE052404();
      v18 = [v15 isGivenName:v16 validFormatForCountryCode:v17];

      if (!v18)
      {
        return 0;
      }
    }

    if (!sub_1BD4F7AD4())
    {
      return 0;
    }
  }

  if ((*(v0 + 193) & 1) == 0)
  {
    return 1;
  }

  v19 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v19 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v20 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    return 0;
  }

  if ((*(v0 + 105) & 1) != 0 && *(v0 + 32))
  {
    if (v21 = *(v0 + 72), v22 = *(v0 + 80), *(v0 + 56) == v1) && *(v0 + 64) == v2 || (sub_1BE053B84())
    {
      if (v21 == v3 && v22 == v4 || (sub_1BE053B84() & 1) != 0)
      {
        return 0;
      }
    }
  }

  if (*v0)
  {
    v23 = *v0;
    v24 = sub_1BE052404();
    v25 = sub_1BE052404();
    v26 = [v23 isPhoneticGivenName:v24 validFormatForCountryCode:v25];

    if (!v26)
    {
      return 0;
    }
  }

  return sub_1BD4F7CBC();
}

double sub_1BD4F8008@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04B0D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  sub_1BE04B0E4();
  sub_1BE04B0C4();
  (*(v7 + 8))(v10, v6);
  v15 = sub_1BE04B084();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BD20DE2C(v14);
    v17 = 0xE200000000000000;
    v18 = 21333;
  }

  else
  {
    sub_1BE04B004();
    (*(v16 + 8))(v14, v15);
    v18 = sub_1BE0524C4();
    v17 = v19;
  }

  v20 = sub_1BE04B0F4();
  (*(*(v20 - 8) + 8))(a1, v20);
  *a3 = 0;
  *(a3 + 8) = v18;
  *(a3 + 16) = v17;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0xE000000000000000;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0xE000000000000000;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0xE000000000000000;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0xE000000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0xE000000000000000;
  *(a3 + 192) = 1;
  *(a3 + 194) = 0;
  *(a3 + 200) = a2;
  return result;
}

uint64_t sub_1BD4F8348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1BD03B254(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_1BE053674();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v11 = 0x726F4B6874756F73;
        v12 = 0xEE00415049506165;
      }

      else
      {
        v11 = 0xD000000000000010;
        v12 = 0x80000001BE117610;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      v11 = 1919968359;
    }

    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1BD03B254((v14 > 1), v15 + 1, 1);
      v6 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_27;
    }

    v4 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1BD20DE9C(result, v13, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1BD20DE9C(result, v13, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BD4F85C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD4F8E0C();
  *a1 = result;
  return result;
}

void sub_1BD4F85F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEE00415049506165;
  v5 = 0x726F4B6874756F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001BE117610;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1919968359;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD4F8660(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F4B6874756F73;
  v4 = 0xEE00415049506165;
  v5 = 0x80000001BE117610;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001BE117610;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1919968359;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x726F4B6874756F73;
  if (*a2 == 1)
  {
    v5 = 0xEE00415049506165;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1919968359;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

uint64_t sub_1BD4F876C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD4F8818()
{
  sub_1BE052524();
}

uint64_t sub_1BD4F88B0()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

void sub_1BD4F8958()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*v0 & 1) == 0)
  {
    *v0 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0;
    sub_1BE04BB94();
    v8 = sub_1BE04B934();
    (*(v3 + 8))(v6, v2);
    v9 = [v8 deviceRegion];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = sub_1BE052434();
      v12 = v11;

      v13 = v10 == 21067 && v12 == 0xE200000000000000;
      if (v13 || (sub_1BE053B84() & 1) != 0)
      {
        inited = sub_1BD1D7608(1, 2, 1, inited);
        *(inited + 16) = 2;
        *(inited + 33) = 1;
      }

      if (v10 == 20035 && v12 == 0xE200000000000000)
      {
      }

      else
      {
        v15 = sub_1BE053B84();

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v17 = *(inited + 16);
      v16 = *(inited + 24);
      if (v17 >= v16 >> 1)
      {
        inited = sub_1BD1D7608((v16 > 1), v17 + 1, 1, inited);
      }

      *(inited + 16) = v17 + 1;
      *(inited + v17 + 32) = 2;
    }

LABEL_19:
    v18 = sub_1BD536F98(inited);

    *(v1 + 1) = v18;
  }
}

unint64_t sub_1BD4F8BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD4F8348(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  sub_1BD03B274();
  v4 = sub_1BE0522E4();
  v6 = v5;

  sub_1BD4F8348(a3);
  v7 = sub_1BE0522E4();
  v9 = v8;

  sub_1BE053834();

  MEMORY[0x1BFB3F610](v4, v6);

  MEMORY[0x1BFB3F610](0x3A6E656573202C5DLL, 0xEA00000000005B20);
  MEMORY[0x1BFB3F610](v7, v9);

  MEMORY[0x1BFB3F610](10589, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1BD4F8D5C()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BD536F98(MEMORY[0x1E69E7CC0]);
  result = sub_1BD536F98(v0);
  byte_1EBDAB1E8 = 0;
  qword_1EBDAB1F0 = v1;
  unk_1EBDAB1F8 = result;
  return result;
}

unint64_t sub_1BD4F8DB8()
{
  result = qword_1EBD48AD8;
  if (!qword_1EBD48AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48AD8);
  }

  return result;
}

uint64_t sub_1BD4F8E0C()
{
  v0 = sub_1BE053A44();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_1BD4F8E58()
{
  v1 = *v0;
  v17 = *(v0 + 8);
  *&v18 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68);
  sub_1BE051914();
  v2 = *v15;
  v13 = *&v15[8];
  v3 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  sub_1BE051914();
  v12 = *v15;
  v4 = *&v15[16];
  v5 = v16;
  v6 = type metadata accessor for PeerPaymentAmountEntryKeypadView.Coordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount] = v1;
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator__amount];
  *v8 = v2;
  *(v8 + 8) = v13;
  v9 = &v7[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator__memo];
  *v9 = v12;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = v1;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1BD4F8F7C(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV9PassKitUI32PeerPaymentAmountEntryKeypadView11Coordinator_peerPaymentAccount];
  v5 = a1;
  result = [v4 deviceTapFeatureDescriptor];
  if (result)
  {
    v7 = result;
    v8 = [result *a3];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD4F9188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentAmountEntryKeypadView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD4F9274(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD4F92BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD4F931C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B78);
    sub_1BE050154();
    [v2 setDelegate_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController);

    return [v4 init];
  }
}

id sub_1BD4F93D4@<X0>(void *a1@<X8>)
{
  result = sub_1BD4F8E58();
  *a1 = result;
  return result;
}

uint64_t sub_1BD4F93FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4F9544();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD4F9460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD4F9544();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD4F94C4()
{
  sub_1BD4F9544();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD4F94F0()
{
  result = qword_1EBD48B60;
  if (!qword_1EBD48B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48B60);
  }

  return result;
}

unint64_t sub_1BD4F9544()
{
  result = qword_1EBD48B80;
  if (!qword_1EBD48B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48B80);
  }

  return result;
}

__n128 sub_1BD4F9598@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v16 = objc_allocWithZone(PKPeerPaymentMessagesContentAmountEntryViewController);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  v17 = a4;
  v18 = [v16 init];
  v33 = a2;
  v34 = a3;
  v35 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B68);
  MEMORY[0x1BFB3E970](&v28, v19);

  v20 = v28;
  [v18 setAmount_];

  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  MEMORY[0x1BFB3E970](&v28, v21);
  v22 = sub_1BE052404();

  [v18 setMemo_];

  [v18 setContext_];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v29.n128_u64[0] = a3;
  v29.n128_u64[1] = v17;
  *&v30 = a5;
  *(&v30 + 1) = a6;
  *&v31 = a7;
  *(&v31 + 1) = a8;
  v32 = v18;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = v17;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = v18;
  sub_1BD4F9790(&v28, v27);
  sub_1BD4F97C8(&v33);
  v23 = v31;
  *(a9 + 32) = v30;
  *(a9 + 48) = v23;
  *(a9 + 64) = v32;
  result = v29;
  *a9 = v28;
  *(a9 + 16) = result;
  return result;
}

id ProvisioningTermsPresenter.__allocating_init(allowNonSecureHTTP:paymentSetupContext:)(char a1)
{
  v3 = sub_1BE04BAC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v1);
  sub_1BE04BAD4();
  v8 = type metadata accessor for ProvisioningTermsPresenter();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
  v9[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = a1;
  (*(v4 + 16))(&v9[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v7, v3);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v4 + 8))(v7, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id ProvisioningTermsPresenter.init(allowNonSecureHTTP:paymentSetupContext:)(char a1)
{
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BAD4();
  v7 = type metadata accessor for ProvisioningTermsPresenter();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
  v8[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = a1;
  (*(v3 + 16))(&v8[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v6, v2);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t type metadata accessor for ProvisioningTermsPresenter()
{
  result = qword_1EBD48BA8;
  if (!qword_1EBD48BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4F9D70(int a1, id a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v9 = [a2 parentViewController];
  if (v9)
  {
  }

  else
  {
    v13 = [a2 view];
    if (!v13)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 window];

    v16 = [v15 rootViewController];
    if (!v16 || (sub_1BD0E5E8C(0, &qword_1EBD43450), v17 = a2, v18 = sub_1BE053074(), v17, v16, (v18 & 1) == 0))
    {
      a3(0, 0);
      return;
    }
  }

  [a2 resignFirstResponder];
  v10 = [objc_allocWithZone(PKPortraitNavigationController) init];
  [v10 setModalInPresentation_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
  if (sub_1BE04BAB4())
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
  }

  else
  {
    v12 = [objc_opt_self() defaultStyle];
  }

  v19 = v12;
  [v11 setStyle_];
  [v11 setDelegate_];
  [v11 setNavigationController_];
  v20 = [v11 loader];
  if (!v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 setAllowNonSecureHTTP_];

  v22 = *(v5 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController);
  *(v5 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController) = v11;
  v23 = v11;

  v24 = sub_1BE04A9C4();
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a2;
  v25[5] = v10;
  v25[6] = v23;
  v30[4] = sub_1BD4FA3A8;
  v30[5] = v25;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_1BD3CC8C0;
  v30[3] = &block_descriptor_113;
  v26 = _Block_copy(v30);
  v27 = a2;
  v28 = v23;
  sub_1BE048964();
  v29 = v10;

  [v28 loadURL:v24 postBody:0 completion:v26];
  _Block_release(v26);
}

uint64_t sub_1BD4FA0CC(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v32 = a7;
  v13 = sub_1BE051F54();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE051FA4();
  v34 = *(v17 - 8);
  v35 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v33 = sub_1BE052D54();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  v22 = a6;
  v23 = v32;
  *(v21 + 64) = v32;
  aBlock[4] = sub_1BD4FB6E4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_2;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  sub_1BE048964();
  v26 = a5;
  v27 = v22;
  v28 = v23;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v29 = v33;
  MEMORY[0x1BFB3FDF0](0, v20, v16, v24);
  _Block_release(v24);

  (*(v36 + 8))(v16, v13);
  return (*(v34 + 8))(v20, v35);
}

void sub_1BD4FA3AC(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, id a5, void *a6, void *a7)
{
  if ((a1 & 1) == 0 || a2)
  {
    (a3)(0, a2, a3, a4, a5);
    return;
  }

  v12 = [a5 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 overrideUserInterfaceStyle];
  }

  else
  {
    v14 = [a5 overrideUserInterfaceStyle];
  }

  [a6 setOverrideUserInterfaceStyle_];
  v15 = swift_allocObject();
  if (![a5 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [a5 presentViewController:a6 animated:1 completion:0];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_1BD243278;
LABEL_12:
    *(v15 + 16) = v22;
    *(v15 + 24) = v21;
    v23 = sub_1BE052404();
    v24 = swift_allocObject();
    v24[2] = v15;
    v24[3] = a3;
    v24[4] = a4;
    v33 = sub_1BD4FB6F8;
    v34 = v24;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD4FA890;
    v32 = &block_descriptor_33_2;
    v25 = _Block_copy(&v29);
    sub_1BE048964();
    sub_1BE048964();

    [a7 setHandlerForElementName:v23 handler:v25];
    _Block_release(v25);

    v26 = sub_1BE052404();
    v27 = swift_allocObject();
    v27[2] = v15;
    v27[3] = a3;
    v27[4] = a4;
    v33 = sub_1BD4FB748;
    v34 = v27;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD4FA890;
    v32 = &block_descriptor_39_0;
    v28 = _Block_copy(&v29);
    sub_1BE048964();
    sub_1BE048964();

    [a7 setHandlerForElementName:v26 handler:v28];
    _Block_release(v28);

    return;
  }

  v16 = [a6 topViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [a5 navigationController];
    if (v18)
    {
      v19 = v18;
      v20 = [v17 navigationItem];
      [v20 setHidesBackButton_];

      [v19 pushViewController:v17 animated:1];
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v22 = sub_1BD4FB798;
    }

    else
    {
      [a6 setModalPresentationStyle_];
      [a5 presentViewController:a6 animated:1 completion:0];

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = sub_1BD242744;
    }

    goto LABEL_12;
  }

  a3(0, 0);

  MEMORY[0x1EEE6BDE0](v15, 32, 7);
}

void sub_1BD4FA820()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong popViewControllerAnimated_];
  }
}

uint64_t sub_1BD4FA890(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1BE052244();
  }

  else
  {
    v7 = 0;
  }

  sub_1BE048964();
  v8 = a2;
  v9 = a3;
  v6(a2, a3, v7);
}

uint64_t sub_1BD4FA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a8;
  v28 = a9;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE051FA4();
  v16 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  v21 = swift_allocObject();
  v23 = v26;
  v22 = v27;
  v21[2] = a4;
  v21[3] = v23;
  v21[4] = a6;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v28;
  v24 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v19, v15, v24);
  _Block_release(v24);

  (*(v12 + 8))(v15, v11);
  return (*(v16 + 8))(v19, v29);
}

uint64_t sub_1BD4FABFC(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = sub_1BE048964();
  v7(v8);

  return a2(a4, 0);
}

void sub_1BD4FADB8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BE04A844();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id ProvisioningTermsPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningTermsPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningTermsPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD4FAF78()
{
  result = sub_1BE04BAC4();
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

void sub_1BD4FB068()
{
  v0 = sub_1BE04BAC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v10 = sub_1BE04B8E4();
  (*(v6 + 8))(v9, v5);
  v11 = [v10 context];

  if (v11)
  {
    v12 = [v11 devSigned];

    sub_1BE04BC34();
    v13 = type metadata accessor for ProvisioningTermsPresenter();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
    v14[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = v12;
    (*(v1 + 16))(&v14[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v4, v0);
    v15.receiver = v14;
    v15.super_class = v13;
    objc_msgSendSuper2(&v15, sel_init);
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD4FB2A4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = [a2 parentViewController];
  if (v8)
  {

    goto LABEL_3;
  }

  v12 = [a2 view];
  if (!v12)
  {
LABEL_15:
    _Block_release(a4);
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 window];

  v15 = [v14 rootViewController];
  if (v15)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v16 = a2;
    v17 = sub_1BE053074();

    if (v17)
    {
LABEL_3:
      [a2 resignFirstResponder];
      v9 = [objc_allocWithZone(PKPortraitNavigationController) init];
      [v9 setModalInPresentation_];
      v10 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
      if (sub_1BE04BAB4())
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
      }

      else
      {
        v11 = [objc_opt_self() defaultStyle];
      }

      v18 = v11;
      [v10 setStyle_];
      [v10 setDelegate_];
      [v10 setNavigationController_];
      v19 = [v10 loader];
      if (v19)
      {
        v20 = v19;
        [v19 setAllowNonSecureHTTP_];

        v21 = *(a3 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController);
        *(a3 + OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController) = v10;
        v22 = v10;

        v23 = sub_1BE04A9C4();
        v24 = swift_allocObject();
        v24[2] = sub_1BD4FB67C;
        v24[3] = v7;
        v24[4] = a2;
        v24[5] = v9;
        v24[6] = v22;
        v29[4] = sub_1BD4FB818;
        v29[5] = v24;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 1107296256;
        v29[2] = sub_1BD3CC8C0;
        v29[3] = &block_descriptor_15_6;
        v25 = _Block_copy(v29);
        v26 = v22;
        v27 = a2;
        sub_1BE048964();
        v28 = v9;

        [v26 loadURL:v23 postBody:0 completion:v25];
        _Block_release(v25);

        return;
      }

      _Block_release(a4);
      __break(1u);
      goto LABEL_15;
    }
  }

  a4[2](a4, 0, 0);
}

uint64_t objectdestroyTm_52()
{

  return swift_deallocObject();
}

id sub_1BD4FB81C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v47 - v11;
  v13 = *MEMORY[0x1E69B8068];
  v14 = *(v4 + 104);
  v14(&v47 - v11, v13, v3, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v48 = v18;
    v49 = v17;

    v19 = *(v4 + 8);
    v19(v12, v3);
    if ((v2[14] & 1) == 0)
    {
      v21 = 0;
      v24 = 0;
      goto LABEL_6;
    }

    (v14)(v7, v13, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      v19(v7, v3);
      v24 = v23;
LABEL_6:
      v25 = v2[11];
      v90 = v2[10];
      v91 = v25;
      v26 = v2[13];
      v92 = v2[12];
      v93 = v26;
      v27 = v2[7];
      v86 = v2[6];
      v87 = v27;
      v28 = v2[9];
      v88 = v2[8];
      v89 = v28;
      v29 = v2[3];
      v82 = v2[2];
      v83 = v29;
      v30 = v2[5];
      v84 = v2[4];
      v85 = v30;
      v31 = v2[1];
      v80 = *v2;
      v81 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
      MEMORY[0x1BFB3E970](v100);
      v32 = sub_1BD4F7AD4();
      sub_1BD4FBC18(v100);
      v33 = *MEMORY[0x1E69B97C8];
      v34 = v2[11];
      v76 = v2[10];
      v77 = v34;
      v35 = v2[13];
      v78 = v2[12];
      v79 = v35;
      v36 = v2[7];
      v72 = v2[6];
      v73 = v36;
      v37 = v2[9];
      v74 = v2[8];
      v75 = v37;
      v38 = v2[3];
      v68 = v2[2];
      v69 = v38;
      v39 = v2[5];
      v70 = v2[4];
      v71 = v39;
      v40 = v2[1];
      v66 = *v2;
      v67 = v40;
      v41 = v33;
      sub_1BE051914();
      swift_getKeyPath();
      v76 = v90;
      v77 = v91;
      v78 = v92;
      v79 = v93;
      v72 = v86;
      v73 = v87;
      v74 = v88;
      v75 = v89;
      v68 = v82;
      v69 = v83;
      v70 = v84;
      v71 = v85;
      v66 = v80;
      v67 = v81;
      sub_1BE051904();

      sub_1BD0DE53C(&v80, &qword_1EBD48C18);
      v96 = v62;
      v97 = v63;
      v98 = v64;
      v99 = v65;
      v94 = v60;
      v95 = v61;
      swift_getKeyPath();
      v56 = v96;
      v57 = v97;
      v58 = v98;
      v59 = v99;
      v54 = v94;
      v55 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
      sub_1BE051904();

      result = sub_1BD0DE53C(&v94, &unk_1EBD48C20);
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v45 = v50;
      v46 = v48;
      *v50 = v49;
      v45[1] = v46;
      v45[2] = v21;
      v45[3] = v24;
      *(v45 + 32) = v32;
      v45[5] = v41;
      *(v45 + 3) = v42;
      v45[8] = v43;
      v45[9] = v44;
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

id sub_1BD4FBC6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v46 - v11;
  v13 = *MEMORY[0x1E69B8068];
  v14 = *(v4 + 104);
  v14(&v46 - v11, v13, v3, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v47 = v18;
    v48 = v17;

    v19 = *(v4 + 8);
    v19(v12, v3);
    if ((v2[14] & 1) == 0)
    {
      v21 = 0;
      v23 = 0;
      goto LABEL_6;
    }

    (v14)(v7, v13, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v21 = sub_1BE04B6F4();
      v23 = v22;

      v19(v7, v3);
LABEL_6:
      v24 = v2[11];
      v89 = v2[10];
      v90 = v24;
      v25 = v2[13];
      v91 = v2[12];
      v92 = v25;
      v26 = v2[7];
      v85 = v2[6];
      v86 = v26;
      v27 = v2[9];
      v87 = v2[8];
      v88 = v27;
      v28 = v2[3];
      v81 = v2[2];
      v82 = v28;
      v29 = v2[5];
      v83 = v2[4];
      v84 = v29;
      v30 = v2[1];
      v79 = *v2;
      v80 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18);
      MEMORY[0x1BFB3E970](v99);
      v31 = sub_1BD4F79E0();
      sub_1BD4FBC18(v99);
      v32 = *MEMORY[0x1E69B9838];
      v33 = v2[11];
      v75 = v2[10];
      v76 = v33;
      v34 = v2[13];
      v77 = v2[12];
      v78 = v34;
      v35 = v2[7];
      v71 = v2[6];
      v72 = v35;
      v36 = v2[9];
      v73 = v2[8];
      v74 = v36;
      v37 = v2[3];
      v67 = v2[2];
      v68 = v37;
      v38 = v2[5];
      v69 = v2[4];
      v70 = v38;
      v39 = v2[1];
      v65 = *v2;
      v66 = v39;
      v40 = v32;
      sub_1BE051914();
      swift_getKeyPath();
      v75 = v89;
      v76 = v90;
      v77 = v91;
      v78 = v92;
      v71 = v85;
      v72 = v86;
      v73 = v87;
      v74 = v88;
      v67 = v81;
      v68 = v82;
      v69 = v83;
      v70 = v84;
      v65 = v79;
      v66 = v80;
      sub_1BE051904();

      sub_1BD0DE53C(&v79, &qword_1EBD48C18);
      v95 = v61;
      v96 = v62;
      v97 = v63;
      v98 = v64;
      v93 = v59;
      v94 = v60;
      swift_getKeyPath();
      v55 = v95;
      v56 = v96;
      v57 = v97;
      v58 = v98;
      v53 = v93;
      v54 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20);
      sub_1BE051904();

      result = sub_1BD0DE53C(&v93, &unk_1EBD48C20);
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v49;
      v45 = v47;
      *v49 = v48;
      v44[1] = v45;
      v44[2] = v21;
      v44[3] = v23;
      *(v44 + 32) = v31;
      v44[5] = v40;
      *(v44 + 3) = v41;
      v44[8] = v42;
      v44[9] = v43;
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

id sub_1BD4FC05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_identifier];
  *v8 = 0xD000000000000016;
  *(v8 + 1) = 0x80000001BE12CEB0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_serviceProviderProduct] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD4FC210(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductItemsViewController) initWithProvisioningController:v11 context:v12 product:*(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product) serviceProviderProduct:*(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_serviceProviderProduct)];

  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController);
  *(v3 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController) = v13;
  v15 = v13;

  if (v15)
  {
    [v15 setFlowDelegate_];
    sub_1BE052434();
    v16 = sub_1BE04BB74();

    [v15 setReporter_];

    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_114;
    v17 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 preflightWithCompletion_];
    _Block_release(v17);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_1BD4FC474()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4FC4B0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD4FC500()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD4FC530(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAB238, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD4FC824(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for EducationalAnimationFactory();
  swift_allocObject();
  v4 = sub_1BDA4B3D8(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BDA4B648();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 rootLayer];
      if (v8)
      {
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationFactory] = v5;
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationPackage] = v7;
        *&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_rootLayer] = v8;
        v9 = v8;
        v15.receiver = v2;
        v15.super_class = type metadata accessor for EducationalMessageAnimationView();
        sub_1BE048964();
        v10 = v7;
        v11 = v9;
        v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        v13 = [v12 layer];
        [v13 addSublayer_];

        sub_1BDA4BDFC(v10);
        sub_1BD4FCAD4();

        return v12;
      }
    }

    else
    {
    }
  }

  type metadata accessor for EducationalMessageAnimationView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1BD4FCAD4()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B69E0;
  v1 = sub_1BE04D2A4();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_1BE052F94();
  swift_unknownObjectRelease();
}

id sub_1BD4FCBB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationalMessageAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4FCC68(char *a1, id a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v3 != v5)
  {
    sub_1BDA4BDFC(*&a1[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_animationPackage]);
  }
}

uint64_t sub_1BD4FCD3C(uint64_t a1, unint64_t a2, char a3)
{
  sub_1BE053D04();
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x1BFB40DA0](v5);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (a2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD4FCE28()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x1BFB40DA0](v2);

    return sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    if (v1 >> 60 == 15)
    {
      return sub_1BE053D24();
    }

    else
    {
      sub_1BE053D24();

      return sub_1BE04AAD4();
    }
  }
}

uint64_t sub_1BD4FCF00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1BE053D04();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1BFB40DA0](v3);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v1 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D64();
}

void sub_1BD4FCFBC(uint64_t a1)
{
  v3 = type metadata accessor for NearbyPeerPaymentAppearanceSetting();
  v4 = *(v3 + 24);
  v5 = *(v1 + v4);
  *(v1 + v4) = v5 ^ 1;
  if (*(v1 + *(v3 + 20) + 16))
  {
    if (*(v1 + *(v3 + 20) + 16) != 1)
    {
      swift_getKeyPath();
      sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
      sub_1BE04B594();

      v6 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
      if (v5 == [*(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) shareLastName])
      {
        swift_getKeyPath();
        sub_1BE04B594();

        v7 = &selRef_setShareLastName_;
LABEL_7:
        [*v6 *v7];
        sub_1BD217A8C();
      }
    }
  }

  else
  {
    swift_getKeyPath();
    sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
    sub_1BE04B594();

    v6 = (a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference);
    if (v5 == [*(a1 + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference) shareProfilePicture])
    {
      swift_getKeyPath();
      sub_1BE04B594();

      v7 = &selRef_setShareProfilePicture_;
      goto LABEL_7;
    }
  }

  PeerPaymentIdentityManager.commitUpdatesIfNeeded()();
}

uint64_t static NearbyPeerPaymentAppearanceSetting.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for NearbyPeerPaymentAppearanceSetting(), v5 = *(v4 + 20), (sub_1BD508F34(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16))))
  {
    v6 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t NearbyPeerPaymentAppearanceSetting.hash(into:)()
{
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  sub_1BE052294();
  v1 = v0 + *(type metadata accessor for NearbyPeerPaymentAppearanceSetting() + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1BFB40DA0](v4);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D24();
}

uint64_t NearbyPeerPaymentAppearanceSetting.hashValue.getter()
{
  sub_1BE053D04();
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  sub_1BE052294();
  v1 = v0 + *(type metadata accessor for NearbyPeerPaymentAppearanceSetting() + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1BFB40DA0](v4);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v2 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  sub_1BE053D24();
  return sub_1BE053D64();
}

uint64_t sub_1BD4FD4D4(uint64_t a1, uint64_t a2)
{
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  sub_1BE052294();
  v4 = v2 + *(a2 + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1BFB40DA0](v7);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v5 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  return sub_1BE053D24();
}

uint64_t sub_1BD4FD5F4(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE04AFE4();
  sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  sub_1BE052294();
  v4 = v2 + *(a2 + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1BFB40DA0](v7);
    sub_1BE052524();
  }

  else
  {
    MEMORY[0x1BFB40DA0](0);
    sub_1BE053D24();
    if (v5 >> 60 != 15)
    {
      sub_1BE04AAD4();
    }
  }

  sub_1BE053D24();
  return sub_1BE053D64();
}

uint64_t sub_1BD4FD724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v6 = *(a3 + 20), (sub_1BD508F34(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16), *(a2 + v6), *(a2 + v6 + 8), *(a2 + v6 + 16))))
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *sub_1BD4FD7A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_1BD4FD7C0()
{
  v1 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView);
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EC0));
    v6 = v4;
    v7 = v0;
    v8 = sub_1BE04D354();
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id NearbyPeerPaymentAppearancePreferencesViewController.init(context:identityManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView;
  *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView] = 0;
  v7 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider;
  *&v2[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider] = 0;
  v8 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_identityManager] = a2;
  v9 = a2;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0 && a1 != 2)
  {
    sub_1BD42E038(a1);
    v10 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView());
    v11 = sub_1BD4FF344();
    v12 = *&v3[v6];
    *&v3[v6] = v11;

    v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v14 = *&v3[v7];
    *&v3[v7] = v13;
  }

  sub_1BD42E2E4(a1);
  v15 = objc_allocWithZone(type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView());
  *&v3[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer] = sub_1BD4FF9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB80);
  v44 = v3;
  v16 = (type metadata accessor for NearbyPeerPaymentAppearanceSetting() - 8);
  v42 = *(*v16 + 72);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  v47 = v9;
  sub_1BD509710(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager);
  sub_1BE04B594();

  v18 = *&v9[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData];
  v19 = *&v9[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8];
  v45 = a1;
  v20 = v9;
  swift_getKeyPath();
  v47 = v9;
  sub_1BD030394(v18, v19);
  sub_1BE04B594();

  v40 = OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference;
  v21 = [*&v9[OBJC_IVAR____PKPeerPaymentIdentityManager__profilePreference] shareProfilePicture];
  sub_1BE04AFD4();
  v22 = v41 + v17 + v16[7];
  *v22 = v18;
  *(v22 + 8) = v19;
  *(v22 + 16) = 0;
  *(v41 + v17 + v16[8]) = v21;
  *(inited + 40) = v41;
  *(inited + 48) = 1;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B6CA0;
  v25 = *&v20[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName];
  v24 = *&v20[OBJC_IVAR____PKPeerPaymentIdentityManager_firstName + 8];
  sub_1BE048C84();
  sub_1BE04AFD4();
  v26 = v23 + v17 + v16[7];
  *v26 = v25;
  *(v26 + 8) = v24;
  *(v26 + 16) = 1;
  *(v23 + v17 + v16[8]) = 1;
  v27 = v23 + v17 + v42;
  v28 = *&v20[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName];
  v29 = *&v20[OBJC_IVAR____PKPeerPaymentIdentityManager_lastName + 8];
  swift_getKeyPath();
  v47 = v20;
  sub_1BE048C84();
  sub_1BE04B594();

  LOBYTE(v24) = [*&v20[v40] shareLastName];
  sub_1BE04AFD4();
  v30 = v27 + v16[7];
  *v30 = v28;
  *(v30 + 8) = v29;
  *(v30 + 16) = 2;
  *(v27 + v16[8]) = v24;
  *(inited + 56) = v23;
  v31 = sub_1BD1AC4E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CC8);
  swift_arrayDestroy();
  *&v44[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings] = v31;
  v46.receiver = v44;
  v46.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  v32 = objc_msgSendSuper2(&v46, sel_initWithNibName_bundle_, 0, 0);
  v33 = [v32 navigationItem];
  sub_1BD42E038(v45);
  v34 = sub_1BE052404();

  [v33 setTitle_];

  if (_UISolariumFeatureFlagEnabled() && v45 != 2)
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v32 action:sel_cancel];
    v36 = [objc_opt_self() primaryTextColor];
    [v35 setTintColor_];

    [v35 setAccessibilityIdentifier_];
    v37 = [v32 navigationItem];
    v38 = v35;
    [v37 setRightBarButtonItem_];
  }

  return v32;
}

uint64_t type metadata accessor for NearbyPeerPaymentAppearanceSetting()
{
  result = qword_1EBD48CF8;
  if (!qword_1EBD48CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BD4FDEE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48CD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  v47.receiver = v0;
  v47.super_class = v7;
  objc_msgSendSuper2(&v47, sel_viewDidLoad);
  v8 = *&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context];
  if (v8 == 2 || ([v0 setOverrideUserInterfaceStyle_], (_UISolariumFeatureFlagEnabled() & 1) == 0))
  {
    result = [v0 view];
    if (!result)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = result;
    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];
  }

  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView];
  if (v12)
  {
    v13 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider];
    if (v13)
    {
      v45 = v3;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = &v12[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
      v16 = *&v12[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
      *v15 = sub_1BD466328;
      v15[1] = v14;
      sub_1BE048964();
      v17 = v13;
      v18 = v12;
      sub_1BD0D4744(v16);

      result = [v1 &selRef_additionalViewBottomPadding];
      if (!result)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v19 = result;
      [result addSubview_];

      [v17 setAlpha_];
      v20 = [objc_opt_self() separatorColor];
      [v17 setBackgroundColor_];

      result = [v1 &selRef_additionalViewBottomPadding];
      if (!result)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v21 = result;
      [result addSubview_];

      v3 = v45;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView];
  [v22 setDelegate_];
  v23 = type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = sub_1BE052404();
  [v22 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v25];

  v26 = _UISolariumFeatureFlagEnabled();
  if (v8 == 2 || !v26)
  {
    v45 = v2;
    v28 = [objc_allocWithZone(v23) initWithStyle:0 reuseIdentifier:0];
    v29 = sub_1BD89B974();
    v27 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v27 sizeThatFits_];
    v31 = v30;
    result = [v1 view];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v32 = result;
    v33 = 24.0;
    if (v31 > 24.0)
    {
      v33 = v31;
    }

    v34 = v33 + 32.0;
    v35 = [result _shouldReverseLayoutDirection];

    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0.0;
    }

    if (v35)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v34;
    }

    [v22 setSeparatorInset_];

    v2 = v45;
  }

  else
  {
    v27 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v38 = result;
  [result addSubview_];

  v39 = sub_1BD4FD7C0();
  sub_1BE04D374();

  sub_1BE04D344();
  v40 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings;
  swift_beginAccess();
  if (*(*&v1[v40] + 16))
  {
    sub_1BD1494B0(0);
    if (v41)
    {
      v46 = 0;
      sub_1BE048C84();
      sub_1BE04D334();
    }
  }

  if (*(*&v1[v40] + 16))
  {
    sub_1BD1494B0(1);
    if (v42)
    {
      v46 = 1;
      sub_1BE048C84();
      sub_1BE04D334();
    }
  }

  v43 = *&v1[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource];
  sub_1BE04D364();

  return (*(v3 + 8))(v6, v2);
}