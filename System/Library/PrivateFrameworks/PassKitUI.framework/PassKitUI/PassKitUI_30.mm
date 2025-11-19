uint64_t sub_1BD3615D4(void *a1)
{
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = a1;
  sub_1BD361490(v2, v4);
}

id sub_1BD3616C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD361710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F8B4();
  sub_1BE048964();
  sub_1BD362790(v7, type metadata accessor for MerchantTokenNavigationStack);
  sub_1BE048C84();
  sub_1BD921B90(a1, a2);
}

void sub_1BD3617E0(void *a1)
{
  v2 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052434();
  v8 = v7;
  v9 = a1;
  sub_1BE04F8B4();
  sub_1BE048964();
  sub_1BD362790(v5, type metadata accessor for MerchantTokenNavigationStack);
  sub_1BE048C84();
  sub_1BD921B90(v6, v8);
}

uint64_t MerchantTokenUnifiedListViewController.init(rootView:)(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD362728(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v5 = sub_1BE04F894();
  sub_1BD362790(a1, type metadata accessor for MerchantTokenNavigationStack);
  return v5;
}

void *MerchantTokenUnifiedListViewController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  sub_1BD362728(a2, v7, type metadata accessor for MerchantTokenNavigationStack);
  v9 = sub_1BE04F874();
  v10 = v9;
  sub_1BD362790(a2, type metadata accessor for MerchantTokenNavigationStack);
  if (v9)
  {
  }

  return v9;
}

void *MerchantTokenUnifiedListViewController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1BD362728(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v6 = sub_1BE04F874();
  v7 = v6;
  sub_1BD362790(a2, type metadata accessor for MerchantTokenNavigationStack);
  if (v6)
  {
  }

  return v6;
}

id MerchantTokenUnifiedListViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MerchantTokenUnifiedListViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MerchantTokenUnifiedListViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BD361C00(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MerchantTokenUnifiedListViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_1BD361D84()
{
  v1 = *v0;
  v5[4] = PKEdgeInsetsMake;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1BD3F08C0;
  v5[3] = &block_descriptor_67;
  v2 = _Block_copy(v5);
  v3 = v1;
  [v3 preflightWithCompletion_];
  _Block_release(v2);
  return v3;
}

uint64_t sub_1BD361E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD362674();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD361E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD362674();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD361EFC()
{
  sub_1BD362674();
  sub_1BE0500A4();
  __break(1u);
}

uint64_t sub_1BD361F24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD362360();
  sub_1BE04B594();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD361FA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  return sub_1BD921B90(v1, v2);
}

uint64_t _s9PassKitUI46MerchantTokenUnifiedListViewControllerProviderC04makehI0So010PKMerchantefghI8Protocol_So06UIViewI0CXcyFZ_0()
{
  v0 = type metadata accessor for MerchantTokenNavigationStack(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v16 - v7);
  sub_1BE049864();
  v17 = sub_1BE049854();
  v9 = sub_1BE0498E4();

  type metadata accessor for MerchantTokenListViewModel(0);
  swift_allocObject();
  v10 = sub_1BD921D3C(0, v9);
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v11 = (v8 + *(v1 + 32));
  v16[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8);
  sub_1BE051694();
  v12 = v18;
  *v11 = v17;
  v11[1] = v12;
  *(v8 + *(v1 + 28)) = v10;
  v13 = objc_allocWithZone(type metadata accessor for MerchantTokenUnifiedListViewController(0));
  sub_1BD362728(v8, v4, type metadata accessor for MerchantTokenNavigationStack);
  v14 = sub_1BE04F894();
  sub_1BD362790(v8, type metadata accessor for MerchantTokenNavigationStack);
  return v14;
}

id sub_1BD3621BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext);
  type metadata accessor for MerchantTokenListViewModel(0);
  swift_allocObject();
  v4 = a1;
  v5 = sub_1BD921D3C(a1, v3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = v5;
  v8 = objc_allocWithZone(type metadata accessor for MerchantTokenUnifiedListEmbeddedViewController(0));
  *&v8[qword_1EBD42BA8] = v5;
  swift_retain_n();
  v9 = v4;
  sub_1BE048964();
  v10 = sub_1BE04F894();
  v11 = sub_1BE052404();
  v12 = PKLocalizedPaymentString(v11);

  [v10 setTitle_];

  return v10;
}

unint64_t sub_1BD362360()
{
  result = qword_1EBD42BB0;
  if (!qword_1EBD42BB0)
  {
    type metadata accessor for MerchantTokenListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42BB0);
  }

  return result;
}

unint64_t sub_1BD362620()
{
  result = qword_1EBD42CB0;
  if (!qword_1EBD42CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42CB0);
  }

  return result;
}

unint64_t sub_1BD362674()
{
  result = qword_1EBD42CB8;
  if (!qword_1EBD42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42CB8);
  }

  return result;
}

unint64_t sub_1BD3626C8()
{
  result = qword_1EBD42CC0;
  if (!qword_1EBD42CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD42CC0);
  }

  return result;
}

uint64_t sub_1BD362728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD362790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FinanceKitSpendingTrend()
{
  result = qword_1EBD42CE0;
  if (!qword_1EBD42CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD362864()
{
  sub_1BD3628E8(319, &qword_1EBD42CF0);
  if (v0 <= 0x3F)
  {
    sub_1BD3628E8(319, &qword_1EBD42CF8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD3628E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE0493F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BD362930()
{
  result = MEMORY[0x1BFB403B0](1.0);
  qword_1EBDAAF58 = result;
  unk_1EBDAAF60 = v1;
  dword_1EBDAAF68 = v2;
  return result;
}

uint64_t sub_1BD36295C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE0493C4();
  v7 = MEMORY[0x1BFB403C0](0);
  if ((MEMORY[0x1BFB403F0](v7) & 1) == 0 || (sub_1BE0493C4(), v8 = MEMORY[0x1BFB403C0](0), (MEMORY[0x1BFB403F0](v8) & 1) == 0))
  {
    v22 = type metadata accessor for FinanceKitSpendingTrend();
    v18 = *(*(v22 - 8) + 56);
    v21 = v22;
    v19 = a1;
    v20 = 1;
    goto LABEL_6;
  }

  v9 = sub_1BE0493C4();
  v11 = v10;
  v13 = v12;
  v14 = sub_1BE0493C4();
  if (MEMORY[0x1BFB40440](v9, v11, v13, v14, v15, v16))
  {
    v17 = type metadata accessor for FinanceKitSpendingTrend();
    swift_storeEnumTagMultiPayload();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1;
    v20 = 0;
    v21 = v17;
LABEL_6:

    return v18(v19, v20, 1, v21);
  }

  sub_1BE0493C4();
  sub_1BE0493C4();
  sub_1BE053394();
  sub_1BE053474();
  sub_1BE0493A4();
  sub_1BE049404();
  sub_1BE0493C4();
  v24 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB403F0](v24))
  {
    sub_1BE0493C4();
    sub_1BE053474();
    sub_1BE0493C4();
    sub_1BE053354();
    MEMORY[0x1BFB403C0](100);
    sub_1BE053374();
  }

  else
  {
    sub_1BE0533A4();
  }

  if (qword_1EBD36BB0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1BFB403F0]();
  v25 = sub_1BE0493C4();
  v27 = v26;
  v29 = v28;
  v30 = sub_1BE0493C4();
  MEMORY[0x1BFB403F0](v25, v27, v29, v30, v31, v32);
  (*(v3 + 32))(a1, v6, v2);
  v33 = type metadata accessor for FinanceKitSpendingTrend();
  swift_storeEnumTagMultiPayload();
  return (*(*(v33 - 8) + 56))(a1, 0, 1, v33);
}

uint64_t sub_1BD362DBC(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_1BE0493F4();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for FinanceKitSpendingTrend();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D00);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v58 - v35;
  v38 = *(v37 + 56);
  sub_1BD363294(a1, &v58 - v35);
  sub_1BD363294(v63, &v36[v38]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD363294(v36, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = v61;
        v51 = v62;
        (*(v61 + 32))(v12, &v36[v38], v62);
        v44 = sub_1BE0493B4();
        v53 = *(v52 + 8);
        v53(v12, v51);
        v53(v28, v51);
        goto LABEL_21;
      }

      v20 = v28;
    }

    else
    {
      sub_1BD363294(v36, v32);
      if (!swift_getEnumCaseMultiPayload())
      {
        v55 = v61;
        v54 = v62;
        (*(v61 + 32))(v16, &v36[v38], v62);
        v44 = sub_1BE0493B4();
        v56 = *(v55 + 8);
        v56(v16, v54);
        v56(v32, v54);
        goto LABEL_21;
      }

      v20 = v32;
    }

LABEL_17:
    (*(v61 + 8))(v20, v62);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD363294(v36, v24);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = v61;
      v47 = &v36[v38];
      v48 = v59;
      v49 = v62;
      (*(v61 + 32))(v59, v47, v62);
      v44 = sub_1BE0493B4();
      v50 = *(v46 + 8);
      v50(v48, v49);
      v50(v24, v49);
      goto LABEL_21;
    }

    v20 = v24;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BD363294(v36, v20);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v41 = v60;
      v40 = v61;
      v42 = &v36[v38];
      v43 = v62;
      (*(v61 + 32))(v60, v42, v62);
      v44 = sub_1BE0493B4();
      v45 = *(v40 + 8);
      v45(v41, v43);
      v45(v20, v43);
LABEL_21:
      sub_1BD363360(v36);
      return v44 & 1;
    }

    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_18:
    sub_1BD3632F8(v36);
    v44 = 0;
    return v44 & 1;
  }

  sub_1BD363360(v36);
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_1BD363294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingTrend();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3632F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD363360(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingTrend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD3633BC()
{
  type metadata accessor for TransferEligibilityModel();
  swift_allocObject();
  return sub_1BD69244C();
}

id sub_1BD3633F4()
{
  v0 = objc_allocWithZone(type metadata accessor for ApplyControllerModel());

  return [v0 init];
}

uint64_t sub_1BD36342C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v81 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v80, v3);
  v79 = &v69 - v4;
  v5 = type metadata accessor for TransferEligibilityView();
  v94 = *(v5 - 8);
  v6 = *(v94 + 64);
  v7 = v5 - 8;
  v90 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v92 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D40);
  MEMORY[0x1EEE9AC00](v70, v9);
  v69 = &v69 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D48);
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v11);
  v83 = &v69 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D50);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v13);
  v89 = &v69 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D58);
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v15);
  v88 = &v69 - v16;
  v17 = *(v7 + 52);
  v91 = v2;
  v18 = (v2 + v17);
  v19 = v18[1];
  v84 = *v18;
  v87 = v19;
  v86 = *(v18 + 16);
  v85 = type metadata accessor for ApplyControllerModel();
  v20 = sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v21 = sub_1BE04E3D4();
  swift_getKeyPath();
  v72 = v20;
  sub_1BE04E974();

  v22 = v98;
  v100 = v97;
  v101 = v98;
  v23 = v2;
  v24 = v92;
  sub_1BD365DA8(v23, v92);
  v94 = *(v94 + 80);
  v25 = (v94 + 16) & ~v94;
  v26 = swift_allocObject();
  sub_1BD365E0C(v24, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68);
  sub_1BD0DE4F4(&qword_1EBD42D70, &qword_1EBD42D60);
  sub_1BD365E88();
  sub_1BD365EDC();
  v27 = v69;
  sub_1BE050F74();

  v28 = sub_1BE04E3C4();
  swift_beginAccess();
  v29 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD422A8);
  sub_1BE04D884();
  swift_endAccess();

  v30 = v91;
  v31 = v92;
  sub_1BD365DA8(v91, v92);
  v32 = swift_allocObject();
  sub_1BD365E0C(v31, v32 + v25);
  v33 = (v27 + *(v29 + 56));
  *v33 = sub_1BD365F94;
  v33[1] = v32;
  v34 = *(v30 + 88);
  v35 = *(v30 + 96);
  *&v97 = *(v30 + 80);
  *(&v97 + 1) = v34;
  LOBYTE(v98) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v100, v36);
  LOBYTE(v97) = v100;
  sub_1BD365DA8(v30, v31);
  v37 = swift_allocObject();
  sub_1BD365E0C(v31, v37 + v25);
  v71 = sub_1BD0DE4F4(&qword_1EBD42D88, &qword_1EBD42D40);
  sub_1BE051064();

  sub_1BD061DA0(v27);
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *&v100 = v97;
  sub_1BD365DA8(v30, v31);
  v82 = v25;
  v38 = swift_allocObject();
  sub_1BD365E0C(v31, v38 + v25);
  type metadata accessor for PKAccountTransferEligibility(0);
  v40 = v39;
  *&v97 = v29;
  *(&v97 + 1) = MEMORY[0x1E69E6370];
  *&v98 = v71;
  *(&v98 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_1BD366710(&qword_1EBD42D90, type metadata accessor for PKAccountTransferEligibility);
  v43 = v73;
  v44 = v83;
  sub_1BE051064();

  (*(v74 + 8))(v44, v43);
  v45 = v91;
  v46 = *(v91 + 32);
  v97 = *(v91 + 16);
  v98 = v46;
  v99 = *(v91 + 48);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  MEMORY[0x1BFB3E970](&v100, v47);
  v95 = v100;
  v96 = v101;
  v48 = v45;
  v49 = v92;
  sub_1BD365DA8(v48, v92);
  v50 = v82;
  v51 = swift_allocObject();
  sub_1BD365E0C(v49, v51 + v50);
  type metadata accessor for Decimal(0);
  v83 = v52;
  *&v97 = v43;
  *(&v97 + 1) = v40;
  *&v98 = OpaqueTypeConformance2;
  *(&v98 + 1) = v42;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_1BD366710(&qword_1EBD42530, type metadata accessor for Decimal);
  v55 = v75;
  v56 = v89;
  sub_1BE051074();

  (*(v76 + 8))(v56, v55);
  v57 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v79;
  sub_1BE04D8B4();

  v59 = v91;
  sub_1BD365DA8(v91, v49);
  v60 = v82;
  v61 = swift_allocObject();
  sub_1BD365E0C(v49, v61 + v60);
  *&v97 = v55;
  *(&v97 + 1) = v83;
  *&v98 = v53;
  *(&v98 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v62 = v81;
  v63 = v77;
  v64 = v88;
  sub_1BE051064();

  sub_1BD23C32C(v58);
  (*(v78 + 8))(v64, v63);
  v65 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D98) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516C4();
  sub_1BD365DA8(v59, v49);
  v66 = swift_allocObject();
  sub_1BD365E0C(v49, v66 + v60);
  result = type metadata accessor for ErrorAlertModifier(0);
  v68 = (v65 + *(result + 20));
  *v68 = sub_1BD366410;
  v68[1] = v66;
  return result;
}

uint64_t sub_1BD3640B4(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = *(type metadata accessor for TransferEligibilityView() + 44);
  v26 = a1;
  v11 = *(a1 + v10);
  type metadata accessor for ApplyControllerModel();
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v27 = v11;
  v12 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v29 != 2 && (v29 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516A4();
    v13 = type metadata accessor for FeatureError(0);
    v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
    sub_1BD23C32C(v9);
    if (v14 == 1)
    {
      sub_1BE04D194();
      v15 = sub_1BE04D204();
      v16 = sub_1BE052C54();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BD026000, v15, v16, "FCC step up complete, calling eligibility again", v17, 2u);
        MEMORY[0x1BFB45F20](v17, -1, -1);
      }

      (*(v24 + 8))(v5, v25);
      v18 = v26;
      type metadata accessor for TransferEligibilityModel();
      sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
      sub_1BE04E3C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
      sub_1BD692108();

      v19 = *(v18 + 88);
      v20 = *(v18 + 96);
      v29 = *(v18 + 80);
      v30 = v19;
      v31 = v20;
      v28 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
      sub_1BE0518F4();
    }
  }

  v21 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = 0;
  v22 = v21;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29) = 2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD36452C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD248390();
  sub_1BE050E54();
  v2 = sub_1BE04EC54();
  v3 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42D68);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void sub_1BD3645B8(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    sub_1BE04D194();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "FCC stepup finished loading", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v12 = *(a2 + 88);
    v13 = *(a2 + 96);
    v15 = *(a2 + 80);
    v16 = v12;
    v17 = v13;
    v14[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
    sub_1BE0518F4();
  }
}

uint64_t sub_1BD364740(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  v14 = *a2;
  sub_1BE04D194();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v15, v16, "Transfer eligibility loading = %{BOOL}d", v17, 8u);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  v18 = *(v6 + 8);
  v18(v13, v5);
  v19 = *(a3 + 80);
  v20 = *(a3 + 88);
  v21 = *(a3 + 96);
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v33);
  if (v33 == 1)
  {
    v31 = v20;
    v32 = v19;
    v30 = v9;
    type metadata accessor for TransferEligibilityView();
    type metadata accessor for TransferEligibilityModel();
    sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v34 == 2)
    {
      sub_1BD364E38();
    }

    else
    {
      if (v34 != 1)
      {
        v20 = v31;
        v19 = v32;
        if (!v34)
        {
          sub_1BD364B54();
        }

        goto LABEL_13;
      }

      v23 = v30;
      sub_1BE04D194();
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C54();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1BD026000, v24, v25, "Transfer eligibility already approved", v26, 2u);
        MEMORY[0x1BFB45F20](v26, -1, -1);
      }

      v18(v23, v5);
    }

    v20 = v31;
    v19 = v32;
  }

LABEL_13:
  type metadata accessor for TransferEligibilityView();
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  v34 = v19;
  v35 = v20;
  v36 = v21;
  MEMORY[0x1BFB3E970](&v33, v22);
  v27 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v34) = v27;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD364B54()
{
  type metadata accessor for TransferEligibilityView();
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v11 & 1) == 0)
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v2 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account);
    *(v2 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_account) = v11;

    v4 = sub_1BE04E3C4() + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_transferType;
    *v4 = *(v0 + 8);
    *(v4 + 8) = 0;

    v5 = sub_1BE04E3C4();
    v6 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = v6;
    v13 = *(v0 + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
    MEMORY[0x1BFB3E970](&v10, v7);
    v8 = sub_1BE053344();
    v9 = *(v5 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount);
    *(v5 + OBJC_IVAR____TtC9PassKitUI24TransferEligibilityModel_amount) = v8;

    sub_1BE04E3C4();
    sub_1BD692824();
  }

  return result;
}

void sub_1BD364E38()
{
  type metadata accessor for TransferEligibilityView();
  type metadata accessor for ApplyControllerModel();
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  v0 = sub_1BE04E3C4();
  v1 = &v0[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v1 = 5;
  v1[8] = 0;

  v2 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v2[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = v5;

  v4 = sub_1BE04E3C4();
  sub_1BD333918();
}

void sub_1BD364FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v29 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  type metadata accessor for TransferEligibilityView();
  v31 = a3;
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v33 == 1)
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v33 & 1) == 0)
    {
      sub_1BE04E3C4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v14 = type metadata accessor for FeatureError(0);
      v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
      sub_1BD23C32C(v13);
      sub_1BE04E3C4();
      if (v15 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        if (v33 == 2)
        {
          sub_1BD364E38();
          return;
        }

        if (v33 == 1)
        {
          v16 = v31;
          v17 = *(v31 + 88);
          v18 = *(v31 + 96);
          v33 = *(v31 + 80);
          v34 = v17;
          v35 = v18;
          v32 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
          sub_1BE0518F4();
          v19 = *(v16 + 64);
          v20 = *(v16 + 72);
          v33 = *(v16 + 56);
          v34 = v19;
          v35 = v20;
          v32 = 1;
LABEL_12:
          sub_1BE0518F4();
          return;
        }

        if (v33)
        {
          v26 = *(v31 + 88);
          v27 = *(v31 + 96);
          v33 = *(v31 + 80);
          v34 = v26;
          v35 = v27;
          v32 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
          sub_1BE0518F4();
          sub_1BE053994();
          __break(1u);
          return;
        }

        v23 = *(v31 + 80);
        v24 = *(v31 + 88);
        v25 = *(v31 + 96);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v21 = v29;
        sub_1BE04D8B4();

        sub_1BD23C2BC(v21, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
        v22 = v31;
        sub_1BE0516B4();
        sub_1BD23C32C(v21);
        v23 = *(v22 + 80);
        v24 = *(v22 + 88);
        v25 = *(v22 + 96);
      }

      v33 = v23;
      v34 = v24;
      v35 = v25;
      v32 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1BD3654F4()
{
  type metadata accessor for TransferEligibilityView();
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD692108();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  return sub_1BE0518F4();
}

uint64_t sub_1BD365624(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for FeatureError(0);
  result = (*(*(v11 - 8) + 48))(a2, 1, v11);
  if (result != 1)
  {
    type metadata accessor for TransferEligibilityView();
    type metadata accessor for ApplyControllerModel();
    sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
    v13 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BD23C2BC(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516B4();
    return sub_1BD23C32C(v10);
  }

  return result;
}

uint64_t sub_1BD365814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  type metadata accessor for TransferEligibilityView();
  type metadata accessor for TransferEligibilityModel();
  sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
  sub_1BE04E3C4();
  v8 = type metadata accessor for FeatureError(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v7, v3);
  sub_1BE04D8C4();
  sub_1BD23C32C(v7);
  type metadata accessor for ApplyControllerModel();
  sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
  sub_1BE04E3C4();
  v9(v7, 1, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD23C2BC(v7, v3);
  sub_1BE04D8C4();
  return sub_1BD23C32C(v7);
}

uint64_t type metadata accessor for TransferEligibilityView()
{
  result = qword_1EBD42D08;
  if (!qword_1EBD42D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD365B10()
{
  type metadata accessor for AccountModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKAccountTransferType(319);
    if (v1 <= 0x3F)
    {
      sub_1BD365C0C();
      if (v2 <= 0x3F)
      {
        sub_1BD23BBFC();
        if (v3 <= 0x3F)
        {
          sub_1BD243964();
          if (v4 <= 0x3F)
          {
            sub_1BD365C64();
            if (v5 <= 0x3F)
            {
              sub_1BD365CF8();
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

void sub_1BD365C0C()
{
  if (!qword_1EBD42D18)
  {
    type metadata accessor for Decimal(255);
    v0 = sub_1BE051964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42D18);
    }
  }
}

void sub_1BD365C64()
{
  if (!qword_1EBD42D20)
  {
    type metadata accessor for TransferEligibilityModel();
    sub_1BD366710(&qword_1EBD42D28, type metadata accessor for TransferEligibilityModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42D20);
    }
  }
}

void sub_1BD365CF8()
{
  if (!qword_1EBD42D30)
  {
    type metadata accessor for ApplyControllerModel();
    sub_1BD366710(&qword_1EBD42D38, type metadata accessor for ApplyControllerModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42D30);
    }
  }
}

uint64_t sub_1BD365DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEligibilityView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD365E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferEligibilityView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD365E88()
{
  result = qword_1EBD42D78;
  if (!qword_1EBD42D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42D78);
  }

  return result;
}

unint64_t sub_1BD365EDC()
{
  result = qword_1EBD42D80;
  if (!qword_1EBD42D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D68);
    sub_1BD248390();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42D80);
  }

  return result;
}

void sub_1BD365F94(void *a1)
{
  v3 = *(type metadata accessor for TransferEligibilityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD3645B8(a1, v4);
}

uint64_t sub_1BD366004(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for TransferEligibilityView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD364740(a1, a2, v6);
}

void sub_1BD366084(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TransferEligibilityView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD364FB8(a1, a2, v6);
}

uint64_t sub_1BD36611C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransferEligibilityView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD366190(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransferEligibilityView();

  return sub_1BD365624(a1, a2);
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for TransferEligibilityView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

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

  sub_1BD0D45CC();
  sub_1BD035CB4(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8), *(v2 + *(v1 + 44) + 16));

  return swift_deallocObject();
}

unint64_t sub_1BD36646C()
{
  result = qword_1EBD42DA0;
  if (!qword_1EBD42DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D50);
    type metadata accessor for Decimal(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D48);
    type metadata accessor for PKAccountTransferEligibility(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42D40);
    sub_1BD0DE4F4(&qword_1EBD42D88, &qword_1EBD42D40);
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD42D90, type metadata accessor for PKAccountTransferEligibility);
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD42530, type metadata accessor for Decimal);
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD366710(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DA0);
  }

  return result;
}

uint64_t sub_1BD366710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ContactFormNameSection()
{
  result = qword_1EBD42DB0;
  if (!qword_1EBD42DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3667CC()
{
  sub_1BD36686C();
  if (v0 <= 0x3F)
  {
    sub_1BD366900();
    if (v1 <= 0x3F)
    {
      sub_1BD366950();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD36686C()
{
  if (!qword_1EBD42DC0)
  {
    type metadata accessor for PersonName(255);
    sub_1BD36A650(&qword_1EBD3A708, type metadata accessor for PersonName);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42DC0);
    }
  }
}

void sub_1BD366900()
{
  if (!qword_1EBD40458)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40458);
    }
  }
}

void sub_1BD366950()
{
  if (!qword_1EBD42DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52A20);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42DC8);
    }
  }
}

int *sub_1BD3669D0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for ContactFormNameSection();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DD0);
  v9 = *(v27 - 8);
  v11 = MEMORY[0x1EEE9AC00](v27, v10);
  v13 = &v27 - v12;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v5 + 8))(v8, v4);
    v31 = v16;
    v32 = v18;
    sub_1BD0DDEBC();
    v31 = sub_1BE0506C4();
    v32 = v19;
    v33 = v20 & 1;
    v34 = v21;
    MEMORY[0x1EEE9AC00](v31, v19);
    v22 = v29;
    *(&v27 - 2) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DD8);
    sub_1BD36A198();
    sub_1BE051A24();
    sub_1BD36A528(v22, &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v24 = swift_allocObject();
    sub_1BD36A384(&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = v30;
    (*(v9 + 32))(v30, v13, v27);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E28);
    v26 = (v25 + result[9]);
    *v26 = sub_1BD36A3E8;
    v26[1] = v24;
    v26[2] = 0;
    v26[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD366D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E30);
  MEMORY[0x1EEE9AC00](v84, v3);
  v85 = &v75 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E20);
  MEMORY[0x1EEE9AC00](v83, v5);
  v82 = &v75 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E10);
  MEMORY[0x1EEE9AC00](v89, v7);
  v9 = &v75 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E38);
  MEMORY[0x1EEE9AC00](v87, v10);
  v88 = &v75 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E40);
  MEMORY[0x1EEE9AC00](v80, v12);
  v81 = &v75 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E00);
  MEMORY[0x1EEE9AC00](v79, v14);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E48);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v91 = &v75 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v92 = &v75 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v75 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v75 - v45;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DF0);
  MEMORY[0x1EEE9AC00](v86, v47);
  v49 = &v75 - v48;
  if (*(*(a1 + 8) + OBJC_IVAR____TtC9PassKitUI10PersonName_requiresPhoneticName) == 1)
  {
    v84 = v32;
    v85 = v16;
    if (qword_1EBD36F10 != -1)
    {
      v74 = &v75 - v48;
      swift_once();
      v49 = v74;
    }

    v50 = v28;
    v77 = v49;
    if (qword_1EBDAB6C0 == 2)
    {
      sub_1BD36772C(v46);
      sub_1BD367A8C(v42);
      sub_1BD367DE8(v92);
      v51 = v91;
      sub_1BD368144(v91);
      LODWORD(v83) = 0;
    }

    else
    {
      sub_1BD367DE8(v46);
      sub_1BD368144(v42);
      sub_1BD36772C(v92);
      v51 = v91;
      sub_1BD367A8C(v91);
      LODWORD(v83) = 1;
    }

    v54 = v46;
    v75 = v42;
    v76 = v46;
    v55 = *(v18 + 16);
    v56 = v84;
    v55(v84, v54, v17);
    v55(v50, v42, v17);
    v55(v24, v92, v17);
    v57 = v78;
    v55(v78, v51, v17);
    v58 = v85;
    v55(v85, v56, v17);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E58);
    v55(v58 + v59[12], v50, v17);
    v55(v58 + v59[16], v24, v17);
    v55(v58 + v59[20], v57, v17);
    v60 = *(v18 + 8);
    v60(v57, v17);
    v60(v24, v17);
    v60(v50, v17);
    v60(v56, v17);
    sub_1BD0DE19C(v58, v81, &qword_1EBD42E00);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42DF8, &qword_1EBD42E00);
    v61 = v77;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v58, &qword_1EBD42E00);
    v60(v91, v17);
    v60(v92, v17);
    v60(v75, v17);
    v60(v76, v17);
    v62 = &qword_1EBD42DF0;
    sub_1BD0DE19C(v61, v88, &qword_1EBD42DF0);
    swift_storeEnumTagMultiPayload();
    sub_1BD36A224();
    sub_1BD36A2D4();
    sub_1BE04F9A4();
    v63 = v61;
  }

  else
  {
    v81 = v9;
    if (qword_1EBD36F10 != -1)
    {
      swift_once();
    }

    v52 = (v18 + 16);
    v53 = (v18 + 8);
    if (qword_1EBDAB6C0 == 2)
    {
      sub_1BD36772C(v46);
      sub_1BD367DE8(v42);
    }

    else
    {
      sub_1BD367DE8(v46);
      sub_1BD36772C(v42);
    }

    v64 = v46;
    v65 = v91;
    v66 = v92;
    v67 = *v52;
    (*v52)(v92, v64, v17);
    v67(v65, v42, v17);
    v68 = v82;
    v67(v82, v66, v17);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42E50);
    v67(v68 + *(v69 + 48), v65, v17);
    v70 = v65;
    v71 = *v53;
    (*v53)(v70, v17);
    v71(v66, v17);
    sub_1BD0DE19C(v68, v85, &qword_1EBD42E20);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD42E18, &qword_1EBD42E20);
    v72 = v81;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v68, &qword_1EBD42E20);
    v71(v42, v17);
    v71(v64, v17);
    v62 = &qword_1EBD42E10;
    sub_1BD0DE19C(v72, v88, &qword_1EBD42E10);
    swift_storeEnumTagMultiPayload();
    sub_1BD36A224();
    sub_1BD36A2D4();
    sub_1BE04F9A4();
    v63 = v72;
  }

  return sub_1BD0DE53C(v63, v62);
}

id sub_1BD36772C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ContactFormNameSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8068], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v35 = v16;
    v36 = v15;

    (*(v8 + 8))(v12, v7);
    v17 = *(v2 + 56);
    v38 = *(v2 + 40);
    *&v39 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516C4();
    v34 = v47;
    v18 = *(&v48 + 1);
    v33 = v48;
    v19 = *MEMORY[0x1E69B97C8];
    v20 = sub_1BD368AC0();
    sub_1BD36A528(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = swift_allocObject();
    sub_1BD36A384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_1BE04E274();
    v25 = v24;
    v26 = v23 & 1;
    v28 = v27 & 1;
    KeyPath = swift_getKeyPath();
    v30 = sub_1BE052434();
    *&v38 = v36;
    *(&v38 + 1) = v35;
    v39 = v34;
    *&v40 = v33;
    *(&v40 + 1) = v18;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = 0uLL;
    *&v43 = sub_1BD36A9B0;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v26;
    *(&v44 + 1) = v25;
    LOBYTE(v45) = v28;
    *(&v45 + 1) = KeyPath;
    *&v46 = v30;
    *(&v46 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v47 = v38;
    v48 = v39;
    return sub_1BD0DE53C(&v47, &qword_1EBD40498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD367A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ContactFormNameSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8068], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v35 = v16;
    v36 = v15;

    (*(v8 + 8))(v12, v7);
    v17 = *(v2 + 104);
    v38 = *(v2 + 88);
    *&v39 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516C4();
    v34 = v47;
    v18 = *(&v48 + 1);
    v33 = v48;
    v19 = *MEMORY[0x1E69B9AA0];
    v20 = sub_1BD369A4C();
    sub_1BD36A528(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = swift_allocObject();
    sub_1BD36A384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_1BE04E274();
    v25 = v24;
    v26 = v23 & 1;
    v28 = v27 & 1;
    KeyPath = swift_getKeyPath();
    v30 = sub_1BE052434();
    *&v38 = v36;
    *(&v38 + 1) = v35;
    v39 = v34;
    *&v40 = v33;
    *(&v40 + 1) = v18;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = 0uLL;
    *&v43 = sub_1BD36A9B0;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v26;
    *(&v44 + 1) = v25;
    LOBYTE(v45) = v28;
    *(&v45 + 1) = KeyPath;
    *&v46 = v30;
    *(&v46 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v47 = v38;
    v48 = v39;
    return sub_1BD0DE53C(&v47, &qword_1EBD40498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD367DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ContactFormNameSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8068], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v35 = v16;
    v36 = v15;

    (*(v8 + 8))(v12, v7);
    v17 = *(v2 + 32);
    v38 = *(v2 + 16);
    *&v39 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516C4();
    v34 = v47;
    v18 = *(&v48 + 1);
    v33 = v48;
    v19 = *MEMORY[0x1E69B9838];
    v20 = sub_1BD368AC0();
    sub_1BD36A528(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = swift_allocObject();
    sub_1BD36A384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_1BE04E274();
    v25 = v24;
    v26 = v23 & 1;
    v28 = v27 & 1;
    KeyPath = swift_getKeyPath();
    v30 = sub_1BE052434();
    *&v38 = v36;
    *(&v38 + 1) = v35;
    v39 = v34;
    *&v40 = v33;
    *(&v40 + 1) = v18;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = 0uLL;
    *&v43 = sub_1BD36A9B0;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v26;
    *(&v44 + 1) = v25;
    LOBYTE(v45) = v28;
    *(&v45 + 1) = KeyPath;
    *&v46 = v30;
    *(&v46 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v47 = v38;
    v48 = v39;
    return sub_1BD0DE53C(&v47, &qword_1EBD40498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD368144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ContactFormNameSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B8068], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v35 = v16;
    v36 = v15;

    (*(v8 + 8))(v12, v7);
    v17 = *(v2 + 80);
    v38 = *(v2 + 64);
    *&v39 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516C4();
    v34 = v47;
    v18 = *(&v48 + 1);
    v33 = v48;
    v19 = *MEMORY[0x1E69B9AA8];
    v20 = sub_1BD369A4C();
    sub_1BD36A528(v2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactFormNameSection);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = swift_allocObject();
    sub_1BD36A384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_1BE04E274();
    v25 = v24;
    v26 = v23 & 1;
    v28 = v27 & 1;
    KeyPath = swift_getKeyPath();
    v30 = sub_1BE052434();
    *&v38 = v36;
    *(&v38 + 1) = v35;
    v39 = v34;
    *&v40 = v33;
    *(&v40 + 1) = v18;
    *&v41 = v19;
    *(&v41 + 1) = v20;
    v42 = 0uLL;
    *&v43 = sub_1BD36A698;
    *(&v43 + 1) = v22;
    LOBYTE(v44) = v26;
    *(&v44 + 1) = v25;
    LOBYTE(v45) = v28;
    *(&v45 + 1) = KeyPath;
    *&v46 = v30;
    *(&v46 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498);
    sub_1BD2A21D8();
    sub_1BE050C44();
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v47 = v38;
    v48 = v39;
    return sub_1BD0DE53C(&v47, &qword_1EBD40498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3684A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v59 - v28;
  v30 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD36A448(v33, v29);
  type metadata accessor for ContactFormNameSection();
  sub_1BD36A4B8(v29, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);
  sub_1BE0516B4();
  sub_1BD0DE53C(v29, &unk_1EBD52A20);
  sub_1BE0516A4();
  v34 = sub_1BE04A704();
  v35 = *(*(v34 - 8) + 48);
  if (v35(v21, 1, v34))
  {
    sub_1BD0DE53C(v21, &unk_1EBD52A20);
LABEL_3:

    v36 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_5;
  }

  v36 = sub_1BE04A664();
  v37 = v38;
  sub_1BD0DE53C(v21, &unk_1EBD52A20);
  if (!v37)
  {
    goto LABEL_3;
  }

LABEL_5:
  v39 = *(a1 + 32);
  v66 = *(a1 + 16);
  v67 = v39;
  v64 = v36;
  v65 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516B4();
  sub_1BE0516A4();
  if (v35(v17, 1, v34))
  {
    sub_1BD0DE53C(v17, &unk_1EBD52A20);
LABEL_7:

    v40 = 0;
    v41 = 0xE000000000000000;
    goto LABEL_9;
  }

  v40 = sub_1BE04A684();
  v41 = v42;
  sub_1BD0DE53C(v17, &unk_1EBD52A20);
  if (!v41)
  {
    goto LABEL_7;
  }

LABEL_9:
  v43 = v61;
  v44 = *(a1 + 56);
  v66 = *(a1 + 40);
  v67 = v44;
  v64 = v40;
  v65 = v41;
  sub_1BE0516B4();
  v45 = v62;
  sub_1BE0516A4();
  if (v35(v45, 1, v34))
  {
LABEL_12:
    sub_1BD0DE53C(v45, &unk_1EBD52A20);
LABEL_13:

    v46 = 0;
    v47 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_1BE04A6C4();
  if (v35(v43, 1, v34))
  {
    sub_1BD0DE53C(v43, &unk_1EBD52A20);
    goto LABEL_12;
  }

  v46 = sub_1BE04A664();
  v55 = v43;
  v56 = v45;
  v47 = v57;
  sub_1BD0DE53C(v55, &unk_1EBD52A20);
  sub_1BD0DE53C(v56, &unk_1EBD52A20);
  if (!v47)
  {
    goto LABEL_13;
  }

LABEL_14:
  v48 = *(a1 + 80);
  v66 = *(a1 + 64);
  v67 = v48;
  v64 = v46;
  v65 = v47;
  sub_1BE0516B4();
  v49 = v63;
  sub_1BE0516A4();
  if (!v35(v49, 1, v34))
  {
    v50 = v60;
    sub_1BE04A6C4();
    if (!v35(v50, 1, v34))
    {
      v51 = sub_1BE04A684();
      v52 = v58;
      sub_1BD0DE53C(v50, &unk_1EBD52A20);
      sub_1BD0DE53C(v49, &unk_1EBD52A20);
      if (v52)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    sub_1BD0DE53C(v50, &unk_1EBD52A20);
  }

  sub_1BD0DE53C(v49, &unk_1EBD52A20);
LABEL_18:

  v51 = 0;
  v52 = 0xE000000000000000;
LABEL_19:
  v53 = *(a1 + 104);
  v66 = *(a1 + 88);
  v67 = v53;
  v64 = v51;
  v65 = v52;
  return sub_1BE0516B4();
}

uint64_t sub_1BD368AC0()
{
  v1 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v35 - v15;
  v36 = v0;
  v17 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v35[1] = v17;
  sub_1BE04D8B4();

  sub_1BD36A448(v8, v16);
  v18 = sub_1BE04A704();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    sub_1BD0DE53C(v16, &unk_1EBD52A20);
  }

  else
  {
    v35[0] = sub_1BE04A664();
    v22 = v21;
    (*(v19 + 8))(v16, v18);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  v35[0] = 0;
  v22 = 0xE000000000000000;
LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD36A448(v4, v12);
  if (v20(v12, 1, v18) == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD52A20);
    v23 = v36;
  }

  else
  {
    v24 = sub_1BE04A684();
    v26 = v25;
    (*(v19 + 8))(v12, v18);
    v23 = v36;
    if (v26)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v26 = 0xE000000000000000;
LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v27 = v39;
  if (!(v39 >> 62))
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_26;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1BFB40900](0, v27);
LABEL_14:
    v30 = v29;

    v31 = *(v23 + 32);
    v39 = *(v23 + 16);
    v40 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516A4();
    if (v35[0] == v37 && v22 == v38)
    {

      goto LABEL_18;
    }

    v32 = sub_1BE053B84();

    if (v32)
    {
LABEL_18:
      v33 = *(v23 + 56);
      v39 = *(v23 + 40);
      v40 = v33;
      sub_1BE0516A4();
      if (v24 == v37 && v26 == v38)
      {

        return v30;
      }

      v34 = sub_1BE053B84();

      if (v34)
      {
        return v30;
      }

      return 0;
    }

LABEL_26:

    return 0;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v27 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD368F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A40);
  MEMORY[0x1EEE9AC00](v87, v3);
  v89 = &v81 - v4;
  v5 = sub_1BE04A704();
  v91 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v81 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v88 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v94 = &v81 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v82 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v81 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v86 = &v81 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v85 = &v81 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v81 - v41;
  sub_1BD36A010(&v81 - v41);
  v43 = v1[2];
  v44 = v1[3];
  v45 = v1[4];
  *&v97 = v43;
  *(&v97 + 1) = v44;
  v98 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v47 = v95;
  v46 = v96;

  v48 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    goto LABEL_12;
  }

  v49 = v2[7];
  v97 = *(v2 + 5);
  v98 = v49;
  sub_1BE0516A4();
  v51 = v95;
  v50 = v96;

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v52 || (v53 = *(v91 + 48), v53(v42, 1, v5) != 1))
  {
LABEL_12:
    v57 = v88;
    sub_1BE04A6F4();
    *&v97 = v43;
    *(&v97 + 1) = v44;
    v98 = v45;
    sub_1BE0516A4();
    sub_1BE04A674();
    v58 = v2[7];
    v97 = *(v2 + 5);
    v98 = v58;
    sub_1BE0516A4();
    sub_1BE04A694();
    sub_1BD36A4B8(v42, v32);
    v59 = v91;
    v85 = *(v91 + 48);
    v60 = (v85)(v32, 1, v5);
    v86 = v42;
    v61 = v59;
    if (v60 == 1)
    {
      sub_1BD0DE53C(v32, &unk_1EBD52A20);
      v62 = *(v59 + 16);
    }

    else
    {
      v63 = *(v59 + 32);
      v64 = v83;
      v63(v83, v32, v5);
      v62 = *(v61 + 16);
      v65 = v82;
      v62(v82, v64, v5);
      (*(v61 + 56))(v65, 0, 1, v5);
      sub_1BE04A6D4();
      (*(v61 + 8))(v64, v5);
    }

    v66 = v57;
    v67 = v94;
    v62(v94, v66, v5);
    v68 = *(v61 + 56);
    v68(v67, 0, 1, v5);
    v69 = v93;
    v62(v93, v66, v5);
    v68(v69, 0, 1, v5);
    type metadata accessor for ContactFormNameSection();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);
    v70 = v92;
    sub_1BE0516A4();
    v71 = *(v87 + 48);
    v72 = v89;
    sub_1BD36A4B8(v69, v89);
    sub_1BD36A4B8(v70, v72 + v71);
    v73 = v85;
    if ((v85)(v72, 1, v5) == 1)
    {
      sub_1BD0DE53C(v70, &unk_1EBD52A20);
      sub_1BD0DE53C(v69, &unk_1EBD52A20);
      (*(v61 + 8))(v66, v5);
      if ((v73)(v72 + v71, 1, v5) == 1)
      {
        sub_1BD0DE53C(v72, &unk_1EBD52A20);
        v56 = 1;
LABEL_24:
        v42 = v86;
        goto LABEL_25;
      }
    }

    else
    {
      v74 = v84;
      sub_1BD36A4B8(v72, v84);
      if ((v73)(v72 + v71, 1, v5) != 1)
      {
        v76 = v81;
        (*(v61 + 32))(v81, v72 + v71, v5);
        sub_1BD36A650(&qword_1EBD42E60, MEMORY[0x1E6968A70]);
        v77 = sub_1BE052334();
        v78 = *(v61 + 8);
        v78(v76, v5);
        sub_1BD0DE53C(v92, &unk_1EBD52A20);
        sub_1BD0DE53C(v93, &unk_1EBD52A20);
        v78(v66, v5);
        v78(v74, v5);
        sub_1BD0DE53C(v72, &unk_1EBD52A20);
        if (v77)
        {
          v56 = 1;
        }

        else
        {
          v56 = 6;
        }

        goto LABEL_24;
      }

      sub_1BD0DE53C(v92, &unk_1EBD52A20);
      sub_1BD0DE53C(v93, &unk_1EBD52A20);
      v75 = *(v61 + 8);
      v75(v66, v5);
      v75(v74, v5);
    }

    sub_1BD0DE53C(v72, &unk_1EBD52A40);
    v56 = 6;
    goto LABEL_24;
  }

  v54 = v85;
  (*(v91 + 56))(v85, 1, 1, v5);
  type metadata accessor for ContactFormNameSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);
  v55 = v86;
  sub_1BE0516A4();
  if (v53(v55, 1, v5) == 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = 6;
  }

  sub_1BD0DE53C(v55, &unk_1EBD52A20);
  v94 = v54;
LABEL_25:
  v79 = v90;
  sub_1BD36A448(v94, v90);
  *(v79 + *(type metadata accessor for PersonNameComponentsData(0) + 20)) = v56;
  return sub_1BD0DE53C(v42, &unk_1EBD52A20);
}

void sub_1BD369898(char a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  if ((a1 & 1) == 0)
  {
    v12 = *(a2 + 8);
    sub_1BE048964();
    sub_1BD368F9C(v11);
    v13 = (v12 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
    v14 = *(v12 + OBJC_IVAR____TtC9PassKitUI10PersonName_context);
    if (v14)
    {
      v15 = v13[4];
      v17 = v13[2];
      v16 = v13[3];
      v18 = v13[1];
      sub_1BD36A528(v11, v7, type metadata accessor for PersonNameComponentsData);
      sub_1BD36A5EC(v14, v18, v17, v16, v15);
      sub_1BD790E98(v7, v14, v15);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD36A528(v11, v7, type metadata accessor for PersonNameComponentsData);
      sub_1BE04D8C4();
    }

    sub_1BD36A590(v11);
  }
}

uint64_t sub_1BD369A4C()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponentsData(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v52 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50 - v23;
  v25 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v25;
  sub_1BE04D8B4();

  sub_1BD36A448(v9, v20);
  v26 = sub_1BE04A704();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v20, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  v51 = v1;
  sub_1BE04A6C4();
  v29 = *(v27 + 8);
  v29(v20, v26);
  if (v28(v24, 1, v26) == 1)
  {
    v20 = v24;
    v1 = v51;
LABEL_4:
    sub_1BD0DE53C(v20, &unk_1EBD52A20);
LABEL_5:

    v53 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_6;
  }

  v53 = sub_1BE04A664();
  v45 = v44;
  v29(v24, v26);
  v1 = v51;
  if (!v45)
  {
    goto LABEL_5;
  }

  v30 = v45;
LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD36A448(v5, v13);
  if (v28(v13, 1, v26) == 1)
  {
LABEL_9:
    v34 = v30;
    sub_1BD0DE53C(v13, &unk_1EBD52A20);
LABEL_10:

    v35 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_11;
  }

  v31 = v1;
  v32 = v52;
  sub_1BE04A6C4();
  v33 = *(v27 + 8);
  v33(v13, v26);
  if (v28(v32, 1, v26) == 1)
  {
    v13 = v32;
    v1 = v31;
    goto LABEL_9;
  }

  v46 = sub_1BE04A684();
  v47 = v32;
  v35 = v46;
  v36 = v48;
  v33(v47, v26);
  v1 = v31;
  v34 = v30;
  if (!v36)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v37 = v57;
  if (!(v57 >> 62))
  {
    result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_31:

    goto LABEL_32;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1BFB40900](0, v37);
LABEL_16:
    v40 = v39;

    v41 = *(v1 + 80);
    v57 = *(v1 + 64);
    v58 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
    sub_1BE0516A4();
    if (v53 == v55 && v34 == v56)
    {

      goto LABEL_20;
    }

    v42 = sub_1BE053B84();

    if (v42)
    {
LABEL_20:
      v43 = *(v1 + 104);
      v57 = *(v1 + 88);
      v58 = v43;
      sub_1BE0516A4();
      if (v35 == v55 && v36 == v56)
      {

        return v40;
      }

      v49 = sub_1BE053B84();

      if (v49)
      {
        return v40;
      }

      return 0;
    }

LABEL_32:

    return 0;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v37 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD36A010@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();

  v2 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v2 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  sub_1BE0516A4();

  v3 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v3 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
LABEL_7:
    sub_1BE04A6F4();
    sub_1BE0516A4();
    sub_1BE04A674();
    sub_1BE0516A4();
    sub_1BE04A694();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1BE04A704();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

unint64_t sub_1BD36A198()
{
  result = qword_1EBD42DE0;
  if (!qword_1EBD42DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DD8);
    sub_1BD36A224();
    sub_1BD36A2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DE0);
  }

  return result;
}

unint64_t sub_1BD36A224()
{
  result = qword_1EBD42DE8;
  if (!qword_1EBD42DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DF0);
    sub_1BD0DE4F4(&qword_1EBD42DF8, &qword_1EBD42E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42DE8);
  }

  return result;
}

unint64_t sub_1BD36A2D4()
{
  result = qword_1EBD42E08;
  if (!qword_1EBD42E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42E10);
    sub_1BD0DE4F4(&qword_1EBD42E18, &qword_1EBD42E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E08);
  }

  return result;
}

uint64_t sub_1BD36A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactFormNameSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36A3E8()
{
  v1 = *(type metadata accessor for ContactFormNameSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD3684A0(v2);
}

uint64_t sub_1BD36A448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36A4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36A528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD36A590(uint64_t a1)
{
  v2 = type metadata accessor for PersonNameComponentsData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD36A5EC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (result)
  {
    v6 = result;
    v7 = a4;
    v8 = a5;
    sub_1BE048964();
    v9 = v6;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1BD36A650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_31()
{
  v1 = (type metadata accessor for ContactFormNameSection() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = sub_1BE04A704();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42DA8);

  return swift_deallocObject();
}

unint64_t sub_1BD36A88C()
{
  result = qword_1EBD42E68;
  if (!qword_1EBD42E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42E28);
    sub_1BD36A918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E68);
  }

  return result;
}

unint64_t sub_1BD36A918()
{
  result = qword_1EBD42E70;
  if (!qword_1EBD42E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42DD0);
    sub_1BD36A198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42E70);
  }

  return result;
}

uint64_t sub_1BD36A9B4()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BD2217E0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (!v2)
    {
      IsAutomatic = 1;
      v4 = v1;
LABEL_11:

      return IsAutomatic;
    }

    v3 = v2;
    PKScreenScale();
    v4 = [v3 imageForScaleFactorValue_];

    if (v4)
    {
      [v4 width];
      if (PKRemoteImageDimensionIsAutomatic())
      {
        [v4 height];
        IsAutomatic = PKRemoteImageDimensionIsAutomatic();
      }

      else
      {
        IsAutomatic = 0;
      }

      goto LABEL_11;
    }
  }

  return 1;
}

double sub_1BD36AABC()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BD2217E0();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 remoteImage];
  if (!v2)
  {

LABEL_10:
    if (qword_1EBD370B0 != -1)
    {
      swift_once();
    }

    return *&qword_1EBDAB948;
  }

  v3 = v2;
  PKScreenScale();
  v4 = [v3 imageForScaleFactorValue_];

  if (!v4)
  {
    goto LABEL_10;
  }

  [v4 width];
  if (!PKRemoteImageDimensionIsAutomatic())
  {

    return 0.0;
  }

  [v4 height];
  IsAutomatic = PKRemoteImageDimensionIsAutomatic();

  result = 0.0;
  if (IsAutomatic)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BD36ABF8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v18 - v9;
  v11 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  if (v11 < 3)
  {
    return sub_1BD36BCB0();
  }

  if (v11 == 4)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80B0], v1);
    v11 = PKPassKitBundle();
    if (v11)
    {
      v13 = v11;
      v14 = sub_1BE04B6E4();

      (*(v2 + 8))(v5, v1);
      return v14;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v11 != 3)
  {
LABEL_12:
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    v17 = v11;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000026, 0x80000001BE124F40);
    v18[1] = v17;
    type metadata accessor for PKAccountPromotionState(0);
    sub_1BE053974();
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  (*(v2 + 104))(v10, *MEMORY[0x1E69B80B0], v1);
  v11 = PKPassKitBundle();
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v11;
  v16 = sub_1BE04B6E4();

  (*(v2 + 8))(v10, v1);
  return v16;
}

id sub_1BD36AEE0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state] == 3)
  {
    return 0;
  }

  result = sub_1BD36BFB4();
  if (result)
  {
    v8 = result;
    v9 = sub_1BD36C240();

    if (!v9)
    {
      return 0;
    }

    v10 = [v9 formattedStringValue];

    if (!v10)
    {
      return 0;
    }

    v11 = sub_1BE052434();
    v13 = v12;

    (*(v2 + 104))(v6, *MEMORY[0x1E69B80B0], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B69E0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1BD110550();
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B704();

      (*(v2 + 8))(v6, v1);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1BD36B104()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BD2217E0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 remoteImage];
    if (!v2)
    {
      v5 = 0.0;
      v4 = v1;
LABEL_13:

      return v5;
    }

    v3 = v2;
    PKScreenScale();
    v4 = [v3 imageForScaleFactorValue_];

    if (v4)
    {
      if (sub_1BD36C3B0())
      {
        v5 = 0.0;
        if (sub_1BD36C4B4())
        {
          [v4 width];
          v5 = v6;
          [v4 height];
        }
      }

      else
      {
        v5 = 45.0;
      }

      goto LABEL_13;
    }
  }

  return 0.0;
}

uint64_t sub_1BD36B238()
{
  result = sub_1BE052434();
  qword_1EBD42E80 = result;
  *algn_1EBD42E88 = v1;
  return result;
}

uint64_t sub_1BD36B268()
{
  result = sub_1BE052434();
  qword_1EBD42E90 = result;
  *algn_1EBD42E98 = v1;
  return result;
}

uint64_t sub_1BD36B298()
{
  result = sub_1BE052434();
  qword_1EBD42EA0 = result;
  *algn_1EBD42EA8 = v1;
  return result;
}

uint64_t sub_1BD36B2C8()
{
  result = sub_1BE052434();
  qword_1EBD42EB0 = result;
  *algn_1EBD42EB8 = v1;
  return result;
}

uint64_t sub_1BD36B2F8()
{
  result = sub_1BE052434();
  qword_1EBD42EC0 = result;
  *algn_1EBD42EC8 = v1;
  return result;
}

uint64_t sub_1BD36B328()
{
  result = sub_1BE052434();
  qword_1EBD42ED0 = result;
  *algn_1EBD42ED8 = v1;
  return result;
}

uint64_t sub_1BD36B358()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

char *sub_1BD36B3CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x1E69B83C0]) init];
  v12 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69B8828]) init];
  v13 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template;
  *(v1 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_template) = 0;
  v43 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication;
  *(v1 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication) = 0;
  v14 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel__appStoreButtonTitle;
  v46 = 0;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
  sub_1BE04D874();
  v44 = v7;
  (v7)[4](v1 + v14, v10, v6);
  v15 = *(v1 + v11);
  *(v1 + v11) = a1;
  v16 = a1;

  v17 = [v16 layout];
  if (v17)
  {
    v18 = *(v1 + v12);
    *(v1 + v12) = v17;
    v19 = v17;

    v20 = [v16 templateIdentifier];
    if (v20)
    {
      v21 = sub_1BD36CDC4(v20);
      if (v21 == 5)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      *(v1 + v13) = v22;
    }

    v23 = type metadata accessor for AccountPromotionViewModel();
    v45.receiver = v1;
    v45.super_class = v23;
    v15 = objc_msgSendSuper2(&v45, sel_init);
    if (([*&v15[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion] isInTerminalState] & 1) == 0)
    {
      if (qword_1EBD36BD8 != -1)
      {
        swift_once();
      }

      v24 = sub_1BD2220F0();
      if (v24)
      {
        v25 = v24;
        v26 = [v24 adamID];
        if (v26)
        {
          v27 = v26;
          v44 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BE0B7020;
          *(v28 + 32) = v27;
          v29 = sub_1BE04AA64();
          v30 = *(v29 - 8);
          v31 = v42;
          (*(v30 + 56))(v42, 1, 1, v29);
          sub_1BD0E5E8C(0, &qword_1EBD3D270);
          v43 = v27;
          v32 = sub_1BE052724();

          v33 = 0;
          if ((*(v30 + 48))(v31, 1, v29) != 1)
          {
            v33 = sub_1BE04A9C4();
            (*(v30 + 8))(v31, v29);
          }

          v34 = [objc_allocWithZone(PKLinkedApplication) initWithStoreIDs:v32 defaultLaunchURL:v33];

          v35 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication;
          v36 = *&v15[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
          *&v15[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication] = v34;

          v37 = *&v15[v35];
          if (v37)
          {
            [v37 addObserver_];
            v38 = *&v15[v35];
            if (v38)
            {
              v39 = v38;
              [v39 reloadApplicationStateIfNecessary];
            }
          }

          goto LABEL_21;
        }
      }
    }

    v19 = *&v15[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
    *&v15[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication] = 0;
LABEL_21:

    return v15;
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
  swift_willThrow();

  (*(v44 + 1))(v1 + v14, v6);
  type metadata accessor for AccountPromotionViewModel();
  swift_deallocPartialClassInstance();
  return v15;
}

id sub_1BD36B960()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication];
  if (v1)
  {
    [v1 removeObserver_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountPromotionViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for AccountPromotionViewModel()
{
  result = qword_1EBD42F10;
  if (!qword_1EBD42F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD36BB58()
{
  sub_1BD36BC0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD36BC0C()
{
  if (!qword_1EBD42F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A5C8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42F20);
    }
  }
}

uint64_t sub_1BD36BC70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountPromotionViewModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD36BCB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v27 - v3;
  v5 = sub_1BE04B2F4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion;
  v12 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) hideTimeRemaining];
  result = 0;
  if ((v12 & 1) == 0)
  {
    [*(v0 + v11) timeRemaining];
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    v17 = v16;
    if (v15 >= 86400.0)
    {
      v18 = 24;
    }

    else
    {
      v18 = 48;
    }

    [v16 setAllowedUnits_];
    [v17 setUnitsStyle_];
    [v17 setIncludesTimeRemainingPhrase_];
    sub_1BE04B2A4();
    sub_1BE04AFF4();
    v19 = sub_1BE04B0F4();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    sub_1BE04B284();
    v20 = sub_1BE04B1D4();
    [v17 setCalendar_];

    [v17 setFormattingContext_];
    v21 = [v17 stringFromTimeInterval_];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BE052434();
      v25 = v24;

      v27[0] = v23;
      v27[1] = v25;
      MEMORY[0x1BFB3F610](0x696E69616D655220, 0xEA0000000000676ELL);

      v26 = v27[0];
      (*(v6 + 8))(v10, v5);
      return v26;
    }

    else
    {
      (*(v6 + 8))(v10, v5);

      return 0;
    }
  }

  return result;
}

void *sub_1BD36BFB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) completionSteps];
  if (v1)
  {
    v2 = v1;
    sub_1BD0E5E8C(0, &qword_1EBD42FA0);
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB40900](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v6 progressType] == 1)
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

id sub_1BD36C0FC()
{
  if ([v0 progressType] - 1 > 2)
  {
    return 0;
  }

  result = [v0 currentValue];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [v0 endValue];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [objc_opt_self() zero];
  v6 = [v4 compare_];

  if (!v6)
  {

    return 0;
  }

  v7 = [v2 decimalNumberByDividingBy_];
  [v7 doubleValue];
  v9 = v8;

  v10 = 0.0;
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  return *&v10;
}

id sub_1BD36C240()
{
  v1 = v0;
  if ([v0 progressType] != 1)
  {
    return 0;
  }

  result = [v0 currentValue];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [v0 endValue];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = [v1 currencyCode];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = [v5 decimalNumberBySubtracting_];
  if ([v8 pk_isNegativeNumber])
  {
    v9 = [objc_opt_self() zero];

    v8 = v9;
  }

  else if ([v8 pk:v5 isGreaterThan:?])
  {

    v8 = v5;
  }

  v10 = PKCurrencyAmountMake();

  return v10;
}

uint64_t sub_1BD36C3B0()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  result = sub_1BD2217E0();
  if (result)
  {
    v1 = result;
    v2 = [result remoteImage];
    if (v2)
    {
      v3 = v2;
      PKScreenScale();
      v4 = [v3 imageForScaleFactorValue_];

      if (v4)
      {
        [v4 width];
        if (PKRemoteImageDimensionIsAutomatic())
        {
          [v4 height];
          IsAutomatic = PKRemoteImageDimensionIsAutomatic();

          return IsAutomatic ^ 1u;
        }

        else
        {

          return 1;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_1BD36C4B4()
{
  if (qword_1EBD36BC8 != -1)
  {
    swift_once();
  }

  result = sub_1BD2217E0();
  if (result)
  {
    v1 = result;
    v2 = [result remoteImage];
    if (v2)
    {
      v3 = v2;
      PKScreenScale();
      v4 = [v3 imageForScaleFactorValue_];

      if (v4)
      {
        [v4 width];
        if ((PKRemoteImageDimensionIsMaximum() & 1) == 0)
        {
          [v4 width];
          if ((PKRemoteImageDimensionIsAutomatic() & 1) == 0)
          {
            [v4 height];
            if ((PKRemoteImageDimensionIsMaximum() & 1) == 0)
            {
              [v4 height];
              IsAutomatic = PKRemoteImageDimensionIsAutomatic();

              return (IsAutomatic ^ 1u);
            }
          }
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BD36C5DC()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD36CDBC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_68;
  v12 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BD36C8D0()
{
  result = qword_1EBD42F90;
  if (!qword_1EBD42F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42F90);
  }

  return result;
}

uint64_t sub_1BD36C954()
{
  v1 = [v0 configuration];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BE052244();

    if (*(v3 + 16) && (v4 = sub_1BD148F70(0x6F69746F6D6F7270, 0xEE0065746174536ELL), (v5 & 1) != 0))
    {
      sub_1BD038CD0(*(v3 + 56) + 32 * v4, v9);

      if (swift_dynamicCast())
      {
        v6 = sub_1BE052404();

        v7 = PKAccountPromotionStateFromString();

        return v7;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1BD36CA98(void *a1, uint64_t a2)
{
  v3 = [a1 osVersionRange];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_1BE052404();
  v6 = [v4 versionMeetsRequirements:a2 deviceClass:v5];

  return v6;
}

void sub_1BD36CB24()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication);
    if (!v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 0;
      v25 = 0;
      sub_1BE04D8C4();
      return;
    }

    v11 = v10;
    v12 = [v11 isInstalled];
    v13 = *MEMORY[0x1E69B80B0];
    v14 = *(v1 + 104);
    if (v12)
    {
      v14(v8, v13, v0);
      v15 = PKPassKitBundle();
      if (v15)
      {
        v16 = v15;
        v17 = sub_1BE04B6E4();
        v19 = v18;

        (*(v1 + 8))(v8, v0);
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        v24 = v17;
        v25 = v19;
        sub_1BE04D8C4();

        return;
      }

      __break(1u);
    }

    else
    {
      v14(v4, v13, v0);
      v20 = PKPassKitBundle();
      if (v20)
      {
        v21 = v20;
        v17 = sub_1BE04B6E4();
        v19 = v22;

        (*(v1 + 8))(v4, v0);
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD36CDC4(void *a1)
{
  v2 = sub_1BE052434();
  v4 = v3;
  if (v2 == sub_1BE052434() && v4 == v5)
  {

    return 0;
  }

  v7 = sub_1BE053B84();

  if (v7)
  {

    return 0;
  }

  v9 = sub_1BE052434();
  v11 = v10;
  if (v9 == sub_1BE052434() && v11 == v12)
  {

    return 1;
  }

  else
  {
    v14 = sub_1BE053B84();

    if (v14)
    {

      return 1;
    }

    else
    {
      v15 = sub_1BE052434();
      v17 = v16;
      if (v15 == sub_1BE052434() && v17 == v18)
      {

        return 2;
      }

      else
      {
        v19 = sub_1BE053B84();

        if (v19)
        {

          return 2;
        }

        else
        {
          v20 = sub_1BE052434();
          v22 = v21;
          if (v20 == sub_1BE052434() && v22 == v23)
          {

            return 3;
          }

          else
          {
            v24 = sub_1BE053B84();

            if (v24)
            {

              return 3;
            }

            else
            {
              v25 = sub_1BE052434();
              v27 = v26;
              if (v25 == sub_1BE052434() && v27 == v28)
              {

                return 4;
              }

              else
              {
                v29 = sub_1BE053B84();

                if (v29)
                {
                  return 4;
                }

                else
                {
                  return 5;
                }
              }
            }
          }
        }
      }
    }
  }
}

id FinanceKitSpendingSummaryDataProviderWrapper.__allocating_init(accountIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - v11;
  v13 = objc_allocWithZone(v2);
  v14 = *(v5 + 16);
  v14(v12, a1, v4);
  v15 = objc_allocWithZone(v2);
  v14(v8, v12, v4);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v8);
  *&v15[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v16;
  v20.receiver = v15;
  v20.super_class = v2;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  v18 = *(v5 + 8);
  v18(a1, v4);
  v18(v12, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

id FinanceKitSpendingSummaryDataProviderWrapper.init(accountIdentifier:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v19 - v11;
  v13 = *(v4 + 16);
  v13(&v19 - v11, a1, v3, v10);
  v14 = objc_allocWithZone(ObjectType);
  (v13)(v7, v12, v3);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v7);
  *&v14[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v15;
  v19.receiver = v14;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  v17 = *(v4 + 8);
  v17(a1, v3);
  v17(v12, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t FinanceKitSpendingSummaryDataProviderWrapper.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  v4 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t FinanceKitSpendingSummaryDataProviderWrapper.startAndCacheCurrentlySelectedSpendingSummary()()
{
  v1[2] = v0;
  v2 = sub_1BE04B2D4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD36D958, 0, 0);
}

uint64_t sub_1BD36D958()
{
  v0[13] = *(v0[2] + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1BD36D9F8;

  return sub_1BD9FDE08();
}

uint64_t sub_1BD36D9F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x1EEE6DFA0](sub_1BD36DB78, v6, 0);
  }
}

uint64_t sub_1BD36DB78()
{
  v1 = *(v0 + 104);
  *(v0 + 168) = sub_1BD9FBA80();

  return MEMORY[0x1EEE6DFA0](sub_1BD36DBE4, v1, 0);
}

uint64_t sub_1BD36DBE4()
{
  v1 = (v0[13] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[15] = *v1;
  v0[16] = v1[1];
  v0[17] = v1[2];
  sub_1BD298E60(v2);

  return MEMORY[0x1EEE6DFA0](sub_1BD36DC74, 0, 0);
}

uint64_t sub_1BD36DC74()
{
  v1 = *(v0 + 120);
  if (!*(v0 + 168))
  {
    if (v1)
    {
      v3 = *(v0 + 80);

      v4 = *(v1 + 16);
      if (v4 >= 2)
      {
        v5 = v4 - 2;
      }

      else
      {
        v5 = 0;
      }

      v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      result = *(v0 + 120);
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v2 = (v0 + 128);
  if (*(v0 + 168) == 1)
  {
    if (!v1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v2 = (v0 + 136);
  if (!v1)
  {
LABEL_18:

    v9 = *(v0 + 8);

    return v9();
  }

LABEL_11:

  result = *v2;
  v4 = *(*v2 + 16);
  if (v4 >= 2)
  {
    v5 = v4 - 2;
  }

  else
  {
    v5 = 0;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  v8 = *(*(v0 + 80) + 80);
  v6 = result + ((v8 + 32) & ~v8);
LABEL_16:
  *(v0 + 144) = result;
  if (v5 == v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (v4 <= v5)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = *(v12 + 72);
    sub_1BD36E78C(v6 + v14 * (v4 - 1), *(v0 + 96));
    v15 = *(v12 + 56);
    v15(v13, 1, 1, v11);
    sub_1BD36E78C(v6 + v14 * v5, v10);
    sub_1BE04AF64();
    sub_1BD36E7FC();
    if (sub_1BE052334() & 1) != 0 && (sub_1BE052334())
    {
      sub_1BD0DE53C(*(v0 + 88), &qword_1EBD38DB8);
    }

    else
    {
      v16 = *(v0 + 88);
      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      sub_1BD0DE53C(v18, &qword_1EBD402D0);
      sub_1BD36E854(v16, v18);
      v15(v18, 0, 1, v17);
    }

    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    (*(v20 + 104))(v22, **(&unk_1E800FA30 + *(v0 + 168)), v19);
    (*(v20 + 32))(v21, v22, v19);
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v23[1] = sub_1BD36DFC8;
    v24 = *(v0 + 96);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 48);

    return sub_1BD9FC674(v25, v24, v26, v27);
  }

  return result;
}

uint64_t sub_1BD36DFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1BD36E22C;
  }

  else
  {
    sub_1BD36E8C4(*(v2 + 56));
    v6 = sub_1BD36E148;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BD36E148()
{
  v1 = v0[12];
  v2 = v0[8];
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v2, &qword_1EBD402D0);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD36E22C()
{
  v1 = v0[12];
  v2 = v0[8];
  swift_unknownObjectRelease();
  sub_1BD0DE53C(v2, &qword_1EBD402D0);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD36E484(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BD36E52C;

  return FinanceKitSpendingSummaryDataProviderWrapper.startAndCacheCurrentlySelectedSpendingSummary()();
}

uint64_t sub_1BD36E52C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1BE04A844();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id FinanceKitSpendingSummaryDataProviderWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceKitSpendingSummaryDataProviderWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD36E78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD36E7FC()
{
  result = qword_1EBD3E460;
  if (!qword_1EBD3E460)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E460);
  }

  return result;
}

uint64_t sub_1BD36E854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36E8C4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD36E95C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD36E484(v2, v3);
}

id sub_1BD36EA34@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v52 = a2;
  v51 = sub_1BE04BD74();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  type metadata accessor for PhoneNumbers();
  sub_1BD36EFC0();
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v12 = v58;
  v49 = v59;
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v13 = v55;
  v14 = v56;
  v45 = v57;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v54;
  if (v54 >> 62)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v51;
  v47 = v13;
  v48 = v12;
  v46 = v14;
  if (result)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB40900](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v18 = *(v15 + 32);
    }

    v44 = v18;
  }

  else
  {

    v44 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD36F018;
  *(v19 + 24) = a1;
  v20 = *MEMORY[0x1E69B8068];
  v21 = *(v5 + 104);
  v21(v11, v20, v17);
  v22 = v52;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v17;
  v24 = result;
  v43 = sub_1BE04B6F4();
  v42 = v25;

  v26 = *(v5 + 8);
  v26(v11, v23);
  v27 = v50;
  v21(v50, v20, v23);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = v27;
    v30 = sub_1BE04B6F4();
    v32 = v31;

    v26(v29, v23);
    v33 = v46;
    *(a3 + 24) = v47;
    *(a3 + 32) = v33;
    *(a3 + 40) = v45;
    v53 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8);
    sub_1BE051694();
    v34 = *(&v54 + 1);
    *(a3 + 120) = v54;
    *(a3 + 128) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC0);
    v36 = *(v35 + 92);
    *(a3 + v36) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
    swift_storeEnumTagMultiPayload();
    v37 = *(v35 + 96);
    v53 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8);
    sub_1BE051694();
    *(a3 + v37) = v54;
    result = sub_1BE04E284();
    *a3 = v48;
    *(a3 + 8) = v49;
    v38 = v43;
    *(a3 + 48) = v44;
    *(a3 + 56) = sub_1BD36F034;
    v39 = v52;
    *(a3 + 64) = v19;
    *(a3 + 72) = v39;
    *(a3 + 80) = 1;
    v40 = v42;
    *(a3 + 88) = v38;
    *(a3 + 96) = v40;
    *(a3 + 104) = v30;
    *(a3 + 112) = v32;
    *(a3 + 136) = 1;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BD36EF34@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

unint64_t sub_1BD36EFC0()
{
  result = qword_1EBD3A700;
  if (!qword_1EBD3A700)
  {
    type metadata accessor for PhoneNumbers();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A700);
  }

  return result;
}

unint64_t sub_1BD36F060()
{
  result = qword_1EBD42FD0;
  if (!qword_1EBD42FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42FD0);
  }

  return result;
}

uint64_t _s11BillPaymentVMa()
{
  result = qword_1EBD42FD8;
  if (!qword_1EBD42FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD36F138()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD36F1CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD36F1CC()
{
  if (!qword_1EBD42FE8)
  {
    _s15PaymentDateInfoVMa();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD42FE8);
    }
  }
}

id sub_1BD36F228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 merchantName];
  if (result)
  {
    v5 = result;
    v6 = sub_1BE052434();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
    v9 = [a1 transactionAmount];
    v10 = [a1 currencyCode];
    v11 = PKFormattedCurrencyStringFromNumber();

    if (v11)
    {
      v12 = sub_1BE052434();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [a1 transactionAmount];
    v16 = [objc_opt_self() zero];
    v17 = v16;
    if (v15)
    {
      if (!v16)
      {

        goto LABEL_13;
      }

      sub_1BD1973C4();
      v18 = sub_1BE053074();

      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v16)
    {

LABEL_13:
      a2[2] = v12;
      a2[3] = v14;
      v19 = _s11BillPaymentVMa();
      return sub_1BD15F6A4(a1, a2 + *(v19 + 24));
    }

    v12 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

BOOL sub_1BD36F3C4(void *a1, void *a2)
{
  v4 = _s15PaymentDateInfoVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42FF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(_s11BillPaymentVMa() + 24);
  v20 = *(v13 + 48);
  sub_1BD36F6AC(a1 + v19, v16);
  sub_1BD36F6AC(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD45510);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1BD36F6AC(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1BD36F71C(v12);
LABEL_16:
    sub_1BD0DE53C(v16, &unk_1EBD42FF0);
    return 0;
  }

  sub_1BD160130(&v16[v20], v8);
  v23 = sub_1BD15FA30(v12, v8);
  sub_1BD36F71C(v8);
  sub_1BD36F71C(v12);
  sub_1BD0DE53C(v16, &qword_1EBD45510);
  return v23;
}

uint64_t sub_1BD36F6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD36F71C(uint64_t a1)
{
  v2 = _s15PaymentDateInfoVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static Color.peerPayment(_:)(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() clearColor];
  v3 = v1 >> 13;
  if (v1 >> 13 <= 1)
  {
LABEL_7:
    if (v3)
    {
LABEL_19:
      v7 = objc_opt_self();
      if ((v1 & 1) == 0)
      {
LABEL_31:
        v6 = [v7 secondaryButtonTextPressedColor];
        if (v6)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_33;
      }

      if ([v7 secondaryButtonTextColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_22;
    }

    v5 = objc_opt_self();
    if ((v1 & 1) == 0)
    {
LABEL_29:
      v7 = [v5 platterPressedColor];
      if (v7)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_31;
    }

    if ([v5 platterColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v3 == 2)
  {
LABEL_11:
    if ((v1 & 0x100) != 0)
    {
LABEL_22:
      v4 = [objc_opt_self() bubbleBackgroundWatchColor];
      if (v4)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_24;
    }

    v6 = objc_opt_self();
    if ((v1 & 1) == 0)
    {
LABEL_33:
      if ([v6 bubbleBackgroundColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_35;
    }

    if ([v6 bubbleBackgroundInvalidColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_15:
    if (v1 > 24831)
    {
      goto LABEL_26;
    }

    if (v1 != 24576)
    {
LABEL_35:
      if ([objc_opt_self() separatorColor])
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_37;
    }

    if ([objc_opt_self() backgroundColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_19;
  }

  v4 = objc_opt_self();
  if (v1 == 0x8000)
  {
    if ([v4 disabledTextColor])
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_24:
  if ([v4 primaryNavigationTintColor])
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_26:
  if (v1 == 24832)
  {
    v5 = [objc_opt_self() primaryTextColor];
    if (v5)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_37:
  result = [objc_opt_self() secondaryTextColor];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_38:

  return sub_1BE0511C4();
}

uint64_t _s16PeerPaymentColorOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 49156 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49156 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49156;
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

      return (*a1 | (v4 << 16)) - 49156;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49156;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v6 >= 0x3FFB)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *_s16PeerPaymentColorOwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1BD36FB84(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 13;
  v3 = (v1 & 1 | (4 * (v1 >> 13)) | (v1 >> 7) & 2) - 9;
  if (v2 <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_1BD36FBC0(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x101 | (a2 << 13);
  }

  else
  {
    *result = (((a2 - 3) << 7) & 0x100 | (a2 - 3) & 1 | (((a2 - 3) >> 2) << 13)) + 24576;
  }

  return result;
}

id sub_1BD36FC80(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___PKTileImagePreviewViewController_imageView;
  *&v1[OBJC_IVAR___PKTileImagePreviewViewController_imageView] = 0;
  v11 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  *&v1[OBJC_IVAR___PKTileImagePreviewViewController_scrollView] = 0;
  v12 = [a1 image];
  if (!v12)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v31 = a1;
  *&v1[OBJC_IVAR___PKTileImagePreviewViewController_image] = v12;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v13 = v12;
  v14 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
  [v14 setEdgesForExtendedLayout_];
  v15 = [v14 navigationItem];
  v16 = sub_1BE052404();

  [v15 setTitle_];

  [v15 _setPreferredNavigationBarVisibility_];
  (*(v5 + 104))(v9, *MEMORY[0x1E69B80D8], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    sub_1BE04B6F4();

    (*(v5 + 8))(v9, v4);
    v33 = ObjectType;
    v32[0] = v14;
    v19 = v14;
    v20 = sub_1BE052404();

    v21 = v33;
    if (v33)
    {
      v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v23 = *(v21 - 8);
      v24 = MEMORY[0x1EEE9AC00](v22, v22);
      v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = sub_1BE053B74();
      (*(v23 + 8))(v26, v21);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
      v27 = 0;
    }

    v28 = v31;
    v29 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v20 style:0 target:v27 action:sel_close];

    swift_unknownObjectRelease();
    [v15 setRightBarButtonItem_];

    return v19;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TileImagePreviewViewController.loadView()()
{
  v51.receiver = v0;
  v51.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v51, sel_loadView);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  v6 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  v7 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
  *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView] = v5;
  v8 = v5;

  if (!v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = [v0 view];
  if (!v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = *&v0[v6];
  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v19 setDelegate_];
  v20 = *&v0[v6];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v20 setMaximumZoomScale_];
  v21 = *&v0[v6];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v21 setMinimumZoomScale_];
  v22 = *&v0[v6];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v22 setBouncesZoom_];
  v23 = *&v0[v6];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v3 clearColor];
  [v24 setBackgroundColor_];

  v26 = *&v0[v6];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v28 = v0;
  v29 = v26;
  v30 = [v27 initWithTarget:v28 action:sel_tapped_];
  [v29 addGestureRecognizer_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DCFC8]) initWithTarget:v28 action:sel_swiped_];
  [v31 setDirection_];
  v32 = *&v0[v6];
  if (!v32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v32 addGestureRecognizer_];
  v33 = *&v0[v6];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = *&v28[OBJC_IVAR___PKTileImagePreviewViewController_image];
  [v33 bounds];
  [v34 pkui:v35 alignmentSizeThatFits:v36];
  v37 = *&v0[v6];
  if (!v37)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v37 bounds];
  PKSizeAlignedInRect();
  v42 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v43 = OBJC_IVAR___PKTileImagePreviewViewController_imageView;
  v44 = *&v28[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  *&v28[OBJC_IVAR___PKTileImagePreviewViewController_imageView] = v42;
  v45 = v42;

  if (!v45)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v45 setImage_];

  v46 = *&v28[v43];
  if (!v46)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v46 setAutoresizingMask_];
  v47 = *&v28[v43];
  if (!v47)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v47 setContentMode_];
  v48 = *&v0[v6];
  if (!v48)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!*&v28[v43])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v48 addSubview_];
  v49 = [v28 view];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (*&v0[v6])
  {
    v50 = v49;
    [v49 addSubview_];

    return;
  }

LABEL_39:
  __break(1u);
}

Swift::Void __swiftcall TileImagePreviewViewController.scrollViewDidZoom(_:)(UIScrollView *a1)
{
  [(UIScrollView *)a1 zoomScale];
  v3 = v2;
  v4 = [v1 navigationController];
  if (v3 < 1.0)
  {
    if (v4)
    {
      v8 = v4;
      [v4 setNavigationBarHidden:1 animated:1];
    }

    v5 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
    v6 = *&v1[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
    if (v6)
    {
      [v6 removeAllGestureRecognizers];
      v7 = *&v1[v5];
      if (v7)
      {
        [v7 setUserInteractionEnabled_];

        [v1 dismissViewControllerAnimated:1 completion:0];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v4)
  {
    v9 = v4;
    if (([v4 isNavigationBarHidden] & 1) == 0)
    {
      [v9 setNavigationBarHidden:1 animated:1];
    }
  }
}

id sub_1BD370B6C()
{
  v1 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1BD370C20()
{
  v8 = [v0 containerView];
  if (v8)
  {
    v1 = sub_1BD370B6C();
    [v8 bounds];
    [v1 setFrame_];

    v2 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView;
    [*&v0[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] setAlpha_];
    [v8 addSubview_];
    v3 = [v0 presentingViewController];
    v4 = [v3 transitionCoordinator];

    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      aBlock[4] = sub_1BD372364;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD370DE8;
      aBlock[3] = &block_descriptor_46_1;
      v6 = _Block_copy(aBlock);
      v7 = v0;

      [v4 animateAlongsideTransition:v6 completion:0];
      _Block_release(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD370DE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1BE048964();
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1BD370EF4()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = sub_1BD370B6C();
    v4 = [*&v0[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF944ImagePreviewScaleModalPresentationController____lazy_storage___backgroundView] superview];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v7 = 0.0;
      v9 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
    }

    [v3 setFrame_];

    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v17[4] = sub_1BD37235C;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1BD370DE8;
    v17[3] = &block_descriptor_40_0;
    v15 = _Block_copy(v17);
    v16 = v0;

    [v2 animateAlongsideTransition:v15 completion:0];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }
}

void sub_1BD3711E8(id a1)
{
  if (*(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting) == 1)
  {
    v8 = [a1 viewControllerForKey_];
    if (v8)
    {
      v3 = [a1 containerView];
      v4 = [v8 view];
      if (v4)
      {
        v5 = v4;
        [v3 insertSubview:v4 atIndex:1];

        v6 = [v8 view];
        if (v6)
        {
          v7 = v6;
          [v6 layoutIfNeeded];

          sub_1BD371370(a1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    [a1 completeTransition_];
  }

  else
  {

    sub_1BD371648(a1);
  }
}

void sub_1BD371370(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v5 = v4;

  if (v4)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = [v6 view];

    if (v7)
    {
      [v7 bounds];
      v9 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize) / v8;
      v10 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8) / (*(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8) / v9);
      v11 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter);
      v12 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter + 8);
      v13 = v5;
      [v7 layoutMargins];
      [v13 pkui:0 setPosition:v11 animated:v12 - v10 * v14];
      CGAffineTransformMakeScale(&v22, v9, v10);
      [v13 setTransform_];

      [v13 pkui:3 setMaskType:?];
    }

    v15 = objc_opt_self();
    v16 = *(v1 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory);
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *&v22.tx = sub_1BD3722F0;
    *&v22.ty = v17;
    *&v22.a = MEMORY[0x1E69E9820];
    *&v22.b = 1107296256;
    *&v22.c = sub_1BD126964;
    *&v22.d = &block_descriptor_69;
    v18 = _Block_copy(&v22);
    v19 = v5;

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *&v22.tx = sub_1BD3727AC;
    *&v22.ty = v20;
    *&v22.a = MEMORY[0x1E69E9820];
    *&v22.b = 1107296256;
    *&v22.c = sub_1BD3F08C0;
    *&v22.d = &block_descriptor_22_0;
    v21 = _Block_copy(&v22);
    swift_unknownObjectRetain();

    [v15 pkui:v16 animateUsingFactory:0 withDelay:v18 options:v21 animations:0.0 completion:?];

    _Block_release(v21);
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD371648(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v5 = v4;

  if (v4)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = [v6 view];

    if (v7)
    {
      v8 = v5;
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v8 superview];
      [v7 convertRect:v17 fromView:{v10, v12, v14, v16}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v8 setFrame_];
      v26 = [v8 image];
      if (v26)
      {
        v27 = v26;
        [v26 size];
        [v27 size];
        [v8 frame];
        [v8 frame];
        [v8 frame];
        PKSizeAlignedInRect();
        [v8 setFrame_];
      }

      [v7 addSubview_];
      [v7 bounds];
      CGAffineTransformMakeScale(&aBlock, *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize] / v28, *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8] / (*&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize + 8] / (*&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize] / v28)));
      v39 = *&aBlock.a;
      v40 = *&aBlock.c;
      tx = aBlock.tx;
      ty = aBlock.ty;
    }

    else
    {
      v40 = xmmword_1BE0CF250;
      v39 = xmmword_1BE0CF260;
      tx = 0.0;
      ty = 0.0;
    }

    v31 = objc_opt_self();
    v32 = *&v1[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory];
    v33 = swift_allocObject();
    *(v33 + 16) = v5;
    *(v33 + 40) = v40;
    *(v33 + 24) = v39;
    *(v33 + 56) = tx;
    *(v33 + 64) = ty;
    *(v33 + 72) = v1;
    *&aBlock.tx = sub_1BD3722F8;
    *&aBlock.ty = v33;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1BD126964;
    *&aBlock.d = &block_descriptor_28_1;
    v34 = _Block_copy(&aBlock);
    v35 = v5;
    v36 = v1;

    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *&aBlock.tx = sub_1BD372308;
    *&aBlock.ty = v37;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1BD3F08C0;
    *&aBlock.d = &block_descriptor_34;
    v38 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v31 pkui:v32 animateUsingFactory:0 withDelay:v34 options:v38 animations:0.0 completion:?];

    _Block_release(v38);
    _Block_release(v34);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD371AA8(void *a1)
{
  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [a1 setTransform_];
  v2 = [a1 superview];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  [a1 setFrame_];
  return [a1 pkui:0 setMaskType:?];
}

id sub_1BD371B88(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  [a1 setTransform_];
  [a1 setCenter_];
  return [a1 pkui:3 setMaskType:?];
}

id TileImagePreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void _s9PassKitUI30TileImagePreviewViewControllerC7present05imageG05title10presentingySo07UIImageG0C_SSSo06UIViewH0CtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_allocWithZone(type metadata accessor for TileImagePreviewViewController());
  sub_1BE048C84();
  v8 = a1;
  v9 = sub_1BD36FC80(v8);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
    [v11 setModalPresentationStyle_];
    v12 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalTransitionController();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize];
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = 1;
    swift_unknownObjectUnownedInit();
    *&v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_sourceImageView] = v8;
    v16 = &v13[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_title];
    *v16 = a2;
    *(v16 + 1) = a3;
    v31.receiver = v13;
    v31.super_class = v12;
    sub_1BE048C84();
    v17 = v8;
    v18 = objc_msgSendSuper2(&v31, sel_init);
    [v11 setTransitioningDelegate_];

    v19 = v11;
    v20 = [v19 navigationBar];
    v21 = objc_opt_self();
    v22 = [v21 blackColor];
    [v20 setBarTintColor_];

    v23 = [v19 navigationBar];
    v24 = [v21 whiteColor];
    [v23 setTintColor_];

    v25 = [v19 navigationBar];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v27 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v28 = v27;
    v29 = [v21 whiteColor];
    *(inited + 64) = sub_1BD1F2290();
    *(inited + 40) = v29;
    sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v30 = sub_1BE052224();

    [v25 setTitleTextAttributes_];

    [a4 presentViewController:v19 animated:1 completion:0];
  }
}

id sub_1BD372104()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setNavigationBarHidden:1 animated:1];
  }

  v3 = OBJC_IVAR___PKTileImagePreviewViewController_scrollView;
  result = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_scrollView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  [result removeAllGestureRecognizers];
  result = *&v0[v3];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [result setUserInteractionEnabled_];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t _s9PassKitUI30TileImagePreviewViewControllerC14viewForZooming2inSo6UIViewCSgSo08UIScrollG0C_tF_0()
{
  if ([v0 isBeingDismissed])
  {
    return 0;
  }

  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isBeingDismissed];

    if (v3)
    {
      return 0;
    }
  }

  v4 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  if (!v4)
  {
    return 0;
  }

  v5 = *&v0[OBJC_IVAR___PKTileImagePreviewViewController_imageView];
  v6 = v4;
  return v5;
}

id sub_1BD37230C()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition_];
}

void sub_1BD37236C(double a1)
{
  v2 = sub_1BD370B6C();
  [v2 setAlpha_];
}

uint64_t sub_1BD3723CC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_sourceImageView);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 center];
    [v3 convertPoint:0 toView:?];
    v23 = v4;
    v24 = v5;

    *&v6 = v23;
    *(&v6 + 1) = v24;
  }

  else
  {
    v6 = 0uLL;
  }

  v7 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter);
  *v7 = v6;
  *(v7 + 16) = 0;
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v12 = v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize;
  *v12 = v8;
  *(v12 + 8) = v10;
  *(v12 + 16) = 0;
  result = swift_unknownObjectUnownedLoadStrong();
  if (v7[2])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v16 = *v7;
    v15 = v7[1];
    v17 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalAnimationAnimatedTransitioninHandler();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory;
    *&v18[v19] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
    swift_unknownObjectUnownedInit();
    v20 = &v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter];
    *v20 = v16;
    v20[1] = v15;
    v21 = &v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize];
    *v21 = v9;
    v21[1] = v11;
    v18[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting] = 1;
    v25.receiver = v18;
    v25.super_class = v17;
    v22 = objc_msgSendSuper2(&v25, sel_init);

    return v22;
  }

  return result;
}

uint64_t sub_1BD372588()
{
  result = swift_unknownObjectUnownedLoadStrong();
  v2 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter);
  if (*(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalCenter + 16))
  {
    __break(1u);
  }

  else
  {
    v3 = (v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize);
    if ((*(v0 + OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF942ImagePreviewScaleModalTransitionController_originalSize + 16) & 1) == 0)
    {
      v4 = result;
      v6 = *v3;
      v5 = v3[1];
      v8 = *v2;
      v7 = v2[1];
      v9 = type metadata accessor for TileImagePreviewViewController.ImagePreviewScaleModalAnimationAnimatedTransitioninHandler();
      v10 = objc_allocWithZone(v9);
      v11 = OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_springFactory;
      *&v10[v11] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
      swift_unknownObjectUnownedInit();
      v12 = &v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalCenter];
      *v12 = v8;
      v12[1] = v7;
      v13 = &v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_originalSize];
      *v13 = v6;
      v13[1] = v5;
      v10[OBJC_IVAR____TtCC9PassKitUI30TileImagePreviewViewControllerP33_C6DB725DC789A0DB9606D336BF0F8DF958ImagePreviewScaleModalAnimationAnimatedTransitioninHandler_isPresenting] = 0;
      v15.receiver = v10;
      v15.super_class = v9;
      v14 = objc_msgSendSuper2(&v15, sel_init);

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3726C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD372728()
{
  result = qword_1EBD37B80;
  if (!qword_1EBD37B80)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD37B80);
  }

  return result;
}

uint64_t sub_1BD3727C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3729B8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD372824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3729B8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD372888()
{
  sub_1BD3729B8();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD3728B4()
{
  result = qword_1EBD43108;
  if (!qword_1EBD43108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43108);
  }

  return result;
}

unint64_t sub_1BD37290C()
{
  result = qword_1EBD43110;
  if (!qword_1EBD43110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43110);
  }

  return result;
}

unint64_t sub_1BD372964()
{
  result = qword_1EBD43118;
  if (!qword_1EBD43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43118);
  }

  return result;
}

unint64_t sub_1BD3729B8()
{
  result = qword_1EBD43120;
  if (!qword_1EBD43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43120);
  }

  return result;
}

uint64_t sub_1BD372A38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v140 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v137 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43138);
  MEMORY[0x1EEE9AC00](v9, v10);
  v138 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v143 = (&v120 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43140);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v120 - v18;
  v132 = sub_1BE051994();
  v20 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v21);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43148);
  MEMORY[0x1EEE9AC00](v128, v23);
  v25 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v129 = &v120 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v134 = &v120 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43150);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v133 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v131 = &v120 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43158);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v136 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v141 = a1;
  v142 = &v120 - v44;
  v45 = a1[2];
  v135 = a1[3];
  v46 = a1[7];
  if (v46)
  {
    *&v151 = v141[6];
    *(&v151 + 1) = v46;
    sub_1BD0DDEBC();
    v123 = v25;
    sub_1BE048C84();
    v47 = sub_1BE0506C4();
    v49 = v48;
    v127 = v9;
    v51 = v50;
    v125 = v15;
    sub_1BE0502A4();
    v124 = v16;
    v52 = sub_1BE0505F4();
    v121 = v20;
    v122 = v19;
    v54 = v53;
    v126 = v45;
    v56 = v55;

    sub_1BD0DDF10(v47, v49, v51 & 1);

    sub_1BE051234();
    v57 = sub_1BE050564();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_1BD0DDF10(v52, v54, v56 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v52) = sub_1BE050224();
    sub_1BE04E1F4();
    v145 = v61 & 1;
    v144 = 0;
    *&v151 = v57;
    *(&v151 + 1) = v59;
    LOBYTE(v152) = v61 & 1;
    *(&v152 + 1) = v63;
    *&v153 = KeyPath;
    BYTE8(v153) = 0;
    LOBYTE(v154) = v52;
    *(&v154 + 1) = v65;
    *v155 = v66;
    *&v155[8] = v67;
    *&v155[16] = v68;
    v155[24] = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43170);
    sub_1BD373AC4();
    v69 = v131;
    sub_1BE050DE4();

    v148 = v153;
    v149 = v154;
    v150[0] = *v155;
    *(v150 + 9) = *&v155[9];
    v146 = v151;
    v147 = v152;
    sub_1BD0DE53C(&v146, &qword_1EBD43170);
    v70 = v130;
    sub_1BE051984();
    sub_1BE051CE4();
    sub_1BE04EE54();
    v71 = v129;
    (*(v121 + 32))(v129, v70, v132);
    v72 = &v71[*(v128 + 36)];
    v73 = *&v155[16];
    *(v72 + 4) = *v155;
    *(v72 + 5) = v73;
    *(v72 + 6) = v156;
    v74 = v152;
    *v72 = v151;
    *(v72 + 1) = v74;
    v75 = v154;
    *(v72 + 2) = v153;
    *(v72 + 3) = v75;
    v76 = v71;
    v77 = v134;
    sub_1BD0DE204(v76, v134, &qword_1EBD43148);
    v78 = v133;
    sub_1BD0DE19C(v69, v133, &qword_1EBD43150);
    v79 = v123;
    sub_1BD0DE19C(v77, v123, &qword_1EBD43148);
    v80 = v122;
    sub_1BD0DE19C(v78, v122, &qword_1EBD43150);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43180);
    sub_1BD0DE19C(v79, v80 + *(v81 + 48), &qword_1EBD43148);
    sub_1BD0DE53C(v77, &qword_1EBD43148);
    sub_1BD0DE53C(v69, &qword_1EBD43150);
    v9 = v127;
    sub_1BD0DE53C(v79, &qword_1EBD43148);
    v45 = v126;
    sub_1BD0DE53C(v78, &qword_1EBD43150);
    v82 = v142;
    sub_1BD0DE204(v80, v142, &qword_1EBD43140);
    (*(v124 + 56))(v82, 0, 1, v125);
  }

  else
  {
    (*(v16 + 56))(v142, 1, 1, v15, v43);
  }

  v83 = sub_1BE04F504();
  v84 = v143;
  *v143 = v83;
  v84[1] = 0;
  *(v84 + 16) = 1;
  v85 = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43160);
  v87 = v85;
  sub_1BD37354C(v141, v85 + *(v86 + 44));
  LOBYTE(v85) = sub_1BE050224();
  sub_1BE04E1F4();
  v88 = v87 + *(v9 + 36);
  *v88 = v85;
  *(v88 + 8) = v89;
  *(v88 + 16) = v90;
  *(v88 + 24) = v91;
  *(v88 + 32) = v92;
  *(v88 + 40) = 0;
  *&v146 = v45;
  *(&v146 + 1) = v135;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v93 = sub_1BE0506C4();
  v95 = v94;
  v97 = v96;
  sub_1BE050454();
  v98 = sub_1BE0505F4();
  v100 = v99;
  v102 = v101;

  sub_1BD0DDF10(v93, v95, v97 & 1);

  sub_1BE051234();
  v103 = sub_1BE050564();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v141 = v108;

  sub_1BD0DDF10(v98, v100, v102 & 1);

  v110 = swift_getKeyPath();
  *&v146 = v103;
  *(&v146 + 1) = v105;
  v107 &= 1u;
  LOBYTE(v147) = v107;
  *(&v147 + 1) = v109;
  *&v148 = v110;
  BYTE8(v148) = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
  sub_1BD0FF49C();
  v111 = v137;
  sub_1BE050DE4();

  sub_1BD0DDF10(v103, v105, v107);

  v112 = v142;
  v113 = v136;
  sub_1BD0DE19C(v142, v136, &qword_1EBD43158);
  v114 = v143;
  v115 = v138;
  sub_1BD0DE19C(v143, v138, &qword_1EBD43138);
  v116 = v140;
  sub_1BD0DE19C(v111, v140, &qword_1EBD3E930);
  v117 = v139;
  sub_1BD0DE19C(v113, v139, &qword_1EBD43158);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43168);
  sub_1BD0DE19C(v115, v117 + *(v118 + 48), &qword_1EBD43138);
  sub_1BD0DE19C(v116, v117 + *(v118 + 64), &qword_1EBD3E930);
  sub_1BD0DE53C(v111, &qword_1EBD3E930);
  sub_1BD0DE53C(v114, &qword_1EBD43138);
  sub_1BD0DE53C(v112, &qword_1EBD43158);
  sub_1BD0DE53C(v116, &qword_1EBD3E930);
  sub_1BD0DE53C(v115, &qword_1EBD43138);
  return sub_1BD0DE53C(v113, &qword_1EBD43158);
}

uint64_t sub_1BD37354C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v63 = v59 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = v59 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[4];
  v60 = a1[5];
  v61 = v17;
  v67 = v15;
  v68 = v16;
  v59[1] = sub_1BD0DDEBC();
  sub_1BE048C84();
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  sub_1BE050324();
  v23 = sub_1BE0505F4();
  v25 = v24;
  v27 = v26;

  sub_1BD0DDF10(v18, v20, v22 & 1);

  sub_1BE051224();
  v28 = sub_1BE050564();
  v30 = v29;
  LOBYTE(v20) = v31;
  v33 = v32;

  sub_1BD0DDF10(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v67 = v28;
  v68 = v30;
  v69 = v20 & 1;
  v70 = v33;
  v71 = KeyPath;
  v72 = 0;
  sub_1BE052434();
  v59[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
  sub_1BD0FF49C();
  sub_1BE050DE4();

  sub_1BD0DDF10(v28, v30, v20 & 1);

  v67 = v61;
  v68 = v60;
  sub_1BE048C84();
  v35 = sub_1BE0506C4();
  v37 = v36;
  LOBYTE(v28) = v38;
  sub_1BE050324();
  v39 = sub_1BE0505F4();
  v41 = v40;
  v43 = v42;

  sub_1BD0DDF10(v35, v37, v28 & 1);

  sub_1BE051224();
  v44 = sub_1BE050564();
  v46 = v45;
  LOBYTE(v23) = v47;
  v49 = v48;

  sub_1BD0DDF10(v39, v41, v43 & 1);

  v50 = swift_getKeyPath();
  v67 = v44;
  v68 = v46;
  LOBYTE(v23) = v23 & 1;
  v69 = v23;
  v70 = v49;
  v71 = v50;
  v72 = 2;
  sub_1BE052434();
  v51 = v62;
  sub_1BE050DE4();

  sub_1BD0DDF10(v44, v46, v23);

  v52 = v66;
  v53 = v63;
  sub_1BD0DE19C(v66, v63, &qword_1EBD3E930);
  v54 = v64;
  sub_1BD0DE19C(v51, v64, &qword_1EBD3E930);
  v55 = v65;
  sub_1BD0DE19C(v53, v65, &qword_1EBD3E930);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43188);
  v57 = v55 + *(v56 + 48);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_1BD0DE19C(v54, v55 + *(v56 + 64), &qword_1EBD3E930);
  sub_1BD0DE53C(v51, &qword_1EBD3E930);
  sub_1BD0DE53C(v52, &qword_1EBD3E930);
  sub_1BD0DE53C(v54, &qword_1EBD3E930);
  return sub_1BD0DE53C(v53, &qword_1EBD3E930);
}

uint64_t sub_1BD3739FC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v4 = v1[3];
  v17[2] = v1[2];
  v17[3] = v4;
  *a1 = sub_1BE04F7C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43128);
  sub_1BD372A38(v17, a1 + *(v5 + 44));
  v6 = sub_1BE050234();
  sub_1BE04E1F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43130);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_1BD373AC4()
{
  result = qword_1EBD43178;
  if (!qword_1EBD43178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43170);
    sub_1BD0FF49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43178);
  }

  return result;
}

unint64_t sub_1BD373B50()
{
  result = qword_1EBD43190;
  if (!qword_1EBD43190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43130);
    sub_1BD0DE4F4(&qword_1EBD43198, &qword_1EBD431A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43190);
  }

  return result;
}

char *sub_1BD373C08(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v8 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v2[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_context] = a1;
  v47.receiver = v2;
  v47.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  v10 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
    v12 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider];
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 separatorColor];
    [v14 setBackgroundColor_];

    [v10 addSubview_];
  }

  v16 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  [*&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView] setContentMode_];
  [*&v10[v16] setUserInteractionEnabled_];
  [v10 addSubview_];
  v17 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  [v17 setContactType_];
  v18 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  v19 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B7020;
  *(v20 + 32) = v17;
  sub_1BD0E8CBC();
  v21 = v19;
  v46 = v17;
  v22 = sub_1BE052724();

  [v21 setContacts_];

  v23 = [*&v10[v18] view];
  [v10 addSubview_];

  v24 = a2;
  sub_1BD374824(a2);
  v25 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  v26 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel];
  sub_1BD42DD88(a1);
  v27 = sub_1BE052404();

  [v26 setText_];

  v28 = *&v10[v25];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 secondaryLabelColor];
  [v30 setTextColor_];

  v32 = *&v10[v25];
  v33 = objc_opt_self();
  v34 = *MEMORY[0x1E69DDD08];
  v35 = v32;
  v36 = [v33 preferredFontForTextStyle_];
  [v35 setFont_];

  [*&v10[v25] setNumberOfLines_];
  [*&v10[v25] setAccessibilityIdentifier_];
  [v10 addSubview_];
  v37 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  v38 = *&v10[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v39 = [v24 displayName];
  if (!v39)
  {
    sub_1BE052434();
    v39 = sub_1BE052404();
  }

  [v38 setText_];

  v40 = *MEMORY[0x1E69DDD80];
  v41 = *MEMORY[0x1E69DDC20];
  v42 = *MEMORY[0x1E69DB980];
  v43 = *&v10[v37];
  v44 = PKFontForDefaultDesign(v40, v41, v42);
  [v43 setFont_];

  [*&v10[v37] setNumberOfLines_];
  [*&v10[v37] setAccessibilityIdentifier_];
  [v10 addSubview_];
  [v10 setAccessibilityIdentifier_];

  return v10;
}

id sub_1BD374178()
{
  v38 = *MEMORY[0x1E69E9840];
  v37.receiver = v0;
  v37.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider];
    [v0 bounds];
    Width = CGRectGetWidth(v39);
    [v1 setFrame_];
  }

  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v40, &slice, &remainder, 16.0, CGRectMinXEdge);
  v41 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v41, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v42 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v42, &slice, &remainder, 8.0, CGRectMinYEdge);
  v43 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v43, &slice, &remainder, 8.0, CGRectMaxYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  v5 = remainder.size.width;
  height = remainder.size.height;
  v7 = [v0 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_1BE052E84();
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [*&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView] setFrame_];
  v17 = [*&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController] view];
  [v17 setFrame_];

  v44.origin.x = v10;
  v44.origin.y = v12;
  v44.size.width = v14;
  v44.size.height = v16;
  v18 = CGRectGetWidth(v44) + 10.0;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = v5;
  v45.size.height = height;
  CGRectDivide(v45, &slice, &remainder, v18, CGRectMinXEdge);
  v19 = remainder.origin.x;
  v20 = remainder.origin.y;
  v21 = remainder.size.width;
  v22 = remainder.size.height;
  v23 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel];
  [v23 sizeThatFits_];
  v25 = v24;
  v26 = *&v0[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v46.origin.x = v19;
  v46.origin.y = v20;
  v46.size.width = v21;
  v46.size.height = v22;
  v27 = CGRectGetWidth(v46);
  v47.origin.x = v19;
  v47.origin.y = v20;
  v47.size.width = v21;
  v47.size.height = v22;
  [v26 sizeThatFits_];
  memset(&slice, 0, sizeof(slice));
  if ((v22 - (v25 + v28)) * 0.5 > 0.0)
  {
    v29 = (v22 - (v25 + v28)) * 0.5;
  }

  else
  {
    v29 = 0.0;
  }

  memset(&remainder, 0, sizeof(remainder));
  v48.origin.x = v19;
  v48.origin.y = v20;
  v48.size.width = v21;
  v48.size.height = v22;
  CGRectDivide(v48, &slice, &remainder, v29, CGRectMinYEdge);
  v49 = remainder;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v49, &slice, &remainder, v29, CGRectMaxYEdge);
  v30 = remainder.origin.x;
  v31 = remainder.origin.y;
  v32 = remainder.size.width;
  v33 = remainder.size.height;
  PKSizeAlignedInRect();
  [v23 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v50.origin.x = v30;
  v50.origin.y = v31;
  v50.size.width = v32;
  v50.size.height = v33;
  CGRectDivide(v50, &slice, &remainder, v25, CGRectMinYEdge);
  PKSizeAlignedInRect();
  return [v26 setFrame_];
}

double sub_1BD374624(double a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1BE052E84();
  v5 = 50.0;
  if (v3)
  {
    v5 = 70.0;
  }

  v6 = a1 + -32.0 - v5;
  [*&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel] sizeThatFits_];
  [*&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel] sizeThatFits_];
  return a1;
}

id sub_1BD374780(void *a1)
{
  sub_1BD374824(a1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel];
  v4 = [a1 displayName];
  if (!v4)
  {
    sub_1BE052434();
    v4 = sub_1BE052404();
  }

  [v3 setText_];

  return [v1 setNeedsLayout];
}

id sub_1BD374824(void *a1)
{
  v2 = [a1 imageData];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BE04AAC4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1BD041A38(v4, v6);
    v8 = sub_1BE04AAB4();
    v9 = [v7 initWithData_];

    sub_1BD1245AC(v4, v6);
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView);
      [v10 setImage_];
      [v10 setHidden_];
      v11 = [*(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController) view];
      [v11 setHidden_];

      return sub_1BD1245AC(v4, v6);
    }

    sub_1BD1245AC(v4, v6);
  }

  v13 = [*(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController) view];
  [v13 setHidden_];

  v14 = *(v1 + OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView);

  return [v14 setHidden_];
}

id NearbyPeerPaymentAppearAsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentAppearAsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentAppearAsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD374B94()
{
  v1 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_divider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_avatarController;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E695D0C8]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_appearAsLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC9PassKitUI29NearbyPeerPaymentAppearAsView_nameLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD374C98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BD374CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD374D60@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431D8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39[-v5];
  *&v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431E0);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v39[-v8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431E8);
  MEMORY[0x1EEE9AC00](v41, v10);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39[-v18];
  v20 = *(v1 + 48);
  *&v44 = *(v1 + 40);
  *(&v44 + 1) = v20;
  sub_1BE048964();
  v40 = sub_1BE051C54();
  v43 = sub_1BE0501D4();
  *v6 = sub_1BE04F7B4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431F0);
  sub_1BD3751FC(v1, &v6[*(v21 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v23 = sub_1BE0501C4();
  *(inited + 32) = v23;
  v24 = sub_1BE0501F4();
  *(inited + 33) = v24;
  v25 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v23)
  {
    v25 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v24)
  {
    v25 = sub_1BE050214();
  }

  if (v40)
  {
    v26 = 10.0;
  }

  else
  {
    v26 = 18.0;
  }

  sub_1BD0DE204(v6, v9, &qword_1EBD431D8);
  v9[*(v42 + 36)] = v25;
  KeyPath = swift_getKeyPath();
  sub_1BD0DE204(v9, v15, &qword_1EBD431E0);
  v28 = &v15[*(v41 + 36)];
  *v28 = KeyPath;
  v28[8] = 1;
  sub_1BD0DE204(v15, v19, &qword_1EBD431E8);
  v29 = v45;
  sub_1BD0DE19C(v19, v45, &qword_1EBD431E8);
  v46[0] = 0;
  v46[1] = 0;
  strcpy(&v47, "ApplePayLogo");
  BYTE13(v47) = 0;
  HIWORD(v47) = -5120;
  v30 = v44;
  v48 = v44;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = PKEdgeInsetsMake;
  *&v50 = 0;
  *(&v50 + 1) = 0x4032000000000000;
  *v51 = v26;
  v42 = xmmword_1BE0B7110;
  *(v51 + 8) = xmmword_1BE0B7110;
  v31 = v19;
  v32 = v43;
  BYTE8(v51[1]) = v43;
  v33 = v47;
  *a1 = 0u;
  a1[1] = v33;
  v34 = v48;
  v35 = v49;
  *(a1 + 89) = *(v51 + 9);
  v36 = v51[0];
  a1[4] = v50;
  a1[5] = v36;
  a1[2] = v34;
  a1[3] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD431F8);
  sub_1BD0DE19C(v29, a1 + *(v37 + 48), &qword_1EBD431E8);
  sub_1BD0DE19C(v46, v52, &qword_1EBD43200);
  sub_1BD0DE53C(v31, &qword_1EBD431E8);
  sub_1BD0DE53C(v29, &qword_1EBD431E8);
  v52[0] = 0;
  v52[1] = 0;
  strcpy(v53, "ApplePayLogo");
  HIBYTE(v53[6]) = 0;
  v53[7] = -5120;
  v54 = v30;
  v55 = 0;
  v56 = PKEdgeInsetsMake;
  v57 = 0;
  v58 = 0x4032000000000000;
  v59 = v26;
  v60 = v42;
  v61 = v32;
  return sub_1BD0DE53C(v52, &qword_1EBD43200);
}

id sub_1BD3751FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43208);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  sub_1BD375654(a1, &v41 - v14);
  v16 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v17 = &v15[*(v8 + 36)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80E0], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v42 = sub_1BE04B6F4();
    v44 = v24;

    (*(v4 + 8))(v7, v3);
    v25 = *(a1 + 32);
    v43 = *(a1 + 24);
    if (qword_1EBD36ED8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBDAB648;
    v27 = qword_1EBD36EE0;
    sub_1BE048964();
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBDAB650;
    sub_1BE048964();
    sub_1BE048964();
    v29 = sub_1BE0501F4();
    v41 = v25;
    v30 = v29;
    sub_1BD0DE19C(v15, v11, &qword_1EBD43208);
    v31 = v45;
    sub_1BD0DE19C(v11, v45, &qword_1EBD43208);
    v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43210) + 48);
    v34 = v42;
    v33 = v43;
    v35 = v15;
    v36 = v44;
    *&v46 = v42;
    *(&v46 + 1) = v44;
    *&v47 = v26;
    *(&v47 + 1) = v28;
    LOWORD(v48) = 0;
    *(&v48 + 2) = v64;
    WORD3(v48) = v65;
    *(&v48 + 1) = v43;
    *&v49[0] = v25;
    *(v49 + 8) = 0u;
    *(&v49[1] + 8) = 0u;
    *(&v49[2] + 8) = 0u;
    *(&v49[3] + 8) = 0u;
    *(&v49[4] + 8) = 0u;
    *(&v49[5] + 1) = 0;
    v50 = v30;
    *(v32 + 144) = v30;
    v37 = v49[4];
    *(v32 + 96) = v49[3];
    *(v32 + 112) = v37;
    *(v32 + 128) = v49[5];
    v38 = v49[0];
    *(v32 + 32) = v48;
    *(v32 + 48) = v38;
    v39 = v49[2];
    *(v32 + 64) = v49[1];
    *(v32 + 80) = v39;
    v40 = v47;
    *v32 = v46;
    *(v32 + 16) = v40;
    sub_1BD0DE19C(&v46, v51, &qword_1EBD43218);
    sub_1BD0DE53C(v35, &qword_1EBD43208);
    v51[0] = v34;
    v51[1] = v36;
    v51[2] = v26;
    v51[3] = v28;
    v52 = 0;
    v53 = v64;
    v54 = v65;
    v55 = v33;
    v56 = v41;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v63 = v30;
    sub_1BD0DE53C(v51, &qword_1EBD43218);
    return sub_1BD0DE53C(v11, &qword_1EBD43208);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD375654@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43220);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26[-v10];
  sub_1BD375804(a1, &v26[-v10]);
  if (PKSavingsFDICSignageEnabled())
  {
    v12 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v26[8] = 0;
    v21 = v12;
    v22 = 1;
    v23 = 5;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v14 = 0;
    v22 = 2;
    v16 = 0;
    v18 = 0;
    v20 = 0;
  }

  sub_1BD0DE19C(v11, v7, &qword_1EBD43220);
  sub_1BD0DE19C(v7, a2, &qword_1EBD43220);
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43228) + 48);
  *v24 = v23;
  *(v24 + 8) = v22;
  *(v24 + 16) = v21;
  *(v24 + 24) = v14;
  *(v24 + 32) = v16;
  *(v24 + 40) = v18;
  *(v24 + 48) = v20;
  *(v24 + 56) = 0;
  sub_1BD0DE53C(v11, &qword_1EBD43220);
  return sub_1BD0DE53C(v7, &qword_1EBD43220);
}

uint64_t sub_1BD375804@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v94 = sub_1BE04FA44();
  v93 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94, v4);
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43230);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v6);
  v86 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43238);
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v100 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v99 = &v81 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v84, v14);
  v16 = &v81 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43240);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v17);
  v88 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v81 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v98 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v81 - v29;
  v31 = type metadata accessor for PassImage(0);
  v32 = *a1;
  *&v30[v31[6]] = *a1;
  type metadata accessor for WrappedPass(0);
  swift_storeEnumTagMultiPayload();
  v33 = v32;
  PKPassFrontFaceContentSize();
  *(v30 + 3) = 0x4064400000000000;
  *(v30 + 4) = v35 / v34 * 162.0;
  *v30 = sub_1BD70C870;
  *(v30 + 1) = 0;
  v30[16] = 0;
  v30[v31[7]] = 0;
  *&v30[v31[8]] = 887;
  LOBYTE(v31) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v36 = *(v24 + 44);
  v97 = v30;
  v37 = &v30[v36];
  *v37 = v31;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v85 = a1;
  sub_1BD3761C0();
  *&v105[0] = v42;
  *(&v105[0] + 1) = v43;
  sub_1BD0DDEBC();
  v44 = sub_1BE0506C4();
  v46 = v45;
  LOBYTE(v32) = v47;
  v49 = v48;
  LOBYTE(v30) = sub_1BE0501F4();
  sub_1BE04E1F4();
  LOBYTE(v105[0]) = v32 & 1;
  *&v101 = v44;
  *(&v101 + 1) = v46;
  LOBYTE(v102) = v32 & 1;
  *(&v102 + 1) = v49;
  LOBYTE(v103) = v30;
  *(&v103 + 1) = v50;
  *v104 = v51;
  *&v104[8] = v52;
  *&v104[16] = v53;
  v104[24] = 0;
  *&v104[25] = 256;
  v54 = *MEMORY[0x1E697E6D0];
  v55 = sub_1BE04EB24();
  (*(*(v55 - 8) + 104))(v16, v54, v55);
  sub_1BD3768A8();
  result = sub_1BE052334();
  if (result)
  {
    v82 = v8;
    v83 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43248);
    sub_1BD376900();
    v57 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v96 = v22;
    v58 = v84;
    sub_1BE050B34();
    sub_1BD0DE53C(v16, &qword_1EBD3C1D0);
    v105[2] = v103;
    *v106 = *v104;
    *&v106[11] = *&v104[11];
    v105[0] = v101;
    v105[1] = v102;
    v59 = sub_1BD0DE53C(v105, &qword_1EBD43248);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v81 - 2) = v85;
    sub_1BE0501B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43278);
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FE98);
    v62 = sub_1BD376AA0(&qword_1EBD3FE90, &qword_1EBD3FE98, &unk_1BE0C70C8, sub_1BD281F28);
    *&v101 = v61;
    *(&v101 + 1) = v58;
    *&v102 = v62;
    *(&v102 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    v63 = v86;
    sub_1BE04E304();
    v64 = v87;
    sub_1BE04FA34();
    v65 = sub_1BE0501B4();
    sub_1BE0501A4();
    sub_1BE0501A4();
    if (sub_1BE0501A4() != v65)
    {
      sub_1BE0501A4();
    }

    sub_1BD0DE4F4(&qword_1EBD43280, &qword_1EBD43230);
    v66 = v99;
    v67 = v91;
    sub_1BE050D34();
    (*(v93 + 8))(v64, v94);
    (*(v89 + 8))(v63, v67);
    v68 = v98;
    sub_1BD0DE19C(v97, v98, &qword_1EBD3DDB0);
    v69 = v90;
    v94 = *(v90 + 16);
    v70 = v88;
    v71 = v92;
    v94(v88, v96, v92);
    v72 = v95;
    v73 = *(v95 + 16);
    v74 = v82;
    v73(v100, v66, v82);
    v75 = v83;
    sub_1BD0DE19C(v68, v83, &qword_1EBD3DDB0);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43288);
    v94((v75 + *(v76 + 48)), v70, v71);
    v77 = v75 + *(v76 + 64);
    v78 = v100;
    v73(v77, v100, v74);
    v79 = *(v72 + 8);
    v79(v99, v74);
    v80 = *(v69 + 8);
    v80(v96, v71);
    sub_1BD0DE53C(v97, &qword_1EBD3DDB0);
    v79(v78, v74);
    v80(v70, v71);
    return sub_1BD0DE53C(v98, &qword_1EBD3DDB0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD3761C0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v22 - v8;
  v11 = *MEMORY[0x1E69B80E0];
  v12 = *(v2 + 104);
  if (*(v0 + 56))
  {
    v12(&v22 - v8, v11, v1, v9);
    v13 = PKPassKitBundle();
    if (v13)
    {
      v14 = v13;
      sub_1BE04B6F4();

LABEL_7:
      (*(v2 + 8))(v10, v1);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v12(v5, v11, v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B69E0;
  v16 = [*(v0 + 8) currentBalance];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 formattedStringValue];

  if (v18)
  {
    v19 = sub_1BE052434();
    v21 = v20;

    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1BD110550();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    sub_1BE04B714();

    v10 = v5;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1BD376420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v14 - v2;
  v14 = sub_1BD376638();
  v15 = v4;
  sub_1BD0DDEBC();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v14 = v5;
  v15 = v6;
  v9 = v8 & 1;
  v16 = v8 & 1;
  v17 = v10;
  v11 = *MEMORY[0x1E697E6D0];
  v12 = sub_1BE04EB24();
  (*(*(v12 - 8) + 104))(v3, v11, v12);
  sub_1BD3768A8();
  result = sub_1BE052334();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FE98);
    sub_1BD376AA0(&qword_1EBD3FE90, &qword_1EBD3FE98, &unk_1BE0C70C8, sub_1BD281F28);
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    sub_1BE050B34();
    sub_1BD0DE53C(v3, &qword_1EBD3C1D0);
    sub_1BD0DDF10(v5, v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD376638()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v17 - v8;
  if (*(v0 + 56))
  {
    v11 = *(v0 + 72);
    if (v11)
    {
      v12 = *(v0 + 64);
      (*(v2 + 104))(&v17 - v8, *MEMORY[0x1E69B80E0], v1, v9.n128_f64[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1BE0B69E0;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1BD110550();
      *(v13 + 32) = v12;
      *(v13 + 40) = v11;
      sub_1BE048C84();
      v14 = sub_1BE04B714();

      v5 = v10;
LABEL_6:
      (*(v2 + 8))(v5, v1);
      return v14;
    }
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69B80E0], v1, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v14 = sub_1BE04B6F4();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD3768A8()
{
  result = qword_1EBD3C218;
  if (!qword_1EBD3C218)
  {
    sub_1BE04EB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C218);
  }

  return result;
}

unint64_t sub_1BD376900()
{
  result = qword_1EBD43250;
  if (!qword_1EBD43250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD43248);
    sub_1BD37698C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43250);
  }

  return result;
}

unint64_t sub_1BD37698C()
{
  result = qword_1EBD43258;
  if (!qword_1EBD43258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FF20);
    sub_1BD376AA0(&qword_1EBD43260, &qword_1EBD43268, &unk_1BE0D0F70, sub_1BD376A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43258);
  }

  return result;
}

unint64_t sub_1BD376A44()
{
  result = qword_1EBD43270;
  if (!qword_1EBD43270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43270);
  }

  return result;
}

uint64_t sub_1BD376AA0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

void sub_1BD376B24(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v42 = a2;
  v41 = sub_1BE04B944();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton] = 0;
  v11 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_didScanCard] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingReadFailure] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = 2;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] = 1;
  v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_provisioningContext] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter] = a3;
  v44 = 2;
  v12 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderAnimationView());
  v40 = a3;
  sub_1BE048964();
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView] = ProvisioningCardReaderAnimationView.init(state:)(&v44);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69B92B0]) initWithMass:2.0 stiffness:300.0 damping:50.0];
  v15 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
  v39 = v14;
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView] = sub_1BD606998(v39, 10.0, -0.05);
  v16 = sub_1BE052404();
  v17 = PKUIImageNamed(v16);

  v18 = [objc_opt_self() effectWithVariableBlurRadius:v17 imageMask:10.0];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v21 = [objc_opt_self() blackColor];
  [v20 setBackgroundColor_];

  *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView] = v20;
  v22 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v23 = v20;
  v24 = [v22 init];
  v25 = sub_1BE052404();
  v26 = PKUIImageNamed(v25);

  if (v26)
  {
    v27 = [v26 CGImage];

    [v24 setContents_];
    v28 = [v23 layer];
    [v28 setMask_];

    *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundMask] = v24;
    v29 = v24;
    sub_1BE04BB94();
    v30 = sub_1BE04B8E4();
    (*(v7 + 8))(v10, v41);
    v31 = type metadata accessor for CardReaderViewController();
    v43.receiver = v4;
    v43.super_class = v31;
    v32 = v42;
    v33 = objc_msgSendSuper2(&v43, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v30, 0, 0, v42);

    if (v33)
    {
      v34 = objc_opt_self();
      v35 = v33;
      v36 = [v34 defaultCenter];
      [v36 addObserver:v35 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
      [v36 addObserver:v35 selector:sel_didBecomeActiveNotification name:*MEMORY[0x1E69DDAB0] object:0];
      v37 = v35;
      [v37 setOverrideUserInterfaceStyle_];
      [v37 setModalPresentationStyle_];
      [v37 setTransitioningDelegate_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3770DC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CardReaderViewController();
  v47.receiver = v0;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, sel_loadView);
  if ((v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally] & 1) == 0)
  {
    sub_1BD37834C();
  }

  v7 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
  v8 = objc_opt_self();
  v9 = [v8 systemBlackColor];
  [v7 setBackgroundColor_];

  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v8 clearColor];
  [v11 setBackgroundColor_];

  [v0 setHideFooterBlurView_];
  v13 = [v0 tableView];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  [v13 setBackgroundColor_];
  [v14 setShowsVerticalScrollIndicator_];
  v15 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (!v15)
  {
    goto LABEL_13;
  }

  v45 = v7;
  v46 = v2;
  v16 = v15;
  v17 = [v0 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = v1;
  v20 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView];
  [v17 addSubview_];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  [v21 sendSubviewToBack_];

  v23 = [v0 view];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
  [v23 insertSubview:v25 belowSubview:v20];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v26;
  v28 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
  [v26 insertSubview:v28 belowSubview:v25];

  v29 = [v0 view];
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  [v29 insertSubview:v16 belowSubview:v28];

  v31 = [v0 view];
  if (v31)
  {
    v32 = v31;
    v1 = v19;
    [v31 insertSubview:v45 belowSubview:v16];

    v2 = v46;
LABEL_13:
    v33 = [v0 dockView];
    if (v33)
    {
      v34 = v33;
      v46 = v14;
      v35 = [v33 footerView];
      if (v35)
      {
        v36 = v35;
        [v35 setSetUpLaterButton_];
        v37 = [v36 createPrimaryButton];
        (*(v2 + 13))(v5, *MEMORY[0x1E69B80D8], v1);
        v38 = v37;
        v39 = PKPassKitBundle();
        if (v39)
        {
          v40 = v39;
          sub_1BE04B6F4();

          (*(v2 + 1))(v5, v1);
          v41 = sub_1BE052404();

          [v38 setTitle:v41 forState:0];

          [v38 pkui:0 setAlpha:0.0 animated:?];
          [v38 addTarget:v0 action:sel_tryAgainButtonPressed forControlEvents:0x2000];
          [v36 setSecondaryActionButton_];
          v42 = *MEMORY[0x1E69B9BE0];
          v43 = v38;
          PKAccessibilityIDSet(v43, v42);

          v44 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton];
          *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton] = v38;

          return;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD377664(char a1)
{
  [v1 _setPrimaryButtonEnabled_];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard] = 1;
  v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling] = 0;
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];
    v6 = [objc_opt_self() systemWhiteColor];
    [v5 setTintColor_];
  }

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    if (*&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView])
    {
      ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD377830(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
  if (v3)
  {
    v4 = *MEMORY[0x1E69BB1D8];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v3 setProductType:v4 subtype:0];
  }

  v6 = [v3 reportViewAppeared];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x250))(v6);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView))
  {
    ProvisioningCardReaderAnimationView.updateMotionMonitoring(shouldMonitor:)(1);
  }
}

id sub_1BD377A30(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  if ((*(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 1;
    *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
    sub_1BD3789BC(0);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x258))();
  }

  result = [v1 isMovingFromParentViewController];
  if (result)
  {
    result = *(v1 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
    if (result)
    {
      return [result resetProductTypes];
    }
  }

  return result;
}

void sub_1BD377B6C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v2 safeAreaInsets];
  v14 = v13;
  v15 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v15)
  {
    v53 = v13;
    v54 = v8;
    v55 = v6;
    PKEdgeInsetsInsetRectTm(v6, v8, v10, v12, 0.0, 0.0);
    v17 = v16;
    v18 = v15;
    PKFloatRoundToPixel();
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v22 = v21;
    v24 = v23 + 40.0;
    v25 = OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state;
    v26 = v17;
    if (v18[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_state] - 5 < 2)
    {
      v27 = v19;
      v28 = v20;
      PKFloatRoundToPixel();
      v20 = v28;
      v19 = v27;
      v26 = v29;
    }

    v56 = v24;
    v57 = v22;
    v30 = v22;
    v31 = v24;
    v52 = v19;
    v58 = v20;
    MinY = CGRectGetMinY(*(&v19 - 2));
    v33 = [v0 tableView];
    if (v33)
    {
      v34 = v33;
      [v34 contentInset];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      if (v18[v25] - 5 < 2)
      {
        PKFloatRoundToPixel();
        v17 = v41;
      }

      v42 = v26 + MinY;
      [v34 setContentInset_];

      v8 = v54;
      v6 = v55;
      v43 = v52;
      v14 = v53;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v17 = *MEMORY[0x1E69DDCE0];
  v42 = 0.0;
  v43 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v56 = 0.0;
LABEL_11:
  v59.receiver = v0;
  v59.super_class = type metadata accessor for CardReaderViewController();
  objc_msgSendSuper2(&v59, sel_viewWillLayoutSubviews);
  [v4 contentOffset];
  v45 = v14 + v17 + v44;
  if (v15)
  {
    [v15 setFrame_];
  }

  v46 = v42 - v45 + 40.0;
  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v10;
  v60.size.height = v12;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v6;
  v61.origin.y = v8;
  v61.size.width = v10;
  v61.size.height = v12;
  Height = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.size.height = 0.0;
  v62.origin.y = v46;
  v62.size.width = Width;
  v49 = Height - CGRectGetMinY(v62);
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView] setFrame_];
  v50 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
  [v50 setFrame_];
  v51 = *&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundMask];
  [v50 bounds];
  [v51 setFrame_];
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView] setFrame_];
  [*&v0[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView] setFrame_];
}

void sub_1BD377FBC()
{
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isScanningCard) == 1 && (v1 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling, (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0))
  {
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView) && (v5 = 2, ProvisioningCardReaderAnimationView.set(state:animated:)(&v5, 0), (*(v0 + v1) & 1) != 0))
    {
      v2 = 1;
    }

    else
    {
      v2 = 1;
      *(v0 + v1) = 1;
      *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
      sub_1BD3789BC(0);
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x258))();
    }
  }

  else
  {
    v2 = 0;
  }

  *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v3 && *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) == 1)
  {
    *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
    v4 = *(v3 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);

    [v4 stopDeviceMotionUpdates];
  }
}

void sub_1BD37816C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 0;
    *(v0 + v1) = 0;
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))();
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 1;
      v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager);
      v4 = [objc_opt_self() mainQueue];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_1BD14E904;
      v7[5] = v5;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1BD14E1D8;
      v7[3] = &block_descriptor_158;
      v6 = _Block_copy(v7);

      [v3 startDeviceMotionUpdatesToQueue:v4 withHandler:v6];
      _Block_release(v6);
    }
  }
}

void sub_1BD37834C()
{
  [v0 setHidesBackButton:1 animated:0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonPressed];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B7020;
  *(v2 + 32) = v1;
  sub_1BD0E5E8C(0, &qword_1EBD41C40);
  v3 = v1;
  v4 = sub_1BE052724();

  [v0 _setLeftBarButtonItems_animated_];
}

void sub_1BD3784E8()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isCanceling) = 1;
    *(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_shouldContinueOnDidBecomeActive) = 0;
    sub_1BD3789BC(0);
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x258))();
  }

  if (*(v0 + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isPresentedModally) == 1)
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
    }
  }
}

void sub_1BD3786DC(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v8 = a2;
  ProvisioningCardReaderAnimationView.set(state:animated:)(&v8, 1);
  v4 = [a3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 setNeedsLayout];

  v6 = [a3 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];
}

void sub_1BD378794(void *a1, char a2, void *a3, uint64_t a4)
{
  [a1 setOverrideUserInterfaceStyle_];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [a1 setTransitioningDelegate_];
    [a1 setModalPresentationStyle_];
    v9 = v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton];
    sub_1BD3789BC(0);
    v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = v9;
  }

  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BD126964;
    v11[3] = &block_descriptor_164;
    a3 = _Block_copy(v11);
    sub_1BE048964();
  }

  v10 = type metadata accessor for CardReaderViewController();
  v12.receiver = v4;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
}

void sub_1BD3789BC(char a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v22 = &v42 - v21;
  v23 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButton];
  if (v23)
  {
    v47 = v20;
    v48 = v19;
    v49 = v23;
    v24 = [v1 presentedViewController];
    if (v24)
    {

      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = a1 & 1;
      v25 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = v27;
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v46 = v9;
    v28 = a1 & 1;
    if (v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] == (a1 & 1))
    {
      v40 = v49;
    }

    else
    {
      v44 = v4;
      v45 = v8;
      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_isShowingTryAgainButton] = v28;
      v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_deferredIsShowingTryAgainButton] = 2;
      v29 = *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex];
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      *&v1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] = v30;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      v43 = v30;
      *(v32 + 32) = v28;
      v33 = v32;
      if (a1)
      {
        v34 = [v1 dockView];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 footerView];

          v37 = v45;
          if (v36)
          {
            [v36 setSecondaryActionButton_];

            sub_1BD0E5E8C(0, &qword_1EBD35E90);
            v43 = sub_1BE052D54();
            sub_1BE051FB4();
            sub_1BE051FF4();
            v47 = *(v47 + 8);
            (v47)(v16, v48);
            aBlock[4] = sub_1BD37DC34;
            aBlock[5] = v33;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD126964;
            aBlock[3] = &block_descriptor_152;
            v38 = _Block_copy(aBlock);
            sub_1BE048964();

            sub_1BE051F74();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1BD14EC84();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
            sub_1BD14ECDC();
            sub_1BE053664();
            v39 = v43;
            MEMORY[0x1BFB3FD90](v22, v12, v7, v38);
            _Block_release(v38);

            (*(v44 + 8))(v7, v3);
            (*(v46 + 8))(v12, v37);
            (v47)(v22, v48);
            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v41 = sub_1BE048964();
      sub_1BD378F38(v41, v43, 0);
    }
  }
}

void sub_1BD378F38(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*&Strong[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_tryAgainButtonTransitionIndex] != a2)
    {
      v10 = Strong;
LABEL_10:

      return;
    }

    v7 = [Strong dockView];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 footerView];

      if (v9)
      {
        v10 = [v9 secondaryActionButton];

        if (v10)
        {
          v11 = 0.0;
          if (a3)
          {
            [v10 pkui:0 setAlpha:0.0 animated:?];
            v11 = 1.0;
          }

          [v10 pkui:*&v6[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory] setAlpha:0 withAnimationFactory:v11 completion:?];

          goto LABEL_10;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id sub_1BD379070()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80D8], v0, v3);
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

id sub_1BD3791E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardReaderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD379758(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (!v3)
  {
LABEL_7:

    [a1 completeTransition_];
    return;
  }

  v4 = v3;
  v5 = [a1 viewControllerForKey_];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 view];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 containerView];
      v12 = *&v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory];
      v25 = v12;
      v13 = [a1 isAnimated];
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = v10;
      *(v14 + 32) = v6;
      *(v14 + 40) = v8;
      *(v14 + 48) = v11;
      *(v14 + 56) = v13;
      *(v14 + 64) = a1;
      *(v14 + 72) = v4;
      *(v14 + 80) = v12;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1BD37DAC4;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1BD1839E8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD5B974C;
      aBlock[3] = &block_descriptor_87_0;
      v16 = _Block_copy(aBlock);
      v17 = v1;
      v18 = v10;
      v19 = v6;
      v20 = v8;
      v21 = v11;
      swift_unknownObjectRetain();
      v22 = v4;
      v23 = v25;

      v24 = v16;
      PKCATrackedLayoutPerform();

      _Block_release(v24);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD379A00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v50[1] = *MEMORY[0x1E69E9840];
  Tracker = PKCATrackedLayoutGetTracker();
  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type) <= 1u)
  {
    if (!*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type))
    {
      v17 = [objc_opt_self() clearColor];
      [a2 setBackgroundColor_];

      [a3 setOverrideUserInterfaceStyle_];
      [a3 setModalPresentationCapturesStatusBarAppearance_];
      [a4 safeAreaInsets];
      [a3 setAdditionalSafeAreaInsets_];
    }

    [a5 bounds];
    [a2 setFrame_];
    [a5 addSubview_];
    if ((a6 & 1) != 0 && *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController))
    {
      v18 = sub_1BD37A2C4(a8, a7, Tracker);
      v50[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.04, 1.04, 1.0);
      v19 = *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      [a2 pkui:&aBlock setTransform:v19 withAdditiveAnimationFactory:v50 animation:?];

      v50[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
      [a2 pkui:&aBlock setTransform:v19 withAdditiveAnimationFactory:v50 animation:?];
      v20 = v50[0];
      if (v50[0])
      {
        v21 = v50[0];
        [v21 setBeginTime_];
        [Tracker trackAnimation_];
        v22 = [a2 layer];
        v23 = sub_1BE052404();
        [v22 addAnimation:v21 forKey:v23];

        v20 = v50[0];
      }

      sub_1BD37A6D8(Tracker);
      v24 = swift_allocObject();
      *(v24 + 16) = a7;
      *(v24 + 24) = v18;
      if (Tracker)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = sub_1BD37DB98;
        *(v25 + 24) = v24;
        *&aBlock.m21 = sub_1BD37DBE4;
        *&aBlock.m22 = v25;
        *&aBlock.m11 = MEMORY[0x1E69E9820];
        *&aBlock.m12 = 1107296256;
        *&aBlock.m13 = sub_1BD84D338;
        *&aBlock.m14 = &block_descriptor_111;
        v26 = _Block_copy(&aBlock);
        v27 = v18;
        sub_1BE048964();
        swift_unknownObjectRetain();

        [Tracker addAbsoluteCompletion_];

        v28 = v26;
LABEL_20:
        _Block_release(v28);

        return;
      }

      v45 = v18;
      [swift_unknownObjectRetain() completeTransition_];
      [v45 removeFromSuperview];

      return;
    }

LABEL_21:
    [a7 completeTransition_];

    return;
  }

  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type) != 2)
  {
    [a5 addSubview_];
    [a5 addSubview_];
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a7;
  if (*(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController))
  {
    v50[0] = 0;
    swift_unknownObjectRetain();
    v30 = a4;
    CATransform3DMakeScale(&aBlock, 1.04, 1.04, 1.0);
    v31 = *(a1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    [v30 pkui:&aBlock setTransform:v31 withAdditiveAnimationFactory:v50 animation:?];
    v32 = v50[0];
    v46 = v30;
    if (v50[0])
    {
      v33 = v50[0];
      [Tracker trackAnimation_];
      v34 = [v30 layer];
      v35 = sub_1BE052404();
      [v34 addAnimation:v33 forKey:v35];

      v32 = v50[0];
    }

    v49 = 0;
    CATransform3DMakeScale(&aBlock, 0.961538462, 0.961538462, 1.0);
    [a2 pkui:&aBlock setTransform:v31 withAdditiveAnimationFactory:&v49 animation:?];

    v49 = 0;
    CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
    [a2 pkui:&aBlock setTransform:v31 withAdditiveAnimationFactory:&v49 animation:?];
    v36 = v49;
    if (v49)
    {
      v37 = v49;
      [v37 setBeginTime_];
      [Tracker trackAnimation_];
      v38 = [a2 layer];
      v39 = sub_1BE052404();
      [v38 addAnimation:v37 forKey:v39];

      v36 = v49;
    }

    sub_1BD37AF78(Tracker);
    if (Tracker)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1BD37DB00;
      *(v40 + 24) = v29;
      *&aBlock.m21 = sub_1BD19E0B8;
      *&aBlock.m22 = v40;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD84D338;
      *&aBlock.m14 = &block_descriptor_102;
      v41 = _Block_copy(&aBlock);
      sub_1BE048964();

      [Tracker addAbsoluteCompletion_];

      v28 = v41;
      goto LABEL_20;
    }

    [v46 removeFromSuperview];
    [a7 completeTransition_];
  }

  else
  {
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1BD37DB00;
    *(v42 + 24) = v29;
    *&aBlock.m21 = sub_1BD19E0B8;
    *&aBlock.m22 = v42;
    *&aBlock.m11 = MEMORY[0x1E69E9820];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_1BD976224;
    *&aBlock.m14 = &block_descriptor_96;
    v43 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v44 = a4;
    sub_1BE048964();

    [v44 pkui:a9 setAlpha:v43 withAnimationFactory:0.0 completion:?];

    _Block_release(v43);
  }
}

id sub_1BD37A2C4(void *a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v23 = v3;
  v7 = [a2 containerView];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9 = [objc_opt_self() systemBlackColor];
  [v8 setBackgroundColor_];

  [v7 bounds];
  [v8 setFrame_];
  [v7 insertSubview:v8 atIndex:0];
  v10 = [v6 snapshotView];
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v6 frame];
  [v6 convertRect:v7 toCoordinateSpace:?];
  [v10 setFrame_];
  [v8 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69B92B0]) initWithMass:1.0 stiffness:500.0 damping:50.0];
  objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
  v22 = v11;
  v12 = sub_1BD606998(v22, 10.0, -0.05);
  [v8 bounds];
  [v12 setFrame_];
  [v8 addSubview_];
  sub_1BD6066F8(1, 1);
  v27[0] = 0;
  v13 = *(v23 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
  [v10 pkui:v13 setAlpha:v27 withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
  v14 = v27[0];
  if (v27[0])
  {
    v15 = v27[0];
    [a3 trackAnimation_];
    v16 = [v10 layer];
    v17 = sub_1BE052404();
    [v16 addAnimation:v15 forKey:v17];

    v14 = v27[0];
  }

  v26 = 0;
  CATransform3DMakeScale(&v25, 0.961538462, 0.961538462, 1.0);
  [v10 pkui:&v25 setTransform:v13 withAdditiveAnimationFactory:&v26 animation:?];
  if (v26)
  {
    v18 = v26;
    [a3 &selRef:v18 setWebsiteDataStore:? + 3];
    v19 = [v10 layer];
    v20 = sub_1BE052404();
    [v19 &selRef:v18 authorizationDidAuthorizePayment:v20];
  }

  return v8;
}

void sub_1BD37A6D8(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v13, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v21 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (v21)
  {
    v67 = v20;
    v68 = &v62 - v18;
    v69 = v19;
    v70 = v12;
    v75 = v3;
    v76 = v17;
    v71 = v9;
    v72 = v7;
    v74 = v4;
    v22 = v21;
    sub_1BD37B7E8(0, 0, 1, 0, 0, 0.0);
    v23 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView;
    v24 = *&v22[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
    v77 = v1;
    aBlock[0] = 0;
    v25 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    v26 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
    [v24 pkui:v25 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v65 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView;
    v27 = *&v22[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
    aBlock[0] = 0;
    [v27 pkui:v25 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v66 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView;
    v28 = *&v22[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
    aBlock[0] = 0;
    [v28 pkui:v25 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];

    v29 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
    v30 = *&v22[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
    if (v30)
    {
      aBlock[0] = 0;
      [v30 pkui:v25 setAlpha:aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    }

    v73 = v8;
    v31 = *&v22[v23];
    aBlock[0] = 0;
    [v31 pkui:v25 setAlpha:aBlock withAnimationFactory:0 animation:1.0 removePriorAnimation:?];
    if (aBlock[0])
    {
      v63 = v25;
      v32 = aBlock[0];
      [v32 setBeginTime_];
      [a1 trackAnimation_];
      v33 = [v31 0x1FADAE878];
      v34 = sub_1BE052404();
      [v33 addAnimation:v32 forKey:v34];

      v26 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v35 = *&v22[v29];
      v25 = v63;
      if (!v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v35 = *&v22[v29];
      if (!v35)
      {
LABEL_15:
        sub_1BD37B7E8(1, 0x3FE199999999999ALL, 0, 0, a1, 1.0);

        return;
      }
    }

    v36 = v35;
    aBlock[0] = 0;
    [v36 v26[430]];
    v37 = aBlock[0];
    if (aBlock[0])
    {
      v38 = aBlock[0];
      [v38 setBeginTime_];
      [a1 trackAnimation_];
      v39 = [v36 0x1FADAE878];
      v40 = v26;
      v41 = sub_1BE052404();
      [v39 addAnimation:v38 forKey:v41];

      v26 = v40;
      v37 = aBlock[0];
    }

    v42 = *&v22[v65];
    aBlock[0] = 0;
    [v42 v26[430]];
    v43 = aBlock[0];
    if (aBlock[0])
    {
      v44 = aBlock[0];
      [v44 setBeginTime_];
      [a1 trackAnimation_];
      v45 = [v42 layer];
      v46 = v26;
      v47 = sub_1BE052404();
      [v45 addAnimation:v44 forKey:v47];

      v26 = v46;
      v43 = aBlock[0];
    }

    v48 = *&v22[v66];
    aBlock[0] = 0;
    [v48 v26[430]];
    v49 = aBlock[0];
    v64 = a1;
    v63 = v36;
    if (aBlock[0])
    {
      v50 = aBlock[0];
      [v50 setBeginTime_];
      [a1 trackAnimation_];
      v51 = [v48 layer];
      v52 = sub_1BE052404();
      [v51 addAnimation:v50 forKey:v52];

      v49 = aBlock[0];
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v53 = sub_1BE052D54();
    v54 = v67;
    sub_1BE051FB4();
    v55 = v68;
    sub_1BE051FF4();
    v69 = *(v69 + 8);
    (v69)(v54, v76);
    v56 = swift_allocObject();
    v56[2] = v22;
    aBlock[4] = sub_1BD37DC14;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_117;
    v57 = _Block_copy(aBlock);
    v58 = v22;

    v59 = v70;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v60 = v72;
    v61 = v75;
    sub_1BE053664();
    MEMORY[0x1BFB3FD90](v55, v59, v60, v57);
    _Block_release(v57);

    (*(v74 + 8))(v60, v61);
    (*(v71 + 8))(v59, v73);
    (v69)(v55, v76);
    a1 = v64;
    goto LABEL_15;
  }
}

void sub_1BD37AF78(void *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
    v5 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
    if (v5)
    {
      v5[OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_hapticsEnabled] = 0;
      aBlock = 0;
      v6 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      v7 = v2;
      v8 = v5;
      [v8 &selRef:v6 peerPaymentAccountResolutionController:&aBlock requestsPresentViewController:0 animated:0.0 + 2];
      if (aBlock)
      {
        v9 = aBlock;
        [a1 trackAnimation_];
        v10 = [v8 layer];
        v11 = sub_1BE052404();
        [v10 addAnimation:v9 forKey:v11];
      }

      v12 = *&v2[v4];
      if (v12)
      {
        v13 = v12;
        v14 = [v7 view];
        if (v14)
        {
          v15 = v14;
          [v14 setNeedsLayout];

          v16 = [v7 view];
          if (v16)
          {
            v17 = v16;
            [v16 layoutIfNeeded];

            v61 = objc_opt_self();
            v18 = *&v7[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
            v19 = swift_allocObject();
            *(v19 + 16) = v13;
            *(v19 + 24) = 5;
            *(v19 + 32) = v7;
            v66 = sub_1BD37DCBC;
            v67 = v19;
            aBlock = MEMORY[0x1E69E9820];
            v63 = 1107296256;
            v64 = sub_1BD126964;
            v65 = &block_descriptor_142_0;
            v20 = _Block_copy(&aBlock);
            v21 = v7;
            v22 = v13;

            v66 = PKEdgeInsetsMake;
            v67 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v63 = 1107296256;
            v64 = sub_1BD3F08C0;
            v65 = &block_descriptor_145;
            v23 = _Block_copy(&aBlock);
            [v61 pkui:v18 animateUsingFactory:0 withDelay:v20 options:v23 animations:0.0 completion:?];

            _Block_release(v23);
            _Block_release(v20);
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v24 = v2;
    }

LABEL_11:
    v25 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type);
    if (*(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_type))
    {
      v26 = v25 == 2;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    sub_1BD37B7E8(1, 0x3FC3333333333333, 0, v27, a1, 0.0);
    v28 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView];
    aBlock = 0;
    v29 = *(v1 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
    [v28 pkui:v29 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v30 = aBlock;
    if (aBlock)
    {
      v31 = aBlock;
      [v31 setBeginTime_];
      [a1 trackAnimation_];
      v32 = [v28 layer];
      v33 = sub_1BE052404();
      [v32 addAnimation:v31 forKey:v33];

      v30 = aBlock;
    }

    v34 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView];
    aBlock = 0;
    [v34 pkui:v29 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v35 = aBlock;
    if (aBlock)
    {
      v36 = aBlock;
      [v36 setBeginTime_];
      [a1 trackAnimation_];
      v37 = [v34 layer];
      v38 = sub_1BE052404();
      [v37 addAnimation:v36 forKey:v38];

      v35 = aBlock;
    }

    v39 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView];
    aBlock = 0;
    [v39 pkui:v29 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    v40 = aBlock;
    if (aBlock)
    {
      v41 = aBlock;
      [v41 setBeginTime_];
      [a1 trackAnimation_];
      v42 = [v39 layer];
      v43 = sub_1BE052404();
      [v42 addAnimation:v41 forKey:v43];

      v40 = aBlock;
    }

    v44 = *&v2[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView];
    aBlock = 0;
    [v44 pkui:v29 setAlpha:&aBlock withAnimationFactory:0 animation:0.0 removePriorAnimation:?];
    if (aBlock)
    {
      v45 = aBlock;
      [v45 setBeginTime_];
      [a1 trackAnimation_];
      v46 = [v44 layer];
      v47 = sub_1BE052404();
      [v46 addAnimation:v45 forKey:v47];

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    else if (!v25)
    {
LABEL_29:

      return;
    }

    if (v25 != 2)
    {
      v48 = objc_opt_self();
      [v29 mass];
      v50 = v49;
      [v29 stiffness];
      v52 = v51;
      [v29 damping];
      v54 = v53;
      [v29 velocity];
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v2;
      v66 = sub_1BD37DC2C;
      v67 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v63 = 1107296256;
      v64 = sub_1BD126964;
      v65 = &block_descriptor_132_1;
      v58 = _Block_copy(&aBlock);
      v59 = v2;

      v66 = PKEdgeInsetsMake;
      v67 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v63 = 1107296256;
      v64 = sub_1BD3F08C0;
      v65 = &block_descriptor_135;
      v60 = _Block_copy(&aBlock);
      [v48 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

      _Block_release(v60);
      _Block_release(v58);
      return;
    }

    goto LABEL_29;
  }
}

void sub_1BD37B7E8(char a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v8 = *(v6 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_cardReaderViewController);
  if (!v8)
  {
    return;
  }

  v13 = v8;
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 subviews];
  v49 = sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  v17 = sub_1BE052744();

  if (v17 >> 62)
  {
    v18 = sub_1BE053704();
    v57 = a1;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_26:

    goto LABEL_27;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = a1;
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_5:
  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v50 = a4;
  v52 = a2;
  v19 = 0;
  v20 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_backgroundView;
  v21 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView;
  v60 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurView;
  v62 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView;
  v22 = *&a2;
  v54 = OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory;
  v55 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_contentBlurBackgroundView;
  v51 = OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_readFailureBlurView;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](v19, v17);
    }

    else
    {
      v23 = *(v17 + 8 * v19 + 32);
    }

    v24 = v23;
    if (v23 == *&v13[v20] || v23 == *&v13[v21] || (v25 = *&v13[v62]) != 0 && v23 == v25 || v23 == *&v13[v60] || v23 == *&v13[v55])
    {
    }

    else
    {
      v64[0] = 0;
      [v23 pkui:*(v56 + v54) setAlpha:v64 withAnimationFactory:0 animation:a6 removePriorAnimation:?];
      if (v64[0] && (a1 & 1) != 0)
      {
        v26 = v64[0];
        v27 = v26;
        if ((a3 & 1) == 0)
        {
          [v26 setBeginTime_];
        }

        [a5 trackAnimation_];
        v28 = [v24 layer];
        v29 = sub_1BE052404();
        [v28 addAnimation:v27 forKey:v29];

        a1 = v57;
        v21 = v51;
        a2 = v52;
      }

      else
      {
      }
    }

    ++v19;
  }

  while (v18 != v19);

  LOBYTE(a4) = v50;
LABEL_27:
  v30 = [v13 navigationController];

  if (!v30)
  {
    goto LABEL_31;
  }

  v7 = [v30 navigationBar];

  if (!v7)
  {
    goto LABEL_31;
  }

  if (a4)
  {

LABEL_31:
    goto LABEL_32;
  }

  a4 = a2;
  v31 = [v7 subviews];
  v16 = sub_1BE052744();

  if (!(v16 >> 62))
  {
    v32 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = *&a4;
    if (v32)
    {
LABEL_36:
      v61 = v7;
      v53 = v15;
      v34 = v32 - 1;
      if (v32 < 1)
      {
        __break(1u);
      }

      v35 = 0;
      v36 = *(v56 + OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9518TransitionAnimator_springFactory);
      v37 = v16 & 0xC000000000000001;
      v38 = v33;
      v39 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v63 = v16 & 0xC000000000000001;
      while (1)
      {
        if (v37)
        {
          v40 = MEMORY[0x1BFB40900](v35, v16);
        }

        else
        {
          v40 = *(v16 + 8 * v35 + 32);
        }

        v41 = v40;
        v64[0] = 0;
        [v40 v39[430]];
        if (v64[0] && (a1 & 1) != 0)
        {
          v42 = v34;
          v43 = v16;
          v44 = v39;
          v45 = v64[0];
          v46 = v45;
          if ((a3 & 1) == 0)
          {
            [v45 setBeginTime_];
          }

          [a5 trackAnimation_];
          v47 = [v41 layer];
          v48 = sub_1BE052404();
          [v47 addAnimation:v46 forKey:v48];

          v34 = v42;
          a1 = v57;
          v39 = v44;
          v16 = v43;
          v37 = v63;
          if (v42 == v35)
          {
LABEL_48:

            v15 = v61;
            goto LABEL_32;
          }
        }

        else
        {

          if (v34 == v35)
          {
            goto LABEL_48;
          }
        }

        ++v35;
      }
    }

    goto LABEL_51;
  }

LABEL_50:
  v32 = sub_1BE053704();
  v33 = *&a4;
  if (v32)
  {
    goto LABEL_36;
  }

LABEL_51:

LABEL_32:
}

void sub_1BD37BD74(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];

      v6 = [a1 view];
      if (v6)
      {
        v7 = v6;
        [v6 layoutIfNeeded];

        v8 = objc_opt_self();
        v9 = *&a1[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_springFactory];
        v10 = swift_allocObject();
        *(v10 + 16) = v3;
        *(v10 + 24) = 1;
        *(v10 + 32) = a1;
        v19 = sub_1BD37DC1C;
        v20 = v10;
        v15 = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v17 = sub_1BD126964;
        v18 = &block_descriptor_123;
        v11 = _Block_copy(&v15);
        v12 = v3;
        v13 = a1;

        v19 = PKEdgeInsetsMake;
        v20 = 0;
        v15 = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v17 = sub_1BD3F08C0;
        v18 = &block_descriptor_126;
        v14 = _Block_copy(&v15);
        [v8 pkui:v9 animateUsingFactory:0 withDelay:v11 options:v14 animations:0.0 completion:?];

        _Block_release(v14);
        _Block_release(v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD37BF80(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [objc_opt_self() linkColor];
    [v3 setTintColor_];
  }
}

void sub_1BD37C0E8(void *a1)
{
  v2 = a1;
  v58[1] = *MEMORY[0x1E69E9840];
  v56 = [a1 viewControllerForKey_];
  if (!v56)
  {
    goto LABEL_25;
  }

  v3 = [v2 viewControllerForKey_];
  if (!v3)
  {

LABEL_25:

    [v2 completeTransition_];
    return;
  }

  v4 = v3;
  v5 = [v56 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_71;
  }

  v6 = v5;
  v55 = [v4 view];
  if (!v55)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v7 = [v2 containerView];
  v8 = *&v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_springFactory];
  LODWORD(v9) = [v2 isAnimated];
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v1;
  if (v1[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_type])
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v2;
    *(v11 + 32) = v1;
    v12 = v1;
    swift_unknownObjectRetain_n();
    v13 = v12;
    v14 = v6;
    v6 = v14;
    if (v9)
    {
      v53 = v8;
      v54 = v4;
      v15 = [v7 subviews];
      sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
      v2 = sub_1BE052744();

      *&aBlock.m11 = MEMORY[0x1E69E7CC0];
      v4 = (v2 & 0xFFFFFFFFFFFFFF8);
      if (!(v2 >> 62))
      {
        v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_9;
      }

LABEL_64:
      v8 = sub_1BE053704();
LABEL_9:
      v50 = v6;
      v52 = v10;
      if (v8)
      {
        v6 = 0;
        v9 = v2 & 0xC000000000000001;
        m11 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = v6;
          while (1)
          {
            if (v9)
            {
              v18 = MEMORY[0x1BFB40900](v17, v2);
            }

            else
            {
              if (v17 >= v4[2])
              {
                goto LABEL_61;
              }

              v18 = *(v2 + 8 * v17 + 32);
            }

            v10 = v18;
            v6 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            type metadata accessor for ProvisioningCardReaderBlurView();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v17;
            if (v6 == v8)
            {
              goto LABEL_49;
            }
          }

          MEMORY[0x1BFB3F7A0]();
          if (*((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((*&aBlock.m11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();
          m11 = aBlock.m11;
        }

        while (v6 != v8);
      }

      else
      {
        m11 = MEMORY[0x1E69E7CC0];
      }

LABEL_49:

      if (*&m11 >> 62)
      {
        v40 = v53;
        v39 = v54;
        if (sub_1BE053704())
        {
          goto LABEL_51;
        }
      }

      else
      {
        v40 = v53;
        v39 = v54;
        if (*((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_51:
          if ((*&m11 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x1BFB40900](0, *&m11);
          }

          else
          {
            if (!*((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
            }

            v41 = *(*&m11 + 32);
          }

          v42 = v41;

          v43 = v42;
          sub_1BD6066F8(0, 1);

          goto LABEL_67;
        }
      }

      v42 = 0;
LABEL_67:
      v44 = swift_allocObject();
      v44[2] = v42;
      v44[3] = sub_1BD37DA7C;
      v44[4] = v11;
      *&aBlock.m21 = sub_1BD37DA88;
      *&aBlock.m22 = v44;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD976224;
      *&aBlock.m14 = &block_descriptor_70;
      v45 = _Block_copy(&aBlock);
      v46 = v42;
      sub_1BE048964();
      v47 = v40;

      [v50 pkui:v47 setAlpha:v45 withAnimationFactory:0.0 completion:?];

      _Block_release(v45);

      return;
    }

    [v14 removeFromSuperview];
    [v2 completeTransition_];
    v36 = *&v13[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    if (v36)
    {
      v37 = sub_1BE048964();
      v36(v37);

LABEL_45:

      sub_1BD0D4744(v36);
      return;
    }
  }

  else
  {
    v54 = v4;
    v48 = v1;
    swift_unknownObjectRetain();
    v19 = [v7 subviews];
    sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
    m11 = COERCE_DOUBLE(sub_1BE052744());

    v51 = v7;
    v52 = v10;
    v50 = v6;
    if (*&m11 >> 62)
    {
LABEL_62:
      v11 = sub_1BE053704();
    }

    else
    {
      v11 = *((*&m11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v9;
    v53 = v8;
    if (v11)
    {
      v20 = objc_opt_self();
      if (v11 < 1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v21 = v20;
      v22 = 0;
      do
      {
        if ((*&m11 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB40900](v22, *&m11);
        }

        else
        {
          v23 = *(*&m11 + 8 * v22 + 32);
        }

        v24 = v23;
        ++v22;
        v25 = [v21 clearColor];
        [v24 setBackgroundColor_];
      }

      while (v11 != v22);
    }

    [v54 setOverrideUserInterfaceStyle_];
    [v51 bounds];
    [v55 setFrame_];
    [v51 addSubview_];
    v26 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderBlurView());
    v27 = v8;
    v28 = sub_1BD606998(v27, 8.0, 0.0);
    [v51 bounds];
    [v28 setFrame_];
    [v51 insertSubview:v28 belowSubview:v55];
    if (v49)
    {
      sub_1BD6066F8(0, 0);
      sub_1BD6066F8(1, 1);
      v58[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.2, 1.2, 1.0);
      [v55 pkui:&aBlock setTransform:v27 withAdditiveAnimationFactory:v58 animation:?];

      v58[0] = 0;
      CATransform3DMakeScale(&aBlock, 1.0, 1.0, 1.0);
      [v55 pkui:&aBlock setTransform:v27 withAdditiveAnimationFactory:v58 animation:?];
      v29 = v58[0];
      if (v58[0])
      {
        v30 = v58[0];
        [0 trackAnimation_];
        v31 = [v55 layer];
        v32 = sub_1BE052404();
        [v31 addAnimation:v30 forKey:v32];

        v29 = v58[0];
      }

      [v55 pkui:0 setAlpha:0.0 animated:?];
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1BD37DA74;
      *(v33 + 24) = v52;
      *&aBlock.m21 = sub_1BD214190;
      *&aBlock.m22 = v33;
      *&aBlock.m11 = MEMORY[0x1E69E9820];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_1BD976224;
      *&aBlock.m14 = &block_descriptor_78;
      v34 = _Block_copy(&aBlock);
      v35 = v27;
      sub_1BE048964();

      [v55 pkui:v35 setAlpha:v34 withAnimationFactory:1.0 completion:?];

      _Block_release(v34);

      return;
    }

    [v2 completeTransition_];
    v36 = *&v48[OBJC_IVAR____TtCC9PassKitUI24CardReaderViewControllerP33_4558ACF2DAF985835574D5A94C971F9523AlertTransitionAnimator_completion];
    if (v36)
    {
      v38 = sub_1BE048964();
      v36(v38);

      goto LABEL_45;
    }
  }
}