uint64_t sub_1BD345ABC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428E0);
  v60 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v61 = &v50 - v4;
  v5 = type metadata accessor for PaymentSummarySheet();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428E8);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v10);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - v14;
  v55 = sub_1BE051994();
  v16 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - v22;
  v24 = v1 + *(v6 + 36);
  v25 = *(v24 + *(_s14PaymentSummaryVMa() + 48));
  if (*(v25 + 16))
  {
    v26 = v23;
    v27 = v7;
    v28 = v26;
    v52 = v26;
    sub_1BE051984();
    v29 = *(v25 + 16);
    v62 = 0;
    v63 = v29;
    KeyPath = swift_getKeyPath();
    sub_1BD34A0BC(v1, &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSummarySheet);
    v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v31 = swift_allocObject();
    sub_1BD34A148(&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for PaymentSummarySheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428F0);
    sub_1BD2D5394();
    v54 = v2;
    sub_1BD0DE4F4(&qword_1EBD428F8, &qword_1EBD428F0);
    v32 = v15;
    v50 = v15;
    sub_1BE0519C4();
    v33 = *(v16 + 16);
    v34 = v19;
    v35 = v19;
    v51 = v19;
    v36 = v55;
    v33(v35, v28, v55);
    v38 = v56;
    v37 = v57;
    v39 = *(v56 + 16);
    v40 = v32;
    v41 = v58;
    v39(v57, v40, v58);
    v33(v61, v34, v36);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42900);
    v43 = v61;
    v39(&v61[*(v42 + 48)], v37, v41);
    v44 = *(v38 + 8);
    v44(v50, v41);
    v45 = *(v16 + 8);
    v45(v52, v36);
    v44(v37, v41);
    v45(v51, v36);
    v46 = v59;
    sub_1BD0DE204(v43, v59, &qword_1EBD428E0);
    return (*(v60 + 56))(v46, 0, 1, v54);
  }

  else
  {
    v48 = v59;
    v49 = *(v60 + 56);

    return v49(v48, 1, 1, v2);
  }
}

uint64_t sub_1BD346038@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentSummarySheet();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = v5;
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428A8);
  v49 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v44 - v17);
  v50 = v1;
  sub_1BD3485A4();
  v20 = v19;
  v21 = v19 >> 62;
  if (v19 >> 62)
  {
    if (sub_1BE053704() >= 1)
    {
LABEL_3:
      v45 = a1;
      sub_1BD0DE19C(v50 + *(v3 + 40), v14, &qword_1EBD45480);
      v22 = type metadata accessor for PeerPaymentModel();
      if ((*(*(v22 - 8) + 48))(v14, 1, v22) == 1)
      {
        sub_1BD0DE53C(v14, &qword_1EBD45480);
      }

      else
      {
        v23 = v14[*(v22 + 60)];
        sub_1BD34A1B0(v14, type metadata accessor for PeerPaymentModel);
        if (v23)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          goto LABEL_9;
        }
      }

      (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v29 = result;
      v30 = sub_1BE04B6F4();
      v32 = v31;

      (*(v7 + 8))(v10, v6);
      v51 = v30;
      v52 = v32;
      sub_1BD0DDEBC();
      v24 = sub_1BE0506C4();
      v26 = v33 & 1;
LABEL_9:
      *v18 = v24;
      v18[1] = v25;
      v18[2] = v26;
      v18[3] = v27;
      v34 = v18 + v15[21];
      *v34 = swift_getKeyPath();
      v34[8] = 0;
      v35 = v18 + v15[22];
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      v36 = v18 + v15[18];
      *v36 = sub_1BE04F7C4();
      *(v36 + 1) = 0;
      v36[16] = 0;
      if (!v21)
      {
        v37 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
        v44[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428B0) + 44);
        v51 = 0;
        v52 = v37;
        swift_getKeyPath();
        v38 = v48;
        sub_1BD34A0BC(v50, v48, type metadata accessor for PaymentSummarySheet);
        v39 = (*(v46 + 80) + 24) & ~*(v46 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v20;
        sub_1BD34A148(v38, v40 + v39, type metadata accessor for PaymentSummarySheet);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428B8);
        sub_1BD2D5394();
        sub_1BD0DE4F4(&qword_1EBD428C0, &qword_1EBD428B8);
        sub_1BE0519C4();
        v41 = v18 + v15[19];
        *v41 = 0x4020000000000000;
        v41[8] = 0;
        *(v18 + v15[20]) = 1;
        v42 = v45;
        sub_1BD0DE204(v18, v45, &qword_1EBD428A8);
        return (*(v49 + 56))(v42, 0, 1, v15);
      }

      result = sub_1BE053704();
      v37 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  v43 = *(v49 + 56);

  return v43(a1, 1, 1, v15);
}

void sub_1BD346670(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v31 - v5;
  v7 = type metadata accessor for PaymentSummarySheet();
  sub_1BD0DE19C(v1 + *(v7 + 40), v6, &qword_1EBD45480);
  v8 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD45480);
LABEL_4:
    v13 = 0;
    v14 = 0;
    goto LABEL_5;
  }

  v9 = &v6[*(v8 + 24)];
  v10 = *(v9 + 3);
  v32[2] = *(v9 + 2);
  v32[3] = v10;
  v11 = *(v9 + 5);
  v32[4] = *(v9 + 4);
  v33 = v11;
  v12 = *(v9 + 1);
  v32[0] = *v9;
  v32[1] = v12;
  sub_1BD0DE19C(v32, v31, &unk_1EBD521D0);
  sub_1BD34A1B0(v6, type metadata accessor for PeerPaymentModel);
  if (*&v32[0] == 1)
  {
    goto LABEL_4;
  }

  v14 = *(&v33 + 1);
  v17 = *(&v33 + 1);
  sub_1BD0DE53C(v32, &unk_1EBD521D0);
  if (v14)
  {
    v14 = [v17 message];

    if (v14)
    {
      v18 = sub_1BE052434();
      v20 = v19;

      v31[0] = v18;
      v31[1] = v20;
      sub_1BD0DDEBC();
      v21 = sub_1BE0506C4();
      v23 = v22;
      v25 = v24;
      v31[0] = sub_1BE0513B4();
      v13 = sub_1BE050574();
      v14 = v26;
      v28 = v27;
      v16 = v29;
      sub_1BD0DDF10(v21, v23, v25 & 1);

      v15 = v28 & 1;
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_5:
  v15 = 0;
  v16 = 0;
LABEL_6:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
}

uint64_t sub_1BD346924@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelectedPaymentOfferActionView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for PaymentSummarySheet();
  sub_1BD0DE19C(v2 + *(v17 + 20), v16, &qword_1EBD520A0);
  v18 = type metadata accessor for AvailablePass(0);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
  {
    sub_1BD0DE53C(v16, &qword_1EBD520A0);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  sub_1BD34A0BC(v16, v12, type metadata accessor for WrappedPass);
  sub_1BD34A1B0(v16, type metadata accessor for AvailablePass);
  v19 = WrappedPass.secureElementPass.getter();
  sub_1BD34A1B0(v12, type metadata accessor for WrappedPass);
  if (!v19)
  {
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v66 = v17;
  v20 = *(v2 + *(v17 + 68));
  if (!v20)
  {

    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v64 = v2;
  v21 = v19;
  v22 = v20;
  v23 = [v21 uniqueID];
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = v23;
  v25 = [v22 paymentOfferCriteriaForPassUniqueID_];

  if (!v25)
  {

LABEL_50:
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v62 = v5;
  v63 = a1;
  sub_1BD0E5E8C(0, &unk_1EBD496A0);
  v26 = sub_1BE052744();

  *&v68 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v61 = v8;
    v65 = v22;
    if (!i)
    {
      break;
    }

    v59 = v21;
    v60 = v4;
    v28 = 0;
    v4 = v26 & 0xC000000000000001;
    v22 = (v26 & 0xFFFFFFFFFFFFFF8);
    v21 = &selRef_thumbnailWidth;
    while (1)
    {
      if (v4)
      {
        v29 = MEMORY[0x1BFB40900](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ([v29 type] == 1)
      {
        sub_1BE0538C4();
        v8 = *(v68 + 16);
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v28;
      if (v31 == i)
      {
        v32 = v68;
        v21 = v59;
        v4 = v60;
        v22 = v65;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v5 = v62;
  a1 = v63;
  if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
  {
    if (*(v32 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

  if (!sub_1BE053704())
  {
LABEL_49:

    goto LABEL_50;
  }

LABEL_27:
  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*(v32 + 16))
    {
      v33 = *(v32 + 32);
      goto LABEL_30;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v33 = MEMORY[0x1BFB40900](0, v32);
LABEL_30:
  v34 = v33;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v36 = *(v64 + *(v66 + 104));
  if (v36)
  {
    v37 = v35;
    v38 = v21;
    v39 = (v64 + *(v66 + 80));
    v40 = *v39;
    v41 = v39[1];
    LOBYTE(v67) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE051694();
    v42 = *(&v68 + 1);
    v43 = v61;
    v61[80] = v68;
    *(v43 + 88) = v42;
    v67 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B50);
    sub_1BE051694();
    *(v43 + 96) = v68;
    v44 = *(v4 + 56);
    *(v43 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    v45 = v65;
    *v43 = v38;
    *(v43 + 8) = v45;
    *(v43 + 24) = v37;
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;
    *(v43 + 72) = v36;
    v46 = v45;
    v47 = [v37 identifier];
    if (!v47)
    {
      sub_1BE052434();
      v47 = sub_1BE052404();
    }

    v48 = [v38 uniqueID];

    v49 = [v46 paymentOfferCollectionForCriteriaIdentifier:v47 passUniqueID:v48];
    v50 = [v49 installmentAssessment];

    *(v43 + 16) = v50;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    v51 = v43;
    if (v50)
    {
      v52 = v50;
      v53 = [v52 dynamicContent];
      if (!v53 || (v54 = v53, v55 = [v53 dynamicContentPageForPageType_], v54, !v55))
      {
        v56 = [v52 dynamicContent];

        if (!v56)
        {
          v55 = 0;
          v51 = v61;
          goto LABEL_44;
        }

        v55 = [v56 dynamicContentPageForPageType_];
        v52 = v56;
        v51 = v61;
      }
    }

    else
    {
      v55 = 0;
    }

LABEL_44:
    *(v51 + 64) = v55;
    sub_1BD34A148(v51, a1, type metadata accessor for SelectedPaymentOfferActionView);
    return (*(v5 + 56))(a1, 0, 1, v4);
  }

LABEL_55:
  type metadata accessor for PresentationContext();
  sub_1BD34BFE8(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD3470C8(_BYTE *a1)
{
  if (*a1 == 1)
  {
    return sub_1BD347178();
  }

  type metadata accessor for PaymentSummarySheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808);
  result = sub_1BE0516A4();
  if ((v2 & 1) == 0)
  {
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD347178()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for PaymentSummarySheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);
  sub_1BE0516A4();
  v12 = type metadata accessor for MultiHyperLinkDetailSheet();
  v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_1BD0DE53C(v10, &unk_1EBD45160);
  if (v13 == 1 && (v14 = (v1 + *(v11 + 88)), v15 = *v14, v16 = *(v14 + 1), v23 = *v14, v24 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42808), sub_1BE0516A4(), (v22 & 1) != 0))
  {
    v23 = v15;
    v24 = v16;
    v22 = 0;
    return sub_1BE0516B4();
  }

  else
  {
    sub_1BE04D084();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Detail sheet already set, ignoring", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BD347404@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for PaymentSummarySheet();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = sub_1BD347680();
  v9 = v8;
  v10 = (v1 + *(v3 + 72));
  v11 = *v10;
  v12 = v10[1];
  sub_1BD34A0BC(v1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentSummarySheet);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1BD34A148(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentSummarySheet);
  *&v23 = sub_1BD3496D0;
  *(&v23 + 1) = v14;
  *&v24 = v7;
  *(&v24 + 1) = v9;
  *&v25 = v11;
  *(&v25 + 1) = v12;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29[0] = sub_1BD3496D0;
  v29[1] = v14;
  v29[2] = v7;
  v29[3] = v9;
  v29[4] = v11;
  v29[5] = v12;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v23, v33, &qword_1EBD426E8);
  sub_1BD0DE53C(v29, &qword_1EBD426E8);
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426E8);
  sub_1BD0DE4F4(&qword_1EBD426F0, &qword_1EBD426E8);
  sub_1BE050DE4();

  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v34 = v22;
  v33[0] = v17;
  v33[1] = v18;
  return sub_1BD0DE53C(v33, &qword_1EBD426E8);
}

id sub_1BD347680()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PaymentSummarySheet();
  v11 = *MEMORY[0x1E69B8068];
  v12 = *(v2 + 104);
  if (*(v0 + *(v10 + 32)) == 10)
  {
    v12(v9, v11, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v9, v1);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v12(v5, v11, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v9 = v5;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD347860@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16[-v6];
  sub_1BD3436E4(&v16[-v6]);
  sub_1BE051C64();
  v18 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42708);
  v8 = sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42718);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720);
  v11 = sub_1BD349760();
  v19 = v10;
  v20 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v4;
  v20 = v9;
  v21 = v8;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD349B48();
  sub_1BE0510B4();
  sub_1BD0DE53C(v7, &qword_1EBD426F8);
  LOBYTE(a1) = sub_1BE0501F4();
  v13 = sub_1BE04EC54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD427A8);
  v15 = a2 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = a1;
  return result;
}

uint64_t sub_1BD347AAC()
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD426F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42718);
  sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720);
  sub_1BD349760();
  swift_getOpaqueTypeConformance2();
  return sub_1BE050954();
}

uint64_t sub_1BD347BDC(uint64_t a1)
{
  v2 = sub_1BE04F714();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD348E78(a1, v22);
  v7 = sub_1BE051DA4();
  type metadata accessor for KeyboardObserver();
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v19 = v22[10];
  v20 = v22[11];
  v21[0] = v22[12];
  v15 = v22[6];
  v16 = v22[7];
  v17 = v22[8];
  v18 = v22[9];
  v11 = v22[2];
  v12 = v22[3];
  v13 = v22[4];
  v14 = v22[5];
  v9 = v22[0];
  v10 = v22[1];
  *&v21[1] = v7;
  BYTE8(v21[1]) = v23[0];
  sub_1BE04F704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42720);
  sub_1BD349760();
  sub_1BE050CB4();
  (*(v3 + 8))(v6, v2);
  v23[10] = v19;
  v23[11] = v20;
  v24[0] = v21[0];
  *(v24 + 9) = *(v21 + 9);
  v23[6] = v15;
  v23[7] = v16;
  v23[8] = v17;
  v23[9] = v18;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  return sub_1BD0DE53C(v23, &qword_1EBD42720);
}

uint64_t sub_1BD347E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7B4();
  sub_1BD348E78(a2, &v27);
  v7 = sub_1BE051DA4();
  type metadata accessor for KeyboardObserver();
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v8 = v56[0];
  v9 = sub_1BE04E564();
  LOBYTE(a2) = MEMORY[0x1BFB3D2D0]((2 * v9));
  v10 = sub_1BE04EC74();
  v26[256] = 0;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v40 = v27;
  v41 = v28;
  *&v53 = v7;
  BYTE8(v53) = v8;
  v54 = v10;
  LOBYTE(v55) = 0;
  BYTE1(v55) = a2;
  *(&v55 + 1) = v6;
  sub_1BD0DE19C(a1, a3, &qword_1EBD426F8);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42708) + 36));
  v12 = v53;
  v13 = v54;
  v14 = v51;
  v11[12] = v52;
  v11[13] = v12;
  v15 = v55;
  v11[14] = v13;
  v11[15] = v15;
  v16 = v49;
  v17 = v50;
  v18 = v47;
  v11[8] = v48;
  v11[9] = v16;
  v11[10] = v17;
  v11[11] = v14;
  v19 = v45;
  v20 = v46;
  v21 = v43;
  v11[4] = v44;
  v11[5] = v19;
  v11[6] = v20;
  v11[7] = v18;
  v22 = v41;
  v23 = v42;
  v24 = v39;
  *v11 = v40;
  v11[1] = v22;
  v11[2] = v23;
  v11[3] = v21;
  v56[10] = v37;
  v56[11] = v38;
  v56[12] = v24;
  v56[6] = v33;
  v56[7] = v34;
  v56[8] = v35;
  v56[9] = v36;
  v56[2] = v29;
  v56[3] = v30;
  v56[4] = v31;
  v56[5] = v32;
  v56[0] = v27;
  v56[1] = v28;
  v57 = v7;
  v58 = v8;
  v59 = v10;
  v60 = 0;
  v61 = 0;
  v62 = a2;
  v63 = v6;
  sub_1BD0DE19C(&v40, v26, &qword_1EBD427A0);
  return sub_1BD0DE53C(v56, &qword_1EBD427A0);
}

uint64_t sub_1BD3480F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428C8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  v19 = *a1;
  if (*a1 < 1)
  {
    (*(v7 + 56))(&v58 - v17, 1, 1, v6);
  }

  else
  {
    sub_1BE051984();
    v20 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v21 = &v10[*(v6 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_1BD0DE204(v10, v18, &qword_1EBD390F8);
    (*(v7 + 56))(v18, 0, 1, v6);
  }

  v26 = *(type metadata accessor for PaymentSummarySheet() + 28);
  result = _s14PaymentSummaryVMa();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = a2 + v26;
  v29 = *(a2 + v26 + *(result + 48));
  if (v19 >= *(v29 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v30 = v14;
  v31 = (v29 + 24 * v19);
  v32 = v31[5];
  v62 = v31[4];
  v33 = v31[6];
  v34 = (v28 + *(result + 24));
  v35 = v34[1];
  v61 = *v34;
  KeyPath = swift_getKeyPath();
  v59 = v32;
  sub_1BE048C84();
  v36 = v33;
  sub_1BE048C84();
  v37 = sub_1BE0501C4();
  v38 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v37)
  {
    v38 = sub_1BE050214();
  }

  v63 = 0;
  sub_1BE04E1F4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v63;
  v79 = 0;
  v48 = v18;
  sub_1BD0DE19C(v18, v30, &qword_1EBD428C8);
  sub_1BD0DE19C(v30, a3, &qword_1EBD428C8);
  v49 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42908) + 48));
  v50 = v62;
  *&v64 = v62;
  *(&v64 + 1) = v59;
  *&v65 = v36;
  v51 = v36;
  v52 = v61;
  *(&v65 + 1) = v61;
  *&v66 = v35;
  v58 = v35;
  v53 = v59;
  v54 = KeyPath;
  *(&v66 + 1) = KeyPath;
  LOBYTE(v67) = v47;
  *(&v67 + 1) = 0x4028000000000000;
  LOBYTE(v68) = v38;
  *(&v68 + 1) = v40;
  *v69 = v42;
  *&v69[8] = v44;
  *&v69[16] = v46;
  v69[24] = 0;
  v55 = v65;
  *v49 = v64;
  v49[1] = v55;
  v56 = v67;
  v49[2] = v66;
  v49[3] = v56;
  v57 = *v69;
  v49[4] = v68;
  v49[5] = v57;
  *(v49 + 89) = *&v69[9];
  sub_1BD0DE19C(&v64, v70, &qword_1EBD42910);
  sub_1BD0DE53C(v48, &qword_1EBD428C8);
  v70[0] = v50;
  v70[1] = v53;
  v70[2] = v51;
  v70[3] = v52;
  v70[4] = v58;
  v70[5] = v54;
  v71 = v47;
  v72 = 0x4028000000000000;
  v73 = v38;
  v74 = v40;
  v75 = v42;
  v76 = v44;
  v77 = v46;
  v78 = 0;
  sub_1BD0DE53C(v70, &qword_1EBD42910);
  return sub_1BD0DE53C(v30, &qword_1EBD428C8);
}

void sub_1BD3485A4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentSummarySheet();
  v7 = *(v0 + v6[8]);
  v8 = v0 + v6[7];
  v9 = *(v8 + *(_s14PaymentSummaryVMa() + 20));
  if (v7 != 10)
  {
    goto LABEL_13;
  }

  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    v11 = sub_1BE053704();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = v9 & 0xC000000000000001;
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v14 = MEMORY[0x1BFB40900](v13, v9);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = *(v9 + 8 * v13 + 32);
LABEL_9:
  v15 = v14;
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v16 = (v0 + v6[9]);
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v47 = v8;
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8070], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BE0B69E0;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1BD110550();
      *(v19 + 32) = v18;
      *(v19 + 40) = v17;
      sub_1BE048C84();
      v20 = v15;
      v8 = v47;
      sub_1BE04B714();
    }

    else
    {
      (*(v2 + 104))(v5, *MEMORY[0x1E69B8070], v1);
      v21 = v15;
      sub_1BE04B714();
    }

    (*(v2 + 8))(v5, v1);
    v22 = sub_1BE052404();

    v23 = v48;
    [v48 setLabel_];

    if (v10)
    {
      v26 = sub_1BE053704();
      if (v26 < 0)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v24 = v26;
      v25 = v26 != 0;
      if (sub_1BE053704() < v25)
      {
        goto LABEL_40;
      }

      if (sub_1BE053704() < v24)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 != 0;
      if (v24 < v25)
      {
        goto LABEL_40;
      }
    }

    if (v8 && v24 > 1)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      sub_1BE048C84();
      v27 = v25;
      do
      {
        v28 = v27 + 1;
        sub_1BE053864();
        v27 = v28;
      }

      while (v24 != v28);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1BE048C84();
      if (!v10)
      {
LABEL_28:
        v29 = v9 & 0xFFFFFFFFFFFFFF8;
        v30 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
        v31 = (2 * v24) | 1;
        goto LABEL_31;
      }
    }

    v29 = sub_1BE0539D4();
    v30 = v32;
    v25 = v33;
    v31 = v34;
LABEL_31:
    sub_1BD643C50(1, v29, v30, v25, v31);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = v23;
    v49 = MEMORY[0x1E69E7CC0];
    v42 = (v40 >> 1) - v38;
    if (!__OFSUB__(v40 >> 1, v38))
    {
      v43 = v42 + 1;
      if (!__OFADD__(v42, 1))
      {
        v44 = inited;
        v45 = v15;
        sub_1BD34A294(v43);
        v46 = swift_unknownObjectRetain();
        sub_1BDA7EAC8(v46, v36, v38, v40);
        swift_unknownObjectRelease();
        sub_1BDA7AAA0(v44);

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_13:
  sub_1BE048C84();

  sub_1BD1FFD7C(1, v9);
}

uint64_t sub_1BD348AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428C8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  v21 = *a1;
  if (v21 < 1)
  {
    result = (*(v9 + 56))(&v48 - v19, 1, 1, v8);
  }

  else
  {
    sub_1BE051984();
    v22 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v23 = &v12[*(v8 + 36)];
    *v23 = v22;
    *(v23 + 1) = v24;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    *(v23 + 4) = v27;
    v23[40] = 0;
    sub_1BD0DE204(v12, v20, &qword_1EBD390F8);
    result = (*(v9 + 56))(v20, 0, 1, v8);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1BFB40900](v21, a2);
    goto LABEL_8;
  }

  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v29 = *(a2 + 8 * v21 + 32);
LABEL_8:
  v30 = v29;
  v31 = a3 + *(type metadata accessor for PaymentSummarySheet() + 28);
  v32 = (v31 + *(_s14PaymentSummaryVMa() + 24));
  v34 = *v32;
  v33 = v32[1];
  sub_1BE048C84();
  v35 = sub_1BE0501C4();
  v36 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v35)
  {
    v36 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v60 = 0;
  sub_1BD0DE19C(v20, v16, &qword_1EBD428C8);
  sub_1BD0DE19C(v16, a4, &qword_1EBD428C8);
  v45 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD428D0) + 48));
  *&v48 = v30;
  *(&v48 + 1) = v34;
  *&v49 = v33;
  BYTE8(v49) = 0;
  LOBYTE(v50) = v36;
  *(&v50 + 1) = v38;
  *v51 = v40;
  *&v51[8] = v42;
  *&v51[16] = v44;
  v51[24] = 0;
  v46 = v49;
  *v45 = v48;
  v45[1] = v46;
  v47 = *v51;
  v45[2] = v50;
  v45[3] = v47;
  *(v45 + 57) = *&v51[9];
  sub_1BD0DE19C(&v48, v52, &qword_1EBD428D8);
  sub_1BD0DE53C(v20, &qword_1EBD428C8);
  v52[0] = v30;
  v52[1] = v34;
  v52[2] = v33;
  v53 = 0;
  v54 = v36;
  v55 = v38;
  v56 = v40;
  v57 = v42;
  v58 = v44;
  v59 = 0;
  sub_1BD0DE53C(v52, &qword_1EBD428D8);
  return sub_1BD0DE53C(v16, &qword_1EBD428C8);
}

__n128 sub_1BD348E78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04E8A4();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37[-v9];
  type metadata accessor for KeyboardObserver();
  sub_1BD34BFE8(&qword_1EBD36500, type metadata accessor for KeyboardObserver);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v54)
  {
    sub_1BD349C2C(&v54);
  }

  else
  {
    v39 = sub_1BE04F7B4();
    LOBYTE(v48) = 0;
    v11 = (a1 + *(type metadata accessor for PaymentSummarySheet() + 52));
    v12 = v11[4];
    v13 = v11[5];
    v14 = v11[2];
    v44 = v11[3];
    v45 = v12;
    v15 = v11[6];
    v46 = v13;
    v47 = v15;
    v16 = v11[1];
    v43[0] = *v11;
    v43[1] = v16;
    v43[2] = v14;
    *&v42[39] = v14;
    *&v42[87] = v13;
    *&v42[71] = v12;
    *&v42[55] = v44;
    *&v42[103] = v15;
    *&v42[7] = v43[0];
    *&v42[23] = v16;
    v38 = v48;
    sub_1BD0EEF94(v43, &v54);
    v17 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    LOBYTE(v54) = 0;
    v26 = sub_1BE051274();
    v27 = sub_1BE0501D4();
    sub_1BE04E894();
    v28 = v41;
    (*(v41 + 16))(v40, v10, v4);
    sub_1BD34BFE8(&unk_1EBD36878, MEMORY[0x1E697E410]);
    v29 = sub_1BE04E644();
    (*(v28 + 8))(v10, v4);
    *(&v49[4] + 1) = *&v42[64];
    *(&v49[5] + 1) = *&v42[80];
    *(&v49[6] + 1) = *&v42[96];
    *(v49 + 1) = *v42;
    *(&v49[1] + 1) = *&v42[16];
    *(&v49[2] + 1) = *&v42[32];
    v48 = v39;
    LOBYTE(v49[0]) = v38;
    *&v49[7] = *&v42[111];
    *(&v49[3] + 1) = *&v42[48];
    BYTE8(v49[7]) = v17;
    *&v50 = v19;
    *(&v50 + 1) = v21;
    *&v51 = v23;
    *(&v51 + 1) = v25;
    LOBYTE(v52) = 0;
    *(&v52 + 1) = v26;
    LOBYTE(v53) = v27;
    *(&v53 + 1) = v29;
    PKEdgeInsetsMake(&v48, v30);
    v64 = v51;
    v65 = v52;
    v66 = v53;
    v60 = v49[5];
    v61 = v49[6];
    v62 = v49[7];
    v63 = v50;
    v56 = v49[1];
    v57 = v49[2];
    v58 = v49[3];
    v59 = v49[4];
    v54 = v48;
    v55 = v49[0];
  }

  v31 = v65;
  *(a2 + 160) = v64;
  *(a2 + 176) = v31;
  *(a2 + 192) = v66;
  v32 = v61;
  *(a2 + 96) = v60;
  *(a2 + 112) = v32;
  v33 = v63;
  *(a2 + 128) = v62;
  *(a2 + 144) = v33;
  v34 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v34;
  v35 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v35;
  result = v55;
  *a2 = v54;
  *(a2 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PaymentSummarySheet()
{
  result = qword_1EBD426C8;
  if (!qword_1EBD426C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3492F8()
{
  sub_1BD33A018();
  if (v0 <= 0x3F)
  {
    sub_1BD349608(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
    if (v1 <= 0x3F)
    {
      _s8MerchantVMa(319);
      if (v2 <= 0x3F)
      {
        _s14PaymentSummaryVMa();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PKPaymentRequestType(319);
          if (v4 <= 0x3F)
          {
            sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BD349608(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
              if (v6 <= 0x3F)
              {
                type metadata accessor for PKPaymentAuthorizationFundingMode(319);
                if (v7 <= 0x3F)
                {
                  sub_1BD349608(319, &qword_1EBD365E0, type metadata accessor for PassEligibleRewardsInfo);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD1030A8();
                    if (v9 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0);
                      if (v10 <= 0x3F)
                      {
                        sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for SelectedPaymentOfferObserver();
                          if (v12 <= 0x3F)
                          {
                            sub_1BD23BC4C(319, &qword_1EBD39358, &unk_1EBD45160);
                            if (v13 <= 0x3F)
                            {
                              sub_1BD23BC4C(319, &qword_1EBD426D8, &qword_1EBD41358);
                              if (v14 <= 0x3F)
                              {
                                sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1BD1031B4();
                                  if (v16 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1BD349608(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BD349660()
{
  result = qword_1EBD426E0;
  if (!qword_1EBD426E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD426E0);
  }

  return result;
}

uint64_t sub_1BD3496D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentSummarySheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD347860(v4, a1);
}

unint64_t sub_1BD349760()
{
  result = qword_1EBD42728;
  if (!qword_1EBD42728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42720);
    sub_1BD349818();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42728);
  }

  return result;
}

unint64_t sub_1BD349818()
{
  result = qword_1EBD42730;
  if (!qword_1EBD42730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42738);
    sub_1BD34989C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42730);
  }

  return result;
}

unint64_t sub_1BD34989C()
{
  result = qword_1EBD42740;
  if (!qword_1EBD42740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42748);
    sub_1BD349920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42740);
  }

  return result;
}

unint64_t sub_1BD349920()
{
  result = qword_1EBD42750;
  if (!qword_1EBD42750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42758);
    sub_1BD3499D8();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42750);
  }

  return result;
}

unint64_t sub_1BD3499D8()
{
  result = qword_1EBD42760;
  if (!qword_1EBD42760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42768);
    sub_1BD349A90();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42760);
  }

  return result;
}

unint64_t sub_1BD349A90()
{
  result = qword_1EBD42770;
  if (!qword_1EBD42770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42778);
    sub_1BD0DE4F4(&qword_1EBD42780, &qword_1EBD42788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42770);
  }

  return result;
}

unint64_t sub_1BD349B48()
{
  result = qword_1EBD42790;
  if (!qword_1EBD42790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42708);
    sub_1BD0DE4F4(&qword_1EBD42710, &qword_1EBD426F8);
    sub_1BD0DE4F4(&qword_1EBD42798, &qword_1EBD427A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42790);
  }

  return result;
}

double sub_1BD349C2C(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1BD349C60()
{
  result = qword_1EBD427B8;
  if (!qword_1EBD427B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD427C8);
    type metadata accessor for MultiHyperLinkDetailSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0);
    sub_1BD0DE4F4(&qword_1EBD427D0, &qword_1EBD427C8);
    sub_1BD34BFE8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD349E40();
    sub_1BD349E94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427B8);
  }

  return result;
}

unint64_t sub_1BD349E40()
{
  result = qword_1EBD427D8;
  if (!qword_1EBD427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427D8);
  }

  return result;
}

unint64_t sub_1BD349E94()
{
  result = qword_1EBD427E0;
  if (!qword_1EBD427E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD57B80);
    sub_1BD34BFE8(&qword_1EBD412B0, type metadata accessor for SelectedPaymentOfferActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD427E0);
  }

  return result;
}

uint64_t sub_1BD349F48(void *a1)
{
  result = type metadata accessor for PaymentSummarySheet();
  if (*a1 == 2)
  {
    return (*(v1 + *(result + 64) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

uint64_t sub_1BD349FC4(_BYTE *a1)
{
  type metadata accessor for PaymentSummarySheet();

  return sub_1BD3470C8(a1);
}

double sub_1BD34A098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BD34A0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1BD34A124(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BD34A148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD34A1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD34A210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSummarySheet() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD348AC0(a1, v6, v7, a2);
}

uint64_t sub_1BD34A294(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1BE053704();
LABEL_9:
    result = sub_1BE053884();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for PaymentSummarySheet();
  v150 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v150 + 16) & ~v150);
  sub_1BD0D45CC();
  v3 = (v2 + v1[5]);
  v4 = type metadata accessor for AvailablePass(0);
  v146 = *(*(v4 - 1) + 48);
  v152 = v4;
  if (!v146(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v6 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v7 = sub_1BE04CF34();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v8 = v3 + v4[6];
    v9 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v9 + 20);
      v11 = sub_1BE04DA84();
      (*(*(v11 - 8) + 8))(&v8[v10], v11);
    }

    v12 = (v3 + v4[7]);
    v13 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 28);
      v15 = sub_1BE04AF64();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v12 + v14, 1, v15))
      {
        (*(v16 + 8))(v12 + v14, v15);
      }
    }

    v17 = v3 + v4[10];
    v18 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      if (*(v17 + 2) != 1)
      {
      }

      if (*(v17 + 9) != 1)
      {
      }

      v19 = *(v18 + 28);
      v20 = sub_1BE04AF64();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (!v22(&v17[v19], 1, v20))
      {
        (*(v21 + 8))(&v17[v19], v20);
      }

      v23 = *(v18 + 32);
      v24 = v22(&v17[v23], 1, v20);
      v4 = v152;
      if (!v24)
      {
        (*(v21 + 8))(&v17[v23], v20);
      }
    }

    v25 = (v3 + v4[12]);
    if (*v25)
    {
    }

    v26 = (v3 + v4[13]);
    if (*v26)
    {
    }
  }

  v27 = v2 + v1[6];

  v28 = v27 + *(_s8MerchantVMa(0) + 20);
  _s14MerchantOriginOMa(0);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 == 1)
  {
    v30 = sub_1BE04AA64();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v28, v30);
    v33 = *(_s7WebInfoVMa(0) + 20);
    if (!(*(v31 + 48))(v28 + v33, 1, v30))
    {
      v32(v28 + v33, v30);
    }
  }

  else if (!v29)
  {
  }

  v34 = v2 + v1[7];

  v35 = _s11TotalAmountVMa(0);
  v36 = v34 + v35[10];
  _s22SummaryItemPricingTypeOMa(0);
  v37 = swift_getEnumCaseMultiPayload();
  switch(v37)
  {
    case 2:

      break;
    case 1:
      v44 = sub_1BE04AF64();
      (*(*(v44 - 8) + 8))(v36, v44);
      break;
    case 0:
      v144 = v35;
      v38 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v39 = *(v38 + 24);
      v40 = sub_1BE04AF64();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (!v42(v36 + v39, 1, v40))
      {
        (*(v41 + 8))(v36 + v39, v40);
      }

      v43 = *(v38 + 28);
      if (!v42(v36 + v43, 1, v40))
      {
        (*(v41 + 8))(v36 + v43, v40);
      }

      v4 = v152;
      v35 = v144;
      break;
  }

  v45 = (v34 + v35[15]);
  v46 = type metadata accessor for PeerPaymentModel();
  v148 = *(*(v46 - 8) + 48);
  v151 = v46;
  if (!v148(v45, 1, v46))
  {

    v47 = (v45 + *(v46 + 20));
    type metadata accessor for WrappedPass(0);
    v48 = swift_getEnumCaseMultiPayload();
    v143 = v45;
    if (v48 == 2)
    {

      v49 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v50 = sub_1BE04CF34();
      (*(*(v50 - 8) + 8))(v47 + v49, v50);
    }

    else if (v48 <= 1)
    {
    }

    v51 = v47 + v4[6];
    v52 = v4;
    v53 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v53 - 8) + 48))(v51, 1, v53))
    {

      v54 = *(v53 + 20);
      v55 = sub_1BE04DA84();
      (*(*(v55 - 8) + 8))(&v51[v54], v55);
    }

    v56 = (v47 + v52[7]);
    v57 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      v58 = *(v57 + 28);
      v59 = sub_1BE04AF64();
      v60 = *(v59 - 8);
      if (!(*(v60 + 48))(v56 + v58, 1, v59))
      {
        (*(v60 + 8))(v56 + v58, v59);
      }
    }

    v61 = v47 + v152[10];
    v62 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
    {
      if (*(v61 + 2) != 1)
      {
      }

      if (*(v61 + 9) != 1)
      {
      }

      v63 = *(v62 + 28);
      v64 = sub_1BE04AF64();
      v65 = *(*(v64 - 8) + 48);
      v141 = v63;
      v66 = &v61[v63];
      v67 = *(v64 - 8);
      if (!v65(v66, 1, v64))
      {
        (*(v67 + 8))(&v61[v141], v64);
      }

      v142 = v67;
      v68 = *(v62 + 32);
      if (!v65(&v61[v68], 1, v64))
      {
        (*(v142 + 8))(&v61[v68], v64);
      }
    }

    v4 = v152;
    v69 = (v47 + v152[12]);
    if (*v69)
    {
    }

    v70 = (v47 + v152[13]);
    v46 = v151;
    if (*v70)
    {
    }

    v71 = (v143 + *(v151 + 24));
    if (*v71 != 1)
    {

      if (v71[3])
      {
      }
    }
  }

  v72 = (v34 + v35[16]);
  v73 = type metadata accessor for Passes(0);
  if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
  {
    if (!v146(v72, 1, v4))
    {
      type metadata accessor for WrappedPass(0);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74 == 2)
      {

        v75 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v76 = sub_1BE04CF34();
        (*(*(v76 - 8) + 8))(v72 + v75, v76);
      }

      else if (v74 <= 1)
      {
      }

      v77 = v72 + v4[6];
      v78 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
      {

        v79 = *(v78 + 20);
        v80 = sub_1BE04DA84();
        (*(*(v80 - 8) + 8))(&v77[v79], v80);
      }

      v81 = (v72 + v4[7]);
      v82 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
      {

        v83 = *(v82 + 28);
        v84 = sub_1BE04AF64();
        v85 = *(v84 - 8);
        if (!(*(v85 + 48))(v81 + v83, 1, v84))
        {
          (*(v85 + 8))(v81 + v83, v84);
        }
      }

      v86 = v72 + v152[10];
      v87 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        if (*(v86 + 2) != 1)
        {
        }

        if (*(v86 + 9) != 1)
        {
        }

        v88 = *(v87 + 28);
        v89 = sub_1BE04AF64();
        v147 = *(v89 - 8);
        v145 = v88;
        v90 = &v86[v88];
        v91 = *(v147 + 48);
        if (!v91(v90, 1, v89))
        {
          (*(v147 + 8))(&v86[v145], v89);
        }

        v92 = *(v87 + 32);
        if (!v91(&v86[v92], 1, v89))
        {
          (*(v147 + 8))(&v86[v92], v89);
        }
      }

      v4 = v152;
      v93 = (v72 + v152[12]);
      if (*v93)
      {
      }

      v94 = (v72 + v152[13]);
      v46 = v151;
      if (*v94)
      {
      }
    }
  }

  v95 = _s14PaymentSummaryVMa();

  if (*(v34 + v95[7] + 8))
  {
  }

  v96 = v34 + v95[9];
  if (*(v96 + 8))
  {
  }

  v97 = v34 + v95[10];
  if (*(v97 + 8))
  {
  }

  v98 = v34 + v95[11];
  v99 = type metadata accessor for DeferredPaymentRequest();
  if (!(*(*(v99 - 1) + 48))(v98, 1, v99))
  {

    v100 = v99[7];
    v101 = sub_1BE04AF64();
    v102 = *(v101 - 8);
    if (!(*(v102 + 48))(v98 + v100, 1, v101))
    {
      (*(v102 + 8))(v98 + v100, v101);
    }

    v103 = v99[8];
    v104 = sub_1BE04B3B4();
    v105 = *(v104 - 8);
    if (!(*(v105 + 48))(v98 + v103, 1, v104))
    {
      (*(v105 + 8))(v98 + v103, v104);
    }

    v4 = v152;
    v46 = v151;
  }

  v106 = (v2 + v1[10]);
  if (!v148(v106, 1, v46))
  {

    v107 = (v106 + *(v46 + 20));
    type metadata accessor for WrappedPass(0);
    v108 = swift_getEnumCaseMultiPayload();
    if (v108 == 2)
    {

      v109 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v110 = sub_1BE04CF34();
      (*(*(v110 - 8) + 8))(v107 + v109, v110);
    }

    else if (v108 <= 1)
    {
    }

    v111 = v107 + v4[6];
    v112 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
    {

      v113 = *(v112 + 20);
      v114 = sub_1BE04DA84();
      (*(*(v114 - 8) + 8))(&v111[v113], v114);
    }

    v115 = (v107 + v4[7]);
    v116 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v116 - 8) + 48))(v115, 1, v116))
    {

      v117 = *(v116 + 28);
      v118 = sub_1BE04AF64();
      v119 = *(v118 - 8);
      if (!(*(v119 + 48))(v115 + v117, 1, v118))
      {
        (*(v119 + 8))(v115 + v117, v118);
      }
    }

    v120 = v107 + v4[10];
    v121 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v121 - 8) + 48))(v120, 1, v121))
    {
      if (*(v120 + 2) != 1)
      {
      }

      if (*(v120 + 9) != 1)
      {
      }

      v122 = *(v121 + 28);
      v123 = sub_1BE04AF64();
      v149 = *(v123 - 8);
      v124 = *(v149 + 48);
      if (!v124(&v120[v122], 1, v123))
      {
        (*(v149 + 8))(&v120[v122], v123);
      }

      v125 = *(v121 + 32);
      if (!v124(&v120[v125], 1, v123))
      {
        (*(v149 + 8))(&v120[v125], v123);
      }
    }

    v126 = (v107 + v152[12]);
    if (*v126)
    {
    }

    v127 = (v107 + v152[13]);
    if (*v127)
    {
    }

    v128 = (v106 + *(v151 + 24));
    if (*v128 != 1)
    {

      if (v128[3])
      {
      }
    }
  }

  v129 = v2 + v1[12];
  v130 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v130 - 8) + 48))(v129, 1, v130))
  {
    if (*(v129 + 16) != 1)
    {
    }

    if (*(v129 + 72) != 1)
    {
    }

    v131 = *(v130 + 28);
    v132 = sub_1BE04AF64();
    v133 = *(v132 - 8);
    v134 = *(v133 + 48);
    if (!v134(v129 + v131, 1, v132))
    {
      (*(v133 + 8))(v129 + v131, v132);
    }

    v135 = *(v130 + 32);
    if (!v134(v129 + v135, 1, v132))
    {
      (*(v133 + 8))(v129 + v135, v132);
    }
  }

  v136 = v2 + v1[13];

  sub_1BD0D45CC();
  sub_1BD0D4604(*(v136 + 40), *(v136 + 48));

  if (*(v136 + 88))
  {
  }

  v137 = (v2 + v1[21]);
  v138 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v139 = sub_1BE04AA64();
      (*(*(v139 - 8) + 8))(v137, v139);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120);

  sub_1BD0D4604(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1BD0D4604(*(v2 + v1[24]), *(v2 + v1[24] + 8));
  sub_1BD0D4604(*(v2 + v1[25]), *(v2 + v1[25] + 8));

  return swift_deallocObject();
}

uint64_t sub_1BD34BE80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentSummarySheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD3480F8(a1, v6, a2);
}

unint64_t sub_1BD34BF00()
{
  result = qword_1EBD42918;
  if (!qword_1EBD42918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42920);
    sub_1BD0DE4F4(&qword_1EBD426F0, &qword_1EBD426E8);
    sub_1BD34BFE8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42918);
  }

  return result;
}

uint64_t sub_1BD34BFE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD34C030()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = [v1 userInfo];
  v6 = sub_1BE052244();

  if (!*(v6 + 16))
  {

    goto LABEL_6;
  }

  v7 = sub_1BD148F70(v2, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    return 8;
  }

  sub_1BD038CD0(*(v6 + 56) + 32 * v7, v13);

  if (swift_dynamicCast())
  {
    return sub_1BD251780(v11, v12);
  }

  return 8;
}

uint64_t sub_1BD34C150()
{
  v1 = v0;
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = [v1 userInfo];
  v6 = sub_1BE052244();

  if (!*(v6 + 16))
  {

    goto LABEL_6;
  }

  v7 = sub_1BD148F70(v2, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  sub_1BD038CD0(*(v6 + 56) + 32 * v7, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  return 0;
}

uint64_t sub_1BD34C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1BE052724();
  v12 = sub_1BE04AAB4();
  v13 = sub_1BE04AAB4();
  v17[4] = a6;
  v17[5] = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1BD20815C;
  v17[3] = &block_descriptor_66;
  v14 = _Block_copy(v17);
  v15 = *(a8 + 16);
  sub_1BE048964();
  v15(a8, v11, v12, v13, v14);
  _Block_release(v14);
}

void sub_1BD34C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD456C0);
    v4 = sub_1BE052724();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void static ProvisioningFlowBridge.startInAppFlow(withNavController:context:requestConfiguration:phoneWebService:watchWebService:generateRequest:onViewLoaded:completion:)(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11)
{
  v113 = a8;
  v117 = a3;
  v118 = a7;
  v124 = a2;
  v125 = a6;
  v112 = a1;
  v123 = sub_1BE04BA14();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v13);
  v120 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B9C4();
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v119 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BAC4();
  v132 = *(v18 - 8);
  v133 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v130 = &v108 - v23;
  v131 = sub_1BE04C384();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v24);
  v128 = (&v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v108 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v108 - v32;
  v34 = sub_1BE04B944();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v114 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v127 = &v108 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v108 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v108 - v47;
  if (a4)
  {
    v126 = a5;
    v49 = v35;
    v50 = v34;
    v51 = *MEMORY[0x1E69B7F78];
    v52 = sub_1BE04B8D4();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v33, v51, v52);
    (*(v53 + 56))(v33, 0, 1, v52);
    v54 = a4;
    sub_1BE04B914();
    v55 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1BD1D8928(v56 > 1, v57 + 1, 1, v55);
    }

    v34 = v50;
    *(v55 + 2) = v57 + 1;
    v35 = v49;
    (*(v49 + 32))(&v55[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v57], v48, v34);
    a5 = v126;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v126 = a10;
  if (a5)
  {
    v58 = *MEMORY[0x1E69B7F80];
    v59 = sub_1BE04B8D4();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v33, v58, v59);
    (*(v60 + 56))(v33, 0, 1, v59);
    v61 = a5;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1BD1D8928(0, *(v55 + 2) + 1, 1, v55);
    }

    v63 = *(v55 + 2);
    v62 = *(v55 + 3);
    if (v63 >= v62 >> 1)
    {
      v55 = sub_1BD1D8928(v62 > 1, v63 + 1, 1, v55);
    }

    *(v55 + 2) = v63 + 1;
    (*(v35 + 32))(&v55[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v63], v44, v34);
  }

  if (*(v55 + 2))
  {
    v109 = a11;
    v64 = *(v35 + 16);
    v110 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v111 = v64;
    v64(v29, &v55[v110], v34);
    (*(v35 + 56))(v29, 0, 1, v34);
    sub_1BD0DE53C(v29, &qword_1EBD42928);
    v66 = v128;
    v65 = v129;
    v67 = v117;
    v68 = v118;
    v69 = v125;
    *v128 = v117;
    v66[1] = v69;
    v66[2] = v68;
    v70 = *MEMORY[0x1E69B82A0];
    v71 = *(v65 + 104);
    v125 = v34;
    v72 = v131;
    v71(v66, v70, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v73 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v74 = swift_allocObject();
    v108 = xmmword_1BE0B69E0;
    *(v74 + 16) = xmmword_1BE0B69E0;
    (*(v65 + 16))(v74 + v73, v66, v72);
    sub_1BE04C3D4();
    swift_allocObject();
    v75 = v67;
    sub_1BE048964();
    sub_1BE048C84();
    v76 = sub_1BE04C394();
    (*(v115 + 104))(v119, *MEMORY[0x1E69B7FC0], v116);
    v77 = *MEMORY[0x1E69B7FE0];
    v78 = sub_1BE04B9D4();
    v79 = v120;
    (*(*(v78 - 8) + 104))(v120, v77, v78);
    (*(v121 + 104))(v79, *MEMORY[0x1E69B8020], v123);
    v80 = v130;
    sub_1BE04BA94();
    (*(v132 + 16))(v122, v80, v133);
    v81 = v124;
    v82 = [v124 provisioningController];
    v83 = [v81 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v84 = sub_1BE04BC24();
    if (*(v55 + 2))
    {
      v85 = v84;
      v124 = v35;
      v86 = v127;
      v87 = v125;
      v88 = v111;
      v111(v127, &v55[v110], v125);
      v88(v114, v86, v87);
      sub_1BE04BBA4();
      v89 = sub_1BE04B8E4();
      v90 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      if (v90)
      {
        sub_1BE04BBE4();
        v91 = sub_1BD34FA40(v85, 0, 0);
        sub_1BE04BB64();
        type metadata accessor for ProvisioningInAppFlowSection();
        v92 = swift_allocObject();
        v92[5] = 0;
        swift_unknownObjectWeakInit();
        v92[6] = 0xD000000000000010;
        v92[7] = 0x80000001BE124610;
        v92[2] = v85;
        v92[3] = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
        v93 = swift_allocObject();
        *(v93 + 16) = v108;
        *(v93 + 32) = v92;
        *(v93 + 40) = &off_1F3BCB268;
        v94 = objc_allocWithZone(type metadata accessor for UIFlowManager());
        v118 = v76;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v95 = sub_1BD3986F8(v93);
        *(*&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
        swift_unknownObjectWeakAssign();
        v96 = swift_allocObject();
        *(v96 + 16) = 0;
        v97 = swift_allocObject();
        *(v97 + 16) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = v96;
        *(v98 + 24) = v97;
        v99 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v100 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        *v99 = sub_1BD35950C;
        *(v99 + 1) = v98;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD0D4744(v100);
        v101 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v102 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        *v101 = v113;
        *(v101 + 1) = a9;
        sub_1BD0D4744(v102);
        v103 = swift_allocObject();
        v104 = v109;
        v103[2] = v126;
        v103[3] = v104;
        v103[4] = v96;
        v103[5] = v97;
        v103[6] = v91;
        v103[7] = v95;
        v105 = v91;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v106 = v95;
        sub_1BD398318(sub_1BD3594F8, v103);

        (*(v124 + 1))(v127, v125);
        (*(v132 + 8))(v130, v133);
        (*(v129 + 8))(v128, v131);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v35 + 56))(v29, 1, 1, v34);
    sub_1BD0DE53C(v29, &qword_1EBD42928);
    v107 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v126(0, v107);
  }
}

uint64_t sub_1BD34D784(int a1, int a2, void *a3, void *a4, void *a5, void *aBlock, int a7, uint64_t a8, void (*a9)(id, id, id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  a9(v15, v16, v17, a8, v14);
}

id sub_1BD34D934(void (*a1)(uint64_t, void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  swift_beginAccess();
  v8 = *(a4 + 16);
  v9 = v8;
  v10 = sub_1BE048C84();
  a1(v10, v8);

  return [a5 stop];
}

uint64_t sub_1BD34DAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BD359334(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = *&v13[0];
    v7 = sub_1BE04A844();

    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = v7;
  }

  else
  {
    sub_1BD1B6140(v13, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    if (swift_dynamicCast())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v9;
  }

  return v5;
}

id sub_1BD34DBD4(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  swift_beginAccess();
  v9 = *(a5 + 16);
  v10 = v9;
  v11 = sub_1BE048C84();
  a2(v11, v9);

  return [a6 stop];
}

void sub_1BD34DD8C(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4)
{
  v6 = sub_1BE04BBD4();
  v7 = [v6 provisionedPasses];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 lastObject];

    if (v9)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      sub_1BD0E5E8C(0, &qword_1EBD42930);
      if (swift_dynamicCast())
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1BD0DE53C(v15, &qword_1EBD3EC90);
      v10 = 0;
    }

    v11 = [v10 secureElementPass];

    a2(v11);
    [a4 stop];
  }

  else
  {
    __break(1u);
  }
}

void static ProvisioningFlowBridge.startIngestionFlow(withUnownedNavController:context:credential:onFirstViewControllerShown:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v56 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v13 = MEMORY[0x1BFB389E0](a2);
  v14 = sub_1BD34FA40(v13, 0, 0);
  sub_1BE04BB64();
  v15 = sub_1BE04BBD4();
  v16 = [v15 provisioningResponse];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v49 = a4;
  v18 = [v15 provisionedPasses];
  if (!v18)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 lastObject];

  if (v20)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  key[0] = v53;
  key[1] = v54;
  if (!*(&v54 + 1))
  {

    v16 = sub_1BD0DE53C(key, &qword_1EBD3EC90);
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD42930);
  if ((swift_dynamicCast() & 1) == 0 || (v21 = [v52 secureElementPass], v52, !v21))
  {

LABEL_16:
    a6(v16);

LABEL_17:

    return;
  }

  v44 = a5;
  v45 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B7020;
  *(v22 + 32) = v21;
  v47 = v21;
  v23 = sub_1BE04BBD4();
  v24 = [v23 moreInfoItems];

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1BE04BD64();
  sub_1BD0E5E8C(0, qword_1EBD3D8F8);
  sub_1BE052744();

  v25 = [v17 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v48 = v47;
  v26 = sub_1BE04BC74();
  v27 = [a3 state];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 eligibilityResponse];

    if (v29)
    {
      v30 = [v29 identifier];

      if (v30)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();
    v31 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
    sub_1BE048964();
    v32 = v26;
    v46 = sub_1BD989980(v13, v32);

    v33 = sub_1BD988EB4();
    v34 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v35 = sub_1BD3986F8(v33);
    v36 = type metadata accessor for UIFlowManagerRendererWrapper();
    v37 = objc_allocWithZone(v36);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v51.receiver = v37;
    v51.super_class = v36;
    v38 = a1;
    v39 = objc_msgSendSuper2(&v51, sel_init);
    LOBYTE(key[0]) = 0;
    objc_setAssociatedObject(v38, key, v39, 1);

    *(*&v35[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
    v40 = &v35[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v41 = *&v35[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    *v40 = v49;
    v40[1] = v44;
    sub_1BD0D44B8(v49);
    sub_1BD0D4744(v41);
    v42 = swift_allocObject();
    v42[2] = v45;
    v42[3] = a7;
    v42[4] = v13;
    v42[5] = v35;
    sub_1BE048964();
    sub_1BE048964();
    v43 = v35;
    sub_1BD398318(sub_1BD354E24, v42);

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

uint64_t static ProvisioningFlowBridge.startPostProvisioningUITestFlow(withNavController:context:pass:parentNavController:presentNavController:completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B7020;
  *(v13 + 32) = a3;
  v14 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v15 = sub_1BE04BC64();
  v16 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v17 = sub_1BE048964();
  v18 = sub_1BD989980(v17, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v18;
  *(v19 + 40) = &off_1F3BC8F80;
  objc_allocWithZone(type metadata accessor for UIFlowManager());
  v20 = v18;
  v21 = sub_1BD3986F8(v19);
  *(*&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v22 = type metadata accessor for UIFlowManagerRendererWrapper();
  v23 = objc_allocWithZone(v22);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v34.receiver = v23;
  v34.super_class = v22;
  v24 = a4;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  key = 0;
  objc_setAssociatedObject(v24, &key, v25, 1);

  *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  v27 = &v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v28 = *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v27 = sub_1BD267328;
  v27[1] = v26;
  sub_1BE048964();
  sub_1BD0D4744(v28);
  v29 = swift_allocObject();
  v29[2] = a7;
  v29[3] = a8;
  v29[4] = v21;
  sub_1BE048964();
  v30 = v21;
  sub_1BD398318(sub_1BD267328, v29);
}

uint64_t static ProvisioningFlowBridge.startProvisioningUITestFlow(withNavController:context:screens:pass:parentNavController:presentNavController:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B7020;
  *(v13 + 32) = a4;
  v14 = a4;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v15 = sub_1BE04BC64();
  v16 = objc_allocWithZone(type metadata accessor for ProvisioningScreenDebugger());
  v17 = v15;
  sub_1BE048C84();
  v18 = sub_1BE048964();
  v19 = sub_1BD7F6A2C(v18, v17, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B69E0;
  *(v20 + 32) = v19;
  *(v20 + 40) = &off_1F3BBD870;
  v21 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v22 = v19;
  v23 = sub_1BD3986F8(v20);
  *(*&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v24 = type metadata accessor for UIFlowManagerRendererWrapper();
  v25 = objc_allocWithZone(v24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v37.receiver = v25;
  v37.super_class = v24;
  v26 = a5;
  v27 = objc_msgSendSuper2(&v37, sel_init);
  key = 0;
  objc_setAssociatedObject(v26, &key, v27, 1);

  *&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a7;
  v29 = &v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v30 = *&v23[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v29 = sub_1BD267328;
  v29[1] = v28;
  sub_1BE048964();
  sub_1BD0D4744(v30);
  v31 = swift_allocObject();
  v31[2] = a8;
  v31[3] = a9;
  v31[4] = v23;
  sub_1BE048964();
  v32 = v23;
  sub_1BD398318(sub_1BD267328, v31);
}

id ProvisioningFlowBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningFlowBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningFlowBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProvisioningFlowBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningFlowBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD34FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  if (!a3)
  {
    v10 = sub_1BE04BBD4();
    v11 = [v10 referralSource];

    if (v11)
    {
      sub_1BE052434();
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1BE048C84();
  sub_1BE04BC34();
  sub_1BE04BA84();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v14 = sub_1BE052404();

  sub_1BE04BC34();
  sub_1BE04BA64();
  v13(v8, v4);
  v15 = sub_1BE052404();

  if (v9)
  {
    v16 = sub_1BE052404();
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() startAnalyticsSessionForEnvironment:v14 intent:v15 referralSource:v16];

  v18 = sub_1BE04BBD4();
  v19 = [v18 campaignAttributionReferrerIdentifier];

  if (v19)
  {
    [v17 setCampaignAttributionReferrerIdentifier_];
  }

  v20 = sub_1BE04BBD4();
  v21 = [v17 createPreflightReporter];
  [v20 setAnalyticsReporter_];

  return v17;
}

void sub_1BD34FCE0(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11)
{
  v113 = a8;
  v120 = a7;
  *&v115 = a6;
  v126 = a5;
  v118 = a3;
  v125 = a2;
  v138 = *MEMORY[0x1E69E9840];
  v124 = sub_1BE04BA14();
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v13);
  v121 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BE04B9C4();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v15);
  v119 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04BAC4();
  v131 = *(v17 - 8);
  v132 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v123 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v129 = &v109 - v22;
  v130 = sub_1BE04C384();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v23);
  v127 = (&v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v109 - v31;
  v33 = sub_1BE04B944();
  v135 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v114 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v134 = &v109 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v109 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v109 - v45;
  v47 = type metadata accessor for UIFlowManagerRendererWrapper();
  v48 = objc_allocWithZone(v47);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v137.receiver = v48;
  v137.super_class = v47;
  v49 = a1;
  v50 = objc_msgSendSuper2(&v137, sel_init);
  key = 0;
  v133 = v50;
  objc_setAssociatedObject(v49, &key, v50, 1);

  if (a4)
  {
    v51 = *MEMORY[0x1E69B7F78];
    v52 = sub_1BE04B8D4();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v32, v51, v52);
    (*(v53 + 56))(v32, 0, 1, v52);
    v54 = a4;
    sub_1BE04B914();
    v55 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1BD1D8928(v56 > 1, v57 + 1, 1, v55);
    }

    v58 = v33;
    *(v55 + 2) = v57 + 1;
    (*(v135 + 32))(&v55[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v57], v46, v33);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
    v58 = v33;
  }

  v59 = v126;
  if (v126)
  {
    v60 = *MEMORY[0x1E69B7F80];
    v61 = sub_1BE04B8D4();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v32, v60, v61);
    (*(v62 + 56))(v32, 0, 1, v61);
    v63 = v59;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1BD1D8928(0, *(v55 + 2) + 1, 1, v55);
    }

    v65 = *(v55 + 2);
    v64 = *(v55 + 3);
    v66 = v134;
    if (v65 >= v64 >> 1)
    {
      v55 = sub_1BD1D8928(v64 > 1, v65 + 1, 1, v55);
    }

    *(v55 + 2) = v65 + 1;
    (*(v135 + 32))(&v55[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v65], v42, v58);
  }

  else
  {
    v66 = v134;
  }

  if (*(v55 + 2))
  {
    v109 = a11;
    v110 = a10;
    v67 = v135;
    v68 = *(v135 + 16);
    v111 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v112 = v68;
    v68(v28, &v55[v111], v58);
    (*(v67 + 56))(v28, 0, 1, v58);
    sub_1BD0DE53C(v28, &qword_1EBD42928);
    v69 = v127;
    v70 = v118;
    v71 = v115;
    *v127 = v118;
    v69[1] = v71;
    v69[2] = v120;
    v72 = *MEMORY[0x1E69B82A0];
    v126 = v58;
    v73 = v128;
    v74 = v130;
    (*(v128 + 104))(v69, v72, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v76 = swift_allocObject();
    v115 = xmmword_1BE0B69E0;
    *(v76 + 16) = xmmword_1BE0B69E0;
    (*(v73 + 16))(v76 + v75, v69, v74);
    sub_1BE04C3D4();
    swift_allocObject();
    v77 = v70;
    sub_1BE048964();
    sub_1BE048C84();
    v78 = sub_1BE04C394();
    (*(v116 + 104))(v119, *MEMORY[0x1E69B7FC0], v117);
    v79 = *MEMORY[0x1E69B7FE0];
    v80 = sub_1BE04B9D4();
    v81 = v121;
    (*(*(v80 - 8) + 104))(v121, v79, v80);
    (*(v122 + 104))(v81, *MEMORY[0x1E69B8020], v124);
    v82 = v129;
    sub_1BE04BA94();
    (*(v131 + 16))(v123, v82, v132);
    v83 = v125;
    v84 = [v125 provisioningController];
    v85 = [v83 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v86 = sub_1BE04BC24();
    if (!*(v55 + 2))
    {
      __break(1u);
    }

    v87 = v86;
    v88 = v126;
    v89 = v112;
    v112(v66, &v55[v111], v126);
    v89(v114, v66, v88);
    sub_1BE04BBA4();
    v90 = sub_1BE04B8E4();
    v91 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

    if (v91)
    {
      sub_1BE04BBE4();
      v125 = sub_1BD34FA40(v87, 0, 0);
      sub_1BE04BB64();
      type metadata accessor for ProvisioningInAppFlowSection();
      v92 = swift_allocObject();
      v92[5] = 0;
      swift_unknownObjectWeakInit();
      v92[6] = 0xD000000000000010;
      v92[7] = 0x80000001BE124610;
      v92[2] = v87;
      v92[3] = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
      v93 = swift_allocObject();
      *(v93 + 16) = v115;
      *(v93 + 32) = v92;
      *(v93 + 40) = &off_1F3BCB268;
      v94 = objc_allocWithZone(type metadata accessor for UIFlowManager());
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v95 = sub_1BD3986F8(v93);
      *(*&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
      swift_unknownObjectWeakAssign();
      v96 = swift_allocObject();
      *(v96 + 16) = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = v96;
      *(v98 + 24) = v97;
      v99 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
      v124 = v78;
      v100 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
      *v99 = sub_1BD35950C;
      *(v99 + 1) = v98;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BD0D4744(v100);
      v101 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
      v102 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
      *v101 = v113;
      *(v101 + 1) = a9;
      sub_1BD0D4744(v102);
      v103 = swift_allocObject();
      v104 = v109;
      v103[2] = v110;
      v103[3] = v104;
      v103[4] = v96;
      v103[5] = v97;
      v105 = v125;
      v103[6] = v125;
      v103[7] = v95;
      v106 = v105;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v107 = v95;
      sub_1BD398318(sub_1BD3594F8, v103);

      (*(v135 + 8))(v134, v126);
      (*(v131 + 8))(v129, v132);
      (*(v128 + 8))(v127, v130);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v135 + 56))(v28, 1, 1, v58);
    sub_1BD0DE53C(v28, &qword_1EBD42928);
    v108 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    a10(0, v108);
  }
}

void sub_1BD350B24(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11)
{
  v113 = a8;
  v117 = a3;
  v118 = a7;
  v124 = a2;
  v125 = a6;
  v112 = a1;
  v123 = sub_1BE04BA14();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v13);
  v120 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B9C4();
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v119 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BAC4();
  v132 = *(v18 - 8);
  v133 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v130 = &v108 - v23;
  v131 = sub_1BE04C384();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v24);
  v128 = (&v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42928);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v108 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v108 - v32;
  v34 = sub_1BE04B944();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v114 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v127 = &v108 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v108 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v108 - v47;
  if (a4)
  {
    v126 = a5;
    v49 = v35;
    v50 = v34;
    v51 = *MEMORY[0x1E69B7F78];
    v52 = sub_1BE04B8D4();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v33, v51, v52);
    (*(v53 + 56))(v33, 0, 1, v52);
    v54 = a4;
    sub_1BE04B914();
    v55 = sub_1BD1D8928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1BD1D8928(v56 > 1, v57 + 1, 1, v55);
    }

    v34 = v50;
    *(v55 + 2) = v57 + 1;
    v35 = v49;
    (*(v49 + 32))(&v55[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v57], v48, v34);
    a5 = v126;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v126 = a10;
  if (a5)
  {
    v58 = *MEMORY[0x1E69B7F80];
    v59 = sub_1BE04B8D4();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v33, v58, v59);
    (*(v60 + 56))(v33, 0, 1, v59);
    v61 = a5;
    sub_1BE04B914();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1BD1D8928(0, *(v55 + 2) + 1, 1, v55);
    }

    v63 = *(v55 + 2);
    v62 = *(v55 + 3);
    if (v63 >= v62 >> 1)
    {
      v55 = sub_1BD1D8928(v62 > 1, v63 + 1, 1, v55);
    }

    *(v55 + 2) = v63 + 1;
    (*(v35 + 32))(&v55[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v63], v44, v34);
  }

  if (*(v55 + 2))
  {
    v109 = a11;
    v64 = *(v35 + 16);
    v110 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v111 = v64;
    v64(v29, &v55[v110], v34);
    (*(v35 + 56))(v29, 0, 1, v34);
    sub_1BD0DE53C(v29, &qword_1EBD42928);
    v66 = v128;
    v65 = v129;
    v67 = v117;
    v68 = v118;
    v69 = v125;
    *v128 = v117;
    v66[1] = v69;
    v66[2] = v68;
    v70 = *MEMORY[0x1E69B82A0];
    v71 = *(v65 + 104);
    v125 = v34;
    v72 = v131;
    v71(v66, v70, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
    v73 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v74 = swift_allocObject();
    v108 = xmmword_1BE0B69E0;
    *(v74 + 16) = xmmword_1BE0B69E0;
    (*(v65 + 16))(v74 + v73, v66, v72);
    sub_1BE04C3D4();
    swift_allocObject();
    v75 = v67;
    sub_1BE048964();
    sub_1BE048C84();
    v76 = sub_1BE04C394();
    (*(v115 + 104))(v119, *MEMORY[0x1E69B7FC0], v116);
    v77 = *MEMORY[0x1E69B7FE0];
    v78 = sub_1BE04B9D4();
    v79 = v120;
    (*(*(v78 - 8) + 104))(v120, v77, v78);
    (*(v121 + 104))(v79, *MEMORY[0x1E69B8020], v123);
    v80 = v130;
    sub_1BE04BA94();
    (*(v132 + 16))(v122, v80, v133);
    v81 = v124;
    v82 = [v124 provisioningController];
    v83 = [v81 groupsController];
    sub_1BE04BC44();
    swift_allocObject();
    v84 = sub_1BE04BC24();
    if (*(v55 + 2))
    {
      v85 = v84;
      v124 = v35;
      v86 = v127;
      v87 = v125;
      v88 = v111;
      v111(v127, &v55[v110], v125);
      v88(v114, v86, v87);
      sub_1BE04BBA4();
      v89 = sub_1BE04B8E4();
      v90 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

      if (v90)
      {
        sub_1BE04BBE4();
        v91 = sub_1BD34FA40(v85, 0, 0);
        sub_1BE04BB64();
        type metadata accessor for ProvisioningInAppFlowSection();
        v92 = swift_allocObject();
        v92[5] = 0;
        swift_unknownObjectWeakInit();
        v92[6] = 0xD000000000000010;
        v92[7] = 0x80000001BE124610;
        v92[2] = v85;
        v92[3] = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
        v93 = swift_allocObject();
        *(v93 + 16) = v108;
        *(v93 + 32) = v92;
        *(v93 + 40) = &off_1F3BCB268;
        v94 = objc_allocWithZone(type metadata accessor for UIFlowManager());
        v118 = v76;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v95 = sub_1BD3986F8(v93);
        *(*&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
        swift_unknownObjectWeakAssign();
        v96 = swift_allocObject();
        *(v96 + 16) = 0;
        v97 = swift_allocObject();
        *(v97 + 16) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = v96;
        *(v98 + 24) = v97;
        v99 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        v100 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
        *v99 = sub_1BD35950C;
        *(v99 + 1) = v98;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BD0D4744(v100);
        v101 = &v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        v102 = *&v95[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
        *v101 = v113;
        *(v101 + 1) = a9;
        sub_1BD0D4744(v102);
        v103 = swift_allocObject();
        v104 = v109;
        v103[2] = v126;
        v103[3] = v104;
        v103[4] = v96;
        v103[5] = v97;
        v103[6] = v91;
        v103[7] = v95;
        v105 = v91;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        v106 = v95;
        sub_1BD398318(sub_1BD3594F8, v103);

        (*(v124 + 1))(v127, v125);
        (*(v132 + 8))(v130, v133);
        (*(v129 + 8))(v128, v131);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v35 + 56))(v29, 1, 1, v34);
    sub_1BD0DE53C(v29, &qword_1EBD42928);
    v107 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v126(0, v107);
  }
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context03addA13Configuration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo010PKPushableaP8Provider_pySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for UIFlowManagerRendererWrapper();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  key = 0;
  objc_setAssociatedObject(v12, &key, v13, 1);

  sub_1BD3519C0(v13, a2, a3, a4, a5, &off_1F3BAE1D8, &unk_1F3BA1540, sub_1BD35950C, &unk_1F3BA1568, sub_1BD3594F8);
}

uint64_t sub_1BD3519C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a7;
  v67 = a1;
  v68 = a6;
  v75 = a4;
  v76 = a5;
  v65 = a2;
  v77 = a10;
  v73 = a8;
  v74 = a9;
  v11 = sub_1BE04BA14();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE04B9C4();
  v15 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04BAC4();
  v78 = *(v19 - 8);
  v79 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v60 - v24;
  v26 = sub_1BE04C384();
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = (&v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v31 = a3;
  (*(v27 + 104))(v31, *MEMORY[0x1E69B82B0], v26, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = swift_allocObject();
  v66 = xmmword_1BE0B69E0;
  *(v33 + 16) = xmmword_1BE0B69E0;
  v71 = v27;
  v72 = v26;
  v34 = *(v27 + 16);
  v69 = v31;
  v34(v33 + v32, v31, v26);
  sub_1BE04C3D4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v35 = sub_1BE04C394();
  (*(v15 + 104))(v18, *MEMORY[0x1E69B7FC0], v62);
  v36 = *MEMORY[0x1E69B7FE0];
  v37 = sub_1BE04B9D4();
  (*(*(v37 - 8) + 104))(v14, v36, v37);
  (*(v63 + 104))(v14, *MEMORY[0x1E69B8020], v64);
  sub_1BE04BA94();
  (*(v78 + 16))(v61, v25, v79);
  v38 = v65;
  v39 = [v65 provisioningController];
  v40 = [v38 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v41 = sub_1BE04BC24();
  v42 = sub_1BD34FA40(v41, 0, 0);
  v43 = [a3 identityDocumentConfiguration];
  if (v43)
  {
    v44 = MEMORY[0x1E69BB1D0];
LABEL_5:

    [v42 setProductType:*v44 subtype:0];
    goto LABEL_6;
  }

  v43 = [a3 shareablePassConfiguration];
  if (v43)
  {
    v44 = MEMORY[0x1E69BB1C8];
    goto LABEL_5;
  }

LABEL_6:
  v45 = v42;
  sub_1BE04BB64();
  type metadata accessor for ProvisioningInAppPushProvFlowSection();
  v46 = swift_allocObject();
  v46[5] = 0;
  swift_unknownObjectWeakInit();
  v46[6] = 0xD000000000000018;
  v46[7] = 0x80000001BE124910;
  v46[8] = 0;
  v46[2] = v41;
  v46[3] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v47 = swift_allocObject();
  *(v47 + 16) = v66;
  *(v47 + 32) = v46;
  *(v47 + 40) = &off_1F3BA8BB8;
  v48 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v49 = sub_1BD3986F8(v47);
  *(*&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = v68;
  swift_unknownObjectWeakAssign();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  v53 = &v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v54 = *&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v53 = v73;
  *(v53 + 1) = v52;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v54);
  v55 = swift_allocObject();
  v56 = v76;
  v55[2] = v75;
  v55[3] = v56;
  v55[4] = v50;
  v55[5] = v51;
  v55[6] = v45;
  v55[7] = v49;
  v57 = v45;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v58 = v49;
  sub_1BD398318(v77, v55);

  (*(v78 + 8))(v25, v79);
  (*(v71 + 8))(v69, v72);
}

void sub_1BD3520DC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v9 = sub_1BE04BAC4();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B86E8]) initWithConfiguration:a3 productIdentifier:*MEMORY[0x1E69BC2B8]];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v15 = sub_1BE04C384();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v67 = xmmword_1BE0B69E0;
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + v17) = v14;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69B82A8], v15);
  sub_1BE04C3D4();
  swift_allocObject();
  v19 = v14;
  v20 = sub_1BE04C394();
  sub_1BE04BC44();
  v21 = MEMORY[0x1BFB389E0](a2);
  v22 = [a3 referralSource];
  if (v22 > 8)
  {
LABEL_20:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v69 = a4;
  v71 = v20;
  if (((1 << v22) & 0x18F) != 0)
  {
    v23 = 0;
  }

  else if (((1 << v22) & 0x60) != 0)
  {
    v23 = 1;
  }

  else
  {
    v24 = [a3 password];
    v25 = sub_1BE052434();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v23 = [a3 passwordEnteredManually];
    }

    else
    {
      v23 = 1;
    }

    v20 = v71;
  }

  v68 = v19;
  type metadata accessor for ProvisioningCarPairingFlowSection();
  v29 = swift_allocObject();
  *(v29 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 56) = 0xD000000000000015;
  *(v29 + 64) = 0x80000001BE124930;
  *(v29 + 16) = v21;
  *(v29 + 24) = v20;
  *(v29 + 32) = v23;
  sub_1BE048964();
  sub_1BE048964();
  v30 = PKSubcredentialPairingReferralSourceToString();
  if (!v30)
  {
    sub_1BE052434();
    v30 = sub_1BE052404();
  }

  v31 = sub_1BE052434();
  v33 = v32;
  v34 = [a3 analyticsArchivedParentToken];
  if (v34)
  {
    v35 = v34;

    v36 = sub_1BE04AAC4();
    v62 = v37;
    v63 = v36;

    v61 = objc_opt_self();
    sub_1BE04BC34();
    sub_1BE04BA84();
    v64 = a5;
    v38 = v66;
    v39 = *(v65 + 8);
    v39(v12, v66);
    v40 = sub_1BE052404();

    sub_1BE04BC34();
    sub_1BE04BA64();
    v39(v12, v38);
    v41 = sub_1BE052404();

    v43 = v62;
    v42 = v63;
    v44 = sub_1BE04AAB4();
    v45 = [v61 continueAnalyticsSessionForEnvironment:v40 intent:v41 referralSource:v30 archivedParent:v44];

    a5 = v64;
    v46 = v45;
    v47 = sub_1BE04BBD4();
    v48 = [v46 createPreflightReporter];
    [v47 setAnalyticsReporter_];

    sub_1BD1245AC(v42, v43);
  }

  else
  {

    v49 = sub_1BD34FA40(v21, v31, v33);

    v46 = v49;
  }

  v50 = v46;
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v51 = swift_allocObject();
  *(v51 + 16) = v67;
  *(v51 + 32) = v29;
  *(v51 + 40) = &off_1F3B9E9D8;
  v52 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  v53 = sub_1BD3986F8(v51);
  *(*&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  v57 = &v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v58 = *&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v57 = sub_1BD35950C;
  *(v57 + 1) = v56;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v58);
  v59 = swift_allocObject();
  v59[2] = v69;
  v59[3] = a5;
  v59[4] = v54;
  v59[5] = v55;
  v59[6] = v50;
  v59[7] = v53;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v60 = v53;
  sub_1BD398318(sub_1BD3594F8, v59);
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context22addCarKeyConfiguration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo05PKAddpqaR0CySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for UIFlowManagerRendererWrapper();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  key = 0;
  objc_setAssociatedObject(v12, &key, v13, 1);

  sub_1BD3520DC(v13, a2, a3, a4, a5);
}

void _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE017withNavController7context22addCarKeyConfiguration10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo05PKAddopaQ0CySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v9 = sub_1BE04BAC4();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B86E8]) initWithConfiguration:a3 productIdentifier:*MEMORY[0x1E69BC2B8]];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v15 = sub_1BE04C384();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v67 = xmmword_1BE0B69E0;
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + v17) = v14;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69B82A8], v15);
  sub_1BE04C3D4();
  swift_allocObject();
  v19 = v14;
  v20 = sub_1BE04C394();
  sub_1BE04BC44();
  v21 = MEMORY[0x1BFB389E0](a2);
  v22 = [a3 referralSource];
  if (v22 > 8)
  {
LABEL_20:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v69 = a4;
  v71 = v20;
  if (((1 << v22) & 0x18F) != 0)
  {
    v23 = 0;
  }

  else if (((1 << v22) & 0x60) != 0)
  {
    v23 = 1;
  }

  else
  {
    v24 = [a3 password];
    v25 = sub_1BE052434();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v23 = [a3 passwordEnteredManually];
    }

    else
    {
      v23 = 1;
    }

    v20 = v71;
  }

  v68 = v19;
  type metadata accessor for ProvisioningCarPairingFlowSection();
  v29 = swift_allocObject();
  *(v29 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 56) = 0xD000000000000015;
  *(v29 + 64) = 0x80000001BE124930;
  *(v29 + 16) = v21;
  *(v29 + 24) = v20;
  *(v29 + 32) = v23;
  sub_1BE048964();
  sub_1BE048964();
  v30 = PKSubcredentialPairingReferralSourceToString();
  if (!v30)
  {
    sub_1BE052434();
    v30 = sub_1BE052404();
  }

  v31 = sub_1BE052434();
  v33 = v32;
  v34 = [a3 analyticsArchivedParentToken];
  if (v34)
  {
    v35 = v34;

    v36 = sub_1BE04AAC4();
    v62 = v37;
    v63 = v36;

    v61 = objc_opt_self();
    sub_1BE04BC34();
    sub_1BE04BA84();
    v64 = a5;
    v38 = v66;
    v39 = *(v65 + 8);
    v39(v12, v66);
    v40 = sub_1BE052404();

    sub_1BE04BC34();
    sub_1BE04BA64();
    v39(v12, v38);
    v41 = sub_1BE052404();

    v43 = v62;
    v42 = v63;
    v44 = sub_1BE04AAB4();
    v45 = [v61 continueAnalyticsSessionForEnvironment:v40 intent:v41 referralSource:v30 archivedParent:v44];

    a5 = v64;
    v46 = v45;
    v47 = sub_1BE04BBD4();
    v48 = [v46 createPreflightReporter];
    [v47 setAnalyticsReporter_];

    sub_1BD1245AC(v42, v43);
  }

  else
  {

    v49 = sub_1BD34FA40(v21, v31, v33);

    v46 = v49;
  }

  v50 = v46;
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v51 = swift_allocObject();
  *(v51 + 16) = v67;
  *(v51 + 32) = v29;
  *(v51 + 40) = &off_1F3B9E9D8;
  v52 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  v53 = sub_1BD3986F8(v51);
  *(*&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  v57 = &v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v58 = *&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v57 = sub_1BD35950C;
  *(v57 + 1) = v56;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v58);
  v59 = swift_allocObject();
  v59[2] = v69;
  v59[3] = a5;
  v59[4] = v54;
  v59[5] = v55;
  v59[6] = v50;
  v59[7] = v53;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v60 = v53;
  sub_1BD398318(sub_1BD3594F8, v59);
}

size_t _s9PassKitUI22ProvisioningFlowBridgeC024startShareableCredentialE017withNavController7context11credentials10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSaySo0phI0CGyyctFZ_0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE04C384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v40 - v17);
  v48 = a3;
  if (a3 >> 62)
  {
    v19 = sub_1BE053704();
  }

  else
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a1;
  if (!v19)
  {
LABEL_16:
    sub_1BE04C3D4();
    swift_allocObject();
    v30 = sub_1BE04C394();
    sub_1BE04BC44();
    v31 = MEMORY[0x1BFB389E0](a2);
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v32 = swift_allocObject();
    v32[5] = 0;
    swift_unknownObjectWeakInit();
    v32[6] = 0xD000000000000018;
    v32[7] = 0x80000001BE124910;
    v32[8] = 0;
    v32[2] = v31;
    v32[3] = v30;
    sub_1BE048964();
    sub_1BE048964();
    v33 = sub_1BD34FA40(v31, 0, 0);
    sub_1BE04BB64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BE0B69E0;
    *(v34 + 32) = v32;
    *(v34 + 40) = &off_1F3BA8BB8;
    v35 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    sub_1BE048964();
    v36 = sub_1BD3986F8(v34);
    *(*&v36[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a5;
    v37[4] = v33;
    v37[5] = v36;
    v38 = v33;
    sub_1BE048964();
    v39 = v36;
    sub_1BD398318(sub_1BD3594FC, v37);
  }

  v49 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531FF4(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v41 = a2;
    v42 = a4;
    v43 = a5;
    v21 = v49;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v22 = 0;
      LODWORD(v47) = *MEMORY[0x1E69B82A8];
      do
      {
        *v18 = MEMORY[0x1BFB40900](v22);
        (*(v11 + 104))(v18, v47, v10);
        v49 = v21;
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1BD531FF4(v23 > 1, v24 + 1, 1);
          v21 = v49;
        }

        ++v22;
        *(v21 + 16) = v24 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v18, v10);
      }

      while (v19 != v22);
    }

    else
    {
      v25 = (v48 + 32);
      LODWORD(v48) = *MEMORY[0x1E69B82A8];
      v46 = *(v11 + 104);
      v47 = v11 + 104;
      v45 = v11 + 32;
      do
      {
        v26 = *v25;
        *v14 = *v25;
        v46(v14, v48, v10);
        v49 = v21;
        v27 = *(v21 + 16);
        v28 = *(v21 + 24);
        v29 = v26;
        if (v27 >= v28 >> 1)
        {
          sub_1BD531FF4(v28 > 1, v27 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v27 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, v14, v10);
        ++v25;
        --v19;
      }

      while (v19);
    }

    a4 = v42;
    a5 = v43;
    a2 = v41;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC020startShareRedemptionE017withNavController7context10invitation14referralSource10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo013PKSharingPushD10InvitationCSSSgySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v73 = a7;
  v66 = a5;
  v67 = a4;
  v65 = a2;
  v71 = a1;
  v63 = sub_1BE04BA14();
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE04B9C4();
  v12 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v62 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v60 = &v60 - v21;
  v22 = sub_1BE04C384();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = (&v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v27 = a3;
  v28 = *MEMORY[0x1E69B8288];
  v69 = v27;
  v70 = v23;
  v29 = *(v23 + 104);
  v31 = v30;
  v68 = v30;
  v29(v27, v28, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v32 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v33 = swift_allocObject();
  v64 = xmmword_1BE0B69E0;
  *(v33 + 16) = xmmword_1BE0B69E0;
  (*(v23 + 16))(v33 + v32, v27, v31);
  sub_1BE04C3D4();
  swift_allocObject();
  v34 = a3;
  v35 = sub_1BE04C394();
  (*(v12 + 104))(v15, *MEMORY[0x1E69B7FC0], v61);
  v36 = *MEMORY[0x1E69B8010];
  v37 = sub_1BE04B9F4();
  (*(*(v37 - 8) + 104))(v11, v36, v37);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B8018], v63);
  v38 = v60;
  sub_1BE04BA94();
  (*(v74 + 16))(v62, v38, v75);
  v39 = v65;
  v40 = [v65 provisioningController];
  v41 = [v39 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v42 = sub_1BE04BC24();
  v43 = v66;
  sub_1BE048C84();
  v44 = v67;
  sub_1BE04BB24();
  v45 = sub_1BD34FA40(v42, v44, v43);
  sub_1BE04BB64();
  type metadata accessor for ProvisioningInAppPushProvFlowSection();
  v46 = swift_allocObject();
  v46[5] = 0;
  swift_unknownObjectWeakInit();
  v46[6] = 0xD000000000000018;
  v46[7] = 0x80000001BE124910;
  v46[8] = 0;
  v46[2] = v42;
  v46[3] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v47 = swift_allocObject();
  *(v47 + 16) = v64;
  *(v47 + 32) = v46;
  *(v47 + 40) = &off_1F3BA8BB8;
  v48 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v49 = sub_1BD3986F8(v47);
  *(*&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  v53 = &v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  v54 = *&v49[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
  *v53 = sub_1BD35950C;
  *(v53 + 1) = v52;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D4744(v54);
  v55 = swift_allocObject();
  v56 = v73;
  v55[2] = v72;
  v55[3] = v56;
  v55[4] = v50;
  v55[5] = v51;
  v55[6] = v45;
  v55[7] = v49;
  v57 = v45;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v58 = v49;
  sub_1BD398318(sub_1BD3594F8, v55);

  (*(v74 + 8))(v38, v75);
  (*(v70 + 8))(v69, v68);
}

id _s9PassKitUI22ProvisioningFlowBridgeC026startCarKeyShareRedemptionE017withNavController7context10invitation6handle08originalJ3URL10completionySo035PKPaymentSetupDismissibleNavigationN0C_So21PKProvisioningContextCSo09PKSharinghI10InvitationCSo22PKSharingChannelHandleCSSySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v68 = a2;
  v65 = a7;
  v61 = a5;
  v62 = a6;
  v69 = a3;
  v70 = a4;
  v63 = a1;
  v8 = sub_1BE04BA14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B9C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04BAC4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v61 - v26;
  (*(v14 + 104))(v17, *MEMORY[0x1E69B7FC0], v13, v25);
  v28 = *MEMORY[0x1E69B8010];
  v29 = sub_1BE04B9F4();
  (*(*(v29 - 8) + 104))(v12, v28, v29);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B8018], v8);
  sub_1BE04BA94();
  v64 = v19;
  v30 = *(v19 + 16);
  v66 = v18;
  v30(v22, v27, v18);
  v31 = v68;
  v32 = [v68 provisioningController];
  v33 = [v31 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v34 = sub_1BE04BC24();
  v35 = sub_1BD34FA40(v34, 0, 0);
  sub_1BE04BB64();
  v36 = objc_opt_self();
  sub_1BE048964();
  v37 = [v36 createTaggedShare];
  v38 = v69;
  v39 = [v69 activationOptions];
  [v37 setActivationOptions_];

  v40 = objc_allocWithZone(MEMORY[0x1E69B92B8]);
  result = [v40 initWithSharingChannelHandle:v70 invitation:v38 share:v37];
  if (result)
  {
    v42 = result;
    v43 = sub_1BE052404();
    [v42 setOriginalShareURL_];

    v44 = type metadata accessor for ProvisioningCarKeyInvitationFlowItem();
    v45 = objc_allocWithZone(v44);
    *&v45[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator] = 0;
    *&v45[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v46 = &v45[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier];
    *v46 = 0xD000000000000018;
    *(v46 + 1) = 0x80000001BE1248F0;
    *&v45[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context] = v34;
    *&v45[OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential] = v42;
    v71.receiver = v45;
    v71.super_class = v44;
    v47 = objc_msgSendSuper2(&v71, sel_init);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BE0B69E0;
    *(v48 + 32) = v47;
    *(v48 + 40) = &off_1F3BA70D8;
    v49 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v50 = v47;
    v51 = sub_1BD3986F8(v48);
    *(*&v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v52;
    *(v54 + 24) = v53;
    v55 = &v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v56 = *&v51[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    *v55 = sub_1BD35950C;
    *(v55 + 1) = v54;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0D4744(v56);
    v57 = swift_allocObject();
    v58 = v65;
    v57[2] = v51;
    v57[3] = v58;
    v57[4] = v67;
    v57[5] = v52;
    v57[6] = v53;
    v57[7] = v35;
    v59 = v35;
    sub_1BE048964();
    sub_1BE048964();
    v60 = v51;
    sub_1BE048964();
    sub_1BD398318(sub_1BD359324, v57);

    (*(v64 + 8))(v27, v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC023startProductManualEntryE017withNavController7context7product07presentlM010completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCSo0rsH0CyycySo015PKSecureElementA0CSgctFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a2);
  v11 = type metadata accessor for PaymentSetupProductFlowSection();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
  *v13 = 0xD000000000000012;
  *(v13 + 1) = 0x80000001BE118AA0;
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v10;
  *&v12[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = a3;
  v37.receiver = v12;
  v37.super_class = v11;
  sub_1BE048964();
  v14 = a3;
  v15 = objc_msgSendSuper2(&v37, sel_init);
  v16 = sub_1BD34FA40(v10, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B6CA0;
  v18 = type metadata accessor for ProvisioningHeroFlowItem();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
  v20 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
  strcpy(&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
  v21[13] = 0;
  *(v21 + 7) = -5120;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v10;
  v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
  *&v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
  v22 = *&v19[v20];
  *&v19[v20] = 0;
  swift_retain_n();

  v19[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
  v36.receiver = v19;
  v36.super_class = v18;
  v23 = objc_msgSendSuper2(&v36, sel_init);

  *(v17 + 32) = v23;
  *(v17 + 40) = &off_1F3BA7D00;
  *(v17 + 48) = v15;
  *(v17 + 56) = &off_1F3BAAA80;
  v24 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v25 = v15;
  v26 = sub_1BD3986F8(v17);
  *(*&v26[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v27 = &v26[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v28 = *&v26[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v27 = a4;
  *(v27 + 1) = a5;
  sub_1BD0D4744(v28);
  v29 = swift_allocObject();
  v29[2] = v10;
  v29[3] = a6;
  v29[4] = a7;
  v29[5] = v16;
  v29[6] = v26;
  sub_1BE048964();
  v30 = v16;
  sub_1BE048964();
  sub_1BE048964();
  v31 = v26;
  sub_1BD398318(sub_1BD359314, v29);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC016startManualEntryE017withNavController7context10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1BE04BC44();
  v7 = MEMORY[0x1BFB389E0](a2);
  v8 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v9 = sub_1BE048964();
  v10 = sub_1BD87126C(v9, 0, 0);
  v11 = sub_1BD34FA40(v7, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 32) = v10;
  *(v12 + 40) = &off_1F3BC0AB0;
  v13 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v14 = v10;
  v15 = sub_1BD3986F8(v12);
  *(*&v15[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v11;
  v16[5] = v15;
  v17 = v11;
  sub_1BE048964();
  v18 = v15;
  sub_1BD398318(sub_1BD3594FC, v16);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC024startProvisionToPurchaseE017withNavController7context011onFirstViewM5Shown10completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCyycSgyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v69 = a6;
  v63 = a1;
  v64 = a4;
  v59 = a3;
  v7 = sub_1BE04B9C4();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BAC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - v18;
  v20 = sub_1BE04BA14();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v57 - v28;
  [a2 environment];
  sub_1BE04BAD4();
  sub_1BE04BA24();
  v60 = *(v12 + 8);
  v61 = v12 + 8;
  v60(v19, v11);
  (*(v66 + 104))(v10, *MEMORY[0x1E69B7FB8], v67);
  v65 = v21;
  v66 = v20;
  v30 = *(v21 + 16);
  v62 = v29;
  v31 = v20;
  v32 = v59;
  v30(v24, v29, v31);
  sub_1BE04BA94();
  v33 = *(v12 + 16);
  v67 = v15;
  v33(v19, v15, v11);
  v34 = [a2 provisioningController];
  v35 = [a2 groupsController];
  sub_1BE04BC44();
  swift_allocObject();
  v36 = sub_1BE04BC24();
  v37 = sub_1BD34FA40(v36, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B69E0;
  v39 = sub_1BE048964();
  *(v38 + 32) = sub_1BD99F510(v39, 0, 1);
  *(v38 + 40) = &off_1F3BC96F0;
  if (!v32)
  {
    v58 = v11;
    v40 = type metadata accessor for ProvisioningHeroFlowItem();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v42 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v43 = &v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v43[13] = 0;
    *(v43 + 7) = -5120;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v36;
    v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v44 = *&v41[v42];
    *&v41[v42] = 0;
    swift_retain_n();

    v41[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v70.receiver = v41;
    v70.super_class = v40;
    v45 = objc_msgSendSuper2(&v70, sel_init);

    v71 = v38;
    v46 = *(v38 + 16);
    if (v46 >= *(v38 + 24) >> 1)
    {
      v38 = sub_1BD1D7488(1, v46 + 1, 1, v38);
      v71 = v38;
    }

    sub_1BD1DE408(0, 0, 1, v45, &off_1F3BA7D00);

    v11 = v58;
  }

  v47 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v48 = sub_1BD3986F8(v38);
  *(*&v48[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v49 = &v48[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v50 = *&v48[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v51 = v64;
  *v49 = v32;
  v49[1] = v51;
  sub_1BD0D44B8(v32);
  sub_1BD0D4744(v50);
  v52 = swift_allocObject();
  v53 = v69;
  v52[2] = v68;
  v52[3] = v53;
  v52[4] = v37;
  v52[5] = v48;
  v54 = v37;
  sub_1BE048964();
  v55 = v48;
  sub_1BD398318(sub_1BD3594FC, v52);

  v60(v67, v11);
  return (*(v65 + 8))(v62, v66);
}

void sub_1BD354E28(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  sub_1BE04BC44();
  _Block_copy(a6);
  v12 = MEMORY[0x1BFB389E0](a2);
  v13 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  v14 = sub_1BE04BBD4();
  v15 = [v14 provisioningResponse];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v47 = a1;
  v17 = [v14 provisionedPasses];
  if (!v17)
  {
    _Block_release(a6);
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [v17 lastObject];

  if (v19)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  key[0] = v52;
  key[1] = v53;
  if (!*(&v53 + 1))
  {

    sub_1BD0DE53C(key, &qword_1EBD3EC90);
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD42930);
  if ((swift_dynamicCast() & 1) == 0 || (v20 = [v51 secureElementPass], v51, !v20))
  {

LABEL_16:
    a6[2](a6);

LABEL_17:

    return;
  }

  v43 = a4;
  v44 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BE0B7020;
  *(v21 + 32) = v20;
  v45 = v20;
  v22 = sub_1BE04BBD4();
  v23 = [v22 moreInfoItems];

  if (!v23)
  {
LABEL_20:
    _Block_release(a6);
    __break(1u);
    goto LABEL_21;
  }

  sub_1BE04BD64();
  sub_1BD0E5E8C(0, qword_1EBD3D8F8);
  sub_1BE052744();

  v24 = [v16 externalProvisioningOptions];
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v46 = v45;
  v25 = sub_1BE04BC74();
  v26 = [a3 state];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 eligibilityResponse];

    if (v28)
    {
      v29 = [v28 identifier];

      if (v29)
      {
        sub_1BE052434();
      }
    }

    sub_1BE04BCC4();
    v30 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
    sub_1BE048964();
    v31 = v25;
    v49 = sub_1BD989980(v12, v31);

    v32 = sub_1BD988EB4();
    v33 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    v34 = sub_1BD3986F8(v32);
    v35 = type metadata accessor for UIFlowManagerRendererWrapper();
    v36 = objc_allocWithZone(v35);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v50.receiver = v36;
    v50.super_class = v35;
    v37 = v47;
    v38 = objc_msgSendSuper2(&v50, sel_init);
    LOBYTE(key[0]) = 0;
    objc_setAssociatedObject(v37, key, v38, 1);

    *(*&v34[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
    v39 = &v34[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    v40 = *&v34[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
    *v39 = v43;
    v39[1] = v44;
    sub_1BD0D44B8(v43);
    sub_1BD0D4744(v40);
    v41 = swift_allocObject();
    v41[2] = sub_1BD167418;
    v41[3] = v11;
    v41[4] = v12;
    v41[5] = v34;
    sub_1BE048964();
    sub_1BE048964();
    v42 = v34;
    sub_1BD398318(sub_1BD3594F4, v41);

    goto LABEL_17;
  }

LABEL_21:
  _Block_release(a6);
  __break(1u);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC017startVerificationE017withNavController7context4pass012verificationK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSo015PKSecureElementA0CSo0qhK0CyycyyctFZ_0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = a3;
  v15 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  sub_1BE04BC44();
  v17 = MEMORY[0x1BFB389E0](a2);
  v18 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationFlowSection());
  sub_1BE048964();
  v19 = v16;
  v20 = sub_1BD28EC40(v17, v19, a4);
  v21 = sub_1BD34FA40(v17, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0B69E0;
  *(v22 + 32) = v20;
  *(v22 + 40) = &off_1F3B9AD58;
  v23 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v24 = v20;
  v25 = sub_1BD3986F8(v22);
  *(*&v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  v27 = &v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v28 = *&v25[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v27 = sub_1BD267328;
  v27[1] = v26;
  sub_1BE048964();
  sub_1BD0D4744(v28);
  v29 = swift_allocObject();
  v29[2] = a7;
  v29[3] = a8;
  v29[4] = v21;
  v29[5] = v25;
  v30 = v21;
  sub_1BE048964();
  v31 = v25;
  sub_1BD398318(sub_1BD3594FC, v29);
}

uint64_t sub_1BD35569C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = *MEMORY[0x1E69E9840];
  sub_1BE04BD64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = a3;
  v15 = a3;
  sub_1BD1ABED0(MEMORY[0x1E69E7CC0]);
  v16 = sub_1BE04BC74();
  sub_1BE04BC44();
  v17 = MEMORY[0x1BFB389E0](a2);
  v18 = type metadata accessor for PrecursorPassUpgradeFlowSection();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_identifier];
  *v20 = 0xD00000000000001FLL;
  *(v20 + 1) = 0x80000001BE1248D0;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_context] = v17;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_provisionedPasses] = v16;
  *&v19[OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_precursorUpgradeController] = a4;
  v44.receiver = v19;
  v44.super_class = v18;
  sub_1BE048964();
  v39 = v16;
  v21 = a4;
  v22 = objc_msgSendSuper2(&v44, sel_init);
  v23 = sub_1BD34FA40(v17, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BE0B69E0;
  *(v24 + 32) = v22;
  *(v24 + 40) = &off_1F3BBFA48;
  v25 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v26 = v22;
  v27 = sub_1BD3986F8(v24);
  *(*&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v28 = type metadata accessor for UIFlowManagerRendererWrapper();
  v29 = objc_allocWithZone(v28);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v43.receiver = v29;
  v43.super_class = v28;
  v30 = a5;
  v31 = objc_msgSendSuper2(&v43, sel_init);
  key = 0;
  objc_setAssociatedObject(v30, &key, v31, 1);

  *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  v33 = &v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v34 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v33 = sub_1BD214190;
  v33[1] = v32;
  sub_1BE048964();
  sub_1BD0D4744(v34);
  v35 = swift_allocObject();
  v35[2] = a8;
  v35[3] = a9;
  v35[4] = v23;
  v35[5] = v27;
  v36 = v23;
  sub_1BE048964();
  v37 = v27;
  sub_1BD398318(sub_1BD359310, v35);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC016startCredentialsdE017withNavController7context11credentials06parentjK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSaySo0Q10CredentialCGSo012UINavigationK0CyycyyctFZ_0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a2);
  v13 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v14 = objc_allocWithZone(v13);
  v15 = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v15;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v15;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000001BE1228D0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v12;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a3;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v39.receiver = v14;
  v39.super_class = v13;
  sub_1BE048964();
  sub_1BE048C84();
  v17 = objc_msgSendSuper2(&v39, sel_init);
  v18 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v17;
  *(v19 + 40) = &off_1F3BA3CD0;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v21 = v17;
  v22 = sub_1BD3986F8(v19);
  *(*&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v23 = type metadata accessor for UIFlowManagerRendererWrapper();
  v24 = objc_allocWithZone(v23);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v38.receiver = v24;
  v38.super_class = v23;
  v25 = a4;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  key = 0;
  objc_setAssociatedObject(v25, &key, v26, 1);

  *&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v27 = swift_allocObject();
  *(v27 + 16) = a5;
  *(v27 + 24) = a6;
  v28 = &v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v29 = *&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v28 = sub_1BD267328;
  v28[1] = v27;
  sub_1BE048964();
  sub_1BD0D4744(v29);
  v30 = swift_allocObject();
  v30[2] = a7;
  v30[3] = a8;
  v30[4] = v18;
  v30[5] = v22;
  v31 = v18;
  sub_1BE048964();
  v32 = v22;
  sub_1BD398318(sub_1BD3594FC, v30);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context11credentials26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SaySo19PKPaymentCredentialCGySo06UIViewO0CcyyctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a1);
  v13 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v14 = objc_allocWithZone(v13);
  v15 = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v15;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v15;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v16 = 0xD00000000000001ALL;
  v16[1] = 0x80000001BE1228D0;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v12;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a2;
  *&v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
  v14[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v28.receiver = v14;
  v28.super_class = v13;
  sub_1BE048964();
  sub_1BE048C84();
  v17 = objc_msgSendSuper2(&v28, sel_init);
  v18 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v17;
  *(v19 + 40) = &off_1F3BA3CD0;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v21 = v17;
  v22 = sub_1BD3986F8(v19);
  type metadata accessor for ProvisioningSetupAssistantFlowRenderer();
  swift_allocObject();
  sub_1BE048964();
  v23 = sub_1BD224E3C(a3, a4);
  *(*&v22[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3B988E8;
  swift_unknownObjectWeakAssign();
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = v18;
  v24[5] = v23;
  v24[6] = v22;
  v25 = v18;
  sub_1BE048964();
  sub_1BE048964();
  v26 = v22;
  sub_1BD398318(sub_1BD3592BC, v24);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context16allowManualEntry26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SbySo06UIViewQ0CcyyctFZ_0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BE04BC44();
  v12 = MEMORY[0x1BFB389E0](a1);
  v13 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowSection());
  v14 = sub_1BE048964();
  v15 = sub_1BD71CA9C(v14, a2, 0);
  v16 = sub_1BD34FA40(v12, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B69E0;
  *(v17 + 32) = v15;
  *(v17 + 40) = &off_1F3BB8670;
  v18 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v19 = v15;
  v20 = sub_1BD3986F8(v17);
  type metadata accessor for ProvisioningSetupAssistantFlowRenderer();
  swift_allocObject();
  sub_1BE048964();
  v21 = sub_1BD224E3C(a3, a4);
  *(*&v20[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3B988E8;
  swift_unknownObjectWeakAssign();
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = v16;
  v22[5] = v21;
  v22[6] = v20;
  v23 = v16;
  sub_1BE048964();
  sub_1BE048964();
  v24 = v20;
  sub_1BD398318(sub_1BD359500, v22);
}

uint64_t _s9PassKitUI22ProvisioningFlowBridgeC027startSetupAssistantFollowupE024withUnownedNavController7context19preflightCompletion10completionySo012UINavigationN0C_So21PKProvisioningContextCyycyyctFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a2);
  v11 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowSection());
  v12 = sub_1BE048964();
  v13 = sub_1BD71CA9C(v12, 1, 1);
  v14 = sub_1BD34FA40(v10, 0, 0);
  sub_1BE04BB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BE0B69E0;
  *(v15 + 32) = v13;
  *(v15 + 40) = &off_1F3BB8670;
  v16 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v17 = v13;
  v18 = sub_1BD3986F8(v15);
  v19 = type metadata accessor for UIFlowManagerRendererWrapper();
  v20 = objc_allocWithZone(v19);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v32.receiver = v20;
  v32.super_class = v19;
  v21 = a1;
  v22 = objc_msgSendSuper2(&v32, sel_init);
  key = 0;
  objc_setAssociatedObject(v21, &key, v22, 1);

  *(*&v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v23 = &v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v24 = *&v18[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_1BD0D4744(v24);
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = v14;
  v25[5] = v18;
  v26 = v14;
  sub_1BE048964();
  sub_1BE048964();
  v27 = v18;
  sub_1BD398318(sub_1BD3594FC, v25);
}

uint64_t sub_1BD356610(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BBD4();
  sub_1BE04BC34();
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v10 = [v9 associatedCredentialsForDefaultBehaviour];
          if (v10)
          {
            v11 = v10;
            sub_1BD0E5E8C(0, &qword_1EBD444C0);
            v12 = sub_1BE052744();

            if (v12 >> 62)
            {
              goto LABEL_171;
            }

            if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
            {
              goto LABEL_172;
            }

            goto LABEL_8;
          }

          goto LABEL_221;
        }

LABEL_237:
        result = sub_1BE053994();
        __break(1u);
        return result;
      }

LABEL_221:
      if ((sub_1BE04BA54() & 1) == 0)
      {
        v165 = type metadata accessor for PaymentSetupWelcomeFlowItem();
        v166 = objc_allocWithZone(v165);
        *&v166[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_viewController] = 0;
        *&v166[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v167 = &v166[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_identifier];
        *v167 = 0x46656D6F636C6557;
        *(v167 + 1) = 0xEF6D657449776F6CLL;
        *&v166[OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context] = a2;
        v197.receiver = v166;
        v197.super_class = v165;
        sub_1BE048964();
        v20 = objc_msgSendSuper2(&v197, sel_init);

        (v5[1])(v8, v4);
        return v20;
      }

      goto LABEL_237;
    }

    if (a1 == 2)
    {
      v24 = [v9 associatedCredentials];
      if (v24)
      {
        v25 = v24;
        sub_1BD0E5E8C(0, &qword_1EBD444C0);
        v26 = sub_1BE052744();

        v196 = MEMORY[0x1E69E7CC0];
        v185 = v4;
        v186 = v9;
        v188 = v8;
        v184 = a2;
        if (v26 >> 62)
        {
          goto LABEL_166;
        }

        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v187 = v5;
        if (v27)
        {
          goto LABEL_21;
        }

        goto LABEL_167;
      }

      __break(1u);
      goto LABEL_229;
    }

    v39 = [v9 paymentSetupProductModel];
    if (!v39)
    {
LABEL_229:
      __break(1u);
      goto LABEL_230;
    }

    v40 = v39;
    v11 = [v39 allSetupProducts];

    if (!v11)
    {
      goto LABEL_221;
    }

    sub_1BD0E5E8C(0, &qword_1EBD38568);
    v41 = sub_1BE052744();

    if (v41 >> 62)
    {
      if (sub_1BE053704() == 1)
      {
LABEL_39:
        if ((v41 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1BFB40900](0, v41);
        }

        else
        {
          if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_180;
          }

          v42 = *(v41 + 32);
        }

        v43 = v42;

        v44 = [objc_opt_self() isSupported];
        v45 = [v43 provisioningMethodMetadataForType_];
        v46 = v45;
        if (v45)
        {
        }

        v47 = a2;
        v48 = [v43 allSupportedProtocols];
        v187 = v5;
        v188 = v8;
        v185 = v4;
        v186 = v9;
        if ((v48 & 4) != 0)
        {
          if (v46)
          {
            v51 = v44;
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          IsAvailable = PKFelicaSecureElementIsAvailable();
          if (v46)
          {
            v50 = v44;
          }

          else
          {
            v50 = 0;
          }

          if (IsAvailable)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }
        }

        v101 = type metadata accessor for PaymentSetupProductFlowSection();
        v102 = objc_allocWithZone(v101);
        *&v102[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = MEMORY[0x1E69E7CC0];
        *&v102[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v103 = &v102[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
        *v103 = 0xD000000000000012;
        *(v103 + 1) = 0x80000001BE118AA0;
        v104 = v47;
        *&v102[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = v47;
        *&v102[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v43;
        v193.receiver = v102;
        v193.super_class = v101;
        sub_1BE048964();
        v105 = v43;
        v106 = objc_msgSendSuper2(&v193, sel_init);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1BE0B6CA0;
        v108 = type metadata accessor for ProvisioningHeroFlowItem();
        v109 = objc_allocWithZone(v108);
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
        v110 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v111 = &v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
        strcpy(&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
        v111[13] = 0;
        *(v111 + 7) = -5120;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v104;
        v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
        *&v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = v105;
        v112 = *&v109[v110];
        *&v109[v110] = 0;
        v113 = v105;
        sub_1BE048964();
        v114 = v113;

        v109[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = v51;
        v192.receiver = v109;
        v192.super_class = v108;
        v115 = objc_msgSendSuper2(&v192, sel_init);

        *(v107 + 32) = v115;
        *(v107 + 40) = &off_1F3BA7D00;
        *(v107 + 48) = v106;
        *(v107 + 56) = &off_1F3BAAA80;
        type metadata accessor for UIStaticFlowSection();
        v20 = swift_allocObject();
        *(v20 + 24) = 0;
        swift_unknownObjectWeakInit();

        *(v20 + 32) = 514;
        (v187[1])(v188, v185);
        *(v20 + 40) = 0xD000000000000018;
        *(v20 + 48) = 0x80000001BE124890;
        goto LABEL_210;
      }
    }

    else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_39;
    }

LABEL_220:

    goto LABEL_221;
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v35 = sub_1BE048964();
      v36 = 0;
      goto LABEL_174;
    }

    if (a1 != 7)
    {
      goto LABEL_237;
    }

    v52 = [v9 selectedSectionIdentifier];
    if (!v52)
    {
      goto LABEL_221;
    }

    v53 = v52;
    v182 = sub_1BE052434();
    v55 = v54;
    v56 = [v9 paymentSetupProductModel];
    if (!v56)
    {

      goto LABEL_221;
    }

    v183 = v55;
    v57 = v56;
    v58 = PKPaymentSetupProductTypeFromString();

    v59 = [v57 setupProductsOfType_];
    if (!v59)
    {

      goto LABEL_221;
    }

    v60 = v59;
    v180 = v57;
    sub_1BD0E5E8C(0, &qword_1EBD38568);
    v11 = sub_1BE052744();

    if (v11 >> 62)
    {
      goto LABEL_183;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_57;
    }

LABEL_184:

    goto LABEL_220;
  }

  if (a1 != 4)
  {
    v37 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v38 = sub_1BE048964();
    v20 = sub_1BD87126C(v38, 0, 0);

    (v5[1])(v8, v4);
    return v20;
  }

  v21 = [v9 allowedFeatureIdentifiers];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052A34();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  if (v23[2] != 1 || (sub_1BD960F28(v23), !v67))
  {
    v74 = [v9 requiredTransitNetworkIdentifiers];
    if (!v74)
    {
LABEL_230:
      __break(1u);
      goto LABEL_231;
    }

    v75 = v74;
    v76 = sub_1BE052A34();

    v77 = *(v76 + 16);

    if (v77)
    {
      v78 = [v9 paymentSetupProductModel];
      if (v78)
      {
        v72 = v78;
        v79 = [v78 setupProductsOfType_];
        if (v79)
        {
          v80 = v79;
          sub_1BD0E5E8C(0, &qword_1EBD38568);
          v69 = sub_1BE052744();

          if (v69 >> 62)
          {
            goto LABEL_218;
          }

          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

LABEL_219:
        }

        else
        {
        }
      }
    }

    goto LABEL_220;
  }

  v68 = sub_1BE052404();
  v69 = PKFeatureIdentifierFromString();

  v70 = [v9 paymentSetupProductModel];
  if (!v70)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v71 = v70;
  v72 = [v70 productsForFeatureIdentifier_];

  if (!v72)
  {
    v182 = 0;
    goto LABEL_187;
  }

  sub_1BD0E5E8C(0, &qword_1EBD38568);
  v73 = sub_1BE052744();

  if (!(v73 >> 62))
  {
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

LABEL_186:
    v182 = 0;
    goto LABEL_187;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_186;
  }

LABEL_70:
  if ((v73 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    v182 = MEMORY[0x1BFB40900](0, v73);

LABEL_187:
    v140 = [v9 associatedCredentials];
    if (v140)
    {
      v141 = v140;
      v185 = v4;
      v186 = v9;
      v188 = v8;

      sub_1BD0E5E8C(0, &qword_1EBD444C0);
      v142 = sub_1BE052744();

      v196 = MEMORY[0x1E69E7CC0];
      if (v142 >> 62)
      {
        goto LABEL_213;
      }

      for (i = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
      {
        v144 = MEMORY[0x1E69E7CC0];
        if (!i)
        {
          v152 = MEMORY[0x1E69E7CC0];
          goto LABEL_205;
        }

        v183 = v69;
        v184 = a2;
        v187 = v5;
        a2 = 0;
        v69 = v142 & 0xFFFFFFFFFFFFFF8;
        v5 = &selRef__updateDisplayForFieldTypeDate_;
        while (1)
        {
          if ((v142 & 0xC000000000000001) != 0)
          {
            v145 = MEMORY[0x1BFB40900](a2, v142);
          }

          else
          {
            if (a2 >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_212;
            }

            v145 = *(v142 + 8 * a2 + 32);
          }

          v146 = v145;
          v147 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v148 = [v145 accountCredential];
          if (v148 && (v149 = v148, v150 = [v148 account], v149, v150) && (v151 = objc_msgSend(v150, sel_feature), v150, v151 == v183))
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++a2;
          if (v147 == i)
          {
            v152 = v196;
            v5 = v187;
            a2 = v184;
            v144 = MEMORY[0x1E69E7CC0];
LABEL_205:

            v153 = v185;
            v154 = v188;
            v155 = v182;
            if ((v152 & 0x8000000000000000) == 0 && (v152 & 0x4000000000000000) == 0)
            {
              if (!*(v152 + 16))
              {
                goto LABEL_208;
              }

              goto LABEL_215;
            }

            if (sub_1BE053704())
            {
              goto LABEL_215;
            }

LABEL_208:
            if (!v155)
            {
LABEL_215:
              v162 = type metadata accessor for PaymentSetupCredentialsFlowItem();
              v163 = objc_allocWithZone(v162);
              *&v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
              *&v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
              swift_unknownObjectWeakInit();
              v164 = &v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
              *v164 = 0xD00000000000001FLL;
              v164[1] = 0x80000001BE1229B0;
              *&v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = a2;
              *&v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v152;
              v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
              *&v163[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
              v195.receiver = v163;
              v195.super_class = v162;
              sub_1BE048964();
              v20 = objc_msgSendSuper2(&v195, sel_init);

              (v5[1])(v154, v153);
              return v20;
            }

            v156 = v155;

            v157 = v144;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_1BE0B69E0;
            v158 = type metadata accessor for PaymentSetupProductFlowSection();
            v159 = objc_allocWithZone(v158);
            *&v159[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_credentials] = v157;
            *&v159[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v160 = &v159[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_identifier];
            *v160 = 0xD000000000000012;
            *(v160 + 1) = 0x80000001BE118AA0;
            *&v159[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_context] = a2;
            *&v159[OBJC_IVAR____TtC9PassKitUI30PaymentSetupProductFlowSection_product] = v156;
            v194.receiver = v159;
            v194.super_class = v158;
            sub_1BE048964();
            v161 = v156;
            *(v107 + 32) = objc_msgSendSuper2(&v194, sel_init);
            *(v107 + 40) = &off_1F3BAAA80;
            type metadata accessor for UIStaticFlowSection();
            v20 = swift_allocObject();
            *(v20 + 24) = 0;
            swift_unknownObjectWeakInit();

            *(v20 + 32) = 514;
            (v5[1])(v154, v153);
            *(v20 + 40) = 0xD00000000000001FLL;
            *(v20 + 48) = 0x80000001BE124870;
LABEL_210:
            *(v20 + 56) = v107;
            *(v20 + 32) = 514;
            return v20;
          }
        }

        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        ;
      }
    }

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
    goto LABEL_237;
  }

  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v182 = *(v73 + 32);
    goto LABEL_187;
  }

  __break(1u);
LABEL_227:
  v119 = sub_1BE053704();
LABEL_126:
  v172 = v72;
  v178 = v69;
  v188 = v8;
  v184 = a2;
  if (!v119)
  {
LABEL_156:
    v26 = v9;
    v125 = v4;

    v127 = 0;
    goto LABEL_161;
  }

  v72 = 0;
  v120 = v69 & 0xC000000000000001;
  v176 = v69 & 0xFFFFFFFFFFFFFF8;
  v175 = v69 + 32;
  v174 = v23;
  v171 = v119;
  v170 = v69 & 0xC000000000000001;
  v187 = v5;
  while (1)
  {
    if (v120)
    {
      v121 = MEMORY[0x1BFB40900](v72, v69);
    }

    else
    {
      if (v72 >= *(v176 + 16))
      {
        goto LABEL_217;
      }

      v121 = *(v175 + 8 * v72);
    }

    v23 = v121;
    v85 = __OFADD__(v72++, 1);
    if (v85)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      if (!sub_1BE053704())
      {
        goto LABEL_219;
      }

LABEL_79:
      v173 = v69;
      v81 = PKPaymentSetupProductTypeToString();
      if (v81)
      {
        v82 = v81;
        v181 = sub_1BE052434();
        v183 = v83;
      }

      else
      {
        v181 = 0;
        v183 = 0;
      }

      v117 = [v72 allSections];
      if (!v117)
      {
        goto LABEL_236;
      }

      v118 = v117;
      sub_1BD0E5E8C(0, &qword_1EBD42938);
      v69 = sub_1BE052744();

      if (v69 >> 62)
      {
        goto LABEL_227;
      }

      v119 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_126;
    }

    v122 = [v121 categories];
    if (!v122)
    {
      goto LABEL_234;
    }

    v123 = v122;
    v177 = v72;
    sub_1BD0E5E8C(0, &qword_1EBD42940);
    v124 = sub_1BE052744();

    v12 = v124;
    v179 = v23;
    if (v124 >> 62)
    {
      break;
    }

    v5 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_136;
    }

LABEL_128:

    v72 = v177;
    v5 = v187;
    v23 = v174;
    v69 = v178;
    v120 = v170;
    if (v177 == v171)
    {
      goto LABEL_156;
    }
  }

  v5 = sub_1BE053704();
  if (!v5)
  {
    goto LABEL_128;
  }

LABEL_136:
  v11 = 0;
  v182 = (v12 & 0xC000000000000001);
  v180 = (v12 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v182)
    {
      v26 = v9;
      v125 = v4;
      v126 = MEMORY[0x1BFB40900](v11, v12);
      goto LABEL_143;
    }

    if (v11 >= *(v180 + 2))
    {
      break;
    }

    v26 = v9;
    v125 = v4;
    v126 = *(v12 + 8 * v11 + 32);
LABEL_143:
    v127 = v126;
    v128 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_165;
    }

    v129 = [v126 identifier];
    if (v129)
    {
      v130 = v129;
      a2 = v12;
      v131 = sub_1BE052434();
      v133 = v132;

      v8 = v183;
      if (v183)
      {
        if (v131 == v181 && v183 == v133)
        {

LABEL_158:

LABEL_160:
          v5 = v187;
LABEL_161:
          type metadata accessor for PaymentSetupProductsFlowSection();
          swift_allocObject();
          v136 = sub_1BE048964();
          v20 = sub_1BD0DB670(v136, v127, v173);

          (v5[1])(v188, v125);
          return v20;
        }

        v135 = sub_1BE053B84();

        v12 = a2;
        if (v135)
        {

          goto LABEL_158;
        }
      }

      else
      {

        v12 = a2;
      }
    }

    else if (!v183)
    {

      goto LABEL_160;
    }

    ++v11;
    v94 = v128 == v5;
    v4 = v125;
    v9 = v26;
    if (v94)
    {
      goto LABEL_128;
    }
  }

LABEL_170:
  __break(1u);
LABEL_171:
  if (sub_1BE053704() != 1)
  {
LABEL_172:

    goto LABEL_173;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1BFB40900](0, v12);
    goto LABEL_11;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_11:
    v14 = v13;

    if (sub_1BE04BAB4())
    {
      v15 = type metadata accessor for ProvisioningCredentialFlowSection();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v17 = &v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
      *v17 = 0x100000000000001ALL;
      v17[1] = 0x80000001BE1199C0;
      v18 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
      v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
      *&v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
      *&v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = a2;
      *&v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v14;
      *&v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = 0;
      v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
      v16[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
      v16[v18] = 1;
      v189.receiver = v16;
      v189.super_class = v15;
      sub_1BE048964();
      v19 = v14;
      v20 = objc_msgSendSuper2(&v189, sel_init);

      (v5[1])(v8, v4);
      return v20;
    }

    v96 = [v14 peerPaymentCredential];
    if (v96)
    {
      v97 = v96;
      v98 = type metadata accessor for ProvisioningPeerPaymentExplanationFlowItem();
      v99 = objc_allocWithZone(v98);
      *&v99[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v100 = &v99[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_identifier];
      *v100 = 0xD00000000000001ELL;
      v100[1] = 0x80000001BE1248B0;
      v99[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_dismissalConfiguration] = 2;
      *&v99[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_context] = a2;
      *&v99[OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_credential] = v97;
      v190.receiver = v99;
      v190.super_class = v98;
      sub_1BE048964();
      v20 = objc_msgSendSuper2(&v190, sel_init);

      (v5[1])(v8, v4);
      return v20;
    }

LABEL_173:
    v35 = sub_1BE048964();
    v36 = 1;
LABEL_174:
    v20 = sub_1BD99F510(v35, v36, 1);

    (v5[1])(v8, v4);
    return v20;
  }

  __break(1u);
LABEL_180:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    if (sub_1BE053704() < 1)
    {
      goto LABEL_184;
    }

LABEL_57:
    v61 = [v180 allSections];
    if (!v61)
    {
      goto LABEL_235;
    }

    v62 = v61;
    sub_1BD0E5E8C(0, &qword_1EBD42938);
    v63 = sub_1BE052744();

    if (v63 >> 62)
    {
      v64 = sub_1BE053704();
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v174 = v11;
    if (!v64)
    {
LABEL_117:

      v26 = 0;
LABEL_121:
      type metadata accessor for PaymentSetupProductsFlowSection();
      swift_allocObject();
      v116 = sub_1BE048964();
      v20 = sub_1BD0DB670(v116, v26, v174);

      (v5[1])(v8, v4);
      return v20;
    }

    v11 = 0;
    v65 = v63 & 0xC000000000000001;
    v177 = v63 & 0xFFFFFFFFFFFFFF8;
    v176 = v63 + 32;
    v187 = v5;
    v188 = v8;
    v185 = v4;
    v186 = v9;
    v175 = v63;
    v173 = v64;
    v172 = (v63 & 0xC000000000000001);
LABEL_83:
    if (v65)
    {
      v84 = MEMORY[0x1BFB40900](v11, v63);
      v85 = __OFADD__(v11++, 1);
      if (v85)
      {
        continue;
      }
    }

    else
    {
      if (v11 >= *(v177 + 16))
      {
        goto LABEL_182;
      }

      v84 = *(v176 + 8 * v11);
      v85 = __OFADD__(v11++, 1);
      if (v85)
      {
        continue;
      }
    }

    break;
  }

  v179 = v84;
  v86 = [v84 categories];
  if (!v86)
  {
    goto LABEL_233;
  }

  v87 = v86;
  v178 = v11;
  sub_1BD0E5E8C(0, &qword_1EBD42940);
  v9 = sub_1BE052744();

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_89;
    }

    goto LABEL_82;
  }

  v11 = sub_1BE053704();
  if (!v11)
  {
LABEL_82:

    v11 = v178;
    v5 = v187;
    v8 = v188;
    v4 = v185;
    v9 = v186;
    v63 = v175;
    v65 = v172;
    if (v178 == v173)
    {
      goto LABEL_117;
    }

    goto LABEL_83;
  }

LABEL_89:
  v12 = 0;
  v5 = (v9 & 0xC000000000000001);
  v181 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v5)
    {
      v88 = MEMORY[0x1BFB40900](v12, v9);
    }

    else
    {
      if (v12 >= *(v181 + 16))
      {
        __break(1u);
        goto LABEL_170;
      }

      v88 = *(v9 + 8 * v12 + 32);
    }

    v26 = v88;
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v89 = a2;
    v90 = [v88 identifier];
    if (v90)
    {
      v91 = v90;
      v92 = sub_1BE052434();
      v8 = v93;

      v94 = v92 == v182 && v8 == v183;
      if (v94)
      {

        goto LABEL_120;
      }

      v95 = sub_1BE053B84();

      if (v95)
      {

LABEL_120:

        v5 = v187;
        v8 = v188;
        v4 = v185;
        v9 = v186;
        goto LABEL_121;
      }
    }

    ++v12;
    a2 = v89;
    if (v4 == v11)
    {
      goto LABEL_82;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v27 = sub_1BE053704();
    v187 = v5;
    if (!v27)
    {
      break;
    }

LABEL_21:
    v28 = 0;
    v5 = (v26 & 0xC000000000000001);
    while (1)
    {
      if (v5)
      {
        v29 = MEMORY[0x1BFB40900](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 remoteCredential];
      if (v32 && (v33 = v32, v34 = [v32 status], v33, v34 == 2))
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v28;
      if (v31 == v27)
      {
        v66 = v196;
        goto LABEL_168;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
  }

LABEL_167:
  v66 = MEMORY[0x1E69E7CC0];
LABEL_168:

  v137 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v138 = objc_allocWithZone(v137);
  *&v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v139 = &v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v139 = 0xD00000000000001FLL;
  v139[1] = 0x80000001BE1229B0;
  *&v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v184;
  *&v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v66;
  v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v138[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
  v191.receiver = v138;
  v191.super_class = v137;
  sub_1BE048964();
  v20 = objc_msgSendSuper2(&v191, sel_init);

  (v187[1])(v188, v185);
  return v20;
}

void _s9PassKitUI22ProvisioningFlowBridgeC017startPaymentSetupE017withNavController06parentkL07context4mode19preflightCompletion10completionySo09PKPaymenti21DismissibleNavigationL0C_So012UINavigationL0CSgSo21PKProvisioningContextCSo0sI4ModeVyycyyctFZ_0(int a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x1E69E9840];
  [a3 setMode_];
  sub_1BE04BC44();
  v15 = MEMORY[0x1BFB389E0](a3);
  v33 = sub_1BD34FA40(v15, 0, 0);
  sub_1BE04BB64();
  v16 = sub_1BD356610(a4, v15);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  swift_unknownObjectRetain();
  v21 = sub_1BD3986F8(v19);
  if (a2)
  {
    v22 = type metadata accessor for UIFlowManagerRendererWrapper();
    v32 = a8;
    v23 = a7;
    v24 = objc_allocWithZone(v22);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v35.receiver = v24;
    v35.super_class = v22;
    v25 = a2;
    a2 = objc_msgSendSuper2(&v35, sel_init);
    key = 0;
    objc_setAssociatedObject(v25, &key, a2, 1);

    a7 = v23;
    a8 = v32;
    *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
    swift_unknownObjectWeakAssign();
  }

  *(*&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v26 = &v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v27 = *&v21[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v26 = a5;
  *(v26 + 1) = a6;
  sub_1BD0D4744(v27);
  v28 = swift_allocObject();
  v28[2] = a7;
  v28[3] = a8;
  v28[4] = v33;
  v28[5] = v21;
  v28[6] = a2;
  v29 = a2;
  v30 = v33;
  sub_1BE048964();
  sub_1BE048964();
  v31 = v21;
  sub_1BD398318(sub_1BD3594FC, v28);

  swift_unknownObjectRelease();
}

uint64_t sub_1BD358604(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1BE04BC44();
  v13 = MEMORY[0x1BFB389E0](a4);
  v64 = a7;
  if (a7)
  {
    if (a7 >> 62)
    {
      v14 = sub_1BE053704();
    }

    else
    {
      v14 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 > 0;
  v16 = type metadata accessor for PaymentSetupConsentFlowItem();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier];
  *v18 = 0x46746E65736E6F43;
  v18[1] = 0xEF6D657449776F6CLL;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_dismissalConfiguration] = 1;
  v19 = OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented;
  sub_1BE052434();
  v20 = *MEMORY[0x1E69BC6D8];
  v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v21 initWithSuiteName_];
  *&v17[v19] = sub_1BE04E164();
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_context] = v13;
  *&v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource] = a5;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] = 1;
  v17[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation] = v15;
  v70.receiver = v17;
  v70.super_class = v16;
  v22 = objc_msgSendSuper2(&v70, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B69E0;
  *(v23 + 32) = v22;
  *(v23 + 40) = &off_1F3BBA078;
  v24 = objc_opt_self();
  v25 = v22;
  v26 = [v24 virtualCardReferralSource_];
  v27 = sub_1BE052434();
  v29 = v28;

  v30 = sub_1BD34FA40(v13, v27, v29);

  v31 = v30;
  sub_1BE04BB64();
  if (a6)
  {
    v32 = type metadata accessor for ProvisioningHeroFlowItem();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v34 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v35 = &v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v35[13] = 0;
    *(v35 + 7) = -5120;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v13;
    v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = 0;
    *&v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v36 = *&v33[v34];
    *&v33[v34] = 0;
    swift_retain_n();

    v33[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v69.receiver = v33;
    v69.super_class = v32;
    v37 = objc_msgSendSuper2(&v69, sel_init);

    v39 = *(v23 + 16);
    v38 = *(v23 + 24);
    if (v39 >= v38 >> 1)
    {
      v23 = sub_1BD1D7488((v38 > 1), v39 + 1, 1, v23);
    }

    *(v23 + 16) = v39 + 1;
    v40 = v23 + 16 * v39;
    *(v40 + 32) = v37;
    *(v40 + 40) = &off_1F3BA7D00;
    if (v64)
    {
      if (v64 >> 62)
      {
        sub_1BD0E5E8C(0, &qword_1EBD444C0);
        sub_1BE048964();
        sub_1BE048C84();
        v41 = sub_1BE0539A4();
      }

      else
      {
        sub_1BE048964();
        sub_1BE048C84();
        sub_1BE053BA4();
        sub_1BD0E5E8C(0, &qword_1EBD444C0);
        v41 = v64;
      }

      v42 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
      v43 = objc_allocWithZone(v42);
      v44 = MEMORY[0x1E69E7CC0];
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v44;
      v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v44;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v45 = &v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
      *v45 = 0xD00000000000001ALL;
      v45[1] = 0x80000001BE1228D0;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v13;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = v41;
      *&v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = 0;
      v43[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
      v68.receiver = v43;
      v68.super_class = v42;
      v46 = objc_msgSendSuper2(&v68, sel_init);
      v48 = *(v23 + 16);
      v47 = *(v23 + 24);
      v49 = v48 + 1;
      v50 = &off_1F3BA3CD0;
      if (v48 < v47 >> 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v61 = objc_allocWithZone(type metadata accessor for AutoFillCredentialsFlowItem());
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BE048C84();
      v46 = sub_1BD300F60(v13, a2, a3);

      v48 = *(v23 + 16);
      v47 = *(v23 + 24);
      v49 = v48 + 1;
      v50 = &off_1F3B9DA20;
      if (v48 < v47 >> 1)
      {
LABEL_12:
        *(v23 + 16) = v49;
        v51 = v23 + 16 * v48;
        *(v51 + 32) = v46;
        *(v51 + 40) = v50;
        goto LABEL_13;
      }
    }

    v23 = sub_1BD1D7488((v47 > 1), v49, 1, v23);
    goto LABEL_12;
  }

LABEL_13:
  v52 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v53 = sub_1BD3986F8(v23);
  *(*&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v54 = swift_allocObject();
  *(v54 + 16) = a8;
  *(v54 + 24) = a9;
  v55 = &v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v56 = *&v53[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v55 = sub_1BD267328;
  v55[1] = v54;
  sub_1BE048964();
  sub_1BD0D4744(v56);
  v57 = swift_allocObject();
  v57[2] = a10;
  v57[3] = a11;
  v57[4] = v31;
  v57[5] = v53;
  v58 = v31;
  sub_1BE048964();
  v59 = v53;
  sub_1BD398318(sub_1BD35921C, v57);
}

uint64_t sub_1BD358D68(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BE04BC44();
  v10 = MEMORY[0x1BFB389E0](a3);
  v11 = type metadata accessor for PaymentSetupConsentFlowItem();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier];
  *v13 = 0x46746E65736E6F43;
  v13[1] = 0xEF6D657449776F6CLL;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_dismissalConfiguration] = 1;
  v14 = OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem__privacyConsented;
  sub_1BE052434();
  v15 = *MEMORY[0x1E69BC6D8];
  v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v16 initWithSuiteName_];
  *&v12[v14] = sub_1BE04E164();
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_context] = v10;
  *&v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource] = 2;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] = 0;
  v12[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation] = 0;
  v37.receiver = v12;
  v37.super_class = v11;
  v17 = objc_msgSendSuper2(&v37, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = v17;
  *(v18 + 40) = &off_1F3BBA078;
  v19 = objc_allocWithZone(type metadata accessor for AutoFillCredentialManagementFlowItem());
  sub_1BE048964();
  v20 = v17;
  v21 = sub_1BD328188(v10, a2);
  v22 = *(v18 + 16);
  v23 = *(v18 + 24);
  v24 = v21;
  if (v22 >= v23 >> 1)
  {
    v18 = sub_1BD1D7488((v23 > 1), v22 + 1, 1, v18);
  }

  *(v18 + 16) = v22 + 1;
  v25 = v18 + 16 * v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = &off_1F3B9F178;
  v26 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v27 = sub_1BD3986F8(v18);
  *(*&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v29 = &v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v30 = *&v27[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v29 = sub_1BD267328;
  v29[1] = v28;
  sub_1BE048964();
  sub_1BD0D4744(v30);
  v31 = swift_allocObject();
  v31[2] = a6;
  v31[3] = a7;
  v31[4] = v27;
  sub_1BE048964();
  v32 = v27;
  sub_1BD398318(sub_1BD1B5F6C, v31);
}

uint64_t objectdestroy_11Tm_0()
{

  return swift_deallocObject();
}

void sub_1BD359184()
{
  (*(v0 + 16))();
  v1 = sub_1BE04BB54();
  [v1 stop];
}

id sub_1BD35921C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);

  return [v1 stop];
}

uint64_t objectdestroy_206Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BD3592C0()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  [v1 stop];
  return sub_1BD225648();
}

uint64_t sub_1BD359334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_197Tm()
{

  return swift_deallocObject();
}

id sub_1BD3593EC()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  return [v1 stop];
}

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for MeCardAddressSection()
{
  result = qword_1EBD42950;
  if (!qword_1EBD42950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD359584()
{
  sub_1BD1030A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKPaymentAuthorizationFundingMode(319);
    if (v1 <= 0x3F)
    {
      sub_1BD3596B8();
      if (v2 <= 0x3F)
      {
        sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BD359720(319, &qword_1EBD42960, &qword_1EBD393C8, "\b6\r", MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD3596B8()
{
  if (!qword_1EBD39318)
  {
    sub_1BD0E5E8C(255, &unk_1EBD3E560);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39318);
    }
  }
}

void sub_1BD359720(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1BD3597A0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42968);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42970);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v32 - v8;
  v44 = sub_1BD359B74();
  v45 = v10;
  v46 = v11 & 1;
  v47 = v12;
  sub_1BD359E1C(v5);
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42978);
  sub_1BD0DE4F4(&qword_1EBD42980, &qword_1EBD42978);
  sub_1BD35CD88();
  v33 = v9;
  sub_1BE051A34();
  v44 = sub_1BD35C110(v1);
  v45 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v34 = v15;
  v35 = v14;
  v17 = v16;
  v36 = v18;
  v19 = (v1 + *(type metadata accessor for MeCardAddressSection() + 40));
  v20 = *v19;
  v21 = v19[1];
  v44 = *v19;
  v45 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  sub_1BE0516A4();
  v22 = v42;
  if (v42)
  {
  }

  LOBYTE(v42) = v22 != 0;
  sub_1BE051944();
  v32[1] = v46;
  v42 = v20;
  v43 = v21;
  v23 = sub_1BE0516A4();
  v24 = v41;
  v42 = v41;
  MEMORY[0x1EEE9AC00](v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  sub_1BD35CE1C();
  sub_1BD35CEE0();
  v26 = v39;
  v27 = v35;
  v28 = v17;
  v29 = v33;
  v30 = v34;
  sub_1BE050F04();

  sub_1BD0DDF10(v27, v30, v28 & 1);

  return (*(v38 + 8))(v29, v26);
}

id sub_1BD359B74()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29[-v8];
  v10 = v0[5];
  v36 = v0[4];
  v37 = v10;
  v38 = v0[6];
  v11 = v0[1];
  v32 = *v0;
  v33 = v11;
  v12 = v0[3];
  v34 = v0[2];
  v35 = v12;
  v13 = sub_1BD513BB0();
  v15 = v14;
  v16 = *MEMORY[0x1E69B8068];
  v17 = *(v2 + 104);
  if (v15)
  {
    v18 = v13;
    v17(v9, v16, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      sub_1BE04B6F4();

      (*(v2 + 8))(v9, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BE0B69E0;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1BD110550();
      *(v21 + 32) = v18;
      *(v21 + 40) = v15;
      v22 = sub_1BE052454();
      v24 = v23;

      v30 = v22;
      v31 = v24;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }

    __break(1u);
  }

  else
  {
    v17(v5, v16, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      v26 = sub_1BE04B6F4();
      v28 = v27;

      (*(v2 + 8))(v5, v1);
      v30 = v26;
      v31 = v28;
      sub_1BD0DDEBC();
      return sub_1BE0506C4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD359E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A90);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v19 - v8;
  v10 = sub_1BD35C890();
  if (v11)
  {
    v20 = v10;
    v21 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v20 = v12;
    v21 = v13;
    v16 = v15 & 1;
    v22 = v15 & 1;
    v23 = v17;
    sub_1BE052434();
    v19[1] = a1;
    sub_1BE050DE4();

    sub_1BD0DDF10(v12, v14, v16);

    sub_1BD0DE19C(v9, v5, &qword_1EBD452C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v9, &qword_1EBD452C0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD1103C8();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD35A048@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429A8) - 8;
  MEMORY[0x1EEE9AC00](v47, v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = &v41 - v7;
  v8 = type metadata accessor for MeCardAddressSection();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v44 = v11;
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429B0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  *&v51 = &unk_1F3B8DFB8;
  sub_1BD35CFC8(a1, v12);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v43 = type metadata accessor for MeCardAddressSection;
  sub_1BD35D9B0(v12, v22 + v21, type metadata accessor for MeCardAddressSection);
  *&v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429C0);
  v42 = MEMORY[0x1E69E6338];
  sub_1BD0DE4F4(&qword_1EBD429C8, &qword_1EBD429B8);
  sub_1BD35D124();
  sub_1BD35D458();
  sub_1BE0519D4();
  v23 = &v20[*(v14 + 44)];
  __asm { FMOV            V0.2D, #16.0 }

  v41 = _Q0;
  *v23 = _Q0;
  *(v23 + 1) = _Q0;
  v23[32] = 0;
  v29 = a1[5];
  v55 = a1[4];
  v56 = v29;
  v57 = a1[6];
  v30 = a1[1];
  v51 = *a1;
  v52 = v30;
  v31 = a1[3];
  v53 = a1[2];
  v54 = v31;
  v50 = sub_1BD5139AC();
  sub_1BD35CFC8(a1, v12);
  v32 = swift_allocObject();
  sub_1BD35D9B0(v12, v32 + v21, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00);
  sub_1BD0DE4F4(&qword_1EBD42A50, &qword_1EBD42A48);
  sub_1BD35D2B8();
  sub_1BD35D720();
  v33 = v46;
  sub_1BE0519D4();
  v34 = v33 + *(v47 + 44);
  v35 = v41;
  *v34 = v41;
  *(v34 + 16) = v35;
  *(v34 + 32) = 0;
  v36 = v45;
  sub_1BD0DE19C(v20, v45, &qword_1EBD429B0);
  v37 = v48;
  sub_1BD0DE19C(v33, v48, &qword_1EBD429A8);
  v38 = v49;
  sub_1BD0DE19C(v36, v49, &qword_1EBD429B0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A60);
  sub_1BD0DE19C(v37, v38 + *(v39 + 48), &qword_1EBD429A8);
  sub_1BD0DE53C(v33, &qword_1EBD429A8);
  sub_1BD0DE53C(v20, &qword_1EBD429B0);
  sub_1BD0DE53C(v37, &qword_1EBD429A8);
  return sub_1BD0DE53C(v36, &qword_1EBD429B0);
}

uint64_t sub_1BD35A554@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A10);
  MEMORY[0x1EEE9AC00](v54, v5);
  v7 = (v51 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A88);
  MEMORY[0x1EEE9AC00](v55, v8);
  v10 = v51 - v9;
  v11 = type metadata accessor for MeCardAddressSection();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429F0);
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = a2[5];
  v62 = a2[4];
  v63 = v20;
  v64 = a2[6];
  v21 = a2[1];
  v58 = *a2;
  v59 = v21;
  v22 = a2[3];
  v60 = a2[2];
  v61 = v22;
  v23 = sub_1BD513514(v18, v19);
  if (*(v23 + 16))
  {
    v57 = v23;
    sub_1BD35CFC8(a2, v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v25 = swift_allocObject();
    sub_1BD35D9B0(v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for MeCardAddressSection);
    v26 = (v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v18;
    v26[1] = v19;
    sub_1BD14ED40(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00);
    sub_1BD0DE4F4(&qword_1EBD42A50, &qword_1EBD42A48);
    sub_1BD35D2B8();
    sub_1BD35D720();
    sub_1BE0519D4();
    v27 = v53;
    v53[2](v10, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1BD35D234();
    sub_1BD35D374();
    v28 = v56;
    sub_1BE04F9A4();
    (*(v27 + 8))(v17, v14);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0);
    return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  }

  v31 = v18;
  v53 = v7;
  v32 = v56;

  v33 = v19;
  v51[1] = v14;
  if (v19 > 1)
  {
    v34 = v31;
    if (v33 == 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v33;
      if (v33 != 3)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v36 = sub_1BE052434();
    v37 = v38;
    goto LABEL_13;
  }

  v34 = v31;
  if (!v33)
  {
    v35 = 0;
    goto LABEL_12;
  }

  v35 = v33;
  if (v33 == 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v36 = v34;
  v37 = v35;
LABEL_13:
  if (v36 == sub_1BE052434() && v37 == v39)
  {
    v40 = v35;
LABEL_16:
    sub_1BD14ED40(v34, v40);

LABEL_18:
    v42 = v53;
    sub_1BD35AE64(v34, v40, 0, v53);
    sub_1BD0DE19C(v42, v10, &qword_1EBD42A10);
    swift_storeEnumTagMultiPayload();
    sub_1BD35D234();
    sub_1BD35D374();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v42, &qword_1EBD42A10);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0);
    return (*(*(v43 - 8) + 56))(v32, 0, 1, v43);
  }

  v41 = sub_1BE053B84();
  v40 = v35;
  sub_1BD14ED40(v34, v35);

  if (v41)
  {
    goto LABEL_18;
  }

  if (v35 > 1)
  {
    if (v35 == 2 || v35 == 3)
    {
      goto LABEL_25;
    }
  }

  else if (v35 <= 1)
  {
LABEL_25:
    v44 = sub_1BE052434();
    v45 = v46;
    goto LABEL_26;
  }

  v44 = v34;
  v45 = v35;
LABEL_26:
  if (v44 == sub_1BE052434() && v45 == v47)
  {
    goto LABEL_16;
  }

  v48 = sub_1BE053B84();
  sub_1BD14ED40(v34, v35);

  if (v48)
  {
    goto LABEL_18;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD429E0);
  v50 = *(*(v49 - 8) + 56);

  return v50(v32, 1, 1, v49);
}

uint64_t sub_1BD35AC94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MeCardAddressSection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1BD35AE64(a3, a4, v15, a5);
  sub_1BD35CFC8(a2, v14);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1BD35D9B0(v14, v18 + v16, type metadata accessor for MeCardAddressSection);
  *(v18 + v17) = v15;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a3;
  v19[1] = a4;
  v20 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00) + 36));
  *v20 = sub_1BD35DD7C;
  v20[1] = v18;
  v21 = type metadata accessor for ListRowGestureActionsModifier();
  v20[2] = 0;
  v20[3] = 0;
  v22 = *(v21 + 24);
  *(v20 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v23 = v15;
  return sub_1BD14ED40(a3, a4);
}

int *sub_1BD35AE64@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v8 = type metadata accessor for MeCardAddressSection();
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = v10;
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04BD74();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16 = a1;
    v17 = *(v4 + 8);
    if (v17)
    {
      sub_1BD0E5E8C(0, &qword_1EBD406E0);
      v18 = a3;
      v63 = v4;
      v64 = a3;
      v19 = v11;
      v20 = v18;
      v21 = v17;
      v22 = a2;
      v23 = v21;
      v24 = sub_1BE053074();

      a2 = v22;
      v11 = v19;
      v4 = v63;
      a3 = v64;
    }

    else
    {
      v24 = 0;
    }

    a1 = v16;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2;
  v26 = sub_1BD55131C(a1, a2);
  v64 = v27;
  v28 = *(v4 + 24);
  v29 = *(v4 + 32);
  v30 = *(v4 + 40);
  v62 = v30;
  LODWORD(v63) = v24;
  v61 = v28;
  v59 = v26;
  v60 = v29;
  if (a3)
  {
    if ((v24 & 1) != 0 && v30 < 2)
    {
      sub_1BD35D998(v28, v29, v30);
      v57 = a3;
      v55 = v28;
      v31 = v29;
    }

    else
    {
      v41 = a3;
      v42 = [v41 pkSingleLineFormattedContactAddress];
      v57 = v41;
      if (v42)
      {
        v43 = v42;
        v55 = sub_1BE052434();
        v31 = v44;
      }

      else
      {

        v55 = 0;
        v31 = 0;
      }
    }

    v40 = v25;
    goto LABEL_17;
  }

  v56 = v11;
  v32 = v57;
  (v57)[13](v15, *MEMORY[0x1E69B8068], v12);
  result = PKPassKitBundle();
  if (result)
  {
    v34 = result;
    sub_1BE04B6F4();

    (v32[1])(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B69E0;
    v36 = sub_1BD55131C(a1, v25);
    v38 = v37;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1BD110550();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v55 = sub_1BE052454();
    v31 = v39;

    v57 = 0;
    v40 = v25;
    v11 = v56;
LABEL_17:
    LODWORD(v56) = a3 == 0;
    sub_1BD35CFC8(v4, v11);
    v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v46 = (v58 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = sub_1BD35D9B0(v11, v47 + v45, type metadata accessor for MeCardAddressSection);
    *(v47 + v46) = a3;
    v49 = (v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v49 = a1;
    v49[1] = v40;
    MEMORY[0x1EEE9AC00](v48, v50);
    v51 = v64;
    *(&v55 - 12) = v59;
    *(&v55 - 11) = v51;
    *(&v55 - 10) = v55;
    *(&v55 - 9) = v31;
    *(&v55 - 64) = v63 & 1;
    v52 = v60;
    *(&v55 - 7) = v61;
    *(&v55 - 6) = v52;
    *(&v55 - 40) = v62;
    *(&v55 - 4) = a1;
    *(&v55 - 3) = v40;
    *(&v55 - 2) = a3;
    *(&v55 - 1) = v4;
    v53 = v57;
    sub_1BD14ED40(a1, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68);
    sub_1BD35D868();
    v54 = v66;
    sub_1BE051704();

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A10);
    *(v54 + result[9]) = v56;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1BD35B38C(void *a1, void *a2, unint64_t a3)
{
  v4 = v3;
  v84 = a2;
  v85 = a3;
  v6 = sub_1BE04D214();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v88 = &v80 - v12;
  v13 = sub_1BE051AD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v82 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v80 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v80 - v34;
  if (!a1)
  {
    v39 = v4;
    sub_1BE04D084();
    v41 = v84;
    v40 = v85;
    sub_1BD14ED40(v84, v85);
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C54();
    sub_1BD35D778(v41, v40);
    if (!os_log_type_enabled(v42, v43))
    {
LABEL_34:

      (*(v86 + 8))(v9, v87);
      (*(v39 + 128))(1, v41, v40, 0);
      return;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v89 = v45;
    *v44 = 136315138;
    if (v40 > 1)
    {
      if (v40 == 2 || v40 == 3)
      {
        goto LABEL_32;
      }
    }

    else if (v40 <= 1)
    {
LABEL_32:
      v76 = sub_1BE052434();
      v77 = v78;
      goto LABEL_33;
    }

    v76 = v41;
    v77 = v40;
LABEL_33:
    sub_1BD14ED40(v41, v40);
    v79 = sub_1BD123690(v76, v77, &v89);

    *(v44 + 4) = v79;
    _os_log_impl(&dword_1BD026000, v42, v43, "Adding me card address for label: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1BFB45F20](v45, -1, -1);
    MEMORY[0x1BFB45F20](v44, -1, -1);
    goto LABEL_34;
  }

  v81 = v33;
  type metadata accessor for MeCardAddressSection();
  v85 = a1;
  v84 = a1;
  sub_1BD70A2C8(v24);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  v37 = (*(*(v36 - 8) + 48))(v24, 1, v36);
  v83 = v4;
  if (v37 == 1)
  {
    sub_1BD0DE53C(v24, &qword_1EBD40450);
    v38 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v36);
    sub_1BD0DE53C(v24, &qword_1EBD40520);
    v38 = 0;
  }

  v46 = *(v14 + 56);
  v46(v35, v38, 1, v13);
  (*(v14 + 104))(v30, *MEMORY[0x1E697D710], v13);
  v46(v30, 0, 1, v13);
  v47 = *(v17 + 48);
  sub_1BD0DE19C(v35, v20, &qword_1EBD40530);
  sub_1BD0DE19C(v30, &v20[v47], &qword_1EBD40530);
  v48 = *(v14 + 48);
  if (v48(v20, 1, v13) == 1)
  {
    sub_1BD0DE53C(v30, &qword_1EBD40530);
    sub_1BD0DE53C(v35, &qword_1EBD40530);
    v49 = v48(&v20[v47], 1, v13);
    v50 = v83;
    if (v49 == 1)
    {
      sub_1BD0DE53C(v20, &qword_1EBD40530);
      v51 = 1;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v52 = v81;
  sub_1BD0DE19C(v20, v81, &qword_1EBD40530);
  if (v48(&v20[v47], 1, v13) == 1)
  {
    sub_1BD0DE53C(v30, &qword_1EBD40530);
    sub_1BD0DE53C(v35, &qword_1EBD40530);
    (*(v14 + 8))(v52, v13);
    v50 = v83;
LABEL_14:
    sub_1BD0DE53C(v20, &qword_1EBD40528);
    v51 = 0;
    goto LABEL_16;
  }

  v53 = v82;
  (*(v14 + 32))(v82, &v20[v47], v13);
  sub_1BD35D950(&qword_1EBD40538, MEMORY[0x1E697D718]);
  v51 = sub_1BE052334();
  v54 = *(v14 + 8);
  v54(v53, v13);
  sub_1BD0DE53C(v30, &qword_1EBD40530);
  sub_1BD0DE53C(v35, &qword_1EBD40530);
  v54(v81, v13);
  sub_1BD0DE53C(v20, &qword_1EBD40530);
  v50 = v83;
LABEL_16:
  v56 = v84;
  v55 = v85;
  v57 = [v84 valueSource];
  v58 = v88;
  if (!v57)
  {
    [v56 setValueSource_];
    if (v51)
    {
      goto LABEL_18;
    }

LABEL_24:
    v63 = *(v50 + 128);
    v64 = v56;
    goto LABEL_25;
  }

  if ((v51 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v59 = *(v50 + 8);
  if (v59 && (sub_1BD0E5E8C(0, &qword_1EBD406E0), v60 = v56, v61 = v59, v62 = sub_1BE053074(), v61, v60, (v62 & 1) != 0))
  {
    if (*(v50 + 40) != 2 || *(v50 + 24) != 0)
    {
      v63 = *(v50 + 128);
      v64 = v60;
LABEL_25:
      v65 = v64;
      v63(v55, 0, 0, 1);

      return;
    }
  }

  else
  {
    sub_1BE04D084();
    v66 = v56;
    v67 = sub_1BE04D204();
    v68 = sub_1BE052C54();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136315138;
      v71 = [v66 description];
      v72 = sub_1BE052434();
      v74 = v73;

      v75 = sub_1BD123690(v72, v74, &v89);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_1BD026000, v67, v68, "Selected shipping address: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x1BFB45F20](v70, -1, -1);
      MEMORY[0x1BFB45F20](v69, -1, -1);
    }

    (*(v86 + 8))(v58, v87);
    (*(v50 + 112))(v66);
  }
}

id sub_1BD35BD70@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MeCardAddressSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v12 = [v35 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v13 = sub_1BE052744();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

LABEL_10:
    v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB40900](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 label];

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = sub_1BE052434();
  v20 = v19;

  v21 = v20;
  v22 = v18;
LABEL_11:
  v23 = sub_1BD551B1C(v22, v21);
  v25 = v24;
  sub_1BD35AE64(v23, v24, v35, a3);
  sub_1BD35CFC8(a2, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1BD35D9B0(v11, v28 + v26, type metadata accessor for MeCardAddressSection);
  *(v28 + v27) = v35;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v23;
  v29[1] = v25;
  v30 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A00) + 36));
  *v30 = sub_1BD35D774;
  v30[1] = v28;
  v31 = type metadata accessor for ListRowGestureActionsModifier();
  v30[2] = 0;
  v30[3] = 0;
  v32 = *(v31 + 24);
  *(v30 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v33 = v35;

  return v33;
}

uint64_t sub_1BD35C03C(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E69B8CF8]);
  v8 = a2;
  v9 = [v7 init];
  [v9 setDefaultShippingAddress_];

  sub_1BD35B38C(a2, a3, a4);
  type metadata accessor for MeCardAddressSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  return sub_1BE0516B4();
}

uint64_t sub_1BD35C110(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for MeCardAddressSection() + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  sub_1BE0516A4();
  v7 = v16;
  if (!v16)
  {
    return 0;
  }

  v8 = [v16 pkSingleLineFormattedContactAddressIncludingCountryName_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1BE052434();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1BD110550();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  v13 = sub_1BE04B714();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_1BD35C310(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MeCardAddressSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  sub_1BD35CFC8(a2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1BD35D9B0(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MeCardAddressSection);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BD35C564()
{
  type metadata accessor for MeCardAddressSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990);
  return sub_1BE0516B4();
}

id sub_1BD35C5C8@<X0>(uint64_t a1@<X8>)
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

id sub_1BD35C724@<X0>(uint64_t a1@<X8>)
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

id sub_1BD35C890()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v24 - v9;
  v11 = v0[5];
  v24[4] = v0[4];
  v24[5] = v11;
  v24[6] = v0[6];
  v12 = v0[1];
  v24[0] = *v0;
  v24[1] = v12;
  v13 = v0[3];
  v24[2] = v0[2];
  v24[3] = v13;
  v14 = sub_1BD513D44();
  if (v14 >> 62)
  {
    v21 = sub_1BE053704();

    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
LABEL_3:
      if (*(v1 + 18) == 2)
      {
        v16 = *(v1 + 19);
        if (v16)
        {
          v17 = v16;
          if ([v17 type] == 1)
          {
            (*(v3 + 104))(v6, *MEMORY[0x1E69B8078], v2);
            result = PKPassKitBundle();
            if (result)
            {
              v19 = result;
              v20 = sub_1BE04B6F4();

              (*(v3 + 8))(v6, v2);
              return v20;
            }

            goto LABEL_15;
          }
        }
      }

      return 0;
    }
  }

  (*(v3 + 104))(v10, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_1BE04B6F4();

  (*(v3 + 8))(v10, v2);
  return v23;
}

uint64_t sub_1BD35CB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v36 = a6;
  *(&v36 + 1) = a7;
  v39 = a9;
  v37 = a4;
  v38 = a13;
  v18 = type metadata accessor for ShippingAddressRow();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a5 & 1) == 0 || (v22 = a8, v23 = 1, v22 == 2) && v36 == 0)
  {
    v23 = 0;
  }

  sub_1BD14ED40(a10, a11);
  v24 = sub_1BD50D2BC(a10, a11, a12 != 0);
  *v21 = a1;
  *(v21 + 1) = a2;
  *(v21 + 2) = a3;
  *(v21 + 3) = v37;
  v21[32] = v23;
  *(v21 + 5) = v24;
  *(v21 + 6) = v25;
  *(v21 + 7) = v26;
  v21[64] = a5 & 1;
  v27 = v18[9];
  *&v21[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v28 = v18[10];
  *&v21[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  *&v21[v18[11]] = 0x4028000000000000;
  KeyPath = swift_getKeyPath();
  type metadata accessor for MeCardAddressSection();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68);
  v31 = v39;
  v32 = (v39 + *(v30 + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BD70A2C8(v32 + v33);
  *v32 = KeyPath;
  return sub_1BD35D9B0(v21, v31, type metadata accessor for ShippingAddressRow);
}

unint64_t sub_1BD35CD88()
{
  result = qword_1EBD42988;
  if (!qword_1EBD42988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42968);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42988);
  }

  return result;
}

unint64_t sub_1BD35CE1C()
{
  result = qword_1EBD42998;
  if (!qword_1EBD42998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42970);
    sub_1BD0DE4F4(&qword_1EBD42980, &qword_1EBD42978);
    sub_1BD35CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42998);
  }

  return result;
}

unint64_t sub_1BD35CEE0()
{
  result = qword_1EBD429A0;
  if (!qword_1EBD429A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD35D950(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429A0);
  }

  return result;
}

uint64_t sub_1BD35CFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeCardAddressSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD35D02C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1BD35D044()
{
  type metadata accessor for MeCardAddressSection();

  return sub_1BD35C564();
}

uint64_t sub_1BD35D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BD35A554(a1, v6, a2);
}

unint64_t sub_1BD35D124()
{
  result = qword_1EBD429D0;
  if (!qword_1EBD429D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429C0);
    sub_1BD35D1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429D0);
  }

  return result;
}

unint64_t sub_1BD35D1A8()
{
  result = qword_1EBD429D8;
  if (!qword_1EBD429D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429E0);
    sub_1BD35D234();
    sub_1BD35D374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429D8);
  }

  return result;
}

unint64_t sub_1BD35D234()
{
  result = qword_1EBD429E8;
  if (!qword_1EBD429E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD429F0);
    sub_1BD35D2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429E8);
  }

  return result;
}

unint64_t sub_1BD35D2B8()
{
  result = qword_1EBD429F8;
  if (!qword_1EBD429F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A00);
    sub_1BD35D374();
    sub_1BD35D950(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD429F8);
  }

  return result;
}

unint64_t sub_1BD35D374()
{
  result = qword_1EBD42A08;
  if (!qword_1EBD42A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A10);
    sub_1BD0DE4F4(&qword_1EBD42A18, &qword_1EBD42A20);
    sub_1BD0DE4F4(&qword_1EBD42A28, &qword_1EBD42A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A08);
  }

  return result;
}

unint64_t sub_1BD35D458()
{
  result = qword_1EBD42A40;
  if (!qword_1EBD42A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A40);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for MeCardAddressSection();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1BD35D02C(*(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = v2 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = sub_1BE051AD4();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1BD35D6A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD35BD70(a1, v6, a2);
}

unint64_t sub_1BD35D720()
{
  result = qword_1EBD42A58;
  if (!qword_1EBD42A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A58);
  }

  return result;
}

uint64_t sub_1BD35D778(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_1BD35D78C()
{
  v1 = *(type metadata accessor for MeCardAddressSection() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD35B38C(*(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1BD35D868()
{
  result = qword_1EBD42A70;
  if (!qword_1EBD42A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42A68);
    sub_1BD35D950(&qword_1EBD42A78, type metadata accessor for ShippingAddressRow);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42A70);
  }

  return result;
}

uint64_t sub_1BD35D950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD35D998(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD35D9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD35DA18@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeCardAddressSection() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BD35AC94(a1, v2 + v6, v8, v9, a2);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for MeCardAddressSection();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40));

  v5 = v4 + *(v1 + 36);
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

  if (*(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD35DCEC()
{
  v1 = *(type metadata accessor for MeCardAddressSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BD35C03C(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1BD35DD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v5 = type metadata accessor for PaymentShippingAddressItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v12 = *MEMORY[0x1E69BC9F0];
  v13 = sub_1BE04C894();
  v14 = *(v13 - 8);
  (*(v14 + 104))(&v9[v11], v12, v13);
  v15 = *(a1 + 96);
  v16 = *(a1 + 120);
  v17 = *(a1 + 152);
  v48 = *(a1 + 136);
  v49 = v17;
  v50 = *(a1 + 168);
  v46 = *(a1 + 104);
  v47 = v16;
  v18 = *(a1 + 184);
  v45 = *(a1 + 192);
  if (v15)
  {
    v19 = *(a1 + 176);
    *(v9 + 10) = *(a1 + 160);
    *(v9 + 11) = v19;
    v20 = *(a1 + 208);
    v21 = *(a1 + 192);
    *(v9 + 12) = v21;
    *(v9 + 13) = v20;
    v22 = *(a1 + 112);
    *(v9 + 6) = *(a1 + 96);
    *(v9 + 7) = v22;
    v23 = *(a1 + 144);
    *(v9 + 8) = *(a1 + 128);
    *(v9 + 9) = v23;
    v24 = *(a1 + 48);
    *(v9 + 2) = *(a1 + 32);
    *(v9 + 3) = v24;
    v25 = *(a1 + 80);
    *(v9 + 4) = *(a1 + 64);
    *(v9 + 5) = v25;
    v26 = *(a1 + 16);
    *v9 = *a1;
    *(v9 + 1) = v26;
    v27 = *(a1 + 136);
    *(v9 + 264) = *(a1 + 120);
    *(v9 + 280) = v27;
    v28 = *(a1 + 168);
    *(v9 + 296) = *(a1 + 152);
    *(v9 + 312) = v28;
    *(v9 + 248) = *(a1 + 104);
    v29 = v34;
    *(v9 + 28) = v33;
    *(v9 + 29) = v29;
    *(v9 + 30) = v15;
    *(v9 + 41) = v18;
    *(v9 + 21) = v21;
    v9[352] = v18 != 1;
    v30 = v35;
    sub_1BD35F350(v9, v35);
    (*(v6 + 56))(v30, 0, 1, v5);
    v37 = v15;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    v38 = v46;
    v43 = v18;
    v44 = v45;
    sub_1BD35F3B4(&v37, &v36);
    return sub_1BD35F410(v9);
  }

  else
  {

    sub_1BD2ED540(a1);
    (*(v14 + 8))(&v9[v11], v13);
    return (*(v6 + 56))(v35, 1, 1, v5);
  }
}

uint64_t type metadata accessor for PaymentShippingAddressItem()
{
  result = qword_1EBD42A98;
  if (!qword_1EBD42A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD35E074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AC8);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AE8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - v9;
  v11 = sub_1BE04C894();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C5A8);
  v21 = *(v20 - 8);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v20, v22);
  v26 = v34 - v25;
  v27 = *(a1 + 248);
  v39 = a1;
  v38 = a1;
  if (v27)
  {
    v34[1] = v7;
    v34[2] = v23;
    v28 = v36;
    if (*(a1 + 352))
    {
      v29 = MEMORY[0x1E69BC9E8];
    }

    else if (*(a1 + 280) == 2 && *(a1 + 264) == 0)
    {
      v29 = MEMORY[0x1E69BCA00];
    }

    else
    {
      v29 = MEMORY[0x1E69BC9F8];
    }

    (*(v12 + 104))(v15, *v29, v11, v24);
    sub_1BE04C784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AF0);
    sub_1BD35F8F4(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
    sub_1BD0DE4F4(&qword_1EBD42AF8, &qword_1EBD42AF0);
    sub_1BE04C6B4();
    v33 = v35;
    (v35[2])(v10, v6, v28);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8);
    sub_1BE04F9A4();
    return (v33[1])(v6, v28);
  }

  else
  {
    v35 = v34;
    v30 = v23;
    v31 = type metadata accessor for PaymentShippingAddressItem();
    (*(v12 + 16))(v19, a1 + *(v31 + 32), v11);
    sub_1BE04C784();
    sub_1BD35F8F4(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
    sub_1BE04C6B4();
    (*(v21 + 16))(v10, v26, v30);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8);
    sub_1BE04F9A4();
    return (*(v21 + 8))(v26, v30);
  }
}

void sub_1BD35E65C(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  if ([v1 contactSource] != 1)
  {
LABEL_12:

    return;
  }

  v2 = [v1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v3 = sub_1BE052744();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    return;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 label];

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = sub_1BE052434();
  v9 = v8;

  v10 = sub_1BD551B1C(v7, v9);
  v12 = v11;

  if (v12 <= 1)
  {
    if (v12 <= 1)
    {
      return;
    }

LABEL_15:
    sub_1BD35D778(v10, v12);
    return;
  }

  if (v12 != 2 && v12 != 3)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1BD35E858(void *a1)
{
  if (a1[26] < 2uLL)
  {
    if (a1[12])
    {
      v1 = a1[13];
      v2 = v1;
    }

    else
    {
      v1 = 0;
    }

    sub_1BD35E65C(v1);
  }

  sub_1BE0512B4();

  return sub_1BE04C774();
}

id sub_1BD35E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B00);
  return sub_1BD35E990(a1, (a2 + *(v4 + 44)));
}

id sub_1BD35E990@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41[0] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v42 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v46 = v41 - v17;
  v18 = *MEMORY[0x1E69B8068];
  v19 = *(v4 + 104);
  v19(v10, v18, v3, v16);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  v22 = sub_1BE04B6F4();
  v41[1] = v23;
  v41[2] = v22;

  v24 = *(v4 + 8);
  v24(v10, v3);
  if (*(a1 + 280) == 2 && *(a1 + 264) == 0)
  {
    v25 = *(a1 + 248);
    if (v25)
    {
      v26 = [v25 pkFormattedContactAddressIncludingPhoneticName_];
      v28 = v44;
      v27 = v45;
      v30 = v42;
      v29 = v43;
      if (v26)
      {
        v31 = v26;
        sub_1BE052434();
      }
    }

    else
    {
      v28 = v44;
      v27 = v45;
      v30 = v42;
      v29 = v43;
    }

    sub_1BE051224();
    goto LABEL_11;
  }

  v32 = v41[0];
  (v19)(v41[0], v18, v3);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_1BE04B6F4();

  v24(v32, v3);
  sub_1BE051264();
  v28 = v44;
  v27 = v45;
  v30 = v42;
  v29 = v43;
LABEL_11:
  sub_1BE04C644();
  if (*(a1 + 352) == 1)
  {
    v35 = *(a1 + 336);
    v34 = *(a1 + 344);
    KeyPath = swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    sub_1BE048964();
  }

  else
  {
    v35 = 0;
    v34 = 0;
    KeyPath = 0;
  }

  v37 = *(v29 + 16);
  v38 = v46;
  v37(v30, v46, v28);
  v37(v27, v30, v28);
  v39 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B08) + 48)];
  sub_1BD35F7B0(v35, v34, KeyPath);
  sub_1BD35F7F4(v35, v34, KeyPath);
  *v39 = v35;
  *(v39 + 1) = v34;
  *(v39 + 2) = KeyPath;
  v39[24] = 0;
  v40 = *(v29 + 8);
  v40(v38, v28);
  sub_1BD35F7F4(v35, v34, KeyPath);
  return (v40)(v30, v28);
}

uint64_t sub_1BD35EE48(void *a1)
{
  if (a1[26] < 2uLL)
  {
    if (a1[12])
    {
      v1 = a1[13];
      v2 = v1;
    }

    else
    {
      v1 = 0;
    }

    sub_1BD35E65C(v1);
  }

  sub_1BE052644();
  sub_1BE0511D4();
  return sub_1BE04C774();
}

id sub_1BD35EF50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v28[2] = v10;
    v28[3] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v10) = v16;
    sub_1BE050324();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;

    sub_1BD0DDF10(v13, v15, v10 & 1);

    sub_1BE0511F4();
    v22 = sub_1BE050564();
    v24 = v23;
    LOBYTE(v9) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD35F1CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AA8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10[-v3];
  v11 = v0;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AB0);
  sub_1BD35F564();
  sub_1BE051704();
  v5 = *(v0 + 352);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = &v4[*(v1 + 36)];
  *v8 = KeyPath;
  v8[1] = sub_1BD10DF54;
  v8[2] = v7;
  sub_1BE052434();
  sub_1BD35F644();
  sub_1BE050DE4();

  return sub_1BD35F728(v4);
}

uint64_t sub_1BD35F350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentShippingAddressItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD35F410(uint64_t a1)
{
  v2 = type metadata accessor for PaymentShippingAddressItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD35F494()
{
  result = sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04C894();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BD35F564()
{
  result = qword_1EBD42AB8;
  if (!qword_1EBD42AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42AB0);
    sub_1BD0DE4F4(&qword_1EBD3C5A0, &qword_1EBD3C5A8);
    sub_1BD0DE4F4(&qword_1EBD42AC0, &qword_1EBD42AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42AB8);
  }

  return result;
}

unint64_t sub_1BD35F644()
{
  result = qword_1EBD42AD0;
  if (!qword_1EBD42AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42AA8);
    sub_1BD0DE4F4(&qword_1EBD42AD8, &qword_1EBD42AE0);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42AD0);
  }

  return result;
}

uint64_t sub_1BD35F728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD35F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD35F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1BD35F838()
{
  result = qword_1EBD42B10;
  if (!qword_1EBD42B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B18);
    sub_1BD35F644();
    sub_1BD35F8F4(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42B10);
  }

  return result;
}

uint64_t sub_1BD35F8F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD35F968@<X0>(void *a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  v55 = a1;
  v54 = sub_1BE04F6E4();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v52 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B30);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v58 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B38);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B40);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v56 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v50 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v50 - v31;
  *v20 = sub_1BE04F504();
  *(v20 + 1) = 0x4028000000000000;
  v20[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B48);
  sub_1BD35FF54(v55, &v20[*(v33 + 44)]);
  sub_1BE051CE4();
  v34 = 1;
  sub_1BE04EE54();
  sub_1BD0DE204(v20, v28, &qword_1EBD42B38);
  v35 = &v28[*(v22 + 44)];
  v36 = v69;
  *(v35 + 4) = v68;
  *(v35 + 5) = v36;
  *(v35 + 6) = v70;
  v37 = v65;
  *v35 = v64;
  *(v35 + 1) = v37;
  v38 = v67;
  *(v35 + 2) = v66;
  *(v35 + 3) = v38;
  sub_1BD0DE204(v28, v32, &qword_1EBD42B40);
  if (a2)
  {
    v39 = sub_1BE051574();
    v50[1] = v39;
    v40 = sub_1BE0502D4();
    v50[0] = v40;
    KeyPath = swift_getKeyPath();
    v42 = sub_1BE0511E4();
    v43 = swift_getKeyPath();
    v55 = a3;
    v59 = v39;
    v60 = KeyPath;
    v61 = v40;
    v62 = v43;
    v63 = v42;
    v44 = v51;
    sub_1BE04F6B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
    sub_1BD0F1430();
    v45 = v52;
    sub_1BE050DA4();
    (*(v53 + 8))(v44, v54);

    a3 = v55;

    sub_1BD36088C(v45, v16);
    v34 = 0;
  }

  (*(v57 + 56))(v16, v34, 1, v7);
  v46 = v56;
  sub_1BD0DE19C(v32, v56, &qword_1EBD42B40);
  v47 = v58;
  sub_1BD0DE19C(v16, v58, &qword_1EBD42B30);
  sub_1BD0DE19C(v46, a3, &qword_1EBD42B40);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B50);
  sub_1BD0DE19C(v47, a3 + *(v48 + 48), &qword_1EBD42B30);
  sub_1BD0DE53C(v16, &qword_1EBD42B30);
  sub_1BD0DE53C(v32, &qword_1EBD42B40);
  sub_1BD0DE53C(v47, &qword_1EBD42B30);
  return sub_1BD0DE53C(v46, &qword_1EBD42B40);
}

uint64_t sub_1BD35FF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v34 = sub_1BE04FF64();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B60);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B68);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  v29 = PKPassKitUIBundle();
  v21 = sub_1BE0515F4();
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370);
  sub_1BD360374(v30, &v8[*(v22 + 44)]);
  sub_1BE04FF44();
  v23 = sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58);
  sub_1BE050D14();
  (*(v31 + 8))(v4, v34);
  sub_1BD0DE53C(v8, &qword_1EBD42B58);
  sub_1BE052434();
  v36 = v5;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v33;
  sub_1BE050DE4();

  (*(v32 + 8))(v12, v24);
  sub_1BD0DE19C(v20, v16, &qword_1EBD42B68);
  v25 = v35;
  *v35 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B78);
  sub_1BD0DE19C(v16, v25 + *(v26 + 48), &qword_1EBD42B68);
  sub_1BE048964();

  sub_1BD0DE53C(v20, &qword_1EBD42B68);
  sub_1BD0DE53C(v16, &qword_1EBD42B68);
}

uint64_t sub_1BD360374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v62 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v62 = &v62 - v15;
  v67 = a1;
  v16 = [a1 bankName];
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

  v68 = v18;
  v69 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  sub_1BE050324();
  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  if ([v67 status] == 2)
  {
    sub_1BE051234();
  }

  else
  {
    sub_1BE051224();
  }

  v31 = sub_1BE050564();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1BD0DDF10(v26, v28, v30 & 1);

  v68 = v31;
  v69 = v33;
  v70 = v35 & 1;
  v71 = v37;
  sub_1BE052434();
  v38 = v62;
  sub_1BE050DE4();

  sub_1BD0DDF10(v31, v33, v35 & 1);

  v68 = sub_1BD41F634(v67);
  v69 = v39;
  v40 = sub_1BE0506C4();
  v42 = v41;
  v44 = v43;
  sub_1BE0502E4();
  v45 = sub_1BE0505F4();
  v47 = v46;
  v49 = v48;

  sub_1BD0DDF10(v40, v42, v44 & 1);

  sub_1BE051234();
  v50 = sub_1BE050564();
  v52 = v51;
  LOBYTE(v42) = v53;
  v55 = v54;

  sub_1BD0DDF10(v45, v47, v49 & 1);

  v68 = v50;
  v69 = v52;
  v70 = v42 & 1;
  v71 = v55;
  sub_1BE052434();
  v56 = v63;
  sub_1BE050DE4();

  sub_1BD0DDF10(v50, v52, v42 & 1);

  v57 = v64;
  sub_1BD0DE19C(v38, v64, &qword_1EBD452C0);
  v58 = v66;
  sub_1BD0DE19C(v56, v66, &qword_1EBD452C0);
  v59 = v65;
  sub_1BD0DE19C(v57, v65, &qword_1EBD452C0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380);
  sub_1BD0DE19C(v58, v59 + *(v60 + 48), &qword_1EBD452C0);
  sub_1BD0DE53C(v56, &qword_1EBD452C0);
  sub_1BD0DE53C(v38, &qword_1EBD452C0);
  sub_1BD0DE53C(v58, &qword_1EBD452C0);
  return sub_1BD0DE53C(v57, &qword_1EBD452C0);
}

uint64_t sub_1BD3607FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B20);
  sub_1BD35F968(v3, v4, (a1 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B28);
  v7 = a1 + *(result + 36);
  *v7 = 0;
  *(v7 + 8) = v4;
  return result;
}

uint64_t sub_1BD36088C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3608FC()
{
  result = qword_1EBD42B80;
  if (!qword_1EBD42B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B28);
    sub_1BD0DE4F4(&qword_1EBD42B88, &qword_1EBD42B90);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42B80);
  }

  return result;
}

uint64_t sub_1BD360A0C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051984();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B98);
  *(a1 + *(result + 36)) = 0x3FE0000000000000;
  return result;
}

unint64_t sub_1BD360A50()
{
  result = qword_1EBD36800;
  if (!qword_1EBD36800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42B98);
    sub_1BD0FEE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36800);
  }

  return result;
}

id MerchantTokenUnifiedListViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MerchantTokenUnifiedListViewControllerProvider.init()()
{
  v1 = v0;
  sub_1BE049864();
  v5 = sub_1BE049854();
  v2 = sub_1BE0498E4();

  *&v1[OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MerchantTokenUnifiedListViewControllerProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t MerchantTokenUnifiedListViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = type metadata accessor for MerchantTokenNavigationStack(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  sub_1BD362728(a1, v6, type metadata accessor for MerchantTokenNavigationStack);
  v8 = sub_1BE04F894();
  sub_1BD362790(a1, type metadata accessor for MerchantTokenNavigationStack);
  return v8;
}

void sub_1BD360E74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v50 = a3;
  v49 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v49, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for MerchantTokenDetailView(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v47 - v18;
  v20 = (a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 84));
  v21 = *v20;
  v22 = v20[1];
  if (v21 == sub_1BE052434() && v22 == v23)
  {

    v26 = sub_1BD3CE02C();
    if (v26)
    {
LABEL_7:
      v27 = v26;
      v28 = [objc_allocWithZone(PKMerchantTokenDetailViewController) initWithMerchantToken_];
      aBlock[4] = PKEdgeInsetsMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_21_0;
      v29 = _Block_copy(aBlock);
      [v28 preflightWithCompletion_];
      _Block_release(v29);
      swift_beginAccess();
      [v28 setDelegate_];
      swift_unknownObjectRelease();

      goto LABEL_10;
    }
  }

  else
  {
    v25 = sub_1BE053B84();

    if (v25)
    {
      v26 = sub_1BD3CE02C();
      if (v26)
      {
        goto LABEL_7;
      }
    }
  }

  sub_1BD362728(a1, v19, type metadata accessor for UnifiedMerchantTokenData);
  v30 = *(v48 + 24);
  v31 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  swift_unknownObjectRelease();
  v32 = v12[7];
  v33 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  sub_1BE048964();
  *&v19[v32] = [v33 init];
  v34 = &v19[v12[8]];
  v54 = 0;
  sub_1BE051694();
  v35 = v53;
  *v34 = v52;
  *(v34 + 1) = v35;
  v36 = &v19[v12[9]];
  v54 = 0;
  sub_1BE051694();
  v37 = v53;
  *v36 = v52;
  *(v36 + 1) = v37;
  v38 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v38 - 8) + 56))(v11, 1, 3, v38);
  sub_1BD362728(v11, v7, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE051694();
  sub_1BD362790(v11, type metadata accessor for MerchantTokenDetailView.ImageState);
  v39 = &v19[v12[11]];
  v54 = 0;
  sub_1BE051694();
  v40 = v53;
  *v39 = v52;
  *(v39 + 1) = v40;
  *&v19[v12[5]] = v30;
  v41 = v12[12];
  v42 = v50;
  v43 = v50;

  *&v19[v41] = v42;
  v44 = &v19[v12[6]];
  *v44 = sub_1BD362720;
  v44[1] = v31;
  sub_1BD362728(v19, v15, type metadata accessor for MerchantTokenDetailView);
  v45 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD42CC8));
  v28 = sub_1BE04F894();
  sub_1BD362790(v19, type metadata accessor for MerchantTokenDetailView);
LABEL_10:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentMerchantTokenViewController_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1BD3613AC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result popViewControllerInMerchantTokenStack];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD361490(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EBD42BA8);
  v6 = *(v5 + 72);
  if (v6 && (*(v5 + 64) == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (sub_1BE053B84() & 1) != 0))
  {
    *(v5 + 64) = a1;
    *(v5 + 72) = a2;
    sub_1BE048C84();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD362360();
    sub_1BE04B584();
  }
}