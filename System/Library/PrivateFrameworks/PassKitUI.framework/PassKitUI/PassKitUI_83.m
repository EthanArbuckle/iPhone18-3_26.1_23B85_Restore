id sub_1BD905954@<X0>(uint64_t a1@<X8>)
{
  result = [*(v1 + 24) programName];
  if (result)
  {
    v4 = result;
    sub_1BE052434();

    sub_1BE0524C4();

    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    sub_1BE051494();
    v10 = sub_1BE050564();
    v12 = v11;
    v14 = v13;

    sub_1BD0DDF10(v5, v7, v9 & 1);

    sub_1BE050454();
    v15 = sub_1BE0505F4();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v10, v12, v14 & 1);

    v22 = sub_1BE050204();
    sub_1BE04E1F4();
    *(&v24 + 1) = v23;
    *(&v26 + 1) = v25;
    v31 = v26;
    v32 = v24;
    v27 = v19 & 1;
    result = swift_getKeyPath();
    v29 = v31;
    v28 = v32;
    v30 = v22;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v27;
  *(a1 + 24) = v21;
  *(a1 + 32) = v30;
  *(a1 + 40) = v28;
  *(a1 + 56) = v29;
  *(a1 + 72) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = 0;
  return result;
}

id sub_1BD905B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  sub_1BD908A54(v3, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1BD909B64(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PaymentOfferInstallmentSelectionView);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v13 = v3 + *(v7 + 64);
  v14 = *(v13 + 16);
  v28 = *v13;
  v29 = v14;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516A4();
  v16 = v26;
  v15 = v27;
  v17 = [v25 identifier];
  v18 = sub_1BE052434();
  v20 = v19;

  if (v15)
  {
    if (v16 == v18 && v15 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1BE053B84();
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v25;
  *a2 = v25;
  *(a2 + 8) = 1;
  *(a2 + 16) = sub_1BD909754;
  *(a2 + 24) = v12;
  *(a2 + 32) = v21 & 1;
  *(a2 + 33) = 1;

  return v22;
}

double sub_1BD905D4C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = [*(v1 + 32) dynamicContent];
  if (!v7 || (v8 = v7, v9 = [v7 dynamicContentPageForPageType_], v8, !v9))
  {
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [v9 footerContent];

  if (!v10)
  {
LABEL_7:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_10;
  }

  sub_1BD908A54(v1, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1BD909B64(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  v14[3] = 0;
  v14[4] = 0;
  v14[2] = 0;
  v14[5] = sub_1BD909DD8;
  v14[6] = v12;
  aBlock[4] = sub_1BD909DDC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD198918;
  aBlock[3] = &block_descriptor_91_3;
  v15 = _Block_copy(aBlock);
  sub_1BE048964();
  v16 = v10;

  v17 = [v13 hyperlinkSourcesFromApplyFooter:v16 linkTapped:v15];
  _Block_release(v15);
  if (v17)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43EA8);
    v10 = sub_1BE052744();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v23 = [v16 footerText];
  v19 = sub_1BE052434();
  v20 = v24;

  v25 = sub_1BE050204();

  LOBYTE(aBlock[0]) = 0;
  v21 = 1;
  v29 = 1;
  v22 = v25;
  v18 = 4;
LABEL_10:
  *a1 = v10;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v22;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v21;
  return result;
}

id sub_1BD906074@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = sub_1BE04F3D4();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v4);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v69, v8);
  v9 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(v2 + 32) dynamicContent];
  if (v16 && (v17 = v16, v18 = [v16 dynamicContentPageForPageType_], v17, v18) && (v19 = objc_msgSend(v18, sel_primaryActionTitle), v18, v19))
  {
    v20 = sub_1BE052434();
    v67 = v21;
    v68 = v20;
  }

  else
  {
    v66 = v6;
    (*(v11 + 104))(v15, *MEMORY[0x1E69B8078], v10);
    v22 = *(v2 + 16);
    v23 = [*(v2 + 24) identifier];
    if (!v23)
    {
      sub_1BE052434();
      v23 = sub_1BE052404();
    }

    v24 = [v22 preferredLocalizationLanguageForCriteriaIdentifier_];

    sub_1BE052434();
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v26 = result;
    v27 = sub_1BE04B6E4();
    v67 = v28;
    v68 = v27;

    (*(v11 + 8))(v15, v10);
    v6 = v66;
  }

  v29 = v69;
  v30 = v2 + *(v69 + 64);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v70) = *v30;
  *(&v70 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if ((v76 & 1) != 0 || (v33 = v2 + *(v29 + 56), v34 = *(v33 + 16), v70 = *v33, *&v71 = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150), sub_1BE0516A4(), !v77))
  {
    LODWORD(v66) = 0;
  }

  else
  {

    LODWORD(v66) = 1;
  }

  sub_1BD908A54(v2, &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v45 = swift_allocObject();
  sub_1BD909B64(v9, v45 + v35, type metadata accessor for PaymentOfferInstallmentSelectionView);
  LOBYTE(v70) = v31;
  *(&v70 + 1) = v32;
  sub_1BE0516A4();
  v36 = v76;
  v76 = 1;
  v37 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589B0)) init];
  sub_1BD9082BC(&v70);
  v64 = v71;
  v65 = v70;
  v38 = v72;
  v39 = v73;
  v63 = v74;
  v75 = 0;
  v40 = &v37[qword_1EBD56240];
  v41 = *&v37[qword_1EBD56240];
  *v40 = sub_1BD9090A8;
  v40[1] = v45;
  sub_1BD0D4744(v41);
  v42 = &v37[qword_1EBD56248[0]];
  v43 = *&v37[qword_1EBD56248[0]];
  *v42 = 0;
  *(v42 + 1) = 0;
  sub_1BD0D4744(v43);
  v44 = v76;
  LODWORD(v45) = v75;
  v46 = sub_1BE0501F4();
  v47 = v2 + *(v29 + 72);
  v48 = *v47;
  if (*(v47 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    LODWORD(v69) = v45;
    v45 = v39;
    v49 = v38;
    v50 = v36;
    v51 = sub_1BE050174();
    sub_1BE04CF84();

    v52 = v60;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v48, 0);
    v53 = v52;
    v36 = v50;
    v38 = v49;
    v39 = v45;
    LOBYTE(v45) = v69;
    (*(v61 + 8))(v53, v62);
  }

  result = sub_1BE04E1F4();
  LOBYTE(v70) = 0;
  *a1 = v37;
  *(a1 + 8) = 0;
  v54 = v64;
  *(a1 + 16) = v65;
  *(a1 + 32) = v54;
  *(a1 + 48) = v38;
  *(a1 + 56) = v39;
  *(a1 + 64) = v63;
  *(a1 + 72) = v36;
  v55 = v67;
  *(a1 + 80) = v68;
  *(a1 + 88) = v55;
  LOBYTE(v55) = v66;
  *(a1 + 96) = v66;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = v44;
  *(a1 + 129) = v55;
  *(a1 + 136) = 0x4020000000000000;
  *(a1 + 144) = v45;
  *(a1 + 152) = v46;
  *(a1 + 160) = v56;
  *(a1 + 168) = v57;
  *(a1 + 176) = v58;
  *(a1 + 184) = v59;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_1BD9066B0(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  sub_1BD906888();
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD908A54(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD909B64(v6, v14 + v13, type metadata accessor for PaymentOfferInstallmentSelectionView);
  sub_1BD122C00(0, 0, v10, &unk_1BE104F58, v14);
}

void sub_1BD906888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
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
  v9 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v10;
  v11 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v12 = *(v0 + 32);
  v13 = v3;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = [v12 offers];
  if (v17)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018);
    v18 = sub_1BE052744();

    if (v18 >> 62)
    {
      sub_1BE053704();
    }
  }

  *(inited + 112) = sub_1BE053B24();
  *(inited + 120) = v19;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v20 = *(v1 + 8);
  if ((v20 & 0xE0) == 0xC0)
  {
    if (v20)
    {
      v21 = 0xD000000000000012;
    }

    else
    {
      v21 = 0xD000000000000010;
    }

    if (v20)
    {
      v22 = "tSetupProductProvidersFlowItem";
    }

    else
    {
      v22 = "transactionSummary";
    }

    sub_1BD6B05C0(v21, v22 | 0x8000000000000000, *MEMORY[0x1E69BB0E0]);
  }

  v23 = *v1;
  if ((v20 >> 5) - 1 < 6 || !(v20 >> 5) && v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = *MEMORY[0x1E69BAC80];
      sub_1BD8D37B8(v23, v20);
      v27 = [v25 organizationName];
      v28 = sub_1BE052434();
      v30 = v29;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v28, v30, v26, isUniquelyReferenced_nonNull_native);

      v32 = *MEMORY[0x1E69BAC78];
      v33 = [v25 issuerCountryCode];
      if (v33)
      {
        v34 = v33;
        v35 = sub_1BE052434();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      sub_1BD6B05C0(v35, v37, v32);
      v38 = *MEMORY[0x1E69BAD48];
      v39 = PKDefaultPaymentNetworkNameForPaymentPass();
      if (v39)
      {
        v40 = v39;
        v41 = sub_1BE052434();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_1BD6B05C0(v41, v43, v38);
      sub_1BD8D3858(v23, v20);
    }
  }

  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BE0B98D0;
  v46 = *MEMORY[0x1E69BB6E0];
  v47 = *MEMORY[0x1E69BB6C0];
  *(v45 + 32) = *MEMORY[0x1E69BB6E0];
  *(v45 + 40) = v47;
  v48 = *MEMORY[0x1E69BB6F8];
  *(v45 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v49 = v46;
  v50 = v47;
  v51 = v48;
  v52 = sub_1BE052724();

  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD908E5C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v53 = sub_1BE052224();

  [v44 subjects:v52 sendEvent:v53];
}

uint64_t sub_1BD906D70()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD906E1C();
}

uint64_t sub_1BD906E1C()
{
  v1[71] = v0;
  v2 = sub_1BE04D214();
  v1[72] = v2;
  v1[73] = *(v2 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  sub_1BE0528A4();
  v1[79] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[80] = v4;
  v1[81] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD906F5C, v4, v3);
}

uint64_t sub_1BD906F5C()
{
  v66 = v0;
  v1 = *(v0 + 568);
  v2 = *v1;
  *(v0 + 656) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 712) = v3;
  if ((v3 >> 5) - 1 >= 6 && (v3 >> 5 || !v2) || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {

LABEL_18:
    sub_1BE04D084();
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 600);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1BD123690(0xD000000000000073, 0x80000001BE1400C0, &v65);
      _os_log_impl(&dword_1BD026000, v36, v37, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v40 + 8))(v39, v41);
    v44 = *(v0 + 568);
    v45 = *MEMORY[0x1E69BBBC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = sub_1BE052434();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v47;
    *(inited + 48) = 0xD000000000000073;
    *(inited + 56) = 0x80000001BE1400C0;
    v48 = v45;
    sub_1BD1AACF8(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD52080);
    v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v50 = sub_1BE052224();

    v51 = [v49 initWithDomain:v48 code:-9000 userInfo:v50];

    v52 = sub_1BE04A844();
    *(v0 + 504) = *(v44 + 72);
    *(v0 + 560) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
    sub_1BE0516B4();
    goto LABEL_21;
  }

  v5 = v4;
  v6 = *(v0 + 568) + *(*(v0 + 608) + 56);
  v7 = *(v6 + 16);
  *(v0 + 352) = *v6;
  *(v0 + 368) = v7;
  sub_1BD8D37B8(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516A4();
  if (!*(v0 + 448))
  {

    sub_1BD8D3858(v2, v3);
    goto LABEL_18;
  }

  v8 = *(v0 + 568);
  v9 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
  *(v0 + 664) = v9;
  v10 = *(v8 + 32);
  v11 = sub_1BE052404();

  v12 = *(v8 + 24);
  v13 = [v10 sessionIdentifier];
  if (!v13)
  {
    sub_1BE052434();
    v13 = sub_1BE052404();
  }

  v14 = *(v0 + 568);
  v64 = v9;
  v15 = [objc_opt_self() selectedOfferWithInstallmentAssessment:v10 selectedOfferIdentifier:v11 criteria:v12 passDetails:v9 sessionIdentifier:v13];
  *(v0 + 672) = v15;

  v16 = *(v14 + 16);
  v17 = [v16 configuration];
  v18 = [v17 transactionAmount];

  if (v18)
  {
    v19 = [v16 configuration];
    v20 = [v19 currencyCode];

    if (v20)
    {
      v21 = v18;
      v22 = PKCurrencyAmountMake();

      [v15 setUserEnteredAmount_];
    }
  }

  v23 = *(v0 + 624);
  v24 = *(v0 + 568);
  v25 = v24 + *(*(v0 + 608) + 52);
  v26 = *v25;
  v27 = *(v25 + 8);
  *(v0 + 424) = v26;
  *(v0 + 432) = v27;
  *(v0 + 707) = 1;
  *(v0 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD908A54(v24, v23);
  v28 = [v16 configuration];
  v29 = [v28 context];

  if (v29 > 1)
  {
    v30 = v64;
    if (v29 != 2)
    {
      if (v29 == 3)
      {
        v31 = v0 + 16;
        v55 = (*(v0 + 568) + *(*(v0 + 608) + 64));
        v56 = *v55;
        v57 = *(v55 + 1);
        *(v0 + 408) = v56;
        *(v0 + 416) = v57;
        *(v0 + 705) = 1;
        sub_1BE0516B4();
        [v16 updateCurrentSelectedPaymentOffer:v15 updateReason:3];
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 706;
        *(v0 + 24) = sub_1BD907A74;
        v58 = swift_continuation_init();
        *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
        *(v0 + 288) = MEMORY[0x1E69E9820];
        *(v0 + 296) = 1107296256;
        *(v0 + 304) = sub_1BD22B1E0;
        *(v0 + 312) = &block_descriptor_58_0;
        *(v0 + 320) = v58;
        [v16 confirmOfferRequestWithCompletion_];
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v30 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v31 = v0 + 80;
        v32 = (*(v0 + 568) + *(*(v0 + 608) + 64));
        v33 = *v32;
        v34 = *(v32 + 1);
        *(v0 + 488) = v33;
        *(v0 + 496) = v34;
        *(v0 + 709) = 1;
        sub_1BE0516B4();
        [v16 updateCurrentSelectedPaymentOffer:v15 updateReason:3];
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 710;
        *(v0 + 88) = sub_1BD90783C;
        v35 = swift_continuation_init();
        *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
        *(v0 + 224) = MEMORY[0x1E69E9820];
        *(v0 + 232) = 1107296256;
        *(v0 + 240) = sub_1BD22B1E0;
        *(v0 + 248) = &block_descriptor_61_2;
        *(v0 + 256) = v35;
        [v16 selectOfferRequestWithCompletion_];
LABEL_27:

        return MEMORY[0x1EEE6DEC8](v31);
      }

LABEL_31:
      sub_1BD9091B8(*(v0 + 624));
      sub_1BD8D3858(v2, v3);

      goto LABEL_21;
    }
  }

  v59 = *(v0 + 624);
  v60 = *(v0 + 608);

  v61 = v59 + *(v60 + 64);
  v62 = *v61;
  v63 = *(v61 + 8);
  *(v0 + 392) = v62;
  *(v0 + 400) = v63;
  *(v0 + 704) = 0;
  sub_1BE0516B4();
  (*(v59 + 40))(v15);

  sub_1BD8D3858(v2, v3);
  sub_1BD9091B8(v59);
LABEL_21:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1BD90783C()
{
  v1 = *v0;
  v2 = (*v0)[14];
  (*v0)[86] = v2;
  if (v2)
  {
    sub_1BD9091B8(v1[78]);
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907CAC;
  }

  else
  {
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD90795C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD90795C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 608);
  v6 = *(v0 + 712);

  v7 = v4 + *(v5 + 64);
  v8 = *v7;
  v9 = *(v7 + 8);
  *(v0 + 520) = v8;
  *(v0 + 528) = v9;
  *(v0 + 711) = 0;
  sub_1BE0516B4();
  (*(v4 + 40))(v1);

  sub_1BD8D3858(v3, v6);
  sub_1BD9091B8(v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD907A74()
{
  v1 = *v0;
  v2 = (*v0)[6];
  (*v0)[87] = v2;
  if (v2)
  {
    sub_1BD9091B8(v1[78]);
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907FB4;
  }

  else
  {
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907B94;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD907B94()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 608);
  v6 = *(v0 + 712);

  v7 = v4 + *(v5 + 64);
  v8 = *v7;
  v9 = *(v7 + 8);
  *(v0 + 472) = v8;
  *(v0 + 480) = v9;
  *(v0 + 708) = 0;
  sub_1BE0516B4();
  (*(v4 + 40))(v1);

  sub_1BD8D3858(v3, v6);
  sub_1BD9091B8(v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD907CAC()
{
  v32 = v0;

  swift_willThrow();
  v1 = *(v0 + 688);
  v2 = *(v0 + 616);
  v3 = *(v0 + 568);
  v4 = v1;
  v5 = sub_1BE04A844();

  *(v0 + 376) = *(v3 + 72);
  *(v0 + 536) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD908A54(v3, v2);
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C34();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = *(v0 + 664);
    v25 = *(v0 + 672);
    v8 = *(v0 + 616);
    v27 = *(v0 + 656);
    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v0 + 592);
    v26 = *(v0 + 712);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v0 + 456) = *(v8 + 72);
    sub_1BE0516A4();
    v11 = *(v0 + 544);
    *(v0 + 552) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    v12 = sub_1BE0534A4();
    v14 = v13;

    sub_1BD9091B8(v8);
    v15 = sub_1BD123690(v12, v14, &v31);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v6, v7, "Displaying paymentOffersError %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    sub_1BD8D3858(v27, v26);
    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 616);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v21 = *(v0 + 576);
    sub_1BD8D3858(*(v0 + 656), *(v0 + 712));

    (*(v20 + 8))(v19, v21);
    sub_1BD9091B8(v18);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1BD907FB4()
{
  v32 = v0;

  swift_willThrow();
  v1 = *(v0 + 696);
  v2 = *(v0 + 616);
  v3 = *(v0 + 568);
  v4 = v1;
  v5 = sub_1BE04A844();

  *(v0 + 376) = *(v3 + 72);
  *(v0 + 536) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD908A54(v3, v2);
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C34();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = *(v0 + 664);
    v25 = *(v0 + 672);
    v8 = *(v0 + 616);
    v27 = *(v0 + 656);
    v28 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v0 + 592);
    v26 = *(v0 + 712);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v0 + 456) = *(v8 + 72);
    sub_1BE0516A4();
    v11 = *(v0 + 544);
    *(v0 + 552) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    v12 = sub_1BE0534A4();
    v14 = v13;

    sub_1BD9091B8(v8);
    v15 = sub_1BD123690(v12, v14, &v31);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v6, v7, "Displaying paymentOffersError %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    sub_1BD8D3858(v27, v26);
    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 616);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v21 = *(v0 + 576);
    sub_1BD8D3858(*(v0 + 656), *(v0 + 712));

    (*(v20 + 8))(v19, v21);
    sub_1BD9091B8(v18);
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_1BD9082BC(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) dynamicContent];
  if (v8 && (v9 = v8, v10 = [v8 dynamicContentPageForPageType_], v9, v10) && (v11 = objc_msgSend(v10, sel_altFooterContent), v10, v11))
  {
    sub_1BD908A54(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1BD909B64(v7, v13 + v12, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    v15[5] = sub_1BD9090C0;
    v15[6] = v13;
    aBlock[4] = sub_1BD9090C4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_210;
    v16 = _Block_copy(aBlock);
    sub_1BE048964();

    v17 = [v14 hyperlinkSourcesFromApplyFooter:v11 linkTapped:v16];
    _Block_release(v16);
    if (v17)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8);
      v18 = sub_1BE052744();
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v22 = [v11 footerText];
    v20 = sub_1BE052434();
    v21 = v23;

    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a1 = v18;
  a1[1] = v19;
  a1[2] = 0;
  a1[3] = v20;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v21;
}

void sub_1BD9085A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = v26 - v13;
  v15 = [a2 identifier];
  v16 = sub_1BE052434();
  v18 = v17;

  v19 = a1 + *(v5 + 64);
  v20 = *(v19 + 16);
  v27 = *v19;
  v28 = v20;
  v26[0] = v16;
  v26[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150);
  sub_1BE0516B4();
  sub_1BD906888();
  if (!*(a1 + 9))
  {
    v21 = sub_1BE0528D4();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    sub_1BD908A54(a1, v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v22 = sub_1BE052894();
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_1BD909B64(v9, v24 + v23, type metadata accessor for PaymentOfferInstallmentSelectionView);
    sub_1BD122C00(0, 0, v14, &unk_1BE105058, v24);
  }
}

uint64_t sub_1BD908810()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD5FEA68;

  return sub_1BD906E1C();
}

uint64_t sub_1BD9088BC(uint64_t a1)
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
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

uint64_t sub_1BD908A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD908AF4()
{
  result = qword_1EBD58908;
  if (!qword_1EBD58908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58918);
    sub_1BE04FE84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58930);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    sub_1BD0DE4F4(&qword_1EBD58938, &qword_1EBD58930);
    sub_1BD908E5C(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD908DA8();
    swift_getOpaqueTypeConformance2();
    sub_1BD908E5C(&qword_1EBD39E50, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    sub_1BD8D2B48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58908);
  }

  return result;
}

unint64_t sub_1BD908DA8()
{
  result = qword_1EBD58940;
  if (!qword_1EBD58940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58928);
    sub_1BD908E5C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58940);
  }

  return result;
}

uint64_t sub_1BD908E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD908EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferInstallmentSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD903C3C(v4, a1);
}

uint64_t sub_1BD908F4C()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();

  return sub_1BD904144();
}

unint64_t sub_1BD908FBC()
{
  result = qword_1EBD58990;
  if (!qword_1EBD58990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58978);
    sub_1BD0DE4F4(&qword_1EBD58998, &qword_1EBD58970);
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58990);
  }

  return result;
}

uint64_t sub_1BD9090C8()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD906D70();
}

uint64_t sub_1BD9091B8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD909254(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferInstallmentSelectionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD9092C8()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD906888();
  return (*(v2 + 56))();
}

double sub_1BD909338(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1BD90935C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  v7 = *(v3 + 16);

  return sub_1BD905330(a1, a2, v7, a3);
}

double sub_1BD9093E8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  return result;
}

uint64_t objectdestroyTm_112()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1BD8D3858(*v2, *(v2 + 8));

  v3 = (v2 + v1[12]);
  v4 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_1BE04AA64();
      (*(*(v5 - 8) + 8))(v3, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  v6 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BE04E354();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  sub_1BD0D4604(*(v2 + v1[18]), *(v2 + v1[18] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

void sub_1BD909754()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD9085A4(v0 + v2, v3);
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1BD8D3858(*(v0 + v2), *(v0 + v2 + 8));

  v4 = (v0 + v2 + v1[12]);
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

  v7 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1BE04E354();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1BD0D4604(*(v3 + v1[18]), *(v3 + v1[18] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD909A74()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD908810();
}

uint64_t sub_1BD909B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD909BCC()
{
  result = qword_1EBD58A40;
  if (!qword_1EBD58A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588E8);
    sub_1BD909C84();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A40);
  }

  return result;
}

unint64_t sub_1BD909C84()
{
  result = qword_1EBD58A48;
  if (!qword_1EBD58A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588E0);
    sub_1BD909D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A48);
  }

  return result;
}

unint64_t sub_1BD909D10()
{
  result = qword_1EBD58A50;
  if (!qword_1EBD58A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A58);
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900);
    sub_1BD908AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A50);
  }

  return result;
}

uint64_t type metadata accessor for PassDetails()
{
  result = qword_1EBD58A60;
  if (!qword_1EBD58A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD909E54()
{
  type metadata accessor for AvailablePass(319);
  if (v0 <= 0x3F)
  {
    sub_1BD90A034(319, &qword_1EBD392F0, sub_1BD131A80, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD392F8);
      if (v2 <= 0x3F)
      {
        sub_1BD909FD0();
        if (v3 <= 0x3F)
        {
          sub_1BD90A034(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1BD1C2DD8(319, &qword_1EBD502A8);
            if (v5 <= 0x3F)
            {
              sub_1BD1BF1B4();
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

void sub_1BD909FD0()
{
  if (!qword_1EBD39FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39FD0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39FC8);
    }
  }
}

void sub_1BD90A034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD90A0B4@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A70);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A78);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v24 - v14;
  v16 = sub_1BE04F7C4();
  v17 = v1 + *(type metadata accessor for PassDetails() + 36);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  *v10 = v16;
  *(v10 + 1) = v18;
  v10[16] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A80);
  sub_1BD90A380(v1, &v10[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(v7 + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  sub_1BE04FF44();
  v22 = sub_1BD90DBBC();
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  sub_1BD0DE53C(v10, &qword_1EBD58A70);
  sub_1BE052434();
  v24[2] = v7;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BD90A380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AA8);
  MEMORY[0x1EEE9AC00](v77, v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AB0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for PassName();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v79 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v66 - v26;
  sub_1BD90E200(a1, &v66 - v26, type metadata accessor for AvailablePass);
  v28 = *(a1 + *(type metadata accessor for PassDetails() + 20));
  *&v27[*(v21 + 28)] = v28;
  v29 = *(v21 + 32);
  v30 = v28;
  *&v27[v29] = sub_1BE050324();
  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AB8);
  sub_1BD90AC84(a1, &v12[*(v31 + 44)]);
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD58AC0, &qword_1EBD58AA8);
  v78 = v19;
  sub_1BE050DE4();

  sub_1BD0DE53C(v12, &qword_1EBD58AA8);
  v32 = v9;
  sub_1BD90AA18(v9);
  v33 = (a1 + *(type metadata accessor for AvailablePass(0) + 48));
  v34 = v33[1];
  v92 = *v33;
  *v93 = v34;
  *&v93[9] = *(v33 + 25);
  v35 = v92;
  if (v92)
  {
    v36 = *&v93[8];
    v94 = *v93;
    v95[0] = *&v93[16];
    sub_1BD0DE19C(&v92, v88, &qword_1EBD4F508);
    v37 = v35;
    sub_1BD0DE19C(&v94, v88, &qword_1EBD4C870);
    v38 = v36;
    sub_1BD0DE19C(v95, v88, &qword_1EBD39330);
    sub_1BD586664(&v92, 1, 1, v90);
    v39 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_1BD0DE53C(&v94, &qword_1EBD4C870);
    sub_1BD0DE53C(v95, &qword_1EBD39330);
    v77 = v90[0];
    v74 = v90[2];
    v75 = v90[1];
    v72 = v90[4];
    v73 = v90[3];
    v70 = v90[6];
    v71 = v90[5];
    v69 = v91;
    v68 = v39;
    LOBYTE(v88[0]) = 0;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v77 = 1;
  }

  v67 = v27;
  v48 = v79;
  sub_1BD90E200(v27, v79, type metadata accessor for PassName);
  v49 = v80;
  sub_1BD0DE19C(v78, v80, &qword_1EBD58AB0);
  v50 = v81;
  sub_1BD0DE19C(v32, v81, &qword_1EBD58AA0);
  v51 = v76;
  sub_1BD90E200(v48, v76, type metadata accessor for PassName);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AC8);
  sub_1BD0DE19C(v49, v51 + v52[12], &qword_1EBD58AB0);
  sub_1BD0DE19C(v50, v51 + v52[16], &qword_1EBD58AA0);
  v53 = (v51 + v52[20]);
  v55 = v74;
  v54 = v75;
  *&v82 = v77;
  *(&v82 + 1) = v75;
  v56 = v72;
  v57 = v73;
  *&v83 = v74;
  *(&v83 + 1) = v73;
  v58 = v70;
  v59 = v71;
  *&v84 = v72;
  *(&v84 + 1) = v71;
  v60 = v68;
  v61 = v69;
  *&v85 = v70;
  *(&v85 + 1) = v69;
  *&v86 = v68;
  *(&v86 + 1) = v41;
  *&v87[0] = v43;
  *(&v87[0] + 1) = v45;
  *&v87[1] = v47;
  BYTE8(v87[1]) = 0;
  v62 = v83;
  *v53 = v82;
  v53[1] = v62;
  v63 = v85;
  v53[2] = v84;
  v53[3] = v63;
  v64 = v87[0];
  v53[4] = v86;
  v53[5] = v64;
  *(v53 + 89) = *(v87 + 9);
  sub_1BD0DE19C(&v82, v88, &qword_1EBD4F500);
  sub_1BD0DE53C(v32, &qword_1EBD58AA0);
  sub_1BD0DE53C(v78, &qword_1EBD58AB0);
  sub_1BD90E268(v67, type metadata accessor for PassName);
  v88[0] = v77;
  v88[1] = v54;
  v88[2] = v55;
  v88[3] = v57;
  v88[4] = v56;
  v88[5] = v59;
  v88[6] = v58;
  v88[7] = v61;
  v88[8] = v60;
  v88[9] = v41;
  v88[10] = v43;
  v88[11] = v45;
  v88[12] = v47;
  v89 = 0;
  sub_1BD0DE53C(v88, &qword_1EBD4F500);
  sub_1BD0DE53C(v81, &qword_1EBD58AA0);
  sub_1BD0DE53C(v80, &qword_1EBD58AB0);
  return sub_1BD90E268(v79, type metadata accessor for PassName);
}

uint64_t sub_1BD90AA18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AD0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AD8);
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  if (PKOslo2024UIUpdatesEnabled())
  {
    *v6 = sub_1BE04F7C4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AE0);
    sub_1BD90D6BC(v1, &v6[*(v11 + 44)]);
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD58AE8, &qword_1EBD58AD0);
    sub_1BE050DE4();

    sub_1BD0DE53C(v6, &qword_1EBD58AD0);
    sub_1BD0DE204(v10, a1, &qword_1EBD58AD8);
    return (*(v15 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD90AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v242 = a2;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B00);
  MEMORY[0x1EEE9AC00](v241, v3);
  v237 = &v205 - v4;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B08);
  MEMORY[0x1EEE9AC00](v220, v5);
  v223 = (&v205 - v6);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B10);
  MEMORY[0x1EEE9AC00](v213, v7);
  v215 = (&v205 - v8);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B18);
  MEMORY[0x1EEE9AC00](v221, v9);
  v216 = &v205 - v10;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B20);
  MEMORY[0x1EEE9AC00](v214, v11);
  v212 = (&v205 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B28);
  v233 = *(v13 - 8);
  v234 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v222 = &v205 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B30);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v235 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v236 = &v205 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v208 = &v205 - v24;
  v25 = type metadata accessor for IdentityCredential(0);
  v206 = *(v25 - 8);
  v207 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v209 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B38);
  MEMORY[0x1EEE9AC00](v229, v28);
  v231 = (&v205 - v29);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B40);
  MEMORY[0x1EEE9AC00](v225, v30);
  v227 = (&v205 - v31);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B48);
  MEMORY[0x1EEE9AC00](v230, v32);
  v228 = &v205 - v33;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B8);
  MEMORY[0x1EEE9AC00](v226, v34);
  v211 = &v205 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v205 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v205 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v205 - v46;
  v48 = type metadata accessor for BalanceInfo(0);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = &v205 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v210 = &v205 - v55;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F0);
  MEMORY[0x1EEE9AC00](v217, v56);
  v218 = (&v205 - v57);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B50);
  MEMORY[0x1EEE9AC00](v224, v58);
  v219 = &v205 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B58);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v232 = &v205 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v243 = &v205 - v65;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B60);
  MEMORY[0x1EEE9AC00](v239, v66);
  v240 = (&v205 - v67);
  v238 = type metadata accessor for PassDetails();
  sub_1BD0DE19C(a1 + v238[7], &v249, &qword_1EBD51EC0);
  v244 = a1;
  if (*(&v250 + 1))
  {
    sub_1BD0EF554(&v249, &v245);
    __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
    if (sub_1BE04C704())
    {
      v68 = PKOslo2024UIUpdatesEnabled();
      a1 = v244;
      if ((v68 & 1) == 0)
      {
        sub_1BD90CB40(&v249);
        v100 = v250;
        v101 = v240;
        *v240 = v249;
        v101[1] = v100;
        v101[2] = *v251;
        *(v101 + 41) = *&v251[9];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78);
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
        sub_1BD0DE4F4(&qword_1EBD58B88, &qword_1EBD58B00);
        sub_1BE04F9A4();
        return __swift_destroy_boxed_opaque_existential_0(&v245);
      }

      __swift_destroy_boxed_opaque_existential_0(&v245);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v245);
      a1 = v244;
    }
  }

  else
  {
    sub_1BD0DE53C(&v249, &qword_1EBD51EC0);
  }

  v69 = type metadata accessor for AvailablePass(0);
  v70 = v69;
  if (*(a1 + v69[5]) == 1)
  {
    v71 = *(a1 + v69[9]);
    if (v71)
    {
      v72 = v71;
      v73 = [v72 formattedStringValue];
      v211 = v72;
      if (v73)
      {
        v74 = v73;
        v75 = sub_1BE052434();
        v77 = v76;

        v78 = 1;
      }

      else
      {

        v71 = 0;
        v78 = 0;
        v75 = 0;
        v77 = 0;
      }

      v210 = v75;
      *&v245 = v71;
      *(&v245 + 1) = v78;
      *&v246 = v75;
      *(&v246 + 1) = v77;
      LOBYTE(v247[0]) = 0;
      sub_1BD68CE48(v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
      sub_1BD90E11C(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
      sub_1BD90E11C(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v103 = v251[0];
      v104 = v250;
      v105 = v218;
      *v218 = v249;
      v105[1] = v104;
      *(v105 + 32) = v103;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
      sub_1BD68C78C();
      sub_1BD834308();
      v106 = v219;
      sub_1BE04F9A4();

      sub_1BD68CE88(v71);
    }

    else
    {
      v90 = (a1 + v69[8]);
      v91 = v90[1];
      if (!v91)
      {
        sub_1BD0DE19C(a1 + v69[7], v47, &qword_1EBD39FF0);
        if ((*(v49 + 48))(v47, 1, v48) == 1)
        {
          sub_1BD0DE53C(v47, &qword_1EBD39FF0);
          v144 = 1;
          v89 = v243;
          v106 = v219;
        }

        else
        {
          v177 = v210;
          sub_1BD90E198(v47, v210, type metadata accessor for BalanceInfo);
          sub_1BD90E200(v177, v43, type metadata accessor for BalanceInfo);
          (*(v49 + 56))(v43, 0, 1, v48);
          v178 = v211;
          sub_1BD3AEF64(v43, v211);
          sub_1BD0DE19C(v178, v218, &qword_1EBD502B8);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
          sub_1BD68C78C();
          sub_1BD834308();
          v106 = v219;
          sub_1BE04F9A4();
          sub_1BD0DE53C(v178, &qword_1EBD502B8);
          sub_1BD90E268(v177, type metadata accessor for BalanceInfo);
          v144 = 0;
          v89 = v243;
        }

        goto LABEL_34;
      }

      v92 = *v90;
      v93 = v91;
      v94 = [v93 formattedStringValue];
      v211 = v93;
      if (v94)
      {
        v95 = v94;
        v96 = sub_1BE052434();
        v98 = v97;

        v99 = v92 & 1;
      }

      else
      {

        v99 = 0;
        v91 = 0;
        v96 = 0;
        v98 = 0;
      }

      v210 = v96;
      *&v245 = v99;
      *(&v245 + 1) = v91;
      *&v246 = v96;
      *(&v246 + 1) = v98;
      LOBYTE(v247[0]) = 1;
      sub_1BD68CDC8(v99, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
      sub_1BD90E11C(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
      sub_1BD90E11C(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v145 = v251[0];
      v146 = v250;
      v147 = v218;
      *v218 = v249;
      v147[1] = v146;
      *(v147 + 32) = v145;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
      sub_1BD68C78C();
      sub_1BD834308();
      v106 = v219;
      sub_1BE04F9A4();

      sub_1BD68CE08(v99, v91);
    }

    v144 = 0;
    v89 = v243;
    a1 = v244;
LABEL_34:
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F8);
    (*(*(v148 - 8) + 56))(v106, v144, 1, v148);
    sub_1BD0DE19C(v106, v227, &qword_1EBD58B50);
    swift_storeEnumTagMultiPayload();
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &unk_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    v149 = v228;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v149, v231, &qword_1EBD58B48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
    sub_1BD90DFD8();
    sub_1BD68CCD0();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v149, &qword_1EBD58B48);
    sub_1BD0DE53C(v106, &qword_1EBD58B50);
    goto LABEL_35;
  }

  sub_1BD0DE19C(a1 + v69[7], v39, &qword_1EBD39FF0);
  if ((*(v49 + 48))(v39, 1, v48) != 1)
  {
    sub_1BD90E198(v39, v52, type metadata accessor for BalanceInfo);
    sub_1BD90E200(v52, v43, type metadata accessor for BalanceInfo);
    (*(v49 + 56))(v43, 0, 1, v48);
    v87 = v211;
    sub_1BD3AEF64(v43, v211);
    sub_1BD0DE19C(v87, v227, &qword_1EBD502B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &unk_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    v88 = v228;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v88, v231, &qword_1EBD58B48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
    sub_1BD90DFD8();
    sub_1BD68CCD0();
    v89 = v243;
    a1 = v244;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v88, &qword_1EBD58B48);
    sub_1BD0DE53C(v87, &qword_1EBD502B8);
    sub_1BD90E268(v52, type metadata accessor for BalanceInfo);
LABEL_35:
    v143 = 0;
    goto LABEL_36;
  }

  sub_1BD0DE53C(v39, &qword_1EBD39FF0);
  v79 = sub_1BD494550();
  if (!v80)
  {
    v228 = WrappedPass.secureElementPass.getter();
    if (v228)
    {
      if ([v228 isIdentityPass])
      {
        v107 = v208;
        sub_1BD0DE19C(a1 + v70[6], v208, &qword_1EBD3F190);
        v108 = v207;
        if ((*(v206 + 48))(v107, 1, v207) == 1)
        {
          sub_1BD0DE53C(v107, &qword_1EBD3F190);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
        }

        else
        {
          v179 = v107;
          v180 = v209;
          sub_1BD90E198(v179, v209, type metadata accessor for IdentityCredential);
          v181 = (v180 + *(v108 + 28));
          v182 = v181[1];
          *&v249 = *v181;
          *(&v249 + 1) = v182;
          sub_1BD0DDEBC();
          sub_1BE048C84();
          v183 = sub_1BE0506C4();
          v185 = v184;
          v187 = v186;
          sub_1BE0502C4();
          v188 = sub_1BE0505F4();
          v190 = v189;
          v192 = v191;

          sub_1BD0DDF10(v183, v185, v187 & 1);

          sub_1BE051234();
          v109 = sub_1BE050564();
          v110 = v193;
          v195 = v194;
          v112 = v196;

          sub_1BD0DDF10(v188, v190, v192 & 1);

          sub_1BD90E268(v209, type metadata accessor for IdentityCredential);
          v111 = v195 & 1;
          sub_1BD0D7F18(v109, v110, v195 & 1);
          sub_1BE048C84();
        }

        v224 = v111;
        v227 = v112;
        *&v245 = v109;
        *(&v245 + 1) = v110;
        *&v246 = v111;
        *(&v246 + 1) = v112;
        LOBYTE(v247[0]) = 1;
        sub_1BD1969AC(v109, v110, v111, v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
        sub_1BD12E194();
        sub_1BE04F9A4();
        v197 = v249;
        v198 = v250;
        v199 = v251[0];
        v200 = v231;
        *v231 = v249;
        v200[1] = v198;
        v226 = v198;
        *(v200 + 32) = v199;
        LODWORD(v225) = v199;
        swift_storeEnumTagMultiPayload();
        sub_1BD68CD98(v197, *(&v197 + 1), v198, *(&v198 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
        v201 = v109;
        sub_1BD90DFD8();
        v202 = v110;
        sub_1BD68CCD0();
        v89 = v243;
        sub_1BE04F9A4();

        v203 = v224;
        v204 = v227;
        sub_1BD1969F0(v201, v202, v224, v227);
        sub_1BD68CD9C(v197, *(&v197 + 1), v226, *(&v198 + 1));
        v139 = v201;
        v140 = v202;
        v141 = v203;
        v142 = v204;
        goto LABEL_28;
      }
    }

    v143 = 1;
    v89 = v243;
    goto LABEL_36;
  }

  v81 = v79;
  v82 = v80;
  if (PKBankConnectEnabled())
  {

    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  else
  {
    v113 = (a1 + v238[10]);
    v114 = v113[4];
    v226 = v113[3];
    v228 = v114;
    v227 = __swift_project_boxed_opaque_existential_1(v113, v226);
    *&v249 = v81;
    *(&v249 + 1) = v82;
    sub_1BD0DDEBC();
    v115 = sub_1BE0506C4();
    v117 = v116;
    v119 = v118;
    sub_1BE0502C4();
    v120 = sub_1BE0505F4();
    v122 = v121;
    v124 = v123;

    sub_1BD0DDF10(v115, v117, v119 & 1);

    v125 = v120;
    v126 = v122;
    v83 = sub_1BE050574();
    v84 = v127;
    LOBYTE(v115) = v128;
    v86 = v129;
    sub_1BD0DDF10(v125, v126, v124 & 1);

    v85 = (v115 & 1);
    sub_1BD0D7F18(v83, v84, v85);
    sub_1BE048C84();
  }

  v225 = v86;
  v228 = v85;
  *&v245 = v83;
  *(&v245 + 1) = v84;
  *&v246 = v85;
  *(&v246 + 1) = v86;
  LOBYTE(v247[0]) = 0;
  sub_1BD1969AC(v83, v84, v85, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD12E194();
  sub_1BE04F9A4();
  v130 = v249;
  v132 = *(&v250 + 1);
  v131 = v250;
  v133 = v251[0];
  v134 = v231;
  *v231 = v249;
  v226 = v132;
  v227 = v130;
  v134[1] = __PAIR128__(v132, v131);
  *(v134 + 32) = v133;
  swift_storeEnumTagMultiPayload();
  sub_1BD68CD98(v130, *(&v130 + 1), v131, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
  v135 = v83;
  sub_1BD90DFD8();
  v136 = v84;
  sub_1BD68CCD0();
  v89 = v243;
  sub_1BE04F9A4();
  v137 = v228;
  v138 = v225;
  sub_1BD1969F0(v135, v136, v228, v225);
  sub_1BD68CD9C(v227, *(&v130 + 1), v131, v226);
  v139 = v135;
  v140 = v136;
  v141 = v137;
  v142 = v138;
LABEL_28:
  sub_1BD1969F0(v139, v140, v141, v142);
  v143 = 0;
  a1 = v244;
LABEL_36:
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B68);
  v151 = 1;
  (*(*(v150 - 8) + 56))(v89, v143, 1, v150);
  v152 = (a1 + v238[6]);
  v153 = v152[1];
  v249 = *v152;
  v250 = v153;
  v154 = v152[3];
  *v251 = v152[2];
  *&v251[16] = v154;
  v252 = v152[4];
  if (v154)
  {
    v155 = v249;
    if (v250)
    {
      if (v250 == 1)
      {
        sub_1BD0DE19C(&v249, &v245, &qword_1EBD395E0);
        sub_1BD12B91C(v155, *(&v155 + 1), 1);

        sub_1BD90D224(&v245);
        v156 = v246;
        v157 = v215;
        *v215 = v245;
        v157[1] = v156;
        v157[2] = v247[0];
        *(v157 + 41) = *(v247 + 9);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v245, v248, &qword_1EBD58B78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78);
        sub_1BD90DEF4();
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
        v158 = v216;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v158, v223, &qword_1EBD58B18);
        swift_storeEnumTagMultiPayload();
        sub_1BD90DE3C();
        v159 = v222;
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v249, &qword_1EBD395E0);
        sub_1BD0DE53C(&v245, &qword_1EBD58B78);
        v160 = v158;
        v161 = &qword_1EBD58B18;
        v89 = v243;
      }

      else
      {
        v165 = *(&v250 + 1);
        v166 = *v251;
        v167 = *(&v252 + 1);
        sub_1BD12B91C(v249, *(&v249 + 1), 2);
        v168 = v167;
        v169 = v165;
        v170 = v166;
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BD90D470(&v245);
        v171 = v246;
        v172 = v223;
        *v223 = v245;
        v172[1] = v171;
        v172[2] = v247[0];
        *(v172 + 41) = *(v247 + 9);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v245, v248, &qword_1EBD58B78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78);
        sub_1BD90DE3C();
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
        v159 = v222;
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v249, &qword_1EBD395E0);
        v160 = &v245;
        v161 = &qword_1EBD58B78;
      }
    }

    else
    {
      sub_1BD0DE19C(&v249, &v245, &qword_1EBD395E0);
      sub_1BD12B91C(v155, *(&v155 + 1), 0);
      v163 = v212;
      sub_1BD90CD8C(v155, v212);
      sub_1BD0DE19C(v163, v215, &qword_1EBD58B20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78);
      sub_1BD90DEF4();
      sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
      v164 = v216;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v164, v223, &qword_1EBD58B18);
      swift_storeEnumTagMultiPayload();
      sub_1BD90DE3C();
      v159 = v222;
      sub_1BE04F9A4();
      sub_1BD0D455C(v155, *(&v155 + 1), 0);
      sub_1BD0DE53C(&v249, &qword_1EBD395E0);
      v89 = v243;
      sub_1BD0DE53C(v164, &qword_1EBD58B18);
      v160 = v212;
      v161 = &qword_1EBD58B20;
    }

    sub_1BD0DE53C(v160, v161);
    v162 = v236;
    sub_1BD0DE204(v159, v236, &qword_1EBD58B28);
    v151 = 0;
  }

  else
  {
    v162 = v236;
  }

  (*(v233 + 56))(v162, v151, 1, v234);
  v173 = v232;
  sub_1BD0DE19C(v89, v232, &qword_1EBD58B58);
  v174 = v235;
  sub_1BD0DE19C(v162, v235, &qword_1EBD58B30);
  v175 = v237;
  sub_1BD0DE19C(v173, v237, &qword_1EBD58B58);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B70);
  sub_1BD0DE19C(v174, v175 + *(v176 + 48), &qword_1EBD58B30);
  sub_1BD0DE53C(v174, &qword_1EBD58B30);
  sub_1BD0DE53C(v173, &qword_1EBD58B58);
  sub_1BD0DE19C(v175, v240, &qword_1EBD58B00);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78);
  sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
  sub_1BD0DE4F4(&qword_1EBD58B88, &qword_1EBD58B00);
  sub_1BE04F9A4();
  sub_1BD0DE53C(v175, &qword_1EBD58B00);
  sub_1BD0DE53C(v162, &qword_1EBD58B30);
  return sub_1BD0DE53C(v89, &qword_1EBD58B58);
}

id sub_1BD90CB40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v30 = v10;
    v31 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE0502F4();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE051264();
    v22 = sub_1BE050564();
    v24 = v23;
    LOBYTE(v10) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v30) = v10 & 1;
    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v27;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD90CD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_1BE04F774();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v5);
  v54 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PassDetails();
  v12 = *(v53 + 40);
  v56 = v2;
  sub_1BD0EE8CC(v2 + v12, v60);
  v51[1] = v62;
  v52 = v61;
  v51[0] = __swift_project_boxed_opaque_existential_1(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B6CA0;
  result = [a1 pkFullName];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  v16 = sub_1BE052434();
  v18 = v17;

  *(v13 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1BD110550();
  *(v13 + 64) = v19;
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  result = [a1 pkSingleLineFormattedContactAddressIncludingCountryName_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_1BE052434();
  v23 = v22;

  *(v13 + 96) = MEMORY[0x1E69E6158];
  *(v13 + 104) = v19;
  *(v13 + 72) = v21;
  *(v13 + 80) = v23;
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8068], v7);
  v24 = sub_1BE04B714();
  v26 = v25;

  (*(v8 + 8))(v11, v7);
  v58 = v24;
  v59 = v26;
  sub_1BD0DDEBC();
  v27 = sub_1BE0506C4();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_1BE0502C4();
  v31 = sub_1BE0505F4();
  v33 = v32;
  v35 = v34;

  sub_1BD0DDF10(v27, v29, v26 & 1);

  v36 = sub_1BE050574();
  v38 = v37;
  v40 = v39;
  v52 = v41;
  sub_1BD0DDF10(v31, v33, v35 & 1);

  v42 = v54;
  sub_1BD70A4D0(v54);
  LOBYTE(v27) = sub_1BE04F764();
  (*(v55 + 8))(v42, v57);
  if (v27)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_0(v60);
  v45 = swift_getKeyPath();
  v46 = v40 & 1;
  LOBYTE(v58) = v40 & 1;
  v63 = 0;
  v47 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B20) + 36));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318) + 28);
  v49 = *MEMORY[0x1E6980FB0];
  v50 = sub_1BE050554();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  result = swift_getKeyPath();
  *v47 = result;
  *a2 = v36;
  *(a2 + 8) = v38;
  *(a2 + 16) = v46;
  *(a2 + 24) = v52;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v43;
  *(a2 + 48) = 0;
  *(a2 + 56) = v45;
  *(a2 + 64) = 1;
  return result;
}

id sub_1BD90D224@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v30 = v10;
    v31 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE051264();
    v22 = sub_1BE050564();
    v24 = v23;
    LOBYTE(v10) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v30) = v10 & 1;
    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v27;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD90D470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v30 = v10;
    v31 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE0511F4();
    v22 = sub_1BE050564();
    v24 = v23;
    LOBYTE(v10) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v30) = v10 & 1;
    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v27;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD90D6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068);
  MEMORY[0x1EEE9AC00](v42, v3);
  v41 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v39 - v7;
  v9 = type metadata accessor for PassEligibleRewardsInfo();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v39 - v20);
  v22 = type metadata accessor for AvailablePass(0);
  v23 = a1 + *(v22 + 52);
  v24 = *v23;
  if (!*v23 || (v25 = *(v23 + 24)) == 0)
  {
LABEL_6:
    sub_1BD0DE19C(a1 + *(v22 + 40), v8, &unk_1EBD4C940);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1BD0DE53C(v8, &unk_1EBD4C940);
    }

    else
    {
      sub_1BD90E198(v8, v17, type metadata accessor for PassEligibleRewardsInfo);
      if (sub_1BD57A1B8())
      {
        sub_1BD90E200(v17, v13, type metadata accessor for PassEligibleRewardsInfo);
        v36 = v41;
        sub_1BD38BA78(v13, v41);
        sub_1BD0DE19C(v36, v21, &qword_1EBD4B068);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A20);
        sub_1BD90E11C(&qword_1EBD43A18, &qword_1EBD43A20, &unk_1BE0D0318, sub_1BD38C118);
        sub_1BD57873C();
        v34 = v43;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v36, &qword_1EBD4B068);
        sub_1BD90E268(v17, type metadata accessor for PassEligibleRewardsInfo);
        v35 = 0;
        goto LABEL_12;
      }

      sub_1BD90E268(v17, type metadata accessor for PassEligibleRewardsInfo);
    }

    v35 = 1;
    v34 = v43;
    goto LABEL_12;
  }

  v39[0] = v18;
  v26 = *(v23 + 16);
  v27 = v24;
  v39[1] = v26;
  v40 = v27;
  sub_1BE048C84();
  v28 = v25;
  v29 = [v28 primaryTitle];
  if (!v29)
  {

    goto LABEL_6;
  }

  v30 = v29;
  v31 = sub_1BE052434();
  v33 = v32;

  *v21 = v31;
  v21[1] = v33;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A20);
  sub_1BD90E11C(&qword_1EBD43A18, &qword_1EBD43A20, &unk_1BE0D0318, sub_1BD38C118);
  sub_1BD57873C();
  v34 = v43;
  sub_1BE04F9A4();

  v35 = 0;
LABEL_12:
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AF8);
  return (*(*(v37 - 8) + 56))(v34, v35, 1, v37);
}

unint64_t sub_1BD90DBBC()
{
  result = qword_1EBD58A88;
  if (!qword_1EBD58A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A70);
    sub_1BD0DE4F4(&qword_1EBD58A90, &qword_1EBD58A98);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A88);
  }

  return result;
}

uint64_t sub_1BD90DCC4(uint64_t a1)
{
  v2 = sub_1BE050554();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04F074();
}

uint64_t sub_1BD90DD8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD90DE3C()
{
  result = qword_1EBD58B90;
  if (!qword_1EBD58B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B18);
    sub_1BD90DEF4();
    sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &unk_1BE1051E8, sub_1BD0FF49C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58B90);
  }

  return result;
}

unint64_t sub_1BD90DEF4()
{
  result = qword_1EBD58B98;
  if (!qword_1EBD58B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B20);
    sub_1BD90DD8C(&qword_1EBD442D8, &qword_1EBD442E0, &unk_1BE0D1AB0, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58B98);
  }

  return result;
}

unint64_t sub_1BD90DFD8()
{
  result = qword_1EBD58BA0;
  if (!qword_1EBD58BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B48);
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &unk_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BA0);
  }

  return result;
}

unint64_t sub_1BD90E090()
{
  result = qword_1EBD58BB0;
  if (!qword_1EBD58BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD552F8);
    sub_1BD68C78C();
    sub_1BD834308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BB0);
  }

  return result;
}

uint64_t sub_1BD90E11C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD90E198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD90E200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD90E268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD90E2C8()
{
  result = qword_1EBD58BB8;
  if (!qword_1EBD58BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A70);
    sub_1BD90DBBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD90E3C0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BB8);
  }

  return result;
}

uint64_t sub_1BD90E3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD90E434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_1BE04FF64();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BE0);
  MEMORY[0x1EEE9AC00](v35, v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C60);
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - v18;
  *v11 = sub_1BE04F7B4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C68);
  sub_1BD90EF30(a1, a2, &v11[*(v20 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  v21 = v42;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = &v11[*(v8 + 36)];
  *v24 = KeyPath;
  v24[1] = sub_1BD10DF54;
  v24[2] = v23;
  type metadata accessor for SEStorageUsageCategory(0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BF8);
  sub_1BD915DD4();
  sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory);
  sub_1BD915F3C();
  sub_1BE050D64();

  sub_1BD0DE53C(v11, &qword_1EBD58BF0);
  type metadata accessor for SEStorageCleanupController();
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
  v26 = sub_1BE04E954();
  v28 = v35;
  v27 = v36;
  v29 = &v14[*(v35 + 36)];
  *v29 = v26;
  v29[1] = v30;
  sub_1BE04FF54();
  v31 = sub_1BD915C90();
  sub_1BE050D14();
  (*(v39 + 8))(v27, v40);
  sub_1BD0DE53C(v14, &qword_1EBD58BE0);
  sub_1BE052434();
  v42 = v28;
  v43 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  sub_1BE050DE4();

  return (*(v38 + 8))(v19, v32);
}

uint64_t sub_1BD90E910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48 = a3;
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C70);
  MEMORY[0x1EEE9AC00](v46, v4);
  v47 = &v44 - v5;
  v6 = sub_1BE051AD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v45 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  v26 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE04C164();
  (*(*(v30 - 8) + 56))(v29, 3, 3, v30);
  v31 = sub_1BD809060(a1, v29);
  sub_1BD91717C(v29, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  if (v31)
  {
    v32 = *(v15 + 28);
    *&v25[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 104))(v14, *MEMORY[0x1E697D710], v6);
    (*(v7 + 16))(v10, v14, v6);
    sub_1BE048964();
    sub_1BE051694();
    (*(v7 + 8))(v14, v6);
    *v25 = 0;
    *(v25 + 4) = 257;
    type metadata accessor for SEStorageCleanupController();
    sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
    *(v25 + 2) = sub_1BE04E954();
    *(v25 + 3) = v33;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    v35 = v50;
    MEMORY[0x1EEE9AC00](v34, v36);
    *(&v44 - 2) = a1;
    v37 = sub_1BD619C2C(sub_1BD916D84, (&v44 - 4), v35);
    v39 = v38;

    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v37;
    }

    v41 = *(v15 + 28);
    *&v18[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 104))(v14, *MEMORY[0x1E697D710], v6);
    (*(v7 + 16))(v10, v14, v6);
    sub_1BE051694();
    (*(v7 + 8))(v14, v6);
    *v18 = v40;
    *(v18 + 4) = 0;
    type metadata accessor for SEStorageCleanupController();
    sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
    *(v18 + 2) = sub_1BE04E954();
    *(v18 + 3) = v42;
    v25 = v45;
    sub_1BD9171DC(v18, v45, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  }

  sub_1BD917114(v25, v47, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  swift_storeEnumTagMultiPayload();
  sub_1BD917244(&qword_1EBD58C48, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  sub_1BE04F9A4();
  return sub_1BD91717C(v25, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
}

id sub_1BD90EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a1;
  v123 = a2;
  v120 = a3;
  v116 = sub_1BE04FB94();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v3);
  v110 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C78);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v5);
  v103 = v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C80);
  v107 = *(v7 - 8);
  v108 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v105 = v102 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C88);
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v10);
  v109 = v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C90);
  v118 = *(v12 - 8);
  v119 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v117 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v114 = v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C98);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v115 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v125 = v102 - v23;
  v24 = sub_1BE04BD74();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CA0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v121 = v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v124 = v102 - v35;
  (*(v25 + 104))(v28, *MEMORY[0x1E69B80D8], v24, v34);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    (*(v25 + 8))(v28, v24);
    *&v140[0] = v38;
    *(&v140[0] + 1) = v40;
    v102[1] = sub_1BD0DDEBC();
    v41 = sub_1BE0506C4();
    v43 = v42;
    LOBYTE(v38) = v44;
    sub_1BE050294();
    v45 = sub_1BE0505F4();
    v47 = v46;
    v49 = v48;

    sub_1BD0DDF10(v41, v43, v38 & 1);

    v50 = sub_1BE0505D4();
    v52 = v51;
    LOBYTE(v40) = v53;
    v55 = v54;
    sub_1BD0DDF10(v45, v47, v49 & 1);

    sub_1BE051CD4();
    sub_1BE04E5E4();
    v142 = v40 & 1;
    v56 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v143 = 0;
    v65 = sub_1BE0501C4();
    v133 = v139[4];
    v134 = v139[5];
    v144 = 1;
    *&v131 = v50;
    *(&v131 + 1) = v52;
    LOBYTE(v132) = v40 & 1;
    *(&v132 + 1) = v55;
    v135 = v139[6];
    LOBYTE(v136) = v56;
    *(&v136 + 1) = v58;
    *&v137 = v60;
    *(&v137 + 1) = v62;
    *&v138 = v64;
    BYTE8(v138) = 0;
    LOBYTE(v139[0]) = v65;
    *(v139 + 8) = 0u;
    *(&v139[1] + 8) = 0u;
    BYTE8(v139[2]) = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CA8);
    sub_1BD916E5C(&qword_1EBD58CB0, &qword_1EBD58CA8, &unk_1BE1054A0, sub_1BD7E1578);
    sub_1BE050DE4();

    v140[8] = v139[0];
    v141[0] = v139[1];
    *(v141 + 9) = *(&v139[1] + 9);
    v140[4] = v135;
    v140[5] = v136;
    v140[6] = v137;
    v140[7] = v138;
    v140[0] = v131;
    v140[1] = v132;
    v140[2] = v133;
    v140[3] = v134;
    sub_1BD0DE53C(v140, &qword_1EBD58CA8);
    v66 = v122;
    *&v131 = sub_1BD90FC54(v122, v123);
    *(&v131 + 1) = v67;
    v68 = sub_1BE0506C4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    KeyPath = swift_getKeyPath();
    LOBYTE(v45) = sub_1BE0501C4();
    v72 &= 1u;
    LOBYTE(v131) = v72;
    LOBYTE(v126) = 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v130[7] = v145;
    *&v130[23] = v146;
    *&v130[39] = v147;
    *&v126 = v68;
    *(&v126 + 1) = v70;
    LOBYTE(v127) = v72;
    *(&v127 + 1) = v74;
    *&v128 = KeyPath;
    BYTE8(v128) = 1;
    LOBYTE(v129[0]) = v45;
    *(v129 + 8) = 0u;
    *(&v129[1] + 8) = 0u;
    BYTE8(v129[2]) = 1;
    *(&v129[3] + 9) = *&v130[16];
    *(&v129[4] + 9) = *&v130[32];
    *(&v129[2] + 9) = *v130;
    *(&v129[5] + 1) = *(&v147 + 1);
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CB8);
    sub_1BD916DA4();
    sub_1BE050DE4();

    v136 = v129[2];
    v137 = v129[3];
    v138 = v129[4];
    v139[0] = v129[5];
    v132 = v127;
    v133 = v128;
    v134 = v129[0];
    v135 = v129[1];
    v131 = v126;
    v76 = sub_1BD0DE53C(&v131, &qword_1EBD58CB8);
    MEMORY[0x1EEE9AC00](v76, v77);
    v102[-2] = v66;
    v78 = v123;
    v102[-1] = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CC8);
    sub_1BD0DE4F4(&qword_1EBD58CD0, &qword_1EBD58CC8);
    v79 = v103;
    sub_1BE0504E4();
    v80 = sub_1BD0DE4F4(&qword_1EBD58CD8, &qword_1EBD58C78);
    v82 = v105;
    v81 = v106;
    sub_1BE050DF4();
    (*(v104 + 8))(v79, v81);
    v83 = v110;
    sub_1BE04FB84();
    *&v126 = v81;
    *(&v126 + 1) = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v85 = MEMORY[0x1E697C750];
    v86 = v108;
    v87 = v109;
    v88 = v116;
    sub_1BE051144();
    (v112[1])(v83, v88);
    v89 = (*(v107 + 8))(v82, v86);
    v112 = v102;
    MEMORY[0x1EEE9AC00](v89, v90);
    v102[-2] = v122;
    v102[-1] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CE0);
    *&v126 = v86;
    *(&v126 + 1) = v88;
    *&v127 = OpaqueTypeConformance2;
    *(&v127 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD58CE8, &qword_1EBD58CE0);
    v91 = v113;
    v92 = v114;
    sub_1BE051024();
    (*(v111 + 8))(v87, v91);
    v93 = v121;
    sub_1BD0DE19C(v124, v121, &qword_1EBD58CA0);
    v94 = v115;
    sub_1BD0DE19C(v125, v115, &qword_1EBD58C98);
    v96 = v117;
    v95 = v118;
    v97 = *(v118 + 16);
    v98 = v119;
    v97(v117, v92, v119);
    v99 = v120;
    sub_1BD0DE19C(v93, v120, &qword_1EBD58CA0);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CF0);
    sub_1BD0DE19C(v94, v99 + *(v100 + 48), &qword_1EBD58C98);
    v97((v99 + *(v100 + 64)), v96, v98);
    v101 = *(v95 + 8);
    v101(v92, v98);
    sub_1BD0DE53C(v125, &qword_1EBD58C98);
    sub_1BD0DE53C(v124, &qword_1EBD58CA0);
    v101(v96, v98);
    sub_1BD0DE53C(v94, &qword_1EBD58C98);
    return sub_1BD0DE53C(v121, &qword_1EBD58CA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD90FC54(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04B8D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B924();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 != *MEMORY[0x1E69B7F78] && v13 != *MEMORY[0x1E69B7F80] && v13 != *MEMORY[0x1E69B7F70] && v13 != *MEMORY[0x1E69B7F68] && v13 != *MEMORY[0x1E69B7F88])
  {
    (*(v9 + 8))(v12, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v16 = [*(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE052434();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1BD110550();
  *(v14 + 32) = v18;
  *(v14 + 40) = v20;
  v21 = sub_1BE04B714();

  (*(v4 + 8))(v7, v3);
  return v21;
}

uint64_t sub_1BD910014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D00);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D08);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D10);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v35 - v28;
  sub_1BD9103A4(a1, a2, &v35 - v28);
  v35 = v21;
  sub_1BD910664(a1, a2, v21);
  v37 = a1;
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D18);
  sub_1BD916F18();
  sub_1BE051A44();
  v30 = [objc_opt_self() secondarySystemBackgroundColor];
  v39 = sub_1BE0511C4();
  *&v13[*(v6 + 44)] = sub_1BE0518D4();
  sub_1BD0DE19C(v29, v25, &qword_1EBD58D10);
  sub_1BD0DE19C(v21, v17, &qword_1EBD58D08);
  v31 = v9;
  sub_1BD0C3000(v13, v9);
  v32 = v36;
  sub_1BD0DE19C(v25, v36, &qword_1EBD58D10);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D58);
  sub_1BD0DE19C(v17, v32 + *(v33 + 48), &qword_1EBD58D08);
  sub_1BD0C3000(v31, v32 + *(v33 + 64));
  sub_1BD0DE53C(v13, &qword_1EBD58D00);
  sub_1BD0DE53C(v35, &qword_1EBD58D08);
  sub_1BD0DE53C(v29, &qword_1EBD58D10);
  sub_1BD0DE53C(v31, &qword_1EBD58D00);
  sub_1BD0DE53C(v17, &qword_1EBD58D08);
  return sub_1BD0DE53C(v25, &qword_1EBD58D10);
}

int *sub_1BD9103A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DD8);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v27[-v15];
  v28 = a1;
  v29 = a2;
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v7 + 8))(v10, v6);
    v30 = v19;
    v31 = v21;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v31 = v22;
    v32 = v23 & 1;
    v33 = v24;
    sub_1BD917354();
    sub_1BE051A24();
    v25 = [objc_opt_self() secondarySystemBackgroundColor];
    v30 = sub_1BE0511C4();
    v26 = sub_1BE0518D4();
    (*(v12 + 32))(a3, v16, v11);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D10);
    *(a3 + result[9]) = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD910664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v29 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v27, v4);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DA0);
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SEStorageUsageCategory(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD46540);
    return (*(v5 + 56))(v29, 1, 1, v28);
  }

  else
  {
    v19 = sub_1BD9171DC(v12, v17, type metadata accessor for SEStorageUsageCategory);
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v25 - 4) = v26;
    *(&v25 - 3) = a2;
    *(&v25 - 2) = v17;
    sub_1BD911EC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DA8);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD58DB0, &qword_1EBD58DA8);
    sub_1BE051A24();
    v21 = [objc_opt_self() secondarySystemBackgroundColor];
    v30 = sub_1BE0511C4();
    v22 = sub_1BE0518D4();
    v24 = v28;
    v23 = v29;
    *&v8[*(v28 + 36)] = v22;
    sub_1BD0DE204(v8, v23, &qword_1EBD58DA0);
    (*(v5 + 56))(v23, 0, 1, v24);
    return sub_1BD91717C(v17, type metadata accessor for SEStorageUsageCategory);
  }
}

uint64_t sub_1BD910A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CF8);
  MEMORY[0x1EEE9AC00](v23[0], v5);
  v7 = v23 - v6;
  v8 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v23 - v17;
  sub_1BE04FB04();
  v23[8] = a1;
  v23[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49300);
  sub_1BD51865C();
  sub_1BE04E424();
  sub_1BE04FB14();
  v23[4] = a1;
  v23[5] = a2;
  sub_1BE04E424();
  v19 = *(v23[0] + 48);
  v20 = *(v11 + 16);
  v20(v7, v18, v10);
  v20(&v7[v19], v14, v10);
  sub_1BE04F854();
  v21 = *(v11 + 8);
  v21(v14, v10);
  return (v21)(v18, v10);
}

id sub_1BD910D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v30 = a3;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v10);
  v12 = &v27 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  v14 = MEMORY[0x1EEE9AC00](v28, v13);
  v16 = &v27 - v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D0], v4, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v5 + 8))(v8, v4);
    v31 = v19;
    v32 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = a2;
    sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE051744();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v23 = v31;
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    (*(v9 + 32))(v16, v12, v29);
    v26 = &v16[*(v28 + 36)];
    *v26 = KeyPath;
    v26[1] = sub_1BD185ABC;
    v26[2] = v25;
    sub_1BE052434();
    sub_1BD3BAA6C();
    sub_1BE050DE4();

    return sub_1BD0DE53C(v16, &qword_1EBD44590);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD911094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
  if (v2)
  {
    sub_1BE048964();
    v2(0);

    sub_1BD1107D8(v2);
  }
}

id sub_1BD911104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v30 = a3;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v10);
  v12 = &v27 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  v14 = MEMORY[0x1EEE9AC00](v28, v13);
  v16 = &v27 - v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D0], v4, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v5 + 8))(v8, v4);
    v31 = v19;
    v32 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = a2;
    sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE051744();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v31)
    {
      v23 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v23 = v33 ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = v23 & 1;
    (*(v9 + 32))(v16, v12, v29);
    v26 = &v16[*(v28 + 36)];
    *v26 = KeyPath;
    v26[1] = sub_1BD185ABC;
    v26[2] = v25;
    sub_1BE052434();
    sub_1BD3BAA6C();
    sub_1BE050DE4();

    return sub_1BD0DE53C(v16, &qword_1EBD44590);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD9114E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    v2(v4);
    return sub_1BD1107D8(v2);
  }

  return result;
}

uint64_t sub_1BD9115A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SEStorageCleanupController();
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
  sub_1BE048964();
  result = sub_1BE04E954();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD911628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v86 = a3;
  v5 = sub_1BE04BD74();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v85 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DB8);
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v81 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = &v78 - v24;
  v25 = type metadata accessor for SEStorageUsageGroup(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SEStorageUsageCategory(0);
  v31 = *(a2 + *(v30 + 20));
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = *(v25 + 28);
    v34 = v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v35 = *(v26 + 72);
    v36 = 0.0;
    do
    {
      sub_1BD917114(v34, v29, type metadata accessor for SEStorageUsageGroup);
      v37 = *&v29[v33];
      sub_1BD91717C(v29, type metadata accessor for SEStorageUsageGroup);
      v36 = v36 + v37;
      v34 += v35;
      --v32;
    }

    while (v32);
  }

  else
  {
    v36 = 0.0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v39 = [*(a1 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1BE052434();
    v43 = v42;
  }

  else
  {

    v41 = 0;
    v43 = 0xE000000000000000;
  }

  sub_1BD917114(a2, v18, type metadata accessor for SEStorageUsageCategory);
  v44 = (*(*(v30 - 8) + 56))(v18, 0, 1, v30);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v78 - 4) = a2;
  *(&v78 - 3) = v41;
  *(&v78 - 2) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DC0);
  sub_1BD0DE4F4(&qword_1EBD58DC8, &qword_1EBD58DC0);
  sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory);
  sub_1BE04E8D4();
  v47 = v79;
  v46 = v80;
  (*(v79 + 104))(v8, *MEMORY[0x1E69B80D8], v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BE0B69E0;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1BD110550();
  *(v48 + 32) = v41;
  *(v48 + 40) = v43;
  v49 = sub_1BE04B714();
  v51 = v50;

  (*(v47 + 8))(v8, v46);
  v88 = v49;
  v89 = v51;
  sub_1BD0DDEBC();
  v52 = sub_1BE0506C4();
  v54 = v53;
  LOBYTE(v49) = v55;
  sub_1BE050424();
  v56 = sub_1BE0505F4();
  v58 = v57;
  v60 = v59;

  sub_1BD0DDF10(v52, v54, v49 & 1);

  sub_1BE051494();
  v61 = sub_1BE050564();
  v63 = v62;
  LOBYTE(v54) = v64;
  v66 = v65;

  sub_1BD0DDF10(v56, v58, v60 & 1);

  v88 = v61;
  v89 = v63;
  v90 = v54 & 1;
  v91 = v66;
  sub_1BE052434();
  v67 = v84;
  sub_1BE050DE4();

  sub_1BD0DDF10(v61, v63, v54 & 1);

  v69 = v81;
  v68 = v82;
  v70 = *(v82 + 16);
  v71 = v87;
  v72 = v83;
  v70(v81, v87, v83);
  v73 = v85;
  sub_1BD0DE19C(v67, v85, &qword_1EBD452C0);
  v74 = v86;
  v70(v86, v69, v72);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DD0);
  sub_1BD0DE19C(v73, &v74[*(v75 + 48)], &qword_1EBD452C0);
  sub_1BD0DE53C(v67, &qword_1EBD452C0);
  v76 = *(v68 + 8);
  v76(v71, v72);
  sub_1BD0DE53C(v73, &qword_1EBD452C0);
  return (v76)(v69, v72);
}

uint64_t sub_1BD911DE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, id *a3@<X8>)
{
  *a3 = sub_1BD802010();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DC0);
  v8 = v7[9];
  v9 = sub_1BE04AF64();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *(a3 + v7[10]) = 1;
  v10 = (a3 + v7[11]);
  *v10 = a1;
  v10[1] = a2;
  *(a3 + v7[12]) = 2;
  *(a3 + v7[13]) = 0;

  return sub_1BE048C84();
}

id sub_1BD911EC4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80D8], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v16 = v8;
    v17 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    v16 = v11;
    v17 = v12;
    LOBYTE(v10) = v14 & 1;
    v18 = v14 & 1;
    v19 = v15;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v11, v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD91208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D40);
  sub_1BD0DE4F4(&qword_1EBD58D60, &qword_1EBD4CAD0);
  sub_1BD917054();
  sub_1BD917244(&qword_1EBD58D68, type metadata accessor for SEStorageUsageCategory);
  sub_1BE0519D4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BD91710C;
  *(v8 + 24) = v7;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D18) + 36));
  *v9 = sub_1BD458BE8;
  v9[1] = v8;
  return sub_1BE048964();
}

uint64_t sub_1BD9122A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D50);
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  if (sub_1BD804328())
  {
    v16 = *(v31 + 56);

    return v16(a4, 1, 1, v12);
  }

  else
  {
    sub_1BD917114(a1, v11, type metadata accessor for SEStorageUsageCategory);
    v18 = type metadata accessor for SEStorageUsageCategory(0);
    v19 = (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
    v30 = &v26;
    MEMORY[0x1EEE9AC00](v19, v20);
    v29 = &v26 - 6;
    *(&v26 - 4) = a1;
    *(&v26 - 3) = a2;
    *(&v26 - 2) = a3;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D80);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D88);
    v27 = a4;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8);
    v23 = sub_1BD0DE4F4(&qword_1EBD58D90, &qword_1EBD58D88);
    v24 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory);
    sub_1BE04E8D4();
    v25 = v27;
    (*(v31 + 32))(v27, v15, v12);
    return (*(v31 + 56))(v25, 0, 1, v12);
  }
}

uint64_t sub_1BD912648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v61 = a3;
  v59 = a2;
  v5 = type metadata accessor for SEStorageUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v56 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D88);
  MEMORY[0x1EEE9AC00](v58, v14);
  v16 = (&v56 - v15);
  v57 = sub_1BD802010();
  v18 = v17;
  sub_1BD803AD4(v13);
  v19 = *(a1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v5 + 28);
    v22 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v24 = 0.0;
    do
    {
      sub_1BD917114(v22, v9, type metadata accessor for SEStorageUsageGroup);
      v25 = *&v9[v21];
      sub_1BD91717C(v9, type metadata accessor for SEStorageUsageGroup);
      v24 = v24 + v25;
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = 0.0;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v27 = [*(v61 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1BE052434();
    v31 = v30;
  }

  else
  {

    v29 = 0;
    v31 = 0xE000000000000000;
  }

  *v16 = v57;
  v16[1] = v18;
  v32 = v58;
  sub_1BD0DE19C(v13, v16 + *(v58 + 36), &unk_1EBD39970);
  *(v16 + v32[10]) = 0;
  v33 = (v16 + v32[11]);
  *v33 = v29;
  v33[1] = v31;
  *(v16 + v32[12]) = 2;
  *(v16 + v32[13]) = 0;
  v34 = (v16 + v32[14]);
  sub_1BD805880(v62);
  v74 = v62[10];
  v75[0] = v63[0];
  *(v75 + 10) = *(v63 + 10);
  v70 = v62[6];
  v71 = v62[7];
  v72 = v62[8];
  v73 = v62[9];
  v66 = v62[2];
  v67 = v62[3];
  v68 = v62[4];
  v69 = v62[5];
  v64 = v62[0];
  v65 = v62[1];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D98) + 36);
  v36 = *(sub_1BE04EDE4() + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1BE04F684();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #6.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  v44 = v75[2];
  v34[12] = v75[1];
  v34[13] = v44;
  v45 = v75[4];
  v34[14] = v75[3];
  v34[15] = v45;
  v46 = v73;
  v34[8] = v72;
  v34[9] = v46;
  v47 = v75[0];
  v34[10] = v74;
  v34[11] = v47;
  v48 = v69;
  v34[4] = v68;
  v34[5] = v48;
  v49 = v71;
  v34[6] = v70;
  v34[7] = v49;
  v50 = v65;
  *v34 = v64;
  v34[1] = v50;
  v51 = v67;
  v34[2] = v66;
  v34[3] = v51;
  v52 = sub_1BD0DE53C(v13, &unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v52, v53);
  v54 = v59;
  *(&v56 - 4) = a1;
  *(&v56 - 3) = v54;
  *(&v56 - 2) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  sub_1BD0DE4F4(&qword_1EBD58D90, &qword_1EBD58D88);
  sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
  sub_1BE0508B4();
  return sub_1BD0DE53C(v16, &qword_1EBD58D88);
}

uint64_t sub_1BD912B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageUsageCategory(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1BD917114(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageUsageCategory);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1BD9171DC(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SEStorageUsageCategory);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
  return sub_1BE051704();
}

uint64_t sub_1BD912D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v135 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v120 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v147 = &v116 - v14;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v144, v15);
  v118 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v141 = &v116 - v19;
  v20 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v133 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20, v21);
  v127 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v124 = (&v116 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v116 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v116 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v117 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v116 - v39;
  v146 = type metadata accessor for SEStorageUsageGroup(0);
  v41 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v42);
  v119 = (&v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v145 = &v116 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v152 = (&v116 - v49);
  v132 = *(a1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v131 = *(v132 + 16);
  if (!v131)
  {
LABEL_98:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if ((v159 & 1) == 0)
    {
      v115 = sub_1BE048964();
      sub_1BD5EE954(v115, a3, 0, 0);
    }

    return result;
  }

  v125 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v130 = v132 + v125;
  v126 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  result = swift_beginAccess();
  v51 = 0;
  v129 = (v133 + 56);
  v142 = (v6 + 48);
  v134 = (v6 + 32);
  v136 = (v6 + 8);
  v116 = (v133 + 48);
  v143 = v5;
  v122 = a3;
  v140 = v20;
  v123 = v40;
  v121 = v41;
  v139 = v33;
  v138 = v29;
  while (2)
  {
    if (v51 >= *(v132 + 16))
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v157 = *(v41 + 72);
    v52 = v152;
    sub_1BD917114(v130 + v157 * v51, v152, type metadata accessor for SEStorageUsageGroup);
    (*v129)(v40, 1, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v159)
    {
      goto LABEL_6;
    }

    v128 = v51;
    v53 = *(a3 + v126);
    v156 = *(v53 + 16);
    if (!v156)
    {
      goto LABEL_5;
    }

    v158 = *v152;
    v155 = v53 + v125;
    result = sub_1BE048C84();
    v54 = 0;
    v55 = v145;
    v56 = &unk_1BE0B9F80;
    v154 = v53;
    while (1)
    {
      if (v54 >= *(v53 + 16))
      {
        goto LABEL_102;
      }

      v153 = v54 * v157;
      sub_1BD917114(v155 + v54 * v157, v55, type metadata accessor for SEStorageUsageGroup);
      v58 = *v55;
      v59 = *(*v55 + 16);
      if (v59 != *(v158 + 16))
      {
        goto LABEL_14;
      }

      if (v59 && v58 != v158)
      {
        v60 = v133;
        v61 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v151 = v58 + v61;
        v149 = (v158 + v61);
        v148 = sub_1BD22F42C();
        v62 = 0;
        v150 = *(v60 + 72);
        v137 = v54;
        while (1)
        {
          v63 = v150 * v62;
          result = sub_1BD917114(v151 + v150 * v62, v33, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if (v62 == v59)
          {
            goto LABEL_103;
          }

          sub_1BD917114(v149 + v63, v29, type metadata accessor for SEStorageUsageGroup.PassEntry);
          result = sub_1BE053074();
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }

          v64 = *(v33 + 1);
          v65 = *(v29 + 1);
          v66 = *(v64 + 16);
          if (v66 != *(v65 + 16))
          {
            goto LABEL_13;
          }

          v67 = !v66 || v64 == v65;
          if (!v67)
          {
            break;
          }

LABEL_28:
          v68 = v29;
          v69 = v20[6];
          v70 = *(v144 + 48);
          v71 = v141;
          sub_1BD0DE19C(&v33[v69], v141, &unk_1EBD39970);
          sub_1BD0DE19C(&v68[v69], v71 + v70, &unk_1EBD39970);
          v72 = v56;
          v73 = *v142;
          v74 = v143;
          if ((*v142)(v71, 1, v143) == 1)
          {
            v67 = v73(v71 + v70, 1, v74) == 1;
            v57 = v71;
            if (!v67)
            {
              goto LABEL_12;
            }

            v56 = &unk_1BE0B9F80;
            sub_1BD0DE53C(v71, &unk_1EBD39970);
            v20 = v140;
            v29 = v138;
            v33 = v139;
          }

          else
          {
            v75 = v147;
            sub_1BD0DE19C(v71, v147, &unk_1EBD39970);
            if (v73(v71 + v70, 1, v74) == 1)
            {
              (*v136)(v75, v74);
              v57 = v71;
              v54 = v137;
LABEL_12:
              sub_1BD0DE53C(v57, &qword_1EBD3A750);
              v20 = v140;
              v29 = v138;
              v33 = v139;
              v56 = &unk_1BE0B9F80;
LABEL_13:
              sub_1BD91717C(v29, type metadata accessor for SEStorageUsageGroup.PassEntry);
              sub_1BD91717C(v33, type metadata accessor for SEStorageUsageGroup.PassEntry);
              v55 = v145;
              v53 = v154;
              goto LABEL_14;
            }

            v76 = v135;
            (*v134)(v135, v71 + v70, v74);
            sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530]);
            v77 = sub_1BE052334();
            v78 = *v136;
            (*v136)(v76, v74);
            v78(v147, v74);
            sub_1BD0DE53C(v71, &unk_1EBD39970);
            v29 = v138;
            v33 = v139;
            v56 = v72;
            v20 = v140;
            v54 = v137;
            if ((v77 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (*&v33[v20[7]] != *&v29[v20[7]])
          {
            goto LABEL_13;
          }

          v79 = v20[8];
          v80 = v33[v79];
          v81 = v29[v79];
          sub_1BD91717C(v29, type metadata accessor for SEStorageUsageGroup.PassEntry);
          sub_1BD91717C(v33, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v67 = v80 == v81;
          v55 = v145;
          v53 = v154;
          if (!v67)
          {
            goto LABEL_14;
          }

          if (++v62 == v59)
          {
            goto LABEL_47;
          }
        }

        v82 = (v64 + 40);
        v83 = (v65 + 40);
        while (v66)
        {
          result = *(v82 - 1);
          if (result != *(v83 - 1) || *v82 != *v83)
          {
            result = sub_1BE053B84();
            if ((result & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v82 += 2;
          v83 += 2;
          if (!--v66)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

LABEL_47:
      sub_1BE04C164();
      sub_1BD917244(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      if (v159 == v161 && v160 == v162)
      {

        v53 = v154;
      }

      else
      {
        v85 = sub_1BE053B84();

        v53 = v154;
        if ((v85 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (*(v55 + *(v146 + 24)) == *(v152 + *(v146 + 24)) && *(v55 + *(v146 + 28)) == *(v152 + *(v146 + 28)))
      {
        break;
      }

LABEL_14:
      result = sub_1BD91717C(v55, type metadata accessor for SEStorageUsageGroup);
      if (++v54 == v156)
      {

        a3 = v122;
        goto LABEL_4;
      }
    }

    result = sub_1BD91717C(v55, type metadata accessor for SEStorageUsageGroup);
    a3 = v122;
    v86 = *(v122 + v126);
    if (v54 >= *(v86 + 16))
    {
      goto LABEL_106;
    }

    v87 = v119;
    sub_1BD917114(v86 + v125 + v153, v119, type metadata accessor for SEStorageUsageGroup);
    v88 = v117;
    sub_1BD0DE19C(v123, v117, &qword_1EBD46818);
    if ((*v116)(v88, 1, v20) == 1)
    {
      sub_1BD0DE53C(v88, &qword_1EBD46818);
      v89 = *v87;
      v90 = *(*v87 + 16);
      if (v90)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1BD4FFFCC(v89);
        }

        v91 = v89 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        v92 = *(v133 + 72);
        do
        {
          v91[v20[8]] = 1;
          v91 += v92;
          --v90;
        }

        while (v90);
        *v119 = v89;
      }

LABEL_90:
      v110 = v126;
      swift_beginAccess();
      v111 = *(a3 + v110);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + v110) = v111;
      if ((result & 1) == 0)
      {
        result = sub_1BD4FFFB8(v111);
        v111 = result;
        *(a3 + v126) = result;
      }

      v112 = v119;
      if (v54 >= v111[2])
      {
        goto LABEL_107;
      }

      sub_1BD5F0418(v119, v111 + v125 + v153);
      *(a3 + v126) = v111;
      swift_endAccess();
      sub_1BD91717C(v112, type metadata accessor for SEStorageUsageGroup);
LABEL_4:
      v40 = v123;
      v41 = v121;
LABEL_5:
      sub_1BD5E0C8C();
      v52 = v152;
      v51 = v128;
LABEL_6:
      ++v51;
      sub_1BD0DE53C(v40, &qword_1EBD46818);
      result = sub_1BD91717C(v52, type metadata accessor for SEStorageUsageGroup);
      if (v51 == v131)
      {
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  sub_1BD9171DC(v88, v124, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v149 = *v87;
  v93 = v149[2];
  v94 = v127;
  if (!v93)
  {
LABEL_89:
    sub_1BD91717C(v124, type metadata accessor for SEStorageUsageGroup.PassEntry);
    a3 = v122;
    goto LABEL_90;
  }

  v95 = sub_1BD22F42C();
  v96 = 0;
  v158 = *v124;
  v148 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v157 = v149 + v148;
  v156 = *(v133 + 72);
  v154 = v93;
  v151 = v95;
  while (2)
  {
    v155 = v156 * v96;
    sub_1BD917114(&v157[v156 * v96], v94, type metadata accessor for SEStorageUsageGroup.PassEntry);
    result = sub_1BE053074();
    if ((result & 1) == 0 || (v97 = *(v127 + 8), v98 = v124[1], v99 = *(v97 + 16), v99 != *(v98 + 16)))
    {
LABEL_65:
      v94 = v127;
      sub_1BD91717C(v127, type metadata accessor for SEStorageUsageGroup.PassEntry);
      if (++v96 == v93)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  if (v99)
  {
    v100 = v97 == v98;
  }

  else
  {
    v100 = 1;
  }

  if (!v100)
  {
    v107 = (v97 + 40);
    v108 = (v98 + 40);
    while (v99)
    {
      result = *(v107 - 1);
      if (result != *(v108 - 1) || *v107 != *v108)
      {
        result = sub_1BE053B84();
        if ((result & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v107 += 2;
      v108 += 2;
      if (!--v99)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_105;
  }

LABEL_73:
  v101 = v20[6];
  v102 = *(v144 + 48);
  v103 = v118;
  sub_1BD0DE19C(v127 + v101, v118, &unk_1EBD39970);
  sub_1BD0DE19C(v124 + v101, v103 + v102, &unk_1EBD39970);
  v104 = *v142;
  v105 = v143;
  if ((*v142)(v103, 1, v143) != 1)
  {
    sub_1BD0DE19C(v103, v120, &unk_1EBD39970);
    if (v104(v103 + v102, 1, v105) != 1)
    {
      (*v134)(v135, v103 + v102, v105);
      sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      LODWORD(v150) = sub_1BE052334();
      v106 = *v136;
      (*v136)(v135, v105);
      v106(v120, v105);
      sub_1BD0DE53C(v103, &unk_1EBD39970);
      v93 = v154;
      if (v150)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

    (*v136)(v120, v105);
LABEL_64:
    sub_1BD0DE53C(v103, &qword_1EBD3A750);
    v93 = v154;
    goto LABEL_65;
  }

  if (v104(v103 + v102, 1, v105) != 1)
  {
    goto LABEL_64;
  }

  sub_1BD0DE53C(v103, &unk_1EBD39970);
  v93 = v154;
LABEL_78:
  if (*(v127 + v20[7]) != *(v124 + v20[7]) || *(v127 + v20[8]) != *(v124 + v20[8]))
  {
    goto LABEL_65;
  }

  sub_1BD91717C(v127, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v113 = v149;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v113 = sub_1BD4FFFCC(v113);
  }

  a3 = v122;
  result = sub_1BD91717C(v124, type metadata accessor for SEStorageUsageGroup.PassEntry);
  if (v96 < v113[2])
  {
    *(v113 + v148 + v155 + v20[8]) = 1;
    *v119 = v113;
    goto LABEL_90;
  }

LABEL_108:
  __break(1u);
  return result;
}

id sub_1BD9140F4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B80F0], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v11[0] = v8;
    v11[1] = v10;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD914264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v150 = a1;
  v176 = sub_1BE04AF64();
  v4 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v5);
  v171 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v139 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v173 = &v138 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v175, v13);
  v142 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v157 = &v138 - v17;
  v18 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18, v20);
  v143 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v159 = (&v138 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v188 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v194 = &v138 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v141 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v138 - v36;
  v179 = type metadata accessor for SEStorageUsageGroup(0);
  v168 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v38);
  v147 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v177 = &v138 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v180 = (&v138 - v45);
  v144 = type metadata accessor for SEStorageUsageCategory(0);
  v146 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v46);
  v161 = &v138 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D70);
  v48 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v49);
  v145 = (&v138 - v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D78);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v154 = &v138 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v153 = &v138 - v56;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v58 = 0;
  v59 = v199;
  v60 = *(v199 + 16);
  v152 = (v48 + 56);
  v151 = (v48 + 48);
  v165 = (v19 + 56);
  v178 = (v4 + 48);
  v163 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  v170 = (v4 + 32);
  v174 = (v4 + 8);
  v184 = v19;
  v140 = (v19 + 48);
  v61 = v37;
  v149 = v199;
  v148 = v60;
  v156 = a3;
  v162 = v37;
  v172 = v18;
  while (1)
  {
    v62 = v155;
    if (v58 == v60)
    {
      v63 = 1;
      v158 = v60;
      v64 = v154;
    }

    else
    {
      if ((v58 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (v58 >= *(v59 + 16))
      {
        goto LABEL_118;
      }

      v65 = v58 + 1;
      v66 = v59 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v58;
      v67 = *(v155 + 48);
      v68 = v145;
      *v145 = v58;
      sub_1BD917114(v66, v68 + v67, type metadata accessor for SEStorageUsageCategory);
      v69 = v68;
      v64 = v154;
      sub_1BD0DE204(v69, v154, &qword_1EBD58D70);
      v63 = 0;
      v158 = v65;
    }

    (*v152)(v64, v63, 1, v62);
    v70 = v153;
    sub_1BD0DE204(v64, v153, &qword_1EBD58D78);
    if ((*v151)(v70, 1, v62) == 1)
    {
LABEL_108:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      if ((v195 & 1) == 0)
      {
        v137 = sub_1BE048964();
        sub_1BD5EE954(v137, a3, 0, 0);
      }

      return result;
    }

    sub_1BD9171DC(v70 + *(v62 + 48), v161, type metadata accessor for SEStorageUsageCategory);
    v71 = v180;
    if (sub_1BE04B334())
    {
      v169 = *(v161 + *(v144 + 20));
      v167 = *(v169 + 16);
      if (v167)
      {
        break;
      }
    }

LABEL_2:
    result = sub_1BD91717C(v161, type metadata accessor for SEStorageUsageCategory);
    v59 = v149;
    v60 = v148;
    v58 = v158;
  }

  v160 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v166 = v169 + v160;
  result = swift_beginAccess();
  v72 = 0;
LABEL_15:
  if (v72 >= *(v169 + 16))
  {
    goto LABEL_114;
  }

  v191 = *(v168 + 72);
  sub_1BD917114(v166 + v191 * v72, v71, type metadata accessor for SEStorageUsageGroup);
  (*v165)(v61, 1, 1, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
  v73 = v188;

  if (v195)
  {
    goto LABEL_14;
  }

  v164 = v72;
  v74 = *(a3 + v163);
  v190 = v74[2];
  if (!v190)
  {
    goto LABEL_13;
  }

  v193 = *v180;
  v75 = *(v193 + 16);
  v189 = v74 + v160;
  result = sub_1BE048C84();
  v76 = 0;
  a3 = v157;
  v77 = v177;
  v186 = v75;
  v187 = v74;
  while (v76 < v74[2])
  {
    v185 = v76 * v191;
    sub_1BD917114(v189 + v76 * v191, v77, type metadata accessor for SEStorageUsageGroup);
    v78 = *v77;
    if (*(*v77 + 16) != v75)
    {
      goto LABEL_22;
    }

    v192 = v76;
    if (v75 && v78 != v193)
    {
      v79 = (*(v184 + 80) + 32) & ~*(v184 + 80);
      v183 = v78 + v79;
      v182 = v193 + v79;
      result = sub_1BD22F42C();
      v181 = result;
      v80 = 0;
      while (1)
      {
        v81 = v178;
        if (v80 >= *(v78 + 16))
        {
          goto LABEL_112;
        }

        v82 = *(v184 + 72) * v80;
        result = sub_1BD917114(v183 + v82, v194, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (v80 >= *(v193 + 16))
        {
          goto LABEL_113;
        }

        sub_1BD917114(v182 + v82, v73, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((sub_1BE053074() & 1) == 0)
        {
          goto LABEL_21;
        }

        v83 = *(v194 + 8);
        v84 = *(v73 + 8);
        v85 = *(v83 + 16);
        if (v85 != *(v84 + 16))
        {
          goto LABEL_21;
        }

        v86 = !v85 || v83 == v84;
        if (!v86)
        {
          break;
        }

LABEL_37:
        v87 = v18[6];
        v88 = *(v175 + 48);
        sub_1BD0DE19C(v194 + v87, a3, &unk_1EBD39970);
        sub_1BD0DE19C(v73 + v87, a3 + v88, &unk_1EBD39970);
        v89 = *v81;
        v90 = v176;
        if ((*v81)(a3, 1, v176) == 1)
        {
          if (v89(a3 + v88, 1, v90) != 1)
          {
            goto LABEL_20;
          }

          sub_1BD0DE53C(a3, &unk_1EBD39970);
        }

        else
        {
          v91 = a3;
          v92 = a3;
          v93 = v173;
          sub_1BD0DE19C(v91, v173, &unk_1EBD39970);
          if (v89(v92 + v88, 1, v90) == 1)
          {
            (*v174)(v93, v90);
            a3 = v92;
            v18 = v172;
LABEL_20:
            sub_1BD0DE53C(a3, &qword_1EBD3A750);
LABEL_21:
            sub_1BD91717C(v188, type metadata accessor for SEStorageUsageGroup.PassEntry);
            v73 = v188;
            sub_1BD91717C(v194, type metadata accessor for SEStorageUsageGroup.PassEntry);
            v77 = v177;
            v76 = v192;
            v75 = v186;
            v74 = v187;
            goto LABEL_22;
          }

          v94 = v171;
          (*v170)(v171, v92 + v88, v90);
          sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530]);
          v95 = sub_1BE052334();
          v96 = *v174;
          (*v174)(v94, v90);
          v96(v93, v90);
          sub_1BD0DE53C(v92, &unk_1EBD39970);
          a3 = v92;
          v18 = v172;
          v73 = v188;
          if ((v95 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (*(v194 + v18[7]) != *(v73 + v18[7]))
        {
          goto LABEL_21;
        }

        v97 = v18[8];
        v98 = v194;
        v99 = *(v194 + v97);
        v100 = *(v73 + v97);
        sub_1BD91717C(v73, type metadata accessor for SEStorageUsageGroup.PassEntry);
        result = sub_1BD91717C(v98, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v86 = v99 == v100;
        v77 = v177;
        v76 = v192;
        v75 = v186;
        v74 = v187;
        if (!v86)
        {
          goto LABEL_22;
        }

        if (++v80 == v186)
        {
          goto LABEL_55;
        }
      }

      v101 = (v83 + 40);
      v102 = (v84 + 40);
      while (v85)
      {
        v103 = *(v101 - 1) == *(v102 - 1) && *v101 == *v102;
        if (!v103 && (sub_1BE053B84() & 1) == 0)
        {
          goto LABEL_21;
        }

        v101 += 2;
        v102 += 2;
        if (!--v85)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

LABEL_55:
    sub_1BE04C164();
    sub_1BD917244(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    if (v195 == v197 && v196 == v198)
    {

      v74 = v187;
      v73 = v188;
      v75 = v186;
    }

    else
    {
      v104 = sub_1BE053B84();

      v74 = v187;
      v73 = v188;
      v75 = v186;
      if ((v104 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (*(v77 + *(v179 + 24)) == *(v180 + *(v179 + 24)) && *(v77 + *(v179 + 28)) == *(v180 + *(v179 + 28)))
    {

      result = sub_1BD91717C(v77, type metadata accessor for SEStorageUsageGroup);
      a3 = v156;
      v105 = *(v156 + v163);
      if (v76 >= *(v105 + 16))
      {
        goto LABEL_119;
      }

      v106 = v147;
      sub_1BD917114(v105 + v160 + v185, v147, type metadata accessor for SEStorageUsageGroup);
      v61 = v162;
      v107 = v141;
      sub_1BD0DE19C(v162, v141, &qword_1EBD46818);
      if ((*v140)(v107, 1, v18) != 1)
      {
        sub_1BD9171DC(v107, v159, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v112 = *v106;
        v113 = v143;
        v193 = *(*v106 + 16);
        if (!v193)
        {
LABEL_98:
          sub_1BD91717C(v159, type metadata accessor for SEStorageUsageGroup.PassEntry);
          a3 = v156;
          goto LABEL_99;
        }

        result = sub_1BD22F42C();
        v191 = result;
        v114 = 0;
        v115 = *v159;
        v183 = (*(v184 + 80) + 32) & ~*(v184 + 80);
        v189 = v112 + v183;
        v190 = v115;
        v187 = v112;
        while (2)
        {
          if (v114 >= v112[2])
          {
            goto LABEL_116;
          }

          v116 = *(v184 + 72) * v114;
          sub_1BD917114(v189 + v116, v113, type metadata accessor for SEStorageUsageGroup.PassEntry);
          result = sub_1BE053074();
          v117 = v178;
          if (result)
          {
            v118 = *(v113 + 8);
            v119 = v159[1];
            v120 = *(v118 + 16);
            if (v120 == *(v119 + 16))
            {
              if (v120)
              {
                v121 = v118 == v119;
              }

              else
              {
                v121 = 1;
              }

              if (!v121)
              {
                v130 = (v118 + 40);
                v131 = (v119 + 40);
                while (v120)
                {
                  result = *(v130 - 1);
                  if (result != *(v131 - 1) || *v130 != *v131)
                  {
                    result = sub_1BE053B84();
                    if ((result & 1) == 0)
                    {
                      goto LABEL_73;
                    }
                  }

                  v130 += 2;
                  v131 += 2;
                  if (!--v120)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_115;
              }

LABEL_82:
              v122 = v18[6];
              v123 = *(v175 + 48);
              v124 = v142;
              sub_1BD0DE19C(v113 + v122, v142, &unk_1EBD39970);
              sub_1BD0DE19C(v159 + v122, v124 + v123, &unk_1EBD39970);
              v125 = *v117;
              v126 = v176;
              if ((*v117)(v124, 1, v176) == 1)
              {
                if (v125(v124 + v123, 1, v126) == 1)
                {
                  sub_1BD0DE53C(v124, &unk_1EBD39970);
                  v113 = v143;
                  v106 = v147;
                  goto LABEL_87;
                }

LABEL_72:
                sub_1BD0DE53C(v124, &qword_1EBD3A750);
                v113 = v143;
                v106 = v147;
              }

              else
              {
                v127 = v139;
                sub_1BD0DE19C(v124, v139, &unk_1EBD39970);
                if (v125(v124 + v123, 1, v126) == 1)
                {
                  (*v174)(v127, v126);
                  goto LABEL_72;
                }

                v128 = v171;
                (*v170)(v171, v124 + v123, v126);
                sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530]);
                LODWORD(v186) = sub_1BE052334();
                v129 = *v174;
                (*v174)(v128, v126);
                v129(v127, v126);
                sub_1BD0DE53C(v124, &unk_1EBD39970);
                v113 = v143;
                v106 = v147;
                if (v186)
                {
LABEL_87:
                  if (*(v113 + v18[7]) == *(v159 + v18[7]) && *(v113 + v18[8]) == *(v159 + v18[8]))
                  {
                    sub_1BD91717C(v113, type metadata accessor for SEStorageUsageGroup.PassEntry);
                    v135 = v187;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v135 = sub_1BD4FFFCC(v135);
                    }

                    result = sub_1BD91717C(v159, type metadata accessor for SEStorageUsageGroup.PassEntry);
                    if (v114 < v135[2])
                    {
                      *(v135 + v183 + v116 + v18[8]) = 1;
                      *v106 = v135;
                      a3 = v156;
                      v61 = v162;
                      goto LABEL_99;
                    }

                    goto LABEL_121;
                  }
                }
              }
            }
          }

LABEL_73:
          result = sub_1BD91717C(v113, type metadata accessor for SEStorageUsageGroup.PassEntry);
          ++v114;
          v61 = v162;
          v112 = v187;
          if (v114 == v193)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      sub_1BD0DE53C(v107, &qword_1EBD46818);
      v108 = *v106;
      v109 = *(*v106 + 16);
      if (v109)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1BD4FFFCC(v108);
        }

        v110 = v108 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
        v111 = *(v184 + 72);
        do
        {
          v110[v18[8]] = 1;
          v110 += v111;
          --v109;
        }

        while (v109);
        *v106 = v108;
      }

LABEL_99:
      v133 = v163;
      swift_beginAccess();
      v134 = *(a3 + v133);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + v133) = v134;
      if ((result & 1) == 0)
      {
        result = sub_1BD4FFFB8(v134);
        v134 = result;
        *(a3 + v163) = result;
      }

      if (v192 >= v134[2])
      {
        goto LABEL_120;
      }

      sub_1BD5F0418(v106, v134 + v160 + v185);
      *(a3 + v163) = v134;
      swift_endAccess();
      sub_1BD91717C(v106, type metadata accessor for SEStorageUsageGroup);
LABEL_13:
      sub_1BD5E0C8C();
      v71 = v180;
      v72 = v164;
LABEL_14:
      ++v72;
      sub_1BD0DE53C(v61, &qword_1EBD46818);
      result = sub_1BD91717C(v71, type metadata accessor for SEStorageUsageGroup);
      if (v72 == v167)
      {
        goto LABEL_2;
      }

      goto LABEL_15;
    }

LABEL_22:
    result = sub_1BD91717C(v77, type metadata accessor for SEStorageUsageGroup);
    if (++v76 == v190)
    {

      a3 = v156;
      v61 = v162;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_1BD915A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BC8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8[-v4];
  v6 = v0[1];
  v9 = *v0;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BD0);
  sub_1BD915B98();
  sub_1BE04EC04();
  sub_1BD0DE4F4(&qword_1EBD58C58, &qword_1EBD58BC8);
  sub_1BE050E54();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_1BD915B98()
{
  result = qword_1EBD58BD8;
  if (!qword_1EBD58BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BE0);
    sub_1BD915C90();
    swift_getOpaqueTypeConformance2();
    sub_1BD917244(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BD8);
  }

  return result;
}

unint64_t sub_1BD915C90()
{
  result = qword_1EBD58BE8;
  if (!qword_1EBD58BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF0);
    type metadata accessor for SEStorageUsageCategory(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF8);
    sub_1BD915DD4();
    sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory);
    sub_1BD915F3C();
    swift_getOpaqueTypeConformance2();
    sub_1BD916074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BE8);
  }

  return result;
}

unint64_t sub_1BD915DD4()
{
  result = qword_1EBD58C00;
  if (!qword_1EBD58C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF0);
    sub_1BD915E8C();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C00);
  }

  return result;
}

unint64_t sub_1BD915E8C()
{
  result = qword_1EBD58C08;
  if (!qword_1EBD58C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58C10);
    sub_1BD0DE4F4(&qword_1EBD58C18, &qword_1EBD58C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C08);
  }

  return result;
}

unint64_t sub_1BD915F3C()
{
  result = qword_1EBD58C30;
  if (!qword_1EBD58C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF8);
    sub_1BD915FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C30);
  }

  return result;
}

unint64_t sub_1BD915FC0()
{
  result = qword_1EBD58C38;
  if (!qword_1EBD58C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58C40);
    sub_1BD917244(&qword_1EBD58C48, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C38);
  }

  return result;
}

unint64_t sub_1BD916074()
{
  result = qword_1EBD58C50;
  if (!qword_1EBD58C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C50);
  }

  return result;
}

uint64_t sub_1BD9160C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  type metadata accessor for SEStorageCleanupController();
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD58DF8, &qword_1EBD58DE8);
  sub_1BD0DDEBC();
  sub_1BD9173E4();
  sub_1BD12E194();
  sub_1BE050C64();
}

id sub_1BD916318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v92 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E08);
  MEMORY[0x1EEE9AC00](v89, v4);
  v91 = &v77 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
  MEMORY[0x1EEE9AC00](v90, v6);
  v84 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v77 - v10;
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v85 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v87 = *(v24 - 8);
  v88 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v82 = &v77 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v81 = &v77 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v83 = &v77 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v86 = &v77 - v39;
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = a2;
  sub_1BE04D8B4();

  v40 = *(v13 + 104);
  if (v97 == 1)
  {
    v40(v23, *MEMORY[0x1E69B80F8], v12);
    result = PKPassKitBundle();
    if (result)
    {
      v42 = result;
      v43 = sub_1BE04B6F4();
      v45 = v44;

      v80 = *(v13 + 8);
      v80(v23, v12);
      v95 = v43;
      v96 = v45;
      sub_1BE04E194();
      v46 = sub_1BE04E1D4();
      v47 = *(v46 - 8);
      v78 = *(v47 + 56);
      v77 = v47 + 56;
      v78(v11, 0, 1, v46);
      v48 = swift_allocObject();
      v49 = v93;
      *(v48 + 16) = v94;
      *(v48 + 24) = v49;
      v50 = sub_1BD0DDEBC();
      sub_1BE048964();
      v79 = v50;
      sub_1BE051724();
      v51 = v85;
      v40(v85, *MEMORY[0x1E69B80D0], v12);
      result = PKPassKitBundle();
      if (result)
      {
        v52 = result;
        v53 = v51;
        v54 = sub_1BE04B6F4();
        v56 = v55;

        v80(v53, v12);
        v95 = v54;
        v96 = v56;
        sub_1BE04E1B4();
        v78(v11, 0, 1, v46);
        v57 = swift_allocObject();
        *(v57 + 16) = v94;
        *(v57 + 24) = v49;
        sub_1BE048964();
        v58 = v83;
        sub_1BE051724();
        v60 = v86;
        v59 = v87;
        v61 = *(v87 + 16);
        v62 = v81;
        v63 = v88;
        v61(v81, v86, v88);
        v64 = v82;
        v61(v82, v58, v63);
        v65 = v84;
        v61(v84, v62, v63);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
        v61((v65 + *(v66 + 48)), v64, v63);
        v67 = *(v59 + 8);
        v67(v64, v63);
        v67(v62, v63);
        sub_1BD0DE19C(v65, v91, &qword_1EBD40D80);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v65, &qword_1EBD40D80);
        v67(v58, v63);
        return (v67)(v60, v63);
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v40(v16, *MEMORY[0x1E69B80D8], v12);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_9;
  }

  v68 = result;
  v69 = sub_1BE04B6F4();
  v71 = v70;

  (*(v13 + 8))(v16, v12);
  v95 = v69;
  v96 = v71;
  sub_1BE04E1B4();
  v72 = sub_1BE04E1D4();
  (*(*(v72 - 8) + 56))(v11, 0, 1, v72);
  v73 = swift_allocObject();
  v74 = v93;
  *(v73 + 16) = v94;
  *(v73 + 24) = v74;
  sub_1BD0DDEBC();
  sub_1BE048964();
  sub_1BE051724();
  v76 = v87;
  v75 = v88;
  (*(v87 + 16))(v91, v27, v88);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE04F9A4();
  return (*(v76 + 8))(v27, v75);
}

uint64_t sub_1BD916CB0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = v7;
  if (v7)
  {
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v2 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v2;
  a1[3] = v5;
  return result;
}

unint64_t sub_1BD916DA4()
{
  result = qword_1EBD58CC0;
  if (!qword_1EBD58CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58CB8);
    sub_1BD916E5C(&qword_1EBD43178, &qword_1EBD43170, &unk_1BE1054E0, sub_1BD0FF49C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58CC0);
  }

  return result;
}

uint64_t sub_1BD916E5C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD916F18()
{
  result = qword_1EBD58D20;
  if (!qword_1EBD58D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D18);
    sub_1BD916FD0();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D20);
  }

  return result;
}

unint64_t sub_1BD916FD0()
{
  result = qword_1EBD58D28;
  if (!qword_1EBD58D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D30);
    sub_1BD917054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D28);
  }

  return result;
}

unint64_t sub_1BD917054()
{
  result = qword_1EBD58D38;
  if (!qword_1EBD58D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D40);
    sub_1BD0DE4F4(&qword_1EBD58D48, &qword_1EBD58D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D38);
  }

  return result;
}

uint64_t sub_1BD917114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD91717C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD9171DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD917244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9172A4()
{
  v1 = *(type metadata accessor for SEStorageUsageCategory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1BD912D48(v0 + v2, v4, v5);
}

unint64_t sub_1BD917354()
{
  result = qword_1EBD58DE0;
  if (!qword_1EBD58DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58DE0);
  }

  return result;
}

unint64_t sub_1BD9173E4()
{
  result = qword_1EBD58E00;
  if (!qword_1EBD58E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58DF0);
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58E00);
  }

  return result;
}

void sub_1BD91752C(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  if (v4)
  {
    v5 = v3[4];
    v6 = v3[3];
    sub_1BD36A5EC(v4, v3[1], v3[2], v6, v5);
    sub_1BD91A048(a1, v4, v5);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD917644(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8);
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16);
  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24);
  v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32);
  *v7 = *a1;
  v13 = *(a1 + 8);
  v74 = *(a1 + 8);
  *(v7 + 8) = v13;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_1BD40FB5C(v9, v8, v10, v11, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v3;
  v15 = v5;
  sub_1BE048964();
  sub_1BD91A424(&v74, &v73);
  v16 = v4;
  sub_1BE04D8B4();

  v17 = v73;
  v18 = [v15 shippingPhone];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      v70 = v16;
      v71 = v4;
      v20 = v15;
      v21 = [v17 identifier];
      v22 = sub_1BE052434();
      v24 = v23;

      v25 = [v19 identifier];
      v26 = sub_1BE052434();
      v28 = v27;

      if (v22 == v26 && v24 == v28)
      {

        v15 = v20;
        goto LABEL_10;
      }

      v29 = sub_1BE053B84();

      v15 = v20;
      if (v29)
      {
LABEL_10:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        v30 = sub_1BE053074();

        v16 = v70;
        v4 = v71;
        if (v30)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v16 = v70;
      v4 = v71;
    }

    else
    {
      v19 = v17;
    }
  }

  else if (!v18)
  {
    goto LABEL_15;
  }

LABEL_14:
  v31 = [v15 shippingPhone];
  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v31;
  sub_1BE048964();
  sub_1BE04D8C4();
LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v32 = v73;
  if (v4 && (objc_opt_self(), (v33 = swift_dynamicCastObjCClass()) != 0))
  {
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B69E0;
    v36 = *MEMORY[0x1E69BB7C8];
    *(v35 + 32) = *MEMORY[0x1E69BB7C8];
    type metadata accessor for PKContactField(0);
    v72 = v16;
    v37 = v36;
    v38 = sub_1BE052724();

    v39 = [v34 clientErrors];
    if (v39)
    {
      v40 = v39;
      v41 = v16;
      v42 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v43 = sub_1BE052744();

      v44 = sub_1BD3F00D4(v43);
    }

    else
    {
      v41 = v16;
      v42 = v15;
      v44 = MEMORY[0x1E69E7CC0];
    }

    v46 = objc_opt_self();
    sub_1BD3F01E8(v44);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v47 = sub_1BE052724();

    v48 = [v46 pk:v38 FilteredShippingErrorsForContactFields:v47 errors:?];

    v49 = sub_1BE052744();
    v45 = sub_1BD3F00D4(v49);

    v15 = v42;
    v16 = v41;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v50 = sub_1BD3FE590(v32, v45);

  if ((v50 & 1) == 0)
  {
    if (v4 && (objc_opt_self(), (v51 = swift_dynamicCastObjCClass()) != 0))
    {
      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1BE0B69E0;
      v54 = *MEMORY[0x1E69BB7C8];
      *(v53 + 32) = *MEMORY[0x1E69BB7C8];
      type metadata accessor for PKContactField(0);
      v55 = v16;
      v56 = v54;
      v57 = sub_1BE052724();

      v58 = [v52 clientErrors];
      if (v58)
      {
        v59 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v60 = sub_1BE052744();

        v61 = sub_1BD3F00D4(v60);
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      v63 = objc_opt_self();
      sub_1BD3F01E8(v61);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v64 = sub_1BE052724();

      v65 = [v63 pk:v57 FilteredShippingErrorsForContactFields:v64 errors:?];

      v66 = sub_1BE052744();
      v62 = sub_1BD3F00D4(v66);
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v73 = v62;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v67 = v73;
  result = sub_1BD9193D4(v4, v15);
  if (v67 != (result & 1))
  {
    v69 = sub_1BD9193D4(v4, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v73) = v69 & 1;
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD917DB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD917E28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

id sub_1BD917E9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E80);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v64 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v2;
  sub_1BE04D8B4();

  v73[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8);
  sub_1BD0DE4F4(&qword_1EBD58E88, &qword_1EBD42FB8);
  sub_1BD919378();
  sub_1BE0522D4();

  (*(v5 + 16))(v13, v8, v4);
  v14 = *(v10 + 44);
  v15 = sub_1BD0DE4F4(&qword_1EBD58E98, &qword_1EBD58E78);
  sub_1BE052AD4();
  (*(v5 + 8))(v8, v4);
  v16 = v13;
  v17 = v14;
  v18 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  sub_1BE052B04();
  if (*(v16 + v14) == v73[0])
  {
    return sub_1BD91A3BC(v16);
  }

  v65 = (v67 + v18);
  v64 = *MEMORY[0x1E695C330];
  v68 = v4;
  v69 = v14;
  v70 = v16;
  v71 = v15;
  while (1)
  {
    v20 = sub_1BE052B34();
    v22 = *(v21 + 8);
    v23 = *(v21 + 24);
    v24 = *(v21 + 25);
    v25 = v22;
    v20(v73, 0);
    sub_1BE052B14();
    if ((v24 & 1) == 0)
    {
      break;
    }

    v72 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v22;
    sub_1BE04D8B4();

    v27 = v73[0];
    if (!v73[0])
    {
      goto LABEL_25;
    }

    v66 = v26;
    v28 = v26;
    v29 = [v27 identifier];
    v30 = sub_1BE052434();
    v32 = v31;

    v33 = [v28 identifier];
    v34 = sub_1BE052434();
    v36 = v35;

    if (v30 == v34 && v32 == v36)
    {
    }

    else
    {
      v55 = sub_1BE053B84();

      if ((v55 & 1) == 0)
      {

        v17 = v69;
        v16 = v70;
        goto LABEL_24;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v56 = sub_1BE053074();

    v17 = v69;
    v16 = v70;
    v26 = v66;
    if ((v56 & 1) == 0)
    {
      goto LABEL_25;
    }

    v57 = *v65;
    if (*v65)
    {
      v58 = v65[4];
      v59 = v65[3];
      sub_1BD36A5EC(*v65, v65[1], v65[2], v59, v58);
      sub_1BD91A048(0, v57, v58);

      v17 = v69;
      swift_unknownObjectRelease();

      v16 = v70;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v73[0] = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

LABEL_24:
    v26 = v66;
LABEL_25:
    v60 = [v26 recentContact];
    if (v60)
    {
      v61 = v60;
      result = [objc_opt_self() defaultInstance];
      if (!result)
      {
        goto LABEL_29;
      }

      v62 = result;
      v63 = v61;
      [v62 deleteRecent_];
    }

    else
    {
    }

LABEL_5:

    sub_1BE052B04();
    if (*(v16 + v17) == v73[0])
    {
      return sub_1BD91A3BC(v16);
    }
  }

  v37 = *v65;
  if (*v65)
  {
    v38 = v65[4];
    v40 = v65[2];
    v39 = v65[3];
    v41 = v65[1];
    v42 = v22;
    v43 = v22;
    sub_1BD36A5EC(v37, v41, v40, v39, v38);
    sub_1BD91A048(v22, v37, v38);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v73[0] = v22;
    v44 = v22;
    v45 = v22;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v46 = v22;
  v47 = v64;
  sub_1BD3EFFC8(MEMORY[0x1E69E7CC0]);
  v48 = sub_1BE04A0E4();
  v49 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v50 = sub_1BE052404();
  v51 = sub_1BE052724();

  v52 = [v49 initWithTitle:v50 preferences:v51 selectedIndex:v48 readOnly:0];

  if (!v52)
  {

    v17 = v69;
    v16 = v70;
    goto LABEL_5;
  }

  [v52 setContactKey_];

  result = [objc_opt_self() defaultInstance];
  v17 = v69;
  v16 = v70;
  if (result)
  {
    v53 = result;
    v54 = [result saveContactToCoreRecents:v22 preference:v52];

    [v22 setContactSource_];
    [v22 setRecentContact_];

    goto LABEL_5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BD9187F8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD918878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD9188F4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD918974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD9189E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD918B04, 0, 0);
}

uint64_t sub_1BD918B04()
{
  v1 = v0[16];
  v2 = v0[13];
  v15 = v0[15];
  v16 = v0[14];
  v3 = v0[11];
  v14 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_1BE052434();
  v8 = sub_1BD51D758(v6, v7, v4);

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  v0[6] = sub_1BD91A494;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_211;
  v10 = _Block_copy(v0 + 2);
  sub_1BE048964();

  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v10);
  _Block_release(v10);

  (*(v14 + 8))(v2, v3);
  (*(v15 + 8))(v1, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD918D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    sub_1BDA7AC7C(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD917E9C(v11);
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_1BE052434();
      v9 = v8;
      v10 = sub_1BE052404();

      [v9 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v3 != v6);
    v4 = v12;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD918FBC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__phoneNumbers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD58EA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__errors;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__isValid;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhoneNumbers()
{
  result = qword_1EBD58E50;
  if (!qword_1EBD58E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9191D8()
{
  sub_1BD0E4578(319, &unk_1EBD58E60, &qword_1EBD42FC8);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD58E70, &qword_1EBD42FB8);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD52750, &qword_1EBD459D8);
      if (v2 <= 0x3F)
      {
        sub_1BD1E1120();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1BD919378()
{
  result = qword_1EBD58E90;
  if (!qword_1EBD58E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58E90);
  }

  return result;
}

uint64_t sub_1BD9193D4(void *a1, void *a2)
{
  if (!a1 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_10;
    }

LABEL_6:
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  v7 = *MEMORY[0x1E69BB7C8];
  *(v6 + 32) = *MEMORY[0x1E69BB7C8];
  type metadata accessor for PKContactField(0);
  v8 = v7;
  v9 = a1;
  v10 = sub_1BE052724();

  v11 = [v5 clientErrors];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v13 = sub_1BE052744();

    v14 = sub_1BD3F00D4(v13);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = objc_opt_self();
  sub_1BD3F01E8(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  v19 = sub_1BE052724();

  v20 = [v18 pk:v10 FilteredShippingErrorsForContactFields:v19 errors:?];

  v21 = sub_1BE052744();
  v22 = sub_1BD3F00D4(v21);

  v15 = v22;
  if (!(v22 >> 62))
  {
    goto LABEL_6;
  }

LABEL_10:
  v23 = sub_1BE053704();

  if (v23)
  {
    return 0;
  }

LABEL_11:
  v24 = [a2 shippingPhone];
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  v26 = [v24 phoneNumbers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v27 = sub_1BE052744();

  if (!(v27 >> 62))
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_24:

    return 1;
  }

LABEL_14:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1BFB40900](0, v27);
LABEL_17:
    v29 = v28;

    v30 = [v29 value];

    if (v30)
    {
      v31 = [v30 digits];
      if (!v31)
      {
        sub_1BE052434();
        v31 = sub_1BE052404();
      }

      v32 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

      v33 = [a2 contactFormatValidator];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 phoneNumberIsValid:v32 forCountryCode:0];

        return v35;
      }
    }

    return 1;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v27 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1BD9197C0(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v76 = *(a1 + 16);
  v77 = *(a1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v71 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8);
  sub_1BE04D874();
  (*(v7 + 32))(v1 + v11, v10, v6);
  v12 = v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  v13 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_defaults;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (!result)
  {
    goto LABEL_39;
  }

  v15 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents;
  *(v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents) = result;
  v16 = MEMORY[0x1E69E7CC0];
  v78 = v1;
  v71 = v15;
  v72 = v13;
  v74 = v4;
  v75 = v3;
  if (v5)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BE0B69E0;
      v20 = *MEMORY[0x1E69BB7C8];
      *(v19 + 32) = *MEMORY[0x1E69BB7C8];
      type metadata accessor for PKContactField(0);
      v21 = v20;
      v22 = v5;
      v23 = sub_1BE052724();

      v24 = [v18 clientErrors];
      if (v24)
      {
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
        v26 = sub_1BE052744();

        v27 = sub_1BD3F00D4(v26);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v28 = objc_opt_self();
      sub_1BD3F01E8(v27);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
      v29 = sub_1BE052724();

      v30 = [v28 pk:v23 FilteredShippingErrorsForContactFields:v29 errors:?];

      v31 = sub_1BE052744();
      v16 = sub_1BD3F00D4(v31);
    }
  }

  swift_beginAccess();
  v82 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8);
  sub_1BE04D874();
  swift_endAccess();
  v32 = *(a1 + 32);
  v33 = sub_1BD9193D4(v5, v32);
  swift_beginAccess();
  LOBYTE(v82) = v33 & 1;
  sub_1BE04D874();
  swift_endAccess();
  v34 = *a1;
  v82 = *(a1 + 8);
  v35 = *v12;
  v36 = *(v12 + 8);
  v37 = *(v12 + 16);
  v38 = *(v12 + 24);
  v73 = *(v12 + 32);
  v39 = v74;
  *v12 = v75;
  *(v12 + 8) = v39;
  *(v12 + 16) = v76;
  *(v12 + 24) = v5;
  *(v12 + 32) = v77;
  v40 = v5;
  v41 = v34;
  v42 = v32;
  sub_1BE048964();
  sub_1BD91A424(&v82, &v81);
  sub_1BD40FB5C(v35, v36, v37, v38, v73);
  v43 = [v42 shippingPhone];
  if (!v43)
  {
    v44 = v78;
    v45 = [*(v78 + v71) meCard];
    v46 = [*(v44 + v72) defaultContactPhone];
    if (!v46)
    {
      v46 = v45;
    }

    [v42 setShippingPhone_];

    v43 = v45;
  }

  v47 = sub_1BE052434();
  v49 = v48;
  v50 = [v42 shippingPhone];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  v53 = v78;
  v54 = MEMORY[0x1E69E7CC0];

  v55 = sub_1BD51D758(v47, v49, v51);

  if (v55 >> 62)
  {
    v56 = sub_1BE053704();
    if (v56)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
LABEL_16:
      v81 = v54;
      result = sub_1BE0538E4();
      if ((v56 & 0x8000000000000000) == 0)
      {
        *&v77 = v42;
        v57 = 0;
        do
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1BFB40900](v57, v55);
          }

          else
          {
            v58 = *(v55 + 8 * v57 + 32);
          }

          v59 = v58;
          ++v57;
          sub_1BE052434();
          v60 = v59;
          v61 = sub_1BE052404();

          [v60 setValueSource_];

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        while (v56 != v57);

        v62 = v81;
        v53 = v78;
        v54 = MEMORY[0x1E69E7CC0];
        v42 = v77;
        goto LABEL_25;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v79 = v54;
  v80 = MEMORY[0x1E69E7CD0];
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = (v62 + 32);
    do
    {
      v65 = *v64;
      v66 = sub_1BD99F5F8(v65);
      v68 = sub_1BD2A5644(&v81, v66, v67);

      if (v68)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v64;
      --v63;
    }

    while (v63);
    v54 = v79;
  }

  swift_beginAccess();
  v80 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8);
  sub_1BE04D874();
  swift_endAccess();
  v69 = [v42 shippingPhone];
  if (!v69)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v81[2])
    {
      v69 = v81[4];
    }

    else
    {
      v69 = 0;
    }

    [v42 setShippingPhone_];
  }

  v70 = [v42 shippingPhone];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v70;
  sub_1BE048964();
  sub_1BE04D8C4();
  return v53;
}

void sub_1BD91A048(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Analytics.StateChange();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a3 shippingPhone];
  v16 = v15;
  if (!a1)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v15)
  {
    v33[0] = v10;
    v33[1] = v6;
    v34 = a2;
    v35 = a1;
    v17 = [v35 identifier];
    v18 = sub_1BE052434();
    v20 = v19;

    v21 = [v16 identifier];
    v22 = sub_1BE052434();
    v24 = v23;

    if (v18 == v22 && v20 == v24)
    {
    }

    else
    {
      v25 = sub_1BE053B84();

      if ((v25 & 1) == 0)
      {

        a2 = v34;
        v10 = v33[0];
        goto LABEL_15;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v26 = sub_1BE053074();

    a2 = v34;
    v10 = v33[0];
    if (v26)
    {
      v27 = v35;

      return;
    }
  }

  v28 = a1;
LABEL_15:
  sub_1BD99F5F8(a1);

LABEL_16:
  sub_1BE04D084();
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C54();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1BD026000, v29, v30, "Updating selected phone number", v31, 2u);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  v32 = a1;
  sub_1BD6B56B4(v9, 2);
  sub_1BD42D548(v9);
  [a2 didSelectShippingPhoneNumber_];
}

uint64_t sub_1BD91A3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD91A424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PKIdentityDataReleaseTransactionConfiguration.__allocating_init(documentType:elements:transactionSource:passName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v30 - v11;
  v13 = sub_1BE04DA84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v34 = v7;
  v22 = objc_allocWithZone(v7);
  sub_1BD7FFA38(a3);
  sub_1BE04DA34();

  if ((*(v14 + 48))(v12, 1, v13))
  {

    sub_1BD8010AC(v12);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v17, v12, v13);
    v24(v21, v17, v13);
    v24(&v22[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups], v21, v13);
    v25 = OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource;
    v26 = sub_1BE04DA24();
    v27 = MEMORY[0x1E6997D18];
    if (v31 != 2)
    {
      v27 = MEMORY[0x1E6997D20];
    }

    (*(*(v26 - 8) + 104))(&v22[v25], *v27, v26);
    v28 = &v22[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_passName];
    v29 = v33;
    *v28 = v32;
    *(v28 + 1) = v29;
    v35.receiver = v22;
    v35.super_class = v34;
    return objc_msgSendSuper2(&v35, sel_init);
  }
}

id PKIdentityDataReleaseTransactionConfiguration.init(documentType:elements:transactionSource:passName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_1BE04DA84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  sub_1BD7FFA38(a3);
  sub_1BE04DA34();

  if ((*(v13 + 48))(v11, 1, v12))
  {

    sub_1BD8010AC(v11);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v16, v11, v12);
    v22(v20, v16, v12);
    v22(&v6[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups], v20, v12);
    v23 = OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource;
    v24 = sub_1BE04DA24();
    v25 = MEMORY[0x1E6997D18];
    if (v29 != 2)
    {
      v25 = MEMORY[0x1E6997D20];
    }

    (*(*(v24 - 8) + 104))(&v6[v23], *v25, v24);
    v26 = &v6[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_passName];
    v27 = v31;
    *v26 = v30;
    *(v26 + 1) = v27;
    v33.receiver = v6;
    v33.super_class = ObjectType;
    return objc_msgSendSuper2(&v33, sel_init);
  }
}

id PKIdentityDataReleaseTransactionConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8);
  v6[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8);
  sub_1BD91B444();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v6);
}

uint64_t sub_1BD91AEE0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8);
  v8[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8);
  sub_1BD91B444();
  sub_1BE04FCE4();
  return MEMORY[0x1BFB3FD10](v8);
}

void (*PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return sub_1BD91B044;
}

void sub_1BD91B044(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4, v5);
    v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8);
    v3[4] = sub_1BD91B3E0();
    __swift_allocate_boxed_opaque_existential_1(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8);
    sub_1BD91B444();
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FD10](v3);
  }

  free(v3);
}

uint64_t sub_1BD91B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_1BE04DA24();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04DA84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0520D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    (*(v8 + 16))(v11, v18 + OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups, v7);
    (*(v3 + 16))(v6, v18 + OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource, v24);
    sub_1BE048C84();
    sub_1BE0520C4();
    v19 = v25;
    (*(v13 + 32))(v25, v16, v12);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v21 = v25;
  }

  return (*(v13 + 56))(v21, v20, 1, v12);
}

unint64_t sub_1BD91B3E0()
{
  result = qword_1EBD58EE0;
  if (!qword_1EBD58EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58EE0);
  }

  return result;
}

unint64_t sub_1BD91B444()
{
  result = qword_1EBD58EF0;
  if (!qword_1EBD58EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58EE8);
    sub_1BD91B9D4(&qword_1EBD58EF8, MEMORY[0x1E6997E48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58EF0);
  }

  return result;
}

id PKDataReleaseElementsTransactionCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PKDataReleaseElementsTransactionCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration] = 0;
  if (a3)
  {
    v7 = sub_1BE052404();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id PKDataReleaseElementsTransactionCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseElementsTransactionCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t type metadata accessor for PKIdentityDataReleaseTransactionConfiguration()
{
  result = qword_1EBD58F00;
  if (!qword_1EBD58F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD91B854()
{
  result = sub_1BE04DA84();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04DA24();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD91B988()
{
  result = qword_1EBD406D0;
  if (!qword_1EBD406D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD406D0);
  }

  return result;
}

uint64_t sub_1BD91B9D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD91BB08(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v30 = v1;
  v3 = sub_1BD1877FC(v1, KeyPath);

  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (2)
  {
    v7 = v4;
    if (v4)
    {
      v8 = "fer";
      switch(*v5)
      {
        case 1:
          goto LABEL_6;
        case 5:
          v8 = "Precursor Education";
LABEL_6:
          if (0x80000001BE118230 != (v8 | 0x8000000000000000))
          {
            goto LABEL_2;
          }

          break;
        default:
LABEL_2:
          v6 = sub_1BE053B84();

          ++v5;
          v4 = v7 - 1;
          if ((v6 & 1) == 0)
          {
            continue;
          }

          goto LABEL_8;
      }
    }

    break;
  }

LABEL_8:

  v9 = swift_getKeyPath();
  v10 = sub_1BD18781C(v30, v9);

  if (!v7 && (v10 & 1) != 0)
  {
    v11 = "not grouped pass";
    v12 = 0xD000000000000019;
LABEL_11:
    a1(v12, v11 | 0x8000000000000000, 0, 1);
    return;
  }

  v13 = *&v30[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController];
  if (v13)
  {
    v14 = *&v30[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController];
    v32 = v14;
  }

  else
  {
    v15 = sub_1BD91C044(v30);
    if (!v15)
    {
      v11 = "ExpressPassSelectionFlowItem";
      v12 = 0xD00000000000001FLL;
      goto LABEL_11;
    }

    v32 = v15;
    v14 = v15;
    v13 = 0;
  }

  v16 = v13;
  v17 = sub_1BE04BC84();
  v18 = [v17 uniqueID];

  v19 = [v14 groupIndexForPassUniqueID_];
  v20 = [v14 groupAtIndex_];
  if (v20 && (v21 = v20, v22 = [v20 passes], v21, v22) && (sub_1BD0E5E8C(0, &qword_1EBD40650), v23 = sub_1BE052744(), v22, v24 = sub_1BD3FCF30(v23), , v24))
  {
    *&v30[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass] = v24;
    sub_1BE048C84();

    if (v24 >> 62)
    {
      v25 = sub_1BE053704();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 > 1)
    {
      if (!v7)
      {
        v26 = 0;
        v27 = 0;
LABEL_32:
        v29 = 0;
        goto LABEL_26;
      }

LABEL_31:
      v26 = 0x6E65206775626564;
      v27 = 0xED000064656C6261;
      goto LABEL_32;
    }

    if (v7)
    {
      goto LABEL_31;
    }

    v28 = "no passes found in group";
    v26 = 0xD000000000000010;
  }

  else
  {
    v28 = "could not get groups controller";
    v26 = 0xD000000000000018;
  }

  v27 = v28 | 0x8000000000000000;
  v29 = 1;
LABEL_26:
  a1(v26, v27, 0, v29);
}

id sub_1BD91C044(uint64_t a1)
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v7 = sub_1BE04B8F4();
  (*(v3 + 8))(v6, v2);
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69B88E0]) initWithPassLibrary_];
  v9 = v8;
  [v9 loadGroupsSynchronously];

  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController);
  *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController) = v8;
  v11 = v9;

  return v8;
}

id sub_1BD91C18C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BD14();
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController);
  sub_1BE048C84();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v9 = objc_allocWithZone(PKShareableCredentialsExpressPassSelectionViewController);
  sub_1BD0E5E8C(0, &qword_1EBD456C0);
  v10 = sub_1BE052724();

  v11 = [v9 initWithPasses:v10 groupsController:v7 context:v8 delegate:v1];

  if (v11)
  {
    sub_1BE052434();
    v12 = v11;
    v13 = sub_1BE04BB74();

    [v12 setReporter_];
  }

  return v11;
}

uint64_t sub_1BD91C388()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD91C3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD91C564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_identifier];
  *v8 = 0xD00000000000001CLL;
  *(v8 + 1) = 0x80000001BE140580;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_context] = a1;
  sub_1BE048964();
  v9 = sub_1BE04BB84();
  v10 = *&v3[v7];
  *&v3[v7] = v9;

  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_provisionedPasses] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass] = MEMORY[0x1E69E7CC0];
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1BD91C67C(unint64_t a1, uint64_t *a2)
{
  v22 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 uniqueID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE052434();
        v13 = v12;

        if (*(*a2 + 16) && (sub_1BD148F70(v11, v13), (v14 & 1) != 0))
        {
          v15 = sub_1BD148F70(v11, v13);
          v17 = v16;

          if (v17)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v19 = *a2;
            v21 = *a2;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1BD50818C();
              v19 = v21;
            }

            sub_1BD509760(v15, v19);
            *a2 = v19;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }
      }

      else
      {
      }

      if (v8 == i)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD91C894(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE04BD44();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_27:
    v5 = sub_1BE053704();
    v37 = v2;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v1;
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v39 = v4 & 0xFFFFFFFFFFFFFF8;
      v40 = v4 & 0xC000000000000001;
      v7 = MEMORY[0x1E69E7CC8];
      v38 = v4;
      while (1)
      {
        if (v40)
        {
          v10 = MEMORY[0x1BFB40900](v6, v4);
        }

        else
        {
          if (v6 >= *(v39 + 16))
          {
            goto LABEL_24;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v2 = v10;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v4 = v5;
        v12 = [v10 uniqueID];
        if (!v12)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          result = sub_1BE053C14();
          __break(1u);
          return result;
        }

        v13 = v12;
        v14 = sub_1BE052434();
        v16 = v15;

        v17 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v7;
        v20 = sub_1BD148F70(v14, v16);
        v21 = v7[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_25;
        }

        v2 = v19;
        if (v7[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BD50818C();
            if (v2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1BD503DB8(v23, isUniquelyReferenced_nonNull_native);
          v24 = sub_1BD148F70(v14, v16);
          if ((v2 & 1) != (v25 & 1))
          {
            goto LABEL_41;
          }

          v20 = v24;
          if (v2)
          {
LABEL_4:

            v7 = v41;
            v8 = v41[7];
            v2 = *(v8 + 8 * v20);
            *(v8 + 8 * v20) = v17;

            goto LABEL_5;
          }
        }

        v7 = v41;
        v41[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v7[6] + 16 * v20);
        *v26 = v14;
        v26[1] = v16;
        *(v7[7] + 8 * v20) = v17;

        v27 = v7[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        v7[2] = v29;
LABEL_5:
        ++v6;
        v5 = v4;
        v9 = v11 == v4;
        v4 = v38;
        if (v9)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC8];
LABEL_29:

  v41 = v7;
  if (!a1)
  {
    goto LABEL_40;
  }

  v30 = sub_1BE048C84();
  sub_1BD91C67C(v30, &v41);

  if (v41[2])
  {
    v31 = sub_1BE048C84();
    sub_1BDA7AD84(v31);
  }

  sub_1BE04BD54();

  v32 = v37 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v37, &off_1F3BC5FC0, ObjectType, v33);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD91CC00()
{

  sub_1BD0D4534(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_1BD91CC74(uint64_t a1)
{
  v94[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v87[-v10];
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v14);
  v18 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    return 0;
  }

  v91 = v4;
  v89 = v15;
  v20 = *(v1 + 24);
  v21 = [v20 setupProductMethodsOfType_];
  if (v21)
  {
    sub_1BD0E5E8C(0, &qword_1EBD48A90);
    v22 = sub_1BE052744();

    v21 = sub_1BD3FCF18(v22);
  }

  result = [v20 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_87;
  }

  v23 = result;
  v24 = [result type];

  if (v24 == 4)
  {
    if (!v21)
    {
LABEL_63:
      sub_1BE04D0E4();
      v82 = sub_1BE04D204();
      v83 = sub_1BE052C54();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1BD026000, v82, v83, "Unable to find suitable flow item for eMoney product", v84, 2u);
        MEMORY[0x1BFB45F20](v84, -1, -1);
      }

      (*(v91 + 8))(v11, v3);
      return 0;
    }

    v24 = v20;
    if (v21 >> 62)
    {
      if (sub_1BE053704() == 1 && sub_1BE053704())
      {
        goto LABEL_11;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_11:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1BFB40900](0, v21);
        goto LABEL_14;
      }

      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v21 + 32);
LABEL_14:
        v7 = v25;
        v26 = [v25 appLaunchURL];
        if (!v26)
        {

          goto LABEL_53;
        }

        v90 = v1;
        v27 = v26;
        sub_1BE04A9F4();

        result = [objc_opt_self() defaultWorkspace];
        if (result)
        {
          v28 = result;

          v29 = sub_1BE04A9C4();
          v94[0] = 0;
          v30 = [v28 isApplicationAvailableToOpenURL:v29 error:v94];

          v31 = v94[0];
          if (v30)
          {
            v32 = *(v90 + 16);
            v33 = type metadata accessor for PaymentSetupOpenAppFlowItem();
            v34 = objc_allocWithZone(v33);
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v35 = &v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_identifier];
            *v35 = 0x467070416E65704FLL;
            *(v35 + 1) = 0xEF6D657449776F6CLL;
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_context] = v32;
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_product] = v20;
            *&v34[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_inApp] = v7;
            v92.receiver = v34;
            v92.super_class = v33;
            v36 = v31;
            sub_1BE048964();
            v37 = v20;
            v38 = objc_msgSendSuper2(&v92, sel_init);
            (*(v13 + 1))(v18, v89);
            return v38;
          }

          v75 = v94[0];
          v76 = sub_1BE04A854();

          v20 = v24;
          swift_willThrow();

          (*(v13 + 1))(v18, v89);
LABEL_53:
          v77 = [v7 associatedStoreIdentifiers];
          if (!v77)
          {
LABEL_59:

            goto LABEL_63;
          }

          v78 = v77;
          sub_1BD0E5E8C(0, &qword_1EBD3D270);
          v79 = sub_1BE052744();

          if (!(v79 >> 62))
          {
            v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_56;
          }

LABEL_78:
          v80 = sub_1BE053704();
          v20 = v24;
LABEL_56:

          if (v80)
          {
            objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
            v81 = v20;
            v72 = sub_1BE048964();
            v73 = v81;
            v74 = v7;
            return sub_1BD9DC084(v72, v73, v74);
          }

          goto LABEL_59;
        }

LABEL_87:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_63;
  }

  v39 = [v20 setupProductMethodsOfType_];
  v11 = v39;
  if (v39)
  {
  }

  v40 = [v20 displayName];
  v90 = v1;
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BE052434();
    v44 = v43;
  }

  else
  {
    v44 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
  }

  sub_1BE04D0E4();
  sub_1BE048C84();
  v45 = sub_1BE04D204();
  v46 = sub_1BE052C54();

  if (os_log_type_enabled(v45, v46))
  {
    v88 = v11 != 0;
    v24 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v89 = v20;
    v48 = v47;
    v94[0] = v47;
    *v24 = 136446722;
    v49 = sub_1BD123690(v42, v44, v94);

    *(v24 + 4) = v49;
    *(v24 + 6) = 1026;
    *(v24 + 14) = v88;
    *(v24 + 9) = 1026;
    *(v24 + 5) = v21 != 0;
    _os_log_impl(&dword_1BD026000, v45, v46, "Selected bank: %{public}s; Camera capture support: %{BOOL,public}d; In-App Support: %{BOOL,public}d", v24, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v50 = v48;
    v20 = v89;
    MEMORY[0x1BFB45F20](v50, -1, -1);
    MEMORY[0x1BFB45F20](v24, -1, -1);
  }

  else
  {
  }

  (*(v91 + 8))(v7, v3);
  v18 = v90;
  if (!v21)
  {
    if (v11)
    {
      v63 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
      v64 = sub_1BE048964();
      return sub_1BD87126C(v64, 0, 0);
    }

    return 0;
  }

  sub_1BE048C84();
  v13 = v20;
  v51 = [v20 setupProductMethodsOfType_];
  if (v51)
  {
    v52 = v51;
    sub_1BD0E5E8C(0, &qword_1EBD48A90);
    v53 = sub_1BE052744();

    v1 = sub_1BD3FCF24(v53);

    if (v1)
    {
      v3 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!(v21 >> 62))
      {
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_80;
        }

        goto LABEL_31;
      }

LABEL_74:
      if (sub_1BE053704() != 1)
      {
        goto LABEL_80;
      }

LABEL_31:
      if (v1 >> 62)
      {
        if (sub_1BE053704() == 1)
        {
LABEL_33:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1BFB40900](0, v21);
          }

          else
          {
            if (!*(v3 + 16))
            {
              __break(1u);
              goto LABEL_85;
            }

            v54 = *(v21 + 32);
          }

          v55 = v54;

          if ((v1 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x1BFB40900](0, v1);
            goto LABEL_39;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v1 + 32);
LABEL_39:
            v57 = v56;

            v58 = *(v18 + 2);
            v59 = type metadata accessor for PaymentSetupAppDisambiguationFlowItem();
            v60 = objc_allocWithZone(v59);
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_linkedApplication] = 0;
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v61 = &v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_identifier];
            *v61 = 0xD000000000000019;
            *(v61 + 1) = 0x80000001BE1406A0;
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_context] = v58;
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product] = v13;
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp] = v55;
            *&v60[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_cameraCapture] = v57;
            v93.receiver = v60;
            v93.super_class = v59;
            v62 = v13;
            sub_1BE048964();
            return objc_msgSendSuper2(&v93, sel_init);
          }

LABEL_85:
          __break(1u);
        }
      }

      else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_33;
      }

LABEL_80:

      goto LABEL_81;
    }
  }

  else
  {
  }

  if (v21 >> 62)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      v3 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v3 = v21;
    }

    if (sub_1BE053704() != 1)
    {
      goto LABEL_81;
    }

    v65 = *(v18 + 2);
    if (!sub_1BE053704())
    {
      v70 = v13;
      v85 = v13;
      sub_1BE048964();

      v69 = 0;
      goto LABEL_50;
    }

LABEL_46:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v86 = v13;
      sub_1BE048964();
      v68 = MEMORY[0x1BFB40900](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v66 = *(v21 + 32);
      v67 = v13;
      sub_1BE048964();
      v68 = v66;
    }

    v69 = v68;

    v70 = v13;
LABEL_50:
    v71 = objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
    v72 = v65;
    v73 = v70;
    v74 = v69;
    return sub_1BD9DC084(v72, v73, v74);
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    v65 = *(v18 + 2);
    goto LABEL_46;
  }

LABEL_81:

  return 0;
}

uint64_t PeerPaymentGroupRecipientPickerModel.__allocating_init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  PeerPaymentGroupRecipientPickerModel.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1BD91D868@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t sub_1BD91D940()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD91DA04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1BE053B84() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD91DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1BE048C84();
}

void (*sub_1BD91DBC4(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BE04B5B4();

  v4[7] = sub_1BD91D818();
  return sub_1BD91DCFC;
}

void sub_1BD91DCFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BE04B5A4();

  free(v1);
}

uint64_t sub_1BD91DD94()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v1 = *(v0 + 32);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD91DE44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_1BE048C84();
}

uint64_t keypath_setTm_2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

void sub_1BD91DF50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1BE053B84() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;

    sub_1BD91EACC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
  }
}

void *sub_1BD91E0B4()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1BD91E15C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1BD91E214(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD91E244(v1);
}

void sub_1BD91E244(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1BD91E424()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  return *(v0 + 64);
}

uint64_t sub_1BD91E4C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1BD91E594(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
  }

  return result;
}

uint64_t PeerPaymentGroupRecipient.__allocating_init(recipient:)(void *a1)
{
  swift_allocObject();
  sub_1BD92081C(a1);
  v3 = v2;

  return v3;
}

uint64_t PeerPaymentGroupRecipient.init(recipient:)(void *a1)
{
  sub_1BD92081C(a1);
  v3 = v2;

  return v3;
}

void sub_1BD91E714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = v16;
    v25 = v15;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v19 = a1;
    v20 = sub_1BE052D54();
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = v19;
    v21[4] = a3;
    v21[5] = a4;
    aBlock[4] = sub_1BD920FE4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_104_2;
    v22 = _Block_copy(aBlock);
    v23 = v19;
    sub_1BE048964();
    sub_1BE048C84();

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD920AD0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v18, v12, v22);
    _Block_release(v22);

    (*(v9 + 8))(v12, v8);
    (*(v24 + 8))(v18, v25);
  }
}

void sub_1BD91EA10(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1BD91E244(a2);
  v4 = objc_opt_self();
  v5 = sub_1BE052404();
  v6 = [v4 displayNameForCounterpartHandle:v5 contact:v3];

  if (v6)
  {
    v7 = sub_1BE052434();
    v9 = v8;

    sub_1BD91DF50(v7, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD91EACC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  sub_1BE048C84();
  v2 = sub_1BE052404();

  v3 = PKIsEmailAddress();

  if (!v3)
  {
    swift_getKeyPath();
    sub_1BE04B594();

    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    sub_1BE048C84();
    v6 = sub_1BD961028(v4, v5);
    v8 = v7;

    if (v8)
    {
      if (v6 == 43 && v8 == 0xE100000000000000)
      {

        goto LABEL_9;
      }

      v9 = sub_1BE053B84();

      if (v9)
      {
LABEL_9:
        if (*(v1 + 64) == 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    if (!*(v1 + 64))
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(v1 + 64) == 2)
  {
    return;
  }

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v11);
  sub_1BE04B584();
}

uint64_t PeerPaymentGroupRecipient.deinit()
{

  v1 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeerPaymentGroupRecipient.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD91EEF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
  return sub_1BE048C84();
}

uint64_t PeerPaymentGroupRecipientPickerModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD91F048@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1BD91F128@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  *a1 = *(v1 + 40);
  return result;
}

unsigned __int8 *sub_1BD91F1D0(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + 40))
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD91F2E8()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BD91F3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  *a2 = *(v3 + 64);
  return sub_1BE048964();
}

uint64_t sub_1BD91F480()
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  return sub_1BE048964();
}

uint64_t sub_1BD91F524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B584();
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE048964();
  sub_1BE04B594();

  swift_beginAccess();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  swift_beginAccess();
  if (v6 != *(a1 + 16) || v5 != *(a1 + 24))
  {
    v10 = sub_1BE053B84();

    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  *(v2 + 64) = a1;
}

uint64_t PeerPaymentGroupRecipientPickerModel.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 64) = 0;
  sub_1BE04B5C4();
  if (a1 >> 62)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v14);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v9 != v12);

    v15 = v26;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v5[2] = v15;
  if (!(a2 >> 62))
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_23:

    v20 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v5[3] = v20;
    v5[4] = a3;
    v5[6] = a4;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v22);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
    v23 = a3;
    v24 = a4;
    sub_1BE04B584();

    swift_unknownObjectRelease();
    return v5;
  }

  v16 = sub_1BE053704();
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_14:
  result = sub_1BE0538E4();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB40900](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v19);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v16 != v17);

    v20 = v10;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BD91FB38(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v49[0] = v1;
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();

  if ((*(v1 + 40) & 1) == 0)
  {
    [*(v1 + 48) selectIdentifiedRecipient_];
    v4 = sub_1BE048964();
    sub_1BD91F524(v4);
    if (*(v1 + 40) == 1)
    {
      *(v1 + 40) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v6);
      v49[0] = v1;
      sub_1BE04B584();
    }

    swift_getKeyPath();
    v49[0] = v1;
    sub_1BE04B594();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_allocObject();
      swift_weakInit();
      v49[4] = sub_1BD920B58;
      v49[5] = v9;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 1107296256;
      v49[2] = sub_1BD3F08C0;
      v49[3] = &block_descriptor_212;
      v10 = _Block_copy(v49);

      [v8 handleAction:10 sender:v2 completion:v10];
      swift_unknownObjectRelease();
      _Block_release(v10);
    }
  }

  swift_getKeyPath();
  v49[0] = v2;
  sub_1BE04B594();

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v13 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  v12 = [v11 analyticsMessagesContext];
  swift_unknownObjectRelease();
  v13 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  if (!v12)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v14 = v12;

  v49[0] = 0;
  v15 = v14;
  sub_1BE052234();

  v13 = v49[0];
  if (!v49[0])
  {
    v13 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

LABEL_14:
  swift_getKeyPath();
  v49[0] = v2;
  sub_1BE04B594();

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = [v16 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v17)
    {
      *&v51 = sub_1BE052434();
      *(&v51 + 1) = v18;
      v19 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v52 = v19;
      *&v51 = 48;
      *(&v51 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[7] = v13;
      sub_1BD1DAFB0(v50, v49, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v49);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v22 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v23 = sub_1BE052434();
  v24 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v23;
  *(inited + 48) = v25;
  v26 = *v24;
  *(inited + 56) = *v24;
  v27 = sub_1BE052434();
  v28 = MEMORY[0x1E69BA680];
  *(inited + 64) = v27;
  *(inited + 72) = v29;
  v30 = *v28;
  *(inited + 80) = *v28;
  v31 = sub_1BE052434();
  v32 = MEMORY[0x1E69BA440];
  *(inited + 88) = v31;
  *(inited + 96) = v33;
  v34 = *v32;
  *(inited + 104) = *v32;
  v35 = sub_1BE052434();
  v36 = MEMORY[0x1E69BAFB0];
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  v38 = *v36;
  *(inited + 128) = *v36;
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v39;
  v40 = v22;
  v41 = v26;
  v42 = v30;
  v43 = v34;
  v44 = v38;
  v45 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v46 = objc_opt_self();
  sub_1BD1A8C44(v45);

  v47 = sub_1BE052224();

  v48 = sub_1BE052224();

  [v46 reportAppleCashEvent:v47 withMessagesContext:v48];
}

uint64_t sub_1BD920150(char a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1BD920F90;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_90_2;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD920AD0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1BD920420(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 1) == 0)
    {
      if (*(result + 40))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v5);
        sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel);
        sub_1BE04B584();
      }

      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t PeerPaymentGroupRecipientPickerModel.deinit()
{

  sub_1BD0D4534(v0 + 56);

  v1 = OBJC_IVAR____TtC9PassKitUI36PeerPaymentGroupRecipientPickerModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeerPaymentGroupRecipientPickerModel.__deallocating_deinit()
{

  sub_1BD0D4534(v0 + 56);

  v1 = OBJC_IVAR____TtC9PassKitUI36PeerPaymentGroupRecipientPickerModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9PassKitUI25PeerPaymentGroupRecipientC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient);
  sub_1BE04B594();

  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();

  swift_beginAccess();
  if (v5 == *(a2 + 16) && v4 == *(a2 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1BE053B84();
  }

  return v6 & 1;
}

void sub_1BD92081C(void *a1)
{
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  sub_1BE04B5C4();
  v4 = [a1 normalizedAddress];
  if (!v4)
  {
    __break(1u);
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v1 = v4;
  v5 = sub_1BE052434();
  v7 = v6;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  sub_1BE048C84();
  v8 = [a1 displayName];
  if (!v8)
  {
    v8 = [objc_opt_self() displayNameForCounterpartHandle:v1 contact:0];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v9 = v8;
  v10 = sub_1BE052434();
  v12 = v11;

  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  *(v2 + 56) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  v15 = [v13 defaultContactResolver];
  if (!v15)
  {

LABEL_10:

    goto LABEL_11;
  }

  v16 = v15;
  if (([v15 hasCachedResultForHandle_] & 1) == 0)
  {
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = v5;
    v23[4] = v7;
    v25[4] = sub_1BD920FD8;
    v25[5] = v23;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1BD20815C;
    v25[3] = &block_descriptor_98_2;
    v24 = _Block_copy(v25);
    sub_1BE048964();

    [v16 contactForHandle:v1 withCompletion:v24];

    _Block_release(v24);
    goto LABEL_10;
  }

  v17 = [v16 contactForHandle_];
  v18 = v17;
  sub_1BD91E244(v17);
  v19 = [objc_opt_self() displayNameForCounterpartHandle:v1 contact:v18];

  if (v19)
  {

    v20 = sub_1BE052434();
    v22 = v21;

    sub_1BD91DF50(v20, v22);
LABEL_11:
    sub_1BD91EACC();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1BD920AD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD920B64()
{
  result = qword_1EBD58F70;
  if (!qword_1EBD58F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58F70);
  }

  return result;
}

uint64_t sub_1BD920BC0()
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD920D20()
{
  result = sub_1BE04B5D4();
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

unint64_t sub_1BD920EDC()
{
  result = qword_1EBD58FA8;
  if (!qword_1EBD58FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FA8);
  }

  return result;
}

void sub_1BD920F40()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  sub_1BE048C84();

  sub_1BD91EACC();
}

uint64_t sub_1BD920F9C()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
  sub_1BE048964();
}

uint64_t sub_1BD921024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v27 = v4;
  }

  else
  {
    v5 = [objc_opt_self() systemGray2Color];
    v27 = sub_1BE0511C4();
  }

  v29 = *(a1 + 32);
  v30 = v29;
  sub_1BE048964();
  sub_1BD206260(&v30, v28);
  sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  sub_1BE050384();
  v11 = sub_1BE050544();
  v13 = v12;
  v15 = v14;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  v16 = sub_1BE0505F4();
  v18 = v17;
  LOBYTE(v8) = v19;
  sub_1BD0DDF10(v11, v13, v15 & 1);

  *&v29 = sub_1BE051424();
  v20 = sub_1BE050574();
  v22 = v21;
  LOBYTE(v13) = v23;
  v25 = v24;
  sub_1BD0DDF10(v16, v18, v8 & 1);

  *a2 = v27;
  *(a2 + 8) = 256;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v13 & 1;
  *(a2 + 40) = v25;
  sub_1BE048964();
  sub_1BD0D7F18(v20, v22, v13 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v20, v22, v13 & 1);
}

uint64_t sub_1BD92123C()
{
  v1 = v0[1];
  v15[0] = *v0;
  v15[1] = v1;
  v15[2] = v0[2];
  v2 = sub_1BE051CD4();
  v4 = v3;
  sub_1BD921024(v15, &v16);
  v5 = v16;
  v6 = BYTE8(v16);
  v7 = BYTE9(v16);
  v8 = v17;
  v9 = v18;
  v10 = *(&v18 + 1);
  sub_1BE048964();
  sub_1BD0D7F18(v8, *(&v8 + 1), v9);
  sub_1BE048C84();

  sub_1BD0DDF10(v8, *(&v8 + 1), v9);

  *&v12 = v2;
  *(&v12 + 1) = v4;
  *&v13 = v5;
  BYTE8(v13) = v6;
  BYTE9(v13) = v7;
  LOBYTE(v14) = v9;
  *(&v14 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59368);
  sub_1BD0DE4F4(&qword_1EBD59370, &qword_1EBD59368);
  sub_1BE050A24();
  v16 = v12;
  v17 = v13;
  v18 = v8;
  v19 = v14;
  return sub_1BD0DE53C(&v16, &qword_1EBD59368);
}

uint64_t sub_1BD9213B4()
{
  sub_1BE053D04();
  sub_1BE052524();
  v1 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0]);
  sub_1BE052294();
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD9214C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v12 - v6);
  sub_1BD0DE19C(v2, &v12 - v6, &qword_1EBD59178);
  v8 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = sub_1BD0DE53C(v7, &qword_1EBD59178);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *v7;
    v11 = v7[1];
    sub_1BE048C84();
    result = sub_1BD935C74(v7, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}