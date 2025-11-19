uint64_t sub_1BD7AE4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = type metadata accessor for TransferOptionsSheet();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535F8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53600);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + *(type metadata accessor for PeerPaymentModel() + 20);
  if (*(v19 + *(type metadata accessor for AvailablePass(0) + 36)))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 64);
    sub_1BD7B10BC(v19, v18, type metadata accessor for AvailablePass);
    *&v18[v21] = 0;
    v18[v22] = 1;
    type metadata accessor for PassRow.Pass(0);
    swift_storeEnumTagMultiPayload();
    v18[*(v15 + 20)] = 0;
    sub_1BD7B10BC(v18, v14, type metadata accessor for PassRow);
    swift_storeEnumTagMultiPayload();
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow);
    sub_1BD7B08C0();
    sub_1BE04F9A4();
    return sub_1BD7B118C(v18, type metadata accessor for PassRow);
  }

  else
  {
    sub_1BD7B10BC(v31, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransferOptionsSheet);
    v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v25 = swift_allocObject();
    v26 = sub_1BD7B1124(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TransferOptionsSheet);
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v29 - 2) = a1;
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow);
    sub_1BE051704();
    v28 = &v10[*(v7 + 36)];
    *v28 = xmmword_1BE0B8C20;
    *(v28 + 1) = xmmword_1BE0B8C20;
    v28[32] = 0;
    sub_1BD0DE19C(v10, v14, &qword_1EBD535F8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7B08C0();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v10, &qword_1EBD535F8);
  }
}

id sub_1BD7AE94C(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKAccountTransferTypeToString();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE052434();
    v11 = v10;

    sub_1BE04D084();
    sub_1BE048C84();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      v16 = sub_1BD123690(v9, v11, &v18);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1BD026000, v12, v13, "Selected peer payment as transfer option for type: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1BFB45F20](v15, -1, -1);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    (*(a1 + 24))(1);
    return (*(a1 + 8))(0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7AEB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeerPaymentModel();
  sub_1BD7B10BC(a1 + *(v8 + 20), v7, type metadata accessor for AvailablePass);
  LOBYTE(a1) = *(a1 + *(v8 + 40));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  sub_1BD7B1124(v7, a2, type metadata accessor for AvailablePass);
  *(a2 + v10) = 0;
  *(a2 + v11) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PassRow(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1BD7AEC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for TransferOptionsSheet();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5B8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v46 - v20;
  v22 = *(a1 + 64);
  v53 = v46 - v20;
  if (v22 == 1)
  {
    goto LABEL_8;
  }

  v48 = v13;
  v49 = a2;
  v50 = v9;
  v24 = *(a1 + 72);
  v23 = *(a1 + 80);
  v25 = *(a1 + 88);
  if (!v23)
  {
    sub_1BD3EFCD8(v22, *(a1 + 72));
    sub_1BE048C84();
    sub_1BD17195C(v22, v24);
LABEL_7:

    a2 = v49;
    v9 = v50;
LABEL_8:
    (*(v10 + 56))(v21, 1, 1, v9);
    v36 = v21;
    goto LABEL_9;
  }

  v26 = *(a1 + 96);
  if (!*(v23 + 16))
  {
    sub_1BD3EFC88(v22, *(a1 + 72));
    sub_1BD17195C(v22, v24);

    goto LABEL_7;
  }

  v46[2] = *(a1 + 96);
  v47 = v26 & 1;
  v54[0] = v23;
  sub_1BD7B10BC(a1, v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransferOptionsSheet);
  v27 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v29 + v27;
  v31 = v29;
  v51 = v29;
  sub_1BD7B1124(v8, v30, type metadata accessor for TransferOptionsSheet);
  v32 = v31 + v28;
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v23;
  *(v32 + 24) = v25;
  *(v32 + 32) = v47;
  sub_1BD3EFC88(v22, v24);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0);
  sub_1BD0DE4F4(&qword_1EBD4C578, &qword_1EBD4C570);
  sub_1BD5CEEA0();
  sub_1BD5CEC08();
  v33 = v48;
  sub_1BE0519D4();
  v34 = v53;
  v35 = v50;
  (*(v10 + 32))(v53, v33, v50);
  v36 = v34;
  (*(v10 + 56))(v34, 0, 1, v35);
  a2 = v49;
LABEL_9:
  sub_1BD7AF754(a2, v54);
  v37 = v54[0];
  v38 = v54[1];
  v39 = v54[2];
  v40 = v54[3];
  v41 = v54[4];
  v42 = v54[5];
  sub_1BD0DE19C(v36, v17, &qword_1EBD4C5B8);
  v43 = v52;
  sub_1BD0DE19C(v17, v52, &qword_1EBD4C5B8);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53608) + 48));
  *v44 = v37;
  v44[1] = v38;
  v44[2] = v39;
  v44[3] = v40;
  v44[4] = v41;
  v44[5] = v42;
  sub_1BD0EE87C(v37, v38);
  sub_1BD0DE53C(v53, &qword_1EBD4C5B8);
  sub_1BD4CE958(v37, v38);
  return sub_1BD0DE53C(v17, &qword_1EBD4C5B8);
}

__n128 sub_1BD7AF188@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TransferOptionsSheet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = *a1;
  v12 = *(a1 + 8);
  sub_1BD7B10BC(a2, &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TransferOptionsSheet);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_1BD7B1124(&v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for TransferOptionsSheet);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v13;
  v16[1] = v12;
  v26 = a2;
  v27 = v13;
  v28 = v12;
  v29 = a3;
  sub_1BD5CEBB4();
  v17 = v13;
  v18 = v12;
  sub_1BE051704();
  v19 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C5F0) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v19 = result;
  v19[1] = result;
  v19[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD7AF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKAccountTransferTypeToString();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE052434();
    v15 = v14;

    sub_1BE04D084();
    sub_1BE048C84();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = a2;
      v28 = v20;
      v21 = a3;
      v22 = v20;
      *v19 = 136315138;
      v23 = sub_1BD123690(v13, v15, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1BD026000, v16, v17, "Selected ACH as transfer option for type: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v24 = v22;
      a3 = v21;
      a2 = v27;
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v19, -1, -1);

      (*(v7 + 8))(v10, v26);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(a1 + 24))(0);
    return (*(a1 + 8))(a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7AF590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for TransferOptionsSheet();
  sub_1BD0DE19C(a1 + *(v13 + 40), v12, &qword_1EBD45480);
  v14 = type metadata accessor for PeerPaymentModel();
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD45480);
    v15 = 1;
    v16 = *a4;
    if (*a4)
    {
LABEL_3:
      v17 = *(a4 + 8);
      sub_1BD3EFCD8(v16, v17);
      v18 = sub_1BD41F4F4(v25, a3, v16, v17);

      v19 = v18 & v15;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = v12[*(v14 + 40)];
    sub_1BD7B118C(v12, type metadata accessor for PeerPaymentModel);
    v15 = v20 ^ 1;
    v16 = *a4;
    if (*a4)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  *a5 = v25;
  *(a5 + 8) = a3;
  *(a5 + 16) = v19 & 1;
  v21 = a3;
  v22 = v25;

  return v22;
}

id sub_1BD7AF754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TransferOptionsSheet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (!result || (v15 = *(v2 + 56), !*(v15 + 16)))
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_9:
    *a2 = v17;
    a2[1] = v19;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v26;
    a2[5] = v27;
    return result;
  }

  v32 = v6;
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80E0], v9);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v10 + 8))(v13, v9);
    v20 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v22 = [v20 stringFromNumber_];

    if (v22)
    {
      v23 = sub_1BE052434();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v28 = v33;
    sub_1BD7B10BC(v2, v33, type metadata accessor for TransferOptionsSheet);
    v29 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    sub_1BD7B1124(v28, v27 + v29, type metadata accessor for TransferOptionsSheet);
    v30 = (v27 + ((v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = v17;
    v30[1] = v19;
    sub_1BE048964();
    result = sub_1BE048C84();
    v26 = sub_1BD7B1334;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7AFA8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[7];
  v7 = *(*a2 + qword_1EBDAB030);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BD7AFCA0(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53598);
  sub_1BD7B0750();
  v8 = sub_1BE0518D4();
  *&v10 = v6;
  *(&v10 + 1) = a3;
  v11 = a4;
  v12 = v7;
  v13 = v8;
  swift_getKeyPath();
  sub_1BD7B1520(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04B594();

  swift_getKeyPath();
  sub_1BE04B5B4();

  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();

  swift_getKeyPath();
  sub_1BE04B5A4();
}

id sub_1BD7AFCA0@<X0>(_OWORD *a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for TransferOptionsSheet();
  v40 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v41 = v3;
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v39 - v12;
  v14 = *MEMORY[0x1E69B80E0];
  v15 = *(v5 + 104);
  v15(&v39 - v12, v14, v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    v44 = *(v5 + 8);
    v44(v13, v4);
    (v15)(v8, v14, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B69E0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1BD110550();
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    sub_1BE048C84();
    v22 = sub_1BE04B714();
    v24 = v23;

    v44(v8, v4);
    if ([objc_opt_self() deviceSupportsBusinessChat])
    {
      v25 = v43;
      sub_1BD7B10BC(v42, v43, type metadata accessor for TransferOptionsSheet);
      v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v27 = swift_allocObject();
      sub_1BD7B1124(v25, v27 + v26, type metadata accessor for TransferOptionsSheet);
      v28 = objc_allocWithZone(PKTextRangeHyperlink);
      v29 = sub_1BE052404();

      *&v58[0] = sub_1BD7B07DC;
      *(&v58[0] + 1) = v27;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v57 = sub_1BD126964;
      *(&v57 + 1) = &block_descriptor_178;
      v30 = _Block_copy(&aBlock);

      v31 = [v28 initWithLinkText:v29 action:v30];
      _Block_release(v30);

      if (v31)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1BE0B7020;
        *(v32 + 32) = v31;
        v55 = 0;
        v54 = 0;
        v46 = v32;
        v47 = 4;
        v48 = 0;
        v49 = v22;
        v50 = v24;
        v51 = 0;
        v52 = 0;
        v53 = 0;
LABEL_7:
        sub_1BD10E4BC();
        result = sub_1BE04F9A4();
        v37 = v57;
        v38 = v45;
        *v45 = aBlock;
        v38[1] = v37;
        v38[2] = v58[0];
        *(v38 + 41) = *(v58 + 9);
        return result;
      }
    }

    else
    {
    }

    *&aBlock = v22;
    *(&aBlock + 1) = v24;
    sub_1BD0DDEBC();
    v33 = sub_1BE0506C4();
    v55 = v34 & 1;
    v54 = 1;
    v46 = v33;
    v47 = v35;
    v48 = v34 & 1;
    v49 = v36;
    v53 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7B018C()
{
  type metadata accessor for TransferOptionsSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t type metadata accessor for TransferOptionsSheet()
{
  result = qword_1EBD534F0;
  if (!qword_1EBD534F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7B0278()
{
  type metadata accessor for AccountServiceAuthorizationModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4C490, &type metadata for BankAccounts, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1B7F00();
        if (v3 <= 0x3F)
        {
          sub_1BD7B03B0();
          if (v4 <= 0x3F)
          {
            sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BD7B03B0()
{
  if (!qword_1EBD53500)
  {
    type metadata accessor for PeerPaymentAccountResolutionControllerModel();
    sub_1BD7B1520(&qword_1EBD53508, type metadata accessor for PeerPaymentAccountResolutionControllerModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53500);
    }
  }
}

uint64_t sub_1BD7B0464(uint64_t a1)
{
  v3 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD7ACE44(a1, v4);
}

uint64_t sub_1BD7B04E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD7AE094(v4, a1);
}

unint64_t sub_1BD7B0554()
{
  result = qword_1EBD53530;
  if (!qword_1EBD53530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53520);
    sub_1BD7A1600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53530);
  }

  return result;
}

unint64_t sub_1BD7B05E0()
{
  result = qword_1EBD53558;
  if (!qword_1EBD53558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53538);
    sub_1BD7B0698();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53558);
  }

  return result;
}

unint64_t sub_1BD7B0698()
{
  result = qword_1EBD53560;
  if (!qword_1EBD53560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53550);
    sub_1BD0DE4F4(&qword_1EBD53568, &qword_1EBD53570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53560);
  }

  return result;
}

unint64_t sub_1BD7B0750()
{
  result = qword_1EBD535A0;
  if (!qword_1EBD535A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53598);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535A0);
  }

  return result;
}

unint64_t sub_1BD7B0804()
{
  result = qword_1EBD535E8;
  if (!qword_1EBD535E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD535E0);
    sub_1BD7B1520(&qword_1EBD397D8, type metadata accessor for PassRow);
    sub_1BD7B08C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535E8);
  }

  return result;
}

unint64_t sub_1BD7B08C0()
{
  result = qword_1EBD535F0;
  if (!qword_1EBD535F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD535F8);
    sub_1BD0DE4F4(&qword_1EBD47F28, &qword_1EBD47F30);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD535F0);
  }

  return result;
}

uint64_t sub_1BD7B09A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD535B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_92()
{
  v1 = type metadata accessor for TransferOptionsSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = *(v3 + 64);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v5 = (v3 + *(v1 + 40));
  v6 = type metadata accessor for PeerPaymentModel();
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = (v5 + v6[5]);
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = v5;
    if (EnumCaseMultiPayload == 2)
    {

      v9 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v10 = sub_1BE04CF34();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v11 = type metadata accessor for AvailablePass(0);
    v12 = v7 + v11[6];
    v13 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v14 = *(v13 + 20);
      v15 = sub_1BE04DA84();
      (*(*(v15 - 8) + 8))(&v12[v14], v15);
    }

    v16 = (v7 + v11[7]);
    v17 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {

      v18 = *(v17 + 28);
      v19 = sub_1BE04AF64();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }
    }

    v21 = v7 + v11[10];
    v22 = type metadata accessor for PassEligibleRewardsInfo();
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      if (*(v21 + 2) != 1)
      {
      }

      if (*(v21 + 9) != 1)
      {
      }

      v23 = *(v22 + 28);
      v24 = sub_1BE04AF64();
      v33 = *(v24 - 8);
      v32 = v23;
      v25 = &v21[v23];
      v26 = *(v33 + 48);
      if (!v26(v25, 1, v24))
      {
        (*(v33 + 8))(&v21[v32], v24);
      }

      v27 = *(v22 + 32);
      if (!v26(&v21[v27], 1, v24))
      {
        (*(v33 + 8))(&v21[v27], v24);
      }
    }

    v28 = (v7 + v11[12]);
    if (*v28)
    {
    }

    v29 = (v7 + v11[13]);
    if (*v29)
    {
    }

    v30 = (v34 + v6[6]);
    if (*v30 != 1)
    {

      if (v30[3])
      {
      }
    }
  }

  sub_1BD035CB4(*(v3 + *(v1 + 44)), *(v3 + *(v1 + 44) + 8), *(v3 + *(v1 + 44) + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD7B1040(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD7B10BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7B1124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7B118C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BD7B11EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  *&result = sub_1BD7AF188(a1, v2 + v6, v7, a2).n128_u64[0];
  return result;
}

id sub_1BD7B1298()
{
  v1 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1BD7AF34C(v0 + v2, v4, v5);
}

uint64_t sub_1BD7B1334()
{
  v1 = *(type metadata accessor for TransferOptionsSheet() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1BD7AFA8C(v3, (v0 + v2), v5, v6);
}

unint64_t sub_1BD7B13C8()
{
  result = qword_1EBD53610;
  if (!qword_1EBD53610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53520);
    sub_1BD0DE4F4(&qword_1EBD53528, &qword_1EBD53518);
    sub_1BD7B0554();
    swift_getOpaqueTypeConformance2();
    sub_1BD7B1520(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53610);
  }

  return result;
}

uint64_t sub_1BD7B1520(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BD7B1590(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_1BD7B1638(void (*a1)(uint64_t, void), uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  if (*(v2 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration))
  {
    a1(1, 0);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
  swift_beginAccess();
  v8 = *(v3 + v7);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1BD1D88E0(0, v8[2] + 1, 1, v8);
    *(v3 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1BD1D88E0((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1BD7B26D0;
  v12[5] = v6;
  *(v3 + v7) = v8;
  swift_endAccess();
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_1BE04B594();

  if ((*(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    aBlock[0] = v3;
    sub_1BE04B584();

    v15 = *(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    aBlock[4] = sub_1BD7B2718;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_179;
    v18 = _Block_copy(aBlock);
    sub_1BE048964();

    [v15 requestDTUConfigurationWithCompletion_];
    _Block_release(v18);
  }
}

uint64_t sub_1BD7B1994()
{
  swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration);
}

void sub_1BD7B1A3C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration);
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
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD53688);
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

void sub_1BD7B1BD4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
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
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD53680);
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

uint64_t sub_1BD7B1D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration);
  return result;
}

uint64_t sub_1BD7B1E44(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD7B1F5C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE051F54();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v28 = sub_1BE052D54();
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v21 = a3;
  aBlock[4] = sub_1BD7B2724;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_8;
  v22 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();
  v23 = a1;
  v24 = a2;
  v25 = v21;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD7B2734(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v26 = v28;
  MEMORY[0x1BFB3FDF0](0, v19, v15, v22);
  _Block_release(v22);

  (*(v31 + 8))(v15, v12);
  return (*(v29 + 8))(v19, v30);
}

void sub_1BD7B225C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4, void *a5, char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a4;
    sub_1BD7B1A3C(a4);
    v13 = a5;
    sub_1BD7B1BD4(a5);
    v14 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
    swift_beginAccess();
    v15 = *&v11[v14];
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = a4 != 0;
      sub_1BE048C84();
      v18 = v15 + 40;
      do
      {
        v19 = *(v18 - 8);
        v23 = v17;
        v22 = a6;
        sub_1BE048964();
        v19(&v23, &v22);

        v18 += 16;
        --v16;
      }

      while (v16);
    }

    *&v11[v14] = MEMORY[0x1E69E7CC0];

    if (v11[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v21);
      v22 = v11;
      sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
      sub_1BE04B584();
    }

    else
    {
      v11[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration] = 0;
    }
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t type metadata accessor for DirectTopUpModel()
{
  result = qword_1EBD53668;
  if (!qword_1EBD53668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7B25C0()
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

void sub_1BD7B2690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion);
  *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion) = v2;
  v4 = v2;
}

uint64_t sub_1BD7B2734(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD7B277C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration);
  *(v1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration) = v2;
  v4 = v2;
}

id sub_1BD7B27BC(unint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration] = 0;
  v9 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__promotion] = 0;
  v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration] = 0;
  v10 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_taskDelegate;
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_taskDelegate] = 0;
  v11 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69B8318]) init];
  *&v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_kAmountDivisible];
  *v12 = MEMORY[0x1BFB403C0](1000);
  *(v12 + 1) = v13;
  *(v12 + 4) = v14;
  sub_1BE04B5C4();
  if (a1 | a3)
  {
    v15 = *&v3[v8];
    v16 = a1;

    *&v3[v8] = a1;
    v17 = *&v3[v9];
    v18 = a2;

    *&v3[v9] = a2;
    *&v3[v10] = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v20.receiver = v3;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7B2948(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1BE048964();
  sub_1BE048964();
  v15 = a5;
  sub_1BD0D44B8(a6);
  sub_1BD7B2734(&unk_1EBD3EC80, type metadata accessor for DirectTopUpModel);
  sub_1BE04B594();

  if (*(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__configuration))
  {
    a2(v16);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BD7B2D18;
  *(v17 + 24) = v14;
  v18 = OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_loadingCompletions;
  swift_beginAccess();
  v19 = *(a1 + v18);
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v18) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1BD1D88E0(0, v19[2] + 1, 1, v19);
    *(a1 + v18) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1BD1D88E0((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = sub_1BD7B2D48;
  v23[5] = v17;
  *(a1 + v18) = v19;
  swift_endAccess();
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1BE04B594();

  if ((*(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel__loadingConfiguration) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v25);
    aBlock[0] = a1;
    sub_1BE04B584();

    v26 = *(a1 + OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_1BD7B2D18;
    v28[4] = v14;
    aBlock[4] = sub_1BD7B2D4C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD1487AC;
    aBlock[3] = &block_descriptor_40_3;
    v29 = _Block_copy(aBlock);
    sub_1BE048964();

    [v26 requestDTUConfigurationWithCompletion_];
    _Block_release(v29);
  }
}

id sub_1BD7B2DD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, "LoadingViewService: handleDismiss", v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService_configuration) presenter];
  if (result)
  {
    v15 = result;
    if (a1)
    {
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_180;
      a1 = _Block_copy(aBlock);
      sub_1BE048964();
    }

    [v15 dismissWithReason:2 completion:a1];
    _Block_release(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD7B30A0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, "LoadingViewService: fulfillRemotePaymentRequestPromise", v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (a2)
      {
        sub_1BD95EE4C(a1, a2, a3);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7B3304(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_1BD026000, v7, v8, "LoadingViewService: rejectRemotePaymentRequestPromiseWithFailure: %lu", v9, 0xCu);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD95F974(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id RemoteNetworkPaymentLoadingViewService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteNetworkPaymentLoadingViewService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNetworkPaymentLoadingViewService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7B3DCC(const char *a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D174();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, a1, v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_1BD7B4358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v37 = &v34 - v2;
  v38 = sub_1BE04B8D4();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  v35 = sub_1BE04B944();
  v11 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04BAC4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v34 = sub_1BE04B9A4();
  v20 = v19;
  v21 = v37;
  (*(v16 + 8))(v20, v15);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v11 + 8))(v14, v35);
  v22 = v38;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B7F80], v38);
  v23 = sub_1BE04B8C4();
  v24 = *(v3 + 8);
  v24(v6, v22);
  v24(v10, v22);
  v25 = objc_allocWithZone(PKPasscodeUpgradeExplanationViewController);
  v26 = v36;
  v27 = [v25 initWithContext:v34 isForWatch:v23 & 1 delegate:v36];
  v39 = *(v26 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_requirements);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500);
  sub_1BD7B4A98();
  sub_1BE052674();
  v28 = sub_1BE04BDF4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v21, 1, v28) == 1)
  {
    sub_1BD0DE53C(v21, &unk_1EBD55100);
    v30 = 1;
  }

  else
  {
    v31 = sub_1BE04BDC4();
    (*(v29 + 8))(v21, v28);
    v30 = v31 ^ 1;
  }

  [v27 setUpgradeStrongPasscodeRequiredToAddNewPass_];
  sub_1BE052434();
  v32 = sub_1BE04BB74();

  [v27 setReporter_];

  return v27;
}

uint64_t sub_1BD7B47B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7B47F4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD7B4918(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1;
    a4(v7);
  }
}

id sub_1BD7B49A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_isRequirementOptional] = 1;
  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_identifier];
  *v6 = 0xD00000000000002ELL;
  v6[1] = 0x80000001BE0F8570;
  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeExplanationFlowItem_requirements] = a2;
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  sub_1BE048964();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_1BD7B4A98()
{
  result = qword_1EBD55110;
  if (!qword_1EBD55110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3F500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55110);
  }

  return result;
}

uint64_t sub_1BD7B4AFC(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPasscodeUpgradeFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    memset(v6, 0, sizeof(v6));
    v7 = 2;
    sub_1BD865A00(a1, &off_1F3B99F60, v6, ObjectType, v4);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v6, &unk_1EBD3F510);
  }

  return result;
}

uint64_t sub_1BD7B4BB4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38820);
  v5 = (type metadata accessor for AccountBalance(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B69E0;
  v8 = (v7 + v6);
  sub_1BE04AEF4();
  *v8 = 0x403E000000000000;
  result = (*(v1 + 32))(&v8[v5[7]], v4, v0);
  qword_1EBD53740 = v7;
  return result;
}

uint64_t sub_1BD7B4E18(uint64_t a1, void *a2)
{
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  sub_1BE04AEF4();
  sub_1BE04ADD4();
  v12 = sub_1BD7B4F4C(v8, v11);
  v13 = *(v4 + 8);
  v13(v8, v3);
  result = (v13)(v11, v3);
  *a2 = v12;
  return result;
}

void *sub_1BD7B4F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountBalance(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v41 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (v33 - v9);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v37 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v33 - v17;
  v34 = *(v12 + 16);
  v35 = v12 + 16;
  v34(v33 - v17, a1, v11);
  v19 = sub_1BD7B5770();
  v40 = a2;
  v33[1] = v19;
  if ((sub_1BE0522F4() & 1) == 0)
  {
    v36 = (v12 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v33[0] = v12 + 32;
    v21 = 0.0;
    v22 = 0.0;
    while (1)
    {
      do
      {
        v42[0] = 0;
        MEMORY[0x1BFB45F40](v42, 8);
      }

      while (((100 * v42[0]) & 0xFFFFFFFFFFFFFFF0) == 0);
      v23 = (v42[0] * 0x64uLL) >> 64;
      v24 = v37;
      sub_1BE04ADD4();
      v25 = *v36;
      (*v36)(v18, v11);
      (*v33[0])(v18, v24, v11);
      do
      {
        v42[0] = 0;
        MEMORY[0x1BFB45F40](v42, 8);
      }

      while ((0x20000000000001 * v42[0]) < 0x1FFFFFFFFFF801);
      v27 = (v42[0] * 0x20000000000001uLL) >> 64;
      if (v27 == 0x20000000000000)
      {
        v26.n128_u64[0] = 3.0;
        if (v23 < 74)
        {
          goto LABEL_12;
        }
      }

      else if (v23 <= 73)
      {
        v26.n128_f64[0] = vcvtd_n_f64_u64(v27, 0x35uLL) * 2.99 + 0.01;
LABEL_12:
        v21 = v22 + v26.n128_f64[0];
        if (v23 <= 2)
        {
          do
          {
            v42[0] = 0;
            MEMORY[0x1BFB45F40](v42, 8);
          }

          while ((0x20000000000001 * v42[0]) < 0x1FFFFFFFFFF801);
          v28 = (v42[0] * 0x20000000000001uLL) >> 64;
          v26.n128_f64[0] = vcvtd_n_f64_u64(v28, 0x35uLL) * 499.0 + 1.0;
          if (v28 == 0x20000000000000)
          {
            v26.n128_f64[0] = 500.0;
          }

          v21 = v21 + v26.n128_f64[0];
        }

        if (v23 == 3)
        {
          do
          {
            v42[0] = 0;
            MEMORY[0x1BFB45F40](v42, 8);
          }

          while ((0x20000000000001 * v42[0]) < 0x1FFFFFFFFFF801);
          v29 = (v42[0] * 0x20000000000001uLL) >> 64;
          v26.n128_f64[0] = vcvtd_n_f64_u64(v29, 0x35uLL) * 299.0 + 1.0;
          if (v29 == 0x20000000000000)
          {
            v26.n128_f64[0] = 300.0;
          }

          v21 = v21 - v26.n128_f64[0];
        }

        v22 = v21;
      }

      if (v21 < 0.0)
      {
        v21 = 0.0;
        v22 = 0.0;
      }

      (v34)(v10 + *(v39 + 20), v18, v11, v26);
      *v10 = v21;
      sub_1BD0E5D5C(v10, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BD1D7640(0, v20[2] + 1, 1, v20);
      }

      v31 = v20[2];
      v30 = v20[3];
      if (v31 >= v30 >> 1)
      {
        v20 = sub_1BD1D7640(v30 > 1, v31 + 1, 1, v20);
      }

      sub_1BD0E5E24(v10);
      v20[2] = v31 + 1;
      sub_1BD0E5DC0(v41, v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31);
      if (sub_1BE0522F4())
      {
        v25(v18, v11);
        return v20;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  (*(v12 + 8))(v18, v11);
  return v20;
}

uint64_t sub_1BD7B5448()
{
  if (os_variant_has_internal_ui())
  {
    switch(PKSavingsGraphOverrideCurrentType())
    {
      case 2:
        if (qword_1EBD36F30 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53740;
        break;
      case 3:
        if (qword_1EBD36F38 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53748;
        break;
      case 4:
        if (qword_1EBD36F40 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53750;
        break;
      case 5:
        if (qword_1EBD36F48 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53758;
        break;
      case 6:
        if (qword_1EBD36F50 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53760;
        break;
      case 7:
        if (qword_1EBD36F58 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53768;
        break;
      case 8:
        if (qword_1EBD36F60 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53770;
        break;
      case 9:
        if (qword_1EBD36F68 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53778;
        break;
      case 10:
        if (qword_1EBD36F70 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53780;
        break;
      case 11:
        if (qword_1EBD36F78 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53788;
        break;
      case 12:
        if (qword_1EBD36F80 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EBD53790;
        break;
      default:
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    if (qword_1EBD36F28 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBD53738;
  }

  return *v0;
}

unint64_t sub_1BD7B5770()
{
  result = qword_1EBD525D0;
  if (!qword_1EBD525D0)
  {
    sub_1BE04AF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD525D0);
  }

  return result;
}

id sub_1BD7B57F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a3;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53798);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v33 >> 62)
  {
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < 1)
  {
    v27 = 1;
    return (*(v12 + 56))(a4, v27, 1, v11);
  }

  v30 = a4;
  if (v32 != 1)
  {
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v24 = 0;
    goto LABEL_9;
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E69B80E0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v7 + 8))(v10, v6);
    v33 = v19;
    v34 = v21;
    sub_1BD0DDEBC();
    v22 = sub_1BE0506C4();
    v26 = v25 & 1;
LABEL_9:
    v33 = v22;
    v34 = v23;
    v35 = v26;
    v36 = v24;
    MEMORY[0x1EEE9AC00](v22, v23);
    v28 = v32;
    *(&v29 - 4) = v31;
    *(&v29 - 3) = a2;
    *(&v29 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537A0);
    sub_1BD12E194();
    sub_1BD7B6F10();
    sub_1BE051A24();
    a4 = v30;
    (*(v12 + 32))(v30, v15, v11);
    v27 = 0;
    return (*(v12 + 56))(a4, v27, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7B5B90(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4AA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537B8);
  sub_1BD0DE4F4(&qword_1EBD53800, &qword_1EBD4AA70);
  sub_1BD7B6F94();
  sub_1BD7B71C8(&qword_1EBD53808);
  return sub_1BE0519D4();
}

uint64_t sub_1BD7B5D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a2;
  v53 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53810);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537D8);
  MEMORY[0x1EEE9AC00](v52, v13);
  v15 = (&v46 - v14);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53818);
  MEMORY[0x1EEE9AC00](v49, v16);
  v51 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53820);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537C8);
  v22 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v23);
  v25 = &v46 - v24;
  v26 = *a1;
  if (a3 == 1)
  {
    sub_1BD7B63E4(v26, v48, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0);
    sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B850);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810);
    v29 = sub_1BD196C48();
    v54 = v28;
    v55 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_1BD0DDEBC();
    v54 = v27;
    v55 = MEMORY[0x1E69E6158];
    v56 = OpaqueTypeConformance2;
    v57 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    v32 = v50;
    (*(v22 + 16))(v51, v25, v50);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8);
    sub_1BD7B704C();
    sub_1BE04F9A4();
    return (*(v22 + 8))(v25, v32);
  }

  else
  {
    *v15 = sub_1BE051CD4();
    v15[1] = v34;
    v35 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53828) + 44);
    sub_1BD7B63E4(v26, v48, a3, v21);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B850);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B810);
    v38 = sub_1BD196C48();
    v54 = v37;
    v55 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_1BD0DDEBC();
    v54 = v36;
    v55 = MEMORY[0x1E69E6158];
    v56 = v39;
    v57 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E8B4();
    *&v12[*(v47 + 36)] = 0;
    type metadata accessor for TransactionGroupPresentation();
    sub_1BD7B71C8(&qword_1EBD53830);
    sub_1BE048964();
    v41 = sub_1BE04E954();
    v43 = v42;
    sub_1BD2AFD08();
    sub_1BD0DE19C(v12, v8, &qword_1EBD53810);
    sub_1BD0DE19C(v8, v35, &qword_1EBD53810);
    v44 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53838) + 48));
    *v44 = v41;
    v44[1] = v43;
    sub_1BE048964();
    sub_1BD0DE53C(v12, &qword_1EBD53810);

    sub_1BD0DE53C(v8, &qword_1EBD53810);
    v45 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD537E8) + 36);
    v45[32] = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
    sub_1BD0DE19C(v15, v51, &qword_1EBD537D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8);
    sub_1BD7B704C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v15, &qword_1EBD537D8);
  }
}

uint64_t sub_1BD7B63E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a3;
  v37 = a1;
  v42 = a4;
  v6 = sub_1BE04AF64();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04F434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B850);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35 - v18;
  v20 = sub_1BE04F7B4();
  sub_1BD7B6C08(a2, v36, a1, v54);
  v21 = *&v54[0];
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v54[0]) = 1;
  v22 = sub_1BE04EC54();
  v23 = sub_1BE0501D4();
  v45 = v20;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v21;
  *&v53[1] = v22;
  BYTE8(v53[1]) = v23;
  (*(v11 + 104))(v14, *MEMORY[0x1E697C438], v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810);
  v25 = sub_1BD196C48();
  sub_1BE050E84();
  (*(v11 + 8))(v14, v10);
  v54[6] = v51;
  v54[7] = v52;
  v55[0] = v53[0];
  *(v55 + 9) = *(v53 + 9);
  v54[2] = v47;
  v54[3] = v48;
  v54[4] = v49;
  v54[5] = v50;
  v54[0] = v45;
  v54[1] = v46;
  sub_1BD0DE53C(v54, &qword_1EBD3B810);
  v26 = objc_opt_self();
  v27 = [*(v37 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) startDate];
  sub_1BE04AEE4();

  v28 = sub_1BE04AE64();
  (*(v38 + 8))(v9, v39);
  v29 = [v26 titleForYear_];

  v30 = sub_1BE052434();
  v32 = v31;

  *&v45 = v30;
  *(&v45 + 1) = v32;
  v43 = v24;
  v44 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DDEBC();
  v33 = v40;
  sub_1BE050B74();

  return (*(v41 + 8))(v19, v33);
}

double sub_1BD7B6828@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v16 = 1;
  sub_1BD7B6920(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_1BD7B7214(&v17, &v9);
  sub_1BD0DE53C(v22, &qword_1EBD3E1F0);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_1BD7B6920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = [v28 primaryString];

  if (v6)
  {
    sub_1BE052434();
  }

  sub_1BD0DDEBC();
  v7 = sub_1BE0506C4();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;
  sub_1BE04F604();
  sub_1BE04F5F4();
  [*(a1 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) transactionCount];
  sub_1BE04F5C4();
  sub_1BE04F5F4();
  sub_1BE04F634();
  v11 = sub_1BE050694();
  v13 = v12;
  v15 = v14;
  sub_1BE051494();
  v16 = sub_1BE050564();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1BD0DDF10(v11, v13, v15 & 1);

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = v18;
  *(a2 + 64) = v20 & 1;
  *(a2 + 72) = v22;
  sub_1BD0D7F18(v26, v25, v24 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v16, v18, v20 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v16, v18, v20 & 1);

  sub_1BD0DDF10(v26, v25, v24 & 1);
}

id sub_1BD7B6C08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v33 = a4;
  v7 = sub_1BE04B2F4();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AF64();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v16 = [*(a3 + OBJC_IVAR____TtC9PassKitUI28TransactionGroupPresentation_group) startDate];
  sub_1BE04AEE4();
  v17 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();
  v18 = PKAccountViewStyleToPKPaymentPassDetailViewStyle(a2);
  result = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (result)
  {
    v20 = result;

    v21 = [objc_opt_self() sharedService];
    v22 = *(a1 + OBJC_IVAR____TtC9PassKitUI15TransactionList_account);
    v23 = objc_allocWithZone(PKPaymentTransactionsInYearTableViewController);
    v24 = v22;
    v25 = sub_1BE04AE64();
    v26 = sub_1BE04B1D4();
    v27 = [v23 initWithDateFromYear:v25 calendar:v26 transactionSourceCollection:v15 familyCollection:0 detailViewStyle:v18 paymentServiceDataProvider:v20 contactResolver:0 peerPaymentWebService:v21 account:v24];

    (*(v31 + 8))(v10, v32);
    result = (*(v29 + 8))(v14, v30);
    *v33 = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD7B6F10()
{
  result = qword_1EBD537A8;
  if (!qword_1EBD537A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537A0);
    sub_1BD7B6F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537A8);
  }

  return result;
}

unint64_t sub_1BD7B6F94()
{
  result = qword_1EBD537B0;
  if (!qword_1EBD537B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537B8);
    sub_1BD0DE4F4(&qword_1EBD537C0, &qword_1EBD537C8);
    sub_1BD7B704C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537B0);
  }

  return result;
}

unint64_t sub_1BD7B704C()
{
  result = qword_1EBD537D0;
  if (!qword_1EBD537D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537D8);
    sub_1BD7B70D8();
    sub_1BD50C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537D0);
  }

  return result;
}

unint64_t sub_1BD7B70D8()
{
  result = qword_1EBD537E0;
  if (!qword_1EBD537E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD537E8);
    sub_1BD0DE4F4(&qword_1EBD537F0, &qword_1EBD537F8);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD537E0);
  }

  return result;
}

uint64_t sub_1BD7B71C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransactionGroupPresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD7B7214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7B7284()
{
  result = qword_1EBD53840;
  if (!qword_1EBD53840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53848);
    sub_1BD7B7308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53840);
  }

  return result;
}

unint64_t sub_1BD7B7308()
{
  result = qword_1EBD53850;
  if (!qword_1EBD53850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53798);
    sub_1BD12E194();
    sub_1BD7B6F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53850);
  }

  return result;
}

uint64_t sub_1BD7B73F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53970);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v20 - v13;
  v15 = *v2;
  v16 = *(v6 + 16);
  v16(&v20 - v13, a1, v5, v12);
  (v16)(v9, v14, v5);
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD53978));
  sub_1BE048C84();
  v18 = sub_1BE04EAC4();
  result = (*(v6 + 8))(v14, v5);
  *a2 = v18;
  a2[1] = v15;
  return result;
}

id sub_1BD7B7568(uint64_t a1, void *a2)
{
  type metadata accessor for EditMenuView();
  swift_getWitnessTable();
  sub_1BE04FF84();
  sub_1BE04FF74();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];

  v4 = a2;
  [v4 addInteraction_];

  return v4;
}

id sub_1BD7B762C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMenuView.Coordinator();
  v5 = a1;
  sub_1BE048C84();
  v6 = objc_allocWithZone(v4);
  return sub_1BD7B76DC(v5, a2);
}

id sub_1BD7B76DC(void *a1, uint64_t a2)
{
  *&v2[qword_1EBD53860] = a1;
  *&v2[qword_1EBD53868] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for EditMenuView.Coordinator();
  v4 = a1;
  v12 = objc_msgSendSuper2(&v13, sel_init);
  v5 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v6 = v12;
  v7 = [v5 initWithTarget:sub_1BE053B74() action:sel_didTap_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B7020;
  v9 = v7;
  *(v8 + 32) = sub_1BE052A94();
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  v10 = sub_1BE052724();

  [v9 setAllowedTouchTypes_];

  [v4 addGestureRecognizer_];
  return v6;
}

void sub_1BD7B78A0(void *a1)
{
  v2 = *(v1 + qword_1EBD53860);
  [a1 locationInView_];
  sub_1BD0E5E8C(0, &qword_1EBD53950);
  v6 = sub_1BE052EC4();
  v3 = [v2 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53958);
  v4 = sub_1BE052744();

  if (v4 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB40900](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    [v5 presentEditMenuWithConfiguration_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1BD7B7A80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD7B78A0(v4);
}

id sub_1BD7B7AE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BD7B7E68();

  return v9;
}

double sub_1BD7B7B54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1BD7B7F64();
  v10 = v9;

  return v10;
}

id sub_1BD7B7C18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditMenuView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD7B7C88(uint64_t a1)
{
}

id sub_1BD7B7CFC@<X0>(void *a1@<X8>)
{
  result = sub_1BD7B762C(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_1BD7B7D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD7B7DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD7B7E28()
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD7B7E68()
{
  if (*(v0 + qword_1EBD53868) >> 62)
  {
    sub_1BD0E5E8C(0, &unk_1EBD53960);
    sub_1BE048C84();
    sub_1BE0539A4();
  }

  else
  {
    sub_1BE048C84();
    sub_1BE053BA4();
    sub_1BD0E5E8C(0, &unk_1EBD53960);
  }

  sub_1BD0E5E8C(0, &qword_1EBD47258);
  return sub_1BE052F64();
}

uint64_t sub_1BD7B7FC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BD7B8018()
{
  result = qword_1EBD53A00;
  if (!qword_1EBD53A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53A00);
  }

  return result;
}

uint64_t sub_1BD7B8098()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD7B810C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD7B8180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__isEditing;
  v15 = 0;
  sub_1BE04D874();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__fields;
  v14 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v12, v5, v1);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  return v0;
}

void sub_1BD7B836C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04D8C4();
    v7 = *(v1 + 16);
    sub_1BD3F0574(a1);
    v8 = sub_1BE052724();

    [v7 updateWithPaymentSetupFields_];

    return;
  }

  v3 = sub_1BE053704();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB40900](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      [v6 setReadonly_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1BD7B8528(char a1)
{
  v27 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v1;
  sub_1BE04D8B4();

  v4 = v26;
  if (v26 >> 62)
  {
    result = sub_1BE053704();
    v5 = result;
  }

  else
  {
    v5 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CA0];
  if (!v5)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v20 = *(v22 + 16);
    sub_1BD3F0574(v9);
    v21 = sub_1BE052724();

    [v20 updateWithPaymentSetupFields_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = v26 & 0xC000000000000001;
    v24 = a1 ^ 1;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = &selRef_chatWithHandle_;
    v11 = &qword_1EBD4E6C0;
    v23 = v5;
    do
    {
      if (v8)
      {
        v12 = MEMORY[0x1BFB40900](v7, v4);
      }

      else
      {
        v12 = *(v4 + 8 * v7 + 32);
      }

      v13 = v12;
      [v12 v10[365]];
      sub_1BE053624();
      swift_unknownObjectRelease();
      sub_1BD0E5E8C(0, v11);
      if (swift_dynamicCast())
      {
        v14 = v8;
        v15 = v4;
        v16 = v11;
        v17 = v10;
        v18 = v6;
        [v25 setReadonly_];
        v19 = v25;
        MEMORY[0x1BFB3F7A0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v9 = v27;
        v6 = v18;
        v10 = v17;
        v11 = v16;
        v4 = v15;
        v8 = v14;
        v5 = v23;
      }

      else
      {
      }

      ++v7;
    }

    while (v5 != v7);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7B8848()
{
  v1 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__isEditing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI16SetupFieldsModel__fields;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1BD7B896C()
{
  sub_1BD7B8E28(319, &qword_1EBD368F0, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BD7B8E7C(319, &qword_1EBD53A30, &unk_1EBD45AC0, &unk_1BE0D5160, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD7B8AD4()
{
  sub_1BD170C00();
  if (v0 <= 0x3F)
  {
    sub_1BD7B8CB8();
    if (v1 <= 0x3F)
    {
      sub_1BD7B8E28(319, &qword_1EBD53A50, MEMORY[0x1E697BD78]);
      if (v2 <= 0x3F)
      {
        sub_1BD7B8D4C();
        if (v3 <= 0x3F)
        {
          sub_1BD7B8E28(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD7B8E7C(319, &qword_1EBD53A68, &qword_1EBD53A70, &unk_1BE0F8A00, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD53A78, &qword_1EBD420C0);
              if (v6 <= 0x3F)
              {
                sub_1BD10315C(319, &qword_1EBD53A80, &qword_1EBD53A88);
                if (v7 <= 0x3F)
                {
                  sub_1BD10315C(319, &qword_1EBD53A90, &qword_1EBD53A98);
                  if (v8 <= 0x3F)
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

void sub_1BD7B8CB8()
{
  if (!qword_1EBD53A48)
  {
    type metadata accessor for DescriptorsModel(255);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53A48);
    }
  }
}

void sub_1BD7B8D4C()
{
  if (!qword_1EBD53A58)
  {
    type metadata accessor for SetupFieldsModel(255);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD53A58);
    }
  }
}

uint64_t sub_1BD7B8DE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD7B8E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1BD7B8E7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1BD7B8EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BD0DE19C(v2, &v16 - v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD7B90FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetupFieldsModel(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD7B913C()
{
  type metadata accessor for SetupFieldsModel(0);
  v0 = swift_allocObject();
  sub_1BD7B8180();
  return v0;
}

id sub_1BD7B9178@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v105 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v106 = v4;
  v108 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BE04ECF4();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v5);
  v102 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE04E454();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v111 = v9;
  v112 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v109 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v86 = &v85 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AA0);
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AA8);
  v92 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AB0);
  v94 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v93 = &v85 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AB8);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v27);
  v114 = &v85 - v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AC0);
  MEMORY[0x1EEE9AC00](v107, v29);
  v101 = &v85 - v30;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AC8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v31);
  v113 = &v85 - v32;
  v115 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AD0);
  sub_1BD0DE4F4(&qword_1EBD53AD8, &qword_1EBD53AD0);
  sub_1BE0504A4();
  v89 = v2;
  v33 = *(v2 + 52);
  v110 = v1;
  v34 = *(v1 + v33);
  v95 = v24;
  if (v34)
  {
    v35 = [v34 cardNickname];
    v36 = sub_1BE052434();
    v38 = v37;
  }

  else
  {
    v39 = v111;
    (v112[13])(v86, *MEMORY[0x1E69B80D8], v111);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_11;
    }

    v41 = result;
    v42 = v86;
    v36 = sub_1BE04B6F4();
    v38 = v43;

    (v112[1])(v42, v39);
  }

  v120 = v36;
  v121 = v38;
  v44 = sub_1BD0DE4F4(&qword_1EBD53AE0, &qword_1EBD53AA0);
  v45 = sub_1BD0DDEBC();
  v46 = MEMORY[0x1E69E6158];
  sub_1BE050B74();

  (*(v91 + 8))(v19, v16);
  v47 = v96;
  sub_1BE04E444();
  v120 = v16;
  v121 = v46;
  v122 = v44;
  v123 = v45;
  v91 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v93;
  sub_1BE050984();
  (*(v97 + 8))(v47, v98);
  (*(v92 + 8))(v23, v20);
  v50 = v102;
  sub_1BE051DD4();
  v120 = v20;
  v121 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD7B8DE0(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  v51 = v95;
  v52 = v104;
  sub_1BE051134();
  (*(v103 + 8))(v50, v52);
  (*(v94 + 8))(v49, v51);
  if (v34)
  {
    v53 = [v34 identifier];
    v54 = sub_1BE052434();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = v109;
  v58 = v110;
  v60 = v107;
  v59 = v108;
  sub_1BD7C2E04(v110, v108);
  v61 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v62 = swift_allocObject();
  sub_1BD7C2E68(v59, v62 + v61);
  v63 = v101;
  v64 = &v101[*(v60 + 36)];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AE8);
  sub_1BE0528B4();
  v66 = &v64[*(v65 + 40)];
  *v66 = v54;
  v66[1] = v56;
  *v64 = &unk_1BE0F8AD8;
  *(v64 + 1) = v62;
  v67 = (*(v99 + 32))(v63, v114, v100);
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53AF0);
  v70 = sub_1BD7C2FA0();
  v71 = sub_1BD0DE4F4(&qword_1EBD53B08, &qword_1EBD53AF0);
  v114 = v69;
  v110 = v70;
  sub_1BE051024();
  sub_1BD0DE53C(v63, &qword_1EBD53AC0);
  v73 = v111;
  v72 = v112;
  (v112[13])(v57, *MEMORY[0x1E69B80D8], v111);
  result = PKPassKitBundle();
  if (result)
  {
    v74 = result;
    v75 = sub_1BE04B6F4();
    v77 = v76;

    (v72[1])(v57, v73);
    v118 = v75;
    v119 = v77;
    v78 = v58 + *(v89 + 36);
    v79 = *v78;
    v80 = *(v78 + 8);
    v116 = v79;
    v117 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v81 = sub_1BE0516C4();
    v112 = &v85;
    MEMORY[0x1EEE9AC00](v81, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    v120 = v60;
    v121 = v114;
    v122 = v110;
    v123 = v71;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v83 = v88;
    v84 = v113;
    sub_1BE050C64();

    return (*(v87 + 8))(v84, v83);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_1BD7B9EA4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v152 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B48);
  v150 = *(v3 - 8);
  v151 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v140 = v122 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B50);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v6);
  v131 = v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B58);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v139 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v145 = v122 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B60);
  v142 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v14);
  v130 = v122 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B68);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v138 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v146 = v122 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B70);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v149 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v148 = v122 - v27;
  v28 = sub_1BE04BD74();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v132 = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v129 = v122 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v122 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B78);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v147 = v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v47 = v122 - v46;
  v153 = v2;
  v48 = *(v29 + 104);
  v136 = *MEMORY[0x1E69B80D8];
  v137 = v29 + 104;
  v135 = v48;
  v48(v38, v45);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50 = result;
  v51 = sub_1BE04B6F4();
  v53 = v52;

  v54 = *(v29 + 8);
  v134 = v28;
  v133 = v54;
  v54(v38, v28);
  v154 = v51;
  v155 = v53;
  v55 = sub_1BD0DDEBC();
  v154 = sub_1BE0506C4();
  v155 = v56;
  LOBYTE(v156) = v57 & 1;
  v157 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B80);
  sub_1BD7C39C0();
  sub_1BE051A54();
  v59 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v60 = *(v2 + *(v59 + 52));
  v61 = v47;
  if (!v60 || (v62 = v59, [v60 type] != 1))
  {
    v70 = 1;
    v71 = v148;
LABEL_16:
    (*(v150 + 56))(v71, v70, 1, v151);
    v99 = *(v40 + 16);
    v100 = v147;
    v99(v147, v61, v39);
    v101 = v149;
    sub_1BD0DE19C(v71, v149, &qword_1EBD53B70);
    v102 = v61;
    v103 = v152;
    v99(v152, v100, v39);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BC8);
    sub_1BD0DE19C(v101, &v103[*(v104 + 48)], &qword_1EBD53B70);
    sub_1BD0DE53C(v71, &qword_1EBD53B70);
    v105 = *(v40 + 8);
    v105(v102, v39);
    sub_1BD0DE53C(v101, &qword_1EBD53B70);
    return (v105)(v100, v39);
  }

  v63 = (v2 + *(v62 + 44));
  v65 = *v63;
  v64 = v63[1];
  v154 = v65;
  v155 = v64;
  v125 = v64;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516A4();
  v128 = v40;
  v127 = v39;
  v126 = v65;
  if (!v162 || (v162, sub_1BE04E134(), v154 != 1))
  {
    v68 = v61;
    v69 = 1;
    v67 = v141;
    goto LABEL_10;
  }

  v66 = [v60 cardIsInWallet];
  v67 = v141;
  if (v66)
  {
    v68 = v61;
    v69 = 1;
LABEL_10:
    v72 = 1;
    (*(v142 + 56))(v146, v69, 1, v67);
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v154 != 1)
    {
LABEL_15:
      v93 = v145;
      (*(v143 + 56))(v145, v72, 1, v144);
      v94 = v146;
      v95 = v138;
      sub_1BD0DE19C(v146, v138, &qword_1EBD53B68);
      v96 = v139;
      sub_1BD0DE19C(v93, v139, &qword_1EBD53B58);
      v97 = v140;
      sub_1BD0DE19C(v95, v140, &qword_1EBD53B68);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BD0);
      sub_1BD0DE19C(v96, v97 + *(v98 + 48), &qword_1EBD53B58);
      sub_1BD0DE53C(v93, &qword_1EBD53B58);
      sub_1BD0DE53C(v94, &qword_1EBD53B68);
      sub_1BD0DE53C(v96, &qword_1EBD53B58);
      sub_1BD0DE53C(v95, &qword_1EBD53B68);
      v71 = v148;
      sub_1BD0B6008(v97, v148);
      v70 = 0;
      v61 = v68;
      v39 = v127;
      v40 = v128;
      goto LABEL_16;
    }

    v154 = v126;
    v155 = v125;
    sub_1BE0516A4();
    if (!v162)
    {
      v72 = 1;
      goto LABEL_15;
    }

    v73 = v55;

    v76 = MEMORY[0x1EEE9AC00](v74, v75);
    v122[-2] = v2;
    v77 = v132;
    v78 = v134;
    v135(v132, v136, v134, v76);
    result = PKPassKitBundle();
    if (result)
    {
      v79 = result;
      v80 = sub_1BE04B6F4();
      v82 = v81;

      v133(v77, v78);
      v154 = v80;
      v155 = v82;
      v83 = MEMORY[0x1E69E6158];
      v84 = v73;
      v162 = sub_1BE0506C4();
      v163 = v85;
      v164 = v86 & 1;
      v165 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BD8);
      v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
      v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8);
      v90 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
      v91 = sub_1BD170E70();
      v154 = v88;
      v155 = v83;
      v156 = v88;
      v157 = v89;
      v158 = v90;
      v159 = v84;
      v160 = v90;
      v161 = v91;
      swift_getOpaqueTypeConformance2();
      v92 = v131;
      sub_1BE051A54();
      (*(v143 + 32))(v145, v92, v144);
      v72 = 0;
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v106 = v141;
  v68 = v61;
  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v107 = result;
  v108 = [result paymentSetupSupportedInRegion];

  if (v108 == 2 || (v109 = PKPasscodeEnabled(), !v109))
  {
    v69 = 1;
    v67 = v106;
    goto LABEL_10;
  }

  v123 = v55;
  v122[1] = v122;
  v111 = MEMORY[0x1EEE9AC00](v109, v110);
  v122[0] = &v122[-4];
  v122[-2] = v2;
  v112 = v129;
  v113 = v134;
  v135(v129, v136, v134, v111);
  result = PKPassKitBundle();
  if (result)
  {
    v114 = result;
    v115 = sub_1BE04B6F4();
    v117 = v116;

    v133(v112, v113);
    v154 = v115;
    v155 = v117;
    v55 = v123;
    v154 = sub_1BE0506C4();
    v155 = v118;
    LOBYTE(v156) = v119 & 1;
    v157 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BE0);
    sub_1BD7C3BE4();
    v121 = v130;
    sub_1BE051A54();
    (*(v142 + 32))(v146, v121, v106);
    v67 = v106;
    v69 = 0;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD7BAD6C(uint64_t a1)
{
  v1[21] = a1;
  sub_1BE0528A4();
  v1[22] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BAE04, v3, v2);
}

uint64_t sub_1BD7BAE04()
{
  v1 = v0[21];
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v0[25] = v2;
  v3 = *(v1 + *(v2 + 52));
  v0[26] = v3;
  if (v3)
  {
    v4 = *(v1 + *(v2 + 20));
    if (v4)
    {
      v5 = v4[2];
      v0[27] = v5;
      v6 = v4[4];
      if (v6 >> 60 == 15)
      {
        v7 = v3;
        v8 = v5;
        v9 = 0;
      }

      else
      {
        v14 = v4[3];
        v15 = v3;
        v16 = v5;
        sub_1BD030394(v14, v6);
        v9 = sub_1BE04AAB4();
        sub_1BD030220(v14, v6);
      }

      v0[28] = v9;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1BD7BB154;
      v17 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B38);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1BD16F63C;
      v0[13] = &block_descriptor_103_2;
      v0[14] = v17;
      [v5 credentialForFPANCard:v3 authorization:v9 options:7 merchantHost:0 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    else
    {
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
      v13 = v3;

      return sub_1BE04EEB4();
    }
  }

  else
  {

    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
    sub_1BE04E3C4();
    v10 = sub_1BD7BB5A8();
    sub_1BD7B836C(v10);

    sub_1BE04E3C4();
    sub_1BD7B8528(1);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BD7BB154()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1BD7BB514;
  }

  else
  {
    v5 = sub_1BD7BB284;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD7BB284()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  v3 = *(v0 + 144);

  if (sub_1BE052974())
  {
    v4 = *(v0 + 208);
  }

  else
  {
    v5 = *(v0 + 200);
    v14 = *(v0 + 208);
    v6 = *(v0 + 168);
    [v3 mutableCopy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD53B40);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 144);
    if (!v7)
    {
      v8 = 0;
    }

    *(v0 + 144) = *(v6 + *(v5 + 44));
    *(v0 + 160) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
    sub_1BE0516B4();
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
    sub_1BE04E3C4();
    v9 = sub_1BD7BB5A8();
    sub_1BD7B836C(v9);

    sub_1BE04E3C4();
    sub_1BD7B8528(0);

    v10 = v6 + *(v5 + 40);
    v11 = *(v10 + 8);
    *(v0 + 80) = *v10;
    *(v0 + 88) = v11;
    *(v0 + 144) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BD7BB514()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];

  swift_willThrow();

  v5 = v0[1];

  return v5();
}

id sub_1BD7BB5A8()
{
  v1 = sub_1BE04BD74();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v56 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1E69E7CC0];
  v15 = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];
  v59 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v60 = v0;
  v16 = (v0 + *(v59 + 44));
  v17 = *v16;
  v18 = v16[1];
  v65 = *v16;
  v66 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516A4();
  v19 = v64;
  v20 = &selRef_setBankName_;
  if (v64)
  {
    result = [v64 primaryAccountNumber];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = result;
    [v15 setCurrentValue_];
  }

  v23 = v15;
  MEMORY[0x1BFB3F7A0]();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v20 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v24 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];

  v65 = v17;
  v66 = v18;
  sub_1BE0516A4();
  v25 = v64;
  if (v64)
  {
    v26 = [v64 cardholderName];
    [v24 v20[271]];
  }

  v27 = v24;
  MEMORY[0x1BFB3F7A0]([v27 setOptional_]);
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v20 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v28 = [objc_allocWithZone(MEMORY[0x1E69B8DE0]) init];
  v65 = v17;
  v66 = v18;
  sub_1BE0516A4();
  v29 = v64;
  if (!v64)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_16:
    sub_1BD0DE53C(v10, &unk_1EBD39970);
    goto LABEL_18;
  }

  v30 = [v64 expirationDate];

  if (v30)
  {
    v31 = v58;
    sub_1BE04AEE4();

    v32 = v31;
    v33 = 0;
    v34 = v11;
  }

  else
  {
    v33 = 1;
    v34 = v11;
    v32 = v58;
  }

  (*(v12 + 56))(v32, v33, 1, v34);
  sub_1BD0DE204(v32, v10, &unk_1EBD39970);
  v20 = &selRef_setBankName_;
  if ((*(v12 + 48))(v10, 1, v34) == 1)
  {
    goto LABEL_16;
  }

  v35 = v57;
  (*(v12 + 32))(v57, v10, v34);
  v36 = v28;
  v37 = v34;
  v38 = sub_1BE04AE64();
  [v36 setCurrentValue_];

  v20 = &selRef_setBankName_;
  (*(v12 + 8))(v35, v37);
LABEL_18:
  v39 = v28;
  MEMORY[0x1BFB3F7A0]([v39 setOptional_]);
  v40 = v61;
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
    v20 = &selRef_setBankName_;
  }

  sub_1BE0527C4();
  v41 = [objc_allocWithZone(MEMORY[0x1E69B8DF0]) init];

  v42 = v41;
  [v42 setOptional_];
  v65 = v17;
  v66 = v18;
  sub_1BE0516A4();
  v43 = v64;
  if (v64)
  {
    v44 = [v64 securityCode];
  }

  else
  {
    v44 = 0;
  }

  v46 = v62;
  v45 = v63;
  [v42 v20[271]];
  v47 = swift_unknownObjectRelease();
  MEMORY[0x1BFB3F7A0](v47);
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v48 = [objc_allocWithZone(MEMORY[0x1E69B8E08]) init];

  (*(v46 + 104))(v40, *MEMORY[0x1E69B80D8], v45);
  v49 = v48;
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v50 = result;
  sub_1BE04B6F4();

  (*(v46 + 8))(v40, v45);
  v51 = sub_1BE052404();

  [v49 setLocalizedDisplayName_];

  v52 = *(v60 + *(v59 + 52));
  if (v52)
  {
    v53 = v52;
    result = [v53 cardNickname];
    if (result)
    {
      v54 = result;
      [v49 setCurrentValue_];

      goto LABEL_29;
    }

LABEL_34:
    __break(1u);
    return result;
  }

LABEL_29:
  v55 = v49;
  MEMORY[0x1BFB3F7A0]([v55 setOptional_]);
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();

  return v67;
}

uint64_t sub_1BD7BBDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B18);
  MEMORY[0x1EEE9AC00](v84, v3);
  v89 = &v72 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v75 = &v72 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v74 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v7);
  v73 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACC0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B20);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v78 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A830);
  v77 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B28);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v72 - v30;
  v32 = sub_1BE04FB44();
  v91 = *(v32 - 8);
  v92 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v79 = &v72 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v90 = &v72 - v41;
  sub_1BE04FAE4();
  v42 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v43 = *(a1 + *(v42 + 52));
  v80 = a1;
  v81 = v43;
  v82 = v42;
  if (v43)
  {
    if ([v43 type] == 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    (*(v17 + 56))(v27, 1, 1, v16);
    v44 = sub_1BD0DE4F4(&qword_1EBD53B30, &qword_1EBD4A830);
    *&v94 = v20;
    *(&v94 + 1) = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v27, v16, OpaqueTypeConformance2);
    sub_1BD0DE53C(v27, &qword_1EBD53B28);
    goto LABEL_8;
  }

  v94 = *(a1 + *(v42 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516A4();
  if (v93)
  {

    goto LABEL_6;
  }

LABEL_7:
  v46 = *(v91 + 16);
  v72 = v20;
  v47 = v46(v79, v90, v92);
  v76 = v31;
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v72 - 2) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  sub_1BD3BAA6C();
  sub_1BE04E424();
  v31 = v76;
  v49 = sub_1BD0DE4F4(&qword_1EBD53B30, &qword_1EBD4A830);
  v50 = v78;
  v51 = v72;
  MEMORY[0x1BFB3CC50](v23, v72, v49);
  (*(v17 + 16))(v27, v50, v16);
  (*(v17 + 56))(v27, 0, 1, v16);
  *&v94 = v51;
  *(&v94 + 1) = v49;
  v52 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v27, v16, v52);
  sub_1BD0DE53C(v27, &qword_1EBD53B28);
  (*(v17 + 8))(v50, v16);
  (*(v77 + 8))(v23, v51);
LABEL_8:
  v53 = v88;
  if (!v81)
  {
    v54 = v80;
    v94 = *(v80 + *(v82 + 11));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
    sub_1BE0516A4();
    if (!v93)
    {
      v61 = v79;
      sub_1BE04FAD4();
      v62 = (*(v91 + 16))(v35, v61, v92);
      v82 = &v72;
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v72 - 2) = v54;
      v64 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
      v76 = v31;
      v65 = v12;
      v66 = v83;
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
      v67 = v73;
      sub_1BE04E424();
      v68 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
      v69 = v75;
      v70 = v86;
      MEMORY[0x1BFB3CC50](v67, v86, v68);
      (*(v66 + 16))(v65, v69, v64);
      (*(v66 + 56))(v65, 0, 1, v64);
      *&v94 = v70;
      *(&v94 + 1) = v68;
      v71 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1BFB3CC80](v65, v64, v71);
      v31 = v76;
      sub_1BD0DE53C(v65, &qword_1EBD3ACC0);
      (*(v66 + 8))(v69, v64);
      (*(v74 + 8))(v67, v70);
      (*(v91 + 8))(v79, v92);
      goto LABEL_12;
    }
  }

  v55 = v85;
  (*(v83 + 56))(v12, 1, 1, v85);
  v56 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
  *&v94 = v86;
  *(&v94 + 1) = v56;
  v57 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v12, v55, v57);
  sub_1BD0DE53C(v12, &qword_1EBD3ACC0);
LABEL_12:
  v58 = *(v84 + 48);
  v59 = v89;
  sub_1BD0DE19C(v31, v89, &qword_1EBD53B28);
  sub_1BD0DE19C(v53, v59 + v58, &qword_1EBD3ACC0);
  sub_1BE04F854();
  sub_1BD0DE53C(v53, &qword_1EBD3ACC0);
  sub_1BD0DE53C(v31, &qword_1EBD53B28);
  return (*(v91 + 8))(v90, v92);
}

int *sub_1BD7BC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - v13;
  v37 = v3;
  v40 = a1;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  (*(v7 + 104))(v10, *MEMORY[0x1E69B80D8], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v7 + 8))(v10, v6);
    v43 = v17;
    v44 = v19;
    v20 = v40;
    sub_1BD7C2E04(v40, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v22 = swift_allocObject();
    sub_1BD7C2E68(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v23 = v37;
    v24 = v20 + *(v37 + 48);
    v25 = *v24;
    v26 = *(v24 + 8);
    LOBYTE(v43) = v25;
    v44 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v42)
    {
      v27 = 1;
    }

    else
    {
      v28 = v20 + *(v23 + 40);
      v29 = *v28;
      v30 = *(v28 + 8);
      LOBYTE(v43) = v29;
      v44 = v30;
      sub_1BE0516A4();
      v27 = v42 ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v27 & 1;
    v33 = v41;
    (*(v38 + 32))(v41, v14, v39);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
    v34 = (v33 + result[9]);
    *v34 = KeyPath;
    v34[1] = sub_1BD10DF54;
    v34[2] = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD7BCD68(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v9 = *(v2 - 8);
  v10 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v8 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v6 = v12;
  sub_1BE04E3C4();
  if (v6 == 1)
  {
    sub_1BD7B8528(0);

    sub_1BD7BCFCC(0, 0, 0, 0);
    if (!*(a1 + *(v5 + 52)))
    {
      v12 = *(a1 + *(v5 + 44));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
      sub_1BE0516A4();
      if (v11)
      {
      }

      else
      {
        v7 = v8;
        sub_1BD7B8EFC(v8);
        sub_1BE04E654();
        (*(v9 + 8))(v7, v10);
      }
    }
  }

  else
  {
    sub_1BD7B8528(1);
  }
}

void sub_1BD7BCFCC(char a1, int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v60 = a3;
  v59 = a2;
  v8 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  sub_1BD7C2E04(v5, &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 80);
  v13 = swift_allocObject();
  sub_1BD7C2E68(&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v12 + 16) & ~v12));
  v14 = *(v5 + v8[13]);
  if ((a1 & 1) == 0)
  {
    v57 = a4;
    v58 = v13;
    if (v14 && (v21 = (v5 + v8[11]), v23 = *v21, v22 = v21[1], aBlock = *v21, v63 = v22, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10), sub_1BE0516A4(), v61))
    {

      v24 = sub_1BD7C1A40();
      sub_1BD17195C(v24, v25);
      aBlock = v23;
      v63 = v22;
      v26 = v14;
      sub_1BE0516A4();
      v27 = v61;
      if (v61)
      {
        v28 = v5 + v8[5];
        v29 = v58;
        if (*v28)
        {
          v30 = *(*v28 + 16);
          v31 = swift_allocObject();
          *(v31 + 16) = sub_1BD7C33E4;
          *(v31 + 24) = v29;
          v66 = sub_1BD267328;
          v67 = v31;
          aBlock = MEMORY[0x1E69E9820];
          v63 = 1107296256;
          v64 = sub_1BD03E30C;
          v65 = &block_descriptor_36_3;
          v32 = _Block_copy(&aBlock);
          sub_1BE048964();
          v33 = v30;

          [v33 updateFPANCardWithDescriptor:v26 credential:v27 completion:v32];

          _Block_release(v32);

          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v34 = sub_1BD7C1A40();
      if (v34)
      {
        a4 = v35;
        v56 = v34;
        v36 = v34;
        v37 = *(v5 + v8[5]);
        if (v37)
        {
          v38 = v36;
          v55 = *(v37 + 16);
          sub_1BD7C2E04(v5, &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
          v39 = (v12 + 32) & ~v12;
          v40 = (v10 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
          v42 = swift_allocObject();
          v43 = v60;
          v44 = v57;
          *(v42 + 16) = v60;
          *(v42 + 24) = v44;
          sub_1BD7C2E68(&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v39);
          *(v42 + v40) = v38;
          *(v42 + v41) = a4;
          v45 = v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
          v46 = v58;
          *v45 = sub_1BD7C33E4;
          *(v45 + 8) = v46;
          *(v45 + 16) = v59 & 1;
          v66 = sub_1BD7C33FC;
          v67 = v42;
          aBlock = MEMORY[0x1E69E9820];
          v63 = 1107296256;
          v64 = sub_1BD198918;
          v65 = &block_descriptor_181;
          v47 = _Block_copy(&aBlock);
          v48 = a4;
          sub_1BE048964();
          v49 = v48;
          v50 = v55;
          sub_1BD0D44B8(v43);
          v51 = v38;

          [v50 canSaveFPANCardWithDescriptor:v51 credential:v49 completion:v47];

          sub_1BD17195C(v56, a4);
          _Block_release(v47);

          return;
        }

        goto LABEL_17;
      }
    }

LABEL_15:

    return;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v5 + v8[5];
  if (*v15)
  {
    v16 = *(*v15 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1BD7C33E4;
    *(v17 + 24) = v13;
    v66 = sub_1BD267328;
    v67 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1BD03E30C;
    v65 = &block_descriptor_42_3;
    v18 = _Block_copy(&aBlock);
    v19 = v14;
    v20 = v16;
    sub_1BE048964();

    [v20 deleteFPANCardWithDescriptor:v19 completion:v18];

    _Block_release(v18);

    return;
  }

  type metadata accessor for DescriptorsModel(0);
  sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v52 = v14;
  sub_1BE04EEB4();
  __break(1u);
LABEL_17:
  type metadata accessor for DescriptorsModel(0);
  sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  v53 = a4;
  sub_1BE04EEB4();
  __break(1u);
LABEL_18:
  type metadata accessor for DescriptorsModel(0);
  sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
  sub_1BE04EEB4();
  __break(1u);
}

id sub_1BD7BD644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80D0], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v20[2] = v15;
    v20[3] = v17;
    sub_1BD7C2E04(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1BD7C2E68(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7BD86C(uint64_t a1)
{
  v18 = sub_1BE04F3D4();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

id sub_1BD7BDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80D8], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v20[2] = v15;
    v20[3] = v17;
    sub_1BD7C2E04(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1BD7C2E68(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7BDD18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2, v5);
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

uint64_t sub_1BD7BDE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BC0);
  MEMORY[0x1EEE9AC00](v34, v3);
  v26 = (&v26 - v4);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C38);
  MEMORY[0x1EEE9AC00](v31, v5);
  v33 = &v26 - v6;
  v7 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BA8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v10);
  v29 = &v26 - v11;
  v35 = a1;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v37 >> 62)
  {
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < 1)
  {
    v20 = 1;
    if (!*(v35 + *(v7 + 52)))
    {
      v19 = v36;
      goto LABEL_8;
    }

    v21 = sub_1BE04F504();
    v22 = v26;
    *v26 = v21;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C40);
    sub_1BD7BE73C(v22 + *(v23 + 44));
    sub_1BD0DE19C(v22, v33, &qword_1EBD53BC0);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0);
    v19 = v36;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v22, &qword_1EBD53BC0);
  }

  else
  {
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    swift_getKeyPath();
    v13 = v28;
    sub_1BD7C2E04(v35, v28);
    v14 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v15 = swift_allocObject();
    sub_1BD7C2E68(v13, v15 + v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0);
    sub_1BD0DE4F4(&qword_1EBD53C48, &unk_1EBD45AC0);
    sub_1BD7C3B80();
    v16 = v29;
    sub_1BE0519C4();
    v17 = v30;
    v18 = v32;
    (*(v30 + 16))(v33, v16, v32);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0);
    v19 = v36;
    sub_1BE04F9A4();
    (*(v17 + 8))(v16, v18);
  }

  v20 = 0;
LABEL_8:
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B98);
  return (*(*(v24 - 8) + 56))(v19, v20, 1, v24);
}

id sub_1BD7BE4BC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = *a1;
  sub_1BD7C2E04(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_1BD7C2E68(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *a3 = v10;
  a3[1] = sub_1BD7C41DC;
  a3[2] = v12;
  v13 = v10;

  return v13;
}

uint64_t sub_1BD7BE5D8(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1BE052434();
  v5 = v4;

  if (v3 == sub_1BE052434() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1BE053B84();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  if ([a1 submissionStringMeetsAllRequirements])
  {
    [a1 submissionStringMeetsValidationRegex];
  }

  type metadata accessor for AutoFillFPANCardDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD7BE73C@<X0>(uint64_t a1@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD424B8);
  MEMORY[0x1EEE9AC00](v42, v2);
  v44 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v40[-v6];
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80D8], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v45 = v15;
    v46 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    v23 = objc_opt_self();
    v24 = [v23 tertiaryLabelColor];
    sub_1BE0511C4();
    v25 = sub_1BE050564();
    v27 = v26;
    v41 = v28;
    v30 = v29;

    sub_1BD0DDF10(v18, v20, v22 & 1);

    v31 = v43;
    sub_1BE04E4F4();
    v32 = [v23 tertiaryLabelColor];
    v33 = sub_1BE0511C4();
    KeyPath = swift_getKeyPath();
    v45 = v33;
    v35 = sub_1BE04E5F4();
    v36 = (v31 + *(v42 + 36));
    *v36 = KeyPath;
    v36[1] = v35;
    v37 = v44;
    sub_1BD0DE19C(v31, v44, &qword_1EBD424B8);
    *a1 = v25;
    *(a1 + 8) = v27;
    v38 = v41 & 1;
    *(a1 + 16) = v41 & 1;
    *(a1 + 24) = v30;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C50);
    sub_1BD0DE19C(v37, a1 + *(v39 + 64), &qword_1EBD424B8);
    sub_1BD0D7F18(v25, v27, v38);
    sub_1BE048C84();
    sub_1BD0DE53C(v31, &qword_1EBD424B8);
    sub_1BD0DE53C(v37, &qword_1EBD424B8);
    sub_1BD0DDF10(v25, v27, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7BEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-v11];
  sub_1BD7C2E04(a1, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1BD7C2E68(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C00);
  sub_1BD0DE4F4(&qword_1EBD53C08, &qword_1EBD53C00);
  sub_1BE051704();
  v15 = a1 + *(v4 + 48);
  v16 = *v15;
  v17 = *(v15 + 8);
  v26 = v16;
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v25)
  {
    v18 = 1;
  }

  else
  {
    type metadata accessor for SetupFieldsModel(0);
    sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
    sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v18 = v26;
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v9 + 32))(a2, v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53BE0);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_1BD185ABC;
  v22[2] = v20;
  return result;
}

void sub_1BD7BEE54(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(v7 + 52));
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  aBlock = *(a1 + v2[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516A4();
  v11 = v35;
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8880]) initWithFPANCardDescriptor:v9 credential:v35];

  if (v12)
  {
    v13 = *(a1 + v2[14]);
    if (v13)
    {
      v14 = a1 + v2[12];
      v15 = *v14;
      v16 = *(v14 + 8);
      LOBYTE(aBlock) = v15;
      *(&aBlock + 1) = v16;
      LOBYTE(v35) = 1;
      v17 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B7020;
      *(v18 + 32) = v12;
      sub_1BD0E5E8C(0, &qword_1EBD41880);
      v19 = v12;
      v12 = sub_1BE052724();

      sub_1BD7C2E04(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v21 = swift_allocObject();
      sub_1BD7C2E68(v6, v21 + v20);
      v33 = sub_1BD7C3D58;
      v34 = v21;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1BD126964;
      v32 = &block_descriptor_123_0;
      v22 = _Block_copy(&aBlock);

      [v17 presentFPANAdditionFlowWithPreflight:1 selectedCredentials:v12 withCompletion:v22];
    }

    else
    {
      v23 = *(a1 + v2[15]);
      if (!v23)
      {
LABEL_11:

        return;
      }

      v24 = a1 + v2[12];
      v25 = *v24;
      v26 = *(v24 + 8);
      LOBYTE(aBlock) = v25;
      *(&aBlock + 1) = v26;
      LOBYTE(v35) = 1;
      v17 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BE0B7020;
      *(v27 + 32) = v12;
      sub_1BD0E5E8C(0, &qword_1EBD41880);
      v19 = v12;
      v12 = sub_1BE052724();

      sub_1BD7C2E04(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v29 = swift_allocObject();
      sub_1BD7C2E68(v6, v29 + v28);
      v33 = sub_1BD7C3CE8;
      v34 = v29;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1BD976224;
      v32 = &block_descriptor_117_2;
      v22 = _Block_copy(&aBlock);

      [v17 presentAddFPANCardAnimated:1 selectedCredentials:v12 referralSource:2 completion:v22];
    }

    _Block_release(v22);
    goto LABEL_11;
  }
}

uint64_t sub_1BD7BF2E0(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD7C2E04(a1, v6);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD7C2E68(v6, v14 + v13);
  sub_1BD122C00(0, 0, v10, &unk_1BE0F8D08, v14);
}

uint64_t sub_1BD7BF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[31] = v6;
  v4[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BF530, v6, v5);
}

uint64_t sub_1BD7BF530()
{
  v1 = v0[29];
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v0[33] = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  v0[34] = *v3;
  if (v4)
  {
    v5 = *(v4 + 16);
    v0[35] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    sub_1BE048964();
    v7 = v5;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v8 = sub_1BE052A24();
    v0[36] = v8;

    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_1BD7BF7DC;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD7BF8E4;
    v0[13] = &block_descriptor_130_0;
    v0[14] = v9;
    [v7 activeFPANCardsWithOptions:7 allowedCardTypes:v8 sortType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD7BF7DC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD7C42A0, v2, v1);
}

uint64_t sub_1BD7BF8E4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD420C0);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD7BF974(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_1BE0528D4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1BD7C2E04(a2, v7);
  sub_1BE0528A4();
  v13 = sub_1BE052894();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_1BD7C2E68(v7, v15 + v14);
  sub_1BD122C00(0, 0, v11, &unk_1BE0F8D20, v15);
}

uint64_t sub_1BD7BFB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[31] = v6;
  v4[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD7BFBC4, v6, v5);
}

uint64_t sub_1BD7BFBC4()
{
  v1 = v0[29];
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v0[33] = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  v0[34] = *v3;
  if (v4)
  {
    v5 = *(v4 + 16);
    v0[35] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    sub_1BE048964();
    v7 = v5;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v8 = sub_1BE052A24();
    v0[36] = v8;

    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_1BD7BFE70;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD7BF8E4;
    v0[13] = &block_descriptor_137_1;
    v0[14] = v9;
    [v7 activeFPANCardsWithOptions:7 allowedCardTypes:v8 sortType:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD7BFE70()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD7BFF78, v2, v1);
}

uint64_t sub_1BD7BFF78()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 232);

  v5 = *(v0 + 216);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 224) = v6;
  sub_1BE04D8C4();
  v7 = (v4 + *(v3 + 48));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v0 + 200) = v8;
  *(v0 + 208) = v9;
  *(v0 + 296) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v10 = *(v0 + 8);

  return v10();
}

id sub_1BD7C0080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C10);
  return sub_1BD7C00D8(a1, (a2 + *(v4 + 44)));
}

id sub_1BD7C00D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C18);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v3);
  v5 = &v62[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C20);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v62[-v11];
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v18, *MEMORY[0x1E69B80D8], v13, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v14 + 8))(v18, v13);
    v73 = v21;
    v74 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    LOBYTE(v23) = v27;
    v64 = v28;
    v63 = sub_1BE050204();
    sub_1BE04E1F4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v23 & 1;
    v88 = v23 & 1;
    v85 = 0;
    v38 = (v65 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 48));
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v73) = v39;
    v74 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v69 == 1)
    {
      sub_1BE04E4F4();
      v41 = sub_1BE050224();
      sub_1BE04E1F4();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EE58) + 36)];
      *v50 = v41;
      *(v50 + 1) = v43;
      *(v50 + 2) = v45;
      *(v50 + 3) = v47;
      *(v50 + 4) = v49;
      v50[40] = 0;
      v51 = sub_1BE04FC84();
      v52 = v67;
      *&v5[*(v67 + 36)] = v51;
      sub_1BD0DE204(v5, v12, &qword_1EBD53C18);
      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v67;
    }

    (*(v66 + 56))(v12, v53, 1, v52);
    v54 = v68;
    sub_1BD0DE19C(v12, v68, &qword_1EBD53C20);
    *&v69 = v24;
    *(&v69 + 1) = v26;
    LOBYTE(v70) = v37;
    *(&v70 + 1) = *v87;
    DWORD1(v70) = *&v87[3];
    LODWORD(v67) = v37;
    v66 = v26;
    v55 = v24;
    v56 = v64;
    *(&v70 + 1) = v64;
    v57 = v63;
    LOBYTE(v71) = v63;
    *(&v71 + 1) = *v86;
    DWORD1(v71) = *&v86[3];
    *(&v71 + 1) = v30;
    *&v72[0] = v32;
    *(&v72[0] + 1) = v34;
    *&v72[1] = v36;
    BYTE8(v72[1]) = 0;
    v58 = v69;
    v59 = v70;
    *(a2 + 57) = *(v72 + 9);
    v60 = v72[0];
    a2[2] = v71;
    a2[3] = v60;
    *a2 = v58;
    a2[1] = v59;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C28);
    sub_1BD0DE19C(v54, a2 + *(v61 + 48), &qword_1EBD53C20);
    sub_1BD0DE19C(&v69, &v73, &unk_1EBD3DF90);
    sub_1BD0DE53C(v12, &qword_1EBD53C20);
    sub_1BD0DE53C(v54, &qword_1EBD53C20);
    v73 = v55;
    v74 = v66;
    v75 = v67;
    *v76 = *v87;
    *&v76[3] = *&v87[3];
    v77 = v56;
    v78 = v57;
    *v79 = *v86;
    *&v79[3] = *&v86[3];
    v80 = v30;
    v81 = v32;
    v82 = v34;
    v83 = v36;
    v84 = 0;
    return sub_1BD0DE53C(&v73, &unk_1EBD3DF90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7C0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v49 = a2;
  v46 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v52 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v2);
  v53 = v3;
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - v6;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v47 = *(v17 - 8);
  v48 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v56 = &v45 - v20;
  v21 = *(v9 + 104);
  v51 = *MEMORY[0x1E69B80D8];
  v50 = v21;
  v21(v16, v19);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    v45 = *(v9 + 8);
    v45(v16, v8);
    v57 = v24;
    v58 = v26;
    sub_1BE04E194();
    v27 = sub_1BE04E1D4();
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
    v29 = v54;
    v28 = v55;
    sub_1BD7C2E04(v55, v54);
    v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v31 = swift_allocObject();
    sub_1BD7C2E68(v29, v31 + v30);
    sub_1BD0DDEBC();
    sub_1BE051724();
    v50(v12, v51, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v32 = result;
      v33 = sub_1BE04B6F4();
      v35 = v34;

      v45(v12, v8);
      v61 = v33;
      v62 = v35;
      v36 = v28 + *(v46 + 32);
      v37 = *v36;
      v38 = *(v36 + 8);
      v59 = v37;
      v60 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      v39 = sub_1BE0516C4();
      MEMORY[0x1EEE9AC00](v39, v40);
      MEMORY[0x1EEE9AC00](v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
      sub_1BD170E70();
      v43 = v48;
      v44 = v56;
      sub_1BE050C64();

      return (*(v47 + 8))(v44, v43);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7C0C2C()
{
  type metadata accessor for AutoFillFPANCardDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

id sub_1BD7C0CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
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
  (*(v11 + 104))(v15, *MEMORY[0x1E69B80D8], v10, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v11 + 8))(v15, v10);
    v24[2] = v18;
    v24[3] = v20;
    sub_1BE04E194();
    v21 = sub_1BE04E1D4();
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    sub_1BD7C2E04(v24[0], v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v23 = swift_allocObject();
    sub_1BD7C2E68(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD7C0F64()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7BCFCC(1, 0, 0, 0);
  sub_1BD7B8EFC(v4);
  sub_1BE04E654();
  return (*(v1 + 8))(v4, v0);
}

id sub_1BD7C1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  v13 = *(a1 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 52));
  if (v13 && [v13 cardIsInWallet])
  {
    (*(v5 + 104))(v12, *MEMORY[0x1E69B80D8], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v18 = v17;

      (*(v5 + 8))(v12, v4);
      *&v37 = v16;
      *(&v37 + 1) = v18;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v33 = v19;
      v34 = v20 & 1;
      v35 = v21;
      v36 = 0;
LABEL_7:
      result = sub_1BE04F9A4();
      v29 = v38;
      v30 = v39;
      *a2 = v37;
      *(a2 + 16) = v29;
      *(a2 + 32) = v30;
      return result;
    }
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v22 = result;
      v23 = sub_1BE04B6F4();
      v25 = v24;

      (*(v5 + 8))(v8, v4);
      *&v37 = v23;
      *(&v37 + 1) = v25;
      sub_1BD0DDEBC();
      v32 = sub_1BE0506C4();
      v33 = v27;
      v34 = v26 & 1;
      v35 = v28;
      v36 = 1;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD7C12EC(uint64_t a1)
{
  v2 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = *(a1 + *(v6 + 28));
  if (v7)
  {
    v8 = *(v7 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0C63C0;
    sub_1BD0E5E8C(0, &qword_1EBD3D270);
    v10 = v8;
    *(inited + 32) = sub_1BE053054();
    *(inited + 40) = sub_1BE053054();
    *(inited + 48) = sub_1BE053054();
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD22CFF8();
    v11 = sub_1BE052A24();

    sub_1BD7C2E04(a1, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    sub_1BD7C2E68(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    aBlock[4] = sub_1BD7C37F0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3293A4;
    aBlock[3] = &block_descriptor_68;
    v14 = _Block_copy(aBlock);

    [v10 activeFPANCardsWithOptions:7 allowedCardTypes:v11 sortType:1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD7C15B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  if (a1)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v23 = v9;
    sub_1BE048C84();
    v22 = sub_1BE052D54();
    sub_1BD7C2E04(a2, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v18 = swift_allocObject();
    sub_1BD7C2E68(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *(v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    aBlock[4] = sub_1BD7C3860;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_74_0;
    v19 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD7B8DE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    sub_1BE053664();
    v20 = v22;
    MEMORY[0x1BFB3FDF0](0, v12, v8, v19);
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v24 + 8))(v12, v23);
  }
}

uint64_t sub_1BD7C1950(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048C84();
    return sub_1BE04D8C4();
  }

  else
  {
    type metadata accessor for DescriptorsModel(0);
    sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD7C1A40()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v97 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v88 - v10;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v2[7];
  v103 = &v88 - v15;
  v95 = v14;
  v96 = v2 + 7;
  v14(v13);
  v92 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v93 = v0;
  type metadata accessor for SetupFieldsModel(0);
  sub_1BD7B8DE0(&qword_1EBD53A60, type metadata accessor for SetupFieldsModel);
  sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v16 = v108;
  if (v108 >> 62)
  {
    goto LABEL_60;
  }

  v17 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v100 = v2;
  v101 = v1;
  while (v17)
  {
    v99 = 0;
    v102 = 0;
    v106 = 0;
    v1 = 0;
    v90 = 0;
    v98 = 0;
    v104 = 0;
    v107 = 0;
    v18 = 0;
    v19 = v16 & 0xC000000000000001;
    v20 = v16 & 0xFFFFFFFFFFFFFF8;
    v21 = v16 + 32;
    v91 = (v100 + 4);
    v105 = v17;
    while (1)
    {
      if (v19)
      {
        v22 = MEMORY[0x1BFB40900](v18, v16);
      }

      else
      {
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_59;
        }

        v22 = *(v21 + 8 * v18);
      }

      v2 = v22;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = [v24 currentValue];
        if (v25)
        {
          v111 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820);
          if (swift_dynamicCast())
          {
            v26 = v21;
            v27 = v16;
            v28 = v20;
            v29 = v1;
            v30 = v108;
            if ((*(&v108 + 1) & 0x2000000000000000) != 0)
            {
              v31 = HIBYTE(*(&v108 + 1)) & 0xFLL;
            }

            else
            {
              v31 = v108 & 0xFFFFFFFFFFFFLL;
            }

            if (v31)
            {

              v111 = 0;
              v112 = 0xE000000000000000;
              v108 = v30;
              v109 = 0;
              v110 = v31;
              v32 = sub_1BE052594();
              if (v33)
              {
                v34 = v32;
                v35 = v33;
                do
                {
                  if ((v34 != 32 || v35 != 0xE100000000000000) && (sub_1BE053B84() & 1) == 0)
                  {
                    MEMORY[0x1BFB3F600](v34, v35);
                  }

                  v34 = sub_1BE052594();
                  v35 = v36;
                }

                while (v36);
                v104 = v111;
                v107 = v112;
              }

              else
              {
                v107 = 0xE000000000000000;
                v104 = 0;
              }
            }

            else
            {
            }

            v1 = v29;
            v20 = v28;
            v16 = v27;
            v21 = v26;
            v17 = v105;
            goto LABEL_5;
          }
        }
      }

      else
      {
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;

          v39 = [v38 currentValue];

          if (v39)
          {
            v111 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820);
            v40 = swift_dynamicCast();
            v41 = v108;
            if (!v40)
            {
              v41 = 0;
            }

            v106 = v41;
            if (v40)
            {
              v1 = *(&v108 + 1);
            }

            else
            {
              v1 = 0;
            }
          }

          else
          {
            v106 = 0;
            v1 = 0;
          }

          goto LABEL_5;
        }

        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = [v42 currentValue];
          if (v43)
          {
            v44 = v97;
            v45 = v43;
            sub_1BE04AEE4();

            v46 = v103;
            sub_1BD0DE53C(v103, &unk_1EBD39970);
            v47 = v44;
            v48 = v101;
            (*v91)(v46, v47, v101);
            (v95)(v46, 0, 1, v48);
            goto LABEL_5;
          }
        }

        else
        {
          objc_opt_self();
          v49 = swift_dynamicCastObjCClass();
          if (v49)
          {
            v50 = v49;

            v51 = [v50 currentValue];

            if (v51)
            {
              v111 = v51;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820);
              v52 = swift_dynamicCast();
              v53 = v108;
              if (!v52)
              {
                v53 = 0;
              }

              v99 = v53;
              if (v52)
              {
                v54 = *(&v108 + 1);
              }

              else
              {
                v54 = 0;
              }

              v102 = v54;
            }

            else
            {
              v99 = 0;
              v102 = 0;
            }

            goto LABEL_5;
          }

          objc_opt_self();
          v55 = swift_dynamicCastObjCClass();
          if (v55)
          {
            v56 = [v55 currentValue];

            if (v56)
            {
              v111 = v56;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E820);
              if (swift_dynamicCast())
              {
                v57 = v108;
                v58 = HIBYTE(*(&v108 + 1)) & 0xFLL;
                if ((*(&v108 + 1) & 0x2000000000000000) == 0)
                {
                  v58 = v108 & 0xFFFFFFFFFFFFLL;
                }

                if (v58)
                {

                  v98 = v57 >> 64;
                  v90 = v57;
                }

                else
                {
                }
              }
            }

            goto LABEL_5;
          }
        }
      }

LABEL_5:
      if (v18 == v17)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v17 = sub_1BE053704();
    v100 = v2;
    v101 = v1;
  }

  v99 = 0;
  v102 = 0;
  v106 = 0;
  v1 = 0;
  v90 = 0;
  v98 = 0;
  v104 = 0;
  v107 = 0;
LABEL_62:

  v59 = v92;
  v60 = v93;
  v108 = *(v93 + *(v92 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53B10);
  sub_1BE0516A4();
  v61 = v111;
  v62 = v94;
  if (v111)
  {
    v63 = *(v60 + *(v59 + 52));
    if (v63)
    {
      if (v107)
      {
        v64 = v63;
      }

      else
      {
        v67 = v63;
        v68 = [v61 primaryAccountNumber];
        sub_1BE052434();
      }

      v65 = v89;
      v69 = sub_1BE052404();

      [v61 setPrimaryAccountNumber_];

      if (v1)
      {
        v70 = sub_1BE052404();
      }

      else
      {
        v70 = 0;
      }

      v72 = v100;
      v71 = v101;
      v73 = v98;
      v74 = v102;
      [v61 setCardholderName_];

      sub_1BD0DE19C(v103, v65, &unk_1EBD39970);
      if ((v72[6])(v65, 1, v71) == 1)
      {
        v75 = 0;
      }

      else
      {
        v75 = sub_1BE04AE64();
        (v72[1])(v65, v71);
      }

      [v61 setExpirationDate_];

      if (v74)
      {
        v76 = sub_1BE052404();
      }

      else
      {
        v76 = 0;
      }

      [v61 setSecurityCode_];

      if (v73)
      {
        v77 = sub_1BE052404();

        [v63 setCardNickname_];

        sub_1BD0DE53C(v103, &unk_1EBD39970);
      }

      else
      {
        sub_1BD0DE53C(v103, &unk_1EBD39970);
      }

      return 0;
    }
  }

  if (!v107)
  {
    sub_1BD0DE53C(v103, &unk_1EBD39970);

    return 0;
  }

  sub_1BD0DE19C(v103, v62, &unk_1EBD39970);
  if (v1)
  {
    v66 = sub_1BE052404();
  }

  else
  {
    v66 = 0;
  }

  v79 = sub_1BE052404();

  v81 = v100;
  v80 = v101;
  if ((v100[6])(v62, 1, v101) == 1)
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_1BE04AE64();
    (v81[1])(v62, v80);
  }

  if (v102)
  {
    v83 = sub_1BE052404();
  }

  else
  {
    v83 = 0;
  }

  v84 = [objc_allocWithZone(MEMORY[0x1E69B8670]) initWithCardholderName:v66 pan:v79 expirationDate:v82 securityCode:v83 billingAddress:0];

  v85 = v84;
  v86 = sub_1BE052404();

  v87 = [objc_opt_self() descriptorWithCardNickname:v86 credential:v85];

  sub_1BD0DE53C(v103, &unk_1EBD39970);
  return v87;
}

uint64_t sub_1BD7C2604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v40 = a3;
  v41 = a5;
  v42 = a9;
  v48 = sub_1BE051F54();
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v12);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v21);
  v22 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v46 = sub_1BE052D54();
  sub_1BD7C2E04(a4, v22);
  v23 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v24 = (v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = v40;
  sub_1BD7C2E68(v22, v26 + v23);
  v27 = v41;
  *(v26 + v24) = v41;
  v29 = v43;
  v28 = v44;
  *(v26 + v25) = v43;
  v30 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = v45;
  *v30 = v28;
  *(v30 + 1) = v31;
  v30[16] = v42;
  aBlock[4] = sub_1BD7C34BC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_48_2;
  v32 = _Block_copy(aBlock);
  v33 = a1;
  sub_1BD0D44B8(a2);
  v34 = v27;
  v35 = v29;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD7B8DE0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v37 = v47;
  v36 = v48;
  sub_1BE053664();
  v38 = v46;
  MEMORY[0x1BFB3FDF0](0, v17, v37, v32);
  _Block_release(v32);

  (*(v51 + 8))(v37, v36);
  return (*(v49 + 8))(v17, v50);
}

void sub_1BD7C2A14(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ([a1 savableFields] == 7)
  {
    if (a2)
    {
      sub_1BE048964();
      a2(0);
      sub_1BD1107D8(a2);
    }

    v16 = a4 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20);
    if (*v16)
    {
      v17 = *(*v16 + 16);
      v18 = swift_allocObject();
      *(v18 + 16) = a7;
      *(v18 + 24) = a8;
      v34 = sub_1BD267328;
      v35 = v18;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1BD03E30C;
      v33 = &block_descriptor_60_2;
      v19 = _Block_copy(&v30);
      v20 = v17;
      sub_1BE048964();

      [v20 insertFPANCardWithDescriptor:a5 credential:a6 completion:v19];
      _Block_release(v19);

      return;
    }

    goto LABEL_19;
  }

  if (a9)
  {
    if (a2)
    {
      sub_1BE048964();
      a2(0);
      sub_1BD1107D8(a2);
    }

    v21 = [a1 matchedCard];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 identifier];
    }

    else
    {
      v23 = [a5 identifier];
    }

    sub_1BE052434();

    v24 = sub_1BE052404();

    [a5 setIdentifier_];

    v25 = a4 + *(type metadata accessor for AutoFillFPANCardDetailsView(0) + 20);
    if (!*v25)
    {
LABEL_19:
      type metadata accessor for DescriptorsModel(0);
      sub_1BD7B8DE0(&qword_1EBD420B0, type metadata accessor for DescriptorsModel);
      sub_1BE04EEB4();
      __break(1u);
      return;
    }

    v26 = *(*v25 + 16);
    v27 = swift_allocObject();
    *(v27 + 16) = a7;
    *(v27 + 24) = a8;
    v34 = sub_1BD214190;
    v35 = v27;
    v30 = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1BD03E30C;
    v33 = &block_descriptor_54_1;
    v28 = _Block_copy(&v30);
    sub_1BE048964();
    v29 = v26;

    [v29 updateFPANCardWithDescriptor:a5 credential:a6 completion:v28];
    _Block_release(v28);
  }

  else if (a2)
  {
    sub_1BE048964();
    a2(1);

    sub_1BD1107D8(a2);
  }
}

uint64_t sub_1BD7C2E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C2E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C2ECC()
{
  v2 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD7BAD6C(v0 + v3);
}

unint64_t sub_1BD7C2FA0()
{
  result = qword_1EBD53AF8;
  if (!qword_1EBD53AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AB0);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53AA0);
    sub_1BD0DE4F4(&qword_1EBD53AE0, &qword_1EBD53AA0);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD7B8DE0(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD53B00, &qword_1EBD53AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53AF8);
  }

  return result;
}

uint64_t objectdestroyTm_93()
{
  v1 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BD7C33FC(void *a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BD7C2604(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1BD7C34BC()
{
  v1 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1BD7C2A14(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1BD7C3570@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v5 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  *a1 = v5;
  *(a1 + 8) = 1;
  *(a1 + 16) = sub_1BD289278;
  *(a1 + 24) = v4;
  *(a1 + 32) = 1;
  v6 = v5;

  return sub_1BE048964();
}

uint64_t sub_1BD7C3600@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD7C3680()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD7C36F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD7C3774()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD7C37F0(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD7C15B0(a1, v4);
}

uint64_t sub_1BD7C3860()
{
  v1 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD7C1950(v2);
}

uint64_t sub_1BD7C3914(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD7C39C0()
{
  result = qword_1EBD53B88;
  if (!qword_1EBD53B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53B80);
    sub_1BD7C3A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53B88);
  }

  return result;
}

unint64_t sub_1BD7C3A44()
{
  result = qword_1EBD53B90;
  if (!qword_1EBD53B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53B98);
    sub_1BD7C3AFC();
    sub_1BD0DE4F4(&qword_1EBD53BB8, &qword_1EBD53BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53B90);
  }

  return result;
}

unint64_t sub_1BD7C3AFC()
{
  result = qword_1EBD53BA0;
  if (!qword_1EBD53BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53BA8);
    sub_1BD7C3B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BA0);
  }

  return result;
}

unint64_t sub_1BD7C3B80()
{
  result = qword_1EBD53BB0;
  if (!qword_1EBD53BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BB0);
  }

  return result;
}

unint64_t sub_1BD7C3BE4()
{
  result = qword_1EBD53BE8;
  if (!qword_1EBD53BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53BE0);
    sub_1BD0DE4F4(&qword_1EBD53BF0, &qword_1EBD53BF8);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53BE8);
  }

  return result;
}

uint64_t sub_1BD7C3CE8(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD7BF974(a1, v4);
}

uint64_t sub_1BD7C3D70(uint64_t a1)
{
  v4 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD7BF498(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_125Tm()
{
  v1 = type metadata accessor for AutoFillFPANCardDetailsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1BD0D45CC();

  return swift_deallocObject();
}

uint64_t sub_1BD7C402C(uint64_t a1)
{
  v4 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD7BFB2C(a1, v6, v7, v1 + v5);
}

id sub_1BD7C415C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for AutoFillFPANCardDetailsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD7BE4BC(a1, v6, a2);
}

uint64_t sub_1BD7C41DC()
{
  type metadata accessor for AutoFillFPANCardDetailsView(0);
  v1 = *(v0 + 16);

  return sub_1BD7BE5D8(v1);
}

uint64_t type metadata accessor for RecurringPaymentMerchantDetailsView()
{
  result = qword_1EBD53C60;
  if (!qword_1EBD53C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD7C433C()
{
  _s8MerchantVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1463F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD7C43E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1BE04F3D4();
  v81 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MerchantOriginIconImage();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C78);
  MEMORY[0x1EEE9AC00](v12, v13);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v80 - v21;
  v22 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  v23 = *(a1 + v22[5]);
  v24 = _s8MerchantVMa(0);
  sub_1BD129504(a1 + *(v24 + 20), &v11[*(v8 + 28)]);
  v26 = *a1;
  v25 = a1[1];
  *v11 = v23;
  v27 = &v11[*(v8 + 32)];
  v83 = v26;
  *v27 = v26;
  v27[1] = v25;
  v82 = v25;
  swift_bridgeObjectRetain_n();
  v28 = sub_1BE0501C4();
  v29 = a1 + v22[6];
  v30 = *v29;
  if (v29[8] == 1)
  {
    if (v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v31 = sub_1BE050174();
    v80 = v18;
    v32 = v6;
    v33 = v3;
    v34 = v31;
    sub_1BE04CF84();

    v3 = v33;
    v35 = v81;
    v6 = v32;
    v18 = v80;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v30, 0);
    (*(v35 + 8))(v6, v3);
    if (v94)
    {
      goto LABEL_7;
    }
  }

  v36 = a1 + v22[7];
  v37 = *v36;
  if (v36[8] != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v38 = v28;
    v39 = sub_1BE050174();
    sub_1BE04CF84();

    v28 = v38;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v37, 0);
    (*(v81 + 8))(v6, v3);
  }

LABEL_7:
  sub_1BE04E1F4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1BD7C4B50(v11, v18);
  v48 = &v18[*(v12 + 36)];
  *v48 = v28;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_1BD7C4BB4(v18, v86);
  v94 = v83;
  v95 = v82;
  sub_1BD0DDEBC();
  v49 = sub_1BE0506C4();
  v51 = v50;
  v53 = v52;
  sub_1BE0503D4();
  v54 = sub_1BE0505F4();
  v56 = v55;
  v58 = v57;

  sub_1BD0DDF10(v49, v51, v53 & 1);

  sub_1BE050364();
  v59 = sub_1BE050544();
  v61 = v60;
  v63 = v62;
  sub_1BD0DDF10(v54, v56, v58 & 1);

  sub_1BE051224();
  v64 = sub_1BE050564();
  v66 = v65;
  LOBYTE(v54) = v67;
  v83 = v68;

  sub_1BD0DDF10(v59, v61, v63 & 1);

  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();
  LOBYTE(v54) = v54 & 1;
  LOBYTE(v94) = v54;
  LOBYTE(v89) = 0;
  v71 = v86;
  v72 = v85;
  sub_1BD0DE19C(v86, v85, &qword_1EBD53C78);
  v73 = v84;
  sub_1BD0DE19C(v72, v84, &qword_1EBD53C78);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C80) + 48);
  *&v89 = v64;
  v75 = v66;
  *(&v89 + 1) = v66;
  LOBYTE(v90) = v54;
  *(&v90 + 1) = *v88;
  DWORD1(v90) = *&v88[3];
  v76 = v83;
  *(&v90 + 1) = v83;
  *&v91 = KeyPath;
  BYTE8(v91) = 1;
  HIDWORD(v91) = *&v87[3];
  *(&v91 + 9) = *v87;
  *&v92 = v70;
  *(&v92 + 1) = 2;
  v93 = 0;
  *(v74 + 64) = 0;
  v77 = v90;
  *v74 = v89;
  *(v74 + 16) = v77;
  v78 = v92;
  *(v74 + 32) = v91;
  *(v74 + 48) = v78;
  sub_1BD0DE19C(&v89, &v94, &qword_1EBD391B8);
  sub_1BD0DE53C(v71, &qword_1EBD53C78);
  v94 = v64;
  v95 = v75;
  v96 = v54;
  *v97 = *v88;
  *&v97[3] = *&v88[3];
  v98 = v76;
  v99 = KeyPath;
  v100 = 1;
  *v101 = *v87;
  *&v101[3] = *&v87[3];
  v102 = v70;
  v103 = 2;
  v104 = 0;
  sub_1BD0DE53C(&v94, &qword_1EBD391B8);
  return sub_1BD0DE53C(v72, &qword_1EBD53C78);
}

uint64_t sub_1BD7C4AFC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C70);
  return sub_1BD7C43E4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BD7C4B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantOriginIconImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD7C4BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD7C4C24()
{
  result = qword_1EBD53C88;
  if (!qword_1EBD53C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53C88);
  }

  return result;
}

uint64_t sub_1BD7C4C88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v26 - v4;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v15 = sub_1BE04B2F4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();

  v21 = [v1 startDate];
  if (v21)
  {
    v22 = v21;
    sub_1BE04AEE4();

    v23 = *(v7 + 32);
    v23(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v23(v14, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1BE04AEF4();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_1BD15D69C(v5);
    }
  }

  v24 = sub_1BE04B164();
  (*(v7 + 8))(v14, v6);
  (*(v16 + 8))(v19, v15);
  return v24 & 1;
}

id sub_1BD7C4F84()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v7 = [v0 amount];
  v8 = [objc_opt_self() zero];
  v9 = sub_1BE053074();

  if ((v9 & 1) == 0)
  {
    v13 = [v1 amount];
    v14 = sub_1BE052404();
    v15 = PKFormattedCurrencyStringFromNumber();

    if (!v15)
    {
      return 0;
    }

    v12 = sub_1BE052434();

    return v12;
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
    return v12;
  }

  __break(1u);
  return result;
}

id sub_1BD7C51C0()
{
  v0 = sub_1BE04BD74();
  v112 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v108 = &v91 - v6;
  v95 = sub_1BE04AC64();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v7);
  v93 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B2D4();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v105 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04ABD4();
  v103 = *(v12 - 8);
  v104 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE04ACA4();
  v99 = *(v101 - 1);
  MEMORY[0x1EEE9AC00](v101, v15);
  v98 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1BE04AD84();
  v17 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v18);
  v96 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v113 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v91 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v109 = &v91 - v29;
  v30 = sub_1BE04AF64();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v91 - v37;
  v114 = sub_1BE04B2F4();
  v116 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v39);
  v97 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v91 - v43;
  v45 = [objc_opt_self() currentCalendar];
  sub_1BE04B1F4();

  v46 = [v110 startDate];
  v115 = v30;
  v117 = v31;
  v100 = v34;
  if (v46)
  {
    v47 = v46;
    sub_1BE04AEE4();

    v48 = v34;
    v110 = v3;
    v49 = v0;
    v50 = v17;
    v51 = v44;
    v52 = v26;
    v53 = *(v31 + 32);
    v54 = v109;
    v53(v109, v48, v30);
    (*(v31 + 56))(v54, 0, 1, v30);
    v53(v38, v54, v30);
    v26 = v52;
    v44 = v51;
    v17 = v50;
    v0 = v49;
    v3 = v110;
  }

  else
  {
    v55 = v109;
    (*(v31 + 56))(v109, 1, 1, v30);
    sub_1BE04AEF4();
    if ((*(v31 + 48))(v55, 1, v30) != 1)
    {
      sub_1BD15D69C(v55);
    }
  }

  v56 = sub_1BE04B164();
  v57 = v113;
  if ((v56 & 1) == 0)
  {
    v91 = v44;
    v92 = v0;
    v62 = v96;
    MEMORY[0x1BFB376E0]();
    v63 = v98;
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v99 + 8))(v63, v101);
    v64 = *(v17 + 8);
    v65 = v111;
    v64(v62, v111);
    v66 = v102;
    sub_1BE04ABC4();
    sub_1BE04AB64();
    v103[1](v66, v104);
    v109 = v64;
    v110 = (v17 + 8);
    v64(v57, v65);
    v67 = v97;
    sub_1BE04B2A4();
    v68 = *MEMORY[0x1E6969A68];
    v70 = v105;
    v69 = v106;
    v99 = v17;
    v71 = v106[13];
    v72 = v107;
    v71(v105, v68, v107);
    v104 = v38;
    v102 = sub_1BE04B2E4();
    v103 = v26;
    v101 = v69[1];
    (v101)(v70, v72);
    v73 = v116 + 8;
    v74 = *(v116 + 8);
    v75 = v114;
    v74(v67, v114);
    sub_1BE04B2A4();
    v71(v70, v68, v72);
    v76 = v100;
    sub_1BE04AEF4();
    v77 = sub_1BE04B2E4();
    v78 = *(v117 + 8);
    v117 += 8;
    v106 = v78;
    (v78)(v76, v115);
    (v101)(v70, v72);
    v79 = v103;
    v80 = v111;
    v107 = v74;
    v116 = v73;
    v74(v67, v75);
    if (v77 < v102)
    {
      v81 = v93;
      sub_1BE04AC44();
      v82 = v113;
      sub_1BE04ABA4();
      (*(v94 + 8))(v81, v95);
      (v109)(v79, v80);
      (*(v99 + 32))(v79, v82, v80);
    }

    sub_1BD7C6EE0();
    v83 = v104;
    sub_1BE04AF44();
    v84 = v118;
    v85 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v86 = v80;
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1BE0B69E0;
    *(v87 + 56) = MEMORY[0x1E69E6158];
    *(v87 + 64) = sub_1BD110550();
    *(v87 + 32) = v84;
    *(v87 + 40) = v85;
    v88 = v112;
    v89 = v108;
    v90 = v92;
    (*(v112 + 104))(v108, *MEMORY[0x1E69B8068], v92);
    v61 = sub_1BE04B714();

    (*(v88 + 8))(v89, v90);
    (v109)(v79, v86);
    (v106)(v83, v115);
    v107(v91, v114);
    return v61;
  }

  v58 = v112;
  (*(v112 + 104))(v3, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v60 = result;
    v61 = sub_1BE04B6F4();

    (*(v58 + 8))(v3, v0);
    (*(v117 + 8))(v38, v115);
    (*(v116 + 8))(v44, v114);
    return v61;
  }

  __break(1u);
  return result;
}

id sub_1BD7C5CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  v4 = sub_1BE04BD74();
  v79 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v72 - v13;
  v15 = sub_1BE04AF64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v72 - v26;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v72 - v31;
  v33 = [v3 endDate];
  v75 = v33;
  if (v33)
  {
    v73 = v7;
    v74 = v4;
    v34 = v33;
    sub_1BE04AEE4();

    v35 = *(v16 + 32);
    v35(v32, v27, v15);
    v36 = [v3 startDate];
    if (v36)
    {
      v37 = v36;
      sub_1BE04AEE4();

      v35(v14, v19, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      v35(v23, v14, v15);
    }

    else
    {
      (*(v16 + 56))(v14, 1, 1, v15);
      sub_1BE04AEF4();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        sub_1BD15D69C(v14);
      }
    }

    v42 = sub_1BE04AE64();
    v43 = *(v16 + 8);
    v43(v23, v15);
    v44 = sub_1BE04AE64();
    [v3 intervalUnit];
    v41 = PKDateRangeNumberOfIntervalsForUnit();

    [v3 intervalUnit];
    v45 = PKCalendarUnitIntervalString();
    v4 = v74;
    if (v45)
    {
      v46 = v45;
      v39 = sub_1BE052434();
      v40 = v47;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v43(v32, v15);
    v38 = v41;
    v7 = v73;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 1;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  v48 = [v3 amount];
  v49 = [objc_opt_self() zero];
  v50 = sub_1BE053074();

  if ((v50 & 1) == 0)
  {

    v55 = sub_1BD7C4F84();
    v57 = v56;
    v58 = sub_1BD7C641C(1);
    v60 = v59;
    if (v57)
    {
      if (v59)
      {
        v61 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v62 = swift_allocObject();
        v63 = MEMORY[0x1E69E6530];
        *(v62 + 16) = xmmword_1BE0B98D0;
        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = v63;
        *(v62 + 64) = v64;
        *(v62 + 32) = v41;
        v65 = MEMORY[0x1E69E6158];
        *(v62 + 96) = MEMORY[0x1E69E6158];
        v66 = sub_1BD110550();
        *(v62 + 72) = v55;
        *(v62 + 80) = v57;
        *(v62 + 136) = v65;
        *(v62 + 144) = v66;
        *(v62 + 104) = v66;
        *(v62 + 112) = v61;
        *(v62 + 120) = v60;
        v67 = v79;
        v68 = v76;
        (*(v79 + 104))(v76, *MEMORY[0x1E69B8068], v4);
        v55 = sub_1BE04B714();

        (*(v67 + 8))(v68, v4);
      }
    }

    else
    {

      return 0;
    }

    return v55;
  }

  if (v40)
  {
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BE0B6CA0;
      v52 = MEMORY[0x1E69E65A8];
      *(v51 + 56) = MEMORY[0x1E69E6530];
      *(v51 + 64) = v52;
      *(v51 + 32) = v38;
      *(v51 + 96) = MEMORY[0x1E69E6158];
      *(v51 + 104) = sub_1BD110550();
      *(v51 + 72) = v39;
      *(v51 + 80) = v40;
      v53 = v79;
      v54 = v76;
      (*(v79 + 104))(v76, *MEMORY[0x1E69B8068], v4);
      v55 = sub_1BE04B714();

      (*(v53 + 8))(v54, v4);
      return v55;
    }
  }

  v69 = v79;
  (*(v79 + 104))(v7, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v71 = result;
    v55 = sub_1BE04B6F4();

    (*(v69 + 8))(v7, v4);
    return v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD7C641C(int a1)
{
  v2 = v1;
  v121 = a1;
  v3 = sub_1BE04BD74();
  v123 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v122 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v116 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v111 - v15;
  v17 = sub_1BE04AF64();
  v127 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v113 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v115 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v125 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v126 = &v111 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v128 = &v111 - v40;
  v41 = [v1 amount];
  v42 = [objc_opt_self() zero];
  sub_1BD0E5E8C(0, &qword_1EBD38840);
  v43 = sub_1BE053074();

  if ((v43 & 1) != 0 || ([v2 intervalCount], objc_msgSend(v2, sel_intervalUnit), (v44 = PKLocalizedIntervalTermString()) == 0))
  {
    v46 = 0;
    v48 = 0;
  }

  else
  {
    v45 = v44;
    v46 = sub_1BE052434();
    v48 = v47;
  }

  v49 = [v2 endDate];
  if (v49)
  {
    v119 = v12;
    v112 = v3;
    v50 = v49;
    sub_1BE04AEE4();

    v51 = v127;
    v52 = v36;
    v53 = *(v127 + 32);
    v53(v128, v52, v17);
    v54 = [v2 startDate];
    v114 = v53;
    v111 = v46;
    v120 = v48;
    if (v54)
    {
      v55 = v126;
      v56 = v54;
      sub_1BE04AEE4();

      v53(v16, v55, v17);
      v124 = *(v51 + 56);
      v124(v16, 0, 1, v17);
      v53(v32, v16, v17);
    }

    else
    {
      v124 = *(v51 + 56);
      v124(v16, 1, 1, v17);
      sub_1BE04AEF4();
      if ((*(v51 + 48))(v16, 1, v17) != 1)
      {
        sub_1BD15D69C(v16);
      }
    }

    v57 = sub_1BE04AE64();
    v58 = *(v51 + 8);
    v58(v32, v17);
    v59 = sub_1BE04AE64();
    [v2 intervalUnit];
    PKDateRangeNumberOfIntervalsForUnit();

    [v2 intervalUnit];
    v60 = PKCalendarUnitIntervalString();
    if (v60)
    {
      v61 = v60;
      v117 = sub_1BE052434();
      v63 = v62;
    }

    else
    {
      v117 = 0;
      v63 = 0;
    }

    v64 = v125;
    v125 = v58;
    v65 = [v2 startDate];
    v118 = v63;
    if (v65)
    {
      v66 = v126;
      v67 = v65;
      sub_1BE04AEE4();

      v68 = v119;
      v69 = v66;
      v70 = v114;
      v114(v119, v69, v17);
      v124(v68, 0, 1, v17);
      v70(v64, v68, v17);
    }

    else
    {
      v71 = v127;
      v72 = v119;
      v124(v119, 1, 1, v17);
      sub_1BE04AEF4();
      if ((*(v71 + 48))(v72, 1, v17) != 1)
      {
        sub_1BD15D69C(v72);
      }
    }

    v73 = sub_1BE04AE64();
    v74 = v125;
    (v125)(v64, v17);
    v75 = v128;
    v76 = sub_1BE04AE64();
    [v2 intervalCount];
    [v2 intervalUnit];
    v77 = PKDateRangeContainsMultipleIntervals();

    v74(v75, v17);
    if (v77)
    {
      v78 = v120;
      v79 = v118;
      if (v120)
      {
        if (!v118)
        {
          return v111;
        }

        v80 = [v2 startDate];
        if (v80)
        {
          v81 = v126;
          v82 = v80;
          sub_1BE04AEE4();

          v83 = v116;
          v84 = v114;
          v114(v116, v81, v17);
          v124(v83, 0, 1, v17);
          v85 = v115;
          v84(v115, v83, v17);
          v86 = v112;
          v87 = v125;
        }

        else
        {
          v93 = v127;
          v94 = v116;
          v124(v116, 1, 1, v17);
          v85 = v115;
          sub_1BE04AEF4();
          v95 = (*(v93 + 48))(v94, 1, v17);
          v86 = v112;
          v87 = v125;
          if (v95 != 1)
          {
            sub_1BD15D69C(v94);
          }
        }

        v96 = v78;
        v97 = sub_1BE04AE64();
        v87(v85, v17);
        v98 = [v2 endDate];
        if (v98)
        {
          v99 = v113;
          v100 = v98;
          sub_1BE04AEE4();

          v101 = sub_1BE04AE64();
          v87(v99, v17);
        }

        else
        {
          v101 = 0;
        }

        [v2 intervalUnit];
        v102 = PKDateRangeNumberOfIntervalsForUnit();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_1BE0B98D0;
        v104 = MEMORY[0x1E69E65A8];
        *(v103 + 56) = MEMORY[0x1E69E6530];
        *(v103 + 64) = v104;
        *(v103 + 32) = v102;
        v105 = MEMORY[0x1E69E6158];
        *(v103 + 96) = MEMORY[0x1E69E6158];
        v106 = sub_1BD110550();
        *(v103 + 72) = v111;
        *(v103 + 80) = v96;
        *(v103 + 136) = v105;
        *(v103 + 144) = v106;
        v107 = v117;
        *(v103 + 104) = v106;
        *(v103 + 112) = v107;
        *(v103 + 120) = v79;
        v109 = v122;
        v108 = v123;
        (*(v123 + 104))(v122, *MEMORY[0x1E69B8068], v86);
        v46 = sub_1BE04B714();

        (*(v108 + 8))(v109, v86);
        return v46;
      }
    }

    else
    {

      v79 = v118;
    }

    v88 = v117;
    if (v79)
    {
      v46 = v117;
    }

    else
    {
      v46 = 0;
    }

    if (v79 && (v121 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1BE0B69E0;
      *(v89 + 56) = MEMORY[0x1E69E6158];
      *(v89 + 64) = sub_1BD110550();
      *(v89 + 32) = v88;
      *(v89 + 40) = v79;
      v91 = v122;
      v90 = v123;
      v92 = v112;
      (*(v123 + 104))(v122, *MEMORY[0x1E69B8068], v112);
      v46 = sub_1BE04B714();

      (*(v90 + 8))(v91, v92);
    }
  }

  else if (!v48)
  {
    return 0;
  }

  return v46;
}

unint64_t sub_1BD7C6EE0()
{
  result = qword_1EBD4E940;
  if (!qword_1EBD4E940)
  {
    sub_1BE04AD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4E940);
  }

  return result;
}

uint64_t static _PKDistributedAppLauncher.launchApp(distributorBundleID:itemID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_1BE0528D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  sub_1BE048C84();
  sub_1BD0D44B8(a4);
  sub_1BD122C00(0, 0, v13, &unk_1BE0F8F70, v15);
}

uint64_t sub_1BD7C7078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = sub_1BE04D214();
  v8[4] = v12;
  v8[5] = *(v12 - 8);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_1BD7C7190;

  return MEMORY[0x1EEDCCC68](a4, a5, a6, 0, 1);
}

uint64_t sub_1BD7C7190()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1BD7C731C;
  }

  else
  {
    v2 = sub_1BD7C72A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD7C72A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BD7C731C()
{
  v1 = v0[8];
  sub_1BE04D0F4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to launch app with error: %@", v6, 0xCu);
    sub_1BD1E236C(v7);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  v13 = v0[2];

  (*(v11 + 8))(v10, v12);
  v14 = v0[8];
  if (v13)
  {
    (v0[2])(0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1BD7C74A8(uint64_t a1)
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
  v11[1] = sub_1BD126968;

  return sub_1BD7C7078(a1, v4, v5, v6, v7, v8, v9, v10);
}

id _PKDistributedAppLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PKDistributedAppLauncher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _PKDistributedAppLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_94()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD7C7844(uint64_t a1)
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

  return sub_1BD7C7078(a1, v4, v5, v6, v7, v8, v9, v10);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD7C7944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD7C798C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD7C7A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CA0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  sub_1BD7C7CA4(&v21[-v10]);
  v12 = sub_1BE04F7C4();
  v22 = 1;
  sub_1BD7C86F8(a1, &v31);
  v25 = *&v32[16];
  v26[0] = *&v32[32];
  *(v26 + 10) = *&v32[42];
  v23 = v31;
  v24 = *v32;
  v27[2] = *&v32[16];
  v28[0] = *&v32[32];
  *(v28 + 10) = *&v32[42];
  v27[0] = v31;
  v27[1] = *v32;
  sub_1BD0DE19C(&v23, v29, &qword_1EBD53CA8);
  sub_1BD0DE53C(v27, &qword_1EBD53CA8);
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26[0];
  *&v21[65] = *(v26 + 10);
  *&v21[7] = v23;
  v13 = v22;
  sub_1BD0DE19C(v11, v7, &qword_1EBD53CA0);
  sub_1BD0DE19C(v7, a2, &qword_1EBD53CA0);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CB0) + 48);
  v29[0] = v12;
  v29[1] = 0;
  v30[0] = v13;
  *&v30[1] = *v21;
  *&v30[17] = *&v21[16];
  *&v30[33] = *&v21[32];
  v30[81] = v21[80];
  *&v30[65] = *&v21[64];
  *&v30[49] = *&v21[48];
  v15 = *v30;
  *v14 = v12;
  *(v14 + 16) = v15;
  v16 = *&v30[16];
  v17 = *&v30[32];
  v18 = *&v30[48];
  v19 = *&v30[64];
  *(v14 + 96) = *&v30[80];
  *(v14 + 64) = v18;
  *(v14 + 80) = v19;
  *(v14 + 32) = v16;
  *(v14 + 48) = v17;
  sub_1BD0DE19C(v29, &v31, &qword_1EBD53CB8);
  sub_1BD0DE53C(v11, &qword_1EBD53CA0);
  *&v32[33] = *&v21[32];
  *&v32[49] = *&v21[48];
  *&v32[65] = *&v21[64];
  *&v32[1] = *v21;
  v31 = v12;
  v32[0] = v13;
  v32[81] = v21[80];
  *&v32[17] = *&v21[16];
  sub_1BD0DE53C(&v31, &qword_1EBD53CB8);
  return sub_1BD0DE53C(v7, &qword_1EBD53CA0);
}

uint64_t sub_1BD7C7CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CC0);
  MEMORY[0x1EEE9AC00](v63, v3);
  v65 = &v56 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CC8);
  MEMORY[0x1EEE9AC00](v64, v5);
  v60 = &v56 - v6;
  v58 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v58, v7);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CD0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v9);
  v62 = &v56 - v10;
  v11 = sub_1BE051584();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CD8);
  MEMORY[0x1EEE9AC00](v61, v16);
  v18 = &v56 - v17;
  v57 = sub_1BE04F3D4();
  v56 = *(v57 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v57, v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2[8];
  if (!v23)
  {
    v80 = *(v2 + 8);
    v79 = *v2;
    if (v80 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v24 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v79, &qword_1EBD4E168);
      (*(v56 + 8))(v22, v57);
    }

    if (!PKMapsIconForMerchant())
    {
      return (*(v66 + 56))(v68, 1, 1, v67);
    }

    v23 = sub_1BE051544();
  }

  (*(v12 + 104))(v15, *MEMORY[0x1E6981630], v11, v20);
  sub_1BE048964();
  v25 = sub_1BE0515E4();
  (*(v12 + 8))(v15, v11);
  v26 = sub_1BE051D74();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  LOBYTE(v77) = 1;
  v69 = v25;
  LOWORD(v70) = 1;
  *(&v70 + 1) = v26;
  *&v71 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53CE0);
  sub_1BD7C897C();
  sub_1BE050A24();
  v75[3] = v72;
  v75[4] = v73;
  v76 = v74;
  v75[0] = v69;
  v75[1] = v70;
  v75[2] = v71;
  sub_1BD0DE53C(v75, &qword_1EBD53CE0);
  if (v2[9])
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:54.0 scale:{54.0, 1.0}];
    [v27 continuousCornerRadius];
    v29 = v28;

    v30 = *(v58 + 20);
    v31 = *MEMORY[0x1E697F468];
    v32 = sub_1BE04F684();
    v33 = v59;
    (*(*(v32 - 8) + 104))(&v59[v30], v31, v32);
    *v33 = v29;
    v33[1] = v29;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53D20);
    v35 = v60;
    sub_1BD1E4B10(v33, &v60[*(v34 + 36)]);
    sub_1BD0DE19C(v18, v35, &qword_1EBD53CD8);
    v36 = [objc_opt_self() systemGrayColor];
    v37 = sub_1BE0511C4();
    v77 = v2[2];
    v78 = *(v2 + 24);
    if (v78 != 1)
    {
      sub_1BE048964();
      sub_1BE052C44();
      v39 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v77, &qword_1EBD4E168);
      (*(v56 + 8))(v22, v57);
    }

    v38 = v62;
    sub_1BE04E3F4();
    v40 = v35 + *(v64 + 36);
    sub_1BD1E4B10(v33, v40);
    v41 = *&v69 * 0.5;
    v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890) + 68);
    sub_1BD1E4B10(v33, v42);
    *(v42 + *(sub_1BE04EDD4() + 20)) = v41;
    v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A8) + 36);
    v44 = v70;
    *v43 = v69;
    *(v43 + 16) = v44;
    *(v43 + 32) = v71;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B0);
    *(v42 + *(v45 + 52)) = v37;
    *(v42 + *(v45 + 56)) = 256;
    v46 = sub_1BE051CD4();
    v48 = v47;
    v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B8) + 36));
    *v49 = v46;
    v49[1] = v48;
    v50 = sub_1BE051CD4();
    v52 = v51;
    v53 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C8) + 36));
    *v53 = v50;
    v53[1] = v52;
    sub_1BD0DE19C(v35, v65, &qword_1EBD53CC8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C8AC0();
    sub_1BD7C8C30();
    sub_1BE04F9A4();

    sub_1BD0DE53C(v35, &qword_1EBD53CC8);
    sub_1BD1E4B74(v33);
  }

  else
  {
    sub_1BD0DE19C(v18, v65, &qword_1EBD53CD8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7C8AC0();
    sub_1BD7C8C30();
    v38 = v62;
    sub_1BE04F9A4();
  }

  sub_1BD0DE53C(v18, &qword_1EBD53CD8);
  v54 = v68;
  sub_1BD0B663C(v38, v68);
  return (*(v66 + 56))(v54, 0, 1, v67);
}

uint64_t sub_1BD7C86F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  if (*(a1 + 56))
  {
    v28 = v4;
    sub_1BE048C84();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v29 = v7;
    v14 = v13;
    sub_1BE04FC94();
    v15 = sub_1BE050574();
    v17 = v16;
    v30 = v5;
    v18 = v9;
    v20 = v19;
    v22 = v21;
    v23 = v14 & 1;
    v7 = v29;
    sub_1BD0DDF10(v10, v12, v23);

    v24 = v20 & 1;
    v9 = v18;
    v5 = v30;
    sub_1BD0D7F18(v15, v17, v24);
    sub_1BE048C84();
    v4 = v28;
    v25 = 256;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v24 = 0;
    v22 = 0;
    v25 = 0;
  }

  v26 = v4 & 1;
  v31 = v4 & 1;
  sub_1BD0D7F18(v5, v7, v4 & 1);
  sub_1BE048C84();
  sub_1BD1969AC(v15, v17, v24, v22);
  sub_1BD1969F0(v15, v17, v24, v22);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v31;
  *(a2 + 24) = v9;
  *(a2 + 32) = 256;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v24;
  *(a2 + 64) = v22;
  *(a2 + 72) = v25;
  sub_1BD1969F0(v15, v17, v24, v22);
  sub_1BD0DDF10(v5, v7, v26);
}

uint64_t sub_1BD7C8908@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 57);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53C98);
  return sub_1BD7C7A0C(v7, a1 + *(v5 + 44));
}

unint64_t sub_1BD7C897C()
{
  result = qword_1EBD53CE8;
  if (!qword_1EBD53CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CE0);
    sub_1BD7C8A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53CE8);
  }

  return result;
}

unint64_t sub_1BD7C8A08()
{
  result = qword_1EBD53CF0;
  if (!qword_1EBD53CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CF8);
    sub_1BD223C50();
    sub_1BD0DE4F4(&qword_1EBD53D00, &qword_1EBD53D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53CF0);
  }

  return result;
}

unint64_t sub_1BD7C8AC0()
{
  result = qword_1EBD53D10;
  if (!qword_1EBD53D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CC8);
    sub_1BD7C8B78();
    sub_1BD0DE4F4(&qword_1EBD4B8E8, &qword_1EBD4B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D10);
  }

  return result;
}

unint64_t sub_1BD7C8B78()
{
  result = qword_1EBD53D18;
  if (!qword_1EBD53D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53D20);
    sub_1BD7C8C30();
    sub_1BD0DE4F4(&qword_1EBD53D30, &qword_1EBD53D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D18);
  }

  return result;
}

unint64_t sub_1BD7C8C30()
{
  result = qword_1EBD53D28;
  if (!qword_1EBD53D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53CD8);
    sub_1BD7C897C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53D28);
  }

  return result;
}

void sub_1BD7C8CC4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1BD238A58(319, &qword_1EBD502A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD7C8DE4(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v19 = ((((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v16 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (v24)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v19];
      if (a1[v19])
      {
LABEL_25:
        v25 = (v24 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        v33 = v16 + (v26 | v25);
        return (v33 + 1);
      }
    }
  }

  if (v7 == v16)
  {
    v27 = *(v5 + 48);

    return v27(a1, v7);
  }

  v29 = &a1[v17] & ~v13;
  if (v9 == v16)
  {
    v30 = *(v8 + 48);

    return v30(v29);
  }

  v31 = (v29 + v14 + v15) & ~v15;
  if (v12 != v16)
  {
    v34 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v34 >= 2)
    {
      v33 = (v34 + 2147483646) & 0x7FFFFFFF;
      return (v33 + 1);
    }

    return 0;
  }

  v32 = *(v11 + 48);

  return v32(v31, v12, v6);
}

void sub_1BD7C90AC(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = a4[3];
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0xFE)
  {
    v19 = 254;
  }

  v20 = v18 + 7;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 != v19)
  {
    v29 = &a1[v14 + v15] & ~v15;
    if (v10 == v19)
    {
      v30 = *(v9 + 56);
    }

    else
    {
      v29 = (v29 + v16 + v17) & ~v17;
      if (v13 != v19)
      {
        *(((v20 + v29) & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
        return;
      }

      v30 = *(v12 + 56);
    }

    v30(v29);
    return;
  }

  v28 = *(v6 + 56);

  v28(a1);
}

uint64_t sub_1BD7C944C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v12, v9);
  sub_1BD7C9598(v11, v13, a2, 0x4020000000000000, 0, 1, a3, a4, MEMORY[0x1E6981E70]);
  return (*(v8 + 8))(a1, a3);
}

uint64_t sub_1BD7C9598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = type metadata accessor for SheetSection();
  v16 = a8 + v15[21];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a8 + v15[22];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  a3();
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = (*(*(a9 - 8) + 32))(a8 + v15[17], a2, a9);
  v19 = a8 + v15[19];
  *v19 = a4;
  *(v19 + 8) = a5 & 1;
  *(a8 + v15[20]) = a6;
  return result;
}

uint64_t sub_1BD7C96FC@<X0>(uint64_t a1@<X8>)
{
  if (sub_1BE051C54())
  {
    v2 = sub_1BE0505C4();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
  }

  else
  {
    v7 = *MEMORY[0x1E6980FD8];
    v8 = sub_1BE0505C4();
    v10 = *(v8 - 8);
    (*(v10 + 104))(a1, v7, v8);
    v3 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

uint64_t sub_1BD7C9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v18 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386C0);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49190);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE0500D4();
  sub_1BE04EBD4();
  sub_1BE051994();
  v4 = *(a1 + 56);
  v27 = *(a1 + 32);
  v3 = v27;
  v28 = v4;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  v5 = *(a1 + 24);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  sub_1BE04F7C4();
  v21 = v18;
  v22 = v5;
  v23 = v3;
  v24 = *(a1 + 40);
  v25 = v4;
  v26 = v19;
  sub_1BE051844();
  swift_getWitnessTable();
  sub_1BD147308(v10);
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1BD147308(v14);
  return (v15)(v14, v6);
}

uint64_t sub_1BD7C9BD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v147 = a6;
  v121 = a5;
  v142 = a4;
  v143 = a3;
  v144 = a1;
  v138 = a8;
  v129 = sub_1BE04EBD4();
  v134 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v11);
  v128 = &v108 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49190);
  v130 = sub_1BE04EBD4();
  v135 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v13);
  v126 = &v108 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD491A0);
  v131 = sub_1BE04EBD4();
  v137 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v15);
  v127 = &v108 - v16;
  sub_1BE0500D4();
  v133 = sub_1BE04EBD4();
  v136 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v17);
  v146 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = &v108 - v21;
  sub_1BE051994();
  v155 = a4;
  v156 = a7;
  v22 = a7;
  v116 = a7;
  v125 = MEMORY[0x1E69BCB48];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1BE051E34();
  swift_getWitnessTable();
  v122 = sub_1BE051854();
  v123 = sub_1BE04EBD4();
  v141 = sub_1BE04F9B4();
  v124 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v23);
  v149 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v145 = &v108 - v27;
  v28 = sub_1BE04F6E4();
  v119 = *(v28 - 8);
  v120 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v118 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v108 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD386C0);
  v35 = a2;
  v36 = sub_1BE04EBD4();
  v111 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v108 - v38;
  v40 = sub_1BE04EBD4();
  v117 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v108 - v42;
  v44 = sub_1BE04EBD4();
  v113 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v108 = &v108 - v46;
  v112 = sub_1BE04EBD4();
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v112);
  v109 = &v108 - v47;
  v48 = sub_1BE04EBD4();
  v49 = *(v48 - 8);
  v139 = v48;
  v140 = v49;
  MEMORY[0x1EEE9AC00](v48, v50);
  v110 = &v108 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v148 = &v108 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v150 = &v108 - v57;
  v155 = v35;
  v156 = v143;
  v58 = v121;
  v157 = v142;
  v158 = v121;
  v159 = v147;
  v160 = v22;
  v115 = type metadata accessor for SheetSection();
  sub_1BD7C96FC(v34);
  sub_1BE0510D4();
  sub_1BD7CB764(v34);
  sub_1BE050424();
  v59 = sub_1BD3E0B1C(&unk_1EBD51290, &qword_1EBD386C0);
  v154[23] = v58;
  v154[24] = v59;
  WitnessTable = swift_getWitnessTable();
  sub_1BE050EB4();

  (*(v111 + 8))(v39, v36);
  sub_1BE051234();
  v121 = sub_1BD3E0B1C(&qword_1EBD38BC8, &unk_1EBD49190);
  v154[21] = WitnessTable;
  v154[22] = v121;
  v61 = swift_getWitnessTable();
  v62 = v108;
  sub_1BE050B44();

  (*(v117 + 8))(v43, v40);
  sub_1BE0501C4();
  v117 = sub_1BD3E0B1C(&qword_1EBD366E0, &unk_1EBD491A0);
  v154[19] = v61;
  v154[20] = v117;
  v63 = swift_getWitnessTable();
  v64 = v109;
  sub_1BE051014();
  (*(v113 + 8))(v62, v44);
  v65 = v118;
  sub_1BE04F6D4();
  v66 = MEMORY[0x1E697E5D8];
  v154[17] = v63;
  v154[18] = MEMORY[0x1E697E5D8];
  v67 = v112;
  v68 = swift_getWitnessTable();
  v69 = v110;
  sub_1BE050DA4();
  v119[1](v65, v120);
  (*(v114 + 8))(v64, v67);
  sub_1BE052434();
  v70 = v148;
  v71 = v139;
  sub_1BE04EBB4();

  v72 = v140 + 8;
  v73 = *(v140 + 8);
  (v73)(v69, v71);
  v119 = v73;
  v120 = v72;
  v114 = sub_1BD7CB800(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v154[15] = v68;
  v154[16] = v114;
  v118 = swift_getWitnessTable();
  sub_1BD147308(v70);
  (v73)(v70, v71);
  v74 = v149;
  sub_1BD7CAAD0(v115, v149);
  v75 = swift_getWitnessTable();
  v155 = v142;
  v156 = v116;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_1BD0FEBBC();
  v154[13] = OpaqueTypeConformance2;
  v154[14] = v77;
  v78 = swift_getWitnessTable();
  v154[11] = v75;
  v154[12] = v78;
  v79 = v141;
  v123 = swift_getWitnessTable();
  sub_1BD147308(v74);
  v80 = v124;
  v81 = *(v124 + 8);
  v125 = v124 + 8;
  v142 = v81;
  (v81)(v74, v79);
  sub_1BE0501C4();
  v82 = v128;
  v83 = v147;
  sub_1BE051014();
  sub_1BE050454();
  v154[9] = v83;
  v154[10] = v66;
  v84 = v129;
  v85 = swift_getWitnessTable();
  v86 = v126;
  sub_1BE050EB4();

  (*(v134 + 8))(v82, v84);
  sub_1BE051234();
  v154[7] = v85;
  v154[8] = v121;
  v87 = v130;
  v88 = swift_getWitnessTable();
  v89 = v127;
  sub_1BE050B44();

  (*(v135 + 8))(v86, v87);
  sub_1BE052434();
  v154[5] = v88;
  v154[6] = v117;
  v90 = v131;
  v91 = swift_getWitnessTable();
  v92 = v146;
  sub_1BE050DE4();

  (*(v137 + 8))(v89, v90);
  v154[3] = v91;
  v154[4] = v114;
  v93 = v133;
  v144 = swift_getWitnessTable();
  v94 = v132;
  v95 = v92;
  sub_1BD147308(v92);
  v96 = v136;
  v147 = *(v136 + 8);
  v147(v92, v93);
  v97 = v139;
  v98 = v148;
  (*(v140 + 16))(v148, v150, v139);
  v155 = v98;
  v99 = *(v80 + 16);
  v100 = v149;
  v101 = v145;
  v102 = v141;
  v99(v149, v145, v141);
  v156 = v100;
  (*(v96 + 16))(v95, v94, v93);
  v157 = v95;
  v154[0] = v97;
  v154[1] = v102;
  v103 = v102;
  v154[2] = v93;
  v151 = v118;
  v152 = v123;
  v153 = v144;
  sub_1BD13A4C4(&v155, 3uLL, v154);
  v104 = v147;
  v147(v94, v93);
  v105 = v142;
  (v142)(v101, v102);
  v106 = v119;
  (v119)(v150, v97);
  v104(v146, v93);
  (v105)(v149, v103);
  return (v106)(v148, v97);
}

uint64_t sub_1BD7CAAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a2;
  v6 = *(a1 + 56);
  v88 = *(a1 + 32);
  v5 = v88;
  v89 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = sub_1BE04EBD4();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = v64 - v13;
  sub_1BE051994();
  swift_getTupleTypeMetadata3();
  v14 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v64[1] = v14;
  v64[0] = WitnessTable;
  v16 = sub_1BE051854();
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v65 = v64 - v21;
  v22 = sub_1BE04F3D4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE04F9B4();
  v73 = *(v27 - 8);
  v74 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v72 = v64 - v29;
  v76 = OpaqueTypeMetadata2;
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v78 = v64 - v32;
  v79 = v5;
  v75 = v6;
  sub_1BE050714();
  v33 = v3 + *(a1 + 84);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    if (v34)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v35 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v34, 0);
    (*(v23 + 8))(v26, v22);
    if (v88)
    {
      goto LABEL_9;
    }
  }

  v36 = v3 + *(a1 + 88);
  v37 = *v36;
  if (*(v36 + 8) == 1)
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v38 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v37, 0);
    (*(v23 + 8))(v26, v22);
    if (v88 != 1)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  if ((sub_1BE051C54() & 1) == 0)
  {
    v49 = sub_1BE04F7C4();
    MEMORY[0x1EEE9AC00](v49, v50);
    *&v64[-8] = *(a1 + 16);
    v51 = v78;
    v52 = v79;
    v64[-6] = v79;
    *&v64[-5] = *(a1 + 40);
    v40 = v75;
    v64[-3] = v75;
    v64[-2] = v51;
    v53 = v66;
    sub_1BE051844();
    swift_getWitnessTable();
    v54 = v65;
    sub_1BD147308(v53);
    v55 = *(v67 + 8);
    v55(v53, v16);
    sub_1BD147308(v54);
    v88 = v52;
    v89 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = sub_1BD0FEBBC();
    v80 = OpaqueTypeConformance2;
    v81 = v57;
    swift_getWitnessTable();
    v48 = v72;
    sub_1BD13A700(v53, v16);
    v55(v53, v16);
    v55(v54, v16);
    v42 = v76;
    goto LABEL_12;
  }

LABEL_10:
  v39 = sub_1BE051214();
  v40 = v75;
  v88 = v79;
  v89 = v75;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v76;
  v43 = sub_1BD3805D0();
  v44 = v68;
  sub_1BD5A3420(0, v39, v42, 1.0, v43);

  v45 = sub_1BD0FEBBC();
  v86 = v41;
  v87 = v45;
  swift_getWitnessTable();
  v46 = v69;
  sub_1BD147308(v44);
  v47 = *(v70 + 8);
  v47(v44, v8);
  sub_1BD147308(v46);
  swift_getWitnessTable();
  v48 = v72;
  sub_1BD13A7F8(v44, v16, v8);
  v47(v44, v8);
  v47(v46, v8);
LABEL_12:
  v58 = swift_getWitnessTable();
  v88 = v79;
  v89 = v40;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_1BD0FEBBC();
  v84 = v59;
  v85 = v60;
  v61 = swift_getWitnessTable();
  v82 = v58;
  v83 = v61;
  v62 = v74;
  swift_getWitnessTable();
  sub_1BD147308(v48);
  (*(v73 + 8))(v48, v62);
  return (*(v71 + 8))(v78, v42);
}

uint64_t sub_1BD7CB3CC@<X0>(uint64_t a1@<X0>, char *a2@<X3>, char *a3@<X6>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a4;
  v48 = a2;
  v49 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v7);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = sub_1BE051994();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v37 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v37 - v27;
  sub_1BE051984();
  v48 = a2;
  v49 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v12;
  sub_1BD147308(v40);
  sub_1BE051984();
  v31 = *(v14 + 16);
  v39 = v20;
  v31(v20, v28, v13);
  v48 = v20;
  v32 = v42;
  (*(v43 + 16))(v42, v12, OpaqueTypeMetadata2);
  v49 = v32;
  v33 = v38;
  v31(v38, v24, v13);
  v50 = v33;
  v47[0] = v13;
  v47[1] = OpaqueTypeMetadata2;
  v47[2] = v13;
  v44 = sub_1BD7CB800(&qword_1EBD39100, MEMORY[0x1E697D6D0]);
  v45 = OpaqueTypeConformance2;
  v46 = v44;
  sub_1BD13A4C4(&v48, 3uLL, v47);
  v34 = *(v14 + 8);
  v34(v24, v13);
  v35 = *(v43 + 8);
  v35(v30, OpaqueTypeMetadata2);
  v34(v28, v13);
  v34(v33, v13);
  v35(v42, OpaqueTypeMetadata2);
  return (v34)(v39, v13);
}

uint64_t sub_1BD7CB764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD7CB800(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD7CB84C()
{
  result = qword_1EBD53DD0;
  if (!qword_1EBD53DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DD0);
  }

  return result;
}

unint64_t sub_1BD7CB8A4()
{
  result = qword_1EBD53DD8;
  if (!qword_1EBD53DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DD8);
  }

  return result;
}

uint64_t sub_1BD7CB964()
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
  __swift_allocate_value_buffer(v9, qword_1EBDAB6D0);
  __swift_project_value_buffer(v9, qword_1EBDAB6D0);
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

uint64_t sub_1BD7CBB78(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD7CBD90, 0, 0);
}

id sub_1BD7CBD90()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:PeerPaymentTransferToBankIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[17] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result account];

  if (!v14)
  {
    sub_1BD135218();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v15 = [v14 supportsTransferToBank];
  v16 = [v14 supportsInstantWithdrawal];
  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    sub_1BD135218();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();

LABEL_11:
    sub_1BD7CC4FC();

    v27 = v0[1];

    return v27();
  }

  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[3];

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v22 = sub_1BE052434();
  MEMORY[0x1BFB37400](v22);
  v23 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v23);

  MEMORY[0x1BFB37410](47, 0xE100000000000000);
  sub_1BE04A364();
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];
    sub_1BD226BBC(v0[3]);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    goto LABEL_11;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  v28 = swift_task_alloc();
  v0[18] = v28;
  *v28 = v0;
  v28[1] = sub_1BD7CC210;
  v29 = v0[6];

  return sub_1BD0D7A54(v29);
}

uint64_t sub_1BD7CC210(char a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD7CC310, 0, 0);
}

uint64_t sub_1BD7CC310()
{
  if (*(v0 + 152) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    sub_1BE048774();
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v13 + 8))(v11, v12);
    (*(v9 + 8))(v8, v10);
  }

  sub_1BD7CC4FC();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BD7CC4FC()
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
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:PeerPaymentTransferToBankIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD7CC7E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36F88 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD7CC890(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD7CBB78(a1);
}

uint64_t sub_1BD7CC928(uint64_t a1)
{
  v2 = sub_1BD15D1A0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD7CC9A8()
{
  result = qword_1EBD53DF0;
  if (!qword_1EBD53DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DF0);
  }

  return result;
}

uint64_t sub_1BD7CC9FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1BD03B254(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1BE053674();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v11 = 0x61436172656D6163;
        v12 = 0xED00006572757470;
        goto LABEL_14;
      }

      v11 = 0x6F72506F54706174;
      v13 = 0x6E6F69736976;
    }

    else
    {
      v11 = 0x6472614365707974;
      v13 = 0x7265626D754ELL;
    }

    v12 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_14:
    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_1BD03B254((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_28;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_29;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_30;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1BD20DE9C(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1BD20DE9C(result, v14, 0);
      v6 = v27;
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
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}