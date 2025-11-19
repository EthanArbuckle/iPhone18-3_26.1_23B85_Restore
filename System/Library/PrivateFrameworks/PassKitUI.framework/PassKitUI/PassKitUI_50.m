void sub_1BD57B078(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v35 - v8;
  v35[0] = sub_1BD57AE84();
  v35[1] = v10;
  v11 = *MEMORY[0x1E69B80B0];
  v12 = *(v2 + 104);
  v12(v9, v11, v1);
  v13 = PKPassKitBundle();
  if (!v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v13;
  v37 = sub_1BE04B6F4();
  v16 = v15;

  v17 = *(v2 + 8);
  v17(v9, v1);
  if (PKOslo2024UIUpdatesEnabled())
  {

    v37 = 0;
    v16 = 0;
  }

  v12(v6, v11, v1);
  v18 = PKPassKitBundle();
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  sub_1BE04B6F4();

  v17(v6, v1);
  if (PKOslo2024UIUpdatesEnabled())
  {

    sub_1BD57AE84();
  }

  v20 = v37;
  v21 = sub_1BE052404();

  v22 = [v21 pk_stringIfNotEmpty];

  if (v22)
  {
    v23 = sub_1BE052434();
    v25 = v24;

    if (!v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  v26 = sub_1BE052404();

  v27 = [v26 pk_stringIfNotEmpty];

  if (v27)
  {
    v20 = sub_1BE052434();
    v16 = v28;
  }

  else
  {
    v20 = 0;
    v16 = 0;
  }

LABEL_14:
  v29 = sub_1BE052404();

  v30 = [v29 pk_stringIfNotEmpty];

  if (v30)
  {
    v31 = sub_1BE052434();
    v33 = v32;
  }

  else
  {
    sub_1BE048C84();
    v31 = v20;
    v33 = v16;
  }

  v34 = v36;
  *v36 = v23;
  v34[1] = v25;
  v34[2] = v20;
  v34[3] = v16;
  v34[4] = v31;
  v34[5] = v33;
  *(v34 + 48) = 0;
}

uint64_t sub_1BD57B474(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD3F790);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD3F790);
}

uint64_t sub_1BD57B5E8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v9 + v7, a3, a2);
}

uint64_t sub_1BD57B6C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v7 + v8, a4, a3);
}

uint64_t sub_1BD57B7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1BD0DE19C(a1, &v7 - v4, &qword_1EBD3F788);
  return sub_1BD57B858(v5);
}

uint64_t sub_1BD57B858(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD3F788);
  v8 = sub_1BD580FA8(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD3F788);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD3F788);
    swift_beginAccess();
    sub_1BD273C60(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788);
}

uint64_t sub_1BD57BA60()
{
  swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading);
}

uint64_t sub_1BD57BB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading);
  return result;
}

uint64_t sub_1BD57BBB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD57BCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v24 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  v12 = _s22MerchantBrandViewModelVMa(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext;
  v14 = type metadata accessor for TransactionContext(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v3 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  v17 = sub_1BE048F54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v3 + v16, 1, 1, v17);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading) = 0;
  sub_1BE04B5C4();
  sub_1BD583204(v26, v10, type metadata accessor for TransactionContext);
  v15(v10, 0, 1, v14);
  swift_getKeyPath();
  v27 = v3;
  v28 = v10;
  v29 = v3;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B584();

  sub_1BD0DE53C(v10, &qword_1EBD3F790);
  v20 = v24;
  v21 = v25;
  (*(v18 + 16))(v24, v25, v17);
  v19(v20, 0, 1, v17);
  sub_1BD57B858(v20);
  (*(v18 + 8))(v21, v17);
  sub_1BD5832D4(v26, type metadata accessor for TransactionContext);
  return v3;
}

uint64_t sub_1BD57C030()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_1BE04AFE4();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v5 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v6 = sub_1BE049A94();
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v1[42] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v1[43] = v7;
  v1[44] = *(v7 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CB8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v8 = sub_1BE048F54();
  v1[52] = v8;
  v1[53] = *(v8 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  sub_1BE0528A4();
  v1[56] = sub_1BE052894();
  v10 = sub_1BE052844();
  v1[57] = v10;
  v1[58] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD57C4F0, v10, v9);
}

uint64_t sub_1BD57C4F0()
{
  v1 = v0[20];
  swift_getKeyPath();
  v0[8] = v1;
  v0[59] = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel___observationRegistrar;
  v0[60] = sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading;
  v0[61] = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__isLoading;
  if (*(v1 + v2))
  {

    goto LABEL_5;
  }

  v3 = v0[53];
  v24 = v0[51];
  v25 = v0[52];
  v4 = v0[20];
  swift_getKeyPath();
  v0[9] = v4;
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v24, &qword_1EBD3F788);
  if ((*(v3 + 48))(v24, 1, v25) == 1)
  {
    v6 = v0[51];

    sub_1BD0DE53C(v6, &qword_1EBD3F788);
    goto LABEL_5;
  }

  (*(v0[53] + 32))(v0[55], v0[51], v0[52]);
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v9 = v0[20];
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    v0[10] = v9;
    sub_1BE04B584();
  }

  v11 = v0[49];
  v12 = v0[20];
  swift_getKeyPath();
  v0[11] = v12;
  sub_1BE04B594();

  v13 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v12 + v13, v11, &qword_1EBD49CB8);
  v14 = _s22MerchantBrandViewModelVMa(0);
  v0[62] = v14;
  v15 = *(v14 - 8);
  v0[63] = v15;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v18 = v0[49];

    sub_1BD0DE53C(v18, &qword_1EBD49CB8);
    v19 = v0[61];
    v20 = v0[20];
    if (*(v20 + v19))
    {
      v26 = v0[55];
      v22 = v0[52];
      v21 = v0[53];
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v20;
      *(v23 + 24) = 0;
      v0[13] = v20;
      sub_1BE04B584();

      (*(v21 + 8))(v26, v22);
    }

    else
    {
      (*(v0[53] + 8))(v0[55], v0[52]);
      *(v20 + v19) = 0;
    }

LABEL_5:

    v7 = v0[1];

    return v7();
  }

  sub_1BD0DE53C(v0[49], &qword_1EBD49CB8);
  v16 = swift_task_alloc();
  v0[64] = v16;
  *v16 = v0;
  v16[1] = sub_1BD57CAE4;
  v17 = v0[42];

  return sub_1BD57EFA0(v17);
}

uint64_t sub_1BD57CAE4()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_1BD57E504;
  }

  else
  {
    v5 = sub_1BD57CC20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD57CC20()
{
  v1 = v0[43];
  v2 = v0[42];
  if ((*(v0[44] + 48))(v2, 1, v1) == 1)
  {

    sub_1BD0DE53C(v2, &qword_1EBD3F790);
    v3 = v0[61];
    v4 = v0[20];
    if (*(v4 + v3))
    {
      v5 = v0[55];
      v6 = v0[52];
      v7 = v0[53];
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = v4;
      *(v8 + 24) = 0;
      v0[13] = v4;
      sub_1BE04B584();

      (*(v7 + 8))(v5, v6);
    }

    else
    {
      (*(v0[53] + 8))(v0[55], v0[52]);
      *(v4 + v3) = 0;
    }

    goto LABEL_12;
  }

  v9 = v0[54];
  v10 = v0[53];
  v40 = v0[52];
  v41 = v0[55];
  v12 = v0[45];
  v11 = v0[46];
  v13 = v0[41];
  v15 = v0[38];
  v14 = v0[39];
  v39 = v0[37];
  v42 = v0[35];
  v43 = v0[65];
  sub_1BD58326C(v2, v11, type metadata accessor for TransactionContext);
  v16 = *(v14 + 16);
  v0[66] = v16;
  v0[67] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v13, v11, v15);
  sub_1BD583204(v11, v12, type metadata accessor for TransactionContext);
  v17 = *(v10 + 16);
  v0[68] = v17;
  v0[69] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v9, v41, v40);
  sub_1BD60709C(v12, v9, v39);
  sub_1BD0DE19C(v11 + *(v1 + 28), v42, &qword_1EBD3F7C0);
  v0[70] = sub_1BD5812C8(v13, v42);
  v0[71] = v43;
  if (v43)
  {
    v18 = v0[61];
    v19 = v0[46];
    v20 = v0[41];
    v21 = v0[38];
    v22 = v0[39];
    v23 = v0[37];
    v24 = v0[35];
    v25 = v0[20];

    sub_1BD0DE53C(v24, &qword_1EBD3F7C0);
    sub_1BD5832D4(v23, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    (*(v22 + 8))(v20, v21);
    sub_1BD5832D4(v19, type metadata accessor for TransactionContext);
    if (*(v25 + v18))
    {
      v26 = v0[55];
      v27 = v0[52];
      v28 = v0[53];
      v29 = v0[20];
      swift_getKeyPath();
      v30 = swift_task_alloc();
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      v0[14] = v29;
      sub_1BE04B584();

      (*(v28 + 8))(v26, v27);
    }

    else
    {
      v36 = v0[61];
      v37 = v0[20];
      (*(v0[53] + 8))(v0[55], v0[52]);
      *(v37 + v36) = 0;
    }

LABEL_12:

    v38 = v0[1];

    return v38();
  }

  v31 = swift_task_alloc();
  v0[72] = v31;
  *v31 = v0;
  v31[1] = sub_1BD57D2A0;
  v32 = v0[41];
  v33 = v0[35];
  v34 = v0[33];

  return sub_1BD4E0F68(v34, v32, v33);
}

uint64_t sub_1BD57D2A0()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return MEMORY[0x1EEE6DFA0](sub_1BD57D3C0, v3, v2);
}

uint64_t sub_1BD57D3C0()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[48];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[32];
  v7 = v0[30];
  v26 = v0[31];
  v24 = v0[33];
  v25 = v7;
  v8 = v0[29];
  v27 = v0[28];
  v28 = v0[70];
  v9 = v0[23];
  v23 = v0[22];
  v29 = v0[20];
  sub_1BD0DE19C(v0[35], v5, &qword_1EBD3F7C0);
  sub_1BD51FF8C(v5, v7);
  sub_1BD583204(v4, &v3[v1[5]], type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v10 = v1[6];
  v11 = *(v9 + 56);
  v0[73] = v11;
  v0[74] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(&v3[v10], 1, 1, v23);
  v12 = v1[8];
  sub_1BD583204(v24, &v3[v12], type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v13 = *(v6 + 56);
  v0[75] = v13;
  v0[76] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(&v3[v12], 0, 1, v26);
  v14 = v1[9];
  sub_1BD583204(v25, &v3[v14], type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v15 = *(v8 + 56);
  v0[77] = v15;
  v0[78] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(&v3[v14], 0, 1, v27);
  *v3 = v28;
  v16 = &v3[v1[7]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = *(v2 + 56);
  v0[79] = v17;
  v0[80] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v3, 0, 1, v1);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v29;
  *(v18 + 24) = v3;
  v0[15] = v29;
  v19 = v28;
  sub_1BE04B584();

  sub_1BD0DE53C(v3, &qword_1EBD49CB8);
  v20 = swift_task_alloc();
  v0[81] = v20;
  *v20 = v0;
  v20[1] = sub_1BD57D6C4;
  v21 = v0[41];

  return sub_1BD581B04(v21);
}

uint64_t sub_1BD57D6C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 656) = a1;
  *(v4 + 664) = v1;

  v5 = *(v3 + 464);
  v6 = *(v3 + 456);
  if (v1)
  {
    v7 = sub_1BD57DA00;
  }

  else
  {
    v7 = sub_1BD57D80C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD57D80C()
{
  v1 = *(v0 + 656);
  sub_1BE0490F4();
  *(v0 + 672) = sub_1BE0490B4();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 656);
    v5 = *(v0 + 312);
    v6 = *(v0 + 208);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v3 = v18;
    v7 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v8 = (v5 + 8);
    do
    {
      v9 = *(v0 + 320);
      v10 = *(v0 + 304);
      (*(v0 + 528))(v9, v7, v10);
      sub_1BE049A14();
      (*v8)(v9, v10);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BD531F28(v11 > 1, v12 + 1, 1);
      }

      v13 = *(v0 + 216);
      v14 = *(v0 + 200);
      *(v18 + 16) = v12 + 1;
      (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
      v7 += v17;
      --v2;
    }

    while (v2);
  }

  *(v0 + 680) = v3;
  v15 = swift_task_alloc();
  *(v0 + 688) = v15;
  *v15 = v0;
  v15[1] = sub_1BD57DD24;

  return MEMORY[0x1EEDC1510](v3);
}

uint64_t sub_1BD57DA00()
{
  v1 = v0[70];
  v19 = v0[46];
  v20 = v0[61];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[20];

  sub_1BD5832D4(v8, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v7, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
  sub_1BD5832D4(v5, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v4 + 8))(v2, v3);
  sub_1BD5832D4(v19, type metadata accessor for TransactionContext);
  if (*(v9 + v20) == 1)
  {
    v10 = v0[55];
    v11 = v0[52];
    v12 = v0[53];
    v13 = v0[20];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[16] = v13;
    sub_1BE04B584();

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v15 = v0[61];
    v16 = v0[20];
    (*(v0[53] + 8))(v0[55], v0[52]);
    *(v16 + v15) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD57DD24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {

    v5 = v4[57];
    v6 = v4[58];
    v7 = sub_1BD57E75C;
  }

  else
  {
    v4[88] = a1;
    v5 = v4[57];
    v6 = v4[58];
    v7 = sub_1BD57DE9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD57DE9C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 656);
  v50 = *(v0 + 544);
  v3 = *(v0 + 440);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 368);
  v59 = *(v0 + 296);
  v55 = *(v0 + 328);
  v57 = *(v0 + 288);
  v53 = *(v0 + 192);

  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  v9 = sub_1BDA3DA80(sub_1BD582380, v8, v2);

  v50(v6, v3, v5);
  v10 = 1;
  (*(v4 + 56))(v6, 0, 1, v5);
  sub_1BD720F44(v9, v6, v53);
  sub_1BD5823A0(v2, v55);
  v47 = v12;
  v48 = v11;
  v45 = v14;
  v46 = v13;
  sub_1BD583204(v59, v57, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v15 = *(v2 + 16);

  if (v15)
  {
    sub_1BD583204(*(v0 + 192), *(v0 + 168), type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
    v10 = 0;
  }

  v42 = *(v0 + 632);
  v40 = *(v0 + 616);
  v16 = *(v0 + 600);
  v39 = *(v0 + 560);
  v17 = *(v0 + 496);
  v60 = *(v0 + 488);
  v18 = *(v0 + 376);
  v56 = *(v0 + 328);
  v58 = *(v0 + 368);
  v52 = *(v0 + 312);
  v54 = *(v0 + 304);
  v38 = *(v0 + 288);
  v49 = *(v0 + 280);
  v51 = *(v0 + 296);
  v19 = *(v0 + 264);
  v43 = v19;
  v21 = *(v0 + 240);
  v20 = *(v0 + 248);
  v22 = *(v0 + 224);
  v44 = *(v0 + 192);
  v23 = *(v0 + 168);
  v41 = *(v0 + 160);
  (*(v0 + 584))(v23, v10, 1, *(v0 + 176));
  v24 = v17[8];
  sub_1BD583204(v19, &v18[v24], type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v16(&v18[v24], 0, 1, v20);
  v25 = v17[9];
  sub_1BD583204(v21, &v18[v25], type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v40(&v18[v25], 0, 1, v22);
  *v18 = v39;
  sub_1BD58326C(v38, &v18[v17[5]], type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BD0DE204(v23, &v18[v17[6]], &qword_1EBD3F780);
  v26 = &v18[v17[7]];
  *v26 = v48;
  *(v26 + 1) = v47;
  *(v26 + 2) = v46;
  *(v26 + 3) = v45;
  v42(v18, 0, 1, v17);
  swift_getKeyPath();
  v27 = swift_task_alloc();
  *(v27 + 16) = v41;
  *(v27 + 24) = v18;
  *(v0 + 144) = v41;
  v28 = v39;
  sub_1BE04B584();

  sub_1BD5832D4(v44, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  sub_1BD5832D4(v21, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v43, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v49, &qword_1EBD3F7C0);
  sub_1BD5832D4(v51, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v52 + 8))(v56, v54);

  sub_1BD0DE53C(v18, &qword_1EBD49CB8);
  sub_1BD5832D4(v58, type metadata accessor for TransactionContext);
  if (*(v41 + v60) == 1)
  {
    v29 = *(v0 + 440);
    v30 = *(v0 + 416);
    v31 = *(v0 + 424);
    v32 = *(v0 + 160);
    swift_getKeyPath();
    v33 = swift_task_alloc();
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v0 + 152) = v32;
    sub_1BE04B584();

    (*(v31 + 8))(v29, v30);
  }

  else
  {
    v34 = *(v0 + 488);
    v35 = *(v0 + 160);
    (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));
    *(v35 + v34) = 0;
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1BD57E504()
{
  v1 = v0[61];
  v2 = v0[20];

  if (*(v2 + v1) == 1)
  {
    v3 = v0[55];
    v4 = v0[52];
    v5 = v0[53];
    v6 = v0[20];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[12] = v6;
    sub_1BE04B584();

    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v8 = v0[61];
    v9 = v0[20];
    (*(v0[53] + 8))(v0[55], v0[52]);
    *(v9 + v8) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD57E75C()
{
  v1 = v0[70];
  v19 = v0[46];
  v20 = v0[61];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[20];

  sub_1BD5832D4(v8, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BD5832D4(v7, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
  sub_1BD5832D4(v5, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  (*(v4 + 8))(v2, v3);
  sub_1BD5832D4(v19, type metadata accessor for TransactionContext);
  if (*(v9 + v20) == 1)
  {
    v10 = v0[55];
    v11 = v0[52];
    v12 = v0[53];
    v13 = v0[20];
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[17] = v13;
    sub_1BE04B584();

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v15 = v0[61];
    v16 = v0[20];
    (*(v0[53] + 8))(v0[55], v0[52]);
    *(v16 + v15) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD57EA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = &v41 - v11;
  v43 = sub_1BE049184();
  v50 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v12);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE0495A4();
  v14 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v15);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE049A94();
  v17 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE04AFE4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049A14();
  if (*(a2 + 16) && (v26 = sub_1BD14951C(v25), (v27 & 1) != 0))
  {
    v28 = *(*(a2 + 56) + 8 * v26);
    v29 = *(v22 + 8);
    sub_1BE048C84();
    v29(v25, v21);
  }

  else
  {
    (*(v22 + 8))(v25, v21);
    v28 = 0;
  }

  v30 = v41;
  (*(v17 + 16))(v20, a1, v41);
  v31 = type metadata accessor for TransactionContext(0);
  v32 = v42;
  (*(v14 + 16))(v47, v42 + v31[5], v48);
  v33 = v43;
  (*(v50 + 16))(v49, v32 + v31[6], v43);
  v35 = v44;
  v34 = v45;
  if (v28)
  {
    v36 = sub_1BE048C84();
    sub_1BD735DE0(v36, v35);

    sub_1BD735E14(v28, v34);
  }

  else
  {
    v37 = sub_1BE0491B4();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    v38 = sub_1BE049E04();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  }

  v39 = v46;
  (*(v17 + 32))(v46, v20, v30);
  (*(v14 + 32))(v39 + v31[5], v47, v48);
  (*(v50 + 32))(v39 + v31[6], v49, v33);
  sub_1BD0DE204(v35, v39 + v31[7], &qword_1EBD3F7C0);
  return sub_1BD0DE204(v34, v39 + v31[8], &qword_1EBD3F7B8);
}

uint64_t sub_1BD57EFA0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1BE04D214();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v2[18] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_1BE049A94();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for TransactionContext(0);
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_1BE0528A4();
  v2[34] = sub_1BE052894();
  v9 = sub_1BE052844();
  v2[35] = v9;
  v2[36] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD57F298, v9, v8);
}

uint64_t sub_1BD57F298()
{
  v27 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[13];
  swift_getKeyPath();
  v0[10] = v4;
  sub_1BD581934(&qword_1EBD49CC8, _s9ViewModelCMa_2);
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext;
  swift_beginAccess();
  sub_1BD0DE19C(v4 + v5, v3, &qword_1EBD3F790);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[29];

    sub_1BD0DE53C(v6, &qword_1EBD3F790);
    sub_1BE04D114();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C34();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1BD123690(0xD000000000000012, 0x80000001BE12F150, &v26);
      _os_log_impl(&dword_1BD026000, v7, v8, "Failed to reload transaction. The %s object is nil.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1BFB45F20](v14, -1, -1);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    (*(v0[31] + 56))(v0[12], 1, 1, v0[30]);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[28];
    v18 = v0[22];
    v19 = v0[18];
    sub_1BD58326C(v0[29], v0[33], type metadata accessor for TransactionContext);
    sub_1BE049A14();
    sub_1BE0490F4();
    v0[37] = sub_1BE0490B4();
    v20 = swift_task_alloc();
    v0[38] = v20;
    *(v20 + 16) = v17;
    v0[11] = v18;
    sub_1BE04B444();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
    v22 = sub_1BE049CE4();
    v23 = MEMORY[0x1E6967BC8];
    v0[5] = v22;
    v0[6] = v23;
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_1BE049CD4();
    v24 = swift_task_alloc();
    v0[39] = v24;
    *v24 = v0;
    v24[1] = sub_1BD57F72C;
    v25 = v0[21];

    return MEMORY[0x1EEDC14D8](v25, v0 + 2);
  }
}

uint64_t sub_1BD57F72C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1BD57FD8C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1BD57F86C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD57F86C()
{
  v49 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = sub_1BE049D54();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v5 = v0[33];
    v7 = v0[30];
    v6 = v0[31];
    v46 = v0[28];
    v8 = v0[26];
    v43 = v0[25];
    v9 = v0[23];
    v10 = v0[24];
    v11 = v0[22];
    v12 = v0[12];
    (*(v9 + 16))(v10, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11);

    (*(v9 + 32))(v12, v10, v11);
    v13 = v7[5];
    v14 = sub_1BE0495A4();
    (*(*(v14 - 8) + 16))(v12 + v13, v5 + v13, v14);
    v15 = v7[6];
    v16 = sub_1BE049184();
    (*(*(v16 - 8) + 16))(v12 + v15, v5 + v15, v16);
    sub_1BD0DE19C(v5 + v7[7], v12 + v7[7], &qword_1EBD3F7C0);
    sub_1BD0DE19C(v5 + v7[8], v12 + v7[8], &qword_1EBD3F7B8);
    sub_1BD5832D4(v5, type metadata accessor for TransactionContext);
    (*(v6 + 56))(v12, 0, 1, v7);
    (*(v8 + 8))(v46, v43);
  }

  else
  {
    v17 = v0[32];
    v18 = v0[33];

    sub_1BE04D114();
    sub_1BD583204(v18, v17, type metadata accessor for TransactionContext);
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C34();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[32];
    v22 = v0[33];
    if (v21)
    {
      v47 = v0[33];
      v25 = v0[26];
      v24 = v0[27];
      v26 = v0[25];
      v42 = v0[15];
      v44 = v0[14];
      v45 = v0[17];
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v27 = 136315138;
      sub_1BE049A14();
      sub_1BD581934(&unk_1EBD39960, MEMORY[0x1E69695A8]);
      v28 = sub_1BE053B24();
      v30 = v29;
      (*(v25 + 8))(v24, v26);
      sub_1BD5832D4(v23, type metadata accessor for TransactionContext);
      v31 = sub_1BD123690(v28, v30, &v48);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v19, v20, "Failed to reload transaction with ID:%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1BFB45F20](v41, -1, -1);
      MEMORY[0x1BFB45F20](v27, -1, -1);

      (*(v42 + 8))(v45, v44);
      v32 = v47;
    }

    else
    {
      v33 = v0[17];
      v34 = v0[14];
      v35 = v0[15];

      sub_1BD5832D4(v23, type metadata accessor for TransactionContext);
      (*(v35 + 8))(v33, v34);
      v32 = v22;
    }

    sub_1BD5832D4(v32, type metadata accessor for TransactionContext);
    v36 = v0[28];
    v38 = v0[25];
    v37 = v0[26];
    (*(v0[31] + 56))(v0[12], 1, 1, v0[30]);
    (*(v37 + 8))(v36, v38);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_1BD57FD8C()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[25];

  sub_1BD5832D4(v1, type metadata accessor for TransactionContext);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD57FECC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v9 + 8))(v12, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  a2[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BD581934(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v18 = v21;
  sub_1BE04A714();
  (*(v22 + 8))(v7, v18);
  return (*(v14 + 8))(v17, v13);
}

BOOL sub_1BD580268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v51 = a3;
  v4 = sub_1BE049B44();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v42 - v9;
  v10 = sub_1BE049904();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v46 = &v42 - v15;
  v16 = sub_1BE0493F4();
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04AF64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE052304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
    v25 = sub_1BE052314();
    (*(v21 + 8))(v24, v20);
    if (v25)
    {
      sub_1BE0499A4();
      v26 = sub_1BE0493A4();
      v28 = v27;
      (*(v50 + 8))(v19, v16);
      if (v26 == v51 && v28 == v52)
      {
      }

      else
      {
        v30 = sub_1BE053B84();

        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      v31 = v46;
      sub_1BE049A34();
      v33 = v47;
      v32 = v48;
      v34 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x1E6967980], v49);
      sub_1BD581934(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
      v35 = sub_1BE052334();
      v36 = *(v32 + 8);
      v36(v33, v34);
      v36(v31, v34);
      if ((v35 & 1) == 0)
      {
        v37 = v42;
        sub_1BE0499E4();
        v39 = v43;
        v38 = v44;
        v40 = v45;
        (*(v44 + 104))(v43, *MEMORY[0x1E6967B10], v45);
        sub_1BD581934(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]);
        sub_1BE0526E4();
        sub_1BE0526E4();
        v41 = *(v38 + 8);
        v41(v39, v40);
        v41(v37, v40);
        return v54 == v53;
      }
    }
  }

  else
  {
    (*(v21 + 8))(v24, v20);
  }

  return 0;
}

uint64_t sub_1BD5807CC()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__brandViewDetails, &qword_1EBD49CB8);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__transactionContext, &qword_1EBD3F790);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel__historyToken, &qword_1EBD3F788);
  v1 = OBJC_IVAR____TtCV9PassKitUI27FinanceKitMerchantBrandView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BD5808F0()
{
  sub_1BD580AAC(319, &qword_1EBD4B178, _s22MerchantBrandViewModelVMa);
  if (v0 <= 0x3F)
  {
    sub_1BD580AAC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext);
    if (v1 <= 0x3F)
    {
      sub_1BD580AAC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
      if (v2 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BD580AAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BD580B28()
{
  sub_1BD580C60();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1BD580AAC(319, &qword_1EBD3F758, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      if (v2 <= 0x3F)
      {
        sub_1BD580CC8();
        if (v3 <= 0x3F)
        {
          sub_1BD580AAC(319, &qword_1EBD4B1A8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
          if (v4 <= 0x3F)
          {
            sub_1BD580AAC(319, &qword_1EBD4B1B0, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
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

void sub_1BD580C60()
{
  if (!qword_1EBD4B190)
  {
    sub_1BD0E5E8C(255, &qword_1EBD4B198);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B190);
    }
  }
}

void sub_1BD580CC8()
{
  if (!qword_1EBD4B1A0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B1A0);
    }
  }
}

uint64_t sub_1BD580D4C()
{
  v1 = v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = sub_1BE049B04();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 != *MEMORY[0x1E6967AA0])
  {
    if (v9 == *MEMORY[0x1E6967A68])
    {
      return 0x6E697264646F6F66;
    }

    else if (v9 == *MEMORY[0x1E6967AB8])
    {
      return 0x676E6970706F6873;
    }

    else if (v9 == *MEMORY[0x1E6967A98])
    {
      return 0x6C6576617274;
    }

    else if (v9 == *MEMORY[0x1E6967AB0])
    {
      return 0x7365636976726573;
    }

    else if (v9 == *MEMORY[0x1E6967A78])
    {
      return 7239014;
    }

    else if (v9 == *MEMORY[0x1E6967A88])
    {
      return 0x68746C616568;
    }

    else if (v9 == *MEMORY[0x1E6967AC8])
    {
      return 0x726F70736E617274;
    }

    else
    {
      (*(v4 + 8))(v8, v3);
    }
  }

  return v2;
}

uint64_t sub_1BD580FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1BD0DE19C(a1, &v24 - v15, &qword_1EBD3F788);
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD3F788);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v12, &qword_1EBD3F788);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1BD581934(&qword_1EBD3F958, MEMORY[0x1E69675F8]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v16, &qword_1EBD3F788);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD3F950);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v16, &qword_1EBD3F788);
  v20 = 0;
  return v20 & 1;
}

void *sub_1BD5812C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v52 - v16;
  v18 = sub_1BE049B04();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v52 - v25;
  sub_1BE0499D4();
  v57 = v26;
  sub_1BE049AB4();
  v27 = *(v19 + 8);
  v58 = v19 + 8;
  v59 = v18;
  v56 = v27;
  v27(v22, v18);
  v55 = a2;
  sub_1BD0DE19C(a2, v13, &qword_1EBD3F7C0);
  v28 = sub_1BE0491B4();
  v29 = *(v28 - 1);
  v30 = *(v29 + 48);
  if (v30(v13, 1, v28) == 1)
  {
    v31 = &qword_1EBD3F7C0;
    v32 = v13;
LABEL_5:
    sub_1BD0DE53C(v32, v31);
    v35 = 0;
    v36 = 0xF000000000000000;
    goto LABEL_6;
  }

  sub_1BE0491A4();
  (*(v29 + 8))(v13, v28);
  v33 = sub_1BE049294();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v17, 1, v33) == 1)
  {
    v31 = &qword_1EBD48358;
    v32 = v17;
    goto LABEL_5;
  }

  v53 = sub_1BE049244();
  v48 = v47;
  (*(v34 + 8))(v17, v33);
  v42 = v48;
  if (v48 >> 60 != 15)
  {
    v41 = v53;
    goto LABEL_19;
  }

  v35 = v53;
  v36 = v48;
LABEL_6:
  sub_1BD0DE19C(v55, v9, &qword_1EBD3F7C0);
  if (v30(v9, 1, v28) == 1)
  {
    v37 = &qword_1EBD3F7C0;
    v38 = v9;
LABEL_10:
    sub_1BD0DE53C(v38, v37);
    sub_1BD030220(v35, v36);
    v41 = 0;
    v42 = 0xF000000000000000;
    goto LABEL_11;
  }

  v39 = v54;
  sub_1BE049194();
  (*(v29 + 8))(v9, v28);
  v28 = sub_1BE04A0D4();
  v40 = *(v28 - 1);
  if ((*(v40 + 48))(v39, 1, v28) == 1)
  {
    v37 = &qword_1EBD48360;
    v38 = v39;
    goto LABEL_10;
  }

  v41 = sub_1BE04A094();
  v42 = v49;
  (*(v40 + 8))(v39, v28);
  sub_1BD030220(v35, v36);
  if (v42 >> 60 != 15)
  {
LABEL_19:
    sub_1BD041A38(v41, v42);
    sub_1BD0E5E8C(0, &qword_1EBD4B1B8);
    sub_1BD0E5E8C(0, &qword_1EBD4B198);
    v50 = v60;
    v51 = sub_1BE052CB4();
    if (!v50)
    {
      v28 = v51;
    }

    v56(v57, v59);
    sub_1BD1245AC(v41, v42);
    sub_1BD030220(v41, v42);
    return v28;
  }

LABEL_11:
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v44 = result;
    v45 = v57;
    sub_1BD580D4C();
    v46 = sub_1BE052404();

    v28 = [v44 stylingForWalletCategory_];

    sub_1BD030220(v41, v42);
    v56(v45, v59);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD581934(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD58197C()
{
  result = qword_1EBD3F8E0;
  if (!qword_1EBD3F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3F830);
    sub_1BD581A08();
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F8E0);
  }

  return result;
}

unint64_t sub_1BD581A08()
{
  result = qword_1EBD38F70;
  if (!qword_1EBD38F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38EF0);
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F70);
  }

  return result;
}

uint64_t sub_1BD581B04(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1BE049C74();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_1BE049A94();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  sub_1BE0528A4();
  v1[24] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD581CC8, v6, v5);
}

uint64_t sub_1BD581CC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_1BE0490F4();
  *(v0 + 216) = sub_1BE0490B4();
  v8 = *(v3 + 16);
  *(v0 + 224) = v8;
  *(v0 + 232) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  *(v0 + 80) = &type metadata for BankConnectFeatureFlags;
  *(v0 + 88) = sub_1BD1671B0();
  *(v0 + 56) = 2;
  LOBYTE(v7) = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v9 = MEMORY[0x1E6967BA8];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E6967BA0];
  }

  (*(v5 + 104))(v4, *v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  v10 = sub_1BE049C94();
  v11 = MEMORY[0x1E6967BB0];
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1BE049C84();
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_1BD581F58;
  v13 = *(v0 + 184);

  return MEMORY[0x1EEDC14D8](v13, v0 + 16);
}

uint64_t sub_1BD581F58()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_1BD5822D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_1BD582098;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD582098()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = sub_1BE049D54();
  result = (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 136);
    v9 = (v8 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    v19 = *(v4 + 16);
    v20 = v4;
    while (v7 < *(v4 + 16))
    {
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v12 = *(v8 + 72);
      (*(v0 + 224))(*(v0 + 152), v4 + v11 + v12 * v7, *(v0 + 128));
      if (sub_1BE049A74())
      {
        v13 = *v9;
        (*v9)(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v10 + 16) + 1, 1);
        }

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1BD531B68(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 144);
        v17 = *(v0 + 128);
        *(v10 + 16) = v15 + 1;
        v9 = (v8 + 32);
        result = v13(v10 + v11 + v15 * v12, v16, v17);
        v6 = v19;
        v4 = v20;
      }

      else
      {
        result = (*(v8 + 8))(*(v0 + 152), *(v0 + 128));
      }

      if (v6 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v18 = *(v0 + 8);

    return v18(v10);
  }

  return result;
}

uint64_t sub_1BD5822D0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BD5823A0(uint64_t a1, uint64_t a2)
{
  v144 = a1;
  v126 = sub_1BE04BD74();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v3);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BE04B0F4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v6);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1BE049A94();
  v135 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v8);
  v133 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v112 = &v112 - v12;
  v130 = sub_1BE049B44();
  v115 = *(v130 - 1);
  MEMORY[0x1EEE9AC00](v130, v13);
  v114 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v112 - v17;
  v18 = sub_1BE049904();
  v141 = *(v18 - 8);
  v142 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v140 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v139 = &v112 - v23;
  v24 = sub_1BE0493F4();
  v25 = *(v24 - 8);
  v137 = v24;
  v138 = v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v136 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v28, v29);
  v134 = (&v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v112 - v33;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387B0);
  MEMORY[0x1EEE9AC00](v132, v35);
  v127 = &v112 - v36;
  v128 = sub_1BE04AF64();
  v37 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v38);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v112 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v112 - v47;
  v49 = a2;
  sub_1BE049974();
  v50 = sub_1BE04AE64();
  v51 = PKStartOfMonth();

  if (!v51)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_1BE04AEE4();

  v121 = v48;
  v52 = sub_1BE04AE64();
  v53 = PKEndOfMonth();

  if (!v53)
  {
LABEL_20:
    __break(1u);
    return;
  }

  sub_1BE04AEE4();

  sub_1BD581934(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v54 = v128;
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v120 = v5;
  v55 = *(v37 + 32);
  v55(v34, v44, v54);
  v131 = v49;
  v55(&v34[*(v28 + 48)], v40, v54);
  v56 = v54;
  v57 = v134;
  sub_1BD0DE19C(v34, v134, &unk_1EBD38810);
  v58 = *(v28 + 48);
  v59 = v127;
  v55(v127, v57, v56);
  v60 = *(v37 + 8);
  v60(&v57[v58], v56);
  sub_1BD0DE204(v34, v57, &unk_1EBD38810);
  v55((v59 + *(v132 + 36)), &v57[*(v28 + 48)], v56);
  v119 = v37 + 8;
  v118 = v60;
  v60(v57, v56);
  v61 = v131;
  v62 = v136;
  sub_1BE0499A4();
  v63 = sub_1BE0493A4();
  v65 = v64;
  v66 = *(v138 + 8);
  v138 += 8;
  v134 = v66;
  v67 = (v66)(v62, v137);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v112 - 4) = v59;
  *(&v112 - 3) = v63;
  *(&v112 - 2) = v65;
  v69 = v144;
  sub_1BE048C84();
  v129 = sub_1BD1CEA30(sub_1BD583334, (&v112 - 6), v69);
  v70 = v139;
  sub_1BE049A34();
  v72 = v140;
  v71 = v141;
  v73 = v142;
  (*(v141 + 104))(v140, *MEMORY[0x1E6967980], v142);
  sub_1BD581934(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
  LOBYTE(v59) = sub_1BE052334();
  v74 = *(v71 + 8);
  v74(v72, v73);
  v74(v70, v73);
  v117 = v63;
  v116 = v65;
  if ((v59 & 1) == 0)
  {
    v75 = v113;
    sub_1BE0499E4();
    v76 = v115;
    v77 = v114;
    v78 = v130;
    (*(v115 + 104))(v114, *MEMORY[0x1E6967B10], v130);
    sub_1BD581934(&qword_1EBD3F7A8, MEMORY[0x1E6967B20]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v79 = *(v76 + 8);
    v79(v77, v78);
    v79(v75, v78);
    if (v146 == v145)
    {
      v28 = v112;
      v54 = v143;
      (*(v135 + 16))(v112, v61, v143);
      v48 = v129;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_7:
        v81 = *(v48 + 2);
        v80 = *(v48 + 3);
        if (v81 >= v80 >> 1)
        {
          v48 = sub_1BD1D825C(v80 > 1, v81 + 1, 1, v48);
        }

        *(v48 + 2) = v81 + 1;
        v82 = v135;
        (*(v135 + 32))(&v48[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v81], v28, v54);
        goto LABEL_11;
      }

LABEL_18:
      v48 = sub_1BD1D825C(0, *(v48 + 2) + 1, 1, v48);
      goto LABEL_7;
    }
  }

  v82 = v135;
  v48 = v129;
LABEL_11:
  v140 = (MEMORY[0x1BFB403C0](0) >> 48);
  v84 = (v83 >> 16);
  v144 = HIWORD(v83);
  v85 = *(v48 + 2);
  LODWORD(v141) = HIWORD(v86);
  if (v85)
  {
    v88 = *(v82 + 16);
    v87 = v82 + 16;
    v89 = &v48[(*(v87 + 64) + 32) & ~*(v87 + 64)];
    v131 = *(v87 + 56);
    v132 = v88;
    v129 = v48;
    v130 = (v87 - 8);
    v90 = v133;
    v142 = HIDWORD(v83);
    v135 = v87;
    do
    {
      v139 = v84;
      v141 = v85;
      (v132)(v90, v89, v143);
      v91 = v136;
      sub_1BE0499A4();
      sub_1BE0493C4();
      LODWORD(v140) = v92;
      (v134)(v91, v137);
      v90 = v133;
      sub_1BE053384();
      v84 = (v93 >> 16);
      v142 = HIDWORD(v93);
      v144 = HIWORD(v93);
      v95 = HIWORD(v94);
      (*v130)(v90, v143);
      v89 += v131;
      v85 = v141 - 1;
    }

    while (v141 != 1);
    LODWORD(v141) = v95;
  }

  else
  {
  }

  v96 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v97 = sub_1BE052404();
  [v96 setDateFormat_];

  v98 = v136;
  sub_1BE049404();
  v99 = v122;
  sub_1BE04B054();
  v100 = sub_1BE0493E4();
  v143 = v101;
  v144 = v100;
  (*(v123 + 8))(v99, v124);
  (v134)(v98, v137);
  v102 = v125;
  v103 = v120;
  v104 = v126;
  (*(v125 + 104))(v120, *MEMORY[0x1E69B80B0], v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1BE0B69E0;
  v106 = v121;
  v107 = sub_1BE04AE64();
  v108 = [v96 stringFromDate_];

  v109 = sub_1BE052434();
  v111 = v110;

  *(v105 + 56) = MEMORY[0x1E69E6158];
  *(v105 + 64) = sub_1BD110550();
  *(v105 + 32) = v109;
  *(v105 + 40) = v111;
  sub_1BE04B714();

  (*(v102 + 8))(v103, v104);
  v118(v106, v128);
  sub_1BD0DE53C(v127, &unk_1EBD387B0);
}

uint64_t sub_1BD583204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58326C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5832D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5834A8(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  sub_1BD1875A0(v1, &v48);
  sub_1BD7CD0C0();
  v5 = *(&v48 + 1);
  if (*(*(&v48 + 1) + 16))
  {
    v44 = KeyPath;
    sub_1BE053D04();
    sub_1BE052524();
    v6 = sub_1BE053D64();
    v7 = -1 << *(v5 + 32);
    v8 = v6 & ~v7;
    if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v43 = v1;
      v9 = ~v7;
      while (1)
      {
        v10 = *(*(v5 + 48) + v8);
        if (v10 != 1 && v10 != 2)
        {
          break;
        }

        v11 = sub_1BE053B84();

        if (v11)
        {
          goto LABEL_12;
        }

        v8 = (v8 + 1) & v9;
        if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

LABEL_12:
      v13 = v49;
      v2 = v43;
      if (!*(v49 + 16) || (sub_1BE053D04(), sub_1BE052524(), v14 = sub_1BE053D64(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
      {
        v12 = 1;
        goto LABEL_22;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v13 + 48) + v16);
        if (v18 != 1 && v18 != 2)
        {
          break;
        }

        v19 = sub_1BE053B84();

        if ((v19 & 1) == 0)
        {
          v16 = (v16 + 1) & v17;
          if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            continue;
          }
        }

        v12 = v19 ^ 1;
        goto LABEL_20;
      }

LABEL_8:
      v12 = 0;
LABEL_20:
      v2 = v43;
    }

    else
    {
      v12 = 0;
    }

LABEL_22:
    KeyPath = v44;
  }

  else
  {
    v12 = 0;
  }

  v51 = v48;
  v52 = v49;
  v53 = v50;
  v20 = v2;
  sub_1BD12F7B0(&v51, v20, KeyPath);

  v54 = *(&v51 + 1);
  sub_1BD58532C(&v54);
  v55 = v52;
  sub_1BD58532C(&v55);
  v56 = *(&v52 + 1);
  sub_1BD58532C(&v56);
  if ((v12 & 1) == 0 && *(v20 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_forceShow) != 1)
  {
    return a1(0xD00000000000002BLL, 0x80000001BE12F210, 0, 1);
  }

  v45 = a1;
  v42 = swift_getKeyPath();
  sub_1BD1875A0(v20, &v48);
  v21 = v49;
  v41 = *(&v48 + 1);
  v22 = *(&v49 + 1);
  v39 = v50;
  v40 = v48;
  sub_1BE053D04();
  sub_1BE052524();
  v23 = sub_1BE053D64();
  v24 = -1 << *(v21 + 32);
  v25 = v23 & ~v24;
  if ((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v26 = ~v24;
    while (1)
    {
      v27 = *(*(v21 + 48) + v25);
      if (v27 != 1 && v27 != 2)
      {
        break;
      }

      v28 = sub_1BE053B84();

      if (v28)
      {
        goto LABEL_32;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v21;
    sub_1BD2A939C(0, v25, isUniquelyReferenced_nonNull_native);
  }

LABEL_32:
  sub_1BE053D04();
  sub_1BE052524();
  v30 = sub_1BE053D64();
  v31 = -1 << *(v22 + 32);
  v32 = v30 & ~v31;
  if ((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
  {
    v33 = ~v31;
    while (1)
    {
      v34 = *(*(v22 + 48) + v32);
      if (v34 != 1 && v34 != 2)
      {
        break;
      }

      v35 = sub_1BE053B84();

      if (v35)
      {
        goto LABEL_39;
      }

      v32 = (v32 + 1) & v33;
      if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v22;
    sub_1BD2A939C(0, v32, v36);
  }

LABEL_39:
  LOBYTE(v46[0]) = v40;
  v46[1] = v41;
  v46[2] = v21;
  v46[3] = v22;
  v47 = v39;
  v37 = v20;
  sub_1BD12F7B0(v46, v37, v42);

  return v45(0, 0, 0, 0);
}

void sub_1BD583AF8()
{
  v0 = sub_1BE04BAC4();
  v130 = *(v0 - 8);
  v131 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v129 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v123 = *(v3 - 8);
  v124 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v122 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B8D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v132 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v126 = &v121 - v12;
  v135 = sub_1BE04B944();
  v13 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v14);
  v134 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v16 = sub_1BE04C384();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v133 = xmmword_1BE0B69E0;
  *(v19 + 16) = xmmword_1BE0B69E0;
  *(v19 + v18) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  v20 = v19 + v18;
  v21 = v13;
  (*(v17 + 104))(v20, *MEMORY[0x1E69B8290], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  v22 = v125;
  *(swift_allocObject() + 16) = v133;
  v23 = *&v22[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  *&v133 = sub_1BE04C394();
  if (PKShowFakePaymentSetupFields() && (v24 = [objc_opt_self() fakePaymentSetupProvisioningFields]) != 0 && (v25 = v24, v26 = sub_1BE052744(), v25, v27 = sub_1BD3FD320(v26), , v27))
  {
    v140 = v27;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BE0B7020;
    *(v28 + 32) = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];
    v140 = v28;
    v29 = sub_1BE04BBD4();
    v30 = [v29 suppressDefaultCardholderNameField];

    if ((v30 & 1) == 0)
    {
      v31 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];
      sub_1BD1DD148(0, 0, v31);
    }
  }

  v32 = v134;
  sub_1BE04BB94();
  v33 = v126;
  sub_1BE04B924();
  v127 = *(v21 + 8);
  v128 = v21 + 8;
  v127(v32, v135);
  v34 = v132;
  (*(v7 + 104))(v132, *MEMORY[0x1E69B7F80], v6);
  sub_1BD5852D4();
  v35 = sub_1BE052334();
  v36 = *(v7 + 8);
  v36(v34, v6);
  v36(v33, v6);
  if ((v35 & 1) == 0)
  {
    v38 = v122;
    v37 = v123;
    v39 = v124;
    (*(v123 + 104))(v122, *MEMORY[0x1E69B80D8], v124);
    sub_1BE04B714();
    (*(v37 + 8))(v38, v39);
    v40 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v41 = sub_1BE052404();

    v42 = [v40 initWithString_];

    v43 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
    v44 = sub_1BE052404();
    v45 = [v43 initWithIdentifier:v44 body:v42];

    [v45 setPosition_];
    [v45 setAlingment_];
    [v45 setFontScale_];
    v46 = v45;
    MEMORY[0x1BFB3F7A0]();
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v132 = v23;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1BD3F0574(v140);
  v48 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v49 = sub_1BE052724();

  v50 = [v48 initWithPaymentSetupFields_];

  if (!v50)
  {
    v50 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  if (*&v22[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects])
  {
    v51 = *&v22[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects];
  }

  else
  {
    v51 = v47;
  }

  sub_1BE048C84();

  v126 = sub_1BD9F46CC(v51, v50);

  v52 = type metadata accessor for ProvisioningUICoordinator();
  v53 = objc_allocWithZone(v52);
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v54 = &v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v47;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  v55 = v132;
  v56 = v133;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v132;
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v56;
  swift_unknownObjectWeakAssign();
  *(v54 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  sub_1BE048964();
  sub_1BE048964();
  *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v139.receiver = v53;
  v139.super_class = v52;
  v57 = objc_msgSendSuper2(&v139, sel_init);
  *&v57[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = v126;

  v126 = v57;
  *&v57[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BAE6C0;
  swift_unknownObjectWeakAssign();
  v58 = type metadata accessor for ProvisioningManualEntryViewController();
  v59 = objc_allocWithZone(v58);
  *&v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = 0;
  v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton] = 0;
  v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton] = 0;
  *&v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_provisioningContext] = v55;
  v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_isSecondaryEntry] = 0;
  *&v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_delegate + 8] = &off_1F3BAE6B0;
  swift_unknownObjectUnownedInit();
  sub_1BE052434();
  sub_1BE048964();
  v60 = v50;
  v61 = sub_1BE04BB74();

  *&v59[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter] = v61;
  v62 = v134;
  sub_1BE04BB94();
  v63 = sub_1BE04B8E4();
  v127(v62, v135);
  v64 = v129;
  sub_1BE04BC34();
  v65 = sub_1BE04B9A4();
  (*(v130 + 8))(v64, v131);
  v138.receiver = v59;
  v138.super_class = v58;
  v66 = v60;
  v67 = objc_msgSendSuper2(&v138, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v63, v65, 0, v66);

  v135 = v67;
  if (!v67)
  {
    __break(1u);
    return;
  }

  v134 = v66;

  KeyPath = swift_getKeyPath();
  sub_1BD1875A0(v22, &v152);
  sub_1BD7CD0C0();
  v69 = *(&v152 + 1);
  if (!*(*(&v152 + 1) + 16))
  {
    goto LABEL_24;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v70 = sub_1BE053D64();
  v71 = -1 << *(v69 + 32);
  v72 = v70 & ~v71;
  if (((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
  {
    goto LABEL_24;
  }

  v73 = ~v71;
  while (!*(*(v69 + 48) + v72) || *(*(v69 + 48) + v72) == 1)
  {
    v74 = sub_1BE053B84();

    if (v74)
    {
      goto LABEL_51;
    }

    v72 = (v72 + 1) & v73;
    if (((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_51:
  v109 = *(&v153 + 1);
  if (*(*(&v153 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v110 = sub_1BE053D64();
    v111 = -1 << *(v109 + 32);
    v112 = v110 & ~v111;
    if ((*(v109 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112))
    {
      v113 = ~v111;
      while (!*(*(v109 + 48) + v112) || *(*(v109 + 48) + v112) == 1)
      {
        v114 = sub_1BE053B84();

        if ((v114 & 1) == 0)
        {
          v112 = (v112 + 1) & v113;
          if ((*(v109 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112))
          {
            continue;
          }
        }

        v75 = v114 ^ 1;
        goto LABEL_25;
      }

LABEL_24:
      v75 = 0;
      goto LABEL_25;
    }
  }

  v75 = 1;
LABEL_25:
  v155 = v152;
  v156 = v153;
  v157 = v154;
  v76 = v22;
  sub_1BD12F7B0(&v155, v76, KeyPath);

  v158 = *(&v155 + 1);
  sub_1BD58532C(&v158);
  v159 = v156;
  sub_1BD58532C(&v159);
  v160 = *(&v156 + 1);
  sub_1BD58532C(&v160);
  *(v135 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton) = v75 & 1;
  v77 = swift_getKeyPath();
  sub_1BD1875A0(v76, v141);
  LODWORD(v130) = v141[0];
  v78 = v143;
  v131 = v142;
  v79 = v144;
  LODWORD(v129) = v145;
  sub_1BE053D04();
  sub_1BE052524();
  v80 = sub_1BE053D64();
  v81 = -1 << *(v79 + 32);
  v82 = v80 & ~v81;
  if ((*(v79 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
  {
    v83 = ~v81;
    while (!*(*(v79 + 48) + v82) || *(*(v79 + 48) + v82) == 1)
    {
      v84 = sub_1BE053B84();

      if (v84)
      {
        goto LABEL_32;
      }

      v82 = (v82 + 1) & v83;
      if (((*(v79 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = v79;
    sub_1BD2A939C(2, v82, isUniquelyReferenced_nonNull_native);
    v79 = v136[0];
  }

LABEL_32:
  LOBYTE(v152) = v130;
  *(&v152 + 1) = v131;
  *&v153 = v78;
  *(&v153 + 1) = v79;
  v154 = v129;
  v86 = v76;
  sub_1BD12F7B0(&v152, v86, v77);

  v87 = swift_getKeyPath();
  sub_1BD1875A0(v86, &v146);
  sub_1BD7CD0C0();
  v88 = *(&v146 + 1);
  if (*(*(&v146 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v89 = sub_1BE053D64();
    v90 = -1 << *(v88 + 32);
    v91 = v89 & ~v90;
    if ((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
    {
      v92 = ~v90;
      while (!*(*(v88 + 48) + v91) || *(*(v88 + 48) + v91) == 2)
      {
        v93 = sub_1BE053B84();

        if (v93)
        {
          goto LABEL_61;
        }

        v91 = (v91 + 1) & v92;
        if (((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

LABEL_61:
      v115 = *(&v147 + 1);
      if (!*(*(&v147 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v116 = sub_1BE053D64(), v117 = -1 << *(v115 + 32), v118 = v116 & ~v117, ((*(v115 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0))
      {
        v94 = 1;
        goto LABEL_40;
      }

      v119 = ~v117;
      while (!*(*(v115 + 48) + v118) || *(*(v115 + 48) + v118) == 2)
      {
        v120 = sub_1BE053B84();

        if ((v120 & 1) == 0)
        {
          v118 = (v118 + 1) & v119;
          if ((*(v115 + 56 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118))
          {
            continue;
          }
        }

        v94 = v120 ^ 1;
        goto LABEL_40;
      }
    }
  }

LABEL_39:
  v94 = 0;
LABEL_40:
  v149 = v146;
  v150 = v147;
  v151 = v148;
  v95 = v86;
  sub_1BD12F7B0(&v149, v95, v87);

  v161 = *(&v149 + 1);
  sub_1BD58532C(&v161);
  v162 = v150;
  sub_1BD58532C(&v162);
  v163[0] = *(&v150 + 1);
  sub_1BD58532C(v163);
  *(v135 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton) = v94 & 1;
  v96 = swift_getKeyPath();
  sub_1BD1875A0(v95, &v146);
  LODWORD(v131) = v146;
  v97 = v147;
  v132 = *(&v146 + 1);
  v98 = *(&v147 + 1);
  LODWORD(v130) = v148;
  sub_1BE053D04();
  sub_1BE052524();
  v99 = sub_1BE053D64();
  v100 = -1 << *(v98 + 32);
  v101 = v99 & ~v100;
  if ((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
  {
    v102 = ~v100;
    while (!*(*(v98 + 48) + v101) || *(*(v98 + 48) + v101) == 2)
    {
      v103 = sub_1BE053B84();

      if (v103)
      {
        goto LABEL_47;
      }

      v101 = (v101 + 1) & v102;
      if (((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
LABEL_46:
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = v98;
    sub_1BD2A939C(1, v101, v104);
    v98 = v136[0];
  }

LABEL_47:
  LOBYTE(v136[0]) = v131;
  v136[1] = v132;
  v136[2] = v97;
  v136[3] = v98;
  v137 = v130;
  v105 = v95;
  sub_1BD12F7B0(v136, v105, v96);

  v106 = *(v135 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator);
  v107 = v126;
  *(v135 + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator) = v126;
  v108 = v107;

  swift_unknownObjectWeakAssign();
  *&v108[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BB39D0;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1BD5850C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD585100(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD585154(uint64_t a1, void *a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD5851E4(v3, a2, a3 & 1, result, &off_1F3BAE6D0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1BD5851E4(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult;
  v9 = *(a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult);
  *v8 = a2;
  v10 = *(v8 + 8);
  *(v8 + 8) = a3 & 1;
  sub_1BD585394(v9, v10);
  v11 = a4 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v14 = a2;
    sub_1BD8659A4(a1, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  else
  {

    return a2;
  }
}

unint64_t sub_1BD5852D4()
{
  result = qword_1EBD55170;
  if (!qword_1EBD55170)
  {
    sub_1BE04B8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55170);
  }

  return result;
}

uint64_t sub_1BD58532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD585394(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_1BD5853A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a2;
  v3 = sub_1BE04BD74();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v87 - v11;
  v92 = a1;
  v13 = *(a1 + 48);
  if (!*(v13 + 16))
  {
    v96 = 0;
    v97 = 0;
    v100 = 0;
    v22 = 0;
    v93 = 0;
    v95 = 0;
    v23 = 1;
LABEL_46:
    v99 = 1;
    goto LABEL_47;
  }

  v95 = v10;
  sub_1BE053D04();
  sub_1BE052524();
  v14 = sub_1BE053D64();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  v17 = v14 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v100 = v12;
    v18 = ~v16;
    v19 = 0x6C75466E49796170;
    while (*(*(v13 + 48) + v17) > 1u || !*(*(v13 + 48) + v17))
    {
      v20 = v19;
      v21 = sub_1BE053B84();

      if (v21)
      {
        goto LABEL_21;
      }

      v17 = (v17 + 1) & v18;
      v19 = v20;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v22 = 0;
        v100 = 0;
        v97 = 0;
        v23 = 1;
        if (*(v13 + 16))
        {
          goto LABEL_12;
        }

        goto LABEL_45;
      }
    }

LABEL_21:
    v29 = sub_1BD59B6CC(*(v92 + 32));
    if (v30)
    {
      v22 = v29;
      v23 = v30;
    }

    else
    {
      v31 = v100;
      (*(v89 + 104))(v100, *MEMORY[0x1E69B8068], v90);
      v32 = PKPassKitBundle();
      if (!v32)
      {
        goto LABEL_75;
      }

      v33 = v32;
      v22 = sub_1BE04B6F4();
      v23 = v34;

      (*(v89 + 8))(v31, v90);
    }

    if (*(v92 + 57) == 1)
    {
      if (*(v92 + 56) <= 1u && *(v92 + 56))
      {

        v35 = 1;
      }

      else
      {
        v36 = sub_1BE053B84();

        v35 = 1;
        if ((v36 & 1) == 0)
        {
          v35 = 2;
        }
      }
    }

    else
    {
      v35 = 2;
    }

    v100 = v35;
    v45 = *MEMORY[0x1E69B9A10];
    sub_1BE048C84();
    v97 = v45;
    v46 = v45;
    if (!*(v13 + 16))
    {
      goto LABEL_45;
    }
  }

  else
  {
    v22 = 0;
    v100 = 0;
    v97 = 0;
    v23 = 1;
    if (!*(v13 + 16))
    {
LABEL_45:
      v95 = 0;
      v96 = 0;
      v93 = 0;
      goto LABEL_46;
    }
  }

LABEL_12:
  v91 = v22;
  sub_1BE053D04();
  sub_1BE052524();
  v24 = sub_1BE053D64();
  v25 = -1 << *(v13 + 32);
  v26 = v24 & ~v25;
  if ((*(v15 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v98 = v23;
    v27 = ~v25;
    v99 = 1;
    while (*(*(v13 + 48) + v26) <= 1u || *(*(v13 + 48) + v26) == 3)
    {
      v28 = sub_1BE053B84();

      if (v28)
      {
        goto LABEL_34;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v15 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        v95 = 0;
        v96 = 0;
        v93 = 0;
        v23 = v98;
        v22 = v91;
        goto LABEL_47;
      }
    }

LABEL_34:
    v37 = sub_1BD59B6D8(*(v92 + 32));
    v99 = v38;
    if (v38)
    {
      v96 = v37;
      v23 = v98;
      v22 = v91;
    }

    else
    {
      v40 = v89;
      v39 = v90;
      v41 = v95;
      (*(v89 + 104))(v95, *MEMORY[0x1E69B8078], v90);
      v42 = PKPassKitBundle();
      v23 = v98;
      v22 = v91;
      if (!v42)
      {
        goto LABEL_76;
      }

      v43 = v42;
      v96 = sub_1BE04B6F4();
      v99 = v44;

      (*(v40 + 8))(v41, v39);
    }

    if (*(v92 + 57) == 1)
    {
      if (*(v92 + 56) == 2)
      {

        v93 = 1;
      }

      else
      {
        v83 = sub_1BE053B84();

        v84 = 1;
        if ((v83 & 1) == 0)
        {
          v84 = 2;
        }

        v93 = v84;
        v22 = v91;
      }
    }

    else
    {
      v93 = 2;
    }

    v85 = *MEMORY[0x1E69B98A0];
    sub_1BE048C84();
    v95 = v85;
    v86 = v85;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v99 = 1;
    v22 = v91;
  }

LABEL_47:
  v47 = *(v13 + 16);
  v98 = v23;
  if (!v47)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v58 = 1;
LABEL_56:
    v56 = v94;
    v57 = v100;
LABEL_69:
    v100 = v57;
    sub_1BD587110(v22, v23, 0, 0, v57, v97);
    v70 = v22;
    v71 = v95;
    v72 = v96;
    v73 = v99;
    v74 = v93;
    sub_1BD587110(v96, v99, 0, 0, v93, v95);
    sub_1BD587110(v53, v58, 0, 0, v54, v55);
    sub_1BD587160(v72, v73, 0, 0, v74, v71);
    v75 = v70;
    v76 = v70;
    v77 = v97;
    v78 = v98;
    v79 = v100;
    sub_1BD587160(v75, v98, 0, 0, v100, v97);
    sub_1BD587160(v53, v58, 0, 0, v54, v55);
    *v56 = v76;
    v56[1] = v78;
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v79;
    v56[5] = v77;
    v80 = v95;
    v81 = v96;
    v82 = v99;
    v56[6] = v96;
    v56[7] = v82;
    v56[8] = 0;
    v56[9] = 0;
    v56[10] = v74;
    v56[11] = v80;
    v56[12] = v53;
    v56[13] = v58;
    v56[14] = 0;
    v56[15] = 0;
    v56[16] = v54;
    v56[17] = v55;
    sub_1BD587160(v53, v58, 0, 0, v54, v55);
    sub_1BD587160(v81, v82, 0, 0, v74, v80);
    sub_1BD587160(v76, v98, 0, 0, v100, v97);
    return;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v48 = sub_1BE053D64();
  v49 = -1 << *(v13 + 32);
  v50 = v48 & ~v49;
  if (((*(v13 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v58 = 1;
    v23 = v98;
    goto LABEL_56;
  }

  v91 = v22;
  v51 = ~v49;
  while (*(*(v13 + 48) + v50) <= 2u)
  {
    v52 = sub_1BE053B84();

    if (v52)
    {
      goto LABEL_58;
    }

    v50 = (v50 + 1) & v51;
    if (((*(v13 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v23 = v98;
      v22 = v91;
      v56 = v94;
      v57 = v100;
      v58 = 1;
      goto LABEL_69;
    }
  }

LABEL_58:
  v60 = v89;
  v59 = v90;
  v61 = v88;
  (*(v89 + 104))(v88, *MEMORY[0x1E69B8088], v90);
  v62 = PKPassKitBundle();
  if (v62)
  {
    v63 = v62;
    v53 = sub_1BE04B6F4();
    v65 = v64;

    (*(v60 + 8))(v61, v59);
    v22 = v91;
    v23 = v98;
    v57 = v100;
    if (*(v92 + 57) == 1)
    {
      if (*(v92 + 56) <= 1u)
      {
        v56 = v94;
        goto LABEL_64;
      }

      v56 = v94;
      if (*(v92 + 56) == 2)
      {
LABEL_64:
        v67 = sub_1BE053B84();

        if (v67)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        goto LABEL_68;
      }

      v66 = 1;
    }

    else
    {
      v66 = 2;
      v56 = v94;
    }

LABEL_68:
    v68 = *MEMORY[0x1E69B9B90];
    sub_1BE048C84();
    v55 = v68;
    v69 = v68;
    v58 = v65;
    v54 = v66;
    goto LABEL_69;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

double sub_1BD585EFC@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v23[0] = *v1;
  v23[1] = v3;
  v24[0] = v1[2];
  *(v24 + 10) = *(v1 + 42);
  v4 = sub_1BE04F504();
  v22 = 0;
  sub_1BD5853A8(v23, &v12);
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v25 = v12;
  v26 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v34[0] = v12;
  v34[1] = v13;
  sub_1BD0DE19C(&v25, &v11, &qword_1EBD4B200);
  sub_1BD0DE53C(v34, &qword_1EBD4B200);
  *&v21[103] = v31;
  *&v21[87] = v30;
  *&v21[39] = v27;
  *&v21[23] = v26;
  *&v21[119] = v32;
  *&v21[135] = v33;
  *&v21[55] = v28;
  *&v21[71] = v29;
  *&v21[7] = v25;
  v5 = *&v21[112];
  *(a1 + 113) = *&v21[96];
  *(a1 + 129) = v5;
  *(a1 + 145) = *&v21[128];
  v6 = *&v21[48];
  *(a1 + 49) = *&v21[32];
  *(a1 + 65) = v6;
  v7 = *&v21[80];
  *(a1 + 81) = *&v21[64];
  *(a1 + 97) = v7;
  result = *v21;
  v9 = *&v21[16];
  *(a1 + 17) = *v21;
  v10 = v22;
  *a1 = v4;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v10;
  *(a1 + 160) = *&v21[143];
  *(a1 + 33) = v9;
  return result;
}

uint64_t sub_1BD586080()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD586150()
{
  sub_1BE052524();
}

uint64_t sub_1BD58620C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD5862D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD5870C4();
  *a1 = result;
  return result;
}

void sub_1BD586308(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC00000073746E65;
  v5 = 0x6D6C6C6174736E69;
  if (*v1 != 2)
  {
    v5 = 0x73647261776572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C75466E49796170;
    v2 = 0xE90000000000006CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BD586394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001BE117CD0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0x80000001BE117CD0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

uint64_t sub_1BD586440()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD5864C8()
{
  sub_1BE052524();
}

uint64_t sub_1BD58653C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD5865C0@<X0>(char *a1@<X8>)
{
  v2 = sub_1BE053A44();

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

void sub_1BD586620(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BE117CD0;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BD586664@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (!*result)
  {
LABEL_27:
    v22 = 0;
    v9 = 0;
    v23 = 0;
    v11 = 0;
    v24 = 0;
    v15 = 0;
    LOWORD(v13) = 0;
    goto LABEL_49;
  }

  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = *(result + 24);
  v11 = *(result + 32);
  v12 = *(result + 40);
  v65[0] = v11;
  v13 = *(sub_1BD59B49C(v11) + 16);

  if (v13)
  {
    v44 = a2;
    v45 = a3;
    v48 = v12;
    v51 = v8;
    v64 = v9;
    v13 = v5;
    sub_1BD0DE19C(&v64, v52, &qword_1EBD4C870);
    v50 = v10;
    sub_1BD0DE19C(v65, v52, &qword_1EBD39330);
    sub_1BD59B49C(v11);
    v14 = sub_1BD6CF234(1);
    v15 = MEMORY[0x1E69E7CD0];
    v49 = v13;
    if (v14)
    {
      sub_1BE053D04();
      sub_1BE052524();
      v16 = sub_1BE053D64();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if ((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18))
      {
        v19 = ~v17;
        while (*(*(v15 + 48) + v18) <= 1u || *(*(v15 + 48) + v18) == 3)
        {
          v20 = sub_1BE053B84();

          if (v20)
          {
            goto LABEL_11;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v15 = MEMORY[0x1E69E7CD0];
      }

      else
      {
LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v15;
        sub_1BD2AA8D8(2, v18, isUniquelyReferenced_nonNull_native);
        v15 = v52[0];
      }

LABEL_11:
      v13 = v49;
    }

    v25 = sub_1BD6CF234(2);

    if (v25)
    {
      sub_1BE053D04();
      sub_1BE052524();
      v26 = sub_1BE053D64();
      v27 = -1 << *(v15 + 32);
      v28 = v26 & ~v27;
      if ((*(v15 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v15 + 48) + v28) <= 2u)
        {
          v30 = sub_1BE053B84();

          if (v30)
          {
            goto LABEL_20;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v15 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v15;
        sub_1BD2AA8D8(3, v28, v31);
        v15 = v52[0];
      }

LABEL_20:
      v13 = v49;
    }

    v23 = v50;
    v22 = v51;
    if (*(v15 + 16))
    {
      if (v64)
      {
        v32 = [v64 type];
        if (v32 == 1)
        {
          v46 = 2;
LABEL_30:
          v34 = sub_1BE053B84();

          v33 = v46;
          if ((v34 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (v32 == 2)
        {
          v46 = 3;
          goto LABEL_30;
        }
      }

      v33 = 1;
LABEL_31:
      if (v48)
      {
        v33 = 2;
      }

LABEL_33:
      v47 = v33;
      if (v44)
      {
        v35 = sub_1BD59B5AC(v11);

        sub_1BD0DE53C(&v64, &qword_1EBD4C870);
        sub_1BD0DE53C(v65, &qword_1EBD39330);
        if (v35)
        {
          if (v47 == 1)
          {
          }

          else
          {
            v36 = sub_1BE053B84();

            if ((v36 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        sub_1BE053D04();
        sub_1BE052524();
        v37 = sub_1BE053D64();
        v38 = -1 << *(v15 + 32);
        v39 = v37 & ~v38;
        if ((*(v15 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          while (*(*(v15 + 48) + v39) > 1u || !*(*(v15 + 48) + v39))
          {
            v41 = sub_1BE053B84();

            if (v41)
            {
              goto LABEL_47;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v15 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
LABEL_46:
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v52[0] = v15;
          sub_1BD2AA8D8(1, v39, v42);
          v15 = v52[0];
        }

LABEL_47:
        v23 = v50;
        v22 = v51;
        v13 = v49;
        goto LABEL_48;
      }

      sub_1BD0DE53C(&v64, &qword_1EBD4C870);
      sub_1BD0DE53C(v65, &qword_1EBD39330);
LABEL_48:
      v59[0] = v13;
      v59[1] = v22;
      v59[2] = v9;
      v59[3] = v23;
      v59[4] = v11;
      LOBYTE(v60) = v48;
      *(&v60 + 1) = *v63;
      HIDWORD(v60) = *&v63[3];
      v61 = v15;
      LOBYTE(v62) = v47;
      HIBYTE(v62) = v45 & 1;
      v24 = v60;
      v43 = v13;
      LOWORD(v13) = v62;
      v52[0] = v43;
      v52[1] = v22;
      v52[2] = v9;
      v52[3] = v23;
      v52[4] = v11;
      v53 = v48;
      *&v54[3] = *&v63[3];
      *v54 = *v63;
      v55 = v15;
      v56 = v47;
      v57 = v45 & 1;
      sub_1BD586F14(v59, v58);
      result = sub_1BD586F4C(v52);
      goto LABEL_49;
    }

    sub_1BD0DE53C(&v64, &qword_1EBD4C870);
    sub_1BD0DE53C(v65, &qword_1EBD39330);

    sub_1BD0DE53C(&v64, &qword_1EBD4C870);

    result = sub_1BD0DE53C(v65, &qword_1EBD39330);
    v5 = 0;
    goto LABEL_27;
  }

  v52[0] = v9;
  sub_1BD0DE53C(v52, &qword_1EBD4C870);

  result = sub_1BD0DE53C(v65, &qword_1EBD39330);
  v5 = 0;
  v22 = 0;
  v9 = 0;
  v23 = 0;
  v11 = 0;
  v24 = 0;
  v15 = 0;
LABEL_49:
  *a4 = v5;
  *(a4 + 8) = v22;
  *(a4 + 16) = v9;
  *(a4 + 24) = v23;
  *(a4 + 32) = v11;
  *(a4 + 40) = v24;
  *(a4 + 48) = v15;
  *(a4 + 56) = v13;
  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD586FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1BD586FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD587070()
{
  result = qword_1EBD4B1F8;
  if (!qword_1EBD4B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B1F8);
  }

  return result;
}

uint64_t sub_1BD5870C4()
{
  v0 = sub_1BE053A44();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD587110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 != 1)
  {
    v7 = a6;
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

void sub_1BD587160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_1BD5871CC()
{
  result = qword_1EBD4B208;
  if (!qword_1EBD4B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B208);
  }

  return result;
}

unint64_t sub_1BD587234()
{
  result = qword_1EBD4B218;
  if (!qword_1EBD4B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B218);
  }

  return result;
}

void sub_1BD58737C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BBD4();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v4;
  v9[4] = sub_1BD587C00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BD3CC8C0;
  v9[3] = &block_descriptor_128;
  v7 = _Block_copy(v9);
  sub_1BE048964();
  v8 = v4;

  [v8 preflightWithRequirements:13 completionRequirements:13 completion:v7];
  _Block_release(v7);
}

void sub_1BD5874B8(char a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((a1 & 1) == 0 || a2)
    {
      sub_1BD58786C(a2, a4, a5);
      goto LABEL_13;
    }

    v46 = a5;
    v47 = sub_1BE04BC84();
    v18 = [a6 paymentSetupProductModel];
    v19 = v18;
    if (v18)
    {
      v20 = *&v17[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action];
      v21 = v18;
      v22 = [v20 productIdentifier];
      v23 = [v21 productForProductIdentifier_];

      v24 = v23;
      if (v23)
      {
LABEL_8:
        v31 = *&v17[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product];
        *&v17[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product] = v24;
        v32 = v23;
        v33 = v24;

        a4(1);
        v17 = v33;
LABEL_13:

        return;
      }

      v25 = v21;
      v44 = v25;
      v26 = v47;
      v27 = [v47 issuerAdministrativeAreaCode];
      v45 = v19;
      v28 = v27;
      v29 = [v26 issuerCountryCode];
      v30 = [v25 identityProductForState:v28 country:v29];

      v19 = v45;
      if (v30)
      {
        v24 = v30;
        goto LABEL_8;
      }
    }

    sub_1BE04D104();
    v34 = v17;
    v35 = sub_1BE04D204();
    v36 = sub_1BE052C54();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v19;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = *&v34[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action];
      *(v38 + 4) = v40;
      *v39 = v40;
      v41 = v40;
      _os_log_impl(&dword_1BD026000, v35, v36, "Failed to find identity product for action %@", v38, 0xCu);
      sub_1BD1E236C(v39);
      MEMORY[0x1BFB45F20](v39, -1, -1);
      v42 = v38;
      v19 = v37;
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v17 = PKDisplayableErrorForCommonType();
    sub_1BD58786C(v17, a4, v46);

    goto LABEL_13;
  }
}

void sub_1BD58786C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

  v6 = PKDisplayableErrorForCommonType();
  if (v6)
  {
    a1 = 0;
LABEL_4:
    v7 = a1;
    v8 = v6;
    v9 = sub_1BE04A844();

    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v16[4] = sub_1BD1B5F6C;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BD126964;
  v16[3] = &block_descriptor_12_3;
  v11 = _Block_copy(v16);
  sub_1BE048964();

  v12 = PKAlertForDisplayableErrorWithCancelHandler(v9, 0, v11);
  _Block_release(v11);

  if (v12)
  {
    v13 = v3 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v12, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1BD587A44(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_context);
  v5 = v3;
  sub_1BE048964();
  v6 = sub_1BE04BC84();
  type metadata accessor for PaymentSetupIdentityFlowSection();
  swift_allocObject();
  v7 = sub_1BD4B7FFC(v4, v3, v6, 0, 0, 0);

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

uint64_t sub_1BD587B74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD587BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD587C5C()
{
  sub_1BD0F5C4C();
  if (v0 <= 0x3F)
  {
    sub_1BD587D84(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1BD587D84(319, &qword_1EBD4B278, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD587D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD587E04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  sub_1BD0DE19C(v1 + *(v12 + 44), v11, &qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04EB44();
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

void sub_1BD58800C(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB18);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v72 = v65 - v4;
  v5 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B280);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v9);
  v11 = v65 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B288);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v12);
  v14 = v65 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B290);
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v15);
  v76 = v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B298);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v79 = v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2A0);
  v22 = *(v21 - 8);
  v88 = v21;
  v89 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v81 = v65 - v24;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2A8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v25);
  v77 = v65 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2B0);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v27);
  v69 = v65 - v28;
  v92 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2B8);
  sub_1BD58D0C0();
  sub_1BE04D694();
  sub_1BD58D7F8(v1, v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v29 = *(v6 + 80);
  v30 = (v29 + 16) & ~v29;
  v73 = v7;
  v65[1] = v29;
  v31 = swift_allocObject();
  v66 = v30;
  v74 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD58EF0C(v74, v31 + v30, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE051CD4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2C8);
  v33 = sub_1BD0DE4F4(&qword_1EBD4B2D0, &qword_1EBD4B280);
  v34 = sub_1BD58D1F4();
  v35 = v1;
  v36 = v78;
  sub_1BE0507C4();

  (*(v80 + 8))(v11, v36);
  v95 = v36;
  v96 = v32;
  v97 = v33;
  v98 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v76;
  v39 = v82;
  sub_1BE050744();
  (*(v83 + 8))(v14, v39);
  v91 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B2F0);
  v95 = v39;
  v96 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1BD0DE4F4(&qword_1EBD4B2F8, &qword_1EBD4B2F0);
  v43 = v79;
  v44 = v84;
  sub_1BE050734();
  (*(v85 + 8))(v38, v44);
  v95 = v44;
  v96 = v40;
  v97 = v41;
  v98 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v81;
  v47 = v77;
  v48 = v86;
  sub_1BE050764();
  v49 = v48;
  (*(v87 + 8))(v43, v48);
  v90 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B300);
  v95 = v49;
  v96 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v88;
  v53 = sub_1BD0DE4F4(&qword_1EBD4B308, &qword_1EBD4B300);
  sub_1BE050754();
  (*(v89 + 8))(v46, v52);
  sub_1BD58C008();
  if (v54 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v93 = 0;
    v94 = v54;
    v55 = sub_1BE04D794();
    v56 = v72;
    (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BB80);
    v95 = v52;
    v96 = v50;
    v97 = v51;
    v98 = v53;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_1BD19CE20();
    v59 = v69;
    v60 = v68;
    sub_1BE050794();
    sub_1BD0DE53C(v56, &qword_1EBD3BB18);
    (*(v67 + 8))(v47, v60);
    v61 = v74;
    sub_1BD58D7F8(v35, v74, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v62 = v66;
    v63 = swift_allocObject();
    sub_1BD58EF0C(v61, v63 + v62, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    sub_1BE051CD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B310);
    v95 = v60;
    v96 = v89;
    v97 = v57;
    v98 = v58;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4B318, &qword_1EBD4B310);
    v64 = v71;
    sub_1BE0507A4();

    (*(v70 + 8))(v59, v64);
  }
}

uint64_t sub_1BD588BA4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v10[3] = *(a1 + *(v6 + 36));
  sub_1BD58D7F8(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD58EF0C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B480);
  sub_1BD0DE4F4(&qword_1EBD4B340, &qword_1EBD4B348);
  v10[1] = sub_1BE04D6C4();
  v10[2] = MEMORY[0x1E695B228];
  swift_getOpaqueTypeConformance2();
  sub_1BD58F45C(&qword_1EBD4B488, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
  return sub_1BE0519A4();
}

void sub_1BD588DDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B490);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v49 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v56, v9);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B498);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v57 = v49 - v22;
  v23 = sub_1BE04D6C4();
  v54 = *(v23 - 8);
  v55 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v53 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE052404();
  v27 = PKLocalizedBankConnectString(v26);

  if (!v27)
  {
    goto LABEL_6;
  }

  v28 = sub_1BE052434();
  v30 = v29;

  v59 = v28;
  v60 = v30;
  v52 = v30;
  v31 = *(v16 + 36);
  v32 = sub_1BE04AF64();
  v51 = sub_1BD58F45C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if ((sub_1BE052314() & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v49[1] = a2;
  v49[2] = v8;
  v49[3] = a3;
  v33 = *(v32 - 8);
  v34 = v33[2];
  v35 = v58;
  v34(v15, v58, v32);
  v50 = v16;
  v36 = v56;
  v34(&v15[*(v56 + 48)], v35 + v31, v32);
  sub_1BD0DE19C(v15, v11, &unk_1EBD38810);
  v37 = *(v36 + 48);
  v38 = v33[4];
  v38(v19, v11, v32);
  v39 = v33[1];
  v39(&v11[v37], v32);
  sub_1BD0DE204(v15, v11, &unk_1EBD38810);
  v38(&v19[*(v50 + 36)], &v11[*(v36 + 48)], v32);
  v39(v11, v32);
  sub_1BD0DDEBC();
  sub_1BE04D5D4();
  sub_1BD0DE53C(v19, &qword_1EBD38DB8);

  v40 = sub_1BE052404();
  v41 = PKLocalizedBankConnectString(v40);

  if (v41)
  {
    v42 = sub_1BE052434();
    v44 = v43;

    v62 = v42;
    v63 = v44;
    type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
    v59 = sub_1BE0493C4();
    v60 = v45;
    v61 = v46;
    type metadata accessor for Decimal(0);
    sub_1BE04D5E4();

    type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    sub_1BE04E334();
    v47 = v53;
    sub_1BE04D6A4();
    v48 = v55;
    sub_1BE04D4E4();
    (*(v54 + 8))(v47, v48);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BD5893DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v18 = a1;
  v5 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = sub_1BE04D474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v14 = 0;
  v15 = 0;
  if (*(a2 + *(v6 + 44)) == 1)
  {
    (*(v10 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v9, v13);
    sub_1BD58D7F8(a2, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = (v11 + *(v19 + 80) + v16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    (*(v10 + 32))(v15 + v16, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_1BD58EF0C(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v17, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v14 = sub_1BD58F6E0;
  }

  *a3 = v14;
  a3[1] = v15;
}

uint64_t sub_1BD5895FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a1;
  v34 = a3;
  v37 = a4;
  v5 = sub_1BE04D474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B438);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v13);
  v35 = &v30 - v14;
  if (sub_1BE04D464())
  {
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    v30 = v40;
    v31 = v39;
    v15 = *(v9 + 28);
    v16 = v34;
    *&v39 = *(v34 + v15);
    KeyPath = swift_getKeyPath();
    sub_1BD58D7F8(v16, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    (*(v6 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
    v17 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
    v19 = swift_allocObject();
    sub_1BD58EF0C(v12, v19 + v17, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    (*(v6 + 32))(v19 + v18, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v20 = (v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
    v21 = v30;
    *v20 = v31;
    v20[1] = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1BD58F7F0;
    *(v22 + 24) = v19;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B440);
    sub_1BD58D604();
    sub_1BD58F978(&qword_1EBD4B448, &qword_1EBD4B440, &unk_1BE0E2F98, sub_1BD58F9F4);
    v23 = v35;
    sub_1BE0519C4();

    v24 = v37;
    v25 = v36;
    (*(v38 + 32))(v37, v23, v36);
    return (*(v38 + 56))(v24, 0, 1, v25);
  }

  else
  {
    v27 = v37;
    v28 = *(v38 + 56);
    v29 = v36;

    return v28(v27, 1, 1, v29);
  }
}

uint64_t sub_1BD589A64@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v75 = a1;
  v13 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B478);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v73 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B468);
  MEMORY[0x1EEE9AC00](v76, v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B458);
  v79 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v73 - v29;
  *&v30 = COERCE_DOUBLE(sub_1BD58A038());
  if (v32)
  {
    v33 = *(v79 + 56);

    return v33(a3, 1, 1, v24);
  }

  else
  {
    v73 = v31;
    v74 = *&v30;
    v35 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    if (a2[v35[9]])
    {
      v36 = 2.0;
    }

    else
    {
      v36 = 4.0;
    }

    v37 = *(v13 + 20);
    v38 = *MEMORY[0x1E697F468];
    v39 = sub_1BE04F684();
    (*(*(v39 - 8) + 104))(v16 + v37, v38, v39);
    *v16 = v36;
    v16[1] = v36;
    v40 = [objc_opt_self() quaternarySystemFillColor];
    v41 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    sub_1BD58EF0C(v16, v20, MEMORY[0x1E697EAF0]);
    v43 = &v20[*(v17 + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    v44 = *a2;
    sub_1BE04E334();
    v84.origin.x = a4;
    v84.origin.y = a5;
    v84.size.width = a6;
    v84.size.height = a7;
    CGRectGetHeight(v84);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    sub_1BD0DE204(v20, v23, &qword_1EBD4B478);
    v45 = &v23[*(v76 + 36)];
    v46 = v82;
    v47 = v80;
    *(v45 + 1) = v81;
    *(v45 + 2) = v46;
    *v45 = v47;
    if (a2[v35[10]])
    {
      v48 = a4;
      v49 = a7;
      v50 = *(*&a2[v35[7]] + 16);
      v51 = sub_1BE04E334();
      if (v51)
      {
        v52 = 12.0;
      }

      else
      {
        v52 = 6.0;
      }

      v53 = a6;
      if (v51)
      {
        v54 = 20.0;
      }

      else
      {
        v54 = 10.0;
      }

      v55 = sub_1BE04E334();
      v56 = sub_1BE04E334();
      v57 = 3.0;
      if (v55)
      {
        v57 = 6.0;
      }

      v58 = 5.0;
      if (v55)
      {
        v58 = 10.0;
      }

      v59 = 12.0;
      if ((v56 & 1) == 0)
      {
        v59 = 6.0;
      }

      v60 = 20.0;
      if ((v56 & 1) == 0)
      {
        v60 = 10.0;
      }

      if (v44 >= 2)
      {
        v61 = v52;
      }

      else
      {
        v61 = v54;
      }

      a6 = v53;
      v62 = v50;
      a7 = v49;
      a4 = v48;
      v63 = (v53 - v61 * v62) / (v62 + v62 + -2.0);
      v64 = v75;
      v65 = v63 * v64 + v63 * v64;
      if (v44 < 2)
      {
        v59 = v60;
        v57 = v58;
      }

      v66 = v59 * v64 + v65 + v57 + v48;
    }

    else
    {
      v66 = (v73 - v74) * 0.5 + v74;
    }

    v67 = v24;
    v85.origin.x = a4;
    v85.origin.y = a5;
    v85.size.width = a6;
    v85.size.height = a7;
    MidY = CGRectGetMidY(v85);
    v69 = v78;
    sub_1BD0DE204(v23, v78, &qword_1EBD4B468);
    v70 = (v69 + *(v67 + 36));
    *v70 = v66;
    v70[1] = MidY;
    v71 = v69;
    v72 = v77;
    sub_1BD0DE204(v71, v77, &qword_1EBD4B458);
    sub_1BD0DE204(v72, a3, &qword_1EBD4B458);
    return (*(v79 + 56))(a3, 0, 1, v67);
  }
}

uint64_t sub_1BD58A038()
{
  v0 = sub_1BE04EB44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  sub_1BE04ADD4();
  v14 = sub_1BE04D444();
  if (v15 & 1) != 0 || (v16 = *&v14, v17 = sub_1BE04D444(), (v18))
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  v23 = v17;
  v20 = *&v17;
  sub_1BD587E04(v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E697E7D8], v0);
  v21 = sub_1BE04EB34();
  v22 = *(v1 + 8);
  v22(v4, v0);
  v22(v8, v0);
  result = (*(v10 + 8))(v13, v9);
  if (v21)
  {
    if (v20 <= v16)
    {
      return v23;
    }

    __break(1u);
  }

  else if (v16 <= v20)
  {
    return *&v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD58A2F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32[3] = a2;
  v3 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32[2] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v32[1] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v32[0] = *(v9 - 8);
  v10 = *(v32[0] + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v32 - v14;
  v16 = sub_1BE04B2D4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v32 - v23;
  v25 = sub_1BE04D594();
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  (*(v17 + 104))(v20, **(&unk_1E80100E0 + *a1), v16, v27);
  (*(v17 + 32))(v24, v20, v16);
  v28 = sub_1BE04B2F4();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  sub_1BE04D584();
  sub_1BD0DE53C(v15, &unk_1EBD4E840);
  (*(v17 + 8))(v24, v16);
  sub_1BD58D7F8(a1, v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v29 = (*(v32[0] + 80) + 16) & ~*(v32[0] + 80);
  v30 = swift_allocObject();
  sub_1BD58EF0C(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  sub_1BE04D564();
  sub_1BE04D5F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3E8);
  sub_1BD58F244();
  return sub_1BE04D764();
}

id sub_1BD58A724@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v76 = a2;
  v68 = sub_1BE04ACA4();
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v3);
  v64 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for WeekdayRange(0);
  MEMORY[0x1EEE9AC00](v67, v5);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B400);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v69 = &v61 - v9;
  v10 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v78 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v77 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04AD04();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BE04AD84();
  v20 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v70 = &v61 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B408);
  v74 = *(v27 - 8);
  v75 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v61 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v61 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B418);
  v72 = *(v39 - 8);
  v73 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v61 - v45;
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v51 = &v61 - v50;
  if (!*a1)
  {
    MEMORY[0x1BFB371E0](v49);
    sub_1BE04ACB4();
    sub_1BE04AD64();
    (*(v62 + 8))(v19, v63);
    (*(v20 + 8))(v23, v71);
    sub_1BE04D664();
    sub_1BE04D644();
    sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
    sub_1BE04D5A4();
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      sub_1BE050484();
      sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408);
      v57 = v75;
      sub_1BE04D704();

      (*(v74 + 8))(v38, v57);
      v58 = v69;
      (*(v72 + 32))(v69, v51, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B430);
      swift_storeEnumTagMultiPayload();
      v56 = v58;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (*a1 == 1)
  {
    v52 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    sub_1BD0DE19C(&a1[*(v52 + 20)], v66, &qword_1EBD38DB8);
    sub_1BE04D664();
    sub_1BE04D644();
    sub_1BD58F45C(&qword_1EBD4B428, type metadata accessor for WeekdayRange);
    sub_1BE04D5A4();
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      sub_1BE050484();
      sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408);
      v54 = v75;
      sub_1BE04D704();

      (*(v74 + 8))(v34, v54);
      v55 = v69;
      (*(v72 + 32))(v69, v46, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B430);
      swift_storeEnumTagMultiPayload();
      v56 = v55;
LABEL_7:
      sub_1BD0DE204(v56, v76, &qword_1EBD4B400);
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B420);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  MEMORY[0x1BFB371E0](v49);
  v59 = v64;
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v65 + 8))(v59, v68);
  (*(v20 + 8))(v23, v71);
  sub_1BE04D664();
  sub_1BE04D644();
  sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  sub_1BE04D5A4();
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
  if (result)
  {
    sub_1BE050484();
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408);
    v60 = v75;
    sub_1BE04D704();

    (*(v74 + 8))(v30, v60);
    (*(v72 + 32))(v76, v42, v73);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1BD58B1C0(_BYTE *a1)
{
  v2 = sub_1BE04D604();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1BE04D574();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1BD58C008();
  v11 = v10;
  v12 = 4.0;
  if (v11 > 50.0)
  {
    v12 = 6.0;
    if (!*a1)
    {
      v12 = 4.0;
    }
  }

  if (v11 / v12 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1BD6CA2E0(0.0, v11, v11 / v12);
    sub_1BD58D7F8(a1, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_1BD58EF0C(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    sub_1BE048964();
    sub_1BE04D564();
    sub_1BE04D5F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B390);
    sub_1BD58EFF8();
    sub_1BE04D774();
  }
}

uint64_t sub_1BD58B42C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v67 = a1;
  v68 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C0);
  MEMORY[0x1EEE9AC00](v72, v4);
  v71 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3A8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v61 - v8;
  v10 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3B8);
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v75 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v74 = &v61 - v21;
  v22 = sub_1BE04D494();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C8);
  v27 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v61 - v33;
  if (sub_1BE04D784())
  {
    sub_1BE04E3F4();
    v80 = v77;
    v81 = v78;
    v82 = v79;
    sub_1BE04D484();
    v53 = [objc_opt_self() systemGray5Color];
    v76 = sub_1BE0511C4();
    sub_1BE04D6F4();

    (*(v23 + 8))(v26, v22);
    (*(v27 + 32))(a3, v34, v73);
  }

  else
  {
    sub_1BE04E3F4();
    v80 = v77;
    v81 = v78;
    v82 = v79;
    sub_1BE04D484();
    v35 = [objc_opt_self() systemGray3Color];
    v36 = sub_1BE0511C4();
    v63 = v9;
    v64 = a3;
    v76 = v36;
    v62 = v34;
    sub_1BE04D6F4();

    v37 = (*(v23 + 8))(v26, v22);
    MEMORY[0x1EEE9AC00](v37, v38);
    sub_1BE04D664();
    sub_1BE04D644();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    v60 = sub_1BD2A275C();
    v57 = sub_1BD58F1CC;
    v58 = &v55;
    v56 = 1;
    v55 = 0;
    v39 = v74;
    sub_1BE04D5B4();
    v40 = *(v27 + 16);
    v41 = v30;
    v61 = v30;
    v42 = v27;
    v43 = v73;
    v40(v30, v34, v73);
    v44 = v69;
    v45 = v70;
    v46 = *(v69 + 16);
    v46(v75, v39, v70);
    v47 = v71;
    v40(v71, v41, v43);
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8);
    v48 = v72;
    v49 = *(v72 + 48);
    v46(&v47[v49], v75, v45);
    v50 = v63;
    (*(v42 + 32))(v63, v47, v43);
    (*(v44 + 32))(v50 + *(v48 + 48), &v47[v49], v45);
    v51 = *(v44 + 8);
    v51(v74, v45);
    v52 = *(v42 + 8);
    v52(v62, v43);
    v51(v75, v45);
    v52(v61, v43);
    sub_1BD0DE204(v50, v64, &qword_1EBD4B3A8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3D0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1BD58BBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04A934();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  result = sub_1BE04D784();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(a1 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v46 = *(a1 + 8 * result + 32);
  type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  sub_1BE048C84();
  sub_1BE04B054();
  sub_1BD58F1D8();
  sub_1BE04A8B4();
  sub_1BE04A924();
  sub_1BE04A8C4();
  (*(v44 + 8))(v7, v45);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_1BD0DE4F4(&qword_1EBD4B3E0, &qword_1EBD4B3D8);
  sub_1BE052214();
  v20(v18, v10);
  v46 = v48;
  v47 = v49;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  sub_1BE051494();
  v26 = sub_1BE050564();
  v28 = v27;
  v30 = v29;

  sub_1BD0DDF10(v21, v23, v25 & 1);

  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1BE050484();
  v31 = sub_1BE0505F4();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1BD0DDF10(v26, v28, v30 & 1);

  v38 = sub_1BE050204();
  v39 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v38)
  {
    v39 = sub_1BE050214();
  }

  result = sub_1BE04E1F4();
  LOBYTE(v48) = v35 & 1;
  LOBYTE(v46) = 0;
  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v39;
  *(a2 + 40) = v40;
  *(a2 + 48) = v41;
  *(a2 + 56) = v42;
  *(a2 + 64) = v43;
  *(a2 + 72) = 0;
  return result;
}

void sub_1BD58C008()
{
  v20 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) + 28));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BD5321EC(0, v6, 0);
    v7 = v21;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v19 = *(v1 + 72);
    do
    {
      sub_1BD58D7F8(v8, v4, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
      v9 = sub_1BE0493C4();
      v11 = v10;
      v13 = v12;
      sub_1BD58EEB0(v4);
      v21 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BD5321EC((v14 > 1), v15 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 20 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      *(v16 + 48) = v13;
      v8 += v19;
      --v6;
    }

    while (v6);
  }

  sub_1BD5DD098(v7, &v22);

  if ((v23 & 1) == 0)
  {
    v17 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB403F0](v17))
    {
      v18 = sub_1BE053344();
      sub_1BE0529E4();
    }
  }
}

uint64_t sub_1BD58C238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D474();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v15);
  sub_1BD58D7F8(a2, v10, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v16, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  result = sub_1BD58EF0C(v10, v18 + v17, type metadata accessor for FinanceKitSpendingSummariesGraphView);
  *a3 = sub_1BD58D4E4;
  a3[1] = v18;
  return result;
}

uint64_t sub_1BD58C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a1;
  v40 = a4;
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_1BE04D474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B320);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v39 = &v34 - v17;
  v18 = sub_1BE04D464();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CGRect(0);
    v36 = v19;
    sub_1BE04E6B4();
    v34 = v44;
    v35 = v43;
    *&v43 = *(a3 + *(v6 + 28));
    KeyPath = swift_getKeyPath();
    (*(v10 + 16))(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
    sub_1BD58D7F8(a3, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (*(v38 + 80) + v21 + 32) & ~*(v38 + 80);
    v23 = swift_allocObject();
    (*(v10 + 32))(v23 + v20, v13, v9);
    v24 = (v23 + v21);
    v25 = v34;
    *v24 = v35;
    v24[1] = v25;
    sub_1BD58EF0C(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1BD58D4FC;
    *(v26 + 24) = v23;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B330);
    sub_1BD58D604();
    sub_1BD58F978(&qword_1EBD4B350, &qword_1EBD4B330, &unk_1BE0E2EE8, sub_1BD58D6B4);
    v27 = v39;
    sub_1BE0519C4();

    v28 = v41;
    v29 = v40;
    (*(v42 + 32))(v40, v27, v41);
    return (*(v42 + 56))(v29, 0, 1, v28);
  }

  else
  {
    v31 = v41;
    v32 = *(v42 + 56);
    v33 = v40;

    return v32(v33, 1, 1, v31);
  }
}

uint64_t sub_1BD58C89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v102 = a1;
  v109 = a4;
  v103 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v103, v14);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B380);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v99 - v19;
  v104 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B370));
  MEMORY[0x1EEE9AC00](*&v104, v21);
  v107 = &v99 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B360);
  v23 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v24);
  v106 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v105 = &v99 - v28;
  v29 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v114 = 0;
  *&v33 = COERCE_DOUBLE(sub_1BE04D454());
  if (v34)
  {
    v117.origin.x = a5;
    v117.origin.y = a6;
    v117.size.width = a7;
    v117.size.height = a8;
    MinY = CGRectGetMinY(v117);
  }

  else
  {
    MinY = *&v33;
  }

  *&v114 = sub_1BE0493C4();
  *(&v114 + 1) = v36;
  LODWORD(v115) = v37;
  type metadata accessor for Decimal(0);
  *&v38 = COERCE_DOUBLE(sub_1BE04D454());
  if (v39)
  {
    v118.origin.x = a5;
    v118.origin.y = a6;
    v118.size.width = a7;
    v118.size.height = a8;
    MaxY = CGRectGetMaxY(v118);
  }

  else
  {
    MaxY = *&v38;
  }

  *&v41 = COERCE_DOUBLE(sub_1BD58A038());
  if (v43)
  {
    v44 = 1;
    v45 = v109;
    v46 = v108;
  }

  else
  {
    v100 = v42;
    v101 = *&v41;
    v47 = MinY - MaxY;
    v119.origin.x = a5;
    v119.origin.y = a6;
    v119.size.width = a7;
    v119.size.height = a8;
    Height = CGRectGetHeight(v119);
    sub_1BD58D7F8(a2, v32, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending);
    v49 = type metadata accessor for FinanceKitSegmentedBarConfiguration();
    v50 = objc_allocWithZone(v49);
    sub_1BE0493C4();
    v51 = sub_1BE053344();
    [v51 doubleValue];
    v53 = v52;

    *&v50[OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_totalAmount] = v53;
    *&v50[OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending] = sub_1BD5A2E3C(v32);
    v110.receiver = v50;
    v110.super_class = v49;
    v54 = objc_msgSendSuper2(&v110, sel_init);
    sub_1BD58EEB0(v32);
    v55 = objc_allocWithZone(MEMORY[0x1E69DD1B8]);
    v56 = v54;
    v57 = [v55 init];
    v58 = PKBroadwayDisableDynamicCardBlur();
    PKSegmentedBarCreateBarImage(v56, v57, 1, v58 ^ 1, MinY - MaxY, Height);

    sub_1BE051544();
    v59 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
    v60 = *(v103 + 20);
    v61 = *MEMORY[0x1E697F468];
    v62 = sub_1BE04F684();
    (*(*(v62 - 8) + 104))(&v16[v60], v61, v62);
    sub_1BE04FA24();
    *v16 = v63;
    *(v16 + 1) = v64;
    *(v16 + 2) = v65;
    *(v16 + 3) = v66;
    sub_1BE048964();
    sub_1BE04E2A4();
    sub_1BD58EF0C(v16, v20, MEMORY[0x1E697FF20]);
    v67 = &v20[*(v17 + 52)];
    v68 = v112;
    *v67 = v111;
    *(v67 + 1) = v68;
    *(v67 + 2) = v113;
    *&v20[*(v17 + 56)] = 256;
    v69 = *a3;
    sub_1BE04E334();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v70 = v107;
    sub_1BD0DE204(v20, v107, &qword_1EBD4B380);
    v71 = (v70 + *(*&v104 + 36));
    v72 = v116;
    v73 = v114;
    v71[1] = v115;
    v71[2] = v72;
    *v71 = v73;
    if (a3[*(v59 + 40)] == 1)
    {
      v74 = *&a3[*(v59 + 28)];
      v104 = a5;
      v75 = *(v74 + 16);
      v76 = sub_1BE04E334();
      v77 = a7;
      if (v76)
      {
        v78 = 12.0;
      }

      else
      {
        v78 = 6.0;
      }

      v79 = MaxY;
      if (v76)
      {
        v80 = 20.0;
      }

      else
      {
        v80 = 10.0;
      }

      v81 = sub_1BE04E334();
      v82 = sub_1BE04E334();

      v83 = 3.0;
      if (v81)
      {
        v83 = 6.0;
      }

      v84 = 5.0;
      if (v81)
      {
        v84 = 10.0;
      }

      v85 = 12.0;
      if ((v82 & 1) == 0)
      {
        v85 = 6.0;
      }

      v86 = 20.0;
      if ((v82 & 1) == 0)
      {
        v86 = 10.0;
      }

      if (v69 >= 2)
      {
        v87 = v78;
      }

      else
      {
        v87 = v80;
      }

      MaxY = v79;
      v88 = (v77 - v87 * v75) / (v75 + v75 + -2.0) * v102;
      v89 = v88 + v88;
      if (v69 < 2)
      {
        v85 = v86;
        v83 = v84;
      }

      v90 = v85 * v102 + v89 + v83 + v104;
    }

    else
    {
      v91 = v100;
      v92 = v101;

      v90 = (v91 - v92) * 0.5 + v92;
    }

    v46 = v108;
    v93 = v106;
    sub_1BD0DE204(v70, v106, &qword_1EBD4B370);
    v94 = (v93 + *(v46 + 36));
    *v94 = v90;
    v94[1] = MaxY + v47 * 0.5;
    v95 = v93;
    v96 = v105;
    sub_1BD0DE204(v95, v105, &qword_1EBD4B360);
    v97 = v96;
    v45 = v109;
    sub_1BD0DE204(v97, v109, &qword_1EBD4B360);
    v44 = 0;
  }

  return (*(v23 + 56))(v45, v44, 1, v46);
}

unint64_t sub_1BD58D0C0()
{
  result = qword_1EBD4B2C0;
  if (!qword_1EBD4B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2B8);
    sub_1BE04D6C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B2C0);
  }

  return result;
}

void sub_1BD58D174(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD5893DC(a1, v6, a2);
}

unint64_t sub_1BD58D1F4()
{
  result = qword_1EBD4B2D8;
  if (!qword_1EBD4B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B2C8);
    sub_1BD0DE4F4(&qword_1EBD4B2E0, &qword_1EBD4B2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B2D8);
  }

  return result;
}

uint64_t objectdestroyTm_60()
{
  v1 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = v3 + *(v1 + 20);
  v5 = sub_1BE04AF64();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v6(v4 + *(v7 + 36), v5);

  v8 = *(v2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1BE04EB44();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD58D464@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD58C238(a1, v6, a2);
}

uint64_t sub_1BD58D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1BE04D474() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v10 = *(v3 + v8);
  v11 = *(v3 + v8 + 8);
  v12 = *(v3 + v8 + 16);
  v13 = *(v3 + v8 + 24);
  v14 = (v3 + ((v8 + *(v9 + 80) + 32) & ~*(v9 + 80)));

  return sub_1BD58C89C(a1, a2, v14, a3, v10, v11, v12, v13);
}

unint64_t sub_1BD58D604()
{
  result = qword_1EBD4B338;
  if (!qword_1EBD4B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B328);
    sub_1BD0DE4F4(&qword_1EBD4B340, &qword_1EBD4B348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B338);
  }

  return result;
}

unint64_t sub_1BD58D6B4()
{
  result = qword_1EBD4B358;
  if (!qword_1EBD4B358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B360);
    sub_1BD58D740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B358);
  }

  return result;
}

unint64_t sub_1BD58D740()
{
  result = qword_1EBD4B368;
  if (!qword_1EBD4B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B370);
    sub_1BD0DE4F4(&qword_1EBD4B378, &qword_1EBD4B380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B368);
  }

  return result;
}

uint64_t sub_1BD58D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58D860(char *a1)
{
  v3 = sub_1BE04AC34();
  v130 = *(v3 - 8);
  v131 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v128 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AD84();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v127 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v129 = &v111 - v11;
  v12 = sub_1BE04B3B4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v124 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v123 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E930);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v111 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4D0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v118 = &v111 - v23;
  v122 = sub_1BE04AE04();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v24);
  v117 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v119 = &v111 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v115, v29);
  v114 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v113 = &v111 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v116 = &v111 - v36;
  v142 = sub_1BE04B2D4();
  v37 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE04B2F4();
  v140 = *(v41 - 8);
  v141 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v143 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D8);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v111 - v46;
  v48 = sub_1BE04A2B4();
  v144 = *(v48 - 8);
  v145 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v139 = &v111 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BE04AF64();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v53);
  v126 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v138 = &v111 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v125 = &v111 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v137 = &v111 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v111 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v111 - v70;
  v112 = v34;
  v134 = v1;
  sub_1BE04ADD4();
  v147 = sub_1BD58F45C(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v72 = sub_1BE0522F4();
  v73 = v52;
  v74 = *(v52 + 16);
  v135 = a1;
  v136 = v74;
  v146 = v71;
  if (v72)
  {
    v75 = v67;
    v76 = v71;
  }

  else
  {
    v75 = v67;
    v76 = a1;
  }

  v74(v75, v76, v51);
  v77 = v67;
  v78 = v143;
  sub_1BE04B2A4();
  v79 = v142;
  (*(v37 + 104))(v40, *MEMORY[0x1E6969A20], v142);
  sub_1BE04B124();
  (*(v37 + 8))(v40, v79);
  (*(v140 + 8))(v78, v141);
  v81 = v144;
  v80 = v145;
  if ((*(v144 + 48))(v47, 1, v145) == 1)
  {
    v82 = sub_1BD0DE53C(v47, &qword_1EBD402D8);
    v83 = v127;
    MEMORY[0x1BFB371E0](v82);
    v84 = v128;
    sub_1BE04AC24();
    v85 = v129;
    sub_1BE04AB94();
    (*(v130 + 8))(v84, v131);
    v86 = v133;
    v87 = *(v132 + 8);
    v87(v83, v133);
    sub_1BD58F45C(&qword_1EBD4E940, MEMORY[0x1E6969328]);
    sub_1BE04AF44();
    v87(v85, v86);
    v88 = *(v73 + 8);
    v88(v77, v51);
    v88(v146, v51);
    return v148;
  }

  v142 = v67;
  (*(v81 + 32))(v139, v47, v80);
  v89 = v125;
  sub_1BE04A294();
  v90 = v134;
  if (sub_1BE052304())
  {
    (*(v52 + 8))(v89, v51);
    v91 = v137;
    v136(v137, v90, v51);
  }

  else
  {
    v91 = v137;
    (*(v52 + 32))(v137, v89, v51);
  }

  v92 = v126;
  sub_1BE04A284();
  v93 = v146;
  v94 = sub_1BE0522F4();
  v95 = v138;
  if (v94)
  {
    (*(v52 + 8))(v92, v51);
    v136(v95, v93, v51);
  }

  else
  {
    (*(v52 + 32))(v138, v92, v51);
  }

  result = sub_1BE052314();
  if (result)
  {
    v97 = v113;
    v98 = v136;
    v136(v113, v91, v51);
    v99 = v115;
    v98(v97 + *(v115 + 48), v95, v51);
    v100 = v114;
    sub_1BD0DE19C(v97, v114, &unk_1EBD38810);
    v101 = *(v99 + 48);
    v102 = *(v52 + 32);
    v103 = v116;
    v102(v116, v100, v51);
    v104 = *(v52 + 8);
    v104(v100 + v101, v51);
    sub_1BD0DE204(v97, v100, &unk_1EBD38810);
    v102((v103 + *(v112 + 36)), v100 + *(v99 + 48), v51);
    v104(v100, v51);
    v105 = sub_1BE04AB54();
    (*(*(v105 - 8) + 56))(v118, 1, 1, v105);
    v106 = sub_1BE04AB24();
    (*(*(v106 - 8) + 56))(v120, 1, 1, v106);
    sub_1BE04B054();
    sub_1BE04B1E4();
    sub_1BE04B384();
    v107 = v117;
    sub_1BE04ADF4();
    v108 = v119;
    sub_1BE04ADE4();
    v109 = *(v121 + 8);
    v110 = v122;
    v109(v107, v122);
    sub_1BD58F45C(&qword_1EBD4B4D8, MEMORY[0x1E69693B8]);
    sub_1BE052B54();
    v109(v108, v110);
    sub_1BD0DE53C(v103, &qword_1EBD38DB8);
    v104(v138, v51);
    v104(v137, v51);
    (*(v144 + 8))(v139, v145);
    v104(v142, v51);
    v104(v146, v51);
    return v148;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD58E64C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v20 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4E0);
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for WeekdayRange(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD58FE54();
  sub_1BE053D94();
  if (!v2)
  {
    v15 = v18;
    sub_1BD58FEA8(&qword_1EBD4B4F0, &qword_1EBD49AA0);
    v16 = v20;
    sub_1BE053AA4();
    (*(v19 + 8))(v10, v7);
    sub_1BD0DE204(v16, v14, &qword_1EBD38DB8);
    sub_1BD58EF0C(v14, v15, type metadata accessor for WeekdayRange);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1BD58E8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x576465706D616C63 && a2 == 0xED00006E69687469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BE053B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BD58E980(uint64_t a1)
{
  v2 = sub_1BD58FE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD58E9BC(uint64_t a1)
{
  v2 = sub_1BD58FE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD58E9F8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD58D860(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD58EA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B4F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD58FE54();
  sub_1BE053DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  sub_1BD58FEA8(&qword_1EBD4B500, &qword_1EBD49AA8);
  sub_1BE053AF4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD58EBC8()
{
  sub_1BE053D04();
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD58EC88()
{
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  return sub_1BE052294();
}

uint64_t sub_1BD58ED30()
{
  sub_1BE053D04();
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BE052294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  sub_1BE052294();
  return sub_1BE053D64();
}

BOOL sub_1BD58EDEC()
{
  sub_1BE04AF64();
  sub_1BD58F45C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  result = 0;
  if (sub_1BE052334())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    if (sub_1BE052334())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1BD58EEB0(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD58EF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD58EF74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD58B42C(v4, v5, a1);
}

unint64_t sub_1BD58EFF8()
{
  result = qword_1EBD4B398;
  if (!qword_1EBD4B398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B390);
    sub_1BD58F0C8();
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B398);
  }

  return result;
}

unint64_t sub_1BD58F0C8()
{
  result = qword_1EBD4B3A0;
  if (!qword_1EBD4B3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B3A8);
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3A0);
  }

  return result;
}

unint64_t sub_1BD58F1D8()
{
  result = qword_1EBD35F28;
  if (!qword_1EBD35F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F28);
  }

  return result;
}

unint64_t sub_1BD58F244()
{
  result = qword_1EBD4B3F0;
  if (!qword_1EBD4B3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B3E8);
    sub_1BD58F348();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B408);
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3F0);
  }

  return result;
}

unint64_t sub_1BD58F348()
{
  result = qword_1EBD4B3F8;
  if (!qword_1EBD4B3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B408);
    sub_1BD0DE4F4(&qword_1EBD4B410, &qword_1EBD4B408);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B3F8);
  }

  return result;
}

uint64_t sub_1BD58F45C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_13Tm()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6 + v5[7];
  v8 = sub_1BE04AF64();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v9(v7 + *(v10 + 36), v8);

  v11 = v5[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BE04EB44();
    (*(*(v12 - 8) + 8))(v0 + v6 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD58F6F8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1BE04D474() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_1BD58F7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BE04D474() - 8);
  v9 = (v2 + ((*(v8 + 64) + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];

  return sub_1BD589A64(a1, (v2 + v6), a2, v10, v11, v12, v13);
}

uint64_t sub_1BD58F910(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B388);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1BD58F978(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD58F9F4()
{
  result = qword_1EBD4B450;
  if (!qword_1EBD4B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B458);
    sub_1BD58FA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B450);
  }

  return result;
}

unint64_t sub_1BD58FA80()
{
  result = qword_1EBD4B460;
  if (!qword_1EBD4B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B468);
    sub_1BD58FB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B460);
  }

  return result;
}

unint64_t sub_1BD58FB0C()
{
  result = qword_1EBD4B470;
  if (!qword_1EBD4B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B478);
    sub_1BD58F45C(&qword_1EBD3D088, MEMORY[0x1E697EAF0]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B470);
  }

  return result;
}

uint64_t sub_1BD58FC0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FinanceKitSpendingSummariesGraphView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1BD58FCC8()
{
  sub_1BD0F5C4C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BD58FE54()
{
  result = qword_1EBD4B4E8;
  if (!qword_1EBD4B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B4E8);
  }

  return result;
}

uint64_t sub_1BD58FEA8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8);
    sub_1BD58F45C(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD58FF58()
{
  result = qword_1EBD4B508;
  if (!qword_1EBD4B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B508);
  }

  return result;
}

unint64_t sub_1BD58FFB0()
{
  result = qword_1EBD4B510;
  if (!qword_1EBD4B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B510);
  }

  return result;
}

unint64_t sub_1BD590008()
{
  result = qword_1EBD4B518;
  if (!qword_1EBD4B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B518);
  }

  return result;
}

uint64_t type metadata accessor for FinanceKitTransactionTypeView()
{
  result = qword_1EBD4B520;
  if (!qword_1EBD4B520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5900D4()
{
  sub_1BD590208(319, &qword_1EBD4B530, _s9ViewModelCMa, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD327BD8(319, &unk_1EBD59650);
    if (v1 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0);
      if (v2 <= 0x3F)
      {
        sub_1BD590208(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD590208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD5902D8(uint64_t a1, uint64_t *a2)
{
  v4 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD59579C(a1, v7, _s12DetailsModelVMa);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();

  return sub_1BD595804(v7, _s12DetailsModelVMa);
}

uint64_t sub_1BD590450@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD59579C(v7 + v8, a4, a3);
}

uint64_t sub_1BD590524(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD59579C(a1, v7, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();

  return sub_1BD595804(v7, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
}

uint64_t sub_1BD590674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD3F780);
}

uint64_t sub_1BD59074C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD3F780);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD3F780);
}

uint64_t sub_1BD59089C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8);
  v6 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16);
  v7 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1BD2726F8(v4, v5);
}

uint64_t sub_1BD59095C()
{
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();
}

uint64_t sub_1BD590A34@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted);
  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__onTransactionDeleted + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BD214190;
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

uint64_t sub_1BD590B2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BD59528C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_1BD0D44B8(v1);
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();
  sub_1BD0D4744(v4);
}

uint64_t sub_1BD590CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  sub_1BE051694();
  v15 = v23;
  *(a3 + 16) = v22;
  *(a3 + 24) = v15;
  LOBYTE(v21) = 0;
  sub_1BE051694();
  v16 = v23;
  *(a3 + 32) = v22;
  *(a3 + 40) = v16;
  v17 = *(type metadata accessor for FinanceKitTransactionTypeView() + 28);
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  sub_1BD59579C(a1, v14, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v10, a2, v6);
  _s9ViewModelCMa(0);
  swift_allocObject();
  v21 = sub_1BD268208(v14, v10);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD595804(a1, type metadata accessor for TransactionContext);
  v19 = v23;
  *a3 = v22;
  *(a3 + 8) = v19;
  return result;
}

uint64_t sub_1BD590F00@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v95 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E0) - 8);
  MEMORY[0x1EEE9AC00](v95, v2);
  v97 = &v78 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B538);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v4);
  v92 = &v78 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B540);
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v6);
  v84 = &v78 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B548);
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v8);
  v81 = &v78 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B550);
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v10);
  v12 = &v78 - v11;
  v100 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B558);
  sub_1BD0DE4F4(&qword_1EBD4B560, &qword_1EBD4B558);
  sub_1BE0504E4();
  v13 = type metadata accessor for FinanceKitTransactionTypeView();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v16;
  v18 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v19;
  v79 = v1;
  v87 = type metadata accessor for FinanceKitTransactionTypeView;
  sub_1BD59579C(v1, v18, type metadata accessor for FinanceKitTransactionTypeView);
  v20 = *(v14 + 80);
  v21 = (v20 + 16) & ~v20;
  v86 = v17;
  v22 = swift_allocObject();
  v89 = type metadata accessor for FinanceKitTransactionTypeView;
  v23 = sub_1BD595508(v18, v22 + v21, type metadata accessor for FinanceKitTransactionTypeView);
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BD59579C(v1, &v78 - v19, type metadata accessor for FinanceKitTransactionTypeView);
  v25 = swift_allocObject();
  sub_1BD595508(&v78 - v19, v25 + v21, type metadata accessor for FinanceKitTransactionTypeView);
  v26 = sub_1BD0DE4F4(&qword_1EBD4B568, &qword_1EBD4B550);
  v27 = sub_1BD0F9764();
  v28 = MEMORY[0x1E69E7DE0];
  v29 = v81;
  v30 = v80;
  sub_1BE050DC4();

  (*(v82 + 8))(v12, v30);
  v31 = sub_1BE04F434();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 104))(v36, *MEMORY[0x1E697C438], v31, v34);
  v102 = v30;
  v103 = v28;
  v104 = v26;
  v105 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v84;
  v39 = v83;
  sub_1BE050E84();
  (*(v32 + 8))(v36, v31);
  (*(v85 + 8))(v29, v39);
  v40 = v79;
  v99 = v79;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B570);
  v102 = v39;
  v103 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578);
  v44 = sub_1BD595034();
  v102 = v43;
  v103 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v92;
  v47 = v90;
  sub_1BE051024();
  (*(v91 + 8))(v38, v47);
  v98 = v40;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  v102 = v47;
  v103 = v41;
  v104 = v42;
  v105 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v48 = v97;
  v49 = v93;
  sub_1BE050954();
  (*(v94 + 8))(v46, v49);
  v50 = sub_1BE04EC54();
  v51 = sub_1BE0501F4();
  v52 = v48 + *(v95 + 11);
  *v52 = v50;
  *(v52 + 8) = v51;
  MEMORY[0x1EEE9AC00](v51, v53);
  v54 = &v78 - v88;
  sub_1BD59579C(v40, &v78 - v88, v87);
  sub_1BE0528A4();
  v55 = sub_1BE052894();
  v56 = swift_allocObject();
  v57 = MEMORY[0x1E69E85E0];
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  sub_1BD595508(v54, v56 + ((v20 + 32) & ~v20), v89);
  v58 = sub_1BE0528D4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58, v61);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v78 - v62;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v94 = sub_1BE04EAA4();
    v95 = &v78;
    v93 = *(v94 - 8);
    MEMORY[0x1EEE9AC00](v94, v64);
    v66 = &v78 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1BE053834();

    v102 = 0xD00000000000003ALL;
    v103 = 0x80000001BE12F370;
    v101 = 113;
    v67 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v67);

    v70 = MEMORY[0x1EEE9AC00](v68, v69);
    (*(v59 + 16))(&v78 - v62, &v78 - v62, v58, v70);
    sub_1BE04EA94();
    (*(v59 + 8))(&v78 - v62, v58);
    v71 = v96;
    sub_1BD0881D4(v97, v96);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371E8);
    return (*(v93 + 32))(v71 + *(v72 + 36), v66, v94);
  }

  else
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371F0);
    v75 = v96;
    v76 = (v96 + *(v74 + 36));
    v77 = sub_1BE04E7B4();
    (*(v59 + 32))(&v76[*(v77 + 20)], v63, v58);
    *v76 = &unk_1BE0E3320;
    *(v76 + 1) = v56;
    return sub_1BD0881D4(v97, v75);
  }
}

uint64_t sub_1BD591AF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
  MEMORY[0x1EEE9AC00](v56, v3);
  v55 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v63 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v53 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C8);
  v58 = *(v26 - 8);
  v59 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v61 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v53 - v31;
  v67 = a1;
  sub_1BD5924CC(a1, v25);
  type metadata accessor for FinanceKitSelectedTransactionView(0);
  sub_1BD5953CC(&qword_1EBD4B5D0, &qword_1EBD4B5C0, &unk_1BE0E33E8, sub_1BD5952E8);
  sub_1BD595578(&qword_1EBD49DA0, type metadata accessor for FinanceKitSelectedTransactionView);
  v60 = v32;
  sub_1BE051A24();
  v33 = a1[1];
  v68 = *a1;
  v69 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v34 = v70;
  swift_getKeyPath();
  v68 = v34;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v35 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__historyModel;
  swift_beginAccess();
  sub_1BD0DE19C(v34 + v35, v11, &qword_1EBD3F780);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD3F780);
LABEL_6:
    v42 = v62;
    (*(v64 + 56))(v62, 1, 1, v65);
    goto LABEL_7;
  }

  v36 = v57;
  v37 = sub_1BD595508(v11, v57, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  if (!*(*v36 + 16))
  {
    sub_1BD595804(v36, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v53 - 2) = v36;
  sub_1BD5935C8(v55);
  type metadata accessor for FinanceKitTransactionHistoryView(0);
  sub_1BD53E7A4();
  sub_1BD595578(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView);
  v39 = v54;
  sub_1BE051A24();
  v41 = v64;
  v40 = v65;
  v42 = v62;
  (*(v64 + 32))(v62, v39, v65);
  (*(v41 + 56))(v42, 0, 1, v40);
  sub_1BD595804(v36, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
LABEL_7:
  v43 = v58;
  v44 = v59;
  v45 = *(v58 + 16);
  v46 = v60;
  v47 = v61;
  v45(v61, v60, v59);
  v48 = v63;
  sub_1BD0DE19C(v42, v63, &qword_1EBD49D58);
  v49 = v66;
  v45(v66, v47, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B628);
  sub_1BD0DE19C(v48, &v49[*(v50 + 48)], &qword_1EBD49D58);
  sub_1BD0DE53C(v42, &qword_1EBD49D58);
  v51 = *(v43 + 8);
  v51(v46, v44);
  sub_1BD0DE53C(v48, &qword_1EBD49D58);
  return (v51)(v47, v44);
}

uint64_t sub_1BD5922A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v18 - v10;
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v13 = v18[3];
  swift_getKeyPath();
  v18[0] = v13;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v14 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__selectedModel;
  swift_beginAccess();
  sub_1BD59579C(v13 + v14, v11, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);

  v15 = (a2 + *(type metadata accessor for FinanceKitSelectedTransactionView(0) + 20));
  type metadata accessor for NavigationController();
  sub_1BD595578(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  *v15 = sub_1BE04EEC4();
  v15[1] = v16;
  sub_1BD59579C(v11, v7, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BE051694();
  return sub_1BD595804(v11, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
}

uint64_t sub_1BD5924CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v59 = a2;
  v2 = type metadata accessor for FinanceKitTransactionTypeView();
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B610);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B600);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5F0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5E0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v55 - v22;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B630) + 44)];
  *v24 = sub_1BE04F7B4();
  *(v24 + 1) = 0x4032000000000000;
  v24[16] = 0;
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B638) + 44)];
  v26 = v56;
  sub_1BD592954(v56, v25);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v8, v13, &qword_1EBD4B610);
  v27 = &v13[*(v10 + 44)];
  v28 = v65;
  *(v27 + 4) = v64;
  *(v27 + 5) = v28;
  *(v27 + 6) = v66;
  v29 = v61;
  *v27 = v60;
  *(v27 + 1) = v29;
  v30 = v63;
  *(v27 + 2) = v62;
  *(v27 + 3) = v30;
  LOBYTE(v10) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE204(v13, v18, &qword_1EBD4B600);
  v39 = &v18[*(v15 + 44)];
  *v39 = v10;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = v57;
  sub_1BD59579C(v26, v57, type metadata accessor for FinanceKitTransactionTypeView);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  sub_1BD595508(v40, v42 + v41, type metadata accessor for FinanceKitTransactionTypeView);
  sub_1BD0DE204(v18, v23, &qword_1EBD4B5F0);
  v43 = &v23[*(v20 + 44)];
  *v43 = sub_1BD0D4658;
  *(v43 + 1) = 0;
  *(v43 + 2) = sub_1BD595710;
  *(v43 + 3) = v42;
  LOBYTE(v42) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v59;
  sub_1BD0DE204(v23, v59, &qword_1EBD4B5E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5C0);
  v54 = v52 + *(result + 36);
  *v54 = v42;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_1BD592954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B640);
  MEMORY[0x1EEE9AC00](v61, v3);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = sub_1BE051584();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v59 = a1;
  *&v89[0] = v18;
  *(&v89[0] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v20 = v81;
  swift_getKeyPath();
  *&v89[0] = v20;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v21 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  sub_1BD59579C(v20 + v21, v17, _s12DetailsModelVMa);

  v22 = sub_1BD267354();
  sub_1BD595804(v17, _s12DetailsModelVMa);
  if (v22)
  {
    v23 = v22;
    sub_1BE051544();
    (*(v10 + 104))(v13, *MEMORY[0x1E6981630], v9);
    v60 = sub_1BE0515E4();

    (*(v10 + 8))(v13, v9);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v64 = v90;
    v24 = v91;
    v25 = v93;
    v57 = v94;
    v58 = v92;
    v56 = v95;
    v26 = [objc_opt_self() systemGrayColor];
    v54 = sub_1BE0511C4();
    v27 = PKUIPixelLength();

    LOBYTE(v89[0]) = v24;
    LOBYTE(v81) = v25;
    v28 = v24;
    v29 = v25;
    v53 = 0x4020000000000000;
    v63 = 1;
  }

  else
  {
    v60 = 0;
    v63 = 0;
    v64 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0.0;
  }

  v51 = v29;
  v52 = v28;
  v30 = sub_1BE04F7B4();
  v80 = 0;
  sub_1BD592FBC(v59, &v71);
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v78;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  v84 = v74;
  v89[0] = v71;
  v89[1] = v72;
  v89[2] = v73;
  v89[3] = v74;
  v89[4] = v75;
  v89[5] = v76;
  v89[6] = v77;
  v89[7] = v78;
  sub_1BD0DE19C(&v81, &v65, &qword_1EBD4B648);
  sub_1BD0DE53C(v89, &qword_1EBD4B648);
  *&v79[71] = v85;
  *&v79[87] = v86;
  *&v79[103] = v87;
  *&v79[119] = v88;
  *&v79[7] = v81;
  *&v79[23] = v82;
  *&v79[39] = v83;
  *&v79[55] = v84;
  v31 = &v8[*(v61 + 9)];
  v32 = v80;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v34 = sub_1BE0505C4();
  (*(*(v34 - 8) + 56))(v31 + v33, 1, 1, v34);
  *v31 = swift_getKeyPath();
  v35 = *&v79[64];
  *(v8 + 97) = *&v79[80];
  v36 = *&v79[112];
  *(v8 + 113) = *&v79[96];
  *(v8 + 129) = v36;
  v37 = *v79;
  *(v8 + 33) = *&v79[16];
  v38 = *&v79[48];
  *(v8 + 49) = *&v79[32];
  *(v8 + 65) = v38;
  *(v8 + 81) = v35;
  *v8 = v30;
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = v32;
  *(v8 + 18) = *&v79[127];
  *(v8 + 17) = v37;
  v39 = v62;
  sub_1BD0DE19C(v8, v62, &qword_1EBD4B640);
  v40 = v60;
  *&v65 = v60;
  *(&v65 + 1) = v64;
  *&v66 = v28;
  v41 = v57;
  v42 = v58;
  *(&v66 + 1) = v58;
  *&v67 = v29;
  v61 = v8;
  v44 = v55;
  v43 = v56;
  *(&v67 + 1) = v57;
  *&v68 = v56;
  v45 = v53;
  v46 = v54;
  *(&v68 + 1) = v63;
  *&v69 = v54;
  *(&v69 + 1) = v27;
  v70 = v53;
  *(v55 + 80) = v53;
  v47 = v68;
  v44[2] = v67;
  v44[3] = v47;
  v44[4] = v69;
  v48 = v66;
  *v44 = v65;
  v44[1] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B650);
  sub_1BD0DE19C(v39, v44 + *(v49 + 48), &qword_1EBD4B640);
  sub_1BD0DE19C(&v65, &v71, &qword_1EBD4B658);
  sub_1BD0DE53C(v61, &qword_1EBD4B640);
  sub_1BD0DE53C(v39, &qword_1EBD4B640);
  *&v71 = v40;
  *(&v71 + 1) = v64;
  *&v72 = v52;
  *(&v72 + 1) = v42;
  *&v73 = v51;
  *(&v73 + 1) = v41;
  *&v74 = v43;
  *(&v74 + 1) = v63;
  *&v75 = v46;
  *(&v75 + 1) = v27;
  *&v76 = v45;
  return sub_1BD0DE53C(&v71, &qword_1EBD4B658);
}

uint64_t sub_1BD592FBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12DetailsModelVMa(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v66 = a1[1];
  v67 = v9;
  v74 = v9;
  v75 = v66;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v10 = v72;
  swift_getKeyPath();
  v74 = v10;
  v64 = sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v11 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  v63 = _s12DetailsModelVMa;
  sub_1BD59579C(v10 + v11, v8, _s12DetailsModelVMa);

  v12 = &v8[*(v5 + 36)];
  v13 = v8;
  v57 = v8;
  v15 = *v12;
  v14 = *(v12 + 1);
  sub_1BE048C84();
  v60 = _s12DetailsModelVMa;
  sub_1BD595804(v13, _s12DetailsModelVMa);
  v72 = v15;
  v73 = v14;
  v59 = sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  sub_1BE050344();
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;

  sub_1BD0DDF10(v16, v18, v20 & 1);

  v61 = sub_1BE0505D4();
  v68 = v26;
  LOBYTE(v16) = v27;
  v62 = v28;
  sub_1BD0DDF10(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v58 = sub_1BE051464();
  v77 = v16 & 1;
  v76 = 0;
  v72 = v67;
  v73 = v66;
  sub_1BE0516A4();
  v29 = v70;
  swift_getKeyPath();
  v72 = v29;
  sub_1BE04B594();

  v30 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  v31 = v57;
  sub_1BD59579C(v29 + v30, v57, v63);

  v33 = *v31;
  v32 = v31[1];
  sub_1BE048C84();
  sub_1BD595804(v31, v60);
  v70 = v33;
  v71 = v32;
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  sub_1BE0502A4();
  v39 = sub_1BE0505F4();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_1BD0DDF10(v34, v36, v38 & 1);

  v46 = swift_getKeyPath();
  v47 = sub_1BE051494();
  LOBYTE(v70) = v43 & 1;
  v78 = 0;
  v48 = v77;
  v69 = v77;
  v49 = v76;
  v50 = v61;
  v51 = v68;
  *a2 = v61;
  *(a2 + 8) = v51;
  *(a2 + 16) = v48;
  v52 = KeyPath;
  *(a2 + 24) = v62;
  *(a2 + 32) = v52;
  *(a2 + 40) = 2;
  *(a2 + 48) = v49;
  *(a2 + 56) = v58;
  *(a2 + 64) = v39;
  *(a2 + 72) = v41;
  *(a2 + 80) = v43 & 1;
  *(a2 + 88) = v45;
  *(a2 + 96) = v46;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = v47;
  v53 = v50;
  sub_1BD0D7F18(v50, v51, v48 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D7F18(v39, v41, v43 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0DDF10(v39, v41, v43 & 1);

  sub_1BD0DDF10(v53, v68, v69);
}

uint64_t sub_1BD59351C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD59579C(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BD595578(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

int *sub_1BD5935C8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  v7 = MEMORY[0x1EEE9AC00](v36, v6);
  v9 = &v36 - v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v2 + 8))(v5, v1);
    v38 = v12;
    v39 = v14;
    sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    LOBYTE(v11) = v18;
    sub_1BE0503D4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v15, v17, v11 & 1);

    v24 = sub_1BE0505D4();
    v26 = v25;
    LOBYTE(v11) = v27;
    v29 = v28;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v30 = &v9[*(v36 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v32 = sub_1BE0505C4();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    *v9 = v24;
    *(v9 + 1) = v26;
    v9[16] = v11 & 1;
    *(v9 + 3) = v29;
    v33 = sub_1BE051464();
    v34 = v9;
    v35 = v37;
    sub_1BD0DE204(v34, v37, &qword_1EBD386A0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48);
    *(v35 + result[9]) = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5938E0@<X0>(double *a1@<X8>)
{
  sub_1BE04E9E4();
  v3 = v2;
  sub_1BE04E9D4();
  v5 = v3 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  result = sub_1BE0516A4();
  v7 = v5 / v8;
  if (v5 / v8 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1BD5939F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B578);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12[-v4];
  v13 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B588);
  v8 = sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588);
  v14 = v7;
  v15 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3E5A0](sub_1BD5952B4, v12, v6, OpaqueTypeConformance2);
  v10 = sub_1BD595034();
  MEMORY[0x1BFB3CC50](v5, v2, v10);
  return sub_1BD08828C(v5);
}

uint64_t sub_1BD593B58@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  swift_getKeyPath();
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v2 = *(v10 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel);
  v3 = *(v10 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 8);
  v4 = *(v10 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 16);
  v5 = *(v10 + OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__summaryModel + 24);
  sub_1BD2726F8(v2, v3);

  if (v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v7;
  a1[1] = v3;
  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  a1[2] = v8;
  a1[3] = v9;
  return result;
}

uint64_t sub_1BD593C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v4 = *(type metadata accessor for FinanceKitTransactionTypeView() - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  sub_1BE0528A4();
  v3[16] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[17] = v6;
  v3[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD593D68, v6, v5);
}

uint64_t sub_1BD593D68()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *v2;
  v0[19] = *v2;
  v5 = v2[1];
  v0[20] = v5;
  v0[2] = v4;
  v0[3] = v5;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v6 = v0[8];
  sub_1BD59579C(v2, v1, type metadata accessor for FinanceKitTransactionTypeView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1BD595508(v1, v8 + v7, type metadata accessor for FinanceKitTransactionTypeView);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = sub_1BD59520C;
  v9[4] = v8;
  v0[9] = v6;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B584();

  v0[4] = v4;
  v0[5] = v5;
  sub_1BE0516A4();
  v0[22] = v0[10];
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_1BD593FB8;

  return sub_1BD2688EC();
}

uint64_t sub_1BD593FB8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD595AC8;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD5940FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD5940FC()
{
  v1 = v0[20];
  v0[6] = v0[19];
  v0[7] = v1;
  sub_1BE0516A4();
  v0[24] = v0[11];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5941AC;

  return sub_1BD26C238();
}

uint64_t sub_1BD5941AC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD595AC4;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD5942F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD5942F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD594358(uint64_t a1)
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
  v15 = type metadata accessor for FinanceKitTransactionTypeView();
  sub_1BD0DE19C(a1 + *(v15 + 28), v9, &qword_1EBD3FA20);
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

uint64_t sub_1BD5945E0(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B588);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB34();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5A8);
  sub_1BD0DE4F4(&qword_1EBD4B5B0, &qword_1EBD4B5A8);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD5947CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B5B8);
  return sub_1BD594824(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD594824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30);
  MEMORY[0x1EEE9AC00](v69, v9);
  v11 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38);
  MEMORY[0x1EEE9AC00](v70, v12);
  v74 = &v65 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40);
  MEMORY[0x1EEE9AC00](v71, v14);
  v76 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48);
  v77 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v65 - v21;
  v22 = _s12DetailsModelVMa(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = a1[1];
  v75 = a1;
  v82 = v26;
  v83 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B598);
  sub_1BE0516A4();
  v28 = v81;
  swift_getKeyPath();
  v82 = v28;
  sub_1BD595578(&qword_1EBD3F798, _s9ViewModelCMa);
  sub_1BE04B594();

  v29 = OBJC_IVAR____TtCV9PassKitUI29FinanceKitTransactionTypeView9ViewModel__detailsModel;
  swift_beginAccess();
  sub_1BD59579C(v28 + v29, v25, _s12DetailsModelVMa);

  v30 = sub_1BD267354();
  sub_1BD595804(v25, _s12DetailsModelVMa);
  if (v30)
  {
    v67 = v30;
    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v31 = 0.0;
    v66 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v32 = v82;
    v33 = v83;
    v34 = v84;
    v35 = v85;
    v68 = v16;
    v36 = v86;
    v37 = v87;
    v38 = *(v69 + 36);
    v69 = a2;
    v39 = &v11[v38];
    v40 = *(sub_1BE04EDE4() + 20);
    v41 = *MEMORY[0x1E697F468];
    v42 = sub_1BE04F684();
    (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
    __asm { FMOV            V0.2D, #5.0 }

    *v39 = _Q0;
    *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    *v11 = v66;
    *(v11 + 1) = v32;
    v11[16] = v33;
    *(v11 + 3) = v34;
    v11[32] = v35;
    *(v11 + 5) = v36;
    *(v11 + 6) = v37;
    v16 = v68;
    v48 = *(v75 + 32);
    v49 = v75[5];
    v79 = v48;
    v80 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v78)
    {
      v50 = 1.0;
    }

    else
    {
      v50 = 0.0;
    }

    v51 = v74;
    sub_1BD0DE204(v11, v74, &unk_1EBD3FC30);
    *(v51 + *(v70 + 36)) = v50;
    v79 = v48;
    v80 = v49;
    sub_1BE0516A4();
    if (!v78)
    {
      v31 = 40.0;
    }

    v52 = v51;
    v53 = v76;
    v54 = sub_1BD0DE204(v52, v76, &qword_1EBD38D38);
    v55 = v53 + *(v71 + 36);
    *v55 = 0;
    *(v55 + 8) = v31;
    v56 = MEMORY[0x1BFB3EDF0](v54, 0.5, 1.0, 0.0);
    v79 = v48;
    v80 = v49;
    a2 = v69;
    sub_1BE0516A4();

    v57 = v78;
    v58 = v53;
    v59 = v73;
    sub_1BD0DE204(v58, v73, &qword_1EBD38D40);
    v60 = v59 + *(v16 + 36);
    *v60 = v56;
    *(v60 + 8) = v57;
    v61 = v59;
    v62 = v72;
    sub_1BD0DE204(v61, v72, &qword_1EBD38D48);
    sub_1BD0DE204(v62, a2, &qword_1EBD38D48);
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  return (*(v77 + 56))(a2, v63, 1, v16);
}

uint64_t sub_1BD594F2C@<X0>(double *a1@<X8>)
{
  type metadata accessor for FinanceKitTransactionTypeView();

  return sub_1BD5938E0(a1);
}

uint64_t sub_1BD594FAC()
{
  type metadata accessor for FinanceKitTransactionTypeView();

  return sub_1BD593984();
}

unint64_t sub_1BD595034()
{
  result = qword_1EBD4B580;
  if (!qword_1EBD4B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B588);
    sub_1BD0DE4F4(&qword_1EBD4B590, &qword_1EBD4B588);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B580);
  }

  return result;
}

uint64_t sub_1BD595130()
{
  v2 = *(type metadata accessor for FinanceKitTransactionTypeView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD593C70(v4, v5, v0 + v3);
}

uint64_t sub_1BD59520C()
{
  v1 = *(type metadata accessor for FinanceKitTransactionTypeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD594358(v2);
}

unint64_t sub_1BD5952E8()
{
  result = qword_1EBD4B5D8;
  if (!qword_1EBD4B5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B5E0);
    sub_1BD5953CC(&qword_1EBD4B5E8, &qword_1EBD4B5F0, &unk_1BE0E3400, sub_1BD595450);
    sub_1BD0DE4F4(&qword_1EBD4B618, &qword_1EBD4B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B5D8);
  }

  return result;
}

uint64_t sub_1BD5953CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD595450()
{
  result = qword_1EBD4B5F8;
  if (!qword_1EBD4B5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B600);
    sub_1BD0DE4F4(&qword_1EBD4B608, &qword_1EBD4B610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B5F8);
  }

  return result;
}

uint64_t sub_1BD595508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD595578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_61()
{
  v1 = (type metadata accessor for FinanceKitTransactionTypeView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

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

uint64_t sub_1BD595710()
{
  type metadata accessor for FinanceKitTransactionTypeView();

  return sub_1BD5934C0();
}

uint64_t sub_1BD59579C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD595804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD595864()
{
  result = qword_1EBD4B660;
  if (!qword_1EBD4B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B550);
    sub_1BD0DE4F4(&qword_1EBD4B568, &qword_1EBD4B550);
    sub_1BD0F9764();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B578);
    sub_1BD595034();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD279F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B660);
  }

  return result;
}

void sub_1BD595B4C(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  v4 = [v3 leftBarButtonItem];

  if (v4)
  {
    goto LABEL_2;
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 viewControllers];

    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v11 = sub_1BE052744();

    v12 = v11 >> 62 ? sub_1BE053704() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12 == 1)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v1 action:sel_cancel];
      if (v13)
      {
        v4 = v13;
LABEL_2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1BE0B7020;
        *(v5 + 32) = v4;
        sub_1BD0E5E8C(0, &qword_1EBD41C40);
        v6 = v4;
        v7 = sub_1BE052724();

        [v1 _setLeftBarButtonItems_animated_];
      }
    }
  }
}

id sub_1BD595EB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD59603C()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter];
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1BD596158()
{
  v1 = sub_1BE04BD74();
  v110 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v103 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v102 = &v101 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v104 = &v101 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v105 = &v101 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v107 = &v101 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v101 - v26;
  v28 = sub_1BE04B944();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration);
  v35 = [v34 localizedDescription];
  if (v35)
  {
    v36 = v35;
    v106 = sub_1BE052434();
    v109 = v37;
  }

  else
  {
    v106 = 0;
    v109 = 0;
  }

  v38 = [v34 isPaymentAccount];
  v39 = v38;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_hasMultipleDestinationDevices) == 1)
  {
    sub_1BE04BB94();
    v40 = sub_1BE04B934();
    (*(v29 + 8))(v33, v28);
    v41 = [v40 deviceName];
    swift_unknownObjectRelease();
    if (v41)
    {
      v42 = sub_1BE052434();
      v44 = v43;

      v45 = v110;
      if (v39)
      {
LABEL_7:
        v110 = v44;

        v46 = *MEMORY[0x1E69B80C8];
        v47 = *(v45 + 13);
        v47(v27, v46, v1);
        result = PKPassKitBundle();
        if (result)
        {
          v49 = result;
          v50 = sub_1BE04B6F4();
          v108 = v51;

          v52 = *(v45 + 1);
          v52(v27, v1);
          v53 = v107;
          v47(v107, v46, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1BE0B69E0;
          *(v54 + 56) = MEMORY[0x1E69E6158];
          *(v54 + 64) = sub_1BD110550();
          v55 = v110;
          *(v54 + 32) = v42;
          *(v54 + 40) = v55;
          sub_1BE04B714();

          v52(v53, v1);
          return v50;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
      v45 = v110;
      if (v39)
      {
        goto LABEL_7;
      }
    }

    v72 = *MEMORY[0x1E69B80D8];
    v73 = *(v45 + 13);
    v74 = v105;
    v73(v105, v72, v1);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v75 = result;
    v104 = sub_1BE04B6F4();
    v108 = v76;

    v77 = v74;
    v78 = *(v45 + 1);
    v110 = v45 + 8;
    v78(v77, v1);
    v79 = v109;
    if (v109)
    {
      v80 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v80 = v106 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        v105 = "LAR_DESCRIPTION_GENERIC";
        v81 = v107;
        v82 = v44;
        v83 = v106;
        v73(v107, v72, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1BE0B6CA0;
        v85 = MEMORY[0x1E69E6158];
        *(v84 + 56) = MEMORY[0x1E69E6158];
        v86 = sub_1BD110550();
        *(v84 + 32) = v83;
        *(v84 + 40) = v79;
        *(v84 + 96) = v85;
        *(v84 + 104) = v86;
        *(v84 + 64) = v86;
        *(v84 + 72) = v42;
        *(v84 + 80) = v82;
LABEL_27:
        sub_1BE04B714();

        v78(v81, v1);
        return v104;
      }
    }

    v81 = v107;
    v73(v107, v72, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1BE0B69E0;
    *(v87 + 56) = MEMORY[0x1E69E6158];
    *(v87 + 64) = sub_1BD110550();
    *(v87 + 32) = v42;
    *(v87 + 40) = v44;
    goto LABEL_27;
  }

  if (v38)
  {

    v56 = *MEMORY[0x1E69B80C8];
    v57 = v110;
    v58 = *(v110 + 13);
    v58(v17, v56, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v59 = result;
      v50 = sub_1BE04B6F4();
      v108 = v60;

      v61 = *(v57 + 1);
      v61(v17, v1);
      v58(v13, v56, v1);
      result = PKPassKitBundle();
      if (result)
      {
        v62 = result;
        sub_1BE04B6F4();

        v61(v13, v1);
        return v50;
      }

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v63 = [v34 style];
  v64 = v1;
  v65 = v109;
  if (v63 == 1)
  {
    goto LABEL_29;
  }

  v66 = [v34 paymentNetwork];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1BE052434();
    v70 = v69;
    if (v68 == sub_1BE052434() && v70 == v71)
    {

LABEL_29:
      v89 = *MEMORY[0x1E69B80D8];
      v90 = v110;
      v91 = *(v110 + 13);
      v92 = v104;
      v91(v104, v89, v64);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v93 = result;
LABEL_33:
      v50 = sub_1BE04B6F4();
      v108 = v94;

      v95 = *(v90 + 1);
      v95(v92, v64);
      if (v65)
      {
        v96 = HIBYTE(v65) & 0xF;
        v97 = v106;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v96 = v106 & 0xFFFFFFFFFFFFLL;
        }

        if (v96)
        {
          v110 = "ISSUER_ADD_DESCRIPTION_GENERIC";
          v98 = v107;
          v91(v107, v89, v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_1BE0B69E0;
          *(v99 + 56) = MEMORY[0x1E69E6158];
          *(v99 + 64) = sub_1BD110550();
          *(v99 + 32) = v97;
          *(v99 + 40) = v65;
          sub_1BE04B714();

          goto LABEL_41;
        }
      }

      v98 = v103;
      v91(v103, v89, v64);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v100 = result;
      sub_1BE04B6F4();

LABEL_41:
      v95(v98, v64);
      return v50;
    }

    v88 = sub_1BE053B84();

    if (v88)
    {
      goto LABEL_29;
    }
  }

  v89 = *MEMORY[0x1E69B80D8];
  v90 = v110;
  v91 = *(v110 + 13);
  v92 = v102;
  v91(v102, v89, v64);
  result = PKPassKitBundle();
  if (result)
  {
    v93 = result;
    goto LABEL_33;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_1BD596D54(unsigned __int8 *a1, int a2)
{
  v5 = sub_1BE04BAC4();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v91 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = sub_1BE04BD74();
  v8 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v9);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v81[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v94 = &v81[-v18];
  MEMORY[0x1EEE9AC00](v19, v20);
  v89 = &v81[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = &v81[-v24];
  MEMORY[0x1EEE9AC00](v25, v26);
  v88 = &v81[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v90 = &v81[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v81[-v33];
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v81[-v38];
  v40 = *a1;
  v41 = [*&v2[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration] isPaymentAccount];
  v97 = v2;
  sub_1BD596158();
  v96 = v42;
  v44 = v43;
  v95 = a2;
  if ((a2 & 1) == 0)
  {
    if (v40 == 12)
    {
      v51 = *(v8 + 104);
      v52 = v97;
      if (v41)
      {
        v51(v15, *MEMORY[0x1E69B80C8], v98);
        v53 = PKPassKitBundle();
        if (!v53)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v54 = v53;
        sub_1BE04B6F4();
      }

      else
      {
        v51(v11, *MEMORY[0x1E69B80D8], v98);
        v67 = PKPassKitBundle();
        if (!v67)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v54 = v67;
        sub_1BE04B6F4();
        v15 = v11;
      }

      (*(v8 + 8))(v15, v98);
      [v52 showCheckmarkAnimated_];
      v68 = sub_1BE052404();

      v69 = sub_1BE052404();
      [v52 hideActivitySpinnerWithTitle:v68 subtitle:v69 animated:0];

      [v52 endUserInteraction];
      goto LABEL_44;
    }

    sub_1BE048C84();
    sub_1BE048C84();
    v64 = sub_1BE052404();

    v52 = v97;
    if (v44)
    {
      v65 = sub_1BE052404();
    }

    else
    {
      v65 = 0;
    }

    [v52 hideActivitySpinnerWithTitle:v64 subtitle:v65 animated:1];
LABEL_43:

LABEL_44:
    v79 = [v52 view];
    if (v79)
    {
      v80 = v79;

      [v80 setUserInteractionEnabled_];

      return;
    }

    __break(1u);
    goto LABEL_47;
  }

  v45 = *(v8 + 104);
  v82 = v41;
  v84 = v45;
  if (v41)
  {
    v46 = v98;
    v45(v39, *MEMORY[0x1E69B80C8], v98);
    sub_1BE048C84();
    v47 = PKPassKitBundle();
    if (!v47)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v48 = v47;
    v49 = sub_1BE04B6F4();
    v85 = v50;
    v86 = v49;
  }

  else
  {
    v46 = v98;
    v45(v34, *MEMORY[0x1E69B80D8], v98);
    sub_1BE048C84();
    v55 = PKPassKitBundle();
    if (!v55)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v48 = v55;
    v56 = sub_1BE04B6F4();
    v85 = v57;
    v86 = v56;
    v39 = v34;
  }

  v58 = *(v8 + 8);
  v58(v39, v46);
  v83 = v8 + 8;
  if (v40 > 10)
  {
    v52 = v97;
    if (v40 == 11)
    {
      v60 = v58;

      v70 = sub_1BE052404();
      v71 = v91;
      sub_1BE04BC34();
      v72 = sub_1BE04BAB4();
      (*(v92 + 8))(v71, v93);
      v73 = PKDeviceSpecificLocalizedStringKeyForKey(v70, v72 & 1);

      if (v73)
      {
        sub_1BE052434();
      }

      v61 = v94;
      v84(v94, *MEMORY[0x1E69B80D0], v98);
      v77 = PKPassKitCoreBundle();
      if (!v77)
      {
        goto LABEL_51;
      }

      v63 = v77;
      sub_1BE04B6F4();
      v59 = v78;

      v46 = v98;
      goto LABEL_38;
    }

    v59 = v44;
    if (v40 != 12)
    {
      goto LABEL_21;
    }

LABEL_39:
    v64 = sub_1BE052404();

    if (v59)
    {
      v65 = sub_1BE052404();
    }

    else
    {
      v65 = 0;
    }

    [v52 showActivitySpinnerWithTitle:v64 subtitle:v65];
    goto LABEL_43;
  }

  v59 = v44;
  v52 = v97;
  if (v40 == 4)
  {
    goto LABEL_39;
  }

  if (v40 != 10)
  {
LABEL_21:
    v60 = v58;

    if (v82)
    {
      v61 = v90;
      v84(v90, *MEMORY[0x1E69B80C8], v46);
      v66 = PKPassKitBundle();
      if (!v66)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v63 = v66;
    }

    else
    {
      v61 = v88;
      v84(v88, *MEMORY[0x1E69B80D0], v46);
      v74 = PKPassKitCoreBundle();
      if (!v74)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v63 = v74;
    }

    goto LABEL_35;
  }

  v60 = v58;

  if (v82)
  {
    v61 = v87;
    v84(v87, *MEMORY[0x1E69B80C8], v46);
    v62 = PKPassKitBundle();
    if (!v62)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v63 = v62;
    goto LABEL_35;
  }

  v61 = v89;
  v84(v89, *MEMORY[0x1E69B80D0], v46);
  v75 = PKPassKitCoreBundle();
  if (v75)
  {
    v63 = v75;
LABEL_35:
    sub_1BE04B6F4();
    v59 = v76;
LABEL_38:

    v60(v61, v46);
    goto LABEL_39;
  }

LABEL_55:
  __break(1u);
}

void sub_1BD5976F0(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v24 - v11;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v27 = a1;
  v13 = *MEMORY[0x1E69B80D8];
  v26 = *(v4 + 104);
  v26(v12, v13, v3);
  v14 = PKPassKitBundle();
  if (v14)
  {
    v15 = v14;
    sub_1BE04B6F4();

    v25 = *(v4 + 8);
    v25(v12, v3);
    v16 = sub_1BE052404();

    a1 = v27;
    [v27 setLocalizedTitle_];

    v26(v7, v13, v3);
    v17 = PKPassKitBundle();
    if (v17)
    {
      v18 = v17;
      sub_1BE04B6F4();

      v25(v7, v3);
      v19 = sub_1BE052404();

      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280);
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = v1;
      v23 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD597BA4, v20, sub_1BD597BAC, v21);

      [v22 presentViewController:v23 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD597A5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD81521C();
  }
}

void sub_1BD597AB8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD8145A8(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD597B48()
{
  [v0 _setPrimaryButtonEnabled_];

  return [v0 noteFieldIdentifiersChanged];
}

uint64_t type metadata accessor for FavoritesView()
{
  result = qword_1EBD4B690;
  if (!qword_1EBD4B690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD597C28()
{
  sub_1BD597D24(319, &qword_1EBD4B6A0, sub_1BD0E8CBC, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BD597D24(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD597D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD597DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for FavoritesView();
  sub_1BD0DE19C(v1 + *(v12 + 20), v11, &qword_1EBD3FA20);
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

id sub_1BD597FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FavoritesView();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x1E69B8068], v9, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v14, v9);
    v20 = v31;
    sub_1BD598AE0(v31, v8);
    v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v22 = swift_allocObject();
    sub_1BD598B44(v8, v22 + v21);
    v23 = v30;
    sub_1BD598AE0(v20, v30);
    v24 = swift_allocObject();
    sub_1BD598B44(v23, v24 + v21);
    *&v33 = sub_1BD598C08;
    *(&v33 + 1) = v24;
    *&v34 = v17;
    *(&v34 + 1) = v19;
    *&v35 = sub_1BD598BA8;
    *(&v35 + 1) = v22;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v39[0] = sub_1BD598C08;
    v39[1] = v24;
    v39[2] = v17;
    v39[3] = v19;
    v39[4] = sub_1BD598BA8;
    v39[5] = v22;
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    sub_1BD0DE19C(&v33, &v32, &qword_1EBD4B6A8);
    result = sub_1BD598C88(v39);
    v25 = v36;
    v26 = v37;
    *(a1 + 32) = v35;
    *(a1 + 48) = v25;
    *(a1 + 64) = v26;
    *(a1 + 80) = v38;
    v27 = v34;
    *a1 = v33;
    *(a1 + 16) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5982A8(uint64_t a1)
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
  v15 = type metadata accessor for FavoritesView();
  sub_1BD0DE19C(a1 + *(v15 + 20), v9, &qword_1EBD3FA20);
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

uint64_t sub_1BD598530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6B0);
  sub_1BD598CF8();
  return sub_1BE0504E4();
}

uint64_t sub_1BD5985A0(void *a1)
{
  v2 = type metadata accessor for FavoritesView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v9[1] = *a1;
  swift_getKeyPath();
  sub_1BD598AE0(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD598B44(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8);
  sub_1BD0DE4F4(&qword_1EBD4B6E0, &qword_1EBD38868);
  sub_1BD598D7C();
  return sub_1BE0519C4();
}

uint64_t sub_1BD59875C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FavoritesView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = *a1;
  sub_1BD598AE0(a2, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1BD598B44(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v17 = v10;
  type metadata accessor for AddressSearchingResults.ResultRow();
  sub_1BD5990AC();
  v13 = v10;
  sub_1BE051704();
  v18 = sub_1BE051274();
  v14 = sub_1BE0518D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8);
  *(a3 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1BD598900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04E664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD597DA4(v8);
  sub_1BE04E654();
  (*(v5 + 8))(v8, v4);
  v9 = type metadata accessor for FavoritesView();
  return (*(a1 + *(v9 + 24)))(a2);
}

id sub_1BD5989FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for AddressSearchingResults.ResultRow();
  v4 = *(v3 + 20);
  v5 = *MEMORY[0x1E6980FA8];
  v6 = sub_1BE050554();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;

  return a1;
}

uint64_t sub_1BD598AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD598B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD598BA8()
{
  v1 = *(type metadata accessor for FavoritesView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD5982A8(v2);
}

uint64_t sub_1BD598C08()
{
  type metadata accessor for FavoritesView();

  return sub_1BD598530();
}

uint64_t sub_1BD598C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD598CF8()
{
  result = qword_1EBD4B6B8;
  if (!qword_1EBD4B6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B6B0);
    sub_1BD598D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6B8);
  }

  return result;
}

unint64_t sub_1BD598D7C()
{
  result = qword_1EBD4B6C0;
  if (!qword_1EBD4B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B6C8);
    sub_1BD0DE4F4(&qword_1EBD4B6D0, &qword_1EBD4B6D8);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6C0);
  }

  return result;
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for FavoritesView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
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

uint64_t sub_1BD598F98@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD59875C(a1, v6, a2);
}

uint64_t sub_1BD599018()
{
  v1 = *(type metadata accessor for FavoritesView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD598900(v0 + v2, v3);
}

unint64_t sub_1BD5990AC()
{
  result = qword_1EBD4B6E8;
  if (!qword_1EBD4B6E8)
  {
    type metadata accessor for AddressSearchingResults.ResultRow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B6E8);
  }

  return result;
}

uint64_t sub_1BD599104()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD599178()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v45 = *(v2 - 1);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v42 - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  v27 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD15D62C(v1 + v27, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD15D69C(v13);
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v28 = sub_1BE052D54();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = sub_1BD59A448;
    v52 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1BD126964;
    v50 = &block_descriptor_129;
    v30 = _Block_copy(&aBlock);

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v31 = v46;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v5, v30);
    _Block_release(v30);

    (*(v45 + 8))(v5, v31);
    (*(v43 + 8))(v9, v44);
    return;
  }

  (*(v15 + 32))(v26, v13, v14);
  v46 = *(v1 + OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher);
  v32 = sub_1BE04AE64();
  v33 = PKStartOfDay();

  if (!v33)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1BE04AEE4();

  v34 = sub_1BE04AE64();
  v35 = *(v15 + 8);
  v35(v22, v14);
  v36 = sub_1BE04AE64();
  v37 = PKEndOfDay();

  if (!v37)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1BE04AEE4();

  v38 = sub_1BE04AE64();
  v35(v18, v14);
  v39 = v46;
  [v46 setLimit:0 startDate:v34 endDate:v38];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = sub_1BD59A450;
  v52 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1BD56AD40;
  v50 = &block_descriptor_19_3;
  v41 = _Block_copy(&aBlock);

  [v39 reloadTransactionsWithCompletion_];
  _Block_release(v41);
  v35(v26, v14);
}

uint64_t sub_1BD59973C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD5997BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B730);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - v6;
  v8 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash__amount;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F60);
  sub_1BE04D874();
  (*(v4 + 32))(&v1[v8], v7, v3);
  v9 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  v10 = sub_1BE04AF64();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_account] = a1;
  v11 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v12 = a1;
  v13 = [v11 initWithAccount_];
  *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_source] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v16 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v14 paymentDataProvider:v15];

  if (v16)
  {
    *&v1[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher] = v16;
    v17 = type metadata accessor for AccountDailyCash();
    v22.receiver = v1;
    v22.super_class = v17;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    v19 = *&v18[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher];
    v20 = v18;
    [v19 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD599A14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BE048C84();
    sub_1BD599F00();
  }
}

id sub_1BD599B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDailyCash();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountDailyCash()
{
  result = qword_1EBD4B710;
  if (!qword_1EBD4B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD599C8C()
{
  sub_1BD599D68();
  if (v0 <= 0x3F)
  {
    sub_1BD578C14();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD599D68()
{
  if (!qword_1EBD4B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F60);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B720);
    }
  }
}

uint64_t sub_1BD599DCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountDailyCash();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD599E0C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD599E8C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD599F00()
{
  v1 = sub_1BE04B2F4();
  v46 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04A474();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_date;
  swift_beginAccess();
  sub_1BD15D62C(&v0[v18], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD15D69C(v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = 0;
    v19 = v0;
    return sub_1BE04D8C4();
  }

  else
  {
    v21 = *(v14 + 32);
    v44 = v13;
    v21(v17, v12, v13);
    sub_1BE04B1E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
    v42 = v1;
    v22 = sub_1BE04B2D4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 72);
    v25 = *(v23 + 80);
    v41 = v17;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BE0B98E0;
    v28 = v27 + v26;
    v29 = *MEMORY[0x1E6969A50];
    v40 = v0;
    v43 = v5;
    v30 = *(v23 + 104);
    v30(v28, v29, v22);
    v30(v28 + v24, *MEMORY[0x1E6969A68], v22);
    v30(v28 + 2 * v24, *MEMORY[0x1E6969A78], v22);
    v30(v28 + 3 * v24, *MEMORY[0x1E6969A48], v22);
    sub_1BD111674(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v31 = v8;
    v32 = v41;
    sub_1BE04B194();

    (*(v46 + 8))(v4, v42);
    v33 = v40;
    v34 = *&v40[OBJC_IVAR____TtC9PassKitUI16AccountDailyCash_transactionFetcher];
    v35 = sub_1BE04A404();
    v36 = [v34 cashbackGroupForDateComponents:v35 cashbackTransactionSourceCollection:0];

    v37 = [v36 totalAmount];
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v37;
    v38 = v33;
    sub_1BE04D8C4();

    (*(v45 + 8))(v31, v43);
    return (*(v14 + 8))(v32, v44);
  }
}

id sub_1BD59A460(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_identifier];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x80000001BE12F780;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_credential] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1BD59A608()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_context);
  v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_credential);
  v4 = objc_allocWithZone(type metadata accessor for ProvisioningCarPerformPairingViewController());
  v5 = v3;
  v6 = sub_1BE048964();
  v7 = sub_1BD7E301C(v6, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + v10) = v5;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69B82A8], v8);
  sub_1BE04C3D4();
  swift_allocObject();
  v12 = sub_1BE04C394();
  v13 = type metadata accessor for CarKeyProvisioningUICoordinator();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v2;
  *&v14[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v12;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v15 + 1) = &off_1F3BBD0D0;
  swift_unknownObjectWeakAssign();
  v23.receiver = v14;
  v23.super_class = v13;
  sub_1BE048964();
  v16 = v7;
  v17 = objc_msgSendSuper2(&v23, sel_init);
  v18 = &v17[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  *(v18 + 1) = &off_1F3BAEF08;
  swift_unknownObjectWeakAssign();
  v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator);
  *(v1 + OBJC_IVAR____TtC9PassKitUI37ProvisioningCarPerformPairingFlowItem_coordinator) = v17;
  v20 = v17;

  v21 = *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator];
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator] = v17;

  return v7;
}