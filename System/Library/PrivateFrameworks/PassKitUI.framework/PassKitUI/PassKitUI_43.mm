id sub_1BD4C7404@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (qword_1EBD36CF0 != -1)
  {
    v6 = v2;
    v5 = a2;
    swift_once();
    v2 = v6;
    a2 = v5;
  }

  v3 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = xmmword_1BE0D82B0;
  *(a2 + 48) = 0;

  return v2;
}

double sub_1BD4C74B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v59 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for UnavailablePass(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v53 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - v24;
  v58 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v58, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v56 = v25;
  v57 = &v52 - v31;
  sub_1BD4CCE58(a1, v25, type metadata accessor for UnavailablePass);
  v32 = a2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
  v33 = *(v32 + *(type metadata accessor for Passes(0) + 40));
  sub_1BD4CCE58(a1, v17, type metadata accessor for UnavailablePass);
  (*(v19 + 56))(v17, 0, 1, v18);
  v34 = *(v7 + 56);
  sub_1BD0DE19C(v17, v10, &qword_1EBD3C3F8);
  sub_1BD0DE19C(v55, &v10[v34], &qword_1EBD3C3F8);
  v35 = *(v19 + 48);
  if (v35(v10, 1, v18) != 1)
  {
    v37 = v54;
    sub_1BD0DE19C(v10, v54, &qword_1EBD3C3F8);
    if (v35(&v10[v34], 1, v18) == 1)
    {
      sub_1BD0DE53C(v17, &qword_1EBD3C3F8);
      sub_1BD4CCF28(v37, type metadata accessor for UnavailablePass);
      goto LABEL_6;
    }

    v38 = v53;
    sub_1BD4CCEC0(&v10[v34], v53, type metadata accessor for UnavailablePass);
    v39 = sub_1BD492F00();
    v41 = v40;
    if (v39 == sub_1BD492F00() && v41 == v42)
    {
    }

    else
    {
      v43 = sub_1BE053B84();

      v36 = 0;
      if ((v43 & 1) == 0)
      {
LABEL_12:
        sub_1BD0DE53C(v17, &qword_1EBD3C3F8);
        sub_1BD4CCF28(v38, type metadata accessor for UnavailablePass);
        sub_1BD4CCF28(v37, type metadata accessor for UnavailablePass);
        sub_1BD0DE53C(v10, &qword_1EBD3C3F8);
        goto LABEL_13;
      }
    }

    v44 = *(v18 + 28);
    v36 = sub_1BD498408(*(v37 + v44), *(v37 + v44 + 8), *(v37 + v44 + 16), *(v38 + v44), *(v38 + v44 + 8), *(v38 + v44 + 16));
    goto LABEL_12;
  }

  sub_1BD0DE53C(v17, &qword_1EBD3C3F8);
  if (v35(&v10[v34], 1, v18) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v10, &qword_1EBD47E20);
    v36 = 0;
    goto LABEL_13;
  }

  sub_1BD0DE53C(v10, &qword_1EBD3C3F8);
  v36 = 1;
LABEL_13:
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E28) + 48);
  sub_1BD4CCEC0(v56, v28, type metadata accessor for UnavailablePass);
  v28[v45] = v33;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  v46 = v36 & 1;
  v47 = v57;
  v28[*(v58 + 20)] = v46;
  sub_1BD4CCEC0(v28, v47, type metadata accessor for PassRow);
  v48 = v47;
  v49 = v59;
  sub_1BD4CCEC0(v48, v59, type metadata accessor for PassRow);
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8) + 36);
  result = 0.0;
  *v50 = xmmword_1BE0D82B0;
  *(v50 + 16) = xmmword_1BE0D82B0;
  *(v50 + 32) = 0;
  return result;
}

id sub_1BD4C7A7C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v12;
  v15 = *MEMORY[0x1E69B8068];
  v16 = *(v2 + 104);
  if (*v0 == 9)
  {
    v16(v9, v15, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
      v14 = v9;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*v0 == 10)
  {
    v16(&v20 - v12, v15, v1, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v14, v1);
      return v19;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16(v5, v15, v1, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v14 = v5;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BD4C7CE4()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassMethodSheet(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = [objc_opt_self() sharedService];
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v6 paymentOffersController:*(v1 + v2[10])];

  if (v7)
  {
    v8 = v1 + v2[33];
    v9 = *v8;
    v10 = *(v8 + 8);
    LOBYTE(aBlock) = v9;
    v19 = v10;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    sub_1BD6B2184(4, 2u, 0);
    v11 = v1 + v2[6];
    v12 = *(v11 + *(type metadata accessor for Passes(0) + 44));
    if (v12)
    {
      type metadata accessor for PKPaymentNetwork(0);
      v12 = sub_1BE052724();
    }

    [v7 setAllowedPaymentNetworks_];

    [v7 setIncludePendingVerificationCredentials_];
    sub_1BD4CCE58(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_1BD4CCEC0(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentPassMethodSheet);
    *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v22 = sub_1BD4CE19C;
    v23 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1BD3CC8C0;
    v21 = &block_descriptor_106;
    v15 = _Block_copy(&aBlock);
    v16 = v7;

    [v16 preflightWithCompletion_];
    _Block_release(v15);
  }
}

uint64_t sub_1BD4C7FB4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22[-v12 - 8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);
  v15 = *(v14 + 48);
  v16 = &v13[*(v14 + 64)];
  sub_1BD0DE19C(a1, v13, &qword_1EBD520A0);
  *&v13[v15] = a2;
  *(v16 + 4) = *(a3 + 32);
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 1) = v17;
  v18 = _s11DetailSheetOMa();
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v13, v9, &unk_1EBD43B20);
  v19 = a2;
  sub_1BD10D494(a3, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v13, &unk_1EBD43B20);
}

void sub_1BD4C818C(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v8 = [objc_opt_self() sharedInstance];
    if (v8)
    {
      v9 = v8;
      aBlock[4] = sub_1BD4C83BC;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_107_1;
      v10 = _Block_copy(aBlock);
      v11 = v7;
      [v9 presentPeerPaymentTermsAndConditionsWithAccount:a1 orientation:v11 completion:v10];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BE04D084();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Unable to present peer payment terms acceptance flow", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BD4C83BC()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, v6, "Presented peer payment terms acceptance flow", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1BD4C84F0(char a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28[-v14];
  v16 = (a3 + *(type metadata accessor for PaymentPassMethodSheet(0) + 132));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v30) = v17;
  v31 = v18;
  LOBYTE(v29[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  if (a1)
  {
    *v15 = a4;
    v19 = _s11DetailSheetOMa();
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    sub_1BD0DE19C(v15, v11, &unk_1EBD43B20);
    v20 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
    sub_1BE0516B4();
    v21 = v15;
    v22 = &unk_1EBD43B20;
LABEL_6:
    sub_1BD0DE53C(v21, v22);
    return;
  }

  if (a2)
  {
    v23 = a2;
    sub_1BD2B1EAC(a2, &v30);
    v24 = v31;
    if (v31)
    {
      v25 = v30;
      v29[3] = &type metadata for AuthorizationError;
      v29[4] = sub_1BD1C2B14();
      v26 = swift_allocObject();
      v29[0] = v26;
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;
      v27 = v33;
      *(v26 + 32) = v32;
      *(v26 + 48) = v27;
      sub_1BD0DE19C(v29, v28, &qword_1EBD51EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
      sub_1BE0516B4();
      v21 = v29;
      v22 = &qword_1EBD51EC0;
      goto LABEL_6;
    }
  }
}

uint64_t sub_1BD4C876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v17 - v9;
  v11 = sub_1BD4C8A54();
  v19 = v12;
  v26 = v11;
  v27 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  MEMORY[0x1BFB3E970]();
  v14 = type metadata accessor for AvailablePass(0);
  v15 = (*(*(v14 - 8) + 48))(v10, 1, v14) != 1;
  sub_1BD0DE53C(v10, &qword_1EBD520A0);
  v23 = v15;
  sub_1BE051944();
  v17[0] = v24;
  v18 = v25;
  MEMORY[0x1BFB3E970](v13);
  v17[1] = v17;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F70);
  sub_1BD0DE4F4(&qword_1EBD47F78, &qword_1EBD47F68);
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
  sub_1BD4D58A4();
  sub_1BE050F14();

  sub_1BD0DE53C(v6, &qword_1EBD520A0);
}

id sub_1BD4C8A54()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for AvailablePass(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  MEMORY[0x1BFB3E970](v18);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_1BD4CCEC0(v12, v17, type metadata accessor for AvailablePass);
    (*(v1 + 104))(v8, *MEMORY[0x1E69B8068], v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BE0B69E0;
    v23 = sub_1BD49C818();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1BD110550();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v21 = sub_1BE04B714();

    (*(v1 + 8))(v8, v0);
    sub_1BD4CCF28(v17, type metadata accessor for AvailablePass);
    return v21;
  }

  sub_1BD0DE53C(v12, &qword_1EBD520A0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    return v21;
  }

  __break(1u);
  return result;
}

id sub_1BD4C8DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v81 = a2;
  v77 = a1;
  v70 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = &v65 - v5;
  v6 = type metadata accessor for AvailablePass(0);
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v76 = v8;
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentPassDefaultConfirmationModifier(0);
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v74 = v12;
  v80 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v78 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v68 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v67 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v66 = &v65 - v30;
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v79 = &v65 - v34;
  v35 = *(v14 + 104);
  v72 = *MEMORY[0x1E69B80D0];
  v71 = v35;
  v35(v20, v33);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    v65 = *(v14 + 8);
    v65(v20, v13);
    v82 = v38;
    v83 = v40;
    v41 = v80;
    sub_1BD4CCE58(v81, v80, type metadata accessor for PaymentPassDefaultConfirmationModifier);
    sub_1BD4CCE58(v77, v9, type metadata accessor for AvailablePass);
    v42 = *(v73 + 80);
    v43 = (v42 + 16) & ~v42;
    v44 = v42 | 7;
    v45 = *(v75 + 80);
    v77 = v43 + v74;
    v46 = (v43 + v74 + v45) & ~v45;
    v76 = v44;
    v47 = swift_allocObject();
    sub_1BD4CCEC0(v41, v47 + v43, type metadata accessor for PaymentPassDefaultConfirmationModifier);
    sub_1BD4CCEC0(v9, v47 + v46, type metadata accessor for AvailablePass);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v71(v78, v72, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      v49 = v78;
      v50 = sub_1BE04B6F4();
      v52 = v51;

      v65(v49, v13);
      v82 = v50;
      v83 = v52;
      v53 = v69;
      sub_1BE04E1B4();
      v54 = sub_1BE04E1D4();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      v55 = v80;
      sub_1BD4CCE58(v81, v80, type metadata accessor for PaymentPassDefaultConfirmationModifier);
      v56 = swift_allocObject();
      sub_1BD4CCEC0(v55, v56 + v43, type metadata accessor for PaymentPassDefaultConfirmationModifier);
      v57 = v66;
      sub_1BE051724();
      v58 = *(v22 + 16);
      v59 = v67;
      v60 = v79;
      v58(v67, v79, v21);
      v61 = v68;
      v58(v68, v57, v21);
      v62 = v70;
      v58(v70, v59, v21);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
      v58(&v62[*(v63 + 48)], v61, v21);
      v64 = *(v22 + 8);
      v64(v57, v21);
      v64(v60, v21);
      v64(v61, v21);
      return (v64)(v59, v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4C94E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for PaymentPassDefaultConfirmationModifier(0);
  (*(a1 + *(v12 + 20)))(a2);
  v13 = type metadata accessor for AvailablePass(0);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_1BD0DE19C(v11, v7, &qword_1EBD520A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v11, &qword_1EBD520A0);
}

uint64_t sub_1BD4C9648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for AvailablePass(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1BD0DE19C(v7, v3, &qword_1EBD520A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v7, &qword_1EBD520A0);
}

id sub_1BD4C9778@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43 - v13;
  v15 = (v3 + 104);
  if (sub_1BD49500C())
  {
    (*v15)(v14, *MEMORY[0x1E69B80D8], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      (*(v3 + 8))(v14, v2);
      *&v46 = v18;
      *(&v46 + 1) = v20;
      sub_1BD0DDEBC();
      *&v43 = sub_1BE0506C4();
      *(&v43 + 1) = v21;
      *&v44 = v22 & 1;
      *(&v44 + 1) = v23;
      v45 = 0;
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD170E70();
      result = sub_1BE04F9A4();
      v40 = v47;
      v41 = v48;
      v42 = v49;
      *a1 = v46;
      *(a1 + 16) = v40;
      *(a1 + 32) = v41;
      *(a1 + 33) = v42;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v24 = sub_1BD495018();
  v25 = *v15;
  if (v24)
  {
    v25(v10, *MEMORY[0x1E69B80C8], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v3 + 8))(v10, v2);
    *&v46 = v27;
    *(&v46 + 1) = v29;
    sub_1BD0DDEBC();
    *&v43 = sub_1BE0506C4();
    *(&v43 + 1) = v30;
    *&v44 = v31 & 1;
    *(&v44 + 1) = v32;
    LOBYTE(v45) = 0;
LABEL_9:
    sub_1BE04F9A4();
    v43 = v46;
    v44 = v47;
    LOBYTE(v45) = v48;
    HIBYTE(v45) = 1;
    goto LABEL_10;
  }

  v25(v6, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1BE04B6F4();
    v36 = v35;

    (*(v3 + 8))(v6, v2);
    *&v46 = v34;
    *(&v46 + 1) = v36;
    sub_1BD0DDEBC();
    *&v43 = sub_1BE0506C4();
    *(&v43 + 1) = v38;
    *&v44 = v37 & 1;
    *(&v44 + 1) = v39;
    LOBYTE(v45) = 1;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_48()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v263 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v263 + 16) & ~v263);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v264 = v5;
  v265 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v7 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v8 = sub_1BE04CF34();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v9 = v3 + v4[6];
    v10 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 20);
      v12 = sub_1BE04DA84();
      (*(*(v12 - 8) + 8))(&v9[v11], v12);
    }

    v13 = (v3 + v4[7]);
    v14 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 28);
      v16 = sub_1BE04AF64();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v13 + v15, 1, v16))
      {
        (*(v17 + 8))(v13 + v15, v16);
      }
    }

    v18 = v3 + v4[10];
    v19 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      if (*(v18 + 2) != 1)
      {
      }

      if (*(v18 + 9) != 1)
      {
      }

      v20 = *(v19 + 28);
      v21 = sub_1BE04AF64();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      if (!v23(&v18[v20], 1, v21))
      {
        (*(v22 + 8))(&v18[v20], v21);
      }

      v24 = *(v19 + 32);
      v25 = v23(&v18[v24], 1, v21);
      v5 = v264;
      v4 = v265;
      if (!v25)
      {
        (*(v22 + 8))(&v18[v24], v21);
      }
    }

    v26 = (v3 + v4[12]);
    if (*v26)
    {
    }

    v27 = (v3 + v4[13]);
    if (*v27)
    {
    }
  }

  v28 = type metadata accessor for Passes(0);

  v29 = v2 + v1[7];
  if (*(v29 + 48))
  {
    sub_1BD0D455C(*v29, *(v29 + 8), *(v29 + 16));
  }

  v30 = (v2 + v1[8]);
  v31 = type metadata accessor for PeerPaymentModel();
  v32 = *(*(v31 - 1) + 48);
  if (!v32(v30, 1, v31))
  {

    v33 = (v30 + v31[5]);
    type metadata accessor for WrappedPass(0);
    v34 = swift_getEnumCaseMultiPayload();
    v256 = v28;
    if (v34 == 2)
    {

      v35 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v36 = sub_1BE04CF34();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
    }

    else if (v34 <= 1)
    {
    }

    v251 = v32;
    v37 = v33 + v4[6];
    v38 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      v39 = *(v38 + 20);
      v40 = sub_1BE04DA84();
      (*(*(v40 - 8) + 8))(&v37[v39], v40);
    }

    v41 = (v33 + v4[7]);
    v42 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      v43 = *(v42 + 28);
      v44 = sub_1BE04AF64();
      v45 = *(v44 - 8);
      if (!(*(v45 + 48))(v41 + v43, 1, v44))
      {
        (*(v45 + 8))(v41 + v43, v44);
      }
    }

    v46 = v33 + v4[10];
    v47 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {
      if (*(v46 + 2) != 1)
      {
      }

      v247 = v31;
      if (*(v46 + 9) != 1)
      {
      }

      v48 = *(v47 + 28);
      v49 = sub_1BE04AF64();
      v254 = *(v49 - 8);
      v50 = *(v254 + 48);
      if (!v50(&v46[v48], 1, v49))
      {
        (*(v254 + 8))(&v46[v48], v49);
      }

      v51 = *(v47 + 32);
      v31 = v247;
      if (!v50(&v46[v51], 1, v49))
      {
        (*(v254 + 8))(&v46[v51], v49);
      }
    }

    v4 = v265;
    v52 = (v33 + v265[12]);
    v28 = v256;
    v32 = v251;
    if (*v52)
    {
    }

    v53 = (v33 + v265[13]);
    v5 = v264;
    if (*v53)
    {
    }

    v54 = (v30 + v31[6]);
    if (*v54 != 1)
    {

      if (v54[3])
      {
      }
    }
  }

  v55 = v2 + v1[9];
  v56 = _s14PaymentSummaryVMa();
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v253 = _s11TotalAmountVMa(0);
    v57 = v55 + *(v253 + 40);
    _s22SummaryItemPricingTypeOMa(0);
    v58 = swift_getEnumCaseMultiPayload();
    v250 = v56;
    v255 = v55;
    if (v58 == 2)
    {
    }

    else if (v58 == 1)
    {
      v66 = sub_1BE04AF64();
      (*(*(v66 - 8) + 8))(v57, v66);
    }

    else
    {
      v59 = v253;
      if (v58)
      {
LABEL_67:
        v67 = v5;
        v68 = v255;

        v69 = (v255 + v59[15]);
        v70 = v32(v69, 1, v31);
        v71 = v265;
        if (!v70)
        {

          v262 = v69;
          v72 = (v69 + v31[5]);
          type metadata accessor for WrappedPass(0);
          v73 = v72;
          v74 = swift_getEnumCaseMultiPayload();
          v257 = v28;
          if (v74 == 2)
          {

            v77 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v78 = sub_1BE04CF34();
            (*(*(v78 - 8) + 8))(v73 + v77, v78);
            v75 = v265;
            v76 = v73;
          }

          else
          {
            v75 = v265;
            if (v74 == 1)
            {
              v76 = v72;
            }

            else
            {
              v76 = v72;
              if (!v74)
              {
              }
            }
          }

          v249 = v31;
          v79 = v76 + v75[6];
          v80 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v80 + 20);
            v82 = sub_1BE04DA84();
            (*(*(v82 - 8) + 8))(&v79[v81], v82);
          }

          v83 = (v76 + v75[7]);
          v84 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {

            v85 = *(v84 + 28);
            v86 = sub_1BE04AF64();
            v87 = *(v86 - 8);
            if (!(*(v87 + 48))(v83 + v85, 1, v86))
            {
              (*(v87 + 8))(v83 + v85, v86);
            }
          }

          v88 = v76 + v75[10];
          v89 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
          {
            if (*(v88 + 2) != 1)
            {
            }

            if (*(v88 + 9) != 1)
            {
            }

            v90 = *(v89 + 28);
            v91 = sub_1BE04AF64();
            v92 = *(v91 - 8);
            v93 = *(v92 + 48);
            if (!v93(&v88[v90], 1, v91))
            {
              (*(v92 + 8))(&v88[v90], v91);
            }

            v94 = *(v89 + 32);
            if (!v93(&v88[v94], 1, v91))
            {
              (*(v92 + 8))(&v88[v94], v91);
            }
          }

          v95 = (v76 + v265[12]);
          v28 = v257;
          if (*v95)
          {
          }

          v96 = (v76 + v265[13]);
          if (*v96)
          {
          }

          v97 = (v262 + v249[6]);
          if (*v97 != 1)
          {

            if (v97[3])
            {
            }
          }

          v71 = v265;
          v67 = v264;

          v59 = v253;
          v68 = v255;
        }

        v98 = (v68 + v59[16]);
        v5 = v67;
        v4 = v71;
        if (!(*(*(v28 - 8) + 48))(v98, 1, v28))
        {
          if (!v67(v98, 1, v71))
          {
            type metadata accessor for WrappedPass(0);
            v99 = swift_getEnumCaseMultiPayload();
            v258 = v28;
            if (v99 == 2)
            {

              v100 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v101 = sub_1BE04CF34();
              (*(*(v101 - 8) + 8))(v98 + v100, v101);
            }

            else if (v99 <= 1)
            {
            }

            v102 = v98 + v71[6];
            v103 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
            {

              v104 = *(v103 + 20);
              v105 = sub_1BE04DA84();
              (*(*(v105 - 8) + 8))(&v102[v104], v105);
            }

            v106 = (v98 + v71[7]);
            v107 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
            {

              v108 = *(v107 + 28);
              v109 = sub_1BE04AF64();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v106 + v108, 1, v109))
              {
                (*(v110 + 8))(v106 + v108, v109);
              }
            }

            v111 = v98 + v4[10];
            v112 = type metadata accessor for PassEligibleRewardsInfo();
            if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
            {
              if (*(v111 + 2) != 1)
              {
              }

              if (*(v111 + 9) != 1)
              {
              }

              v113 = *(v112 + 28);
              v114 = sub_1BE04AF64();
              v115 = *(v114 - 8);
              v116 = *(v115 + 48);
              if (!v116(&v111[v113], 1, v114))
              {
                (*(v115 + 8))(&v111[v113], v114);
              }

              v117 = *(v112 + 32);
              if (!v116(&v111[v117], 1, v114))
              {
                (*(v115 + 8))(&v111[v117], v114);
              }
            }

            v4 = v265;
            v118 = (v98 + v265[12]);
            v28 = v258;
            if (*v118)
            {
            }

            v119 = (v98 + v265[13]);
            v5 = v264;
            if (*v119)
            {
            }
          }

          v68 = v255;
        }

        if (*(v68 + v250[7] + 8))
        {
        }

        v120 = v68 + v250[9];
        if (*(v120 + 8))
        {
        }

        v121 = v68 + v250[10];
        if (*(v121 + 8))
        {
        }

        v122 = v68 + v250[11];
        v123 = type metadata accessor for DeferredPaymentRequest();
        if (!(*(*(v123 - 1) + 48))(v122, 1, v123))
        {

          v124 = v123[7];
          v125 = sub_1BE04AF64();
          v126 = *(v125 - 8);
          if (!(*(v126 + 48))(v122 + v124, 1, v125))
          {
            (*(v126 + 8))(v122 + v124, v125);
          }

          v127 = v123[8];
          v128 = sub_1BE04B3B4();
          v129 = *(v128 - 8);
          if (!(*(v129 + 48))(v122 + v127, 1, v128))
          {
            (*(v129 + 8))(v122 + v127, v128);
          }

          v5 = v264;
        }

        goto LABEL_136;
      }

      v252 = v32;
      v248 = v31;
      v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v61 = *(v60 + 24);
      v62 = sub_1BE04AF64();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      if (!v64(v57 + v61, 1, v62))
      {
        (*(v63 + 8))(v57 + v61, v62);
      }

      v65 = *(v60 + 28);
      if (!v64(v57 + v65, 1, v62))
      {
        (*(v63 + 8))(v57 + v65, v62);
      }

      v5 = v264;
      v31 = v248;
      v32 = v252;
    }

    v59 = v253;
    goto LABEL_67;
  }

LABEL_136:

  if (*(v2 + v1[24]))
  {
  }

  v130 = v2 + v1[27];
  if (*(v130 + 8))
  {
  }

  v131 = (v2 + v1[30]);
  if (!v5(v131, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v132 = swift_getEnumCaseMultiPayload();
    if (v132 == 2)
    {

      v133 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v134 = sub_1BE04CF34();
      (*(*(v134 - 8) + 8))(v131 + v133, v134);
    }

    else if (v132 <= 1)
    {
    }

    v135 = v131 + v4[6];
    v136 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v136 - 8) + 48))(v135, 1, v136))
    {

      v137 = *(v136 + 20);
      v138 = sub_1BE04DA84();
      (*(*(v138 - 8) + 8))(&v135[v137], v138);
    }

    v139 = (v131 + v4[7]);
    v140 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v140 - 8) + 48))(v139, 1, v140))
    {

      v141 = *(v140 + 28);
      v142 = sub_1BE04AF64();
      v143 = *(v142 - 8);
      if (!(*(v143 + 48))(v139 + v141, 1, v142))
      {
        (*(v143 + 8))(v139 + v141, v142);
      }
    }

    v144 = v131 + v4[10];
    v145 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
    {
      if (*(v144 + 2) != 1)
      {
      }

      if (*(v144 + 9) != 1)
      {
      }

      v146 = *(v145 + 28);
      v147 = sub_1BE04AF64();
      v148 = *(v147 - 8);
      v149 = *(v148 + 48);
      if (!v149(&v144[v146], 1, v147))
      {
        (*(v148 + 8))(&v144[v146], v147);
      }

      v150 = *(v145 + 32);
      v5 = v264;
      v4 = v265;
      if (!v149(&v144[v150], 1, v147))
      {
        (*(v148 + 8))(&v144[v150], v147);
      }
    }

    v151 = (v131 + v4[12]);
    if (*v151)
    {
    }

    v152 = (v131 + v4[13]);
    if (*v152)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v153 = (v2 + v1[32]);
  v154 = _s11DetailSheetOMa();
  if (!(*(*(v154 - 8) + 48))(v153, 1, v154))
  {
    v155 = swift_getEnumCaseMultiPayload();
    if (v155 <= 1)
    {
      if (!v155)
      {
        if (!v5(v153, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v159 = swift_getEnumCaseMultiPayload();
          if (v159 == 2)
          {

            v200 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v201 = sub_1BE04CF34();
            (*(*(v201 - 8) + 8))(v153 + v200, v201);
          }

          else if (v159 <= 1)
          {
          }

          v202 = v153 + v4[6];
          v203 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 20);
            v205 = sub_1BE04DA84();
            (*(*(v205 - 8) + 8))(&v202[v204], v205);
          }

          v206 = (v153 + v4[7]);
          v207 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {

            v208 = *(v207 + 28);
            v209 = sub_1BE04AF64();
            v210 = *(v209 - 8);
            if (!(*(v210 + 48))(v206 + v208, 1, v209))
            {
              (*(v210 + 8))(v206 + v208, v209);
            }
          }

          v211 = v153 + v4[10];
          v212 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v212 - 8) + 48))(v211, 1, v212))
          {
            if (*(v211 + 2) != 1)
            {
            }

            if (*(v211 + 9) != 1)
            {
            }

            v213 = *(v212 + 28);
            v214 = sub_1BE04AF64();
            v215 = *(v214 - 8);
            v216 = *(v215 + 48);
            if (!v216(&v211[v213], 1, v214))
            {
              (*(v215 + 8))(&v211[v213], v214);
            }

            v261 = v215;
            v217 = *(v212 + 32);
            v5 = v264;
            v4 = v265;
            if (!v216(&v211[v217], 1, v214))
            {
              (*(v261 + 8))(&v211[v217], v214);
            }
          }

          v218 = (v153 + v4[12]);
          if (*v218)
          {
          }

          v219 = (v153 + v4[13]);
          if (*v219)
          {
          }
        }

        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v221 = v153 + *(v220 + 64);

        v157 = *(v221 + 4);
        goto LABEL_243;
      }

      if (v155 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v157 = *v153;
LABEL_243:

      goto LABEL_244;
    }

    if (v155 != 2)
    {
      if (v155 != 3)
      {
        if (v155 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v156 = swift_getEnumCaseMultiPayload();
        if (v156 == 2)
        {

          v180 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v181 = sub_1BE04CF34();
          (*(*(v181 - 8) + 8))(v153 + v180, v181);
        }

        else if (v156 <= 1)
        {
        }

        v182 = v153 + v4[6];
        v183 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v183 - 8) + 48))(v182, 1, v183))
        {

          v184 = *(v183 + 20);
          v185 = sub_1BE04DA84();
          (*(*(v185 - 8) + 8))(&v182[v184], v185);
        }

        v186 = (v153 + v4[7]);
        v187 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v187 - 8) + 48))(v186, 1, v187))
        {

          v188 = *(v187 + 28);
          v189 = sub_1BE04AF64();
          v190 = *(v189 - 8);
          if (!(*(v190 + 48))(v186 + v188, 1, v189))
          {
            (*(v190 + 8))(v186 + v188, v189);
          }
        }

        v191 = v153 + v4[10];
        v192 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
        {
          if (*(v191 + 2) != 1)
          {
          }

          if (*(v191 + 9) != 1)
          {
          }

          v193 = *(v192 + 28);
          v194 = sub_1BE04AF64();
          v195 = *(v194 - 8);
          v196 = *(v195 + 48);
          if (!v196(&v191[v193], 1, v194))
          {
            (*(v195 + 8))(&v191[v193], v194);
          }

          v260 = v195;
          v197 = *(v192 + 32);
          v5 = v264;
          v4 = v265;
          if (!v196(&v191[v197], 1, v194))
          {
            (*(v260 + 8))(&v191[v197], v194);
          }
        }

        v198 = (v153 + v4[12]);
        if (*v198)
        {
        }

        v199 = (v153 + v4[13]);
        if (*v199)
        {
        }

        v157 = *(v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v158 = swift_getEnumCaseMultiPayload();
    if (v158 == 2)
    {

      v160 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v161 = sub_1BE04CF34();
      (*(*(v161 - 8) + 8))(v153 + v160, v161);
    }

    else if (v158 <= 1)
    {
    }

    v162 = v153 + v4[6];
    v163 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v163 - 8) + 48))(v162, 1, v163))
    {

      v164 = *(v163 + 20);
      v165 = sub_1BE04DA84();
      (*(*(v165 - 8) + 8))(&v162[v164], v165);
    }

    v166 = (v153 + v4[7]);
    v167 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v167 - 8) + 48))(v166, 1, v167))
    {

      v168 = *(v167 + 28);
      v169 = sub_1BE04AF64();
      v170 = *(v169 - 8);
      if (!(*(v170 + 48))(v166 + v168, 1, v169))
      {
        (*(v170 + 8))(v166 + v168, v169);
      }
    }

    v171 = v153 + v4[10];
    v172 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v172 - 8) + 48))(v171, 1, v172))
    {
      if (*(v171 + 2) != 1)
      {
      }

      if (*(v171 + 9) != 1)
      {
      }

      v173 = *(v172 + 28);
      v174 = sub_1BE04AF64();
      v175 = *(v174 - 8);
      v176 = *(v175 + 48);
      if (!v176(&v171[v173], 1, v174))
      {
        (*(v175 + 8))(&v171[v173], v174);
      }

      v259 = v175;
      v177 = *(v172 + 32);
      v5 = v264;
      v4 = v265;
      if (!v176(&v171[v177], 1, v174))
      {
        (*(v259 + 8))(&v171[v177], v174);
      }
    }

    v178 = (v153 + v4[12]);
    if (*v178)
    {
    }

    v179 = (v153 + v4[13]);
    if (*v179)
    {
    }
  }

LABEL_244:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v2 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + v1[34]);
  }

  v222 = (v2 + v1[35]);
  if (!v5(v222, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 == 2)
    {

      v224 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v225 = sub_1BE04CF34();
      (*(*(v225 - 8) + 8))(v222 + v224, v225);
    }

    else if (v223 <= 1)
    {
    }

    v226 = v222 + v4[6];
    v227 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v227 - 8) + 48))(v226, 1, v227))
    {

      v228 = *(v227 + 20);
      v229 = sub_1BE04DA84();
      (*(*(v229 - 8) + 8))(&v226[v228], v229);
    }

    v230 = (v222 + v4[7]);
    v231 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v231 - 8) + 48))(v230, 1, v231))
    {

      v232 = *(v231 + 28);
      v233 = sub_1BE04AF64();
      v234 = *(v233 - 8);
      if (!(*(v234 + 48))(v230 + v232, 1, v233))
      {
        (*(v234 + 8))(v230 + v232, v233);
      }
    }

    v235 = v222 + v4[10];
    v236 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v236 - 8) + 48))(v235, 1, v236))
    {
      if (*(v235 + 2) != 1)
      {
      }

      if (*(v235 + 9) != 1)
      {
      }

      v237 = *(v236 + 28);
      v238 = sub_1BE04AF64();
      v239 = *(v238 - 8);
      v240 = *(v239 + 48);
      if (!v240(&v235[v237], 1, v238))
      {
        (*(v239 + 8))(&v235[v237], v238);
      }

      v241 = *(v236 + 32);
      v4 = v265;
      if (!v240(&v235[v241], 1, v238))
      {
        (*(v239 + 8))(&v235[v241], v238);
      }
    }

    v242 = (v222 + v4[12]);
    if (*v242)
    {
    }

    v243 = (v222 + v4[13]);
    if (*v243)
    {
    }
  }

  v244 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v245 = sub_1BE04C884();
    (*(*(v245 - 8) + 8))(v2 + v244, v245);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD4CCB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4BC658(a1, v6, a2);
}

uint64_t sub_1BD4CCC28(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1BD4CCCA4()
{
  result = qword_1EBD47B78;
  if (!qword_1EBD47B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B70);
    sub_1BD0DE4F4(&qword_1EBD47B80, &qword_1EBD47B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47B78);
  }

  return result;
}

uint64_t sub_1BD4CCD5C()
{
  v2 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD4C0A38(v4, v5, v0 + v3);
}

uint64_t sub_1BD4CCE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4CCEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4CCF28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD4CCF88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD4CD3A0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v5 = sub_1BE04E924();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BD4CD080(uint64_t a1)
{
  v2 = sub_1BE04E924();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_1BD5BC64C(v6);
}

id sub_1BD4CD14C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v14 - v7;
  v9 = PKOslo2024UIUpdatesEnabled();
  v10 = *(v1 + 104);
  if (v9)
  {
    v10(v8, *MEMORY[0x1E69B80D8], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
LABEL_6:

      (*(v1 + 8))(v8, v0);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(v4, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4CD3A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD4CD3E8()
{
  result = qword_1EBD47BE0;
  if (!qword_1EBD47BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BC8);
    sub_1BD4CD4A4();
    sub_1BD4CD3A0(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BE0);
  }

  return result;
}

unint64_t sub_1BD4CD4A4()
{
  result = qword_1EBD47BE8;
  if (!qword_1EBD47BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BF0);
    sub_1BD4CD530();
    sub_1BD4CD6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BE8);
  }

  return result;
}

unint64_t sub_1BD4CD530()
{
  result = qword_1EBD47BF8;
  if (!qword_1EBD47BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C00);
    sub_1BD4CD3A0(&qword_1EBD39490, type metadata accessor for BillingAddressEditor);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C08);
    sub_1BD4CD630();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BF8);
  }

  return result;
}

unint64_t sub_1BD4CD630()
{
  result = qword_1EBD47C10;
  if (!qword_1EBD47C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C08);
    sub_1BD4CD3A0(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C10);
  }

  return result;
}

unint64_t sub_1BD4CD6EC()
{
  result = qword_1EBD47C18;
  if (!qword_1EBD47C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C20);
    sub_1BD4CD778();
    sub_1BD4CD804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C18);
  }

  return result;
}

unint64_t sub_1BD4CD778()
{
  result = qword_1EBD47C28;
  if (!qword_1EBD47C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C30);
    sub_1BD33E1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C28);
  }

  return result;
}

unint64_t sub_1BD4CD804()
{
  result = qword_1EBD47C38;
  if (!qword_1EBD47C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C40);
    sub_1BD4CD3A0(&qword_1EBD47C48, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C38);
  }

  return result;
}

id sub_1BD4CD8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4BFAA4(a1, v6, a2);
}

unint64_t sub_1BD4CD938()
{
  result = qword_1EBD47C58;
  if (!qword_1EBD47C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA0);
    _s11DetailSheetOMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BC8);
    sub_1BD0DE4F4(&qword_1EBD47BD0, &qword_1EBD47BA0);
    sub_1BD4CD3A0(&qword_1EBD47BD8, _s11DetailSheetOMa);
    sub_1BD4CD3E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C58);
  }

  return result;
}

unint64_t sub_1BD4CDAA8()
{
  result = qword_1EBD47C60;
  if (!qword_1EBD47C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C60);
  }

  return result;
}

unint64_t sub_1BD4CDB04()
{
  result = qword_1EBD47C70;
  if (!qword_1EBD47C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA8);
    sub_1BD4CD938();
    sub_1BD4CDAA8();
    sub_1BD459428();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C70);
  }

  return result;
}

unint64_t sub_1BD4CDC28()
{
  result = qword_1EBD47C78;
  if (!qword_1EBD47C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C78);
  }

  return result;
}

unint64_t sub_1BD4CDC7C()
{
  result = qword_1EBD47C80;
  if (!qword_1EBD47C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C80);
  }

  return result;
}

void sub_1BD4CDCD0(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD4BFBFC(a1, v4);
}

unint64_t sub_1BD4CDD40()
{
  result = qword_1EBD47CF8;
  if (!qword_1EBD47CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CD8);
    sub_1BD462198();
    sub_1BD4CDDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47CF8);
  }

  return result;
}

unint64_t sub_1BD4CDDCC()
{
  result = qword_1EBD47D00;
  if (!qword_1EBD47D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CC8);
    sub_1BD462198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D00);
  }

  return result;
}

uint64_t sub_1BD4CDE64(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for PaymentPassMethodSheet(0);

  return sub_1BD4C7FB4(a1, a2, a3);
}

uint64_t sub_1BD4CDEF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD4CDF70()
{
  result = qword_1EBD47D30;
  if (!qword_1EBD47D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D38);
    sub_1BD4CDFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D30);
  }

  return result;
}

unint64_t sub_1BD4CDFF4()
{
  result = qword_1EBD47D40;
  if (!qword_1EBD47D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D48);
    sub_1BD4CE078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D40);
  }

  return result;
}

unint64_t sub_1BD4CE078()
{
  result = qword_1EBD47D50;
  if (!qword_1EBD47D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D58);
    sub_1BD0DE4F4(&qword_1EBD47D60, &qword_1EBD47D68);
    sub_1BD4CD3A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D50);
  }

  return result;
}

void sub_1BD4CE19C(char a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD4C84F0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1BD4CE248@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4C0E00(a1, v6, a2);
}

uint64_t sub_1BD4CE2C8()
{
  v1 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD4C11B4(v0 + v2, v3);
}

uint64_t sub_1BD4CE3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    sub_1BE048C84();
    v8 = a5;
    v9 = a6;

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD4CE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
  }

  return result;
}

void sub_1BD4CE490(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

double sub_1BD4CE4B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD4C74B4(a1, v2 + v6, v9, a2);
}

unint64_t sub_1BD4CE5A4()
{
  result = qword_1EBD47E08;
  if (!qword_1EBD47E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47DF8);
    sub_1BD4CD3A0(&qword_1EBD397D8, type metadata accessor for PassRow);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E08);
  }

  return result;
}

uint64_t sub_1BD4CE68C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD4CE73C()
{
  result = qword_1EBD47E58;
  if (!qword_1EBD47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E58);
  }

  return result;
}

uint64_t sub_1BD4CE814(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BD4CE8A8()
{
  result = qword_1EBD47E90;
  if (!qword_1EBD47E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47E88);
    sub_1BD0DE4F4(&qword_1EBD47E98, &qword_1EBD47EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E90);
  }

  return result;
}

uint64_t sub_1BD4CE958(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BD4CE9A8()
{
  type metadata accessor for PaymentPassMethodSheet(0);

  return sub_1BD4C64F0();
}

unint64_t sub_1BD4CEA3C()
{
  result = qword_1EBD47F08;
  if (!qword_1EBD47F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47EE8);
    sub_1BD4CE68C(&qword_1EBD47F10, &qword_1EBD47EF8, &unk_1BE0DB1C0, sub_1BD4CEB24);
    sub_1BD4CD3A0(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F08);
  }

  return result;
}

unint64_t sub_1BD4CEB24()
{
  result = qword_1EBD47F18;
  if (!qword_1EBD47F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F20);
    sub_1BD0DE4F4(&qword_1EBD47F28, &qword_1EBD47F30);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F18);
  }

  return result;
}

double sub_1BD4CEC08@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AvailablePass(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD4C565C(a1, v2 + v6, v9, a2);
}

unint64_t sub_1BD4CECEC()
{
  result = qword_1EBD47F48;
  if (!qword_1EBD47F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F40);
    sub_1BD0DE4F4(&qword_1EBD47F50, &qword_1EBD47F58);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F48);
  }

  return result;
}

void sub_1BD4CEDD0()
{
  v1 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AvailablePass(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_1BD4C2D30(v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1BD4CEEBC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = sub_1BD4C290C(*(v1 + 32), v5);
  *a1 = v5;
  *(a1 + 8) = 1;
  *(a1 + 9) = v3 & 1;

  return v5;
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v291 = *(*(v1 - 1) + 80);
  v289 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v290 = (v291 + 16) & ~v291;
  v294 = v0;
  v6 = v0 + v290;
  v7 = (v0 + v290 + v1[6]);
  v295 = v5;
  v292 = v4;
  if (!v4(v7, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = v7 + v2[6];
    v12 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 20);
      v14 = sub_1BE04DA84();
      (*(*(v14 - 8) + 8))(&v11[v13], v14);
    }

    v15 = (v7 + v2[7]);
    v16 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 28);
      v18 = sub_1BE04AF64();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v15 + v17, 1, v18))
      {
        (*(v19 + 8))(v15 + v17, v18);
      }
    }

    v20 = v7 + v2[10];
    v21 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      if (*(v20 + 2) != 1)
      {
      }

      if (*(v20 + 9) != 1)
      {
      }

      v22 = *(v21 + 28);
      v23 = sub_1BE04AF64();
      v285 = *(v23 - 8);
      v24 = *(v285 + 48);
      if (!v24(&v20[v22], 1, v23))
      {
        (*(v285 + 8))(&v20[v22], v23);
      }

      v25 = *(v21 + 32);
      v26 = v24(&v20[v25], 1, v23);
      v5 = v295;
      v4 = v292;
      if (!v26)
      {
        (*(v285 + 8))(&v20[v25], v23);
      }
    }

    v27 = (v7 + v2[12]);
    if (*v27)
    {
    }

    v28 = (v7 + v2[13]);
    if (*v28)
    {
    }
  }

  v29 = type metadata accessor for Passes(0);

  v30 = v6 + v1[7];
  if (*(v30 + 48))
  {
    sub_1BD0D455C(*v30, *(v30 + 8), *(v30 + 16));
  }

  v31 = (v6 + v1[8]);
  v32 = type metadata accessor for PeerPaymentModel();
  v33 = *(*(v32 - 8) + 48);
  if (!v33(v31, 1, v32))
  {

    v34 = (v31 + *(v32 + 20));
    type metadata accessor for WrappedPass(0);
    v35 = swift_getEnumCaseMultiPayload();
    v279 = v29;
    v269 = v33;
    if (v35 == 2)
    {

      v36 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v37 = sub_1BE04CF34();
      (*(*(v37 - 8) + 8))(v34 + v36, v37);
    }

    else if (v35 <= 1)
    {
    }

    v276 = v32;
    v38 = v34 + v2[6];
    v39 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
    {

      v40 = *(v39 + 20);
      v41 = sub_1BE04DA84();
      (*(*(v41 - 8) + 8))(&v38[v40], v41);
    }

    v42 = (v34 + v2[7]);
    v43 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {

      v44 = *(v43 + 28);
      v45 = sub_1BE04AF64();
      v46 = *(v45 - 8);
      if (!(*(v46 + 48))(v42 + v44, 1, v45))
      {
        (*(v46 + 8))(v42 + v44, v45);
      }
    }

    v47 = v34 + v2[10];
    v48 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {
      if (*(v47 + 2) != 1)
      {
      }

      v274 = v2;
      if (*(v47 + 9) != 1)
      {
      }

      v49 = *(v48 + 28);
      v50 = sub_1BE04AF64();
      v272 = *(v50 - 8);
      v51 = *(v272 + 48);
      if (!v51(&v47[v49], 1, v50))
      {
        (*(v272 + 8))(&v47[v49], v50);
      }

      v52 = *(v48 + 32);
      v2 = v274;
      if (!v51(&v47[v52], 1, v50))
      {
        (*(v272 + 8))(&v47[v52], v50);
      }
    }

    v53 = (v34 + v2[12]);
    v32 = v276;
    v29 = v279;
    if (*v53)
    {
    }

    v54 = (v34 + v2[13]);
    v5 = v295;
    v4 = v292;
    if (*v54)
    {
    }

    v55 = (v31 + *(v276 + 24));
    if (*v55 != 1)
    {

      if (v55[3])
      {
      }
    }

    v33 = v269;
  }

  v56 = v6 + v1[9];
  v57 = _s14PaymentSummaryVMa();
  if (!(*(*(v57 - 1) + 48))(v56, 1, v57))
  {

    v268 = _s11TotalAmountVMa(0);
    v58 = v56 + v268[10];
    _s22SummaryItemPricingTypeOMa(0);
    v59 = swift_getEnumCaseMultiPayload();
    v273 = v56;
    switch(v59)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1BE04AF64();
        (*(*(v66 - 8) + 8))(v58, v66);
        break;
      case 0:
        v270 = v33;
        v277 = v32;
        v265 = v57;
        v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v61 = *(v60 + 24);
        v62 = sub_1BE04AF64();
        v63 = *(v62 - 8);
        v64 = *(v63 + 48);
        if (!v64(v58 + v61, 1, v62))
        {
          (*(v63 + 8))(v58 + v61, v62);
        }

        v65 = *(v60 + 28);
        if (!v64(v58 + v65, 1, v62))
        {
          (*(v63 + 8))(v58 + v65, v62);
        }

        v4 = v292;
        v32 = v277;
        v57 = v265;
        v33 = v270;
        break;
    }

    v275 = v2;
    v67 = v4;
    v68 = v268;
    v69 = v273;

    v70 = (v273 + v268[15]);
    v71 = v33(v70, 1, v32);
    v72 = v295;
    if (!v71)
    {
      v280 = v29;

      v286 = v70;
      v73 = (v70 + *(v32 + 20));
      type metadata accessor for WrappedPass(0);
      v74 = swift_getEnumCaseMultiPayload();
      v266 = v57;
      if (v74 == 2)
      {

        v76 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v77 = sub_1BE04CF34();
        (*(*(v77 - 8) + 8))(v73 + v76, v77);
        v75 = v275;
      }

      else
      {
        v75 = v275;
        if (v74 <= 1)
        {
        }
      }

      v278 = v32;
      v78 = v73 + v75[6];
      v79 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
      {

        v80 = *(v79 + 20);
        v81 = sub_1BE04DA84();
        (*(*(v81 - 8) + 8))(&v78[v80], v81);
      }

      v82 = (v73 + v75[7]);
      v83 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
      {

        v84 = *(v83 + 28);
        v85 = sub_1BE04AF64();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v82 + v84, 1, v85))
        {
          (*(v86 + 8))(v82 + v84, v85);
        }
      }

      v87 = v73 + v75[10];
      v88 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        if (*(v87 + 2) != 1)
        {
        }

        if (*(v87 + 9) != 1)
        {
        }

        v89 = *(v88 + 28);
        v90 = sub_1BE04AF64();
        v271 = *(v90 - 8);
        v91 = *(v271 + 48);
        if (!v91(&v87[v89], 1, v90))
        {
          (*(v271 + 8))(&v87[v89], v90);
        }

        v92 = *(v88 + 32);
        if (!v91(&v87[v92], 1, v90))
        {
          (*(v271 + 8))(&v87[v92], v90);
        }
      }

      v93 = (v73 + v75[12]);
      if (*v93)
      {
      }

      v94 = (v73 + v75[13]);
      v57 = v266;
      if (*v94)
      {
      }

      v29 = v280;
      v95 = v286;
      v96 = (v286 + *(v278 + 24));
      if (*v96 != 1)
      {

        if (v96[3])
        {
        }

        v95 = v286;
      }

      v67 = v292;
      v72 = v295;

      v68 = v268;
      v69 = v273;
    }

    v97 = (v69 + v68[16]);
    v5 = v72;
    v4 = v67;
    v2 = v275;
    if (!(*(*(v29 - 8) + 48))(v97, 1, v29))
    {
      if (!v4(v97, 1, v275))
      {
        type metadata accessor for WrappedPass(0);
        v98 = swift_getEnumCaseMultiPayload();
        v281 = v29;
        if (v98 == 2)
        {

          v99 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v100 = sub_1BE04CF34();
          (*(*(v100 - 8) + 8))(v97 + v99, v100);
        }

        else if (v98 <= 1)
        {
        }

        v101 = v97 + v275[6];
        v102 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {

          v103 = *(v102 + 20);
          v104 = sub_1BE04DA84();
          (*(*(v104 - 8) + 8))(&v101[v103], v104);
        }

        v267 = v57;
        v105 = (v97 + v275[7]);
        v106 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {

          v107 = *(v106 + 28);
          v108 = sub_1BE04AF64();
          v109 = *(v108 - 8);
          if (!(*(v109 + 48))(v105 + v107, 1, v108))
          {
            (*(v109 + 8))(v105 + v107, v108);
          }
        }

        v110 = v97 + v275[10];
        v111 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
        {
          if (*(v110 + 2) != 1)
          {
          }

          if (*(v110 + 9) != 1)
          {
          }

          v112 = *(v111 + 28);
          v113 = sub_1BE04AF64();
          v287 = *(v113 - 8);
          v114 = *(v287 + 48);
          if (!v114(&v110[v112], 1, v113))
          {
            (*(v287 + 8))(&v110[v112], v113);
          }

          v115 = *(v111 + 32);
          if (!v114(&v110[v115], 1, v113))
          {
            (*(v287 + 8))(&v110[v115], v113);
          }
        }

        v116 = (v97 + v275[12]);
        v29 = v281;
        if (*v116)
        {
        }

        v117 = (v97 + v275[13]);
        v5 = v295;
        v4 = v292;
        v57 = v267;
        if (*v117)
        {
        }
      }

      v69 = v273;
    }

    if (*(v69 + v57[7] + 8))
    {
    }

    v118 = v69 + v57[9];
    if (*(v118 + 8))
    {
    }

    v119 = v69 + v57[10];
    if (*(v119 + 8))
    {
    }

    v120 = v69 + v57[11];
    v121 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v121 - 1) + 48))(v120, 1, v121))
    {

      v122 = v121[7];
      v123 = sub_1BE04AF64();
      v124 = *(v123 - 8);
      if (!(*(v124 + 48))(v120 + v122, 1, v123))
      {
        (*(v124 + 8))(v120 + v122, v123);
      }

      v125 = v121[8];
      v126 = sub_1BE04B3B4();
      v127 = *(v126 - 8);
      if (!(*(v127 + 48))(v120 + v125, 1, v126))
      {
        (*(v127 + 8))(v120 + v125, v126);
      }

      v4 = v292;
      v5 = v295;
    }
  }

  if (*(v6 + v1[24]))
  {
  }

  v128 = v6 + v1[27];
  if (*(v128 + 8))
  {
  }

  v129 = (v6 + v1[30]);
  if (!v4(v129, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 == 2)
    {

      v131 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v132 = sub_1BE04CF34();
      (*(*(v132 - 8) + 8))(v129 + v131, v132);
    }

    else if (v130 <= 1)
    {
    }

    v133 = v129 + v2[6];
    v134 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v134 - 8) + 48))(v133, 1, v134))
    {

      v135 = *(v134 + 20);
      v136 = sub_1BE04DA84();
      (*(*(v136 - 8) + 8))(&v133[v135], v136);
    }

    v137 = (v129 + v2[7]);
    v138 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
    {

      v139 = *(v138 + 28);
      v140 = sub_1BE04AF64();
      v141 = *(v140 - 8);
      if (!(*(v141 + 48))(v137 + v139, 1, v140))
      {
        (*(v141 + 8))(v137 + v139, v140);
      }
    }

    v142 = v129 + v2[10];
    v143 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v143 - 8) + 48))(v142, 1, v143))
    {
      if (*(v142 + 2) != 1)
      {
      }

      if (*(v142 + 9) != 1)
      {
      }

      v144 = *(v143 + 28);
      v145 = sub_1BE04AF64();
      v288 = *(v145 - 8);
      v146 = *(v288 + 48);
      if (!v146(&v142[v144], 1, v145))
      {
        (*(v288 + 8))(&v142[v144], v145);
      }

      v147 = *(v143 + 32);
      v148 = v146(&v142[v147], 1, v145);
      v5 = v295;
      v4 = v292;
      if (!v148)
      {
        (*(v288 + 8))(&v142[v147], v145);
      }
    }

    v149 = (v129 + v2[12]);
    if (*v149)
    {
    }

    v150 = (v129 + v2[13]);
    if (*v150)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v151 = (v6 + v1[32]);
  v152 = _s11DetailSheetOMa();
  if (!(*(*(v152 - 8) + 48))(v151, 1, v152))
  {
    v153 = swift_getEnumCaseMultiPayload();
    if (v153 <= 1)
    {
      if (!v153)
      {
        if (!v4(v151, 1, v2))
        {
          type metadata accessor for WrappedPass(0);
          v157 = swift_getEnumCaseMultiPayload();
          if (v157 == 2)
          {

            v196 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v197 = sub_1BE04CF34();
            (*(*(v197 - 8) + 8))(v151 + v196, v197);
          }

          else if (v157 <= 1)
          {
          }

          v198 = v151 + v2[6];
          v199 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v199 - 8) + 48))(v198, 1, v199))
          {

            v200 = *(v199 + 20);
            v201 = sub_1BE04DA84();
            (*(*(v201 - 8) + 8))(&v198[v200], v201);
          }

          v202 = (v151 + v2[7]);
          v203 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 28);
            v205 = sub_1BE04AF64();
            v206 = *(v205 - 8);
            if (!(*(v206 + 48))(v202 + v204, 1, v205))
            {
              (*(v206 + 8))(v202 + v204, v205);
            }
          }

          v207 = v151 + v2[10];
          v208 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v208 - 8) + 48))(v207, 1, v208))
          {
            if (*(v207 + 2) != 1)
            {
            }

            if (*(v207 + 9) != 1)
            {
            }

            v209 = *(v208 + 28);
            v210 = sub_1BE04AF64();
            v284 = *(v210 - 8);
            v211 = *(v284 + 48);
            if (!v211(&v207[v209], 1, v210))
            {
              (*(v284 + 8))(&v207[v209], v210);
            }

            v212 = *(v208 + 32);
            v5 = v295;
            v4 = v292;
            if (!v211(&v207[v212], 1, v210))
            {
              (*(v284 + 8))(&v207[v212], v210);
            }
          }

          v213 = (v151 + v2[12]);
          if (*v213)
          {
          }

          v214 = (v151 + v2[13]);
          if (*v214)
          {
          }
        }

        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v216 = v151 + *(v215 + 64);

        v155 = *(v216 + 4);
        goto LABEL_240;
      }

      if (v153 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v155 = *v151;
LABEL_240:

      goto LABEL_241;
    }

    if (v153 != 2)
    {
      if (v153 != 3)
      {
        if (v153 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v154 = swift_getEnumCaseMultiPayload();
        if (v154 == 2)
        {

          v177 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v178 = sub_1BE04CF34();
          (*(*(v178 - 8) + 8))(v151 + v177, v178);
        }

        else if (v154 <= 1)
        {
        }

        v179 = v151 + v2[6];
        v180 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v180 - 8) + 48))(v179, 1, v180))
        {

          v181 = *(v180 + 20);
          v182 = sub_1BE04DA84();
          (*(*(v182 - 8) + 8))(&v179[v181], v182);
        }

        v183 = (v151 + v2[7]);
        v184 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v184 - 8) + 48))(v183, 1, v184))
        {

          v185 = *(v184 + 28);
          v186 = sub_1BE04AF64();
          v187 = *(v186 - 8);
          if (!(*(v187 + 48))(v183 + v185, 1, v186))
          {
            (*(v187 + 8))(v183 + v185, v186);
          }
        }

        v188 = v151 + v2[10];
        v189 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v189 - 8) + 48))(v188, 1, v189))
        {
          if (*(v188 + 2) != 1)
          {
          }

          if (*(v188 + 9) != 1)
          {
          }

          v190 = *(v189 + 28);
          v191 = sub_1BE04AF64();
          v283 = *(v191 - 8);
          v192 = *(v283 + 48);
          if (!v192(&v188[v190], 1, v191))
          {
            (*(v283 + 8))(&v188[v190], v191);
          }

          v193 = *(v189 + 32);
          v5 = v295;
          v4 = v292;
          if (!v192(&v188[v193], 1, v191))
          {
            (*(v283 + 8))(&v188[v193], v191);
          }
        }

        v194 = (v151 + v2[12]);
        if (*v194)
        {
        }

        v195 = (v151 + v2[13]);
        if (*v195)
        {
        }

        v155 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v156 = swift_getEnumCaseMultiPayload();
    if (v156 == 2)
    {

      v158 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v159 = sub_1BE04CF34();
      (*(*(v159 - 8) + 8))(v151 + v158, v159);
    }

    else if (v156 <= 1)
    {
    }

    v160 = v151 + v2[6];
    v161 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v161 - 8) + 48))(v160, 1, v161))
    {

      v162 = *(v161 + 20);
      v163 = sub_1BE04DA84();
      (*(*(v163 - 8) + 8))(&v160[v162], v163);
    }

    v164 = (v151 + v2[7]);
    v165 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v165 - 8) + 48))(v164, 1, v165))
    {

      v166 = *(v165 + 28);
      v167 = sub_1BE04AF64();
      v168 = *(v167 - 8);
      if (!(*(v168 + 48))(v164 + v166, 1, v167))
      {
        (*(v168 + 8))(v164 + v166, v167);
      }
    }

    v169 = v151 + v2[10];
    v170 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v170 - 8) + 48))(v169, 1, v170))
    {
      if (*(v169 + 2) != 1)
      {
      }

      if (*(v169 + 9) != 1)
      {
      }

      v171 = *(v170 + 28);
      v172 = sub_1BE04AF64();
      v282 = *(v172 - 8);
      v173 = *(v282 + 48);
      if (!v173(&v169[v171], 1, v172))
      {
        (*(v282 + 8))(&v169[v171], v172);
      }

      v174 = *(v170 + 32);
      v5 = v295;
      v4 = v292;
      if (!v173(&v169[v174], 1, v172))
      {
        (*(v282 + 8))(&v169[v174], v172);
      }
    }

    v175 = (v151 + v2[12]);
    if (*v175)
    {
    }

    v176 = (v151 + v2[13]);
    if (*v176)
    {
    }
  }

LABEL_241:
  v217 = v290 + v289;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v6 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + v1[34]);
  }

  v218 = v217 + v5;

  v219 = (v6 + v1[35]);
  if (!v4(v219, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v220 = swift_getEnumCaseMultiPayload();
    v293 = v217 + v5;
    if (v220 == 2)
    {

      v221 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v222 = sub_1BE04CF34();
      (*(*(v222 - 8) + 8))(v219 + v221, v222);
    }

    else if (v220 <= 1)
    {
    }

    v223 = v219 + v2[6];
    v224 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {

      v225 = *(v224 + 20);
      v226 = sub_1BE04DA84();
      (*(*(v226 - 8) + 8))(&v223[v225], v226);
    }

    v227 = (v219 + v2[7]);
    v228 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v228 - 8) + 48))(v227, 1, v228))
    {

      v229 = *(v228 + 28);
      v230 = sub_1BE04AF64();
      v231 = *(v230 - 8);
      if (!(*(v231 + 48))(v227 + v229, 1, v230))
      {
        (*(v231 + 8))(v227 + v229, v230);
      }
    }

    v232 = v219 + v2[10];
    v233 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v233 - 8) + 48))(v232, 1, v233))
    {
      if (*(v232 + 2) != 1)
      {
      }

      if (*(v232 + 9) != 1)
      {
      }

      v234 = *(v233 + 28);
      v235 = sub_1BE04AF64();
      v296 = *(v235 - 8);
      v236 = *(v296 + 48);
      if (!v236(&v232[v234], 1, v235))
      {
        (*(v296 + 8))(&v232[v234], v235);
      }

      v237 = *(v233 + 32);
      v5 = v295;
      if (!v236(&v232[v237], 1, v235))
      {
        (*(v296 + 8))(&v232[v237], v235);
      }
    }

    v238 = (v219 + v2[12]);
    if (*v238)
    {
    }

    v239 = (v219 + v2[13]);
    v218 = v293;
    if (*v239)
    {
    }
  }

  v240 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v241 = sub_1BE04C884();
    (*(*(v241 - 8) + 8))(v6 + v240, v241);
  }

  else
  {
  }

  v242 = (v294 + (v218 & ~v5));
  type metadata accessor for WrappedPass(0);
  v243 = swift_getEnumCaseMultiPayload();
  if (v243 == 2)
  {

    v244 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v245 = sub_1BE04CF34();
    (*(*(v245 - 8) + 8))(v242 + v244, v245);
  }

  else if (v243 <= 1)
  {
  }

  v246 = v242 + v2[6];
  v247 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v247 - 8) + 48))(v246, 1, v247))
  {

    v248 = *(v247 + 20);
    v249 = sub_1BE04DA84();
    (*(*(v249 - 8) + 8))(&v246[v248], v249);
  }

  v250 = (v242 + v2[7]);
  v251 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v251 - 8) + 48))(v250, 1, v251))
  {

    v252 = *(v251 + 28);
    v253 = sub_1BE04AF64();
    v254 = *(v253 - 8);
    if (!(*(v254 + 48))(v250 + v252, 1, v253))
    {
      (*(v254 + 8))(v250 + v252, v253);
    }
  }

  v255 = v242 + v2[10];
  v256 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v256 - 8) + 48))(v255, 1, v256))
  {
    if (*(v255 + 2) != 1)
    {
    }

    if (*(v255 + 9) != 1)
    {
    }

    v257 = *(v256 + 28);
    v258 = sub_1BE04AF64();
    v259 = *(v258 - 8);
    v260 = *(v259 + 48);
    if (!v260(&v255[v257], 1, v258))
    {
      (*(v259 + 8))(&v255[v257], v258);
    }

    v261 = *(v256 + 32);
    if (!v260(&v255[v261], 1, v258))
    {
      (*(v259 + 8))(&v255[v261], v258);
    }
  }

  v262 = (v242 + v2[12]);
  if (*v262)
  {
  }

  v263 = (v242 + v2[13]);
  if (*v263)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_81Tm_0()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v294 = *(*(v1 - 1) + 80);
  v291 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v292 = (v294 + 16) & ~v294;
  v293 = *(v3 + 64);
  v297 = v0;
  v6 = v0 + v292;
  v7 = (v0 + v292 + v1[6]);
  v298 = v5;
  v295 = v4;
  if (!v4(v7, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = v7 + v2[6];
    v12 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 20);
      v14 = sub_1BE04DA84();
      (*(*(v14 - 8) + 8))(&v11[v13], v14);
    }

    v15 = (v7 + v2[7]);
    v16 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {

      v17 = *(v16 + 28);
      v18 = sub_1BE04AF64();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v15 + v17, 1, v18))
      {
        (*(v19 + 8))(v15 + v17, v18);
      }
    }

    v20 = v7 + v2[10];
    v21 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      if (*(v20 + 2) != 1)
      {
      }

      if (*(v20 + 9) != 1)
      {
      }

      v22 = *(v21 + 28);
      v23 = sub_1BE04AF64();
      v287 = *(v23 - 8);
      v24 = *(v287 + 48);
      if (!v24(&v20[v22], 1, v23))
      {
        (*(v287 + 8))(&v20[v22], v23);
      }

      v25 = *(v21 + 32);
      v26 = v24(&v20[v25], 1, v23);
      v5 = v298;
      v4 = v295;
      if (!v26)
      {
        (*(v287 + 8))(&v20[v25], v23);
      }
    }

    v27 = (v7 + v2[12]);
    if (*v27)
    {
    }

    v28 = (v7 + v2[13]);
    if (*v28)
    {
    }
  }

  v29 = type metadata accessor for Passes(0);

  v30 = v6 + v1[7];
  if (*(v30 + 48))
  {
    sub_1BD0D455C(*v30, *(v30 + 8), *(v30 + 16));
  }

  v31 = (v6 + v1[8]);
  v32 = type metadata accessor for PeerPaymentModel();
  v33 = *(*(v32 - 8) + 48);
  if (!v33(v31, 1, v32))
  {

    v34 = (v31 + *(v32 + 20));
    type metadata accessor for WrappedPass(0);
    v35 = swift_getEnumCaseMultiPayload();
    v281 = v29;
    v271 = v33;
    if (v35 == 2)
    {

      v36 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v37 = sub_1BE04CF34();
      (*(*(v37 - 8) + 8))(v34 + v36, v37);
    }

    else if (v35 <= 1)
    {
    }

    v278 = v32;
    v38 = v34 + v2[6];
    v39 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
    {

      v40 = *(v39 + 20);
      v41 = sub_1BE04DA84();
      (*(*(v41 - 8) + 8))(&v38[v40], v41);
    }

    v42 = (v34 + v2[7]);
    v43 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {

      v44 = *(v43 + 28);
      v45 = sub_1BE04AF64();
      v46 = *(v45 - 8);
      if (!(*(v46 + 48))(v42 + v44, 1, v45))
      {
        (*(v46 + 8))(v42 + v44, v45);
      }
    }

    v47 = v34 + v2[10];
    v48 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {
      if (*(v47 + 2) != 1)
      {
      }

      v276 = v2;
      if (*(v47 + 9) != 1)
      {
      }

      v49 = *(v48 + 28);
      v50 = sub_1BE04AF64();
      v274 = *(v50 - 8);
      v51 = *(v274 + 48);
      if (!v51(&v47[v49], 1, v50))
      {
        (*(v274 + 8))(&v47[v49], v50);
      }

      v52 = *(v48 + 32);
      v2 = v276;
      if (!v51(&v47[v52], 1, v50))
      {
        (*(v274 + 8))(&v47[v52], v50);
      }
    }

    v53 = (v34 + v2[12]);
    v32 = v278;
    v29 = v281;
    if (*v53)
    {
    }

    v54 = (v34 + v2[13]);
    v5 = v298;
    v4 = v295;
    if (*v54)
    {
    }

    v55 = (v31 + *(v278 + 24));
    if (*v55 != 1)
    {

      if (v55[3])
      {
      }
    }

    v33 = v271;
  }

  v56 = v6 + v1[9];
  v57 = _s14PaymentSummaryVMa();
  if (!(*(*(v57 - 1) + 48))(v56, 1, v57))
  {

    v270 = _s11TotalAmountVMa(0);
    v58 = v56 + v270[10];
    _s22SummaryItemPricingTypeOMa(0);
    v59 = swift_getEnumCaseMultiPayload();
    v275 = v56;
    switch(v59)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1BE04AF64();
        (*(*(v66 - 8) + 8))(v58, v66);
        break;
      case 0:
        v272 = v33;
        v279 = v32;
        v267 = v57;
        v60 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v61 = *(v60 + 24);
        v62 = sub_1BE04AF64();
        v63 = *(v62 - 8);
        v64 = *(v63 + 48);
        if (!v64(v58 + v61, 1, v62))
        {
          (*(v63 + 8))(v58 + v61, v62);
        }

        v65 = *(v60 + 28);
        if (!v64(v58 + v65, 1, v62))
        {
          (*(v63 + 8))(v58 + v65, v62);
        }

        v4 = v295;
        v32 = v279;
        v57 = v267;
        v33 = v272;
        break;
    }

    v277 = v2;
    v67 = v4;
    v68 = v270;
    v69 = v275;

    v70 = (v275 + v270[15]);
    v71 = v33(v70, 1, v32);
    v72 = v298;
    if (!v71)
    {
      v282 = v29;

      v288 = v70;
      v73 = (v70 + *(v32 + 20));
      type metadata accessor for WrappedPass(0);
      v74 = swift_getEnumCaseMultiPayload();
      v268 = v57;
      if (v74 == 2)
      {

        v76 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v77 = sub_1BE04CF34();
        (*(*(v77 - 8) + 8))(v73 + v76, v77);
        v75 = v277;
      }

      else
      {
        v75 = v277;
        if (v74 <= 1)
        {
        }
      }

      v280 = v32;
      v78 = v73 + v75[6];
      v79 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v79 - 8) + 48))(v78, 1, v79))
      {

        v80 = *(v79 + 20);
        v81 = sub_1BE04DA84();
        (*(*(v81 - 8) + 8))(&v78[v80], v81);
      }

      v82 = (v73 + v75[7]);
      v83 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
      {

        v84 = *(v83 + 28);
        v85 = sub_1BE04AF64();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v82 + v84, 1, v85))
        {
          (*(v86 + 8))(v82 + v84, v85);
        }
      }

      v87 = v73 + v75[10];
      v88 = type metadata accessor for PassEligibleRewardsInfo();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        if (*(v87 + 2) != 1)
        {
        }

        if (*(v87 + 9) != 1)
        {
        }

        v89 = *(v88 + 28);
        v90 = sub_1BE04AF64();
        v273 = *(v90 - 8);
        v91 = *(v273 + 48);
        if (!v91(&v87[v89], 1, v90))
        {
          (*(v273 + 8))(&v87[v89], v90);
        }

        v92 = *(v88 + 32);
        if (!v91(&v87[v92], 1, v90))
        {
          (*(v273 + 8))(&v87[v92], v90);
        }
      }

      v93 = (v73 + v75[12]);
      if (*v93)
      {
      }

      v94 = (v73 + v75[13]);
      v57 = v268;
      if (*v94)
      {
      }

      v29 = v282;
      v95 = v288;
      v96 = (v288 + *(v280 + 24));
      if (*v96 != 1)
      {

        if (v96[3])
        {
        }

        v95 = v288;
      }

      v67 = v295;
      v72 = v298;

      v68 = v270;
      v69 = v275;
    }

    v97 = (v69 + v68[16]);
    v5 = v72;
    v4 = v67;
    v2 = v277;
    if (!(*(*(v29 - 8) + 48))(v97, 1, v29))
    {
      if (!v4(v97, 1, v277))
      {
        type metadata accessor for WrappedPass(0);
        v98 = swift_getEnumCaseMultiPayload();
        v283 = v29;
        if (v98 == 2)
        {

          v99 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v100 = sub_1BE04CF34();
          (*(*(v100 - 8) + 8))(v97 + v99, v100);
        }

        else if (v98 <= 1)
        {
        }

        v101 = v97 + v277[6];
        v102 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {

          v103 = *(v102 + 20);
          v104 = sub_1BE04DA84();
          (*(*(v104 - 8) + 8))(&v101[v103], v104);
        }

        v269 = v57;
        v105 = (v97 + v277[7]);
        v106 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {

          v107 = *(v106 + 28);
          v108 = sub_1BE04AF64();
          v109 = *(v108 - 8);
          if (!(*(v109 + 48))(v105 + v107, 1, v108))
          {
            (*(v109 + 8))(v105 + v107, v108);
          }
        }

        v110 = v97 + v277[10];
        v111 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v111 - 8) + 48))(v110, 1, v111))
        {
          if (*(v110 + 2) != 1)
          {
          }

          if (*(v110 + 9) != 1)
          {
          }

          v112 = *(v111 + 28);
          v113 = sub_1BE04AF64();
          v289 = *(v113 - 8);
          v114 = *(v289 + 48);
          if (!v114(&v110[v112], 1, v113))
          {
            (*(v289 + 8))(&v110[v112], v113);
          }

          v115 = *(v111 + 32);
          if (!v114(&v110[v115], 1, v113))
          {
            (*(v289 + 8))(&v110[v115], v113);
          }
        }

        v116 = (v97 + v277[12]);
        v29 = v283;
        if (*v116)
        {
        }

        v117 = (v97 + v277[13]);
        v5 = v298;
        v4 = v295;
        v57 = v269;
        if (*v117)
        {
        }
      }

      v69 = v275;
    }

    if (*(v69 + v57[7] + 8))
    {
    }

    v118 = v69 + v57[9];
    if (*(v118 + 8))
    {
    }

    v119 = v69 + v57[10];
    if (*(v119 + 8))
    {
    }

    v120 = v69 + v57[11];
    v121 = type metadata accessor for DeferredPaymentRequest();
    if (!(*(*(v121 - 1) + 48))(v120, 1, v121))
    {

      v122 = v121[7];
      v123 = sub_1BE04AF64();
      v124 = *(v123 - 8);
      if (!(*(v124 + 48))(v120 + v122, 1, v123))
      {
        (*(v124 + 8))(v120 + v122, v123);
      }

      v125 = v121[8];
      v126 = sub_1BE04B3B4();
      v127 = *(v126 - 8);
      if (!(*(v127 + 48))(v120 + v125, 1, v126))
      {
        (*(v127 + 8))(v120 + v125, v126);
      }

      v4 = v295;
      v5 = v298;
    }
  }

  if (*(v6 + v1[24]))
  {
  }

  v128 = v6 + v1[27];
  if (*(v128 + 8))
  {
  }

  v129 = (v6 + v1[30]);
  if (!v4(v129, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v130 = swift_getEnumCaseMultiPayload();
    if (v130 == 2)
    {

      v131 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v132 = sub_1BE04CF34();
      (*(*(v132 - 8) + 8))(v129 + v131, v132);
    }

    else if (v130 <= 1)
    {
    }

    v133 = v129 + v2[6];
    v134 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v134 - 8) + 48))(v133, 1, v134))
    {

      v135 = *(v134 + 20);
      v136 = sub_1BE04DA84();
      (*(*(v136 - 8) + 8))(&v133[v135], v136);
    }

    v137 = (v129 + v2[7]);
    v138 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
    {

      v139 = *(v138 + 28);
      v140 = sub_1BE04AF64();
      v141 = *(v140 - 8);
      if (!(*(v141 + 48))(v137 + v139, 1, v140))
      {
        (*(v141 + 8))(v137 + v139, v140);
      }
    }

    v142 = v129 + v2[10];
    v143 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v143 - 8) + 48))(v142, 1, v143))
    {
      if (*(v142 + 2) != 1)
      {
      }

      if (*(v142 + 9) != 1)
      {
      }

      v144 = *(v143 + 28);
      v145 = sub_1BE04AF64();
      v290 = *(v145 - 8);
      v146 = *(v290 + 48);
      if (!v146(&v142[v144], 1, v145))
      {
        (*(v290 + 8))(&v142[v144], v145);
      }

      v147 = *(v143 + 32);
      v148 = v146(&v142[v147], 1, v145);
      v5 = v298;
      v4 = v295;
      if (!v148)
      {
        (*(v290 + 8))(&v142[v147], v145);
      }
    }

    v149 = (v129 + v2[12]);
    if (*v149)
    {
    }

    v150 = (v129 + v2[13]);
    if (*v150)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);

  v151 = (v6 + v1[32]);
  v152 = _s11DetailSheetOMa();
  if (!(*(*(v152 - 8) + 48))(v151, 1, v152))
  {
    v153 = swift_getEnumCaseMultiPayload();
    if (v153 <= 1)
    {
      if (!v153)
      {
        if (!v4(v151, 1, v2))
        {
          type metadata accessor for WrappedPass(0);
          v157 = swift_getEnumCaseMultiPayload();
          if (v157 == 2)
          {

            v196 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v197 = sub_1BE04CF34();
            (*(*(v197 - 8) + 8))(v151 + v196, v197);
          }

          else if (v157 <= 1)
          {
          }

          v198 = v151 + v2[6];
          v199 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v199 - 8) + 48))(v198, 1, v199))
          {

            v200 = *(v199 + 20);
            v201 = sub_1BE04DA84();
            (*(*(v201 - 8) + 8))(&v198[v200], v201);
          }

          v202 = (v151 + v2[7]);
          v203 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v203 - 8) + 48))(v202, 1, v203))
          {

            v204 = *(v203 + 28);
            v205 = sub_1BE04AF64();
            v206 = *(v205 - 8);
            if (!(*(v206 + 48))(v202 + v204, 1, v205))
            {
              (*(v206 + 8))(v202 + v204, v205);
            }
          }

          v207 = v151 + v2[10];
          v208 = type metadata accessor for PassEligibleRewardsInfo();
          if (!(*(*(v208 - 8) + 48))(v207, 1, v208))
          {
            if (*(v207 + 2) != 1)
            {
            }

            if (*(v207 + 9) != 1)
            {
            }

            v209 = *(v208 + 28);
            v210 = sub_1BE04AF64();
            v286 = *(v210 - 8);
            v211 = *(v286 + 48);
            if (!v211(&v207[v209], 1, v210))
            {
              (*(v286 + 8))(&v207[v209], v210);
            }

            v212 = *(v208 + 32);
            v5 = v298;
            v4 = v295;
            if (!v211(&v207[v212], 1, v210))
            {
              (*(v286 + 8))(&v207[v212], v210);
            }
          }

          v213 = (v151 + v2[12]);
          if (*v213)
          {
          }

          v214 = (v151 + v2[13]);
          if (*v214)
          {
          }
        }

        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440);

        v216 = v151 + *(v215 + 64);

        v155 = *(v216 + 4);
        goto LABEL_240;
      }

      if (v153 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v155 = *v151;
LABEL_240:

      goto LABEL_241;
    }

    if (v153 != 2)
    {
      if (v153 != 3)
      {
        if (v153 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v154 = swift_getEnumCaseMultiPayload();
        if (v154 == 2)
        {

          v177 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v178 = sub_1BE04CF34();
          (*(*(v178 - 8) + 8))(v151 + v177, v178);
        }

        else if (v154 <= 1)
        {
        }

        v179 = v151 + v2[6];
        v180 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v180 - 8) + 48))(v179, 1, v180))
        {

          v181 = *(v180 + 20);
          v182 = sub_1BE04DA84();
          (*(*(v182 - 8) + 8))(&v179[v181], v182);
        }

        v183 = (v151 + v2[7]);
        v184 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v184 - 8) + 48))(v183, 1, v184))
        {

          v185 = *(v184 + 28);
          v186 = sub_1BE04AF64();
          v187 = *(v186 - 8);
          if (!(*(v187 + 48))(v183 + v185, 1, v186))
          {
            (*(v187 + 8))(v183 + v185, v186);
          }
        }

        v188 = v151 + v2[10];
        v189 = type metadata accessor for PassEligibleRewardsInfo();
        if (!(*(*(v189 - 8) + 48))(v188, 1, v189))
        {
          if (*(v188 + 2) != 1)
          {
          }

          if (*(v188 + 9) != 1)
          {
          }

          v190 = *(v189 + 28);
          v191 = sub_1BE04AF64();
          v285 = *(v191 - 8);
          v192 = *(v285 + 48);
          if (!v192(&v188[v190], 1, v191))
          {
            (*(v285 + 8))(&v188[v190], v191);
          }

          v193 = *(v189 + 32);
          v5 = v298;
          v4 = v295;
          if (!v192(&v188[v193], 1, v191))
          {
            (*(v285 + 8))(&v188[v193], v191);
          }
        }

        v194 = (v151 + v2[12]);
        if (*v194)
        {
        }

        v195 = (v151 + v2[13]);
        if (*v195)
        {
        }

        v155 = *(v151 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v156 = swift_getEnumCaseMultiPayload();
    if (v156 == 2)
    {

      v158 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v159 = sub_1BE04CF34();
      (*(*(v159 - 8) + 8))(v151 + v158, v159);
    }

    else if (v156 <= 1)
    {
    }

    v160 = v151 + v2[6];
    v161 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v161 - 8) + 48))(v160, 1, v161))
    {

      v162 = *(v161 + 20);
      v163 = sub_1BE04DA84();
      (*(*(v163 - 8) + 8))(&v160[v162], v163);
    }

    v164 = (v151 + v2[7]);
    v165 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v165 - 8) + 48))(v164, 1, v165))
    {

      v166 = *(v165 + 28);
      v167 = sub_1BE04AF64();
      v168 = *(v167 - 8);
      if (!(*(v168 + 48))(v164 + v166, 1, v167))
      {
        (*(v168 + 8))(v164 + v166, v167);
      }
    }

    v169 = v151 + v2[10];
    v170 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v170 - 8) + 48))(v169, 1, v170))
    {
      if (*(v169 + 2) != 1)
      {
      }

      if (*(v169 + 9) != 1)
      {
      }

      v171 = *(v170 + 28);
      v172 = sub_1BE04AF64();
      v284 = *(v172 - 8);
      v173 = *(v284 + 48);
      if (!v173(&v169[v171], 1, v172))
      {
        (*(v284 + 8))(&v169[v171], v172);
      }

      v174 = *(v170 + 32);
      v5 = v298;
      v4 = v295;
      if (!v173(&v169[v174], 1, v172))
      {
        (*(v284 + 8))(&v169[v174], v172);
      }
    }

    v175 = (v151 + v2[12]);
    if (*v175)
    {
    }

    v176 = (v151 + v2[13]);
    if (*v176)
    {
    }
  }

LABEL_241:
  v217 = v292 + v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);

  if (*(v6 + v1[34] + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6 + v1[34]);
  }

  v218 = v217 + v5;

  v219 = (v6 + v1[35]);
  if (!v4(v219, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v220 = swift_getEnumCaseMultiPayload();
    v296 = v217 + v5;
    if (v220 == 2)
    {

      v221 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v222 = sub_1BE04CF34();
      (*(*(v222 - 8) + 8))(v219 + v221, v222);
    }

    else if (v220 <= 1)
    {
    }

    v223 = v219 + v2[6];
    v224 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {

      v225 = *(v224 + 20);
      v226 = sub_1BE04DA84();
      (*(*(v226 - 8) + 8))(&v223[v225], v226);
    }

    v227 = (v219 + v2[7]);
    v228 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v228 - 8) + 48))(v227, 1, v228))
    {

      v229 = *(v228 + 28);
      v230 = sub_1BE04AF64();
      v231 = *(v230 - 8);
      if (!(*(v231 + 48))(v227 + v229, 1, v230))
      {
        (*(v231 + 8))(v227 + v229, v230);
      }
    }

    v232 = v219 + v2[10];
    v233 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v233 - 8) + 48))(v232, 1, v233))
    {
      if (*(v232 + 2) != 1)
      {
      }

      if (*(v232 + 9) != 1)
      {
      }

      v234 = *(v233 + 28);
      v235 = sub_1BE04AF64();
      v299 = *(v235 - 8);
      v236 = *(v299 + 48);
      if (!v236(&v232[v234], 1, v235))
      {
        (*(v299 + 8))(&v232[v234], v235);
      }

      v237 = *(v233 + 32);
      v5 = v298;
      if (!v236(&v232[v237], 1, v235))
      {
        (*(v299 + 8))(&v232[v237], v235);
      }
    }

    v238 = (v219 + v2[12]);
    if (*v238)
    {
    }

    v239 = (v219 + v2[13]);
    v218 = v296;
    if (*v239)
    {
    }
  }

  v240 = v218 & ~v5;

  v241 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v242 = sub_1BE04C884();
    (*(*(v242 - 8) + 8))(v6 + v241, v242);
  }

  else
  {
  }

  v243 = v297;
  v244 = (v297 + v240);
  type metadata accessor for WrappedPass(0);
  v245 = swift_getEnumCaseMultiPayload();
  if (v245 == 2)
  {

    v246 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v247 = sub_1BE04CF34();
    (*(*(v247 - 8) + 8))(v244 + v246, v247);
  }

  else if (v245 <= 1)
  {
  }

  v248 = v244 + v2[6];
  v249 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v249 - 8) + 48))(v248, 1, v249))
  {

    v250 = *(v249 + 20);
    v251 = sub_1BE04DA84();
    (*(*(v251 - 8) + 8))(&v248[v250], v251);
  }

  v252 = (v244 + v2[7]);
  v253 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v253 - 8) + 48))(v252, 1, v253))
  {

    v254 = *(v253 + 28);
    v255 = sub_1BE04AF64();
    v256 = *(v255 - 8);
    if (!(*(v256 + 48))(v252 + v254, 1, v255))
    {
      (*(v256 + 8))(v252 + v254, v255);
    }
  }

  v257 = v244 + v2[10];
  v258 = type metadata accessor for PassEligibleRewardsInfo();
  if (!(*(*(v258 - 8) + 48))(v257, 1, v258))
  {
    if (*(v257 + 2) != 1)
    {
    }

    if (*(v257 + 9) != 1)
    {
    }

    v259 = *(v258 + 28);
    v260 = sub_1BE04AF64();
    v261 = *(v260 - 8);
    v262 = *(v261 + 48);
    if (!v262(&v257[v259], 1, v260))
    {
      (*(v261 + 8))(&v257[v259], v260);
    }

    v263 = *(v258 + 32);
    v243 = v297;
    if (!v262(&v257[v263], 1, v260))
    {
      (*(v261 + 8))(&v257[v263], v260);
    }
  }

  v264 = (v244 + v2[12]);
  if (*v264)
  {
  }

  v265 = (v244 + v2[13]);
  if (*v265)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD4D58A4()
{
  result = qword_1EBD47F80;
  if (!qword_1EBD47F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F70);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F80);
  }

  return result;
}

uint64_t sub_1BD4D595C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AvailablePass(0) - 8);
  v7 = v2 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return a2(v2 + v4, v7);
}

unint64_t sub_1BD4D5A70()
{
  result = qword_1EBD47F88;
  if (!qword_1EBD47F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B88);
    sub_1BD4D5AFC();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F88);
  }

  return result;
}

unint64_t sub_1BD4D5AFC()
{
  result = qword_1EBD47F90;
  if (!qword_1EBD47F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B40);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F90);
  }

  return result;
}

unint64_t sub_1BD4D5B88()
{
  result = qword_1EBD47F98;
  if (!qword_1EBD47F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FA0);
    sub_1BD4D5C14();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F98);
  }

  return result;
}

unint64_t sub_1BD4D5C14()
{
  result = qword_1EBD47FA8;
  if (!qword_1EBD47FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B70);
    sub_1BD4CCCA4();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD4CD3A0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47FA8);
  }

  return result;
}

uint64_t AddBankCredentialSheet.init(model:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE0492B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1BE051694();
  v11 = v23;
  *(a1 + 16) = v22;
  *(a1 + 32) = v11;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1BE051694();
  v12 = v23;
  *(a1 + 40) = v22;
  *(a1 + 56) = v12;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1BE051694();
  v13 = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = v13;
  v14 = type metadata accessor for AddBankCredentialSheet();
  (*(v3 + 104))(v10, *MEMORY[0x1E6967720], v2);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE051694();
  (*(v3 + 8))(v10, v2);
  v15 = a1 + *(v14 + 36);
  LOBYTE(v20) = 0;
  sub_1BE051694();
  v16 = *(&v22 + 1);
  *v15 = v22;
  *(v15 + 8) = v16;
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  result = sub_1BE04E954();
  *a1 = result;
  *(a1 + 8) = v18;
  return result;
}

uint64_t type metadata accessor for AddBankCredentialSheet()
{
  result = qword_1EBD47FE8;
  if (!qword_1EBD47FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AddBankCredentialSheet.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10[-v4];
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB8);
  sub_1BD4D63F0();
  sub_1BE0504A4();
  v6 = (v0 + *(type metadata accessor for AddBankCredentialSheet() + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v13 = v7;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v11 = v0;
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0);
  sub_1BE050EE4();

  return (*(v2 + 8))(v5, v1);
}

void sub_1BD4D62B4()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FD0);
    sub_1BD0DE4F4(&qword_1EBD47FC8, &qword_1EBD47FD0);
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD4D63F0()
{
  result = qword_1EBD47FC0;
  if (!qword_1EBD47FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FB8);
    sub_1BD0DE4F4(&qword_1EBD47FC8, &qword_1EBD47FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47FC0);
  }

  return result;
}

void sub_1BD4D64B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v113 = a2;
  v2 = type metadata accessor for AddBankCredentialSheet();
  v108 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v109 = v4;
  v114 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v112 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48000);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v97 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48008);
  MEMORY[0x1EEE9AC00](v15, v16);
  v103 = v97 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v104 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v102 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v101 = v97 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v100 = v97 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v106 = v97 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v105 = v97 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v116 = v97 - v35;
  v36 = sub_1BE0492B4();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48010);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v107 = v97 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v97 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);
  sub_1BE0516A4();
  v48 = (*(v37 + 88))(v40, v36);
  v49 = *MEMORY[0x1E6967720];
  v115 = v47;
  if (v48 != v49)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD48018, &qword_1EBD48008);
    sub_1BE04F9A4();
    (*(v37 + 8))(v40, v36);
    goto LABEL_7;
  }

  v97[0] = v11;
  v97[1] = v15;
  v98 = v14;
  v99 = v5;
  v50 = sub_1BE052404();
  v51 = PKLocalizedPaymentString(v50);

  if (!v51)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v52 = sub_1BE052434();
  v54 = v53;

  v55 = v117;
  v56 = *(v117 + 32);
  v120 = *(v117 + 16);
  v121 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  v118 = v52;
  v119 = v54;
  sub_1BD0DDEBC();
  sub_1BE051E14();
  v57 = sub_1BE052404();
  v58 = PKLocalizedPaymentString(v57);

  if (!v58)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v59 = sub_1BE052434();
  v61 = v60;

  v62 = *(v55 + 56);
  v120 = *(v55 + 40);
  v121 = v62;
  sub_1BE0516C4();
  v118 = v59;
  v119 = v61;
  v63 = v105;
  sub_1BE051E14();
  v64 = sub_1BE052404();
  v65 = PKLocalizedPaymentString(v64);

  if (v65)
  {
    v66 = sub_1BE052434();
    v68 = v67;

    v69 = *(v55 + 80);
    v120 = *(v55 + 64);
    v121 = v69;
    sub_1BE0516C4();
    v118 = v66;
    v119 = v68;
    v70 = v106;
    sub_1BE051E14();
    v71 = v104;
    v72 = *(v104 + 16);
    v73 = v100;
    v72(v100, v116, v18);
    v74 = v101;
    v72(v101, v63, v18);
    v75 = v102;
    v72(v102, v70, v18);
    v76 = v103;
    v72(v103, v73, v18);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48028);
    v72((v76 + *(v77 + 48)), v74, v18);
    v72((v76 + *(v77 + 64)), v75, v18);
    v78 = *(v71 + 8);
    v78(v75, v18);
    v78(v74, v18);
    v78(v73, v18);
    sub_1BD0DE19C(v76, v98, &qword_1EBD48008);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD48018, &qword_1EBD48008);
    v79 = v63;
    v47 = v115;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v76, &qword_1EBD48008);
    v78(v106, v18);
    v78(v79, v18);
    v78(v116, v18);
    v5 = v99;
LABEL_7:
    v80 = v114;
    v81 = sub_1BE052404();
    v82 = PKLocalizedPaymentString(v81);

    if (v82)
    {
      v83 = sub_1BE052434();
      v85 = v84;

      v118 = v83;
      v119 = v85;
      sub_1BD4D8480(v117, v80);
      v86 = (*(v108 + 80) + 16) & ~*(v108 + 80);
      v87 = swift_allocObject();
      sub_1BD4D84E4(v80, v87 + v86);
      sub_1BD0DDEBC();
      v88 = v110;
      sub_1BE051744();
      v89 = v107;
      sub_1BD0DE19C(v47, v107, &qword_1EBD48010);
      v91 = v111;
      v90 = v112;
      v92 = *(v112 + 16);
      v93 = v5;
      v92(v111, v88, v5);
      v94 = v113;
      sub_1BD0DE19C(v89, v113, &qword_1EBD48010);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48020);
      v92((v94 + *(v95 + 48)), v91, v93);
      v96 = *(v90 + 8);
      v96(v88, v93);
      sub_1BD0DE53C(v115, &qword_1EBD48010);
      v96(v91, v93);
      sub_1BD0DE53C(v89, &qword_1EBD48010);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1BD4D7064(uint64_t a1)
{
  v2 = type metadata accessor for AddBankCredentialSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD4D8480(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD4D84E4(v6, v14 + v13);
  sub_1BD122C00(0, 0, v10, &unk_1BE0DB368, v14);
}

uint64_t sub_1BD4D721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_1BE04D214();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_1BE049394();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = sub_1BE049364();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = sub_1BE0492B4();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_1BE0528A4();
  v4[38] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[39] = v10;
  v4[40] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD4D7468, v10, v9);
}

uint64_t sub_1BD4D7468()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(*(v0 + 224) + 56);
  v4(*(v0 + 296), 1, 1, *(v0 + 216));
  *(v0 + 328) = type metadata accessor for AddBankCredentialSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);
  sub_1BE0516A4();
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E6967720])
  {
    v9 = *(v0 + 296);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 264);

    sub_1BD4D8838();
    v13 = swift_allocError();
    swift_willThrow();
    sub_1BD0DE53C(v9, &unk_1EBD4D450);
    (*(v11 + 8))(v10, v12);
    sub_1BE04D1E4();
    v14 = v13;
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C34();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1BD026000, v15, v16, "Error adding manually entered credential: %@", v17, 0xCu);
      sub_1BD0DE53C(v18, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    v21 = *(v0 + 328);
    v23 = *(v0 + 200);
    v22 = *(v0 + 208);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);

    (*(v23 + 8))(v22, v24);
    v26 = v25 + *(v21 + 36);
    v27 = *(v26 + 8);
    *(v0 + 120) = *v26;
    *(v0 + 128) = v27;
    *(v0 + 360) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();

    goto LABEL_6;
  }

  v5 = *(v0 + 184);
  v6 = *(v5 + 32);
  *(v0 + 48) = *(v5 + 16);
  *(v0 + 64) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v7 = *(v5 + 56);
  *(v0 + 72) = *(v5 + 40);
  *(v0 + 88) = v7;
  sub_1BE0516A4();
  v8 = *(v5 + 80);
  *(v0 + 96) = *(v5 + 64);
  *(v0 + 112) = v8;
  sub_1BE0516A4();
  sub_1BE049304();
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  v33 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = *(v0 + 240);
  v35 = *(v0 + 216);
  v36 = *(v0 + 224);
  sub_1BD0DE53C(v31, &unk_1EBD4D450);
  (*(v33 + 32))(v31, v32, v34);
  (*(v36 + 104))(v31, *MEMORY[0x1E6967770], v35);
  v4(v31, 0, 1, v35);
  sub_1BD0DE19C(v31, v30, &unk_1EBD4D450);
  if ((*(v36 + 48))(v30, 1, v35) == 1)
  {
    v37 = *(v0 + 288);
    sub_1BD0DE53C(*(v0 + 296), &unk_1EBD4D450);

    sub_1BD0DE53C(v37, &unk_1EBD4D450);
LABEL_6:

    v28 = *(v0 + 8);

    return v28();
  }

  v38 = *(v0 + 184);
  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 288), *(v0 + 216));
  *(v0 + 336) = *(v38 + 8);
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_1BD4D79F4;
  v40 = *(v0 + 232);

  return CredentialCenterModel.addCredential(bankCredential:)(v40);
}

uint64_t sub_1BD4D79F4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1BD4D7D44;
  }

  else
  {
    v5 = sub_1BD4D7B30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD4D7B30()
{
  v2 = v0[42];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1BE04D8A4();
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
LABEL_8:
    result = sub_1BD4FFFE0(v5);
    v5 = result;
    v7 = *(result + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v2 = v3;
  v1 = v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = v5[2];
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = v0[28];
  v14 = v0[29];
  v15 = v0[37];
  v9 = v2;
  v10 = v7 - 1;
  v11 = v0[27];
  v12 = *(type metadata accessor for CredentialCenterPathIdentifier(0) - 8);
  sub_1BD4D888C(v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10);
  v5[2] = v10;
  *v1 = v5;
  v9(v0 + 2, 0);

  (*(v8 + 8))(v14, v11);
  sub_1BD0DE53C(v15, &unk_1EBD4D450);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD4D7D44()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v2, v4);
  sub_1BD0DE53C(v1, &unk_1EBD4D450);
  v5 = *(v0 + 352);
  sub_1BE04D1E4();
  v6 = v5;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v7, v8, "Error adding manually entered credential: %@", v9, 0xCu);
    sub_1BD0DE53C(v10, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  v13 = *(v0 + 328);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);

  (*(v15 + 8))(v14, v16);
  v18 = v17 + *(v13 + 36);
  v19 = *(v18 + 8);
  *(v0 + 120) = *v18;
  *(v0 + 128) = v19;
  *(v0 + 360) = 1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1BD4D7F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddBankCredentialSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BD4D8480(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD4D84E4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  static BankCredentialListView.invalidInputErrorAlert(action:)(sub_1BD4D8548, a2);
}

uint64_t sub_1BD4D80C8()
{
  type metadata accessor for AddBankCredentialSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD4D8138(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12[-v6];
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB8);
  sub_1BD4D63F0();
  sub_1BE0504A4();
  v8 = (v1 + *(a1 + 36));
  v9 = *v8;
  v10 = *(v8 + 1);
  v15 = v9;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v13 = v1;
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0);
  sub_1BE050EE4();

  return (*(v4 + 8))(v7, v3);
}

void sub_1BD4D834C()
{
  sub_1BD327B74();
  if (v0 <= 0x3F)
  {
    sub_1BD327BD8(319, &qword_1EBD40458);
    if (v1 <= 0x3F)
    {
      sub_1BD4D8428();
      if (v2 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD496E0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4D8428()
{
  if (!qword_1EBD47FF8)
  {
    sub_1BE0492B4();
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD47FF8);
    }
  }
}

uint64_t sub_1BD4D8480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddBankCredentialSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4D84E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddBankCredentialSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_49()
{
  v1 = (type metadata accessor for AddBankCredentialSheet() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[10];
  v4 = sub_1BE0492B4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0);

  return swift_deallocObject();
}

uint64_t sub_1BD4D86D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddBankCredentialSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD4D8748(uint64_t a1)
{
  v4 = *(type metadata accessor for AddBankCredentialSheet() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD4D721C(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD4D8838()
{
  result = qword_1EBD48030;
  if (!qword_1EBD48030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48030);
  }

  return result;
}

uint64_t sub_1BD4D888C(uint64_t a1)
{
  v2 = type metadata accessor for CredentialCenterPathIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1BD4D89B4(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for ProvisioningAppleBalanceHeroFlowItem();
    if (swift_dynamicCastClass())
    {
      v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context);
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController);
      v4 = objc_allocWithZone(type metadata accessor for ProvisioningAppleBalanceCredentialFlowItem());
      sub_1BE048964();
      v5 = sub_1BD410858(v2, v3);
      type metadata accessor for UIFlowModifier();
      v6 = swift_allocObject();
      v7 = byte_1EBDAB281;
      *(v6 + 32) = byte_1EBDAB280;
      *(v6 + 33) = v7;
      *(v6 + 48) = 0;
      swift_unknownObjectWeakInit();
      result = v6;
      *(v6 + 16) = v5;
      *(v6 + 24) = &off_1F3BA5A60;
      *(v6 + 32) = 1;
    }

    else
    {
      type metadata accessor for ProvisioningAppleBalanceCredentialFlowItem();
      result = swift_dynamicCastClass();
      if (result)
      {
        v15 = *&result[OBJC_IVAR____TtC9PassKitUI42ProvisioningAppleBalanceCredentialFlowItem_provisionedPasses];
        if (v15)
        {
          v16 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
          v17 = v15;
          v18 = sub_1BE048964();
          v19 = sub_1BD989980(v18, v17);

          return v19;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context);
    v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController);
    v11 = type metadata accessor for ProvisioningAppleBalanceHeroFlowItem();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v13 = &v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_identifier];
    *v13 = 0xD000000000000018;
    *(v13 + 1) = 0x80000001BE12C210;
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_context] = v9;
    *&v12[OBJC_IVAR____TtC9PassKitUI36ProvisioningAppleBalanceHeroFlowItem_setupController] = v10;
    v20.receiver = v12;
    v20.super_class = v11;
    sub_1BE048964();
    v14 = v10;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  return result;
}

uint64_t sub_1BD4D8BF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD4D8C2C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD4D8C78(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v5 + 8))(v8, v4);
  v10 = [objc_allocWithZone(PKAppleBalanceSetupController) initWithProduct:a2 setupContext:v9];
  v11 = type metadata accessor for ProvisioningAppleBalanceFlowSection();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_identifier];
  *v13 = 0xD000000000000017;
  *(v13 + 1) = 0x80000001BE12C230;
  *&v12[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_context] = a1;
  *&v12[OBJC_IVAR____TtC9PassKitUI35ProvisioningAppleBalanceFlowSection_setupController] = v10;
  v17.receiver = v12;
  v17.super_class = v11;
  sub_1BE048964();
  v14 = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

uint64_t sub_1BD4D8E20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD4D8E98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD4D8F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48060);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__isVisible;
  v21 = 0;
  sub_1BE04D874();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__keyboardHeight;
  v19 = 0;
  v20 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48058);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v12, v5, v1);
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v0 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v15 = [v13 defaultCenter];
  [v15 addObserver:v0 selector:sel_keyboardDidHideWithNotification_ name:*MEMORY[0x1E69DDF70] object:0];

  v16 = [v13 defaultCenter];
  [v16 addObserver:v0 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v17 = [v13 defaultCenter];
  [v17 addObserver:v0 selector:sel_keyboardWillChangeFrameWithNotification_ name:*MEMORY[0x1E69DE068] object:0];

  return v0;
}

uint64_t sub_1BD4D91F0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__isVisible;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC9PassKitUI16KeyboardObserver__keyboardHeight;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48060);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyboardObserver()
{
  result = qword_1EBD364F0;
  if (!qword_1EBD364F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD4D9370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  sub_1BD4D9D28(a1, &v14 - v4);
  v6 = sub_1BE04A2E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD4D9CC0(v5);
    goto LABEL_9;
  }

  v8 = sub_1BE04A2D4();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  *&v15.origin.x = sub_1BE052434();
  v15.origin.y = v9;
  sub_1BE0537C4();
  if (!*(v8 + 16) || (v10 = sub_1BD149040(&v16), (v11 & 1) == 0))
  {

    sub_1BD149CE8(&v16);
    goto LABEL_9;
  }

  sub_1BD038CD0(*(v8 + 56) + 32 * v10, v18);
  sub_1BD149CE8(&v16);

  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = 0.0;
    v17 = 1;
    goto LABEL_10;
  }

  Height = CGRectGetHeight(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = Height;
  v17 = 0;
LABEL_10:
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD4D9B90()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    sub_1BD4D9C5C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD4D9C5C()
{
  if (!qword_1EBD36930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48058);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36930);
    }
  }
}

uint64_t sub_1BD4D9CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4D9D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4D9D98(void *a1, int a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480B0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480B8);
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD480C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v18 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD4DAC1C();
  sub_1BE053DA4();
  v16 = (v12 + 8);
  if (v21)
  {
    v23 = 1;
    sub_1BD4DAC70();
    sub_1BE053AC4();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    sub_1BD4DACC4();
    sub_1BE053AC4();
    (*(v7 + 8))(v10, v18);
  }

  return (*v16)(v15, v11);
}

uint64_t sub_1BD4DA054()
{
  if (*v0)
  {
    return 0x64656B636F6C6E75;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1BD4DA08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1BE053B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BE053B84();

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

uint64_t sub_1BD4DA164(uint64_t a1)
{
  v2 = sub_1BD4DAC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA1A0(uint64_t a1)
{
  v2 = sub_1BD4DAC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD4DA1E8(uint64_t a1)
{
  v2 = sub_1BD4DACC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA224(uint64_t a1)
{
  v2 = sub_1BD4DACC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD4DA260(uint64_t a1)
{
  v2 = sub_1BD4DAC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD4DA29C(uint64_t a1)
{
  v2 = sub_1BD4DAC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD4DA2D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD4DA7E0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1BD4DA324()
{
  if (*v0)
  {
    return 0x656B636F6C6E752ELL;
  }

  else
  {
    return 0x64656B636F6C2ELL;
  }
}

uint64_t sub_1BD4DA364()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE052224();
  v6 = MKBGetDeviceLockState();

  if (v6 >= 8)
  {
    sub_1BE04D1E4();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_1BD026000, v8, v9, "Unknown keybag state: %d", v10, 8u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0x89u >> v6;
  }

  return v7 & 1;
}

uint64_t sub_1BD4DA4FC()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = (v0 + 32);
  v3 = sub_1BD1ABED0(&unk_1F3B8D4A8);
  sub_1BD4DAD18(&unk_1F3B8D4C8);
  *(v0 + 40) = v3;
  sub_1BD14BE3C();
  v4 = sub_1BE052D54();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1BD4DAD80;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BD8457EC;
  v8[3] = &block_descriptor_107;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  return v1;
}

uint64_t sub_1BD4DA64C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v4 = sub_1BD4DA364();
      (*(v2 + 8))(v4, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BD4DA6FC()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1BD0D4534(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1BD4DA78C()
{
  result = qword_1EBD48070;
  if (!qword_1EBD48070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48070);
  }

  return result;
}

uint64_t sub_1BD4DA7E0(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48078);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48080);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48088);
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD4DAC1C();
  v13 = v29;
  sub_1BE053D94();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v5;
  v29 = a1;
  v15 = v26;
  v14 = v27;
  v16 = v12;
  v17 = sub_1BE053AB4();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1BE0538A4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48098);
    *v21 = &type metadata for DeviceLockState;
    sub_1BE053A74();
    sub_1BE053894();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v28 + 8))(v16, v9);
    swift_unknownObjectRelease();
    a1 = v29;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23[1] = v17;
  v30 = *(v17 + 32);
  if (v30)
  {
    v32 = 1;
    sub_1BD4DAC70();
    sub_1BE053A64();
    v18 = v28;
    (*(v25 + 8))(v4, v14);
  }

  else
  {
    v31 = 0;
    sub_1BD4DACC4();
    sub_1BE053A64();
    v18 = v28;
    (*(v15 + 8))(v8, v24);
  }

  (*(v18 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v30;
}

unint64_t sub_1BD4DAC1C()
{
  result = qword_1EBD48090;
  if (!qword_1EBD48090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48090);
  }

  return result;
}

unint64_t sub_1BD4DAC70()
{
  result = qword_1EBD480A0;
  if (!qword_1EBD480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480A0);
  }

  return result;
}

unint64_t sub_1BD4DACC4()
{
  result = qword_1EBD480A8;
  if (!qword_1EBD480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480A8);
  }

  return result;
}

uint64_t sub_1BD4DAD18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD4DADBC()
{
  result = qword_1EBD480C8;
  if (!qword_1EBD480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480C8);
  }

  return result;
}

unint64_t sub_1BD4DAE14()
{
  result = qword_1EBD480D0;
  if (!qword_1EBD480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480D0);
  }

  return result;
}

unint64_t sub_1BD4DAE6C()
{
  result = qword_1EBD480D8;
  if (!qword_1EBD480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480D8);
  }

  return result;
}

unint64_t sub_1BD4DAEC4()
{
  result = qword_1EBD480E0;
  if (!qword_1EBD480E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480E0);
  }

  return result;
}

unint64_t sub_1BD4DAF1C()
{
  result = qword_1EBD480E8;
  if (!qword_1EBD480E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480E8);
  }

  return result;
}

unint64_t sub_1BD4DAF74()
{
  result = qword_1EBD480F0;
  if (!qword_1EBD480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480F0);
  }

  return result;
}

unint64_t sub_1BD4DAFCC()
{
  result = qword_1EBD480F8;
  if (!qword_1EBD480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD480F8);
  }

  return result;
}

unint64_t sub_1BD4DB02C()
{
  result = qword_1EBD48100;
  if (!qword_1EBD48100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48100);
  }

  return result;
}

unint64_t sub_1BD4DB084()
{
  result = qword_1EBD48108;
  if (!qword_1EBD48108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48108);
  }

  return result;
}

uint64_t sub_1BD4DB110()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB198);
  __swift_project_value_buffer(v9, qword_1EBDAB198);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD4DB324(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_1BE04D214();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  sub_1BE0528A4();
  v2[46] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[47] = v7;
  v2[48] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD4DB4DC, v7, v6);
}

uint64_t sub_1BD4DB4DC()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:SharePassIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 312);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  *(v0 + 392) = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v12 = *(v0 + 96);
  sub_1BD030458(v0 + 80);
  LOBYTE(v5) = sub_1BD99DC00(v12);

  if (v5)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 coordinator];
    *(v0 + 400) = v14;

    if (v14)
    {
      v15 = swift_task_alloc();
      *(v0 + 408) = v15;
      *v15 = v0;
      v15[1] = sub_1BD4DB8CC;

      return sub_1BD0D7278();
    }

    sub_1BE04D074();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "SharePassIntent: PKAppIntentCoordinator was nil", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = *(v0 + 288);

    (*(v21 + 8))(v20, v22);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
  }

  else
  {

    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
  }

  swift_willThrow();
  sub_1BD4DBE8C();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1BD4DB8CC(char a1)
{
  v2 = *v1;
  *(*v1 + 425) = a1;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1BD4DB9F4, v4, v3);
}

uint64_t sub_1BD4DB9F4()
{
  if (*(v0 + 425) == 1)
  {
    v1 = *(v0 + 400);
    sub_1BE048874();
    sub_1BE048C84();
    sub_1BD030458(v0 + 144);
    v2 = sub_1BE052404();
    *(v0 + 416) = v2;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 424;
    *(v0 + 24) = sub_1BD4DBC24;
    v3 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BD68F38C;
    *(v0 + 232) = &block_descriptor_108;
    *(v0 + 240) = v3;
    [v1 sharePassWithUniqueID:v2 completion:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    sub_1BD135218();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD4DBE8C();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1BD4DBC24()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1BD4DBD2C, v2, v1);
}

uint64_t sub_1BD4DBD2C()
{
  v1 = *(v0 + 416);

  v2 = *(v0 + 424);

  if (v2 == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD4DBE8C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD4DBE8C()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:SharePassIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD4DC178@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C38 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD4DC220()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48128);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48130);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48138);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD4DC3B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD4DB324(a1, v4);
}

uint64_t sub_1BD4DC450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD4DC4C4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD4DC478(uint64_t a1)
{
  v2 = sub_1BD15D0A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD4DC4C4()
{
  v0 = sub_1BE048D74();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v40 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v36 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v35 = v34 - v11;
  v12 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE04A874();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v34[0] = sub_1BE04A884();
  v21 = *(v34[0] - 8);
  v23 = MEMORY[0x1EEE9AC00](v34[0], v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v34 - v25;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v14, qword_1EBDAB400);
  v28 = *(v15 + 16);
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v34[1] = v26;
  sub_1BE04A894();
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  v29 = v35;
  sub_1BE04A894();
  (*(v21 + 56))(v29, 0, 1, v34[0]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_1BE052354();
  v28(v18, v27, v14);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v30 = v36;
  sub_1BE048664();
  v31 = sub_1BE048654();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  v32(v37, 1, 1, v31);
  (*(v38 + 104))(v40, *MEMORY[0x1E695A500], v39);
  sub_1BD4DCA8C();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD4DCA8C()
{
  result = qword_1EBD48120;
  if (!qword_1EBD48120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48120);
  }

  return result;
}

id sub_1BD4DCAE0(void *a1, uint64_t a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - v20;
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType + 8))
  {
    return 0;
  }

  v22 = *(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource);
  if (!v22)
  {
    return 0;
  }

  v48 = a1;
  v50 = v6;
  v23 = *(v2 + OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType);
  v24 = objc_opt_self();
  v51 = v22;
  v25 = [v24 sharedService];
  v26 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

  v27 = objc_allocWithZone(PKApplyControllerConfiguration);
  v49 = v26;
  v28 = [v27 initWithSetupDelegate:v2 context:0 provisioningController:v26];
  [v28 setApplicationType_];
  [v28 setVerificationType_];

  if (v28)
  {
    v29 = v28;
    v30 = v48;
    [v29 setFeature_];

    [v29 setAccount_];
    [v29 setFundingSource_];
  }

  v31 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
  if (!v31)
  {

    return 0;
  }

  v47 = v31;
  v46 = v31;
  v32 = PKApplyServiceOverrideURL();
  if (v32)
  {
    v33 = v32;
    sub_1BE04A9F4();

    v34 = v50;
    v35 = *(v50 + 32);
    v35(v17, v9, v5);
    v36 = *(v34 + 56);
    v36(v17, 0, 1, v5);
    v35(v21, v17, v5);
    v36(v21, 0, 1, v5);
    v37 = (*(v34 + 48))(v21, 1, v5);
  }

  else
  {
    v39 = *(v50 + 56);
    v40 = 1;
    v39(v17, 1, 1, v5);
    v41 = [v48 applyServiceURL];
    if (v41)
    {
      v42 = v41;
      sub_1BE04A9F4();

      v40 = 0;
    }

    v39(v13, v40, 1, v5);
    sub_1BD226B4C(v13, v21);
    v43 = *(v50 + 48);
    if (v43(v17, 1, v5) != 1)
    {
      sub_1BD226BBC(v17);
    }

    v37 = v43(v21, 1, v5);
  }

  if (v37 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_1BE04A9C4();
    (*(v50 + 8))(v21, v5);
  }

  v45 = v46;
  [v46 setApplyServiceURL_];

  return v47;
}

id sub_1BD4DD018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FundingSourceVerificationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FundingSourceVerificationController()
{
  result = qword_1EBD48140;
  if (!qword_1EBD48140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MerchantTokenFeatureAvailability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MerchantTokenFeatureAvailability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MerchantTokenFeatureAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD4DD220(char a1)
{
  if (!PKMPANsUnifiedViewEnabled())
  {
    return;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v2 appleAccountInformation];

  if (!v4)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v5 = [v4 aidaAccountAvailable];

  if (PKSecureElementIsAvailable() && (PKCurrentUserIsGuestUser() & 1) == 0 && (PKCurrentUserIsInSharingMode() & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
    v6 = [objc_opt_self() sharedService];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 paymentSetupSupportedInRegion];

      if (v8 == 1 || (a1 & 1) != 0)
      {
        return;
      }
    }

    else if (a1)
    {
      return;
    }

    v9 = [objc_allocWithZone(type metadata accessor for PKMerchantTokenDataStorageWrapper()) init];
    sub_1BD9AE674();
  }
}

uint64_t _s9PassKitUI32MerchantTokenFeatureAvailabilityC02isdeF9Available24paymentPassesProvisionedS2b_tFZ_0(char a1)
{
  v13 = &type metadata for DefaultMerchantTokenDependencies;
  v14 = &off_1F3BAA4E8;
  v2 = type metadata accessor for MerchantTokenFeatureAvailability();
  v3 = objc_allocWithZone(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for DefaultMerchantTokenDependencies);
  v10 = &type metadata for DefaultMerchantTokenDependencies;
  v11 = &off_1F3BAA4E8;
  sub_1BD0EE8CC(v9, v3 + OBJC_IVAR___PKMerchantTokenFeatureAvailability_dependencies);
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_1BD4DD220(a1);
  v6 = v5;

  return v6 & 1;
}

void sub_1BD4DD4F4()
{
  sub_1BD4DD628(319, &qword_1EBD3D2B8, sub_1BD1F2290);
  if (v0 <= 0x3F)
  {
    sub_1BD4DD628(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD4DD628(319, &qword_1EBD45CD8, MEMORY[0x1E69676E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD4DD628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BD4DD6C4()
{
  type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1BD4DD788@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48178);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48180);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48188);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - v14;
  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48190);
  sub_1BD4DDC3C(v2, &v7[*(v16 + 44)]);
  v17 = sub_1BE051CD4();
  v19 = v18;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48198) + 36)];
  sub_1BD4DF468(v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481A0) + 36));
  *v21 = v17;
  v21[1] = v19;
  LOBYTE(v20) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481A8) + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481B0) + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v33 = sub_1BE0505C4();
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *v31 = swift_getKeyPath();
  v34 = sub_1BE051424();
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481B8) + 36)] = v34;
  LOBYTE(v34) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v35 = &v7[*(v4 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v19) = sub_1BE050224();
  *(inited + 32) = v19;
  v41 = sub_1BE050204();
  *(inited + 33) = v41;
  v42 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v19)
  {
    v42 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v41)
  {
    v42 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1BD0DE204(v7, v11, &qword_1EBD48178);
  v51 = &v11[*(v8 + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_1BD0DE204(v11, v15, &qword_1EBD48180);
  v61 = &v15[*(v12 + 36)];
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v62 = v66;
  sub_1BD0DE204(v15, v66, &qword_1EBD48188);
  v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481C0) + 36));
  v64 = v68;
  *v63 = v67;
  v63[1] = v64;
  result = *&v69;
  v63[2] = v69;
  return result;
}

uint64_t sub_1BD4DDC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482A0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482A8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482B0);
  MEMORY[0x1EEE9AC00](v54, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - v20;
  v22 = a1 + *(type metadata accessor for FinanceKitMerchantHeaderView(0) + 24);
  v23 = *v22;
  v24 = *(v22 + 8);
  v57 = v23;
  v58 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v56 == 1)
  {
    v25 = sub_1BE04F4F4();
  }

  else
  {
    v25 = sub_1BE04F504();
  }

  *v6 = v25;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482B8);
  sub_1BD4DE034(a1, &v6[*(v26 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v28 = sub_1BE050204();
  *(inited + 32) = v28;
  v29 = sub_1BE050224();
  *(inited + 33) = v29;
  v30 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v28)
  {
    v30 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v29)
  {
    v30 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE204(v6, v10, &qword_1EBD482A0);
  v39 = &v10[*(v7 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1BD0DE204(v10, v17, &qword_1EBD482A8);
  v49 = &v17[*(v54 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_1BD0DE204(v17, v21, &qword_1EBD482B0);
  sub_1BD0DE19C(v21, v13, &qword_1EBD482B0);
  v50 = v55;
  *v55 = 0;
  *(v50 + 8) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482C0);
  sub_1BD0DE19C(v13, v50 + *(v51 + 48), &qword_1EBD482B0);
  sub_1BD0DE53C(v21, &qword_1EBD482B0);
  return sub_1BD0DE53C(v13, &qword_1EBD482B0);
}

uint64_t sub_1BD4DE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482C8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v20 = *(type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0) + 40);
  v21 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(a1 + v20, &v19[*(v21 + 20)], &qword_1EBD45CC0);
  *v19 = 1;
  *v11 = sub_1BE04F7D4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482D0);
  sub_1BD4DE294(a1, &v11[*(v22 + 44)]);
  sub_1BD4E2A8C(v19, v15, type metadata accessor for FinanceKitTransactionIcon);
  sub_1BD0DE19C(v11, v7, &qword_1EBD482C8);
  sub_1BD4E2A8C(v15, a2, type metadata accessor for FinanceKitTransactionIcon);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482D8);
  v24 = a2 + *(v23 + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1BD0DE19C(v7, a2 + *(v23 + 64), &qword_1EBD482C8);
  sub_1BD0DE53C(v11, &qword_1EBD482C8);
  sub_1BD4E3190(v19, type metadata accessor for FinanceKitTransactionIcon);
  sub_1BD0DE53C(v7, &qword_1EBD482C8);
  return sub_1BD4E3190(v15, type metadata accessor for FinanceKitTransactionIcon);
}

uint64_t sub_1BD4DE294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v181 = a2;
  v157 = sub_1BE04BD74();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v3);
  v155 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v158 = &v155 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482E8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v180 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v155 - v14;
  v16 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v170 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v171 = v18;
  v172 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482F0);
  v161 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v19);
  v160 = &v155 - v20;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD482F8);
  MEMORY[0x1EEE9AC00](v162, v21);
  v163 = &v155 - v22;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48300);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v23);
  v167 = &v155 - v24;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48308);
  MEMORY[0x1EEE9AC00](v166, v25);
  v176 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v165 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v188 = &v155 - v32;
  v190 = sub_1BE04EB24();
  v33 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190, v34);
  v189 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  MEMORY[0x1EEE9AC00](v184, v36);
  v38 = &v155 - v37;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48310);
  MEMORY[0x1EEE9AC00](v182, v39);
  v159 = &v155 - v40;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48318);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v41);
  v173 = &v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v191 = &v155 - v45;
  v186 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v46 = v186[7];
  v187 = a1;
  v47 = (a1 + v46);
  v48 = v47[1];
  v179 = v15;
  v178 = v5;
  v177 = v6;
  v192 = v33;
  if (v48)
  {
    v49 = *v47;
    v50 = v48;
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  *&v197[0] = v49;
  *(&v197[0] + 1) = v50;
  v51 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v185 = v51;
  v52 = sub_1BE0506C4();
  v54 = v53;
  v56 = v55;
  sub_1BE050454();
  v57 = sub_1BE0505F4();
  v59 = v58;
  v61 = v60;

  sub_1BD0DDF10(v52, v54, v56 & 1);

  v62 = sub_1BE0505D4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_1BD0DDF10(v57, v59, v61 & 1);

  v69 = &v38[*(v184 + 36)];
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v71 = *MEMORY[0x1E6980FD8];
  v72 = sub_1BE0505C4();
  v73 = *(v72 - 8);
  (*(v73 + 104))(v69 + v70, v71, v72);
  (*(v73 + 56))(v69 + v70, 0, 1, v72);
  *v69 = swift_getKeyPath();
  *v38 = v62;
  *(v38 + 1) = v64;
  v38[16] = v66 & 1;
  *(v38 + 3) = v68;
  KeyPath = swift_getKeyPath();
  v75 = v159;
  sub_1BD0DE204(v38, v159, &qword_1EBD386A0);
  v76 = v75 + *(v182 + 36);
  *v76 = KeyPath;
  *(v76 + 8) = 1;
  *(v76 + 16) = 0;
  LODWORD(v68) = *MEMORY[0x1E697E6F8];
  v77 = v192;
  v78 = *(v192 + 104);
  v79 = v189;
  v80 = v190;
  v78(v189, *MEMORY[0x1E697E6F8], v190);
  sub_1BD4E2AF4();
  sub_1BE050B24();
  v81 = *(v77 + 8);
  v81(v79, v80);
  sub_1BD0DE53C(v75, &qword_1EBD48310);
  v82 = (v187 + v186[8]);
  v83 = v82[1];
  v192 = v77 + 8;
  LODWORD(v184) = v68;
  v183 = v78;
  v182 = v81;
  if (v83)
  {
    v84 = *v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0xE000000000000000;
  }

  *&v197[0] = v84;
  *(&v197[0] + 1) = v85;
  sub_1BE048C84();
  v86 = sub_1BE0506C4();
  v88 = v87;
  v90 = v89;
  sub_1BE050344();
  v91 = sub_1BE0505F4();
  v93 = v92;
  v95 = v94;
  v97 = v96;

  sub_1BD0DDF10(v86, v88, v90 & 1);

  v98 = swift_getKeyPath();
  v199 = v95 & 1;
  *&v193 = v91;
  *(&v193 + 1) = v93;
  LOBYTE(v194) = v95 & 1;
  *(&v194 + 1) = v97;
  LOWORD(v195) = 256;
  *(&v195 + 1) = v98;
  v196 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48328);
  sub_1BD4E2BAC();
  v99 = 1;
  v100 = v160;
  sub_1BE050EA4();
  v197[0] = v193;
  v197[1] = v194;
  v197[2] = v195;
  v198 = v196;
  sub_1BD0DE53C(v197, &qword_1EBD48328);
  v101 = swift_getKeyPath();
  v102 = v163;
  (*(v161 + 32))(v163, v100, v164);
  v103 = v102 + *(v162 + 36);
  *v103 = v101;
  *(v103 + 8) = 2;
  *(v103 + 16) = 0;
  v104 = v189;
  v105 = v190;
  v183(v189, v184, v190);
  sub_1BD4E2CE8();
  v106 = v167;
  sub_1BE050B24();
  (v182)(v104, v105);
  sub_1BD0DE53C(v102, &qword_1EBD482F8);
  v107 = v187;
  v108 = v172;
  sub_1BD4E2A8C(v187, v172, type metadata accessor for FinanceKitMerchantHeaderView);
  v109 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v110 = swift_allocObject();
  sub_1BD4E26AC(v108, v110 + v109);
  v111 = v165;
  (*(v168 + 32))(v165, v106, v169);
  v112 = (v111 + *(v166 + 36));
  *v112 = sub_1BD4DF3B4;
  v112[1] = 0;
  v112[2] = sub_1BD4E3040;
  v112[3] = v110;
  sub_1BD0DE204(v111, v188, &qword_1EBD48308);
  v113 = (v107 + v186[6]);
  v114 = v113[1];
  if (v114)
  {
    v115 = *v113;
    v116 = v156;
    v117 = v155;
    v118 = v157;
    (*(v156 + 104))(v155, *MEMORY[0x1E69B80B0], v157);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1BE0B69E0;
    *(v119 + 56) = MEMORY[0x1E69E6158];
    *(v119 + 64) = sub_1BD110550();
    *(v119 + 32) = v115;
    *(v119 + 40) = v114;
    sub_1BE048C84();
    v120 = sub_1BE04B714();
    v122 = v121;

    (*(v116 + 8))(v117, v118);
    *&v193 = v120;
    *(&v193 + 1) = v122;
    v123 = sub_1BE0506C4();
    v125 = v124;
    LOBYTE(v122) = v126;
    sub_1BE050444();
    v127 = sub_1BE0505F4();
    v129 = v128;
    v131 = v130;

    sub_1BD0DDF10(v123, v125, v122 & 1);

    LODWORD(v193) = sub_1BE04FC94();
    v132 = sub_1BE050574();
    v134 = v133;
    LOBYTE(v125) = v135;
    v137 = v136;
    sub_1BD0DDF10(v127, v129, v131 & 1);

    *&v193 = v132;
    *(&v193 + 1) = v134;
    LOBYTE(v194) = v125 & 1;
    *(&v194 + 1) = v137;
    v138 = v189;
    v139 = v190;
    v183(v189, v184, v190);
    v140 = v158;
    sub_1BE050B24();
    (v182)(v138, v139);
    sub_1BD0DDF10(v132, v134, v125 & 1);

    v141 = v177;
    v142 = v179;
    v143 = v178;
    (*(v177 + 32))(v179, v140, v178);
    v99 = 0;
  }

  else
  {
    v142 = v179;
    v143 = v178;
    v141 = v177;
  }

  (*(v141 + 56))(v142, v99, 1, v143);
  v144 = v174;
  v145 = *(v174 + 16);
  v146 = v173;
  v147 = v175;
  v145(v173, v191, v175);
  v148 = v188;
  v149 = v176;
  sub_1BD0DE19C(v188, v176, &qword_1EBD48308);
  v150 = v180;
  sub_1BD0DE19C(v142, v180, &qword_1EBD482E8);
  v151 = v181;
  v145(v181, v146, v147);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48350);
  sub_1BD0DE19C(v149, &v151[*(v152 + 48)], &qword_1EBD48308);
  sub_1BD0DE19C(v150, &v151[*(v152 + 64)], &qword_1EBD482E8);
  sub_1BD0DE53C(v142, &qword_1EBD482E8);
  sub_1BD0DE53C(v148, &qword_1EBD48308);
  v153 = *(v144 + 8);
  v153(v191, v147);
  sub_1BD0DE53C(v150, &qword_1EBD482E8);
  sub_1BD0DE53C(v149, &qword_1EBD48308);
  return (v153)(v146, v147);
}

uint64_t sub_1BD4DF3B4@<X0>(BOOL *a1@<X8>)
{
  result = sub_1BE04E684();
  *a1 = v3 > 35.0;
  return result;
}

uint64_t sub_1BD4DF3F4()
{
  type metadata accessor for FinanceKitMerchantHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD4DF468@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481C8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v29 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481D0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481D8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v29 - v12;
  *v4 = sub_1BE051CA4();
  v4[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481E0);
  sub_1BD4DF76C(v4 + *(v15 + 44));
  sub_1BE051CC4();
  sub_1BE04EE54();
  sub_1BD0DE204(v4, v9, &qword_1EBD481C8);
  v16 = &v9[*(v6 + 44)];
  v17 = v35;
  *(v16 + 4) = v34;
  *(v16 + 5) = v17;
  *(v16 + 6) = v36;
  v18 = v31;
  *v16 = v30;
  *(v16 + 1) = v18;
  v19 = v33;
  *(v16 + 2) = v32;
  *(v16 + 3) = v19;
  v20 = sub_1BD4E0170();
  v21 = sub_1BE0501D4();
  sub_1BD0DE204(v9, v13, &qword_1EBD481D0);
  v22 = &v13[*(v10 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD481E8);
  v24 = sub_1BD4E253C();
  v25 = sub_1BE04EEA4();
  v26 = sub_1BD4E2A44(&qword_1EBD48208, MEMORY[0x1E697ED30]);
  v29[2] = v25;
  v29[3] = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3DA90](sub_1BD4E035C, 0, v10, v23, v24, OpaqueTypeConformance2);
  return sub_1BD0DE53C(v13, &qword_1EBD481D8);
}

uint64_t sub_1BD4DF76C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v78 - v5;
  v6 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v86 = v8;
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48210);
  MEMORY[0x1EEE9AC00](v87, v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v92 = &v78 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48218);
  MEMORY[0x1EEE9AC00](v91, v16);
  v93 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48220);
  v96 = *(v18 - 8);
  v97 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v90 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v89 = &v78 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v84 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v95 = &v78 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v78 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v78 - v36;
  v38 = sub_1BE04AA64();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v82 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v83 = &v78 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v94 = &v78 - v47;
  v48 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  sub_1BD0DE19C(v2 + *(v48 + 20), v33, &unk_1EBD3CF70);
  v49 = *(v39 + 48);
  if (v49(v33, 1, v38) == 1)
  {
    sub_1BD0DE19C(v2 + *(v48 + 36), v37, &unk_1EBD3CF70);
    if (v49(v33, 1, v38) != 1)
    {
      sub_1BD0DE53C(v33, &unk_1EBD3CF70);
    }
  }

  else
  {
    (*(v39 + 32))(v37, v33, v38);
    (*(v39 + 56))(v37, 0, 1, v38);
  }

  if (v49(v37, 1, v38) == 1)
  {
    sub_1BD0DE53C(v37, &unk_1EBD3CF70);
    v50 = 1;
    v51 = v97;
    v52 = v98;
  }

  else
  {
    v81 = v12;
    v53 = v94;
    v79 = *(v39 + 32);
    v79(v94, v37, v38);
    v54 = v95;
    v78 = *(v39 + 16);
    v78(v95, v53, v38);
    (*(v39 + 56))(v54, 0, 1, v38);
    MEMORY[0x1BFB3EDF0](0.3, 1.0, 0.0);
    v80 = sub_1BE04E494();
    sub_1BD4E2A8C(v2, v9, type metadata accessor for FinanceKitMerchantHeaderView);
    v55 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v56 = swift_allocObject();
    sub_1BD4E26AC(v9, v56 + v55);
    v57 = [objc_opt_self() sharedURLCache];
    v58 = v54;
    v59 = v84;
    sub_1BD0DE19C(v58, v84, &unk_1EBD3CF70);
    if (v49(v59, 1, v38) == 1)
    {
      sub_1BD0DE53C(v59, &unk_1EBD3CF70);
      v60 = 1;
      v61 = v88;
    }

    else
    {
      v62 = v83;
      v79(v83, v59, v38);
      v78(v82, v62, v38);
      v61 = v88;
      sub_1BE04A114();
      (*(v39 + 8))(v62, v38);
      v60 = 0;
    }

    v63 = v81;
    v64 = sub_1BE04A134();
    (*(*(v64 - 8) + 56))(v61, v60, 1, v64);
    v65 = v87;
    sub_1BD0DE204(v61, v63 + *(v87 + 40), &qword_1EBD45720);
    *(v63 + 16) = sub_1BD4E2710;
    *(v63 + 24) = v56;
    *(v63 + v65[12]) = v80;
    v66 = v63 + v65[13];
    *v66 = 0;
    *(v66 + 8) = 0;
    *(v66 + 16) = 0;
    *(v66 + 24) = 1;
    *(v63 + v65[11]) = v57;
    v99 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v95, &unk_1EBD3CF70);
    *v63 = v100;
    v67 = v92;
    sub_1BD0DE204(v63, v92, &qword_1EBD48210);
    sub_1BE051CD4();
    sub_1BE04EE54();
    (*(v39 + 8))(v94, v38);
    v68 = v93;
    sub_1BD0DE204(v67, v93, &qword_1EBD48210);
    v69 = (v68 + *(v91 + 36));
    v70 = v105;
    v69[4] = v104;
    v69[5] = v70;
    v69[6] = v106;
    v71 = v101;
    *v69 = v100;
    v69[1] = v71;
    v72 = v103;
    v69[2] = v102;
    v69[3] = v72;
    v73 = v90;
    sub_1BD0DE204(v68, v90, &qword_1EBD48218);
    v51 = v97;
    *(v73 + *(v97 + 36)) = 0;
    v74 = v73;
    v75 = v89;
    sub_1BD0DE204(v74, v89, &qword_1EBD48220);
    v76 = v75;
    v52 = v98;
    sub_1BD0DE204(v76, v98, &qword_1EBD48220);
    v50 = 0;
  }

  return (*(v96 + 56))(v52, v50, 1, v51);
}

uint64_t sub_1BD4E0170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  sub_1BD0DE19C(v0 + *(v9 + 20), v8, &unk_1EBD3CF70);
  v10 = sub_1BE04AA64();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  sub_1BD0DE53C(v8, &unk_1EBD3CF70);
  if (v12 == 1 && (sub_1BD0DE19C(v0 + *(v9 + 36), v4, &unk_1EBD3CF70), v13 = v11(v4, 1, v10), sub_1BD0DE53C(v4, &unk_1EBD3CF70), v13 == 1))
  {
    v14 = *v0;
    if (!*v0)
    {
      [objc_opt_self() tintColor];
      v14 = 0;
    }

    v16 = v14;
  }

  else
  {
    v15 = [objc_opt_self() quaternarySystemFillColor];
  }

  return sub_1BE0511C4();
}

uint64_t sub_1BD4E035C()
{
  v0 = sub_1BE04FB74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E684();
  v6 = v5;
  sub_1BE04FD34();
  sub_1BE04E694();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v15 = v6 + CGRectGetMinY(v26);
  sub_1BE04E684();
  v17 = fmax(v15 / v16, 1.0);
  sub_1BE051E94();
  v19 = v18;
  v21 = v20;
  v22 = sub_1BE04EEA4();
  v23 = sub_1BD4E2A44(&qword_1EBD48208, MEMORY[0x1E697ED30]);
  return MEMORY[0x1BFB3B650](v22, v23, v17, v19, v21);
}

uint64_t sub_1BD4E0508@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v52 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v5);
  v7 = &v44 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48228);
  MEMORY[0x1EEE9AC00](v51, v8);
  v10 = &v44 - v9;
  v11 = sub_1BE04F454();
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  v19 = sub_1BE051584();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48230);
  v25 = MEMORY[0x1EEE9AC00](v50, v24);
  v27 = &v44 - v26;
  if (a1 >> 62)
  {
    sub_1BE04E4F4();
    v43 = v53;
    (*(v4 + 16))(v10, v7, v53);
    swift_storeEnumTagMultiPayload();
    sub_1BD4E2790();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04F9A4();
    return (*(v4 + 8))(v7, v43);
  }

  else
  {
    (*(v20 + 104))(v23, *MEMORY[0x1E6981630], v19, v25);
    v28 = sub_1BE0515E4();
    (*(v20 + 8))(v23, v19);
    v29 = sub_1BE051CD4();
    v31 = v30;
    sub_1BD4E0A6C(&v54);
    v32 = v54;
    v44 = v56;
    v45 = v55;
    LOBYTE(v54) = 1;
    v33 = sub_1BE051CD4();
    v35 = v34;
    v36 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48258) + 36)];
    sub_1BD4E0CC0(v49, v36);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48288) + 36));
    *v37 = v33;
    v37[1] = v35;
    *v27 = v28;
    *(v27 + 1) = 0;
    *(v27 + 8) = 257;
    *(v27 + 3) = v32;
    v38 = v44;
    *(v27 + 2) = v45;
    *(v27 + 3) = v38;
    *(v27 + 8) = v29;
    *(v27 + 9) = v31;
    sub_1BE04F444();
    v40 = v47;
    v39 = v48;
    (*(v48 + 16))(v46, v18, v47);
    sub_1BD4E2A44(&unk_1EBD367A0, MEMORY[0x1E697F260]);
    v41 = sub_1BE04E644();
    (*(v39 + 8))(v18, v40);
    *&v27[*(v50 + 36)] = v41;
    sub_1BD0DE19C(v27, v10, &qword_1EBD48230);
    swift_storeEnumTagMultiPayload();
    sub_1BD4E2790();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v27, &qword_1EBD48230);
  }
}

double sub_1BD4E0A6C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48298);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B98E0;
  v8 = *MEMORY[0x1E69814D8];
  v9 = *(v3 + 104);
  v9(v6, v8, v2);
  sub_1BE0514B4();
  *(v7 + 32) = sub_1BE051B04();
  *(v7 + 40) = v10;
  v9(v6, v8, v2);
  sub_1BE0514B4();
  *(v7 + 48) = sub_1BE051B04();
  *(v7 + 56) = v11;
  v9(v6, v8, v2);
  sub_1BE0514B4();
  *(v7 + 64) = sub_1BE051B04();
  *(v7 + 72) = v12;
  v9(v6, v8, v2);
  sub_1BE0514B4();
  *(v7 + 80) = sub_1BE051B04();
  *(v7 + 88) = v13;
  sub_1BE051E84();
  sub_1BE051E94();
  sub_1BE051B14();
  sub_1BE04E874();
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

uint64_t sub_1BD4E0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48290);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v26 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v15 = *(v14 + 20);
  v27 = a1;
  sub_1BD0DE19C(a1 + v15, v13, &unk_1EBD3CF70);
  v16 = sub_1BE04AA64();
  v17 = *(*(v16 - 8) + 48);
  v18 = 1;
  LODWORD(a1) = v17(v13, 1, v16);
  v19 = v13;
  v20 = v28;
  sub_1BD0DE53C(v19, &unk_1EBD3CF70);
  if (a1 == 1)
  {
    sub_1BD0DE19C(v27 + *(v14 + 36), v9, &unk_1EBD3CF70);
    v21 = v17(v9, 1, v16);
    sub_1BD0DE53C(v9, &unk_1EBD3CF70);
    if (v21 != 1)
    {
      v22 = sub_1BE051404();
      v23 = sub_1BE0501D4();
      v24 = v26;
      sub_1BE051BE4();
      *v24 = v22;
      *(v24 + 8) = v23;
      sub_1BD0DE204(v24, v20, &qword_1EBD48290);
      v18 = 0;
    }
  }

  return (*(v29 + 56))(v20, v18, 1, v3);
}

uint64_t sub_1BD4E0F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1BE04AFE4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = sub_1BE049B04();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD4E1248, 0, 0);
}

uint64_t sub_1BD4E1248()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v83 = *(v0 + 176);
  v84 = *(v0 + 32);
  v86 = *(v0 + 120);
  v5 = v1[5];
  v6 = sub_1BE04AA64();
  v89 = v5;
  v90 = *(v6 - 8);
  v7 = *(v90 + 56);
  v7(v2 + v5, 1, 1, v6);
  v8 = (v2 + v1[6]);
  *v8 = 0;
  v8[1] = 0;
  v82 = v8;
  v87 = v1[9];
  v88 = v6;
  v92 = v7;
  v7(v2 + v87, 1, 1, v6);
  v9 = v1[10];
  *(v0 + 288) = v9;
  v10 = sub_1BE0491F4();
  *(v0 + 224) = v10;
  v11 = *(v10 - 8);
  *(v0 + 232) = v11;
  v12 = *(v11 + 56);
  *(v0 + 240) = v12;
  *(v0 + 248) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v91 = v2;
  v12(v2 + v9, 1, 1, v10);
  sub_1BE0499D4();
  sub_1BE049AB4();
  v13 = *(v4 + 8);
  *(v0 + 256) = v13;
  *(v0 + 264) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v83);
  sub_1BD0DE19C(v84, v86, &qword_1EBD3F7C0);
  v14 = sub_1BE0491B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v86, 1, v14) == 1)
  {
    v17 = *(v0 + 120);
    v18 = &qword_1EBD3F7C0;
LABEL_5:
    sub_1BD0DE53C(v17, v18);
    v23 = v88;
    v92(*(v0 + 168), 1, 1, v88);
    goto LABEL_7;
  }

  v19 = *(v0 + 144);
  v20 = *(v0 + 120);
  sub_1BE049194();
  (*(v15 + 8))(v20, v14);
  v21 = sub_1BE04A0D4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    v17 = *(v0 + 144);
    v18 = &qword_1EBD48360;
    goto LABEL_5;
  }

  v24 = *(v0 + 144);
  sub_1BE04A0C4();
  (*(v22 + 8))(v24, v21);
  v23 = v88;
LABEL_7:
  v25 = *(v0 + 112);
  v26 = *(v0 + 32);
  sub_1BD4E30B0(*(v0 + 168), v91 + v87);
  sub_1BD0DE19C(v26, v25, &qword_1EBD3F7C0);
  v85 = v15;
  if (v16(v25, 1, v14) == 1)
  {
    v27 = *(v0 + 112);
    v28 = &qword_1EBD3F7C0;
LABEL_11:
    sub_1BD0DE53C(v27, v28);
    v92(*(v0 + 152), 1, 1, v23);
    goto LABEL_12;
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 112);
  sub_1BE049194();
  (*(v15 + 8))(v30, v14);
  v31 = sub_1BE04A0D4();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    v27 = *(v0 + 136);
    v28 = &qword_1EBD48360;
    goto LABEL_11;
  }

  v41 = *(v0 + 152);
  v42 = *(v0 + 136);
  sub_1BE04A074();
  (*(v32 + 8))(v42, v31);
  if ((*(v90 + 48))(v41, 1, v23) != 1)
  {
    v43 = *(v0 + 160);
    (*(v90 + 32))(v43, *(v0 + 152), v23);
    v92(v43, 0, 1, v23);
    goto LABEL_22;
  }

LABEL_12:
  v33 = *(v0 + 104);
  sub_1BD0DE19C(*(v0 + 32), v33, &qword_1EBD3F7C0);
  v34 = v16(v33, 1, v14);
  v35 = *(v0 + 104);
  if (v34 == 1)
  {
    v36 = &qword_1EBD3F7C0;
    v37 = *(v0 + 104);
LABEL_16:
    sub_1BD0DE53C(v37, v36);
    v92(*(v0 + 160), 1, 1, v23);
    goto LABEL_20;
  }

  v38 = *(v0 + 80);
  sub_1BE0491A4();
  (*(v15 + 8))(v35, v14);
  v39 = sub_1BE049294();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    v37 = *(v0 + 80);
    v36 = &qword_1EBD48358;
    goto LABEL_16;
  }

  v44 = *(v0 + 80);
  sub_1BE049224();
  (*(v40 + 8))(v44, v39);
LABEL_20:
  v45 = *(v0 + 152);
  if ((*(v90 + 48))(v45, 1, v23) != 1)
  {
    sub_1BD0DE53C(v45, &unk_1EBD3CF70);
  }

LABEL_22:
  v46 = *(v0 + 32);
  sub_1BD4E30B0(*(v0 + 160), v91 + v89);
  sub_1BD736290(v46);
  v47 = sub_1BE052404();

  v48 = PKMerchantFormattedDisplayName();

  if (v48)
  {
    v49 = sub_1BE052434();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = *(v0 + 96);
  v53 = *(v0 + 32);
  v54 = (*(v0 + 216) + *(*(v0 + 208) + 32));
  *v54 = v49;
  v54[1] = v51;
  sub_1BD0DE19C(v53, v52, &qword_1EBD3F7C0);
  if (v16(v52, 1, v14) == 1)
  {
    sub_1BD0DE53C(*(v0 + 96), &qword_1EBD3F7C0);
  }

  else
  {
    v55 = *(v0 + 128);
    v56 = *(v0 + 96);
    sub_1BE049194();
    (*(v85 + 8))(v56, v14);
    v57 = sub_1BE04A0D4();
    v58 = *(v57 - 8);
    v59 = (*(v58 + 48))(v55, 1, v57);
    v60 = *(v0 + 128);
    if (v59 == 1)
    {
      sub_1BD0DE53C(*(v0 + 128), &qword_1EBD48360);
    }

    else
    {
      v61 = sub_1BE04A0A4();
      v63 = v62;
      (*(v58 + 8))(v60, v57);
      if (v63)
      {
LABEL_40:
        v80 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v80 = v61 & 0xFFFFFFFFFFFFLL;
        }

        if (!v80)
        {
          goto LABEL_35;
        }

        *v82 = v61;
        v82[1] = v63;
        goto LABEL_36;
      }
    }
  }

  v64 = *(v0 + 88);
  sub_1BD0DE19C(*(v0 + 32), v64, &qword_1EBD3F7C0);
  v65 = v16(v64, 1, v14);
  v66 = *(v0 + 88);
  if (v65 == 1)
  {
    v67 = &qword_1EBD3F7C0;
    v68 = *(v0 + 88);
LABEL_34:
    sub_1BD0DE53C(v68, v67);
LABEL_35:

    goto LABEL_36;
  }

  v69 = *(v0 + 72);
  sub_1BE0491A4();
  (*(v85 + 8))(v66, v14);
  v70 = sub_1BE049294();
  v71 = *(v70 - 8);
  v72 = (*(v71 + 48))(v69, 1, v70);
  v73 = *(v0 + 72);
  if (v72 == 1)
  {
    v67 = &qword_1EBD48358;
    v68 = *(v0 + 72);
    goto LABEL_34;
  }

  v61 = sub_1BE049254();
  v63 = v79;
  (*(v71 + 8))(v73, v70);

  if (v63)
  {
    goto LABEL_40;
  }

LABEL_36:
  v74 = (*(v0 + 216) + *(*(v0 + 208) + 28));
  *v74 = sub_1BE049AE4();
  v74[1] = v75;
  sub_1BE0490F4();
  *(v0 + 272) = sub_1BE0490B4();
  sub_1BE049A14();
  v76 = swift_task_alloc();
  *(v0 + 280) = v76;
  *v76 = v0;
  v76[1] = sub_1BD4E1C98;
  v78 = *(v0 + 56);
  v77 = *(v0 + 64);

  return MEMORY[0x1EEDC14C0](v77, v78, 1, 0);
}

uint64_t sub_1BD4E1C98()
{
  v2 = *v1;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1BD4E21BC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);

    v6 = sub_1BD4E1E54;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BD4E1E54()
{
  v1 = *(*(v0 + 232) + 48);
  if (!v1(*(v0 + 64), 1, *(v0 + 224)))
  {
    v13 = sub_1BE0491C4();
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 216);
      *v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v16 = sub_1BE052BA4();
      if (!v16)
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v17 = v16;
      if (CGColorGetNumberOfComponents(v14) <= 2 || (result = v1(*(v0 + 64), 1, *(v0 + 224)), result))
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v18 = *(v17 + 16);
      if (v18)
      {
        if (v18 != 1)
        {
          if (v18 >= 3)
          {
            v19 = *(v17 + 32) * 0.9;
            v20 = *(v0 + 256);
            v21 = *(v0 + 200);
            v22 = *(v0 + 176);
            v23 = *(v17 + 40) * 0.9;
            v24 = *(v17 + 48);

            CGColorCreateGenericRGB(v19, v23, v24 * 0.9, 1.0);
            sub_1BE0491D4();

            v20(v21, v22);
            goto LABEL_3;
          }

LABEL_18:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  (*(*(v0 + 184) + 16))(v4, v5, v6);
  MEMORY[0x1BFB3FF90](v4);
  PKScreenScale();
  v7 = PKColorForFKCategory();
  v2(v5, v6);
  *v3 = v7;
LABEL_3:
  v8 = *(v0 + 216);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  sub_1BD4E3120(v9, v8 + *(v0 + 288));
  sub_1BD4E2A8C(v8, v10, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v9, &qword_1EBD45CC0);
  sub_1BD4E3190(v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1BD4E21BC()
{
  (*(v0 + 240))(*(v0 + 64), 1, 1, *(v0 + 224));
  v1 = *(*(v0 + 232) + 48);
  if (!v1(*(v0 + 64), 1, *(v0 + 224)))
  {
    v13 = sub_1BE0491C4();
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 216);
      *v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      v16 = sub_1BE052BA4();
      if (!v16)
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v17 = v16;
      if (CGColorGetNumberOfComponents(v14) <= 2 || (result = v1(*(v0 + 64), 1, *(v0 + 224)), result))
      {
        (*(v0 + 256))(*(v0 + 200), *(v0 + 176));

        goto LABEL_3;
      }

      v18 = *(v17 + 16);
      if (v18)
      {
        if (v18 != 1)
        {
          if (v18 >= 3)
          {
            v19 = *(v17 + 32) * 0.9;
            v20 = *(v0 + 256);
            v21 = *(v0 + 200);
            v22 = *(v0 + 176);
            v23 = *(v17 + 40) * 0.9;
            v24 = *(v17 + 48);

            CGColorCreateGenericRGB(v19, v23, v24 * 0.9, 1.0);
            sub_1BE0491D4();

            v20(v21, v22);
            goto LABEL_3;
          }

LABEL_18:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  (*(*(v0 + 184) + 16))(v4, v5, v6);
  MEMORY[0x1BFB3FF90](v4);
  PKScreenScale();
  v7 = PKColorForFKCategory();
  v2(v5, v6);
  *v3 = v7;
LABEL_3:
  v8 = *(v0 + 216);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  sub_1BD4E3120(v9, v8 + *(v0 + 288));
  sub_1BD4E2A8C(v8, v10, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v9, &qword_1EBD45CC0);
  sub_1BD4E3190(v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1BD4E253C()
{
  result = qword_1EBD481F0;
  if (!qword_1EBD481F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481D8);
    sub_1BD4E25F4();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD481F0);
  }

  return result;
}

unint64_t sub_1BD4E25F4()
{
  result = qword_1EBD481F8;
  if (!qword_1EBD481F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481D0);
    sub_1BD0DE4F4(&qword_1EBD48200, &qword_1EBD481C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD481F8);
  }

  return result;
}

uint64_t sub_1BD4E26AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E2710@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitMerchantHeaderView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4E0508(a1, v6, a2);
}

unint64_t sub_1BD4E2790()
{
  result = qword_1EBD48238;
  if (!qword_1EBD48238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48230);
    sub_1BD4E2848();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48238);
  }

  return result;
}

unint64_t sub_1BD4E2848()
{
  result = qword_1EBD48240;
  if (!qword_1EBD48240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48248);
    sub_1BD4E28D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48240);
  }

  return result;
}

unint64_t sub_1BD4E28D4()
{
  result = qword_1EBD48250;
  if (!qword_1EBD48250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48258);
    sub_1BD4E298C();
    sub_1BD0DE4F4(&qword_1EBD48280, &qword_1EBD48288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48250);
  }

  return result;
}

unint64_t sub_1BD4E298C()
{
  result = qword_1EBD48260;
  if (!qword_1EBD48260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48268);
    sub_1BD223C50();
    sub_1BD0DE4F4(&qword_1EBD48270, &qword_1EBD48278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48260);
  }

  return result;
}

uint64_t sub_1BD4E2A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD4E2A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD4E2AF4()
{
  result = qword_1EBD48320;
  if (!qword_1EBD48320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48310);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48320);
  }

  return result;
}

unint64_t sub_1BD4E2BAC()
{
  result = qword_1EBD48330;
  if (!qword_1EBD48330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48328);
    sub_1BD4E2C64();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48330);
  }

  return result;
}

unint64_t sub_1BD4E2C64()
{
  result = qword_1EBD48338;
  if (!qword_1EBD48338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48338);
  }

  return result;
}

unint64_t sub_1BD4E2CE8()
{
  result = qword_1EBD48348;
  if (!qword_1EBD48348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD482F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48328);
    sub_1BD4E2BAC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48348);
  }

  return result;
}

uint64_t objectdestroyTm_50()
{
  v1 = *(type metadata accessor for FinanceKitMerchantHeaderView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v3 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v4 = v3[5];
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[9];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = v3[10];
  v10 = sub_1BE0491F4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD4E3040()
{
  type metadata accessor for FinanceKitMerchantHeaderView(0);

  return sub_1BD4DF3F4();
}

uint64_t sub_1BD4E30B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E3120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD4E3190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD4E31F0()
{
  result = qword_1EBD48368;
  if (!qword_1EBD48368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481C0);
    sub_1BD4E327C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48368);
  }

  return result;
}

unint64_t sub_1BD4E327C()
{
  result = qword_1EBD48370;
  if (!qword_1EBD48370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48188);
    sub_1BD4E3308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48370);
  }

  return result;
}

unint64_t sub_1BD4E3308()
{
  result = qword_1EBD48378;
  if (!qword_1EBD48378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48180);
    sub_1BD4E3394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48378);
  }

  return result;
}

unint64_t sub_1BD4E3394()
{
  result = qword_1EBD48380;
  if (!qword_1EBD48380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48178);
    sub_1BD4E3420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48380);
  }

  return result;
}

unint64_t sub_1BD4E3420()
{
  result = qword_1EBD48388;
  if (!qword_1EBD48388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481B8);
    sub_1BD4E34D8();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48388);
  }

  return result;
}

unint64_t sub_1BD4E34D8()
{
  result = qword_1EBD48390;
  if (!qword_1EBD48390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481B0);
    sub_1BD4E3590();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48390);
  }

  return result;
}

unint64_t sub_1BD4E3590()
{
  result = qword_1EBD48398;
  if (!qword_1EBD48398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD481A8);
    sub_1BD4E361C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48398);
  }

  return result;
}

unint64_t sub_1BD4E361C()
{
  result = qword_1EBD483A0;
  if (!qword_1EBD483A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48198);
    sub_1BD0DE4F4(&qword_1EBD483A8, &qword_1EBD483B0);
    sub_1BD0DE4F4(&qword_1EBD483B8, &qword_1EBD481A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD483A0);
  }

  return result;
}

uint64_t sub_1BD4E3724(uint64_t a1)
{
  v2 = sub_1BE04E354();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE04EF04();
}

uint64_t sub_1BD4E37EC(SEL *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48448);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v22 - v15;
  v17 = [*v1 *a1];
  sub_1BD0E5E8C(0, &qword_1EBD48450);
  sub_1BE04A1D4();

  sub_1BE04B054();
  sub_1BE04A8F4();
  v18 = sub_1BE052CC4();
  sub_1BE04A1F4();

  if (qword_1EBD36C40 != -1)
  {
    swift_once();
  }

  v19 = sub_1BE052EB4();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v20(v16, v7);
  return v19;
}

id sub_1BD4E3A5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  result = [v0 numberFormatter];
  if (result)
  {
    v2 = result;
    [result setMaximumFractionDigits_];

    result = [v0 setUnitOptions_];
    qword_1EBD483C0 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4E3AE4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - v7;
  v9 = sub_1BE04B2D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE04B2F4();
  v14 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B2A4();
  (*(v10 + 104))(v13, *MEMORY[0x1E6969AB0], v9);
  sub_1BE04AF54();
  sub_1BE04B2E4();
  v18 = *(v1 + 8);
  v31 = v0;
  v19 = v0;
  v20 = v4;
  v21 = v18;
  v18(v8, v19);
  (*(v10 + 8))(v13, v9);
  sub_1BE04B134();
  v22 = *v29;
  v23 = [*v29 date];
  sub_1BE04AEE4();

  if (![v22 isHistoricalEstimate])
  {
    if ([v22 isForPastDate] & 1) != 0 || (sub_1BE04B164())
    {
      goto LABEL_6;
    }

    v25 = [v22 weatherDescription];
LABEL_8:
    v26 = sub_1BE052434();

    goto LABEL_9;
  }

  v24 = sub_1BE052404();
  v25 = PKLocalizedTicketingString(v24);

  if (v25)
  {
    goto LABEL_8;
  }

LABEL_6:
  v26 = 0;
LABEL_9:
  v21(v20, v31);
  (*(v14 + 8))(v17, v30);
  return v26;
}

void sub_1BD4E3E50()
{
  v1 = sub_1BE04B0F4();
  v72 = *(v1 - 8);
  v73 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04A474();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v76 = &v58 - v9;
  v10 = sub_1BE04B2D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE04B2F4();
  v15 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BE04AF64();
  v19 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v58 - v26;
  v28 = *v0;
  v29 = [*v0 date];
  sub_1BE04AEE4();

  sub_1BE04B2A4();
  if ([v28 isHistoricalEstimate])
  {
    v30 = sub_1BE052404();
    v31 = PKLocalizedTicketingString(v30);

    if (v31)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_20;
  }

  if ([v28 isForPastDate] & 1) != 0 || (sub_1BE04B164())
  {
    v31 = [v28 weatherDescription];
LABEL_7:
    sub_1BE052434();

    (*(v15 + 8))(v18, v78);
    (*(v19 + 8))(v27, v79);
    return;
  }

  if (sub_1BE04B1B4())
  {
    v32 = sub_1BE052404();
    v31 = PKLocalizedTicketingString(v32);

    if (v31)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v33 = *MEMORY[0x1E6969AB0];
  v34 = *(v11 + 104);
  v69 = v11 + 104;
  v70 = v34;
  (v34)(v14, v33, v10);
  sub_1BE04AF54();
  sub_1BE04B2E4();
  v67 = *(v19 + 8);
  v67(v22, v79);
  v36 = *(v11 + 8);
  v35 = v11 + 8;
  v68 = v36;
  v36(v14, v10);
  sub_1BE04B134();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v64 = *(v35 + 64);
  v65 = v37;
  v63 = *(v35 + 72);
  v38 = (v63 + 32) & ~v63;
  v39 = swift_allocObject();
  v62 = xmmword_1BE0B69E0;
  *(v39 + 16) = xmmword_1BE0B69E0;
  v61 = *MEMORY[0x1E6969A10];
  v60 = v38;
  v70(v39 + v38);
  sub_1BD111674(v39);
  swift_setDeallocating();
  v68(v39 + v38, v10);
  swift_deallocClassInstance();
  sub_1BE04AF54();
  sub_1BE04B194();

  v67(v22, v79);
  v59 = sub_1BE04A3F4();
  v66 = v40;
  v41 = v60;
  v42 = swift_allocObject();
  *(v42 + 16) = v62;
  (v70)(v42 + v41, v61, v10);
  sub_1BD111674(v42);
  swift_setDeallocating();
  v68(v42 + v41, v10);
  swift_deallocClassInstance();
  sub_1BE04B194();

  v69 = sub_1BE04A3F4();
  LODWORD(v70) = v43;
  v44 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v44 setFormattingContext_];
  v45 = sub_1BE052404();
  [v44 setDateFormat_];

  v46 = v71;
  sub_1BE04AFF4();
  v47 = sub_1BE04B044();
  (*(v72 + 8))(v46, v73);
  [v44 setLocale_];

  v48 = sub_1BE04AE64();
  v49 = [v44 stringFromDate_];

  sub_1BE052434();
  v50 = sub_1BE0524C4();
  v52 = v51;

  if (v66)
  {
    v53 = 1397311572;
    if (v70)
    {
      goto LABEL_17;
    }

LABEL_16:
    v53 = 1415071054;
    goto LABEL_17;
  }

  v53 = 1397311572;
  if ((v70 & 1) != 0 || v59 != v69)
  {
    goto LABEL_16;
  }

LABEL_17:
  strcpy(v80, "TILE_WEATHER_");
  v80[7] = -4864;
  MEMORY[0x1BFB3F610](v53, 0xE400000000000000);
  sub_1BE048C84();
  MEMORY[0x1BFB3F610](95, 0xE100000000000000);

  sub_1BE048C84();
  MEMORY[0x1BFB3F610](v50, v52);

  v54 = sub_1BE052404();

  v55 = PKLocalizedTicketingString(v54);

  if (v55)
  {

    sub_1BE052434();

    v56 = v75;
    v57 = *(v74 + 8);
    v57(v77, v75);
    v57(v76, v56);
    (*(v15 + 8))(v18, v78);
    v67(v27, v79);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1BD4E4758()
{
  v1 = v0;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04F7B4();
  v21 = 0;
  sub_1BD4E49A0(v1, v25);
  memcpy(v23, v25, 0x181uLL);
  memcpy(v24, v25, 0x181uLL);
  sub_1BD0DE19C(v23, v19, &qword_1EBD483E8);
  sub_1BD0DE53C(v24, &qword_1EBD483E8);
  memcpy(&v20[7], v23, 0x181uLL);
  v8 = v21;
  [objc_opt_self() defaultHorizontalInset];
  LOBYTE(v1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v22 = 0;
  v19[0] = v7;
  v19[1] = 0x4010000000000000;
  LOBYTE(v19[2]) = v8;
  memcpy(&v19[2] + 1, v20, 0x188uLL);
  LOBYTE(v19[52]) = v1;
  v19[53] = v10;
  v19[54] = v12;
  v19[55] = v14;
  v19[56] = v16;
  LOBYTE(v19[57]) = 0;
  sub_1BE04FF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD483F0);
  sub_1BD4E7480();
  sub_1BE050D14();
  (*(v3 + 8))(v6, v2);
  memcpy(v25, v19, 0x1C9uLL);
  return sub_1BD0DE53C(v25, &qword_1EBD483F0);
}

uint64_t sub_1BD4E49A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1BE04F504();
  sub_1BD4E4EB8(a1, &v46);
  v22 = *&v47[48];
  v23 = *&v47[64];
  v24 = *&v47[80];
  v18 = v46;
  v19 = *v47;
  v20 = *&v47[16];
  v21 = *&v47[32];
  v25[0] = v46;
  v25[1] = *v47;
  v25[2] = *&v47[16];
  v25[3] = *&v47[32];
  v25[4] = *&v47[48];
  v25[5] = *&v47[64];
  v26 = *&v47[80];
  sub_1BD0DE19C(&v18, __src, &qword_1EBD48410);
  sub_1BD0DE53C(v25, &qword_1EBD48410);
  *(&v17[3] + 7) = v21;
  *(&v17[4] + 7) = v22;
  *(&v17[5] + 7) = v23;
  *(v17 + 7) = v18;
  *(&v17[1] + 7) = v19;
  *(&v17[6] + 7) = v24;
  *(&v17[2] + 7) = v20;
  v4 = sub_1BE04F4B4();
  LOBYTE(v7[0]) = 1;
  sub_1BD4E6124(a1, &v46);
  v38 = *&v47[160];
  v39 = *&v47[176];
  v40[0] = *&v47[192];
  *(v40 + 9) = *&v47[201];
  v35 = *&v47[112];
  v36 = *&v47[128];
  v37 = *&v47[144];
  v31 = *&v47[48];
  v32 = *&v47[64];
  v33 = *&v47[80];
  v34 = *&v47[96];
  v27 = v46;
  v28 = *v47;
  v29 = *&v47[16];
  v30 = *&v47[32];
  v41[11] = *&v47[160];
  v41[12] = *&v47[176];
  v42[0] = *&v47[192];
  *(v42 + 9) = *&v47[201];
  v41[8] = *&v47[112];
  v41[9] = *&v47[128];
  v41[10] = *&v47[144];
  v41[4] = *&v47[48];
  v41[5] = *&v47[64];
  v41[6] = *&v47[80];
  v41[7] = *&v47[96];
  v41[0] = v46;
  v41[1] = *v47;
  v41[2] = *&v47[16];
  v41[3] = *&v47[32];
  sub_1BD0DE19C(&v27, __src, &qword_1EBD48418);
  sub_1BD0DE53C(v41, &qword_1EBD48418);
  *(&v16[11] + 7) = v38;
  *(&v16[12] + 7) = v39;
  *(&v16[13] + 7) = v40[0];
  v16[14] = *(v40 + 9);
  *(&v16[7] + 7) = v34;
  *(&v16[8] + 7) = v35;
  *(&v16[9] + 7) = v36;
  *(&v16[10] + 7) = v37;
  *(&v16[3] + 7) = v30;
  *(&v16[4] + 7) = v31;
  *(&v16[5] + 7) = v32;
  *(&v16[6] + 7) = v33;
  *(v16 + 7) = v27;
  *(&v16[1] + 7) = v28;
  *(&v16[2] + 7) = v29;
  v43[0] = v5;
  v43[1] = 0;
  LOBYTE(v44[0]) = 1;
  *(&v44[5] + 10) = *(&v17[5] + 9);
  *(&v44[5] + 1) = v17[5];
  *(&v44[4] + 1) = v17[4];
  *(&v44[1] + 1) = v17[1];
  *(v44 + 1) = v17[0];
  *(&v44[3] + 1) = v17[3];
  *(&v44[2] + 1) = v17[2];
  v15[4] = v44[3];
  v15[5] = v44[4];
  v15[6] = v44[5];
  *(&v15[6] + 10) = *(&v44[5] + 10);
  v15[0] = v5;
  v15[1] = v44[0];
  v15[2] = v44[1];
  v15[3] = v44[2];
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  *(&__src[6] + 1) = v16[2];
  *(&__src[4] + 1) = v16[1];
  *(&__src[2] + 1) = v16[0];
  *(&__src[14] + 1) = v16[6];
  *(&__src[12] + 1) = v16[5];
  *(&__src[10] + 1) = v16[4];
  *(&__src[8] + 1) = v16[3];
  *(&__src[22] + 1) = v16[10];
  *(&__src[20] + 1) = v16[9];
  *(&__src[18] + 1) = v16[8];
  *(&__src[16] + 1) = v16[7];
  *(&__src[30] + 1) = *(v40 + 9);
  *(&__src[28] + 1) = v16[13];
  *(&__src[26] + 1) = v16[12];
  *(&__src[24] + 1) = v16[11];
  memcpy(&v15[8], __src, 0x101uLL);
  memcpy(a2, v15, 0x181uLL);
  *&v47[177] = v16[11];
  *&v47[193] = v16[12];
  *&v47[209] = v16[13];
  v48 = v16[14];
  *&v47[113] = v16[7];
  *&v47[129] = v16[8];
  *&v47[145] = v16[9];
  *&v47[161] = v16[10];
  *&v47[49] = v16[3];
  *&v47[65] = v16[4];
  *&v47[81] = v16[5];
  *&v47[97] = v16[6];
  *&v47[1] = v16[0];
  *&v47[17] = v16[1];
  v46 = v4;
  v47[0] = 1;
  *&v47[33] = v16[2];
  sub_1BD0DE19C(v43, v7, &qword_1EBD48420);
  sub_1BD0DE19C(__src, v7, &qword_1EBD48428);
  sub_1BD0DE53C(&v46, &qword_1EBD48428);
  v12 = v17[3];
  v13 = v17[4];
  v14[0] = v17[5];
  *(v14 + 9) = *(&v17[5] + 9);
  v9 = v17[0];
  v10 = v17[1];
  v7[0] = v5;
  v7[1] = 0;
  v8 = 1;
  v11 = v17[2];
  return sub_1BD0DE53C(v7, &qword_1EBD48420);
}

id sub_1BD4E4EB8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v109 = v105 - v5;
  *&v118 = sub_1BE04E354();
  v112 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v6);
  v111 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v110 = v105 - v11;
  *&v119 = a1;
  v12 = *a1;
  v13 = [*a1 cityName];
  v14 = sub_1BE052434();
  v16 = v15;

  *&v128 = v14;
  *(&v128 + 1) = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_1BE050324();
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;

  sub_1BD0DDF10(v17, v19, v16 & 1);

  sub_1BE0503A4();
  v26 = sub_1BE050544();
  v28 = v27;
  v30 = v29;
  sub_1BD0DDF10(v21, v23, v25 & 1);

  v31 = [objc_opt_self() labelColor];
  *&v128 = sub_1BE0511C4();
  v115 = sub_1BE050574();
  v114 = v32;
  v113 = v33;
  v116 = v34;
  sub_1BD0DDF10(v26, v28, v30 & 1);

  v35 = [v12 lightSymbol];
  if (!v35)
  {
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v12 darkSymbol];
  if (!v37)
  {

LABEL_22:
    v57 = 0uLL;
    v120 = 0u;
    v58 = -512;
LABEL_23:
    v119 = v57;
    v118 = v57;
LABEL_61:
    v113 &= 1u;
    LOBYTE(v128) = v113;
    LOBYTE(v123) = 1;
    v95 = v115;
    v96 = v114;
    sub_1BD0D7F18(v115, v114, v113);
    v97 = v116;
    sub_1BE048C84();
    v98 = v120;
    v99 = v119;
    v100 = v118;
    sub_1BD4E7538(v120, *(&v120 + 1), v119, *(&v119 + 1), v118, *(&v118 + 1), v58);
    sub_1BD4E7670(v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v58);
    v101 = v128;
    v102 = v123;
    v103 = v117;
    *v117 = v95;
    v103[1] = v96;
    *(v103 + 16) = v101;
    v103[3] = v97;
    v103[4] = 0;
    *(v103 + 40) = v102;
    v104 = v119;
    *(v103 + 3) = v120;
    *(v103 + 4) = v104;
    *(v103 + 5) = v118;
    *(v103 + 48) = v58;
    sub_1BD4E7670(v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v58);
    sub_1BD0DDF10(v95, v96, v113);
  }

  v38 = v37;
  v108 = *(type metadata accessor for TileContextWeatherView() + 20);
  *&v120 = v38;
  v39 = v110;
  sub_1BD70A078(v110);
  v107 = *MEMORY[0x1E697DBB8];
  v40 = v112;
  v106 = *(v112 + 104);
  v41 = v111;
  v42 = v118;
  v106(v111);
  LOBYTE(v38) = sub_1BE04E344();
  v43 = *(v40 + 8);
  v43(v41, v42);
  v43(v39, v42);
  if (v38)
  {
    v44 = v36;
  }

  else
  {
    v44 = v120;
  }

  v45 = [v44 symbolName];
  v105[1] = sub_1BE052434();
  v112 = v46;

  sub_1BD70A078(v39);
  (v106)(v41, v107, v42);
  LOBYTE(v45) = sub_1BE04E344();
  v43(v41, v42);
  v47 = v39;
  v48 = v120;
  v43(v47, v42);
  if (v45)
  {
    result = [v36 colorPalette];
    if (!result)
    {
      goto LABEL_69;
    }

    v50 = result;
    v51 = v36;
    sub_1BD0E5E8C(0, &qword_1EBD43100);
    v52 = sub_1BE052744();

    *&v128 = MEMORY[0x1E69E7CC0];
    if (v52 >> 62)
    {
      goto LABEL_43;
    }

    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      goto LABEL_46;
    }

LABEL_10:
    v54 = 0;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v54, v52);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v55 = *(v52 + 8 * v54 + 32);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v48 = sub_1BE0511C4();
      MEMORY[0x1BFB3F7A0]();
      if (*(v128 + 16) >= *(v128 + 24) >> 1)
      {
        *&v119 = v51;
        sub_1BE052774();
        v51 = v119;
      }

      sub_1BE0527C4();
      ++v54;
      if (v56 == v53)
      {
        goto LABEL_38;
      }
    }
  }

  result = [v48 colorPalette];
  if (!result)
  {
    goto LABEL_70;
  }

  v59 = result;
  sub_1BD0E5E8C(0, &qword_1EBD43100);
  v52 = sub_1BE052744();

  *&v128 = MEMORY[0x1E69E7CC0];
  v51 = v36;
  if (v52 >> 62)
  {
    v60 = sub_1BE053704();
    if (!v60)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_46;
    }
  }

  v61 = 0;
  while ((v52 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB40900](v61, v52);
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_40;
    }

LABEL_31:
    v48 = sub_1BE0511C4();
    MEMORY[0x1BFB3F7A0]();
    if (*(v128 + 16) >= *(v128 + 24) >> 1)
    {
      *&v119 = v51;
      sub_1BE052774();
      v51 = v119;
    }

    sub_1BE0527C4();
    ++v61;
    if (v63 == v60)
    {
LABEL_38:
      v64 = v128;
      v48 = v120;
      goto LABEL_47;
    }
  }

  if (v61 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v62 = *(v52 + 8 * v61 + 32);
  v63 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  v53 = sub_1BE053704();
  if (v53)
  {
    goto LABEL_10;
  }

LABEL_46:
  v64 = MEMORY[0x1E69E7CC0];
LABEL_47:

  v65 = v64[2];
  if (v65 >= 3)
  {
    sub_1BE051574();
    v77 = v109;
    sub_1BE04F814();
    v78 = sub_1BE04F824();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    v79 = sub_1BE0515B4();

    result = sub_1BD0DE53C(v77, &qword_1EBD41F00);
    v80 = v64[2];
    if (v80)
    {
      if (v80 != 1)
      {
        *&v119 = v51;
        if (v80 >= 3)
        {
          v81 = v64[4];
          v82 = v64[5];
          v83 = v64[6];
          sub_1BE048964();
          v112 = v82;
          sub_1BE048964();
          sub_1BE048964();

          v84 = sub_1BE050324();
          KeyPath = swift_getKeyPath();
          *&v123 = v79;
          *(&v123 + 1) = v81;
          v111 = v79;
          *&v118 = v81;
          *&v124 = v82;
          *(&v124 + 1) = v83;
          v110 = v83;
          *&v125 = KeyPath;
          *(&v125 + 1) = v84;
          v109 = KeyPath;
          v108 = v84;
          LOBYTE(v126) = 0;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48458);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48460);
          sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &unk_1BE0DC070, sub_1BD4E77A4);
          sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &unk_1BE0DC078, sub_1BD324274);
          sub_1BE04F9A4();
          v86 = v128;
          v87 = v129;
          v88 = v130;
          LOBYTE(v82) = v131;
          LOBYTE(v121) = v131;
          v127 = 0;
          v131 = v131;
          sub_1BD4E75DC(v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490);
          sub_1BD4E785C();
          sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &unk_1BE0DC090, sub_1BD4E79F0);
          sub_1BE04F9A4();

          sub_1BD4E7710(v86, *(&v86 + 1), v87, *(&v87 + 1), v88, *(&v88 + 1), v82);

LABEL_57:

LABEL_60:
          v58 = v126;
          v131 = v126;
          v129 = v124;
          v130 = v125;
          v128 = v123;
          v119 = v124;
          v120 = v123;
          v118 = v125;
          sub_1BD0DE19C(&v128, &v123, &unk_1EBD484B0);
          goto LABEL_61;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v65 == 1)
  {
    *&v119 = v51;
    sub_1BE051574();
    v89 = v109;
    sub_1BE04F814();
    v90 = sub_1BE04F824();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    v91 = sub_1BE0515B4();

    result = sub_1BD0DE53C(v89, &qword_1EBD41F00);
    if (!v64[2])
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v92 = v64[4];
    sub_1BE048964();

    v93 = sub_1BE050324();
    v94 = swift_getKeyPath();
    v127 = 1;
    *&v128 = v91;
    *(&v128 + 1) = v92;
    *&v129 = v94;
    *(&v129 + 1) = v93;
    v130 = v121;
    LOBYTE(v131) = v122;
    HIBYTE(v131) = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490);
    sub_1BD4E785C();
    sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &unk_1BE0DC090, sub_1BD4E79F0);
    sub_1BE04F9A4();

    goto LABEL_60;
  }

  if (v65 != 2)
  {

    v57 = 0uLL;
    v120 = 0u;
    v58 = -256;
    goto LABEL_23;
  }

  sub_1BE051574();
  v66 = v109;
  sub_1BE04F814();
  v67 = sub_1BE04F824();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_1BE0515B4();

  result = sub_1BD0DE53C(v66, &qword_1EBD41F00);
  v69 = v64[2];
  if (!v69)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *&v119 = v51;
  if (v69 != 1)
  {
    v70 = v64[4];
    v71 = v64[5];
    sub_1BE048964();
    sub_1BE048964();

    v72 = sub_1BE050324();
    v73 = swift_getKeyPath();
    *&v123 = v68;
    *(&v123 + 1) = v70;
    *&v118 = v70;
    v112 = v71;
    *&v124 = v71;
    *(&v124 + 1) = v73;
    v111 = v73;
    v125 = v72;
    v109 = v72;
    LOBYTE(v126) = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48458);
    v110 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48460);
    sub_1BD4E7940(&qword_1EBD48468, &qword_1EBD48458, &unk_1BE0DC070, sub_1BD4E77A4);
    sub_1BD4E7940(&qword_1EBD48480, &qword_1EBD48460, &unk_1BE0DC078, sub_1BD324274);
    sub_1BE04F9A4();
    v108 = *(&v128 + 1);
    v74 = v128;
    v75 = v129;
    v76 = v130;
    LOBYTE(v71) = v131;
    LOBYTE(v121) = v131;
    v127 = 0;
    v131 = v131;
    sub_1BD4E75DC(v128, *(&v128 + 1), v129, *(&v129 + 1), v130, *(&v130 + 1), v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48490);
    sub_1BD4E785C();
    sub_1BD4E7940(&qword_1EBD484A0, &qword_1EBD48490, &unk_1BE0DC090, sub_1BD4E79F0);
    sub_1BE04F9A4();

    sub_1BD4E7710(v74, v108, v75, *(&v75 + 1), v76, *(&v76 + 1), v71);

    goto LABEL_57;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}