uint64_t sub_1BD3ADF3C()
{
  MEMORY[0x1BFB363C0]();
  *(v0 + 216) = 2;
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1BD3ADFF8;
  v2 = *(v0 + 144);

  return CredentialCenterModel.deleteCredential(credentialID:sealedBoxType:)(v2, (v0 + 216));
}

uint64_t sub_1BD3ADFF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    (*(v4[16] + 8))(v4[18], v4[15]);
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1BD3AE264;
  }

  else
  {
    v8 = v4[18];
    v9 = v4[15];
    v10 = v4[16];
    v4[24] = a1;
    v11 = *(v10 + 8);
    v4[25] = v11;
    v4[26] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1BD3AE158;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD3AE158()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);

  MEMORY[0x1BFB363C0](v5);
  v6 = sub_1BD438738(v3, v2);

  v1(v3, v4);
  if (!v6)
  {
    v7 = *(*(v0 + 80) + 32);
    *(v0 + 218) = 1;
    *(v0 + 48) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BD3AE264()
{
  v1 = *(v0 + 184);

  sub_1BE04D1E4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Error deleting ACH credential: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = *(v0 + 184);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);

  (*(v12 + 8))(v11, v13);
  *(v0 + 16) = *(v14 + 32);
  *(v0 + 32) = *(v14 + 32);
  *(v0 + 217) = 1;
  *(v0 + 64) = *(v0 + 24);
  sub_1BD0DE19C(v0 + 64, v0 + 72, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();

  sub_1BD0DE53C(v0 + 16, &qword_1EBD54350);

  v15 = *(v0 + 8);

  return v15();
}

void sub_1BD3AE484()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE051624();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3AE538()
{
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD3AEDB8(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440C0);
  sub_1BD0DE4F4(&qword_1EBD440C8, &qword_1EBD3C8F0);
  sub_1BD0DE4F4(&qword_1EBD440D0, &qword_1EBD3C8F0);
  sub_1BD0DE4F4(&qword_1EBD440D8, &qword_1EBD3C8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440E8);
  type metadata accessor for CredentialCenterPathIdentifier(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD440F0);
  sub_1BD0DE4F4(&qword_1EBD440F8, &qword_1EBD440E8);
  sub_1BD3AEDB8(&qword_1EBD44100, type metadata accessor for CredentialCenterPathIdentifier);
  sub_1BD3ABE5C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1BE04EBF4();
}

unint64_t _s9PassKitUI22BankCredentialListViewV8lastFour10fullNumberS2S_tFZ_0()
{
  sub_1BE048C84();
  v0 = sub_1BE0534E4();
  v2 = v1;
  result = sub_1BE0534C4();
  if (v4)
  {
    result = v0;
  }

  if (v2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BE0534F4();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x1BFB3F570](v5, v7, v9, v11);
    v14 = v13;

    MEMORY[0x1BFB3F610](v12, v14);

    return 0x80E2A280E2A280E2;
  }

  return result;
}

unint64_t sub_1BD3AE9A0()
{
  result = qword_1EBD44158;
  if (!qword_1EBD44158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44150);
    sub_1BD0DE4F4(&qword_1EBD44160, &qword_1EBD44168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44158);
  }

  return result;
}

uint64_t sub_1BD3AEB18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AEB88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3AEBF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD3AEC60()
{
  result = qword_1EBD441B8;
  if (!qword_1EBD441B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441A8);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BD0DE4F4(&qword_1EBD441D0, &qword_1EBD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD441B8);
  }

  return result;
}

uint64_t sub_1BD3AED4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialCenterPathIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AEDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD3AEE08()
{
  v1 = *(sub_1BE049364() - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_1BD3ADBD0((v0 + 16), v2);
}

uint64_t sub_1BD3AEE6C(uint64_t a1)
{
  v4 = *(sub_1BE049364() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD3ADDE0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1BD3AEF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for BalanceInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CashBalanceSubtextView();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 24);
  sub_1BE0502A4();
  sub_1BE050394();
  v18 = sub_1BE0503F4();

  *&v16[v17] = v18;
  v19 = v28;
  sub_1BD0DE19C(v28, v5, &qword_1EBD39FF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD39FF0);
    sub_1BD0DE53C(v5, &qword_1EBD39FF0);
  }

  else
  {
    sub_1BD3AF2EC(v5, v10);
    v20 = [*v10 formattedStringValue];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1BE052434();
      v24 = v23;

      sub_1BD0DE53C(v19, &qword_1EBD39FF0);
      sub_1BD3AF2EC(v10, v16);
      v25 = &v16[*(v11 + 20)];
      *v25 = v22;
      v25[1] = v24;
      v26 = v29;
      sub_1BD3AF350(v16, v29);
      (*(v12 + 56))(v26, 0, 1, v11);
      return sub_1BD3AF3B4(v16, type metadata accessor for CashBalanceSubtextView);
    }

    sub_1BD0DE53C(v19, &qword_1EBD39FF0);
    sub_1BD3AF3B4(v10, type metadata accessor for BalanceInfo);
  }

  return (*(v12 + 56))(v29, 1, 1, v11);
}

uint64_t type metadata accessor for CashBalanceSubtextView()
{
  result = qword_1EBD44208;
  if (!qword_1EBD44208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD3AF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AF350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CashBalanceSubtextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3AF3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3AF414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BD3AF45C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BD3AF4E4()
{
  result = type metadata accessor for BalanceInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD3AF584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44218);
  MEMORY[0x1EEE9AC00](v44, v3);
  v5 = v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44220);
  MEMORY[0x1EEE9AC00](v50, v6);
  v45 = v41 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44228);
  MEMORY[0x1EEE9AC00](v47, v8);
  v49 = v41 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44230);
  MEMORY[0x1EEE9AC00](v42, v10);
  v12 = v41 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44238);
  MEMORY[0x1EEE9AC00](v46, v13);
  v43 = v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44240);
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44248);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44250);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44258);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v41 - v28;
  if (*(v2 + 8))
  {
    v41[1] = v15;
    if (*(v2 + 9) == 1 && PKConnectedCardLowBalanceEnabled())
    {
      *v12 = sub_1BE04F7C4();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442A0);
      sub_1BD3B0374(v2, &v12[*(v30 + 44)]);
      sub_1BE052434();
      sub_1BD0DE4F4(&qword_1EBD44278, &qword_1EBD44230);
      v31 = v43;
      sub_1BE050DE4();

      sub_1BD0DE53C(v12, &qword_1EBD44230);
      v32 = &qword_1EBD44238;
      sub_1BD0DE19C(v31, v49, &qword_1EBD44238);
      swift_storeEnumTagMultiPayload();
      sub_1BD3B12D8();
      sub_1BD3B1390();
      v33 = v48;
      sub_1BE04F9A4();
      v34 = v31;
    }

    else
    {
      *v5 = sub_1BE04F504();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44260);
      sub_1BD3B09BC(v2, &v5[*(v38 + 44)]);
      sub_1BE052434();
      sub_1BD0DE4F4(&qword_1EBD44268, &qword_1EBD44218);
      v39 = v45;
      sub_1BE050DE4();

      sub_1BD0DE53C(v5, &qword_1EBD44218);
      v32 = &qword_1EBD44220;
      sub_1BD0DE19C(v39, v49, &qword_1EBD44220);
      swift_storeEnumTagMultiPayload();
      sub_1BD3B12D8();
      sub_1BD3B1390();
      v33 = v48;
      sub_1BE04F9A4();
      v34 = v39;
    }

    sub_1BD0DE53C(v34, v32);
    v36 = &qword_1EBD44240;
    sub_1BD0DE19C(v33, v21, &qword_1EBD44240);
    swift_storeEnumTagMultiPayload();
    sub_1BD3B1448();
    sub_1BD3B1500();
    sub_1BE04F9A4();
    v37 = v33;
  }

  else
  {
    *v25 = sub_1BE04F504();
    *(v25 + 1) = 0x4018000000000000;
    v25[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442A8);
    sub_1BD3AFCC8(v2, &v25[*(v35 + 44)]);
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD44290, &qword_1EBD44250);
    sub_1BE050DE4();

    sub_1BD0DE53C(v25, &qword_1EBD44250);
    v36 = &qword_1EBD44258;
    sub_1BD0DE19C(v29, v21, &qword_1EBD44258);
    swift_storeEnumTagMultiPayload();
    sub_1BD3B1448();
    sub_1BD3B1500();
    sub_1BE04F9A4();
    v37 = v29;
  }

  return sub_1BD0DE53C(v37, v36);
}

uint64_t sub_1BD3AFCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19[-v10];
  v12 = (a1 + *(type metadata accessor for CashBalanceSubtextView() + 20));
  v14 = *v12;
  v13 = v12[1];
  v20[0] = 0;
  v21 = v14;
  v22 = v13;
  sub_1BE048C84();
  sub_1BE0502A4();
  sub_1BE050394();
  v15 = sub_1BE0503F4();

  v23 = v15;
  v16 = sub_1BE051234();
  v25 = MEMORY[0x1E69815C0];
  v26 = MEMORY[0x1E6981568];
  v24 = v16;
  sub_1BD3AFE74(v11);
  sub_1BD3B158C(v20, v19);
  sub_1BD0DE19C(v11, v7, &qword_1EBD442B0);
  sub_1BD3B158C(v19, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B8);
  sub_1BD0DE19C(v7, a2 + *(v17 + 48), &qword_1EBD442B0);
  sub_1BD0DE53C(v11, &qword_1EBD442B0);
  sub_1BD3B15C4(v20);
  sub_1BD0DE53C(v7, &qword_1EBD442B0);
  return sub_1BD3B15C4(v19);
}

uint64_t sub_1BD3AFE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BalanceInfo(0);
  sub_1BD0DE19C(v2 + *(v17 + 28), v11, &unk_1EBD39970);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD39970);
    return (*(v4 + 56))(v52, 1, 1, v3);
  }

  else
  {
    v19 = *(v13 + 32);
    v51 = v16;
    v19(v16, v11, v12);
    v20 = [objc_allocWithZone(type metadata accessor for BankConnectFormatter()) init];
    BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v16, 0);
    v22 = v21;
    v24 = v23;

    *&v59[0] = v22;
    *(&v59[0] + 1) = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    LOBYTE(v24) = v28;
    v50 = v12;
    type metadata accessor for CashBalanceSubtextView();
    v29 = sub_1BE0505F4();
    v31 = v30;
    v49 = v3;
    v33 = v32;
    v48 = v4;
    sub_1BD0DDF10(v25, v27, v24 & 1);

    sub_1BE051234();
    v34 = sub_1BE050564();
    v36 = v35;
    v38 = v37;
    v47 = v7;
    v40 = v39;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    LOBYTE(v59[0]) = v38 & 1;
    LOBYTE(v53) = 0;
    v43 = swift_getKeyPath();
    *&v53 = v34;
    *(&v53 + 1) = v36;
    LOBYTE(v54) = v38 & 1;
    *(&v54 + 1) = v40;
    *&v55 = KeyPath;
    *(&v55 + 1) = 1;
    LOBYTE(v56) = 0;
    *(&v56 + 1) = v42;
    LOBYTE(v57) = 1;
    *(&v57 + 1) = v43;
    v58 = 0x3FE999999999999ALL;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8);
    sub_1BD3B15F4();
    v44 = v47;
    sub_1BE050DE4();

    v59[2] = v55;
    v59[3] = v56;
    v59[4] = v57;
    v60 = v58;
    v59[0] = v53;
    v59[1] = v54;
    sub_1BD0DE53C(v59, &qword_1EBD442C8);
    (*(v13 + 8))(v51, v50);
    v45 = v52;
    sub_1BD3B1764(v44, v52);
    return (*(v48 + 56))(v45, 0, 1, v49);
  }
}

uint64_t sub_1BD3B0374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44218);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44260);
  sub_1BD3B0590(a1, &v19[*(v20 + 44)]);
  sub_1BD3AFE74(v11);
  sub_1BD0DE19C(v19, v15, &qword_1EBD44218);
  sub_1BD0DE19C(v11, v7, &qword_1EBD442B0);
  sub_1BD0DE19C(v15, a2, &qword_1EBD44218);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442E8);
  sub_1BD0DE19C(v7, a2 + *(v21 + 48), &qword_1EBD442B0);
  sub_1BD0DE53C(v11, &qword_1EBD442B0);
  sub_1BD0DE53C(v19, &qword_1EBD44218);
  sub_1BD0DE53C(v7, &qword_1EBD442B0);
  return sub_1BD0DE53C(v15, &qword_1EBD44218);
}

id sub_1BD3B0590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  v15 = (a1 + *(type metadata accessor for CashBalanceSubtextView() + 20));
  v17 = *v15;
  v16 = v15[1];
  v53[0] = 1;
  v54 = v17;
  v55 = v16;
  sub_1BE048C84();
  sub_1BE0502A4();
  sub_1BE050394();
  v18 = sub_1BE0503F4();

  v56 = v18;
  v19 = sub_1BE051234();
  v58 = MEMORY[0x1E69815C0];
  v59 = MEMORY[0x1E6981568];
  v57 = v19;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v4 + 8))(v7, v3);
    v47 = v22;
    v48 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    LOBYTE(v21) = v28;
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;
    sub_1BD0DDF10(v25, v27, v21 & 1);

    sub_1BE0513B4();
    v34 = sub_1BE050564();
    v36 = v35;
    LOBYTE(v22) = v37;
    v39 = v38;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v47 = v34;
    v48 = v36;
    v49 = v22 & 1;
    v50 = v39;
    v51 = KeyPath;
    v52 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    sub_1BE050DE4();

    sub_1BD0DDF10(v34, v36, v22 & 1);

    sub_1BD3B158C(v53, &v47);
    v41 = v45;
    sub_1BD0DE19C(v14, v45, &qword_1EBD38A98);
    v42 = v46;
    sub_1BD3B158C(&v47, v46);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F0);
    sub_1BD0DE19C(v41, v42 + *(v43 + 48), &qword_1EBD38A98);
    sub_1BD0DE53C(v14, &qword_1EBD38A98);
    sub_1BD3B15C4(v53);
    sub_1BD0DE53C(v41, &qword_1EBD38A98);
    return sub_1BD3B15C4(&v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3B09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  v15 = (a1 + *(type metadata accessor for CashBalanceSubtextView() + 20));
  v17 = *v15;
  v16 = v15[1];
  v53[0] = 1;
  v54 = v17;
  v55 = v16;
  sub_1BE048C84();
  sub_1BE0502A4();
  sub_1BE050394();
  v18 = sub_1BE0503F4();

  v56 = v18;
  v19 = sub_1BE051234();
  v58 = MEMORY[0x1E69815C0];
  v59 = MEMORY[0x1E6981568];
  v57 = v19;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8050], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    (*(v4 + 8))(v7, v3);
    v47 = v22;
    v48 = v24;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    LOBYTE(v21) = v28;
    v29 = sub_1BE0505F4();
    v31 = v30;
    v33 = v32;
    sub_1BD0DDF10(v25, v27, v21 & 1);

    sub_1BE0513B4();
    v34 = sub_1BE050564();
    v36 = v35;
    LOBYTE(v22) = v37;
    v39 = v38;

    sub_1BD0DDF10(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v47 = v34;
    v48 = v36;
    v49 = v22 & 1;
    v50 = v39;
    v51 = KeyPath;
    v52 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    sub_1BE050DE4();

    sub_1BD0DDF10(v34, v36, v22 & 1);

    sub_1BD3B158C(v53, &v47);
    v41 = v45;
    sub_1BD0DE19C(v14, v45, &qword_1EBD38A98);
    v42 = v46;
    sub_1BD3B158C(&v47, v46);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F0);
    sub_1BD0DE19C(v41, v42 + *(v43 + 48), &qword_1EBD38A98);
    sub_1BD0DE53C(v14, &qword_1EBD38A98);
    sub_1BD3B15C4(v53);
    sub_1BD0DE53C(v41, &qword_1EBD38A98);
    return sub_1BD3B15C4(&v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3B0DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442F8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v14[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44300);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v14[-1] - v7;
  if (*v0)
  {
    v9 = sub_1BE0513B4();
    v14[3] = MEMORY[0x1E69815C0];
    v14[4] = MEMORY[0x1E6981568];
    v14[0] = v9;
    v10 = sub_1BE051374();
    sub_1BD3B0FB0(v14, v10, v8);

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v11 = sub_1BE051334();
    sub_1BD3B0FB0((v0 + 32), v11, v8);
  }

  sub_1BD0DE19C(v8, v4, &qword_1EBD44300);
  swift_storeEnumTagMultiPayload();
  sub_1BD3B17D4();
  sub_1BE04F9A4();
  return sub_1BD0DE53C(v8, &qword_1EBD44300);
}

uint64_t sub_1BD3B0FB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44318);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = v44 - v6;
  v8 = a1[3];
  v44[1] = a1[4];
  v44[0] = __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = *(v3 + 16);
  v48 = *(v3 + 8);
  v49 = v9;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v10, v12, v14 & 1);

  v20 = sub_1BE050574();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1BD0DDF10(v15, v17, v19 & 1);

  LOBYTE(v12) = sub_1BE0501D4();
  v24 &= 1u;
  LOBYTE(v48) = v24;
  v50 = 0;
  v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44328) + 36)];
  v28 = *(sub_1BE04EDE4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1BE04F684();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #4.0 }

  *v27 = _Q0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10);
  *&v27[*(v36 + 52)] = v45;
  *&v27[*(v36 + 56)] = 256;
  sub_1BE048964();
  v37 = sub_1BE051CD4();
  v39 = v38;
  v40 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44338) + 36)];
  *v40 = v37;
  v40[1] = v39;
  *v7 = v20;
  *(v7 + 1) = v22;
  v7[16] = v24;
  *(v7 + 3) = v26;
  v7[32] = v12;
  *(v7 + 40) = xmmword_1BE0D1870;
  *(v7 + 56) = xmmword_1BE0D1870;
  v7[72] = 0;
  KeyPath = swift_getKeyPath();
  v42 = &v7[*(v46 + 36)];
  *v42 = KeyPath;
  v42[8] = 1;
  sub_1BE052434();
  sub_1BD3B1860();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v7, &qword_1EBD44318);
}

unint64_t sub_1BD3B12D8()
{
  result = qword_1EBD44270;
  if (!qword_1EBD44270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44238);
    sub_1BD0DE4F4(&qword_1EBD44278, &qword_1EBD44230);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44270);
  }

  return result;
}

unint64_t sub_1BD3B1390()
{
  result = qword_1EBD44280;
  if (!qword_1EBD44280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44220);
    sub_1BD0DE4F4(&qword_1EBD44268, &qword_1EBD44218);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44280);
  }

  return result;
}

unint64_t sub_1BD3B1448()
{
  result = qword_1EBD44288;
  if (!qword_1EBD44288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44258);
    sub_1BD0DE4F4(&qword_1EBD44290, &qword_1EBD44250);
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44288);
  }

  return result;
}

unint64_t sub_1BD3B1500()
{
  result = qword_1EBD44298;
  if (!qword_1EBD44298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44240);
    sub_1BD3B12D8();
    sub_1BD3B1390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44298);
  }

  return result;
}

unint64_t sub_1BD3B15F4()
{
  result = qword_1EBD442D0;
  if (!qword_1EBD442D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD442C8);
    sub_1BD3B16AC();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD442D0);
  }

  return result;
}

unint64_t sub_1BD3B16AC()
{
  result = qword_1EBD442D8;
  if (!qword_1EBD442D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD442E0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD442D8);
  }

  return result;
}

uint64_t sub_1BD3B1764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3B17D4()
{
  result = qword_1EBD44308;
  if (!qword_1EBD44308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44300);
    sub_1BD3B1860();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44308);
  }

  return result;
}

unint64_t sub_1BD3B1860()
{
  result = qword_1EBD44310;
  if (!qword_1EBD44310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44318);
    sub_1BD3B1918();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44310);
  }

  return result;
}

unint64_t sub_1BD3B1918()
{
  result = qword_1EBD44320;
  if (!qword_1EBD44320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44328);
    sub_1BD2A275C();
    sub_1BD0DE4F4(&qword_1EBD44330, &qword_1EBD44338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44320);
  }

  return result;
}

unint64_t sub_1BD3B19E0()
{
  result = qword_1EBD44340;
  if (!qword_1EBD44340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44348);
    sub_1BD3B1448();
    sub_1BD3B1500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44340);
  }

  return result;
}

unint64_t sub_1BD3B1A6C()
{
  result = qword_1EBD44350;
  if (!qword_1EBD44350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44358);
    sub_1BD3B17D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44350);
  }

  return result;
}

unint64_t sub_1BD3B1AF4()
{
  result = qword_1EBD44360;
  if (!qword_1EBD44360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44360);
  }

  return result;
}

id sub_1BD3B1CB0()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8A60]) init];
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_credential);
  sub_1BE04BC04();
  if (v11)
  {
    v12 = sub_1BE052404();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(PKPeerPaymentExplanationViewController) initWithProvisoningController:v7 setupDelegate:v1 passLibraryDataProvider:v8 context:v9 credential:v10 campaignAttributionReferrerIdentifier:v12];

  return v13;
}

uint64_t sub_1BD3B1E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3B1E8C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI42ProvisioningPeerPaymentExplanationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD3B1ED8(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioningForce_];

  return a1(1);
}

char *sub_1BD3B1F50(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v21 = v8;
      sub_1BD3B5D60(&v21, a2, &v19);
      if (v2)
      {

        return v6;
      }

      if (v19)
      {
        v18 = v19;
        v11 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1BD1D8BF0(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        v14 = v18;
        if (v13 >= v12 >> 1)
        {
          v15 = sub_1BD1D8BF0((v12 > 1), v13 + 1, 1, v6);
          v14 = v18;
          v6 = v15;
        }

        *(v6 + 2) = v13 + 1;
        v7 = &v6[24 * v13];
        *(v7 + 2) = v14;
        v7[48] = v11 & 1;
      }

      ++v5;
      if (v10 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD3B2110(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1BE048964();
  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1BD3B6980, v8);
}

void sub_1BD3B21E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v8 = a3;
  swift_unknownObjectRetain();
  v7(a2, v8, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1BD3B2390(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  sub_1BD12FA24(1, v11, KeyPath);

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v13 = v11;
  sub_1BE048964();
  sub_1BE04BC34();
  v14 = sub_1BE04B974();
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    v15 = v13;
    sub_1BE048964();
    sub_1BD3B6A04(v15, v15, sub_1BD3B69F8, v12);
  }

  else
  {
    sub_1BD3B2558(*&v13[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials], MEMORY[0x1E69E7CC0], v13, a1, a2);
  }
}

uint64_t sub_1BD3B2558(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
  swift_beginAccess();
  *(a3 + v10) = a1;
  sub_1BE048C84();

  *(a3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings) = a2;
  sub_1BE048C84();

  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1BD3B2CD4(a1);
    return a4(1);
  }

  if (!*(a2 + 16))
  {
    return a4(1);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  sub_1BE048964();
  sub_1BD3B2694(sub_1BD19E0B8, v12);
}

void sub_1BD3B2694(void (*a1)(uint64_t), char *a2)
{
  v5 = sub_1BE04B944();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v10, v11);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings;
  v15 = *&v2[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings];
  v16 = *(v15 + 16);
  if (v16)
  {
    v65 = v13;
    v66 = v12;
    v60 = v9;
    v61 = v6;
    v62 = v5;
    v67 = a1;
    sub_1BE048C84();
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v19 = 24 * v17;
    while (v16 != v17)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      ++v17;
      v20 = v19 + 24;
      v21 = *(v15 + v19 + 48);
      v19 += 24;
      if (v21)
      {
        v64 = a2;
        v22 = *(v15 + v20 + 16);
        v23 = *(v15 + v20 + 8);
        v24 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531958(0, *(v18 + 16) + 1, 1);
          v18 = aBlock[0];
        }

        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1BD531958((v26 > 1), v27 + 1, 1);
          v18 = aBlock[0];
        }

        *(v18 + 16) = v27 + 1;
        v28 = v18 + 24 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v24;
        *(v28 + 48) = 1;
        a2 = v64;
        goto LABEL_3;
      }
    }

    v64 = v2;
    v29 = *&v2[v69];
    v30 = *(v29 + 16);
    sub_1BE048C84();
    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v34 = 24 * v31;
    while (v30 != v31)
    {
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_35;
      }

      ++v31;
      v35 = v34 + 24;
      v36 = *(v29 + v34 + 48);
      v34 += 24;
      if ((v36 & 1) == 0)
      {
        v37 = *(v29 + v35 + 16);
        v63 = *(v29 + v35 + 8);
        v38 = v37;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v33;
        v40 = a2;
        if ((v39 & 1) == 0)
        {
          sub_1BD531958(0, *(v33 + 16) + 1, 1);
          v33 = aBlock[0];
        }

        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1BD531958((v41 > 1), v42 + 1, 1);
          v33 = aBlock[0];
        }

        *(v33 + 16) = v42 + 1;
        v43 = v33 + 24 * v42;
        *(v43 + 32) = v63;
        *(v43 + 40) = v38;
        *(v43 + 48) = 0;
        a2 = v40;
        goto LABEL_13;
      }
    }

    v44 = v64;
    *&v64[v69] = v32;

    v45 = v68;
    sub_1BE04D0E4();
    sub_1BE048964();
    sub_1BE048964();
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C54();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134218240;
      *(v48 + 4) = *(v18 + 16);

      *(v48 + 12) = 2048;
      *(v48 + 14) = *(v33 + 16);

      _os_log_impl(&dword_1BD026000, v46, v47, "%ld background require preflight, and %ld don't.", v48, 0x16u);
      MEMORY[0x1BFB45F20](v48, -1, -1);
    }

    else
    {
    }

    (*(v65 + 8))(v45, v66);
    if (*(v18 + 16))
    {
      sub_1BD3B3970(v18);
    }

    v49 = *(v33 + 16);
    if (v49)
    {
      aBlock[0] = v32;
      sub_1BE0538E4();
      v50 = 32;
      v51 = v67;
      do
      {
        v52 = *(v33 + v50);
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        v50 += 24;
        --v49;
      }

      while (v49);
      v53 = v60;
      sub_1BE04BB94();
      v54 = sub_1BE04B934();
      (*(v61 + 8))(v53, v62);
      sub_1BD0E5E8C(0, &unk_1EBD44440);
      v55 = sub_1BE052724();

      v56 = swift_allocObject();
      v56[2] = v44;
      v56[3] = v33;
      v56[4] = v51;
      v56[5] = a2;
      aBlock[4] = sub_1BD3B6900;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD03E30C;
      aBlock[3] = &block_descriptor_79;
      v57 = _Block_copy(aBlock);
      v58 = v44;
      sub_1BD0D44B8(v51);

      [v54 addPendingProvisionings:v55 completion:v57];
      _Block_release(v57);
      swift_unknownObjectRelease();
    }

    else
    {

      if (v67)
      {
        v67(v59);
      }
    }
  }
}

void sub_1BD3B2CD4(unint64_t a1)
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!sub_1BE053704())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  sub_1BE04BC34();
  v12 = sub_1BE04B974();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69B8D38]);
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    v14 = sub_1BE052724();
    v15 = [v13 initWithCredentials_];

    sub_1BE04BB94();
    v16 = sub_1BE04B8E4();
    (*(v3 + 8))(v6, v2);
    aBlock[4] = PKEdgeInsetsMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD28F728;
    aBlock[3] = &block_descriptor_94_0;
    v17 = _Block_copy(aBlock);
    [v16 prepareToProvisionForRequest:v15 completion:v17];

    _Block_release(v17);
  }
}

void *sub_1BD3B2F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v60 - v11;
  v13 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (v14 >> 62)
  {
    v15 = sub_1BE053704();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v15 > 1;
  KeyPath = swift_getKeyPath();
  v18 = v2;
  sub_1BD12F5F4(v16, v18, KeyPath);

  if (!a1)
  {
    v44 = *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
    v45 = *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials];
    type metadata accessor for ProvisioningRequirementsFlowSection();
    swift_allocObject();
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BD4435E4(v44, 0, v45);
    v47 = v46;

    return v47;
  }

  v19 = type metadata accessor for ProvisioningCredentialFlowSection();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = *(v20 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses);
  if (!v21)
  {
    goto LABEL_8;
  }

  v61 = v5;
  v62 = v4;
  v22 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups;
  swift_beginAccess();
  v5 = v21;
  v23 = swift_unknownObjectRetain();
  MEMORY[0x1BFB3F7A0](v23);
  v24 = *((*&v18[v22] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24 >= *((*&v18[v22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    sub_1BE0527C4();
    swift_endAccess();
    swift_unknownObjectRelease();

    v5 = v61;
    v4 = v62;
LABEL_8:
    v25 = *&v2[v13];
    if (v25 >> 62)
    {
      break;
    }

    v24 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_10:
    if ((v25 & 0xC000000000000001) != 0)
    {
      sub_1BE048C84();
      v26 = MEMORY[0x1BFB40900](0, v25);

      goto LABEL_13;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v25 + 32);
LABEL_13:
      v27 = *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
      sub_1BE04BBF4();
      swift_beginAccess();
      v28 = sub_1BD3B3734(0, sub_1BD509758);
      swift_endAccess();

      sub_1BE04D0E4();
      v29 = v26;
      v30 = sub_1BE04D204();
      v31 = sub_1BE052C54();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v62 = v19;
        v33 = v5;
        v34 = v32;
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v29;
        *v35 = v29;
        v36 = v29;
        _os_log_impl(&dword_1BD026000, v30, v31, "Provisioning next credential: %@", v34, 0xCu);
        sub_1BD1E236C(v35);
        MEMORY[0x1BFB45F20](v35, -1, -1);
        v37 = v34;
        v5 = v33;
        v19 = v62;
        MEMORY[0x1BFB45F20](v37, -1, -1);
      }

      (*(v5 + 1))(v12, v4);
      v38 = *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product];
      v39 = objc_allocWithZone(v19);
      *&v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v40 = &v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
      *v40 = 0x100000000000001ALL;
      v40[1] = 0x80000001BE1199C0;
      v41 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
      v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
      *&v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
      *&v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v27;
      *&v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = v29;
      *&v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v38;
      v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
      v39[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = 0;
      v39[v41] = 1;
      v64.receiver = v39;
      v64.super_class = v19;
      sub_1BE048964();
      v42 = v38;
      return objc_msgSendSuper2(&v64, sel_init);
    }

    __break(1u);
LABEL_24:
    v60[1] = v24;
    sub_1BE052774();
  }

  v24 = sub_1BE053704();
  if (v24)
  {
    goto LABEL_10;
  }

LABEL_19:
  v48 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups;
  swift_beginAccess();
  v49 = *&v18[v48];
  if (v49 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_21;
    }
  }

  else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    v50 = *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context];
    v51 = *&v18[v48];
    v52 = type metadata accessor for ProvisioningBatchPassIngestionSection();
    v53 = objc_allocWithZone(v52);
    *&v53[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v54 = &v53[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier];
    *v54 = 0xD000000000000019;
    *(v54 + 1) = 0x80000001BE126DA0;
    *&v53[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context] = v50;
    *&v53[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups] = v51;
    v63.receiver = v53;
    v63.super_class = v52;
    sub_1BE048C84();
    sub_1BE048964();
    v55 = objc_msgSendSuper2(&v63, sel_init);
    *&v18[v48] = MEMORY[0x1E69E7CC0];

    return v55;
  }

  if (v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] != 1)
  {
    return 0;
  }

  sub_1BE04D0E4();
  v56 = sub_1BE04D204();
  v57 = sub_1BE052C54();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1BD026000, v56, v57, "Blocking end of provisioning flow to let preflight complete", v58, 2u);
    MEMORY[0x1BFB45F20](v58, -1, -1);
  }

  (*(v5 + 1))(v8, v4);
  type metadata accessor for BlockingFlowItem();
  v59 = swift_allocObject();
  v59[5] = 0;
  v59[2] = 0;
  v59[3] = 0;
  swift_unknownObjectWeakInit();
  v59[6] = 0xD000000000000010;
  v59[7] = 0x80000001BE0D1C60;
  *&v18[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = v59;
  sub_1BE048964();

  return v59;
}

uint64_t sub_1BD3B3734(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1BD3B37CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BD4FFF40(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1BE049A94();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BD3B38E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3B3920(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD3B3970(uint64_t a1)
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess) = 1;
  sub_1BE04BB94();
  v8 = sub_1BE04B934();
  (*(v4 + 8))(v7, v3);
  v9 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 48);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 24;
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v12;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      *(v16 + 48) = v8;
      v30 = sub_1BD3B693C;
      v31 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BD3B2110;
      v29 = &block_descriptor_32_1;
      v17 = _Block_copy(&aBlock);
      v18 = v12;
      v19 = v13;
      v20 = v18;
      v21 = v19;
      swift_unknownObjectRetain();

      [v9 addOperation_];
      _Block_release(v17);

      --v10;
    }

    while (v10);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_1BD3B6970;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1BD3B21E4;
  v29 = &block_descriptor_36_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v9 evaluateWithInput:v22 completion:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_1BD3B3CB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v50 = a4;
  v48 = a3;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = a5;
    v46 = v8;
    v21 = a1;
    sub_1BE04D0E4();
    v22 = a1;
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();

    v25 = os_log_type_enabled(v23, v24);
    v47 = v12;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v7;
      v28 = v27;
      *v26 = 138412290;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1BD026000, v23, v24, "Failed to queue pending provisionings, handling them in foreground. Error: %@", v26, 0xCu);
      sub_1BD1E236C(v28);
      v31 = v28;
      v7 = v44;
      MEMORY[0x1BFB45F20](v31, -1, -1);
      v32 = v26;
      v12 = v47;
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v33 = v48;
    v34 = *(v48 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BE0538E4();
      v36 = (v33 + 40);
      v8 = v46;
      do
      {
        v37 = *v36;
        v36 += 3;
        v38 = v37;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        --v34;
      }

      while (v34);
      v35 = aBlock[0];
      v12 = v47;
    }

    else
    {
      v8 = v46;
    }

    swift_beginAccess();
    sub_1BDA7AACC(v35);
    swift_endAccess();

    a5 = v45;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v39 = sub_1BE052D54();
  v40 = swift_allocObject();
  v41 = v50;
  *(v40 + 16) = v50;
  *(v40 + 24) = a5;
  aBlock[4] = sub_1BD3B690C;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_23_4;
  v42 = _Block_copy(aBlock);
  sub_1BD0D44B8(v41);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v42);
  _Block_release(v42);

  (*(v8 + 8))(v11, v7);
  return (*(v51 + 8))(v15, v12);
}

uint64_t sub_1BD3B41C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, uint64_t a9)
{
  v32 = a3;
  v33 = a2;
  v13 = sub_1BE051F54();
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE051FA4();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v35 = sub_1BE052D54();
  v20 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = a6;
  *(v22 + 32) = a7;
  *(v22 + 40) = a8;
  v23 = v32;
  v24 = v33;
  *(v22 + 48) = a9;
  *(v22 + 56) = v23;
  *(v22 + 64) = a4;
  *(v22 + 72) = v24;
  aBlock[4] = sub_1BD3B699C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_50_0;
  v25 = _Block_copy(aBlock);
  v26 = a6;
  v27 = a7;
  swift_unknownObjectRetain();
  sub_1BE048964();
  v28 = v24;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v29 = v35;
  MEMORY[0x1BFB3FDF0](0, v19, v16, v25);
  _Block_release(v25);

  (*(v37 + 8))(v16, v13);
  return (*(v34 + 8))(v19, v36);
}

uint64_t sub_1BD3B4520(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = a6;
    v16 = result;
    objc_allocWithZone(sub_1BE04C214());
    sub_1BE048964();
    v17 = a3;
    v18 = sub_1BE04C1F4();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v17;
    *(v19 + 32) = a4 & 1;
    *(v19 + 40) = a5;
    *(v19 + 48) = v25;
    *(v19 + 56) = a7;
    *(v19 + 64) = a8;
    *(v19 + 72) = v16;
    *(v19 + 80) = v17;
    *(v19 + 88) = v18;
    v20 = v17;
    v21 = a2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    v22 = a8;
    v23 = v16;
    v24 = v18;
    sub_1BE04C204();
  }

  return result;
}

void sub_1BD3B4688(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *, void), void *a8, void *a9, uint64_t a10, void *a11)
{
  v51 = a7;
  v16 = a9;
  v17 = sub_1BE04D214();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v48 - v24;
  if (a2)
  {
    v50 = a8;
    v26 = a11;
    sub_1BE04D0E4();
    v27 = a1;
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C54();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v49 = a9;
      v31 = v30;
      v32 = swift_slowAlloc();
      v48 = a11;
      v33 = v32;
      *v31 = 138412290;
      *(v31 + 4) = v27;
      *v32 = a1;
      v34 = v27;
      _os_log_impl(&dword_1BD026000, v28, v29, "Failed to preflight backgroundable provisioning. %@", v31, 0xCu);
      sub_1BD1E236C(v33);
      v35 = v33;
      v26 = v48;
      MEMORY[0x1BFB45F20](v35, -1, -1);
      v36 = v31;
      v16 = v49;
      MEMORY[0x1BFB45F20](v36, -1, -1);
    }

    (*(v18 + 8))(v21, v17);
    v37 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision;
    swift_beginAccess();
    v38 = v26;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(a10 + v37) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a10 + v37) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    v51(v16, 0);
  }

  else
  {
    v50 = a6;
    sub_1BE04D0E4();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "Successfully preflighted backgroundable provisioning", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v18 + 8))(v25, v17);
    [a3 setProvisioningState_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BE0B7020;
    *(v42 + 32) = a3;
    sub_1BD0E5E8C(0, &unk_1EBD44440);
    v43 = a3;
    v44 = sub_1BE052724();

    v45 = swift_allocObject();
    v45[2] = v51;
    v45[3] = a8;
    v45[4] = a9;
    aBlock[4] = sub_1BD14BF54;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD03E30C;
    aBlock[3] = &block_descriptor_59_0;
    v46 = _Block_copy(aBlock);
    sub_1BE048964();
    v47 = a9;

    [v50 addPendingProvisionings:v44 completion:v46];
    _Block_release(v46);
  }
}

uint64_t sub_1BD3B4AE4()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1BD3B6978;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_40_1;
  v13 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v13);
  _Block_release(v13);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BD3B4DD0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess) = 0;
    v2 = OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem;
    if (*(result + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem))
    {
      sub_1BE048964();
      sub_1BD3B4E68();
    }

    *&v1[v2] = 0;
  }

  return result;
}

uint64_t sub_1BD3B4E68()
{
  v1 = v0;
  v2 = sub_1BE051FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  *v6 = sub_1BE052D54();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1BE052004();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + 16);
    if (v9)
    {
      sub_1BE048964();
      v9(0);
      sub_1BD1107D8(v9);
      v10 = *(v1 + 16);
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      return sub_1BD1107D8(v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3B4FC8(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t *a4)
{
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v38 = PKForceSuccessfulSuperEasyProvisioningIfPossible();
  v12 = *(a2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials);
  if (v12 >> 62)
  {
LABEL_40:
    v13 = sub_1BE053704();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v9;
  v34 = v8;
  v35 = a4;
  v36 = a3;
  if (v13)
  {
    a3 = 0;
    v39 = v12 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x1E69E7CC0];
    v37 = a1;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB40900](a3, v12);
      }

      else
      {
        if (a3 >= *(v39 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(v12 + 8 * a3 + 32);
      }

      v9 = v14;
      v15 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      a4 = a2;
      if (sub_1BD3B54F4(v14, a1))
      {
        if (([v9 supportsFrictionlessProvisioning] & 1) != 0 || (v16 = objc_msgSend(v9, sel_couldSupportSuperEasyProvisioning), (v16 & v38) == 1))
        {
          v17 = v9;
          a4 = &v40;
          MEMORY[0x1BFB3F7A0]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v9 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BE052774();
          }

          sub_1BE0527C4();

          v8 = v40;
        }

        else
        {
          v18 = [v9 remoteCredential];
          if (v18)
          {
            v19 = v18;
            if ([v9 cardType] == 4)
            {
              result = [objc_allocWithZone(MEMORY[0x1E69B9080]) initWithRemoteCredential_];
              if (!result)
              {
                __break(1u);
                return result;
              }

              a4 = &v40;
              MEMORY[0x1BFB3F7A0]();
              if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v31 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1BE052774();
              }

              sub_1BE0527C4();

              v8 = v40;
            }

            else
            {
              v9 = v9;
              a4 = &v41;
              MEMORY[0x1BFB3F7A0]();
              if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v31 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1BE052774();
              }

              sub_1BE0527C4();
            }
          }

          else
          {
            v9 = v9;
            a4 = &v41;
            MEMORY[0x1BFB3F7A0]();
            if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BE052774();
            }

            sub_1BE0527C4();
          }

          a1 = v37;
        }
      }

      else
      {
      }

      ++a3;
      if (v15 == v13)
      {
        goto LABEL_32;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v21 = sub_1BD3B1F50(v8, &v41);

  v22 = v32;
  sub_1BE04D0E4();
  sub_1BE048C84();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    swift_beginAccess();
    v26 = v36;
    v28 = v33;
    v27 = v34;
    if (v41 >> 62)
    {
      v29 = sub_1BE053704();
    }

    else
    {
      v29 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    *(v25 + 14) = *(v21 + 2);

    _os_log_impl(&dword_1BD026000, v23, v24, "Provisioning %ld foreground credentials and %ld background credentials", v25, 0x16u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  else
  {

    v26 = v36;
    v28 = v33;
    v27 = v34;
  }

  v28[1](v22, v27);
  swift_beginAccess();
  v30 = sub_1BE048C84();
  v26(v30, v21);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1BD3B54F4(id a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v70 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BE04B944();
  v8 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74, v9);
  v73 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BE04BDF4();
  v11 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v12);
  v75 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = v66 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v82 = v66 - v19;
  v20 = sub_1BE04BDB4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v72 = (v66 - v27);
  v71 = [objc_allocWithZone(sub_1BE04C114()) init];
  v28 = a2;
  v29 = *(a2 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v80 = v11;
  if (v29)
  {
    v66[0] = v8;
    v66[1] = v2;
    v69 = a1;
    v85 = MEMORY[0x1E69E7CC0];
    sub_1BD532038(0, v29, 0);
    v30 = v85;
    v32 = *(v11 + 16);
    v31 = v11 + 16;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v78 = *(v31 + 56);
    v79 = v32;
    v81 = v31;
    v76 = (v21 + 32);
    v77 = (v31 - 8);
    v34 = v72;
    do
    {
      v35 = v82;
      v36 = v84;
      v79(v82, v33, v84);
      sub_1BE04BDE4();
      (*v77)(v35, v36);
      v85 = v30;
      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1BD532038(v37 > 1, v38 + 1, 1);
        v30 = v85;
      }

      *(v30 + 16) = v38 + 1;
      (*(v21 + 32))(v30 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v38, v34, v20);
      v33 += v78;
      --v29;
    }

    while (v29);
    v11 = v80;
    a1 = v69;
    v8 = v66[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BE0B7020;
  *(v39 + 32) = a1;
  v69 = a1;
  v40 = v73;
  sub_1BE04BB94();
  v41 = sub_1BE04B8E4();
  (*(v8 + 8))(v40, v74);
  v42 = sub_1BE04C0E4();

  v79 = *(v42 + 16);
  if (v79)
  {
    v44 = 0;
    v76 = (v21 + 8);
    v77 = (v11 + 16);
    v74 = (v11 + 32);
    v72 = (v11 + 8);
    v45 = MEMORY[0x1E69E7CC0];
    v78 = v42;
    while (v44 < *(v42 + 16))
    {
      v82 = ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v81 = *(v11 + 72);
      (*(v11 + 16))(v83, &v82[v42 + v81 * v44++], v84);
      sub_1BE04BDE4();
      v46 = 0;
      v47 = *(v30 + 16);
      do
      {
        if (v47 == v46)
        {
          (*v76)(v24, v20);
          result = (*v72)(v83, v84);
          goto LABEL_10;
        }

        v48 = v46 + 1;
        sub_1BD3B71F8(&unk_1EBD55130, MEMORY[0x1E69B8138]);
        v49 = sub_1BE052334();
        v46 = v48;
      }

      while ((v49 & 1) == 0);
      (*v76)(v24, v20);
      v73 = *v74;
      (v73)(v75, v83, v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, *(v45 + 16) + 1, 1);
        v45 = v85;
      }

      v52 = *(v45 + 16);
      v51 = *(v45 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1BD531998(v51 > 1, v52 + 1, 1);
        v45 = v85;
      }

      *(v45 + 16) = v52 + 1;
      result = (v73)(&v82[v45 + v52 * v81], v75, v84);
LABEL_10:
      v11 = v80;
      v42 = v78;
      if (v44 == v79)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v53 = *(v45 + 16);
    if (v53)
    {
      v54 = v70;
      sub_1BE04D0E4();
      v55 = v69;
      sub_1BE048964();
      v56 = sub_1BE04D204();
      v57 = sub_1BE052C54();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v85 = v60;
        *v58 = 138412546;
        *(v58 + 4) = v55;
        *v59 = v55;
        *(v58 + 12) = 2080;
        v61 = v55;
        v62 = MEMORY[0x1BFB3F7F0](v45, v84);
        v64 = v63;

        v65 = sub_1BD123690(v62, v64, &v85);

        *(v58 + 14) = v65;
        _os_log_impl(&dword_1BD026000, v56, v57, "Skipping credential %@ because non recoverable required not met: %s", v58, 0x16u);
        sub_1BD1E236C(v59);
        MEMORY[0x1BFB45F20](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x1BFB45F20](v60, -1, -1);
        MEMORY[0x1BFB45F20](v58, -1, -1);
      }

      else
      {
      }

      (*(v67 + 8))(v54, v68);
    }

    else
    {
    }

    return v53 == 0;
  }

  return result;
}

void sub_1BD3B5D60(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [v12 remoteCredential];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    [v13 status];
    if (PKRemoteCredentialStatusIsAvailable())
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E69B9038]) initWithRemoteCredential_];
      v17 = [v15 fidoProfile];

      if (!v17)
      {
        v14 = 0;
LABEL_13:
        [v16 setShouldAutoProvision_];
        *a3 = v16;
        *(a3 + 8) = v12;
        *(a3 + 16) = v14;
        v22 = v12;
        return;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v18 = a2;
  v19 = [v12 accountCredential];
  if (v19)
  {
    v17 = v19;
    v20 = [objc_allocWithZone(MEMORY[0x1E69B9028]) initWithAccountCredential_];
    goto LABEL_11;
  }

  v21 = [v12 shareableCredential];
  if (v21)
  {
    v17 = v21;
    v20 = [objc_allocWithZone(MEMORY[0x1E69B9050]) initWithShareableCredential_];
    goto LABEL_11;
  }

  v23 = [v12 peerPaymentCredential];
  if (!v23)
  {
    v27 = [v12 precursorCredential];
    if (!v27)
    {
      sub_1BE04D0F4();
      v28 = v12;
      v29 = sub_1BE04D204();
      v30 = sub_1BE052C54();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v39 = v30;
        v32 = v31;
        v33 = swift_slowAlloc();
        v40 = v29;
        v34 = v33;
        *v32 = 138412290;
        *(v32 + 4) = v28;
        *v33 = v28;
        v35 = v28;
        _os_log_impl(&dword_1BD026000, v40, v39, "WARNING: Credential supports frictionless provisioning, but doesn't have corresponding pending provisioning object. \n%@", v32, 0xCu);
        sub_1BD1E236C(v34);
        v36 = v34;
        v29 = v40;
        MEMORY[0x1BFB45F20](v36, -1, -1);
        MEMORY[0x1BFB45F20](v32, -1, -1);
      }

      (*(v7 + 8))(v11, v6);
      v37 = v28;
      MEMORY[0x1BFB3F7A0]();
      if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      goto LABEL_8;
    }

    v17 = v27;
    v20 = [objc_allocWithZone(MEMORY[0x1E69B9040]) initWithPrecursorCredential_];
LABEL_11:
    v16 = v20;
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 account];
  if (v25)
  {
    v26 = v25;
    v17 = [v25 identifier];

    if (v17)
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E69B9028]) initWithAccountIdentifier:v17 feature:1 sharingInstanceIdentifier:0];

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD3B6174(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BD3B61EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a2;
  aBlock[4] = sub_1BD3B71BC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_82_0;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_1BD3B64C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1BE052F34();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  a1(v4);
}

uint64_t sub_1BD3B6530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a2;
  aBlock[4] = sub_1BD3B71C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_88_0;
  v18 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048C84();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD3B71F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v21);
}

uint64_t sub_1BD3B680C()
{
  sub_1BD3B4E68();
  sub_1BD1107D8(*(v0 + 16));
  sub_1BD0D4534(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD3B68BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1BD1107D8(v3);

  return sub_1BE048964();
}

uint64_t sub_1BD3B690C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1BD3B6A04(uint64_t a1, void *a2, unint64_t a3, unint64_t *a4)
{
  v7 = sub_1BE04BDF4();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B8D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v57 = &v53 - v16;
  v17 = sub_1BE04B944();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v59 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04BAC4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v53 = a3;
  v62 = v25;
  v25[4] = a4;
  v26 = a2;
  sub_1BE048964();
  sub_1BE04BC34();
  LOBYTE(a2) = sub_1BE04BA54();
  (*(v21 + 8))(v24, v20);
  if ((a2 & 1) != 0 || PKSimulateBuddyBackgroundProvisioningInWallet())
  {
    v27 = v59;
    sub_1BE04BB94();
    v28 = sub_1BE04B934();
    if ([v28 respondsToSelector_])
    {
      v29 = [v28 supportsCheckingProvisioningRequirements];
    }

    else
    {
      v29 = 0;
    }

    swift_unknownObjectRelease();
    v30 = v57;
    sub_1BE04B924();
    v31 = v58;
    (*(v11 + 104))(v58, *MEMORY[0x1E69B7F80], v10);
    sub_1BD3B71F8(&qword_1EBD55170, MEMORY[0x1E69B7F90]);
    v32 = sub_1BE052334();
    v33 = *(v11 + 8);
    v33(v31, v10);
    v33(v30, v10);
    if ((v32 & 1) == 0)
    {
      v34 = *MEMORY[0x1E69B8120];
      v35 = sub_1BE04BDB4();
      v36 = v54;
      (*(*(v35 - 8) + 104))(v54, v34, v35);
      v38 = v55;
      v37 = v56;
      (*(v55 + 104))(v36, *MEMORY[0x1E69B8148], v56);
      v39 = sub_1BD1D8418(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v41 = v39[2];
      v40 = v39[3];
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1BD1D8418(v40 > 1, v41 + 1, 1, v39);
      }

      v39[2] = v41 + 1;
      (*(v38 + 32))(v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v41, v36, v37);
    }

    if (v29)
    {
      sub_1BD0E5E8C(0, &unk_1EBD444B0);
      v42 = sub_1BE052F24();
      v43 = sub_1BE052404();
      [v42 setProvisioningSID_];

      v44 = sub_1BE04B934();
      if ([v44 respondsToSelector_])
      {
        v45 = swift_allocObject();
        v46 = v62;
        *(v45 + 16) = sub_1BD3B71A0;
        *(v45 + 24) = v46;
        aBlock[4] = sub_1BD3B71B4;
        aBlock[5] = v45;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD3B6174;
        aBlock[3] = &block_descriptor_76;
        v47 = _Block_copy(aBlock);
        sub_1BE048964();
        v48 = v42;
        sub_1BE048964();

        [v44 meetsProvisioningRequirements:v48 completion:v47];
        _Block_release(v47);
        swift_unknownObjectRelease();

        (*(v60 + 8))(v27, v61);
      }

      else
      {
        (*(v60 + 8))(v27, v61);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1BE04B8E4();
      v49 = objc_allocWithZone(sub_1BE04C294());
      v50 = sub_1BE04C274();
      v51 = swift_allocObject();
      v52 = v62;
      *(v51 + 16) = sub_1BD3B71A0;
      *(v51 + 24) = v52;
      sub_1BE048964();
      sub_1BE04C284();

      (*(v60 + 8))(v27, v61);
    }
  }

  else
  {
    sub_1BD3B4FC8(MEMORY[0x1E69E7CC0], v26, v53, a4);
  }
}

uint64_t sub_1BD3B71F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9PassKitUI10ShareSheetVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD3B72D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a1;
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444D0);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v6 = v31 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444D8);
  MEMORY[0x1EEE9AC00](v32, v7);
  v34 = v31 - v8;
  v9 = sub_1BE04FDA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD444E0);
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v15);
  v17 = v31 - v16;
  if (PKIsPad())
  {
    v18 = *(v2 + 32);
    v45 = *(v2 + 48);
    v46 = *(v2 + 64);
    v19 = *v2;
    v43 = *(v2 + 16);
    v44 = v18;
    v42 = v19;
    *v13 = sub_1BE0516E4();
    (*(v10 + 104))(v13, *MEMORY[0x1E697C8C0], v9);
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    v31[0] = v9;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37420);
    v21 = sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420);
    *&v29 = sub_1BD0D7F70();
    *(&v29 + 1) = sub_1BD0D7FC4();
    sub_1BE050934();
    (*(v10 + 8))(v13, v31[0]);
    v22 = v33;
    (*(v14 + 16))(v34, v17, v33);
    swift_storeEnumTagMultiPayload();
    *&v37 = v20;
    *(&v37 + 1) = &type metadata for ShareSheet;
    *&v38 = &type metadata for ShareSheet;
    *(&v38 + 1) = v21;
    v39 = v29;
    swift_getOpaqueTypeConformance2();
    *&v37 = v20;
    *(&v37 + 1) = &type metadata for ShareSheet;
    *&v38 = &type metadata for ShareSheet;
    *(&v38 + 1) = v21;
    v39 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v14 + 8))(v17, v22);
  }

  else
  {
    v24 = *(v2 + 48);
    v39 = *(v2 + 32);
    v40 = v24;
    v41 = *(v2 + 64);
    v25 = *(v2 + 16);
    v37 = *v2;
    v38 = v25;
    sub_1BD3B79E4(v2, &v42);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37420);
    v27 = sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420);
    *&v30 = sub_1BD0D7F70();
    *(&v30 + 1) = sub_1BD0D7FC4();
    sub_1BE050F74();
    v45 = v40;
    v46 = v41;
    v43 = v38;
    v44 = v39;
    v42 = v37;
    sub_1BD0DE53C(&v42, &qword_1EBD444E8);
    v28 = v36;
    (*(v3 + 16))(v34, v6, v36);
    swift_storeEnumTagMultiPayload();
    *&v37 = v26;
    *(&v37 + 1) = &type metadata for ShareSheet;
    *&v38 = &type metadata for ShareSheet;
    *(&v38 + 1) = v27;
    v39 = v30;
    swift_getOpaqueTypeConformance2();
    *&v37 = v26;
    *(&v37 + 1) = &type metadata for ShareSheet;
    *&v38 = &type metadata for ShareSheet;
    *(&v38 + 1) = v27;
    v39 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v3 + 8))(v6, v28);
  }
}

uint64_t sub_1BD3B791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();

  return sub_1BD0D44B8(v6);
}

unint64_t sub_1BD3B7A1C()
{
  result = qword_1EBD444F0;
  if (!qword_1EBD444F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD444F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37420);
    sub_1BD0DE4F4(&qword_1EBD37428, &qword_1EBD37420);
    sub_1BD0D7F70();
    sub_1BD0D7FC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD444F0);
  }

  return result;
}

uint64_t type metadata accessor for DownloadDocumentCell()
{
  result = qword_1EBD44508;
  if (!qword_1EBD44508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3B7BE8()
{
  sub_1BD3B7D94();
  if (v0 <= 0x3F)
  {
    sub_1BD3B7DE0(319, &qword_1EBD52540, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1BD3B7DE0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD44518, &qword_1EBD44520);
        if (v3 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD44528, &unk_1EBD3CF70);
          if (v4 <= 0x3F)
          {
            sub_1BD3B7E30();
            if (v5 <= 0x3F)
            {
              sub_1BD3B7EC4();
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

unint64_t sub_1BD3B7D94()
{
  result = qword_1EBD45650;
  if (!qword_1EBD45650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45650);
  }

  return result;
}

void sub_1BD3B7DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD3B7E30()
{
  if (!qword_1EBD44530)
  {
    type metadata accessor for SavingsStatementsModel(255);
    sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44530);
    }
  }
}

void sub_1BD3B7EC4()
{
  if (!qword_1EBD44538)
  {
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD3B7F58(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44538);
    }
  }
}

uint64_t sub_1BD3B7F58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD3B7FB4()
{
  result = qword_1EBD44540;
  if (!qword_1EBD44540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44540);
  }

  return result;
}

unint64_t sub_1BD3B800C()
{
  result = qword_1EBD44548;
  if (!qword_1EBD44548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44548);
  }

  return result;
}

uint64_t sub_1BD3B807C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44550);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44558);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v16 - v7;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44560);
  sub_1BD3B8274(v0, &v8[*(v9 + 44)]);
  v10 = *(v0 + 72);
  *v16 = *(v0 + 56);
  *&v16[2] = v10;
  v11 = *(v0 + 104);
  *&v16[4] = *(v0 + 88);
  *&v16[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44568);
  sub_1BE0516C4();
  v12 = &v8[*(v5 + 36)];
  v13 = *&v16[15];
  *(v12 + 2) = *&v16[13];
  *(v12 + 3) = v13;
  *(v12 + 8) = v16[17];
  v14 = *&v16[11];
  *v12 = *&v16[9];
  *(v12 + 1) = v14;
  type metadata accessor for DownloadDocumentCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
  sub_1BE0516C4();
  sub_1BD3BA60C();
  sub_1BE0506D4();
  sub_1BD0DE53C(v4, &qword_1EBD44550);
  return sub_1BD0DE53C(v8, &qword_1EBD44558);
}

uint64_t sub_1BD3B8274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v111 = &v93 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v95 = &v93 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44598);
  MEMORY[0x1EEE9AC00](v107, v16);
  v108 = &v93 - v17;
  v18 = type metadata accessor for DownloadDocumentCell();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v22 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v104 = *(v23 - 8);
  v105 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v93 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A0);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v31);
  v96 = &v93 - v32;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445A8);
  MEMORY[0x1EEE9AC00](v106, v33);
  v97 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v100 = &v93 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v110 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v109 = &v93 - v43;
  v44 = *(a1 + 24);
  v45 = v44[2];
  if (v45 < 2)
  {
    if (v45 == 1)
    {
      v101 = v10;
      v102 = v4;
      v103 = a2;
      v67 = v44[4];
      v66 = v44[5];
      v68 = *(a1 + 8);
      v113 = *a1;
      v114 = v68;
      sub_1BD3BA718(a1, &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v69 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v70 = (v20 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      sub_1BD3BA77C(v22, v71 + v69);
      v72 = (v71 + v70);
      *v72 = v67;
      v72[1] = v66;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE051744();
      v73 = *(a1 + 48);
      LOBYTE(v113) = *(a1 + 40);
      v114 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516A4();
      if (v117)
      {
        v74 = 1;
        a2 = v103;
        v75 = v104;
        v76 = v101;
        v58 = v109;
        v77 = v105;
      }

      else
      {
        v79 = [*(a1 + 16) identifier];
        v76 = v101;
        v75 = v104;
        v77 = v105;
        if (v79)
        {

          v74 = 0;
        }

        else
        {
          v74 = 1;
        }

        a2 = v103;
        v58 = v109;
      }

      KeyPath = swift_getKeyPath();
      v81 = swift_allocObject();
      *(v81 + 16) = v74;
      v82 = v94;
      (*(v75 + 32))(v94, v26, v77);
      v83 = (v82 + *(v76 + 36));
      *v83 = KeyPath;
      v83[1] = sub_1BD10DF54;
      v83[2] = v81;
      v84 = v95;
      sub_1BD3BA7E4(v82, v95);
      sub_1BD0DE19C(v84, v108, &qword_1EBD44590);
      swift_storeEnumTagMultiPayload();
      sub_1BD3BA854();
      sub_1BD3BAA6C();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v84, &qword_1EBD44590);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8);
      (*(*(v85 - 8) + 56))(v58, 0, 1, v85);
      v4 = v102;
    }

    else
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8);
      v58 = v109;
      (*(*(v78 - 8) + 56))(v109, 1, 1, v78);
    }
  }

  else
  {
    v102 = v4;
    v103 = a2;
    v101 = v10;
    v46 = *(a1 + 8);
    v113 = *a1;
    v114 = v46;
    sub_1BD3BA718(a1, &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v47 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v48 = swift_allocObject();
    sub_1BD3BA77C(v22, v48 + v47);
    sub_1BD0DDEBC();
    sub_1BE048C84();
    sub_1BE051744();
    v49 = (a1 + *(v18 + 60));
    v50 = v49[1];
    v117 = *v49;
    v118 = v50;
    v51 = *(a1 + 128);
    v115 = *(a1 + 120);
    v116 = v51;
    sub_1BE048C84();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    v52 = sub_1BE0516C4();
    v94 = &v93;
    MEMORY[0x1EEE9AC00](v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445D0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD3BA9BC();
    v54 = 1;
    v55 = v96;
    v56 = v105;
    sub_1BE050C84();

    (*(v104 + 8))(v30, v56);
    v57 = *(a1 + 48);
    LOBYTE(v113) = *(a1 + 40);
    v114 = v57;
    sub_1BE0516A4();
    v58 = v109;
    if ((v117 & 1) == 0)
    {
      v59 = [*(a1 + 16) identifier];
      if (v59)
      {

        v54 = 0;
      }
    }

    v60 = swift_getKeyPath();
    v61 = swift_allocObject();
    *(v61 + 16) = v54;
    v62 = v97;
    (*(v98 + 32))(v97, v55, v99);
    v63 = (v62 + *(v106 + 36));
    *v63 = v60;
    v63[1] = sub_1BD185ABC;
    v63[2] = v61;
    v64 = v100;
    sub_1BD0644A4(v62, v100);
    sub_1BD0DE19C(v64, v108, &qword_1EBD445A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BA854();
    sub_1BD3BAA6C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v64, &qword_1EBD445A8);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445B8);
    (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
    v4 = v102;
    a2 = v103;
  }

  v86 = v111;
  sub_1BE04E4F4();
  v87 = *(a1 + 48);
  LOBYTE(v113) = *(a1 + 40);
  v114 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  *(v86 + *(v4 + 36)) = (v117 & 1) == 0;
  v88 = v110;
  sub_1BD0DE19C(v58, v110, &qword_1EBD445B0);
  v89 = v112;
  sub_1BD0DE19C(v86, v112, &qword_1EBD3B2E0);
  sub_1BD0DE19C(v88, a2, &qword_1EBD445B0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445C0);
  v91 = a2 + *(v90 + 48);
  *v91 = 0;
  *(v91 + 8) = 1;
  sub_1BD0DE19C(v89, a2 + *(v90 + 64), &qword_1EBD3B2E0);
  sub_1BD0DE53C(v86, &qword_1EBD3B2E0);
  sub_1BD0DE53C(v58, &qword_1EBD445B0);
  sub_1BD0DE53C(v89, &qword_1EBD3B2E0);
  return sub_1BD0DE53C(v88, &qword_1EBD445B0);
}

uint64_t sub_1BD3B8EEC(uint64_t a1)
{
  v2 = type metadata accessor for DownloadDocumentCell();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v9[1] = *(a1 + 24);
  swift_getKeyPath();
  sub_1BD3BA718(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD3BA77C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD445E8, &unk_1EBD45AA0);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  return sub_1BE0519C4();
}

uint64_t sub_1BD3B90DC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = *a1;
  v8 = a1[1];
  v15[0] = sub_1BD3B9238();
  v15[1] = v10;
  sub_1BD3BA718(a2, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1BD3BA77C(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v9;
  v13[1] = v8;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  return sub_1BE051744();
}

id sub_1BD3B9238()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE0524C4();
  v7 = v5;
  if ((v6 != 5657411 || v5 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 5785167 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 5785169 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 5194321 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 4606289 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 5459032 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 1481854040 || v7 != 0xE400000000000000) && (sub_1BE053B84() & 1) == 0 && (v6 != 4605008 || v7 != 0xE300000000000000) && (sub_1BE053B84() & 1) == 0)
  {
    return v6;
  }

  (*(v1 + 104))(v4, *MEMORY[0x1E69B80E0], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v6 = sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1BD3B963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28[-v8];
  v10 = type metadata accessor for DownloadDocumentCell();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 32))
  {
    v15 = sub_1BE0528D4();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_1BD3BA718(a1, &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_1BE0528A4();
    sub_1BE048C84();
    v16 = sub_1BE052894();
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_1BD3BA77C(v14, v18 + v17);
    v20 = (v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v20 = a2;
    v20[1] = a3;
    sub_1BD122C00(0, 0, v9, &unk_1BE0D20E8, v18);
  }

  else
  {
    v21 = *(a1 + 48);
    v28[16] = *(a1 + 40);
    v29 = v21;
    v28[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    v22 = *(a1 + *(v10 + 48));
    if (v22)
    {
      v23 = *(a1 + 16);
      sub_1BD3BA718(a1, &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v25 = swift_allocObject();
      sub_1BD3BA77C(v14, v25 + v24);
      v26 = (v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v26 = a2;
      v26[1] = a3;
      v27 = v22;
      sub_1BE048C84();
      sub_1BD2F56F0(v23, a2, a3, sub_1BD3BAFF8, v25);
    }

    else
    {
      type metadata accessor for SavingsStatementsModel(0);
      sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

uint64_t sub_1BD3B9984(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v41 - v9;
  v11 = sub_1BE0524B4();
  v13 = v12;
  if (v11 == 7762787 && v12 == 0xE300000000000000 || (v14 = v11, (sub_1BE053B84() & 1) != 0) || v14 == 6710384 && v13 == 0xE300000000000000)
  {
  }

  else
  {
    v20 = sub_1BE053B84();

    if ((v20 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BE0B69E0;
      v22 = sub_1BE04AA64();
      *(v21 + 56) = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a1, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD445F0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BE0BA730;
      v25 = *MEMORY[0x1E69CDAC0];
      v26 = *MEMORY[0x1E69CDAE8];
      v27 = MEMORY[0x1E69CDAC8];
      *(v24 + 32) = *MEMORY[0x1E69CDAC0];
      *(v24 + 40) = v26;
      v28 = *v27;
      v29 = *MEMORY[0x1E69CDAE0];
      *(v24 + 48) = *v27;
      *(v24 + 56) = v29;
      v30 = *MEMORY[0x1E69CDAD0];
      *(v24 + 64) = *MEMORY[0x1E69CDAD0];
      LOBYTE(v46[0]) = 0;
      v31 = v25;
      v32 = v26;
      v33 = v28;
      v34 = v29;
      v35 = v30;
      sub_1BE051694();
      v36 = *(v1 + 56);
      v37 = *(v1 + 88);
      v46[1] = *(v1 + 72);
      v46[2] = v37;
      v46[3] = *(v1 + 104);
      v38 = *(v1 + 72);
      v42 = *(v1 + 56);
      v39 = *(v1 + 88);
      v40 = *(v1 + 104);
      v43 = v38;
      v44 = v39;
      v45 = v40;
      v46[0] = v36;
      v41[1] = LOBYTE(v47[0]);
      v41[2] = *(&v47[0] + 1);
      v41[3] = v21;
      v41[4] = 0;
      v41[7] = 0;
      v41[5] = v24;
      v41[6] = 0;
      sub_1BD0DE19C(v46, v47, &qword_1EBD44568);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44568);
      sub_1BE0516B4();
      v47[0] = v42;
      v47[1] = v43;
      v47[2] = v44;
      v47[3] = v45;
      v17 = v47;
      v18 = &qword_1EBD44568;
      return sub_1BD0DE53C(v17, v18);
    }
  }

  v15 = sub_1BE04AA64();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a1, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  type metadata accessor for DownloadDocumentCell();
  sub_1BD0DE19C(v10, v6, &unk_1EBD3CF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);
  sub_1BE0516B4();
  v17 = v10;
  v18 = &unk_1EBD3CF70;
  return sub_1BD0DE53C(v17, v18);
}

uint64_t sub_1BD3B9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for DownloadDocumentCell();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  sub_1BE0528A4();
  v6[17] = sub_1BE052894();
  v10 = sub_1BE052844();
  v6[18] = v10;
  v6[19] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD3B9ED0, v10, v9);
}

uint64_t sub_1BD3B9ED0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (v2 + *(v1 + 52));
  v4 = *v3;
  *(v0 + 160) = *v3;
  if (v4)
  {
    v5 = (v2 + *(v1 + 56));
    v6 = *v5;
    v7 = v5[2];
    *(v0 + 32) = v5[1];
    *(v0 + 48) = v7;
    *(v0 + 16) = v6;
    sub_1BE048964();
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_1BD3BA01C;

    return sub_1BDA809C4(v0 + 16, 1);
  }

  else
  {
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD3B7F58(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);

    return sub_1BE04EEB4();
  }
}

uint64_t sub_1BD3BA01C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BD3BA160, v3, v2);
}

uint64_t sub_1BD3BA160()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  if (*(v0 + 176) != 1)
  {
LABEL_10:

    v22 = *(v0 + 8);

    return v22();
  }

  v1 = *(v0 + 80);
  v2 = *(v1 + 48);
  *(v0 + 64) = *(v1 + 40);
  v3 = *(v0 + 104);
  *(v0 + 72) = v2;
  *(v0 + 177) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v4 = (v1 + *(v3 + 48));
  if (*v4)
  {
    v5 = *(*(v0 + 80) + 16);
    v6 = *v4;
    v7 = [v5 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BE052434();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    sub_1BD3BA718(*(v0 + 80), v13);
    v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_1BD3BA77C(v13, v20 + v18);
    v21 = (v20 + v19);
    *v21 = v17;
    v21[1] = v16;
    sub_1BE048C84();
    sub_1BD2F5A40(v9, v11, sub_1BD3BB2B0, v20);

    goto LABEL_10;
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD3B7F58(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel);

  return sub_1BE04EEB4();
}

uint64_t sub_1BD3BA40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 48);
  v19 = *(a2 + 40);
  v20 = v15;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v9, &unk_1EBD3CF70);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BD0DE53C(v9, &unk_1EBD3CF70);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1BD3B9984(v14);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1BD3BA60C()
{
  result = qword_1EBD44570;
  if (!qword_1EBD44570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44558);
    sub_1BD0DE4F4(&qword_1EBD44578, &qword_1EBD44580);
    sub_1BD3BA6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44570);
  }

  return result;
}

unint64_t sub_1BD3BA6C4()
{
  result = qword_1EBD44588;
  if (!qword_1EBD44588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44588);
  }

  return result;
}

uint64_t sub_1BD3BA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BA77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadDocumentCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BA7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD3BA854()
{
  result = qword_1EBD445C8;
  if (!qword_1EBD445C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445D0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD0DDEBC();
    sub_1BD3BA9BC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445C8);
  }

  return result;
}

unint64_t sub_1BD3BA9BC()
{
  result = qword_1EBD445D8;
  if (!qword_1EBD445D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD445D0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445D8);
  }

  return result;
}

unint64_t sub_1BD3BAA6C()
{
  result = qword_1EBD445E0;
  if (!qword_1EBD445E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44590);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD445E0);
  }

  return result;
}

uint64_t sub_1BD3BAB50()
{
  type metadata accessor for DownloadDocumentCell();

  return sub_1BD3B8E8C();
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for DownloadDocumentCell();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {

    if (*(v2 + 96))
    {
    }
  }

  v3 = v2 + *(v1 + 44);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD3BADB8(uint64_t *a1)
{
  v3 = *(type metadata accessor for DownloadDocumentCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD3B90DC(a1, v4);
}

void sub_1BD3BAE38()
{
  v1 = *(type metadata accessor for DownloadDocumentCell() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_1BD3B963C(v0 + v2, v4, v5);
}

uint64_t sub_1BD3BAEC8(uint64_t a1)
{
  v4 = *(type metadata accessor for DownloadDocumentCell() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD3B9DD0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for DownloadDocumentCell();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72))
  {

    if (*(v2 + 96))
    {
    }
  }

  v3 = v2 + *(v1 + 44);
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44500);

  return swift_deallocObject();
}

uint64_t sub_1BD3BB214(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadDocumentCell() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1BD3BA40C(a1, v1 + v4, *v5, v5[1]);
}

uint64_t NearbyPeerPaymentButtonsView.Action.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyPeerPaymentButtonsView.Action.id.setter(uint64_t a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1BD3BB3B4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3BE268(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v7, v8 + v9);
  swift_endAccess();
  sub_1BD3BB48C();
  return sub_1BD3BE370(v7, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
}

id sub_1BD3BB48C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v67 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v65 - v15;
  v69 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  MEMORY[0x1EEE9AC00](v69, v17);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v65 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v65 - v29;
  v31 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v1[v35], v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return sub_1BD3BD7F8();
    }

    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688) + 48);
    sub_1BD3BE790(v34, v22, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE790(&v34[v42], v68, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BE053294();
    v43 = sub_1BE053274();
    v66 = *(*(v43 - 8) + 48);
    if (v66(v9, 1, v43))
    {
      sub_1BD3BE7F8(v9, v67);
      sub_1BE0532A4();
      sub_1BD0DE53C(v9, &qword_1EBD3D100);
      v44 = v69;
    }

    else
    {
      v44 = v69;
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    v51 = &v22[*(v44 + 24)];
    v53 = *v51;
    v52 = *(v51 + 1);
    v54 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
    v55 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
    *v54 = v53;
    *(v54 + 1) = v52;
    sub_1BE048964();
    sub_1BD0D4744(v55);
    sub_1BE053294();
    v56 = v66(v5, 1, v43);
    v57 = v68;
    if (v56)
    {
      sub_1BD3BE7F8(v5, v67);
      sub_1BE0532A4();
      sub_1BD0DE53C(v5, &qword_1EBD3D100);
    }

    else
    {
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    v59 = (v57 + *(v44 + 24));
    v61 = *v59;
    v60 = v59[1];
    v62 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
    v63 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
    *v62 = v61;
    *(v62 + 1) = v60;
    sub_1BE048964();
    sub_1BD0D4744(v63);
    [v1 setNeedsLayout];
    sub_1BD3BE370(v57, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v58 = v22;
LABEL_16:
    sub_1BD3BE370(v58, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    return sub_1BD3BD7F8();
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BD3BE790(v34, v26, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v45 = &v26[*(v69 + 24)];
    v47 = *v45;
    v46 = *(v45 + 1);
    v48 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
    v49 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
    *v48 = v47;
    *(v48 + 1) = v46;
    sub_1BE048964();
    sub_1BD0D4744(v49);
    sub_1BE053294();
    v50 = sub_1BE053274();
    if ((*(*(v50 - 8) + 48))(v16, 1, v50))
    {
      sub_1BD3BE7F8(v16, v67);
      sub_1BE0532A4();
      sub_1BD0DE53C(v16, &qword_1EBD3D100);
    }

    else
    {
      sub_1BE048C84();
      sub_1BE053234();
      sub_1BE0532A4();
    }

    [v1 setNeedsLayout];
    v58 = v26;
    goto LABEL_16;
  }

  sub_1BD3BE790(v34, v30, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  v37 = &v30[*(v69 + 24)];
  v39 = *v37;
  v38 = *(v37 + 1);
  sub_1BE048964();
  sub_1BD3BE370(v30, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  v40 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  v41 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  *v40 = v39;
  *(v40 + 1) = v38;
  sub_1BD0D4744(v41);
  return sub_1BD3BD7F8();
}

uint64_t sub_1BD3BBAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  return sub_1BD3BE268(v1 + v3, a1);
}

uint64_t sub_1BD3BBB2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(a1, v1 + v3);
  swift_endAccess();
  sub_1BD3BB48C();
  return sub_1BD3BE370(a1, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
}

id (*sub_1BD3BBBAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD3BBC10;
}

id sub_1BD3BBC10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BD3BB48C();
  }

  return result;
}

id sub_1BD3BBC44()
{
  type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  swift_storeEnumTagMultiPayload();
  v1 = &v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v5 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BD3BBF08();

  return v8;
}

id sub_1BD3BBDA0(void *a1)
{
  type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  swift_storeEnumTagMultiPayload();
  v3 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v7 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v8 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v9 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v14.receiver = v1;
  v14.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_1BD3BBF08();
  }

  return v11;
}

id sub_1BD3BBF08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44678);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v136 = &v108 - v4;
  v5 = sub_1BE053204();
  v134 = *(v5 - 8);
  v135 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1BE053104();
  v139 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v8);
  v131 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04D3C4();
  v124 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v10);
  v140 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v108 - v14;
  v126 = sub_1BE04D284();
  v120 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v16);
  v119 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v118 = &v108 - v20;
  v138 = sub_1BE053274();
  v21 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v22);
  v110 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v122 = &v108 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v108 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v123 = &v108 - v32;
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC78]);
  if (result)
  {
    v34 = result;
    v35 = objc_opt_self();
    v36 = [v35 configurationWithFont:v34 scale:2];

    v37 = v36;
    v38 = [v35 configurationWithWeight_];
    v39 = [v37 configurationByApplyingConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BE0B7020;
    v41 = objc_opt_self();
    v42 = v39;
    v125 = v41;
    *(v40 + 32) = [v41 labelColor];
    sub_1BD1F2290();
    v43 = sub_1BE052724();

    v44 = [v35 configurationWithPaletteColors_];

    v45 = [v42 configurationByApplyingConfiguration_];
    v46 = v45;
    if (_UISolariumEnabled())
    {
      v47 = v123;
      sub_1BE053114();
    }

    else
    {
      v47 = v123;
      sub_1BE053224();
    }

    v48 = sub_1BE052404();
    v49 = [objc_opt_self() systemImageNamed_];

    sub_1BE053214();
    v108 = v46;
    sub_1BE0530C4();
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v50 = v118;
      sub_1BE04D274();
      v51 = [objc_opt_self() effectWithStyle_];
      sub_1BE04D254();
      sub_1BE04D244();
      v52 = v120;
      v53 = v126;
      (*(v120 + 16))(v119, v50, v126);
      sub_1BE0530E4();
      (*(v52 + 8))(v50, v53);
    }

    v54 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton];
    v55 = v138;
    v129 = *(v21 + 16);
    v130 = v21 + 16;
    v129(v15, v47, v138);
    v109 = v21;
    v127 = *(v21 + 56);
    v128 = v21 + 56;
    v127(v15, 0, 1, v55);
    sub_1BE0532A4();
    [v54 addTarget:v1 action:sel_closeTapped forControlEvents:64];
    [v54 setHidden_];
    v56 = *MEMORY[0x1E69B9708];
    [v54 setAccessibilityIdentifier_];
    [v1 addSubview_];
    sub_1BE04D3D4();
    if (_UISolariumEnabled())
    {
      v57 = v121;
      sub_1BE053134();
    }

    else
    {
      v57 = v121;
      sub_1BE053224();
    }

    if (_UISolariumEnabled())
    {
      v58 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
      v59 = v125;
      v60 = [v125 whiteColor];
      [v58 setTintColor_];
    }

    else
    {
      v61 = v118;
      sub_1BE04D274();
      v62 = v125;
      v63 = [v125 whiteColor];
      sub_1BE04D264();
      v64 = v120;
      v65 = *(v120 + 16);
      v117 = v15;
      v66 = v126;
      v65(v119, v61, v126);
      sub_1BE0530E4();
      v67 = v61;
      v15 = v117;
      v59 = v62;
      (*(v64 + 8))(v67, v66);
    }

    v68 = [v59 blackColor];
    sub_1BE0531E4();
    v69 = *(v139 + 104);
    LODWORD(v117) = *MEMORY[0x1E69DC508];
    v139 += 104;
    v116 = v69;
    v69(v131);
    sub_1BE053124();
    v70 = *(v134 + 104);
    v115 = *MEMORY[0x1E69DC568];
    v134 += 104;
    v114 = v70;
    v70(v133);
    sub_1BE0530F4();
    v71 = v57;
    v72 = v124;
    v74 = v136;
    v73 = v137;
    v113 = *(v124 + 16);
    v113(v136, v140, v137);
    v112 = *(v72 + 56);
    v112(v74, 0, 1, v73);
    sub_1BE0531F4();
    v75 = *&v1[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
    v76 = v138;
    v129(v15, v71, v138);
    v127(v15, 0, 1, v76);
    sub_1BE0532A4();
    [v75 addTarget:v1 action:sel_closeTapped forControlEvents:64];
    [v75 setHidden_];
    [v75 setAccessibilityIdentifier_];
    [v1 addSubview_];
    v77 = _UISolariumEnabled();
    v111 = v1;
    v78 = v122;
    if (v77)
    {
      sub_1BE053134();
    }

    else
    {
      sub_1BE053224();
    }

    v79 = _UISolariumEnabled();
    v81 = v125;
    v80 = v126;
    if (v79)
    {
      v82 = v111;
      v83 = *&v111[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton];
      v84 = [v125 whiteColor];
      [v83 setTintColor_];
    }

    else
    {
      v85 = v118;
      sub_1BE04D274();
      v86 = [v81 whiteColor];
      sub_1BE04D264();
      v87 = v120;
      (*(v120 + 16))(v119, v85, v80);
      sub_1BE0530E4();
      (*(v87 + 8))(v85, v80);
      v82 = v111;
    }

    v88 = [v81 blackColor];
    sub_1BE0531E4();
    v116(v131, v117, v132);
    sub_1BE053124();
    v114(v133, v115, v135);
    sub_1BE0530F4();
    v89 = v78;
    v91 = v136;
    v90 = v137;
    v113(v136, v140, v137);
    v112(v91, 0, 1, v90);
    sub_1BE0531F4();
    v92 = *&v82[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton];
    v93 = v138;
    v129(v15, v89, v138);
    v127(v15, 0, 1, v93);
    sub_1BE0532A4();
    [v92 addTarget:v82 action:sel_primaryTapped forControlEvents:64];
    [v92 setHidden_];
    [v92 setAccessibilityIdentifier_];
    [v82 addSubview_];
    if (_UISolariumEnabled())
    {
      v94 = v110;
      sub_1BE053114();
      if (_UISolariumEnabled())
      {
        goto LABEL_24;
      }
    }

    else
    {
      v94 = v110;
      sub_1BE053224();
      if (_UISolariumEnabled())
      {
LABEL_24:
        v101 = [v81 labelColor];
        sub_1BE0531E4();
        v116(v131, v117, v132);
        sub_1BE053124();
        v114(v133, v115, v135);
        sub_1BE0530F4();
        v102 = v136;
        v103 = v137;
        v104 = v140;
        v113(v136, v140, v137);
        v112(v102, 0, 1, v103);
        sub_1BE0531F4();
        v105 = *&v82[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton];
        v106 = v138;
        v129(v15, v94, v138);
        v127(v15, 0, 1, v106);
        sub_1BE0532A4();
        [v105 addTarget:v82 action:sel_secondaryTapped forControlEvents:64];
        [v105 setHidden_];
        [v105 setAccessibilityIdentifier_];
        [v82 addSubview_];

        v107 = *(v109 + 8);
        v107(v94, v106);
        v107(v122, v106);
        v107(v121, v106);
        (*(v124 + 8))(v104, v103);
        return (v107)(v123, v106);
      }
    }

    v95 = v118;
    sub_1BE04D274();
    v96 = [objc_opt_self() effectWithStyle_];
    sub_1BE04D254();
    v97 = v120;
    v98 = v126;
    (*(v120 + 16))(v119, v95, v126);
    sub_1BE0530E4();
    v99 = v95;
    v81 = v125;
    v100 = v98;
    v82 = v111;
    (*(v97 + 8))(v99, v100);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3BCF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04A604();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

BOOL sub_1BD3BCFE0()
{
  result = PKIsSmallDevice();
  v1 = 50.0;
  if (result)
  {
    v1 = 34.0;
  }

  qword_1EBD445F8 = *&v1;
  return result;
}

uint64_t sub_1BD3BD018()
{
  v1 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v6 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v0[v6], v4);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    [v0 bounds];
    sub_1BD3BD654(&v15, v8, v9);
    v10 = v16;
    PKContentAlignmentMake();
    PKContentAlignmentMake();
    if ((v10 & 1) == 0)
    {
      PKContentAlignmentMake();
      PKContentAlignmentMake();
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688) + 48);
    [v0 bounds];
    PKSizeAlignedInRect();
    [*&v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton] setFrame_];
    [v0 bounds];
    PKSizeAlignedInRect();
    [*&v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton] setFrame_];
    sub_1BD3BE370(&v4[v11], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  else if (result)
  {
    [v0 bounds];
    v12 = *&v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
    [v0 bounds];
    [v12 sizeThatFits_];
    if (qword_1EBD36BF0 != -1)
    {
      swift_once();
    }

    [v0 bounds];
    PKSizeAlignedInRect();
    [v12 setFrame_];
  }

  else
  {
    [v0 bounds];
    PKSizeAlignedInRect();
    [*&v0[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton] setFrame_];
  }

  return sub_1BD3BE370(v4, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
}

double sub_1BD3BD40C(double a1, double a2)
{
  v5 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(&v2[v9], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = *&v2[OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton];
      [v2 bounds];
      [v12 sizeThatFits_];
      if (qword_1EBD36BF0 != -1)
      {
        swift_once();
      }
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD3BD654(v16, a1, a2);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688);
    sub_1BD3BE370(&v8[*(v11 + 48)], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
LABEL_8:
    sub_1BD3BE370(v8, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  return a1;
}

id sub_1BD3BD654@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  [*(v3 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton) sizeThatFits_];
  v8 = v7;
  v10 = v9;
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton) sizeThatFits_];
  v13 = a2 * 0.5 + -8.0;
  v15 = fmax(v8, v14);
  v16 = v15 <= v13;
  if (v15 <= v13)
  {
    if (qword_1EBD36BF0 != -1)
    {
      v17 = v12;
      result = swift_once();
      v12 = v17;
    }

    if (v10 > v12)
    {
      v12 = v10;
    }

    if (v12 > *&qword_1EBD445F8)
    {
      v10 = v12;
    }

    else
    {
      v10 = *&qword_1EBD445F8;
    }

    a2 = v13;
    v12 = v10;
  }

  *a1 = a2;
  *(a1 + 8) = v10;
  *(a1 + 16) = a2;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  return result;
}

char *sub_1BD3BD778(char *result, uint64_t a2, void *a3)
{
  v3 = *&result[*a3];
  if (v3)
  {
    v4 = result;
    v5 = sub_1BD0D44B8(v3);
    v3(v5);

    return sub_1BD0D4744(v3);
  }

  return result;
}

id sub_1BD3BD7F8()
{
  v1 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v55 = &v52 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v53 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v52 - v27;
  v29 = *(v0 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_closeButton);
  v30 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE268(v0 + v30, v28);
  v31 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  sub_1BD3BE790(v28, v24, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = EnumCaseMultiPayload != 0;
  if (EnumCaseMultiPayload)
  {
    v34 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  }

  else
  {
    v34 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
  }

  sub_1BD3BE370(v24, v34);
  [v29 setHidden_];
  v35 = *(v0 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_singleButton);
  sub_1BD3BE268(v0 + v30, v20);
  sub_1BD3BE790(v20, v16, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v36 = swift_getEnumCaseMultiPayload();
  v37 = v36 != 1;
  if (v36 == 1)
  {
    v38 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
  }

  else
  {
    v38 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  }

  sub_1BD3BE370(v16, v38);
  v39 = v37;
  v40 = v53;
  [v35 setHidden_];
  v41 = *(v0 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_primaryButton);
  v42 = v54;
  sub_1BD3BE268(v0 + v30, v54);
  sub_1BD3BE790(v42, v40, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 == 2)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688);
    v31 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
    sub_1BD3BE370(v40 + *(v44 + 48), type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  sub_1BD3BE370(v40, v31);
  [v41 setHidden_];
  v45 = *(v0 + OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_secondaryButton);
  v46 = v55;
  sub_1BD3BE268(v0 + v30, v55);
  v47 = type metadata accessor for NearbyPeerPaymentButtonsView.Style;
  v48 = v56;
  sub_1BD3BE790(v46, v56, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v49 = swift_getEnumCaseMultiPayload();
  if (v49 == 2)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688);
    v47 = type metadata accessor for NearbyPeerPaymentButtonsView.Action;
    sub_1BD3BE370(v48 + *(v50 + 48), type metadata accessor for NearbyPeerPaymentButtonsView.Action);
  }

  sub_1BD3BE370(v48, v47);
  return [v45 setHidden_];
}

id NearbyPeerPaymentButtonsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentButtonsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentButtonsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s9PassKitUI28NearbyPeerPaymentButtonsViewC5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v55 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v53 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v53 - v22;
  v24 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v53 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v53 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44680);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v53 - v38;
  v41 = &v53 + *(v40 + 56) - v38;
  sub_1BD3BE268(a1, &v53 - v38);
  sub_1BD3BE268(a2, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BD3BE268(v39, v31);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v27 = v31;
        goto LABEL_15;
      }

      v50 = v31;
    }

    else
    {
      sub_1BD3BE268(v39, v35);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = v35;
LABEL_15:
        sub_1BD3BE370(v27, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
        goto LABEL_16;
      }

      v50 = v35;
    }

    sub_1BD3BE790(v50, v23, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE790(v41, v19, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v49 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
    sub_1BD3BE370(v19, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v51 = v23;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD3BE268(v39, v27);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F688) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1BD3BE370(&v27[v43], type metadata accessor for NearbyPeerPaymentButtonsView.Action);
      goto LABEL_15;
    }

    v44 = v53;
    sub_1BD3BE790(v27, v53, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v45 = v54;
    sub_1BD3BE790(v41, v54, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v46 = &v27[v43];
    v47 = v55;
    sub_1BD3BE790(v46, v55, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v48 = v56;
    sub_1BD3BE790(&v41[v43], v56, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    if (_s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0())
    {
      v49 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
    }

    else
    {
      v49 = 0;
    }

    sub_1BD3BE370(v48, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v47, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v45, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    v51 = v44;
LABEL_21:
    sub_1BD3BE370(v51, type metadata accessor for NearbyPeerPaymentButtonsView.Action);
    sub_1BD3BE370(v39, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
    return v49 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_1BD0DE53C(v39, &qword_1EBD44680);
    v49 = 0;
    return v49 & 1;
  }

  sub_1BD3BE370(v39, type metadata accessor for NearbyPeerPaymentButtonsView.Style);
  v49 = 1;
  return v49 & 1;
}

uint64_t sub_1BD3BE268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BE2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3BE370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD3BE3F4()
{
  result = qword_1EBD3A360;
  if (!qword_1EBD3A360)
  {
    sub_1BE04AFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A360);
  }

  return result;
}

uint64_t sub_1BD3BE454()
{
  result = type metadata accessor for NearbyPeerPaymentButtonsView.Style(319);
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

unint64_t sub_1BD3BE5E0()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    result = sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3BE66C()
{
  sub_1BD3BE6E0();
  if (v0 <= 0x3F)
  {
    sub_1BD3BE728();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD3BE6E0()
{
  if (!qword_1EBD44668)
  {
    v0 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD44668);
    }
  }
}

void sub_1BD3BE728()
{
  if (!qword_1EBD44670)
  {
    type metadata accessor for NearbyPeerPaymentButtonsView.Action(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD44670);
    }
  }
}

uint64_t sub_1BD3BE790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3BE7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI17BillingAddressRowV6Status33_AF594ADF3F7069D38D9EE3B9E90A7EABLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BD3BE8B0@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44690);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44698);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v27 - v13);
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD446A0);
  MEMORY[0x1EEE9AC00](v27[0], v15);
  v17 = v27 - v16;
  valid = type metadata accessor for BillingAddressRow.ValidAddress();
  MEMORY[0x1EEE9AC00](valid, v19);
  v21 = (v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    if (a3 == 1)
    {
      *v14 = a1;
      v14[1] = a2;
      swift_storeEnumTagMultiPayload();
      sub_1BD12B91C(a1, a2, 1);
      sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress);
      sub_1BD3BEE60();
      v22 = a1;
      v23 = a2;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v17, v10, &qword_1EBD446A0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3BEDA4();
      sub_1BD3BEEB4();
      sub_1BE04F9A4();

      return sub_1BD0DE53C(v17, &qword_1EBD446A0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BD3BEDA4();
      sub_1BD3BEEB4();
      return sub_1BE04F9A4();
    }
  }

  else
  {
    *v21 = a1;
    v25 = *(valid + 20);
    *(v21 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BEF08(v21, v14);
    swift_storeEnumTagMultiPayload();
    sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress);
    sub_1BD3BEE60();
    v26 = a1;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v17, v10, &qword_1EBD446A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD3BEDA4();
    sub_1BD3BEEB4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v17, &qword_1EBD446A0);
    return sub_1BD3BEF6C(v21);
  }
}

id sub_1BD3BECD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1BD3BE8B0(v3, v4, v5, a1);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44688) + 36);
  *v6 = 0;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return sub_1BD12B91C(v3, v4, v5);
}

uint64_t type metadata accessor for BillingAddressRow.ValidAddress()
{
  result = qword_1EBD446C8;
  if (!qword_1EBD446C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD3BEDA4()
{
  result = qword_1EBD446A8;
  if (!qword_1EBD446A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD446A0);
    sub_1BD3C0D64(&qword_1EBD446B0, type metadata accessor for BillingAddressRow.ValidAddress);
    sub_1BD3BEE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446A8);
  }

  return result;
}

unint64_t sub_1BD3BEE60()
{
  result = qword_1EBD446B8;
  if (!qword_1EBD446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446B8);
  }

  return result;
}

unint64_t sub_1BD3BEEB4()
{
  result = qword_1EBD446C0;
  if (!qword_1EBD446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446C0);
  }

  return result;
}

uint64_t sub_1BD3BEF08(uint64_t a1, uint64_t a2)
{
  valid = type metadata accessor for BillingAddressRow.ValidAddress();
  (*(*(valid - 8) + 16))(a2, a1, valid);
  return a2;
}

uint64_t sub_1BD3BEF6C(uint64_t a1)
{
  valid = type metadata accessor for BillingAddressRow.ValidAddress();
  (*(*(valid - 8) + 8))(a1, valid);
  return a1;
}

void sub_1BD3BF010()
{
  sub_1BD0E5E8C(319, &qword_1EBD406E0);
  if (v0 <= 0x3F)
  {
    sub_1BD3A0CE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD3BF0B4()
{
  result = qword_1EBD446D8;
  if (!qword_1EBD446D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44688);
    sub_1BD3BF16C();
    sub_1BD0DE4F4(&qword_1EBD446F0, &qword_1EBD446F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446D8);
  }

  return result;
}

unint64_t sub_1BD3BF16C()
{
  result = qword_1EBD446E0;
  if (!qword_1EBD446E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD446E8);
    sub_1BD3BEDA4();
    sub_1BD3BEEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD446E0);
  }

  return result;
}

id sub_1BD3BF214@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44708);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = PKOslo2024UIUpdatesEnabled();
  result = *a1;
  if (v12)
  {
    result = [result pkSingleLineFormattedContactAddress];
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = [result pkFormattedContactAddressWithoutName];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = result;
  v15 = sub_1BE052434();
  v17 = v16;

  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBDAB200;
  v19 = *algn_1EBDAB208;
  v20 = qword_1EBDAB210;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44710);
  sub_1BD3BF460(a1, v15, v17, &v11[*(v21 + 44)]);

  sub_1BD0DE19C(v11, v7, &qword_1EBD44708);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44718);
  sub_1BD0DE19C(v7, a2 + *(v22 + 48), &qword_1EBD44708);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v11, &qword_1EBD44708);
  sub_1BD0DE53C(v7, &qword_1EBD44708);
}

uint64_t sub_1BD3BF460@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v93 = &v85 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44720);
  MEMORY[0x1EEE9AC00](v92, v10);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v94 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v85 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v91 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v97 = &v85 - v29;
  v30 = [*a1 pk_displayName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1BE052434();
    v86 = v22;
    v33 = v32;
    v35 = v34;

    v98 = v33;
    v99 = v35;
    sub_1BD0DDEBC();
    v36 = sub_1BE0506C4();
    v38 = v37;
    LOBYTE(v35) = v39;
    v89 = a3;
    sub_1BE050324();
    v87 = v18;
    v40 = sub_1BE0505F4();
    v42 = v41;
    v88 = a2;
    v44 = v43;

    sub_1BD0DDF10(v36, v38, v35 & 1);

    sub_1BE051224();
    v45 = sub_1BE050564();
    v47 = v46;
    LOBYTE(v38) = v48;
    v50 = v49;

    sub_1BD0DDF10(v40, v42, v44 & 1);

    v98 = v45;
    v99 = v47;
    v100 = v38 & 1;
    v101 = v50;
    sub_1BE052434();
    v51 = v86;
    sub_1BE050DE4();

    v52 = v45;
    a3 = v89;
    sub_1BD0DDF10(v52, v47, v38 & 1);

    v53 = v97;
    sub_1BD0DE204(v51, v97, &qword_1EBD452C0);
    v54 = v53;
    a2 = v88;
    (*(v19 + 56))(v54, 0, 1, v87);
  }

  else
  {
    (*(v19 + 56))(v97, 1, 1, v18);
  }

  v98 = a2;
  v99 = a3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v55 = sub_1BE0506C4();
  v57 = v56;
  v59 = v58;
  sub_1BE0502E4();
  v60 = sub_1BE0505F4();
  v62 = v61;
  v64 = v63;

  sub_1BD0DDF10(v55, v57, v59 & 1);

  sub_1BE051234();
  v65 = sub_1BE050564();
  v67 = v66;
  v69 = v68;
  v71 = v70;

  sub_1BD0DDF10(v60, v62, v64 & 1);

  KeyPath = swift_getKeyPath();
  v98 = v65;
  v99 = v67;
  v69 &= 1u;
  v100 = v69;
  v101 = v71;
  v102 = KeyPath;
  v103 = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
  sub_1BD0FF49C();
  v73 = v93;
  sub_1BE050DE4();

  sub_1BD0DDF10(v65, v67, v69);

  if (PKOslo2024UIUpdatesEnabled())
  {
    v74 = 1;
  }

  else
  {
    v74 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v75 = swift_getKeyPath();
  v76 = v90;
  sub_1BD0DE204(v73, v90, &qword_1EBD3E930);
  v77 = v76 + *(v92 + 36);
  *v77 = v75;
  *(v77 + 8) = v74;
  *(v77 + 16) = 0;
  v78 = v94;
  sub_1BD0DE204(v76, v94, &qword_1EBD44720);
  v79 = v97;
  v80 = v91;
  sub_1BD0DE19C(v97, v91, &unk_1EBD5BB60);
  v81 = v95;
  sub_1BD0DE19C(v78, v95, &qword_1EBD44720);
  v82 = v96;
  sub_1BD0DE19C(v80, v96, &unk_1EBD5BB60);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44728);
  sub_1BD0DE19C(v81, v82 + *(v83 + 48), &qword_1EBD44720);
  sub_1BD0DE53C(v78, &qword_1EBD44720);
  sub_1BD0DE53C(v79, &unk_1EBD5BB60);
  sub_1BD0DE53C(v81, &qword_1EBD44720);
  return sub_1BD0DE53C(v80, &unk_1EBD5BB60);
}

id sub_1BD3BFB20@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44700);
  return sub_1BD3BF214(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1BD3BFB74@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44738);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDAB200;
  v15 = *algn_1EBDAB208;
  v16 = qword_1EBDAB210;
  *v13 = sub_1BE04F7C4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44740);
  sub_1BD3BFD54(a1, a2, &v13[*(v17 + 44)]);
  sub_1BD0DE19C(v13, v9, &qword_1EBD44738);
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44748);
  sub_1BD0DE19C(v9, a3 + *(v18 + 48), &qword_1EBD44738);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v13, &qword_1EBD44738);
  sub_1BD0DE53C(v9, &qword_1EBD44738);
}

uint64_t sub_1BD3BFD54@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44750);
  MEMORY[0x1EEE9AC00](v110, v5);
  v7 = &v100 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v100 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v100 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44758);
  MEMORY[0x1EEE9AC00](v107, v24);
  v109 = &v100 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540);
  v27 = MEMORY[0x1EEE9AC00](v108, v26);
  v29 = &v100 - v28;
  v30 = [a1 pk_displayName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1BE052434();
    v106 = v23;
    v33 = v32;
    v35 = v34;

    *&v118 = v33;
    *(&v118 + 1) = v35;
    sub_1BD0DDEBC();
    v36 = sub_1BE0506C4();
    v38 = v37;
    v104 = v11;
    v40 = v39;
    v105 = v15;
    sub_1BE050324();
    v101 = a2;
    v41 = sub_1BE0505F4();
    v43 = v42;
    v102 = v19;
    v45 = v44;
    v103 = v7;

    sub_1BD0DDF10(v36, v38, v40 & 1);

    sub_1BE051224();
    v46 = sub_1BE050564();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_1BD0DDF10(v41, v43, v45 & 1);

    *&v118 = v46;
    *(&v118 + 1) = v48;
    LOBYTE(v119) = v50 & 1;
    *(&v119 + 1) = v52;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v46, v48, v50 & 1);

    *&v118 = sub_1BD3C0998(v101);
    *(&v118 + 1) = v53;
    v54 = sub_1BE0506C4();
    v56 = v55;
    LOBYTE(v46) = v57;
    sub_1BE0502E4();
    v58 = sub_1BE0505F4();
    v60 = v59;
    LOBYTE(v41) = v61;

    sub_1BD0DDF10(v54, v56, v46 & 1);

    sub_1BE051264();
    v62 = sub_1BE050564();
    v64 = v63;
    LOBYTE(v56) = v65;
    v67 = v66;

    sub_1BD0DDF10(v58, v60, v41 & 1);

    KeyPath = swift_getKeyPath();
    *&v118 = v62;
    *(&v118 + 1) = v64;
    LOBYTE(v119) = v56 & 1;
    *(&v119 + 1) = v67;
    *&v120 = KeyPath;
    *(&v120 + 1) = 2;
    v121[0] = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    v69 = v105;
    sub_1BE050DE4();

    sub_1BD0DDF10(v62, v64, v56 & 1);

    v70 = v106;
    v71 = v102;
    sub_1BD0DE19C(v106, v102, &qword_1EBD452C0);
    v72 = v104;
    sub_1BD0DE19C(v69, v104, &qword_1EBD3C0E8);
    v73 = v103;
    sub_1BD0DE19C(v71, v103, &qword_1EBD452C0);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44768);
    sub_1BD0DE19C(v72, v73 + *(v74 + 48), &qword_1EBD3C0E8);
    sub_1BD0DE53C(v72, &qword_1EBD3C0E8);
    sub_1BD0DE53C(v71, &qword_1EBD452C0);
    sub_1BD0DE19C(v73, v109, &qword_1EBD44750);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD44760, &qword_1EBD44750);
    sub_1BD3C0CA8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v73, &qword_1EBD44750);
    sub_1BD0DE53C(v105, &qword_1EBD3C0E8);
    v75 = v70;
    v76 = &qword_1EBD452C0;
  }

  else
  {
    *&v118 = sub_1BD3C0998(a2);
    *(&v118 + 1) = v77;
    sub_1BD0DDEBC();
    v78 = sub_1BE0506C4();
    v80 = v79;
    v82 = v81;
    sub_1BE050324();
    v83 = sub_1BE0505F4();
    v85 = v84;
    v87 = v86;

    sub_1BD0DDF10(v78, v80, v82 & 1);

    sub_1BE051264();
    v88 = sub_1BE050564();
    v90 = v89;
    v92 = v91;
    v94 = v93;

    sub_1BD0DDF10(v83, v85, v87 & 1);

    LOBYTE(v78) = sub_1BE050234();
    sub_1BE04E1F4();
    v117 = v92 & 1;
    v116 = 0;
    *&v112 = v88;
    *(&v112 + 1) = v90;
    LOBYTE(v113) = v92 & 1;
    *(&v113 + 1) = v94;
    LOBYTE(v114) = v78;
    *(&v114 + 1) = v95;
    *v115 = v96;
    *&v115[8] = v97;
    *&v115[16] = v98;
    v115[24] = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD2A275C();
    sub_1BE050DE4();

    v120 = v114;
    *v121 = *v115;
    *&v121[9] = *&v115[9];
    v118 = v112;
    v119 = v113;
    sub_1BD0DE53C(&v118, &unk_1EBD3DF90);
    sub_1BD0DE19C(v29, v109, &qword_1EBD40540);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD44760, &qword_1EBD44750);
    sub_1BD3C0CA8();
    sub_1BE04F9A4();
    v75 = v29;
    v76 = &qword_1EBD40540;
  }

  return sub_1BD0DE53C(v75, v76);
}

uint64_t sub_1BD3C068C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44730);
  return sub_1BD3BFB74(v4, v3, (a1 + *(v5 + 44)));
}

id sub_1BD3C06F0()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v7 = result;
    v8 = sub_1BE04B6F4();
    v10 = v9;

    (*(v1 + 8))(v5, v0);
    v26 = v8;
    v27 = v10;
    sub_1BD0DDEBC();
    v11 = sub_1BE0506C4();
    v13 = v12;
    LOBYTE(v7) = v14;
    sub_1BE050324();
    v15 = sub_1BE0505F4();
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v11, v13, v7 & 1);

    sub_1BE0511F4();
    v20 = sub_1BE050564();
    v22 = v21;
    LOBYTE(v8) = v23;
    v25 = v24;

    sub_1BD0DDF10(v15, v17, v19 & 1);

    v26 = v20;
    v27 = v22;
    LOBYTE(v8) = v8 & 1;
    v28 = v8;
    v29 = v25;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v20, v22, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3C0998(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v26[-v10];
  if (!a1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v9);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v23 = sub_1BE04B6F4();

      (*(v3 + 8))(v6, v2);
      return v23;
    }

    __break(1u);
    goto LABEL_16;
  }

  v12 = sub_1BE052434();
  v14 = v13;
  v15 = a1;
  v16 = [v15 userInfo];
  v17 = sub_1BE052244();

  if (!*(v17 + 16))
  {

    goto LABEL_12;
  }

  v18 = sub_1BD148F70(v12, v14);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v25 = [v15 localizedDescription];
    v23 = sub_1BE052434();

    return v23;
  }

  sub_1BD038CD0(*(v17 + 56) + 32 * v18, v27);

  if ((swift_dynamicCast() & 1) == 0 || (v26[15] & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(v3 + 104))(v11, *MEMORY[0x1E69B8068], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();

    (*(v3 + 8))(v11, v2);
    return v23;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1BD3C0CA8()
{
  result = qword_1EBD40550;
  if (!qword_1EBD40550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40540);
    sub_1BD2A275C();
    sub_1BD3C0D64(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40550);
  }

  return result;
}

uint64_t sub_1BD3C0D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD3C0DB8()
{
  type metadata accessor for PublishedDynamicSectionController.Section();
  sub_1BE052804();
  result = sub_1BE04D8D4();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD3C0E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD3C0F18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD3C0FB8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  type metadata accessor for PublishedDynamicSectionController.Section();
  sub_1BE0521F4();
  v3 = [*(v1 + *((*v2 & *v1) + 0x58)) identifiers];
  v4 = sub_1BE052744();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1BE048C84();
      sub_1BD3C111C(v7, v8, &v10);

      sub_1BE052804();
      sub_1BE0527E4();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  return sub_1BD3C0F18();
}

uint64_t sub_1BD3C111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x58));
  v8 = sub_1BE052404();
  v9 = [v7 snapshotWithPreviousSnapshot:0 forSectionIdentifier:v8];

  v10 = [v9 items];
  sub_1BE052744();

  v11 = sub_1BE053964();

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;

  return sub_1BE048C84();
}

void sub_1BD3C124C(void *a1)
{
  v1 = a1;
  sub_1BD3C1518();
}

uint64_t sub_1BD3C1294(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD3C1518();

  return __swift_destroy_boxed_opaque_existential_0(&v4);
}

id sub_1BD3C132C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublishedDynamicSectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD3C1388(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  v3 = *((*v2 & *a1) + 0x60);
  type metadata accessor for PublishedDynamicSectionController.Section();
  sub_1BE052804();
  v4 = sub_1BE04D8D4();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

uint64_t sub_1BD3C1498()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD3C14D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PublishedDynamicSectionController();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD3C154C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v52 = a1;
  v53 = a2;
  v5 = sub_1BE051AD4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v47 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  v14 = MEMORY[0x1EEE9AC00](v47, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v47 - v18;
  type metadata accessor for ObservableHostingController();
  sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
  *a4 = sub_1BE04EEC4();
  a4[1] = v20;
  v21 = type metadata accessor for SavingsBeneficiaryView(0);
  v22 = v21[7];
  *(a4 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
  swift_storeEnumTagMultiPayload();
  v50 = type metadata accessor for FeatureError(0);
  v23 = *(v50 - 8);
  v49 = *(v23 + 56);
  v51 = v23 + 56;
  v49(v19, 1, 1, v50);
  sub_1BD0DE19C(v19, v16, &qword_1EBD416C0);
  sub_1BE051694();
  sub_1BD0DE53C(v19, &qword_1EBD416C0);
  v24 = a4 + v21[9];
  LOBYTE(v58) = 0;
  sub_1BE051694();
  v25 = v61;
  *v24 = v60;
  *(v24 + 1) = v25;
  v26 = v21;
  (*(v6 + 104))(v12, *MEMORY[0x1E697D710], v5);
  (*(v6 + 16))(v48, v12, v5);
  sub_1BE051694();
  (*(v6 + 8))(v12, v5);
  v27 = (a4 + v21[12]);
  type metadata accessor for DeviceAuthenticationModel();
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  LOBYTE(v58) = 0;
  sub_1BE04D874();
  swift_endAccess();
  v29 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  *(v28 + OBJC_IVAR____TtC9PassKitUI25DeviceAuthenticationModel_context) = v29;
  sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  *v27 = sub_1BE04E954();
  v27[1] = v30;
  v31 = a4 + v21[13];
  LOBYTE(v58) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1B8);
  sub_1BE051694();
  type metadata accessor for AccountModel();
  sub_1BD3C1EBC(&qword_1EBD3AE50, type metadata accessor for AccountModel);
  v52 = v52;
  a4[2] = sub_1BE04E954();
  a4[3] = v32;
  type metadata accessor for AccountUserInfoModel();
  sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  v33 = sub_1BE048964();
  a4[4] = sub_1BE04E954();
  a4[5] = v34;
  LOBYTE(v58) = v54 & 1;
  sub_1BE051694();

  v35 = v61;
  *v31 = v60;
  *(v31 + 1) = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v36 = v60;
  v37 = type metadata accessor for AddBeneficiaryModel();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission];
  *v39 = 0;
  v39[1] = 0;
  v38[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] = 0;
  v40 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  v41 = v49;
  v42 = v50;
  v49(&v38[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error], 1, 1, v50);
  v41(&v38[v40], 1, 1, v42);
  sub_1BE04B5C4();
  *&v38[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account] = v36;
  v59.receiver = v38;
  v59.super_class = v37;
  v43 = objc_msgSendSuper2(&v59, sel_init);
  v44 = (a4 + v26[10]);
  *v44 = v43;
  v44[1] = 0;
  v60 = v43;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
  sub_1BE0516A4();
  v45 = v58;
  swift_getKeyPath();
  v55 = v45;
  v56 = sub_1BD3C1F04;
  v57 = v33;
  v60 = v45;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE048964();
  sub_1BE04B584();
}

uint64_t sub_1BD3C1CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for SavingsBeneficiaryView(0);
  sub_1BD0DE19C(v1 + *(v12 + 28), v11, &qword_1EBD3B1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v11, a1, &qword_1EBD449E8);
  }

  sub_1BE052C44();
  v14 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BD3C1EBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD3C1F08@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v133, v2);
  v132 = &v109 - v3;
  v4 = type metadata accessor for SavingsBeneficiaryView(0);
  v143 = *(v4 - 8);
  v144 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v141 = v6;
  v134 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1BE04F434();
  v136 = *(v142 - 1);
  MEMORY[0x1EEE9AC00](v142, v7);
  v115 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A10);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v109 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A18);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v18);
  v20 = &v109 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A20);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v21);
  v113 = &v109 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A28);
  MEMORY[0x1EEE9AC00](v112, v23);
  v118 = &v109 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A30);
  MEMORY[0x1EEE9AC00](v117, v25);
  v119 = &v109 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A38);
  MEMORY[0x1EEE9AC00](v138, v27);
  v139 = &v109 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A40);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v29);
  v140 = &v109 - v30;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A48);
  MEMORY[0x1EEE9AC00](v120, v31);
  v123 = &v109 - v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A50);
  MEMORY[0x1EEE9AC00](v126, v33);
  v124 = &v109 - v34;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A58);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v35);
  v125 = &v109 - v36;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A60);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v37);
  v129 = &v109 - v38;
  v137 = v1;
  sub_1BD3C3060(v17);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80E0], v9);
  result = PKPassKitBundle();
  if (result)
  {
    v40 = result;
    v41 = sub_1BE04B6F4();
    v43 = v42;

    (*(v10 + 8))(v13, v9);
    v146 = v41;
    v147 = v43;
    v44 = sub_1BD3CAAC4(&qword_1EBD44A68, &qword_1EBD44A10, &unk_1BE0D29B8, sub_1BD3C9FF0);
    v45 = sub_1BD0DDEBC();
    v46 = MEMORY[0x1E69E6158];
    sub_1BE050B74();

    sub_1BD0DE53C(v17, &qword_1EBD44A10);
    v47 = v136;
    v48 = v115;
    v49 = v142;
    (*(v136 + 13))(v115, *MEMORY[0x1E697C438], v142);
    v146 = v14;
    v147 = v46;
    v148 = v44;
    v149 = v45;
    swift_getOpaqueTypeConformance2();
    v50 = v113;
    v51 = v111;
    sub_1BE050E84();
    (*(v47 + 1))(v48, v49);
    (*(v110 + 8))(v20, v51);
    v52 = v137;
    v53 = *(v137 + 40);
    swift_beginAccess();
    v54 = v112;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
    v55 = v118;
    sub_1BE04D884();
    swift_endAccess();
    v142 = type metadata accessor for SavingsBeneficiaryView;
    v56 = v134;
    sub_1BD3CB7F4(v52, v134, type metadata accessor for SavingsBeneficiaryView);
    v143 = *(v143 + 80);
    v57 = (v143 + 16) & ~v143;
    v58 = swift_allocObject();
    v136 = type metadata accessor for SavingsBeneficiaryView;
    sub_1BD3CAC58(v56, v58 + v57, type metadata accessor for SavingsBeneficiaryView);
    (*(v114 + 32))(v55, v50, v116);
    v59 = (v55 + *(v54 + 56));
    *v59 = sub_1BD3CBBE0;
    v59[1] = v58;
    swift_beginAccess();
    v60 = v117;
    v61 = v119;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD3CB7F4(v52, v56, v142);
    v62 = v57;
    v110 = v57;
    v63 = swift_allocObject();
    sub_1BD3CAC58(v56, v63 + v62, type metadata accessor for SavingsBeneficiaryView);
    sub_1BD0DE204(v55, v61, &qword_1EBD44A28);
    v64 = (v61 + *(v60 + 56));
    *v64 = sub_1BD3CA700;
    v64[1] = v63;
    v115 = v53;
    swift_beginAccess();
    v65 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD417F8);
    v66 = v139;
    sub_1BE04D884();
    swift_endAccess();
    v67 = v137;
    v68 = v56;
    v69 = v142;
    sub_1BD3CB7F4(v137, v56, v142);
    v70 = v110;
    v71 = swift_allocObject();
    v72 = v136;
    sub_1BD3CAC58(v68, v71 + v70, v136);
    sub_1BD0DE204(v61, v66, &qword_1EBD44A30);
    v73 = (v66 + *(v65 + 56));
    *v73 = sub_1BD3CA768;
    v73[1] = v71;
    v74 = (v67 + *(v144 + 40));
    v75 = v67;
    v77 = *v74;
    v76 = v74[1];
    v146 = v77;
    v147 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
    sub_1BE0516A4();
    v78 = v145;
    swift_getKeyPath();
    v146 = v78;
    sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
    sub_1BE04B594();

    v79 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
    swift_beginAccess();
    v80 = v132;
    sub_1BD0DE19C(v78 + v79, v132, &qword_1EBD416C0);

    sub_1BD3CB7F4(v75, v68, v69);
    v81 = swift_allocObject();
    sub_1BD3CAC58(v68, v81 + v70, v72);
    sub_1BD0DE4F4(&qword_1EBD44AE8, &qword_1EBD44A38);
    sub_1BD2477C0();
    v82 = v139;
    sub_1BE051074();

    sub_1BD0DE53C(v80, &qword_1EBD416C0);
    sub_1BD0DE53C(v82, &qword_1EBD44A38);
    v83 = v123;
    v84 = &v123[*(v120 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    v85 = v75;
    sub_1BE0516C4();
    v86 = v75;
    v87 = v142;
    sub_1BD3CB7F4(v86, v68, v142);
    v88 = swift_allocObject();
    v89 = v136;
    sub_1BD3CAC58(v68, v88 + v70, v136);
    (*(v121 + 32))(v83, v140, v122);
    v90 = &v84[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v90 = sub_1BD3CA804;
    v90[1] = v88;
    sub_1BD3CB7F4(v85, v68, v87);
    v91 = swift_allocObject();
    sub_1BD3CAC58(v68, v91 + v70, v89);
    v92 = v124;
    v93 = sub_1BD0DE204(v83, v124, &qword_1EBD44A48);
    v94 = v126;
    v95 = (v92 + *(v126 + 36));
    *v95 = sub_1BD3CA8AC;
    v95[1] = v91;
    v95[2] = 0;
    v95[3] = 0;
    MEMORY[0x1EEE9AC00](v93, v96);
    *(&v109 - 2) = v85;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AF0);
    v98 = sub_1BD3CA8E0();
    v99 = sub_1BD3CAAC4(&qword_1EBD44B08, &qword_1EBD44AF0, &unk_1BE0D2A80, sub_1BD3CAB40);
    v100 = v125;
    sub_1BE051034();
    sub_1BD0DE53C(v92, &qword_1EBD44A50);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v146 = v94;
    v147 = v97;
    v148 = v98;
    v149 = v99;
    swift_getOpaqueTypeConformance2();
    v101 = v129;
    v102 = v128;
    sub_1BE050E74();
    (*(v127 + 8))(v100, v102);
    KeyPath = swift_getKeyPath();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B38);
    v105 = v135;
    v106 = (v135 + *(v104 + 36));
    v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
    sub_1BE0516C4();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    (*(*(v108 - 8) + 56))(v106 + v107, 0, 1, v108);
    *v106 = KeyPath;
    return (*(v130 + 32))(v105, v101, v131);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3C3060@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = sub_1BE04FB94();
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AC0);
  MEMORY[0x1EEE9AC00](v97, v5);
  v98 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v103 = &v94 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44AA8);
  MEMORY[0x1EEE9AC00](v111, v10);
  v95 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v94 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B50);
  MEMORY[0x1EEE9AC00](v109, v15);
  v110 = &v94 - v16;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v102 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v94 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98);
  v106 = *(v25 - 8);
  v107 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v105 = &v94 - v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88);
  MEMORY[0x1EEE9AC00](v108, v28);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v94 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v94 - v37;
  v104 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v39 = v114;
  v112 = v18;
  if (v114)
  {
    v40 = v115;
    sub_1BE048C84();
    sub_1BD0D468C(v39);
    v41 = v17;
    if (v40)
    {
      v42 = *(v40 + 16) != 0;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v41 = v17;
    v42 = 0;
    v40 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v114 == 1)
  {

LABEL_15:
    v66 = v41;
    v67 = v112;
    (*(v112 + 104))(v24, *MEMORY[0x1E69B80E0], v66);
    result = PKPassKitBundle();
    if (result)
    {
      v69 = result;
      v70 = sub_1BE04B6F4();
      v72 = v71;

      (*(v67 + 8))(v24, v66);
      v114 = v70;
      v115 = v72;
      sub_1BD0DDEBC();
      v73 = v105;
      sub_1BE04E504();
      v74 = &v30[*(v108 + 36)];
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
      v76 = *MEMORY[0x1E697DC10];
      v77 = sub_1BE04E364();
      (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
      *v74 = swift_getKeyPath();
      (*(v106 + 32))(v30, v73, v107);
      sub_1BD0DE204(v30, v34, &qword_1EBD44A88);
      sub_1BD0DE19C(v34, v110, &qword_1EBD44A88);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CA07C();
      sub_1BD3CA160();
      v78 = v113;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v34, &qword_1EBD44A88);
LABEL_17:
      v79 = 0;
LABEL_18:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A78);
      return (*(*(v80 - 8) + 56))(v78, v79, 1, v80);
    }

    __break(1u);
    goto LABEL_25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v43 = type metadata accessor for FeatureError(0);
  if ((*(*(v43 - 8) + 48))(v38, 1, v43) != 1)
  {

    sub_1BD0DE53C(v38, &qword_1EBD416C0);
    goto LABEL_15;
  }

  v44 = sub_1BD0DE53C(v38, &qword_1EBD416C0);
  v46 = v41;
  v47 = v104;
  v48 = v42;
  if (!v42)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v49 = v114;
    v50 = [v114 supportsAddBeneficiaries];

    if (!v50)
    {

      v79 = 1;
      v78 = v113;
      goto LABEL_18;
    }
  }

  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v94 - 4) = v47;
  *(&v94 - 3) = v40;
  *(&v94 - 16) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B58);
  sub_1BD3CACCC();
  v51 = v98;
  sub_1BE0504E4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v52 = v114;
  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v55 = (v51 + *(v97 + 36));
  *v55 = KeyPath;
  v55[1] = sub_1BD10DF54;
  v55[2] = v54;
  v56 = v99;
  sub_1BE04FB84();
  sub_1BD3CA2D4();
  v57 = v103;
  v58 = v101;
  v59 = v47;
  sub_1BE051144();
  (*(v100 + 8))(v56, v58);
  sub_1BD0DE53C(v51, &qword_1EBD44AC0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v60 = v114;
  if (v114)
  {
    v61 = [v114 contactNumber];

    v62 = v112;
    v63 = v102;
    if (v61)
    {
      v60 = sub_1BE052434();
      v65 = v64;
    }

    else
    {
      v60 = 0;
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
    v62 = v112;
    v63 = v102;
  }

  (*(v62 + 104))(v63, *MEMORY[0x1E69B80E0], v46);
  result = PKPassKitBundle();
  if (result)
  {
    v81 = result;
    v82 = sub_1BE04B6F4();
    v84 = v83;

    (*(v62 + 8))(v63, v46);
    v85 = (v59 + *(type metadata accessor for SavingsBeneficiaryView(0) + 36));
    v86 = *v85;
    v87 = *(v85 + 1);
    v117 = v86;
    v118 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v88 = v114;
    v89 = v115;
    v90 = v116;
    v91 = v95;
    sub_1BD0DE204(v57, v95, &qword_1EBD44AB8);
    v92 = v91 + *(v111 + 36);
    *v92 = v60;
    *(v92 + 8) = v65;
    *(v92 + 16) = v82;
    *(v92 + 24) = v84;
    *(v92 + 32) = 0;
    *(v92 + 40) = v88;
    *(v92 + 48) = v89;
    *(v92 + 56) = v90;
    v93 = v96;
    sub_1BD0DE204(v91, v96, &qword_1EBD44AA8);
    sub_1BD0DE19C(v93, v110, &qword_1EBD44AA8);
    swift_storeEnumTagMultiPayload();
    sub_1BD3CA07C();
    sub_1BD3CA160();
    v78 = v113;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v93, &qword_1EBD44AA8);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BD3C3CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  type metadata accessor for SavingsBeneficiaryView(0);
  sub_1BD0DE19C(a1, v5, &qword_1EBD416C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  return sub_1BE0516B4();
}

void sub_1BD3C3DAC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SavingsBeneficiaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B48);
  sub_1BE0516A4();
  if ((v2 & 1) == 0)
  {
    if (v1)
    {
      sub_1BE0516B4();
      sub_1BD3C3E60();
    }
  }
}

void sub_1BD3C3E60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v49 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v49 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v18 = v58;
  v19 = [v58 supportsAddBeneficiaries];

  if (!v19)
  {
    return;
  }

  v54 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = v58;
  if (v58)
  {
    v21 = v59;
    sub_1BE048C84();
    sub_1BD0D468C(v20);
    if (v21)
    {
      v22 = *(v21 + 16);

      if (v22 >= 6)
      {
        v38 = *(v10 + 104);
        v53 = *MEMORY[0x1E69B80E0];
        v52 = v38;
        v38(v17);
        v39 = PKPassKitBundle();
        if (v39)
        {
          v40 = v39;
          sub_1BE04B6F4();

          v41 = *(v10 + 8);
          v51 = v10 + 8;
          v41(v17, v9);
          v50 = sub_1BE052404();

          v52(v13, v53, v9);
          v42 = PKPassKitBundle();
          v43 = v54;
          if (v42)
          {
            v44 = v42;
            sub_1BE04B6F4();

            v41(v13, v9);
            v45 = sub_1BE052404();

            v46 = v50;
            v47 = PKDisplayableErrorCustom();

            v48 = v47;
            FeatureError.init(feature:error:)(5, v47, v8);
            type metadata accessor for SavingsBeneficiaryView(0);
            sub_1BD0DE19C(v8, v43, &qword_1EBD416C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
            sub_1BE0516B4();

            sub_1BD0DE53C(v8, &qword_1EBD416C0);
            return;
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
  }

  v23 = sub_1BD3C58E0();
  if (v23 != 3)
  {
    if (v23 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v24 = v58;
      v25 = [objc_allocWithZone(MEMORY[0x1E69B8418]) initWithBeneficiaryTopicForAccount_];

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v26 = v58;
      v27 = [objc_allocWithZone(PKBusinessChatAccountContext) initWithAccount:v58 topic:v25];

      v28 = [objc_allocWithZone(PKBusinessChatController) init];
      [v28 openBusinessChatWithContext:v27 completion:0];
    }

    else
    {
      v35 = v0 + *(type metadata accessor for SavingsBeneficiaryView(0) + 36);
      v36 = *v35;
      v37 = *(v35 + 1);
      LOBYTE(v58) = v36;
      v59 = v37;
      LOBYTE(v56) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
      sub_1BE0516B4();
    }

    return;
  }

  if (!*v0)
  {
LABEL_18:
    type metadata accessor for ObservableHostingController();
    sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    sub_1BE04EEB4();
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = (v0 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
    v33 = *v31;
    v32 = v31[1];
    v56 = v33;
    v57 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
    sub_1BE0516A4();
    v34 = v55;
    sub_1BDA6FCC4(v30);
  }
}

uint64_t sub_1BD3C44E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v16 - v8;
  v10 = (a1 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
  v12 = *v10;
  v11 = v10[1];
  v16[0] = v12;
  v16[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
  sub_1BE0516A4();
  v13 = v16[3];
  swift_getKeyPath();
  v16[0] = v13;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE04B594();

  v14 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BD0DE19C(v13 + v14, v9, &qword_1EBD416C0);

  sub_1BD0DE19C(v9, v5, &qword_1EBD416C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &qword_1EBD416C0);
}

void sub_1BD3C46D4(uint64_t a1)
{
  v2 = sub_1BE04ED94();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v101 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8);
  MEMORY[0x1EEE9AC00](v100, v5);
  v99 = &v96 - v6;
  v111 = type metadata accessor for FeatureError(0);
  v116 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v7);
  v106 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400);
  MEMORY[0x1EEE9AC00](v9, v10);
  v105 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v96 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v97 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v104 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v103 = &v96 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v98 = (&v96 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v109 = &v96 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v108 = &v96 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v107 = &v96 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v110 = &v96 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v96 - v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v96 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v96 - v54;
  v102 = type metadata accessor for SavingsBeneficiaryView(0);
  v56 = *(v102 + 32);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  v114 = v56;
  sub_1BE0516A4();
  v112 = a1;
  v57 = *(a1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v57;
  sub_1BE04D8B4();

  v115 = v9;
  v59 = *(v9 + 48);
  sub_1BD0DE204(v55, v19, &qword_1EBD416C0);
  v60 = v51;
  v61 = v111;
  sub_1BD0DE204(v60, &v19[v59], &qword_1EBD416C0);
  v62 = *(v116 + 48);
  if (v62(v19, 1, v61) == 1)
  {
    v63 = v62(&v19[v59], 1, v61);
    v64 = v112;
    v65 = v58;
    if (v63 == 1)
    {
      sub_1BD0DE53C(v19, &qword_1EBD416C0);
LABEL_11:
      v74 = v99;
      sub_1BD3C1CD4(v99);
      MEMORY[0x1BFB3E970](v100);
      sub_1BE04ED84();
      sub_1BE0518F4();
      sub_1BD0DE53C(v74, &qword_1EBD449E8);
      v75 = v110;
      (*(v116 + 56))(v110, 1, 1, v61);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD0DE19C(v75, v107, &qword_1EBD416C0);
      sub_1BE048964();
LABEL_20:
      sub_1BE04D8C4();
      sub_1BD0DE53C(v75, &qword_1EBD416C0);
      return;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v19, v47, &qword_1EBD416C0);
  if (v62(&v19[v59], 1, v61) == 1)
  {
    sub_1BD230994(v47);
    v64 = v112;
    v65 = v58;
LABEL_6:
    sub_1BD0DE53C(v19, &unk_1EBD5D400);
    goto LABEL_8;
  }

  v66 = v106;
  sub_1BD3CAC58(&v19[v59], v106, type metadata accessor for FeatureError);
  v67 = *v47;
  v68 = *v66;
  sub_1BD230994(v66);

  sub_1BD230994(v47);
  sub_1BD0DE53C(v19, &qword_1EBD416C0);
  v69 = v67 == v68;
  v64 = v112;
  v65 = v58;
  if (v69)
  {
    goto LABEL_11;
  }

LABEL_8:
  v70 = v65;
  v71 = v108;
  sub_1BE0516A4();
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v109;
  v112 = v70;
  sub_1BE04D8B4();

  v73 = *(v115 + 48);
  sub_1BD0DE204(v71, v15, &qword_1EBD416C0);
  sub_1BD0DE204(v72, &v15[v73], &qword_1EBD416C0);
  if (v62(v15, 1, v61) == 1)
  {
    if (v62(&v15[v73], 1, v61) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD416C0);
LABEL_19:
      v75 = v110;
      (*(v116 + 56))(v110, 1, 1, v61);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD0DE19C(v75, v107, &qword_1EBD416C0);
      sub_1BE048964();
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v76 = v98;
  sub_1BD0DE19C(v15, v98, &qword_1EBD416C0);
  if (v62(&v15[v73], 1, v61) == 1)
  {
    sub_1BD230994(v76);
LABEL_14:
    sub_1BD0DE53C(v15, &unk_1EBD5D400);
    goto LABEL_16;
  }

  v77 = &v15[v73];
  v78 = v106;
  sub_1BD3CAC58(v77, v106, type metadata accessor for FeatureError);
  v79 = *v76;
  v80 = *v78;
  sub_1BD230994(v78);

  sub_1BD230994(v76);
  sub_1BD0DE53C(v15, &qword_1EBD416C0);
  if (v79 == v80)
  {
    goto LABEL_19;
  }

LABEL_16:
  v81 = v103;
  sub_1BE0516A4();
  v82 = (v64 + *(v102 + 40));
  v83 = *v82;
  v113 = v82[1];
  v114 = v83;
  v120 = v83;
  v121 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
  sub_1BE0516A4();
  v84 = v118;
  swift_getKeyPath();
  v120 = v84;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE04B594();

  v85 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  v86 = v104;
  sub_1BD0DE19C(v84 + v85, v104, &qword_1EBD416C0);

  v87 = *(v115 + 48);
  v88 = v105;
  sub_1BD0DE204(v81, v105, &qword_1EBD416C0);
  sub_1BD0DE204(v86, v88 + v87, &qword_1EBD416C0);
  if (v62(v88, 1, v61) != 1)
  {
    v89 = v97;
    sub_1BD0DE19C(v88, v97, &qword_1EBD416C0);
    if (v62((v88 + v87), 1, v61) != 1)
    {
      v90 = v106;
      sub_1BD3CAC58(v88 + v87, v106, type metadata accessor for FeatureError);
      v91 = *v89;
      v92 = v89;
      v93 = *v90;
      sub_1BD230994(v90);

      sub_1BD230994(v92);
      sub_1BD0DE53C(v88, &qword_1EBD416C0);
      if (v91 != v93)
      {
        return;
      }

      goto LABEL_25;
    }

    sub_1BD230994(v89);
LABEL_23:
    sub_1BD0DE53C(v88, &unk_1EBD5D400);
    return;
  }

  if (v62((v88 + v87), 1, v61) != 1)
  {
    goto LABEL_23;
  }

  sub_1BD0DE53C(v88, &qword_1EBD416C0);
LABEL_25:
  v118 = v114;
  v119 = v113;
  sub_1BE0516A4();
  v94 = v117;
  v95 = v110;
  (*(v116 + 56))(v110, 1, 1, v61);
  sub_1BDA6F7F4(v95);
}

void sub_1BD3C52B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v0)
  {
    sub_1BD0D468C(v0);
  }

  else
  {
    sub_1BD2FAF00();
  }
}

uint64_t sub_1BD3C5344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04E214();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B40);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B18);
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v29 - v16;
  if (sub_1BD3C58E0() == 3)
  {
    v30 = v2;
    v31 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v35 == 1)
    {
      sub_1BE04E4F4();
      (*(v10 + 16))(v8, v13, v9);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8]);
      sub_1BE04F9A4();
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE04D8B4();

      v21 = v35;
      if (!v35 || (v22 = v36, sub_1BE048C84(), sub_1BD0D468C(v21), !v22) || (v23 = *(v22 + 16), , !v23))
      {
        v18 = 1;
        goto LABEL_13;
      }

      v24 = v32;
      sub_1BE04E204();
      v25 = v33;
      v26 = v30;
      (*(v33 + 16))(v8, v24, v30);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
      sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8]);
      sub_1BE04F9A4();
      (*(v25 + 8))(v24, v26);
    }

    v18 = 0;
LABEL_13:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B28);
    (*(*(v27 - 8) + 56))(v17, v18, 1, v27);
    v28 = v31;
    sub_1BD0DE204(v17, v31, &qword_1EBD44B18);
    return (*(v34 + 56))(v28, 0, 1, v14);
  }

  v19 = *(v34 + 56);

  return v19(a1, 1, 1, v14);
}

uint64_t sub_1BD3C58E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v0 = [v2 supportedContactMethodForAddingBeneficiaries];

  if (v0 == 2)
  {
    if ([objc_opt_self() deviceSupportsBusinessChat])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v0;
}

uint64_t sub_1BD3C59A0()
{
  sub_1BD3C5AE0(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44B80);
  sub_1BD0DE4F4(&qword_1EBD44B68, &qword_1EBD44B70);
  sub_1BD3CAAC4(&qword_1EBD44B78, &qword_1EBD44B80, &unk_1BE0D2C88, sub_1BD3CADBC);
  return sub_1BE051A54();
}

void sub_1BD3C5AE0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SavingsBeneficiaryView(0);
  v100 = *(v3 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v101 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v103 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v99 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v102 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v90 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = aBlock;
  v21 = [aBlock supportsAddBeneficiaries];

  if (!v21)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0uLL;
    v39 = 16711680;
    v40 = 0uLL;
LABEL_30:
    *a1 = v38;
    *(a1 + 16) = v40;
    *(a1 + 32) = v35;
    *(a1 + 40) = v36;
    *(a1 + 48) = v37;
    *(a1 + 56) = v39;
    *(a1 + 58) = BYTE2(v39);
    return;
  }

  v98 = a1;
  v22 = *(v7 + 104);
  v92 = *MEMORY[0x1E69B80E0];
  v93 = v22;
  v94 = v7 + 104;
  v22(v19);
  v23 = PKPassKitBundle();
  if (!v23)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = v23;
  v25 = sub_1BE04B6F4();
  v27 = v26;

  v90 = *(v7 + 8);
  v91 = v6;
  v90(v19, v6);
  *&aBlock = v25;
  *(&aBlock + 1) = v27;
  sub_1BD0DDEBC();
  *&v96 = sub_1BE0506C4();
  *(&v96 + 1) = v28;
  v95 = v29;
  v97 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v31 = aBlock;
  if (aBlock && (v32 = *(&aBlock + 1), sub_1BE048C84(), sub_1BD0D468C(v31), v32))
  {
    v33 = *(v32 + 16);

    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  v41 = sub_1BD3C58E0();
  if (v41 < 2)
  {
    v58 = v95;
    v59 = v96;
    v117 = v96;
    *&v118 = v95 & 1;
    *(&v118 + 1) = v97;
    v119[0] = 1;
    sub_1BD0D7F18(v96, *(&v96 + 1), v95 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    LOBYTE(v105) = v123[0];
    LOBYTE(v107[0]) = 1;
    v123[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    sub_1BD3CAED4();
    sub_1BD170E70();
    sub_1BE04F9A4();
    v117 = v114;
    v118 = v115;
    *v119 = v116[0];
    *&v119[10] = *(v116 + 10);
    LOBYTE(v110) = 0;
    v120 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0);
    sub_1BD3CAE48();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v59, *(&v59 + 1), v58 & 1);

    v38 = aBlock;
    v40 = v122;
LABEL_29:
    v35 = *v123;
    v36 = *&v123[8];
    v37 = *&v123[16];
    v39 = *&v123[24] | (v124 << 16);
    a1 = v98;
    goto LABEL_30;
  }

  if (v41 != 3)
  {
    if (v41 != 2)
    {
      LOBYTE(v114) = v95 & 1;
      LOBYTE(v110) = 1;
      v117 = v96;
      LOBYTE(v118) = v95 & 1;
      *(&v118 + 1) = v97;
      v120 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0);
      sub_1BD3CAE48();
      sub_1BE04F9A4();
      goto LABEL_28;
    }

    if (v34)
    {
      v42 = v102;
      v43 = v91;
      v93(v102, v92, v91);
      v44 = PKPassKitBundle();
      if (v44)
      {
        v45 = v44;
        v46 = sub_1BE04B6F4();
        v48 = v47;

        v90(v42, v43);
        *&aBlock = v46;
        *(&aBlock + 1) = v48;
        v49 = sub_1BE0506C4();
        v51 = v50;
        v53 = v52 & 1;
        v108 = v52 & 1;
        v104 = 1;
        *&aBlock = v49;
        *(&aBlock + 1) = v50;
        LOBYTE(v122) = v52 & 1;
        *(&v122 + 1) = v107[0];
        DWORD1(v122) = *(v107 + 3);
        *v123 = v105;
        *(&v122 + 1) = v54;
        *&v123[16] = v106;
        v123[24] = 1;
        sub_1BD0D7F18(v49, v50, v52 & 1);
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618);
        sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &unk_1BE0DB120, sub_1BD10E4BC);
        sub_1BE04F9A4();
        aBlock = v110;
        v122 = v111;
        *v123 = v112[0];
        *&v123[9] = *(v112 + 9);
        v109 = 0;
        v123[25] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
        sub_1BD3CAED4();
        sub_1BD170E70();
        sub_1BE04F9A4();
        v117 = v114;
        v118 = v115;
        *v119 = v116[0];
        *&v119[10] = *(v116 + 10);
        v113 = 0;
        v120 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0);
        sub_1BD3CAE48();
        sub_1BE04F9A4();
        sub_1BD0DDF10(v96, *(&v96 + 1), v95 & 1);

        v55 = v49;
        v56 = v51;
        v57 = v53;
LABEL_18:
        sub_1BD0DDF10(v55, v56, v57);

LABEL_28:
        v38 = aBlock;
        v40 = v122;
        goto LABEL_29;
      }

      goto LABEL_32;
    }

LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v73 = aBlock;
    if (aBlock)
    {
      v74 = [aBlock contactNumber];

      if (v74)
      {
        v103 = sub_1BE052434();
        v76 = v75;
        v77 = v101;
        sub_1BD3CB7F4(v1, v101, type metadata accessor for SavingsBeneficiaryView);
        v78 = (*(v100 + 80) + 16) & ~*(v100 + 80);
        v79 = swift_allocObject();
        sub_1BD3CAC58(v77, v79 + v78, type metadata accessor for SavingsBeneficiaryView);
        v80 = objc_allocWithZone(PKTextRangeHyperlink);
        *v123 = sub_1BD3CB3E0;
        *&v123[8] = v79;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v122 = sub_1BD126964;
        *(&v122 + 1) = &block_descriptor_80;
        v81 = _Block_copy(&aBlock);

        v82 = [v80 initWithLinkText:v74 action:v81];
        _Block_release(v81);

        if (v82)
        {
          v83 = v99;
          v84 = v91;
          v93(v99, v92, v91);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_1BE0B69E0;
          *(v85 + 56) = MEMORY[0x1E69E6158];
          *(v85 + 64) = sub_1BD110550();
          *(v85 + 32) = v103;
          *(v85 + 40) = v76;
          v86 = sub_1BE04B714();
          v88 = v87;

          v90(v83, v84);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_1BE0B7020;
          *(v73 + 32) = v82;
          sub_1BE048C84();
          sub_1BE048C84();
          v89 = 4;
LABEL_27:
          v113 = 0;
          *&aBlock = v73;
          *(&aBlock + 1) = v89;
          *&v122 = 0;
          *(&v122 + 1) = v86;
          memset(&v123[8], 0, 17);
          *v123 = v88;
          sub_1BD3CB320(v73, v89, 0, v86, v88, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618);
          sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &unk_1BE0DB120, sub_1BD10E4BC);
          sub_1BE04F9A4();
          aBlock = v110;
          v122 = v111;
          *v123 = v112[0];
          *&v123[9] = *(v112 + 9);
          LOBYTE(v107[0]) = 0;
          v123[25] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
          sub_1BD3CAED4();
          sub_1BD170E70();
          sub_1BE04F9A4();
          v117 = v114;
          v118 = v115;
          *v119 = v116[0];
          *&v119[10] = *(v116 + 10);
          LOBYTE(v105) = 0;
          v120 = 0;
          sub_1BD0DE19C(&v114, &aBlock, &qword_1EBD44C38);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0);
          sub_1BD3CAE48();
          sub_1BE04F9A4();
          sub_1BD3CB384(v73, v89, 0, v86, v88, 0);
          sub_1BD0DE53C(&v114, &qword_1EBD44BA0);
          sub_1BD0DDF10(v96, *(&v96 + 1), v95 & 1);

          sub_1BD3CB384(v73, v89, 0, v86, v88, 0);
          goto LABEL_28;
        }
      }

      v73 = 0;
    }

    v89 = 0;
    v86 = 0;
    v88 = 0;
    goto LABEL_27;
  }

  if (!v34)
  {
    goto LABEL_19;
  }

  v60 = v103;
  v61 = v91;
  v93(v103, v92, v91);
  v62 = PKPassKitBundle();
  if (v62)
  {
    v63 = v62;
    v64 = sub_1BE04B6F4();
    v66 = v65;

    v90(v60, v61);
    *&aBlock = v64;
    *(&aBlock + 1) = v66;
    v67 = sub_1BE0506C4();
    v69 = v68;
    *&v117 = v67;
    *(&v117 + 1) = v68;
    v71 = v70 & 1;
    *&v118 = v70 & 1;
    *(&v118 + 1) = v72;
    v119[0] = 0;
    sub_1BD0D7F18(v67, v68, v70 & 1);
    sub_1BE048C84();
    sub_1BE04F9A4();
    LOBYTE(v107[0]) = v123[0];
    v113 = 1;
    *&v123[1] = v110;
    *&v123[17] = v111;
    v123[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
    sub_1BD3CAED4();
    sub_1BD170E70();
    sub_1BE04F9A4();
    v117 = v114;
    v118 = v115;
    *v119 = v116[0];
    *&v119[10] = *(v116 + 10);
    LOBYTE(v105) = 0;
    v120 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BA0);
    sub_1BD3CAE48();
    sub_1BE04F9A4();
    sub_1BD0DDF10(v96, *(&v96 + 1), v95 & 1);

    v55 = v67;
    v56 = v69;
    v57 = v71;
    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1BD3C69B0@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  LODWORD(v75) = a2;
  v82 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B330);
  MEMORY[0x1EEE9AC00](v79, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B338);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v81 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v66 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BB8);
  MEMORY[0x1EEE9AC00](v74, v14);
  v16 = &v66 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BC0);
  MEMORY[0x1EEE9AC00](v72, v17);
  v73 = &v66 - v18;
  v78 = type metadata accessor for SavingsBeneficiaryView(0);
  v83 = *(v78 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v78, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BC8);
  v69 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v66 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BD0);
  MEMORY[0x1EEE9AC00](v71, v25);
  v27 = &v66 - v26;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BD8);
  v28 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v29);
  v70 = &v66 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BE0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v76 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.n128_f64[0] = MEMORY[0x1EEE9AC00](v34, v35);
  v38 = &v66 - v36;
  v84 = a1;
  if (a1 && (v75 & 1) != 0)
  {
    v39 = v85;
    if (sub_1BD3C58E0() == 3)
    {
      v87 = v84;
      sub_1BD3CB7F4(v39, &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
      v40 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v75 = swift_allocObject();
      sub_1BD3CAC58(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v75 + v40, type metadata accessor for SavingsBeneficiaryView);
      sub_1BE048C84();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BF0);
      v67 = type metadata accessor for BeneficiaryCell(0);
      sub_1BD0DE4F4(&qword_1EBD44BF8, &qword_1EBD44BF0);
      sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell);
      sub_1BD3CB024();
      sub_1BE0519D4();
      sub_1BD3CB078();
      sub_1BE050DE4();
      (*(v69 + 8))(v24, v21);
      v41 = &v27[*(v71 + 36)];
      *v41 = PKEdgeInsetsMake;
      *(v41 + 1) = 0;
      sub_1BD0DE19C(v27, v73, &qword_1EBD44BD0);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CB12C();
      sub_1BD3CB1E4();
      v42 = v70;
      sub_1BE04F9A4();
      v43 = v27;
      v44 = &qword_1EBD44BD0;
    }

    else
    {
      v87 = v84;
      sub_1BD3CB7F4(v39, &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
      v45 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v75 = swift_allocObject();
      sub_1BD3CAC58(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v75 + v45, type metadata accessor for SavingsBeneficiaryView);
      sub_1BE048C84();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BF0);
      v67 = type metadata accessor for BeneficiaryCell(0);
      sub_1BD0DE4F4(&qword_1EBD44BF8, &qword_1EBD44BF0);
      sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell);
      sub_1BD3CB024();
      sub_1BE0519D4();
      sub_1BD3CB078();
      sub_1BE050DE4();
      (*(v69 + 8))(v24, v21);
      sub_1BD0DE19C(v16, v73, &qword_1EBD44BB8);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CB12C();
      sub_1BD3CB1E4();
      v42 = v70;
      sub_1BE04F9A4();
      v43 = v16;
      v44 = &qword_1EBD44BB8;
    }

    sub_1BD0DE53C(v43, v44);
    sub_1BD0DE204(v42, v38, &qword_1EBD44BD8);
    (*(v28 + 56))(v38, 0, 1, v77, v46);
  }

  else
  {
    (*(v28 + 56))(&v66 - v36, 1, 1, v77, v37);
  }

  v47 = v85;
  sub_1BD3CB7F4(v85, &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBeneficiaryView);
  v48 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v49 = swift_allocObject();
  v50 = sub_1BD3CAC58(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for SavingsBeneficiaryView);
  MEMORY[0x1EEE9AC00](v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B358);
  sub_1BD0DE4F4(&qword_1EBD3B360, &qword_1EBD3B358);
  sub_1BE051704();
  v52 = (v47 + *(v78 + 40));
  v54 = *v52;
  v53 = v52[1];
  v87 = v54;
  v88 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
  sub_1BE0516A4();
  v55 = v86;
  swift_getKeyPath();
  v87 = v55;
  sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
  sub_1BE04B594();

  v56 = v55[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading];

  KeyPath = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  v59 = &v7[*(v79 + 36)];
  *v59 = KeyPath;
  v59[1] = sub_1BD185ABC;
  v59[2] = v58;
  sub_1BE052434();
  sub_1BD1840F8();
  v60 = v80;
  sub_1BE050DE4();

  sub_1BD0DE53C(v7, &qword_1EBD3B330);
  v61 = v76;
  sub_1BD0DE19C(v38, v76, &qword_1EBD44BE0);
  v62 = v81;
  sub_1BD0DE19C(v60, v81, &qword_1EBD3B338);
  v63 = v82;
  sub_1BD0DE19C(v61, v82, &qword_1EBD44BE0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44BE8);
  sub_1BD0DE19C(v62, v63 + *(v64 + 48), &qword_1EBD3B338);
  sub_1BD0DE53C(v60, &qword_1EBD3B338);
  sub_1BD0DE53C(v38, &qword_1EBD44BE0);
  sub_1BD0DE53C(v62, &qword_1EBD3B338);
  return sub_1BD0DE53C(v61, &qword_1EBD44BE0);
}

id sub_1BD3C75CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B380);
  return sub_1BD3C7634(a1, a2 + *(v4 + 44));
}

id sub_1BD3C7634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v33 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69B80E0], v10, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v11 + 8))(v15, v10);
    v37 = v18;
    v38 = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v17) = v24;
    v26 = v25;
    sub_1BE04E4F4();
    v27 = (v34 + *(type metadata accessor for SavingsBeneficiaryView(0) + 40));
    v29 = *v27;
    v28 = v27[1];
    v37 = v29;
    v38 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1C0);
    sub_1BE0516A4();
    v30 = v36;
    swift_getKeyPath();
    v37 = v30;
    sub_1BD3C1EBC(&qword_1EBD3B1C8, type metadata accessor for AddBeneficiaryModel);
    sub_1BE04B594();

    v31 = v30[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading];

    v9[*(v35 + 36)] = (v31 & 1) == 0;
    sub_1BD0DE19C(v9, v5, &qword_1EBD3B2E0);
    *a2 = v21;
    *(a2 + 8) = v23;
    LOBYTE(v17) = v17 & 1;
    *(a2 + 16) = v17;
    *(a2 + 24) = v26;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B388);
    sub_1BD0DE19C(v5, a2 + *(v32 + 64), &qword_1EBD3B2E0);
    sub_1BD0D7F18(v21, v23, v17);
    sub_1BE048C84();
    sub_1BD0DE53C(v9, &qword_1EBD3B2E0);
    sub_1BD0DE53C(v5, &qword_1EBD3B2E0);
    sub_1BD0DDF10(v21, v23, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD3C79E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C30);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  v12 = a1[1];
  v22 = *a1;
  v23 = v12;
  v13 = a1[3];
  v24 = a1[2];
  v25 = v13;
  sub_1BD2FD934(&v22, v21);
  v14 = sub_1BD3C58E0();
  type metadata accessor for SavingsBeneficiaryView(0);
  v15 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  v16 = v23;
  *a2 = v22;
  *(a2 + 16) = v16;
  *(a2 + 64) = v14;
  type metadata accessor for DeviceAuthenticationModel();
  sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
  sub_1BE048964();
  sub_1BE048964();
  *(a2 + 72) = sub_1BE04E954();
  *(a2 + 80) = v17;
  type metadata accessor for AccountUserInfoModel();
  sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  *(a2 + 88) = sub_1BE04E954();
  *(a2 + 96) = v18;
  type metadata accessor for BeneficiaryCell(0);
  v19 = sub_1BE04FCC4();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_1BD0DE19C(v11, v7, &qword_1EBD44C30);
  sub_1BE051694();
  return sub_1BD0DE53C(v11, &qword_1EBD44C30);
}

uint64_t sub_1BD3C7C3C()
{
  type metadata accessor for SavingsBeneficiaryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

void (*sub_1BD3C7CB0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C30) - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);
  a1[2] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  a1[3] = v8;
  v10 = type metadata accessor for BeneficiaryCell(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v9, &qword_1EBD44C40);
  sub_1BE0516A4();
  return sub_1BD3C7DF0;
}

void sub_1BD3C7DF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_1BD0DE19C(*(a1 + 8), v3, &qword_1EBD44C30);
    sub_1BE0516B4();
    sub_1BD0DE53C(v2, &qword_1EBD44C40);
    v5 = v4;
    v6 = &qword_1EBD44C30;
  }

  else
  {
    sub_1BE0516B4();
    v6 = &qword_1EBD44C40;
    v5 = v2;
  }

  sub_1BD0DE53C(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

void sub_1BD3C7ECC(uint64_t *a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v38 - v13;
  v15 = *MEMORY[0x1E69B80E0];
  v16 = *(v3 + 104);
  v16(&v38 - v13, v15, v2, v12);
  v17 = PKPassKitBundle();
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = v17;
  v19 = sub_1BE04B6F4();
  v41 = v20;
  v42 = v19;

  v21 = *(v3 + 8);
  v21(v14, v2);
  v22 = v16;
  (v16)(v9, v15, v2);
  v23 = PKPassKitBundle();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = v23;
  v25 = sub_1BE04B6F4();
  v39 = v26;
  v40 = v25;

  v21(v9, v2);
  v27 = sub_1BE052404();
  v28 = PKDeviceSpecificLocalizedStringKeyForKey(v27, 0);

  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BE052434();

  v29 = v43;
  v22(v43, v15, v2);
  v30 = PKPassKitBundle();
  if (v30)
  {
    v31 = v30;
    v32 = v29;
    v33 = sub_1BE04B6F4();
    v35 = v34;

    v21(v32, v2);
    v36 = v41;
    *a1 = v42;
    a1[1] = v36;
    v37 = v39;
    a1[2] = v40;
    a1[3] = v37;
    a1[4] = v33;
    a1[5] = v35;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1BD3C81B4@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v3);
  v81 = (v78 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v92 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = v78 - v10;
  v11 = sub_1BE04F4A4();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CC0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v78 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v82, v19);
  v80 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = v78 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CC8);
  v87 = *(v28 - 8);
  v88 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v86 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v35 = v78 - v34;
  v85 = a1;
  result = [*a1 pk_displayName];
  if (result)
  {
    v37 = result;
    v38 = sub_1BE052434();
    v40 = v39;

    v95 = v38;
    v96 = v40;
    v78[1] = sub_1BD0DDEBC();
    v41 = sub_1BE0506C4();
    v43 = v42;
    v95 = v41;
    v96 = v42;
    LOBYTE(v40) = v44 & 1;
    v97 = v44 & 1;
    v98 = v45;
    sub_1BE052434();
    sub_1BE050DE4();

    sub_1BD0DDF10(v41, v43, v40);

    type metadata accessor for BeneficiaryCell(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);
    v46 = v85;
    sub_1BE0516C4();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD0);
    v48 = 1;
    v49 = (*(*(v47 - 8) + 56))(v18, 0, 1, v47);
    MEMORY[0x1EEE9AC00](v49, v50);
    sub_1BE04F494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD8);
    sub_1BD1103C8();
    sub_1BD3CB744();
    sub_1BE0509E4();
    (*(v83 + 8))(v14, v84);
    sub_1BD0DE53C(v18, &qword_1EBD44CC0);
    sub_1BD0DE53C(v27, &qword_1EBD452C0);
    v51 = v46[2];
    v94 = v35;
    if (v51)
    {
      v95 = v46[1];
      v96 = v51;
      sub_1BE048C84();
      v52 = sub_1BE0506C4();
      v54 = v53;
      v56 = v55;
      sub_1BE051234();
      v57 = sub_1BE050564();
      v59 = v58;
      v61 = v60;
      v63 = v62;

      sub_1BD0DDF10(v52, v54, v56 & 1);

      v95 = v57;
      v96 = v59;
      v97 = v61 & 1;
      v98 = v63;
      sub_1BE052434();
      v64 = v79;
      sub_1BE050DE4();

      sub_1BD0DDF10(v57, v59, v61 & 1);

      v65 = v80;
      sub_1BD0DE19C(v64, v80, &qword_1EBD452C0);
      v66 = v81;
      *v81 = 0;
      *(v66 + 8) = 1;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0);
      sub_1BD0DE19C(v65, v66 + *(v67 + 48), &qword_1EBD452C0);
      sub_1BD0DE53C(v64, &qword_1EBD452C0);
      v68 = v94;
      sub_1BD0DE53C(v65, &qword_1EBD452C0);
      v69 = v90;
      sub_1BD0DE204(v66, v90, &qword_1EBD44CB0);
      v48 = 0;
    }

    else
    {
      v68 = v35;
      v69 = v90;
    }

    (*(v89 + 56))(v69, v48, 1, v91);
    v71 = v86;
    v70 = v87;
    v72 = *(v87 + 16);
    v73 = v88;
    v72(v86, v68, v88);
    v74 = v92;
    sub_1BD0DE19C(v69, v92, &qword_1EBD44CB8);
    v75 = v93;
    v72(v93, v71, v73);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CE8);
    sub_1BD0DE19C(v74, &v75[*(v76 + 48)], &qword_1EBD44CB8);
    sub_1BD0DE53C(v69, &qword_1EBD44CB8);
    v77 = *(v70 + 8);
    v77(v94, v73);
    sub_1BD0DE53C(v74, &qword_1EBD44CB8);
    return (v77)(v71, v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3C89E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeneficiaryCell(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v24 = &v36 - v23;
  v43 = a1;
  if (*(a1 + 64) == 3)
  {
    v39 = a2;
    v40 = v21;
    (*(v15 + 104))(v18, *MEMORY[0x1E69B80E0], v14, v22.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v26 = result;
      v37 = sub_1BE04B6F4();
      v38 = v27;
      v28 = v27;

      (*(v15 + 8))(v18, v14);
      sub_1BE04E194();
      v29 = sub_1BE04E1D4();
      (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
      sub_1BD3CB7F4(v43, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryCell);
      v30 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v31 = swift_allocObject();
      sub_1BD3CAC58(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for BeneficiaryCell);
      v44[0] = v37;
      v44[1] = v28;
      v32 = sub_1BD0DE19C(v13, v42, &qword_1EBD396F8);
      MEMORY[0x1EEE9AC00](v32, v33);
      *(&v36 - 4) = v44;
      *(&v36 - 3) = 0x6873617274;
      *(&v36 - 2) = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
      sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
      sub_1BE0516F4();
      sub_1BD0DE53C(v13, &qword_1EBD396F8);

      v34 = v39;
      (*(v40 + 32))(v39, v24, v19);
      return (*(v40 + 56))(v34, 0, 1, v19);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v35 = *(v21 + 56);

    return v35(a2, 1, 1, v19, v22);
  }

  return result;
}

uint64_t sub_1BD3C8F04(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD3CB7F4(a1, v6, type metadata accessor for BeneficiaryCell);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD3CAC58(v6, v14 + v13, type metadata accessor for BeneficiaryCell);
  sub_1BD122C00(0, 0, v10, &unk_1BE0D2EF0, v14);
}

uint64_t sub_1BD3C90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = *(type metadata accessor for BeneficiaryCell(0) - 8);
  v4[27] = v5;
  v4[28] = *(v5 + 64);
  v4[29] = swift_task_alloc();
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[31] = v7;
  v4[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD3C91DC, v7, v6);
}

uint64_t sub_1BD3C91DC()
{
  v0[33] = *(v0[26] + 80);
  sub_1BD3C7ECC(v0 + 10);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1BD3C928C;

  return sub_1BDA809C4((v0 + 10), 0);
}

uint64_t sub_1BD3C928C()
{
  v1 = *v0;

  *(v1 + 160) = *(v1 + 80);
  sub_1BD0DE53C(v1 + 160, &qword_1EBD3A5C8);
  *(v1 + 176) = *(v1 + 96);
  sub_1BD0DE53C(v1 + 176, &qword_1EBD3A5C8);
  *(v1 + 192) = *(v1 + 112);
  sub_1BD0DE53C(v1 + 192, &qword_1EBD3A5C8);
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD3C9410, v3, v2);
}

uint64_t sub_1BD3C9410()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (*(v0 + 280) == 1)
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    *(v0 + 48) = v2[2];
    *(v0 + 64) = v4;
    *(v0 + 16) = v6;
    *(v0 + 32) = v5;
    sub_1BD3CB7F4(v2, v1, type metadata accessor for BeneficiaryCell);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1BD3CAC58(v1, v8 + v7, type metadata accessor for BeneficiaryCell);
    sub_1BD2FC284((v0 + 16), sub_1BD3CBB70, v8);
  }

  else
  {
    v9 = sub_1BD3C7CB0((v0 + 128));
    v11 = v10;
    v12 = sub_1BE04FCC4();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      sub_1BE04FCA4();
    }

    v9(v0 + 128, 0);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BD3C95EC(char a1)
{
  if (a1)
  {
    v1 = sub_1BD3C7CB0(v9);
    v3 = v2;
    v4 = sub_1BE04FCC4();
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {
      sub_1BE04FCB4();
    }
  }

  else
  {
    v1 = sub_1BD3C7CB0(v9);
    v6 = v5;
    v7 = sub_1BE04FCC4();
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      sub_1BE04FCA4();
    }
  }

  return (v1)(v9, 0);
}

uint64_t sub_1BD3C96E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C88);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  *v18 = sub_1BE04F504();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C90) + 44)];
  *v19 = sub_1BE04F504();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C98);
  sub_1BD3C81B4(a1, &v19[*(v20 + 44)]);
  *v10 = sub_1BE04F7C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CA0) + 44)];
  *v21 = sub_1BE04F504();
  *(v21 + 1) = 0;
  v21[16] = 1;
  sub_1BD3C81B4(a1, &v21[*(v20 + 44)]);
  sub_1BD0DE19C(v18, v14, &qword_1EBD44C88);
  sub_1BD0DE19C(v10, v6, &qword_1EBD44C80);
  v22 = v26;
  sub_1BD0DE19C(v14, v26, &qword_1EBD44C88);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CA8);
  sub_1BD0DE19C(v6, v22 + *(v23 + 48), &qword_1EBD44C80);
  sub_1BD0DE53C(v10, &qword_1EBD44C80);
  sub_1BD0DE53C(v18, &qword_1EBD44C88);
  sub_1BD0DE53C(v6, &qword_1EBD44C80);
  return sub_1BD0DE53C(v14, &qword_1EBD44C88);
}

uint64_t sub_1BD3C997C()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C68);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  *v9 = sub_1BE050194();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C70);
  sub_1BD3C96E8(v0, &v9[*(v10 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD44C78, &qword_1EBD44C68);
  sub_1BE050D14();
  (*(v2 + 8))(v5, v1);
  return sub_1BD0DE53C(v9, &qword_1EBD44C68);
}

void sub_1BD3C9B6C()
{
  sub_1BD3C9D6C();
  if (v0 <= 0x3F)
  {
    sub_1BD2D63D4();
    if (v1 <= 0x3F)
    {
      sub_1BD3C9E00();
      if (v2 <= 0x3F)
      {
        sub_1BD3CB524(319, &qword_1EBD449E0, &qword_1EBD449E8, &unk_1BE0FF9D0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BD3CB524(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD10EE48();
            if (v5 <= 0x3F)
            {
              sub_1BD3C9E94(319, &qword_1EBD449F0, type metadata accessor for AddBeneficiaryModel);
              if (v6 <= 0x3F)
              {
                sub_1BD3C9E94(319, &qword_1EBD4D390, MEMORY[0x1E697D718]);
                if (v7 <= 0x3F)
                {
                  sub_1BD3C9EE8();
                  if (v8 <= 0x3F)
                  {
                    sub_1BD3CB524(319, &qword_1EBD44A00, &qword_1EBD3B1B8, &unk_1BE0D2830, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
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

void sub_1BD3C9D6C()
{
  if (!qword_1EBD449D0)
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController);
    v0 = sub_1BE04EED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD449D0);
    }
  }
}

void sub_1BD3C9E00()
{
  if (!qword_1EBD449D8)
  {
    type metadata accessor for AccountUserInfoModel();
    sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD449D8);
    }
  }
}

void sub_1BD3C9E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD3C9EE8()
{
  if (!qword_1EBD449F8)
  {
    type metadata accessor for DeviceAuthenticationModel();
    sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD449F8);
    }
  }
}

unint64_t sub_1BD3C9F80()
{
  result = qword_1EBD44A08;
  if (!qword_1EBD44A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A08);
  }

  return result;
}

unint64_t sub_1BD3C9FF0()
{
  result = qword_1EBD44A70;
  if (!qword_1EBD44A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A78);
    sub_1BD3CA07C();
    sub_1BD3CA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A70);
  }

  return result;
}

unint64_t sub_1BD3CA07C()
{
  result = qword_1EBD44A80;
  if (!qword_1EBD44A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A88);
    sub_1BD0DE4F4(&qword_1EBD44A90, &qword_1EBD44A98);
    sub_1BD0DE4F4(&qword_1EBD3ABE8, &qword_1EBD3ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A80);
  }

  return result;
}

unint64_t sub_1BD3CA160()
{
  result = qword_1EBD44AA0;
  if (!qword_1EBD44AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AA8);
    sub_1BD3CA1EC();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AA0);
  }

  return result;
}

unint64_t sub_1BD3CA1EC()
{
  result = qword_1EBD44AB0;
  if (!qword_1EBD44AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AC0);
    sub_1BE04FB94();
    sub_1BD3CA2D4();
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AB0);
  }

  return result;
}

unint64_t sub_1BD3CA2D4()
{
  result = qword_1EBD44AC8;
  if (!qword_1EBD44AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AC0);
    sub_1BD0DE4F4(&qword_1EBD44AD0, &qword_1EBD44AD8);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AC8);
  }

  return result;
}

unint64_t sub_1BD3CA3B8()
{
  result = qword_1EBD44AE0;
  if (!qword_1EBD44AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AE0);
  }

  return result;
}

uint64_t objectdestroyTm_36()
{
  v1 = type metadata accessor for SavingsBeneficiaryView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8) + 32);
    v6 = sub_1BE04ED94();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  v7 = (v2 + v1[8]);
  v8 = type metadata accessor for FeatureError(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v8 + 20);
    v10 = sub_1BE04B824();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  v12 = v2 + v1[11];
  v13 = sub_1BE051AD4();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

void sub_1BD3CA768(uint64_t *a1)
{
  type metadata accessor for SavingsBeneficiaryView(0);

  sub_1BD3C3DAC(a1);
}

uint64_t sub_1BD3CA830(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1BD3CA8E0()
{
  result = qword_1EBD44AF8;
  if (!qword_1EBD44AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A50);
    sub_1BD3CA96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AF8);
  }

  return result;
}

unint64_t sub_1BD3CA96C()
{
  result = qword_1EBD44B00;
  if (!qword_1EBD44B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    sub_1BD0DE4F4(&qword_1EBD44AE8, &qword_1EBD44A38);
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD3C1EBC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B00);
  }

  return result;
}

uint64_t sub_1BD3CAAC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD3CAB70()
{
  result = qword_1EBD44B20;
  if (!qword_1EBD44B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B28);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B20);
  }

  return result;
}

uint64_t sub_1BD3CAC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD3CACCC()
{
  result = qword_1EBD44B60;
  if (!qword_1EBD44B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B58);
    sub_1BD0DE4F4(&qword_1EBD44B68, &qword_1EBD44B70);
    sub_1BD3CAAC4(&qword_1EBD44B78, &qword_1EBD44B80, &unk_1BE0D2C88, sub_1BD3CADBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B60);
  }

  return result;
}

unint64_t sub_1BD3CADBC()
{
  result = qword_1EBD44B88;
  if (!qword_1EBD44B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B90);
    sub_1BD3CAE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B88);
  }

  return result;
}

unint64_t sub_1BD3CAE48()
{
  result = qword_1EBD44B98;
  if (!qword_1EBD44B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BA0);
    sub_1BD3CAED4();
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B98);
  }

  return result;
}

unint64_t sub_1BD3CAED4()
{
  result = qword_1EBD44BA8;
  if (!qword_1EBD44BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BB0);
    sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &unk_1BE0DB120, sub_1BD10E4BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44BA8);
  }

  return result;
}

unint64_t sub_1BD3CB024()
{
  result = qword_1EBD44C08;
  if (!qword_1EBD44C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C08);
  }

  return result;
}

unint64_t sub_1BD3CB078()
{
  result = qword_1EBD44C10;
  if (!qword_1EBD44C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BC8);
    sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C10);
  }

  return result;
}

unint64_t sub_1BD3CB12C()
{
  result = qword_1EBD44C18;
  if (!qword_1EBD44C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BD0);
    sub_1BD3CB1E4();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C18);
  }

  return result;
}

unint64_t sub_1BD3CB1E4()
{
  result = qword_1EBD44C20;
  if (!qword_1EBD44C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BB8);
    sub_1BD3CB078();
    sub_1BD3C1EBC(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C20);
  }

  return result;
}

uint64_t sub_1BD3CB2A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SavingsBeneficiaryView(0);

  return sub_1BD3C79E0(a1, a2);
}

id sub_1BD3CB320(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE048C84();

    return a6;
  }

  return result;
}

uint64_t sub_1BD3CB384(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
  }

  return result;
}

void sub_1BD3CB434()
{
  type metadata accessor for PKAccountAddBeneficiariesContactMethod(319);
  if (v0 <= 0x3F)
  {
    sub_1BD3C9EE8();
    if (v1 <= 0x3F)
    {
      sub_1BD3C9E00();
      if (v2 <= 0x3F)
      {
        sub_1BD3CB524(319, &qword_1EBD44C58, &qword_1EBD44C30, &unk_1BE0D2DE0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3CB524(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BD3CB588()
{
  result = qword_1EBD44C60;
  if (!qword_1EBD44C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AF0);
    sub_1BD3CA8E0();
    sub_1BD3CAAC4(&qword_1EBD44B08, &qword_1EBD44AF0, &unk_1BE0D2A80, sub_1BD3CAB40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C60);
  }

  return result;
}

unint64_t sub_1BD3CB744()
{
  result = qword_1EBD44CE0;
  if (!qword_1EBD44CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44CD8);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44CE0);
  }

  return result;
}

uint64_t sub_1BD3CB7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3CB888()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE048C84();
  return sub_1BE051624();
}

uint64_t sub_1BD3CB914(uint64_t a1)
{
  v4 = *(type metadata accessor for BeneficiaryCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD3C90E4(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_122Tm()
{
  v1 = (type metadata accessor for BeneficiaryCell(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[10];
  v4 = sub_1BE04FCC4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40);

  return swift_deallocObject();
}

uint64_t sub_1BD3CBB70(char a1)
{
  type metadata accessor for BeneficiaryCell(0);

  return sub_1BD3C95EC(a1);
}

uint64_t sub_1BD3CBCBC()
{
  v70 = sub_1BE04D214();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v1);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v64 - v6;
  v7 = sub_1BE04BAC4();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B944();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_21;
  }

  v17 = *(v16 + 8);
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 32))(v0, &off_1F3BA49A0, ObjectType, v17);
  v21 = v20;
  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_21;
  }

  v66 = v0;
  v22 = swift_getObjectType();
  v23 = (*(v21 + 32))(v22, v21);
  swift_unknownObjectRelease();
  if (!(v23 >> 62))
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_20:

LABEL_21:
    sub_1BE04D0E4();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C34();
    if (os_log_type_enabled(v61, v62))
    {
      v49 = 2;
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BD026000, v61, v62, "Unable to fetch renderer to show passcode upgrade", v63, 2u);
      MEMORY[0x1BFB45F20](v63, -1, -1);

      (*(v69 + 8))(v3, v70);
      return v49;
    }

    (*(v69 + 8))(v3, v70);
    return 2;
  }

LABEL_5:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1BFB40900](0, v23);
    goto LABEL_8;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v23 + 32);
LABEL_8:
    v26 = v25;

    sub_1BE04BB94();
    v27 = sub_1BE04B934();
    (*(v12 + 8))(v15, v11);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    sub_1BE048964();
    sub_1BE04BC34();
    v31 = sub_1BE04B9A4();
    (*(v68 + 8))(v10, v7);
    v32 = objc_allocWithZone(PKPasscodeUpgradeFlowController);
    v81 = sub_1BD3CCA4C;
    v82 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1BD3CC8C0;
    v80 = &block_descriptor_81;
    v33 = _Block_copy(&aBlock);
    sub_1BE048964();
    v34 = [v32 initWithContext:v31 completion:v33];
    _Block_release(v33);

    v35 = &selRef_setIsFinalViewController_;
    if ([v27 respondsToSelector_])
    {
      v76[3] = sub_1BD0E5E8C(0, &qword_1EBD44D20);
      v76[0] = v34;
      v75[3] = sub_1BD0E5E8C(0, &qword_1EBD43450);
      v75[0] = v26;
      sub_1BD1C4810(v76, v73);
      v36 = v26;
      v37 = v74;
      v65 = v36;
      if (v74)
      {
        v38 = __swift_project_boxed_opaque_existential_1(v73, v74);
        v39 = *(v37 - 8);
        v40 = MEMORY[0x1EEE9AC00](v38, v38);
        v42 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v42, v40);
        sub_1BE048964();
        swift_unknownObjectRetain();
        v43 = v34;
        v44 = v36;
        v45 = sub_1BE053B74();
        (*(v39 + 8))(v42, v37);
        __swift_destroy_boxed_opaque_existential_0(v73);
      }

      else
      {
        sub_1BE048964();
        swift_unknownObjectRetain();
        v51 = v34;
        v52 = v36;
        v45 = 0;
      }

      sub_1BD1C4810(v75, v71);
      v53 = v72;
      if (v72)
      {
        v54 = __swift_project_boxed_opaque_existential_1(v71, v72);
        v55 = *(v53 - 8);
        v56 = MEMORY[0x1EEE9AC00](v54, v54);
        v58 = &v64 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v58, v56);
        v59 = sub_1BE053B74();
        (*(v55 + 8))(v58, v53);
        v35 = &selRef_setIsFinalViewController_;
        __swift_destroy_boxed_opaque_existential_0(v71);
      }

      else
      {
        v59 = 0;
      }

      v81 = sub_1BD3CCA4C;
      v82 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = sub_1BD3CC8C0;
      v80 = &block_descriptor_12_1;
      v60 = _Block_copy(&aBlock);
      sub_1BE048964();

      [v27 v35[286]];
      swift_unknownObjectRelease();
      _Block_release(v60);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1BD14EC0C(v75);
      sub_1BD14EC0C(v76);
      [*(v66 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter) reportViewAppeared];

      swift_unknownObjectRelease();

      return 1;
    }

    v46 = v67;
    sub_1BE04D0E4();
    v47 = sub_1BE04D204();
    v48 = sub_1BE052C34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = 2;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1BD026000, v47, v48, "Target device does not support passcode upgrade", v50, 2u);
      MEMORY[0x1BFB45F20](v50, -1, -1);

      swift_unknownObjectRelease();
      (*(v69 + 8))(v46, v70);

      return v49;
    }

    swift_unknownObjectRelease();

    (*(v69 + 8))(v46, v70);

    return 2;
  }

  __break(1u);
  return result;
}

void sub_1BD3CC6A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if ((*(a4 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      if (a2)
      {
        v8 = *&v7[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter];
        v9 = a2;
        if (v8)
        {
          v10 = v8;
          v11 = sub_1BE04A844();
          [v10 reportError:v11 context:0];
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          v18 = v7;
          sub_1BD25EEEC(v17);
        }

        else
        {
        }
      }

      else
      {
        v12 = *&v7[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter];
        if (v12)
        {
          [v12 reportPageCompleted:1 context:0];
        }

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v15 = v7;
          sub_1BD25EBAC(v15, v14);
        }
      }
    }
  }
}