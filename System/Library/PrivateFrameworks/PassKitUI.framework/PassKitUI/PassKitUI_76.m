void sub_1BD83F924()
{
  if (!qword_1EBD55588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55590);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD55588);
    }
  }
}

void sub_1BD83F988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD83F9F4()
{
  v1 = *(sub_1BE04C7B4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1BD83ECA4(v2, v3, v4, v5);
}

uint64_t sub_1BD83FA5C()
{
  v1 = *(sub_1BE04AFE4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1BD83EF20(v3, v0 + v2, v5, v6);
}

void sub_1BD83FAF0()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = qword_1EBD55570;
  v8 = *(v1 + qword_1EBD55570);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + qword_1EBD55570) = v10;
    sub_1BE04D084();
    sub_1BE048964();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v1 + v7);

      _os_log_impl(&dword_1BD026000, v11, v12, "Increasing physical button hint suppression count. New Value: %ld", v13, 0xCu);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    v14 = *(v1 + qword_1EBDAADA8 + 16);
    v21[0] = *(v1 + qword_1EBDAADA8);
    v21[1] = v14;
    v22 = *(v1 + qword_1EBDAADA8 + 32);
    v15 = *&v21[0];
    v16 = v22;
    v23 = *(&v21[0] + 1);
    v24 = *(&v14 + 1);
    sub_1BE048964();
    v17 = v15;
    sub_1BD0DE19C(&v23, v20, &qword_1EBD3D490);
    sub_1BD0DE19C(&v24, v20, &qword_1EBD40150);
    v18 = v16;
    sub_1BE048964();
    sub_1BDA74FEC(v21, v1, 0, 0);

    sub_1BD0DE53C(&v23, &qword_1EBD3D490);
    sub_1BD0DE53C(&v24, &qword_1EBD40150);
  }
}

void sub_1BD83FD74()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = qword_1EBD55570;
  v8 = *(v1 + qword_1EBD55570);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + qword_1EBD55570) = v10;
    sub_1BE04D084();
    sub_1BE048964();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v1 + v7);

      _os_log_impl(&dword_1BD026000, v11, v12, "Decreasing physical button hint suppression count. New Value: %ld", v13, 0xCu);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    v14 = *(v1 + qword_1EBDAADA8 + 16);
    v21[0] = *(v1 + qword_1EBDAADA8);
    v21[1] = v14;
    v22 = *(v1 + qword_1EBDAADA8 + 32);
    v15 = *&v21[0];
    v16 = v22;
    v23 = *(&v21[0] + 1);
    v24 = *(&v14 + 1);
    sub_1BE048964();
    v17 = v15;
    sub_1BD0DE19C(&v23, v20, &qword_1EBD3D490);
    sub_1BD0DE19C(&v24, v20, &qword_1EBD40150);
    v18 = v16;
    sub_1BE048964();
    sub_1BDA74FEC(v21, v1, 0, 0);

    sub_1BD0DE53C(&v23, &qword_1EBD3D490);
    sub_1BD0DE53C(&v24, &qword_1EBD40150);
  }
}

void sub_1BD83FFF8(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE04CB84();
  sub_1BE04D084();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_1BD026000, v9, v10, "Setting physicalButtonHidden: %{BOOL}d", v11, 8u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(v2 + qword_1EBDAADA8 + 16);
  v19[0] = *(v2 + qword_1EBDAADA8);
  v19[1] = v12;
  v20 = *(v2 + qword_1EBDAADA8 + 32);
  v13 = *&v19[0];
  v14 = v20;
  v21 = *(&v19[0] + 1);
  v22 = *(&v12 + 1);
  sub_1BE048964();
  v15 = v13;
  sub_1BD0DE19C(&v21, v18, &qword_1EBD3D490);
  sub_1BD0DE19C(&v22, v18, &qword_1EBD40150);
  v16 = v14;
  sub_1BE048964();
  sub_1BDA74FEC(v19, v2, 0, 0);

  sub_1BD0DE53C(&v21, &qword_1EBD3D490);
  sub_1BD0DE53C(&v22, &qword_1EBD40150);
}

uint64_t sub_1BD840250()
{
  result = sub_1BD1123AC(&unk_1F3B8DEF0);
  qword_1EBD36420 = result;
  return result;
}

uint64_t sub_1BD840278()
{
  result = sub_1BD1123C0(&unk_1F3B8DF40);
  qword_1EBD55558 = result;
  return result;
}

uint64_t sub_1BD8402A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55630);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55638) + 36));
  *v7 = sub_1BD840624;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55640) + 36));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = sub_1BD840628;
  v8[3] = v5;
  return swift_retain_n();
}

uint64_t sub_1BD84038C(void *a1)
{
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  v4 = [result requestType];

  result = [a1 paymentRequest];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result useLocationBasedAuthorization];

  v7 = [a1 mode];
  v8 = v7;
  if (v7 <= 2)
  {
    result = 2;
    switch(v8)
    {
      case 0:
        return result;
      case 1:
        v9 = [a1 praguePolicyRequired];
        v10 = [a1 pinRequired];
        v11 = v6 == 0;
        if (v9)
        {
          v12 = 5;
          if (v6)
          {
            v12 = 7;
          }

          v13 = v10 == 0;
          v14 = 6;
LABEL_19:
          if (v13)
          {
            return v12;
          }

          else
          {
            return v14;
          }
        }

LABEL_16:
        v12 = 2;
        if (!v11)
        {
          v12 = 4;
        }

        v13 = v10 == 0;
        v14 = 3;
        goto LABEL_19;
      case 2:
        return result;
    }

LABEL_15:
    v10 = sub_1BE053994();
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 - 3) >= 2)
  {
    goto LABEL_15;
  }

  if (v4 == 6)
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1BD840530@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55628);
  result = v5(v6, v7, v8, &a1[*(v9 + 80)]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD8405B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD84062C()
{
  result = qword_1EBD55648;
  if (!qword_1EBD55648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55640);
    sub_1BD8406B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55648);
  }

  return result;
}

unint64_t sub_1BD8406B8()
{
  result = qword_1EBD55650;
  if (!qword_1EBD55650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55638);
    sub_1BD0DE4F4(&qword_1EBD55658, &qword_1EBD55630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55650);
  }

  return result;
}

__n128 sub_1BD840770@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD840860(_OWORD *a1)
{
  v2 = a1[11];
  v16[10] = a1[10];
  v16[11] = v2;
  v16[12] = a1[12];
  v3 = a1[7];
  v16[6] = a1[6];
  v16[7] = v3;
  v4 = a1[9];
  v16[8] = a1[8];
  v16[9] = v4;
  v5 = a1[3];
  v16[2] = a1[2];
  v16[3] = v5;
  v6 = a1[5];
  v16[4] = a1[4];
  v16[5] = v6;
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a1[11];
  v15[23] = a1[10];
  v15[24] = v8;
  v15[25] = a1[12];
  v9 = a1[7];
  v15[19] = a1[6];
  v15[20] = v9;
  v10 = a1[9];
  v15[21] = a1[8];
  v15[22] = v10;
  v11 = a1[3];
  v15[15] = a1[2];
  v15[16] = v11;
  v12 = a1[5];
  v15[17] = a1[4];
  v15[18] = v12;
  v13 = a1[1];
  v15[13] = *a1;
  v15[14] = v13;
  sub_1BE048964();
  sub_1BD843620(v16, v15);
  return sub_1BE04D8C4();
}

__n128 sub_1BD840954@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD840A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD8434FC(v5, v7) & 1;
}

__n128 sub_1BD840A84@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BD840B14(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1BE04B0F4();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556A8);
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__configuration;
  LOWORD(v39) = 0;
  v16 = MEMORY[0x1E69E7CD0];
  *(&v39 + 1) = MEMORY[0x1E69E7CD0];
  LOWORD(v40) = 1;
  BYTE2(v40) = 0;
  *(&v40 + 1) = MEMORY[0x1E69E7CD0];
  *&v41 = 0;
  sub_1BE04D874();
  v17 = v14;
  v18 = v10;
  v20 = v35;
  v19 = v36;
  (*(v11 + 32))(v2 + v15, v17, v18);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BE053704())
  {
    v16 = sub_1BD1120F4(MEMORY[0x1E69E7CC0]);
  }

  *(v2 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_cancellables) = v16;
  v21 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__originalAddress;
  *&v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393C8);
  sub_1BE04D874();
  (*(v6 + 32))(v2 + v21, v9, v34);
  v22 = *(v37 + 16);
  v22(v5, v19, v20);
  if (qword_1EBD36F10 != -1)
  {
    swift_once();
  }

  sub_1BD4F8008(v5, qword_1EBDAB6C0, &v39);
  swift_beginAccess();
  v38[10] = v49;
  v38[11] = v50;
  v38[12] = v51;
  v38[6] = v45;
  v38[7] = v46;
  v38[8] = v47;
  v38[9] = v48;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v38[5] = v44;
  v38[0] = v39;
  v38[1] = v40;
  sub_1BE04D874();
  swift_endAccess();
  v22(v5, v19, v20);
  type metadata accessor for PostalAddressEditingModel();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel) = sub_1BD209A98(v5);
  sub_1BD841418();
  v23 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel;
  sub_1BD843B08(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
  *&v38[0] = sub_1BE04D814();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1BD843610;
  *(v25 + 24) = v24;
  sub_1BE04D864();
  sub_1BE048964();
  sub_1BE04D954();

  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  *&v38[0] = *(*(v2 + v23) + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA8);
  sub_1BD0DE4F4(&qword_1EBD556B8, &qword_1EBD3DAA8);
  *&v38[0] = sub_1BE04D8E4();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556C0);
  sub_1BD0DE4F4(&qword_1EBD556C8, &qword_1EBD556C0);
  sub_1BE04D954();

  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  v26 = sub_1BD20958C();
  v27 = [v26 ISOCountryCode];

  v28 = sub_1BE052434();
  v30 = v29;

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = sub_1BE04D8A4();
  *(v32 + 8) = v28;
  *(v32 + 16) = v30;

  v31(v38, 0);

  (*(v37 + 8))(v36, v35);
  return v2;
}

uint64_t sub_1BD841280()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for AddressEditingModel();
    sub_1BD843B08(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
    sub_1BE04D814();

    sub_1BE04D854();
  }

  return result;
}

uint64_t sub_1BD841334(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048C84();
    v4 = sub_1BE04D8A4();
    *(v5 + 8) = v2;
    *(v5 + 16) = v1;

    v4(v6, 0);
  }

  return result;
}

void sub_1BD841418()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v27[0] = v46;
  v27[1] = v47;
  v28 = v48;
  sub_1BD10D558(v27);
  v0 = v27[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_1BE04D8A4();
  *(v2 + 104) = v0;
  v1(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29[0] = v46;
  v29[1] = v47;
  v30 = v48;
  sub_1BD10D558(v29);
  v3 = BYTE1(v29[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_1BE04D8A4();
  *(v5 + 105) = v3;
  v4(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v31[0] = v46;
  v31[1] = v47;
  v32 = v48;
  v6 = *(&v46 + 1);
  sub_1BE048C84();
  sub_1BD10D558(v31);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v46 = v6;
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = v46;
  v34 = v47;
  v35 = v48;
  sub_1BD10D558(&v33);
  v7 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1BE04D8A4();
  *(v9 + 192) = v7;
  v8(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v36 = v46;
  v37 = v47;
  v38 = v48;
  sub_1BD10D558(&v36);
  v10 = BYTE1(v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_1BE04D8A4();
  *(v12 + 193) = v10;
  v11(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v39 = v46;
  v40 = v47;
  v41 = v48;
  sub_1BD10D558(&v39);
  v13 = BYTE2(v40);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_1BE04D8A4();
  *(v15 + 194) = v13;
  v14(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v42[0] = v46;
  v42[1] = v47;
  v43 = v48;
  v16 = *(&v47 + 1);
  sub_1BE048C84();
  sub_1BD10D558(v42);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v46 = v16;
  sub_1BE048964();
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v17 = v48;
  v45 = v48;
  v44[0] = v46;
  v44[1] = v47;
  v18 = v48;
  sub_1BD10D558(v44);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = sub_1BE04D8A4();
  v21 = *v20;
  *v20 = v17;

  v19(&v46, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v48 = v26;
  v46 = v24;
  v47 = v25;
  v22 = v26;
  sub_1BD10D558(&v46);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v23 = v22;
  sub_1BE04D8C4();
  sub_1BD20AA3C();
}

uint64_t sub_1BD841AF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD841B64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (*&v26[0])
  {
    [*&v26[0] mutableCopy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD4DF70);
    swift_dynamicCast();
    v0 = *&v25[0];
    [v0 setContactSource_];
  }

  else
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v26[10] = v25[10];
  v26[11] = v25[11];
  v26[12] = v25[12];
  v26[6] = v25[6];
  v26[7] = v25[7];
  v26[8] = v25[8];
  v26[9] = v25[9];
  v26[2] = v25[2];
  v26[3] = v25[3];
  v26[4] = v25[4];
  v26[5] = v25[5];
  v26[0] = v25[0];
  v26[1] = v25[1];
  sub_1BD4F7884(v25);
  sub_1BD4FBC18(v26);
  v1 = sub_1BE052404();
  [v0 setGivenName_];

  v2 = sub_1BE052404();
  [v0 setFamilyName_];

  v3 = sub_1BE052404();
  [v0 setPhoneticGivenName_];

  v4 = sub_1BE052404();
  [v0 setPhoneticFamilyName_];

  v5 = sub_1BE052404();
  [v0 setOrganizationName_];

  sub_1BD4F82D4(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (!v24)
  {
    goto LABEL_14;
  }

  v6 = [v24 postalAddresses];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v7 = sub_1BE052744();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_13:

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_7:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1BFB40900](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v10 label];

  if (!v11)
  {
    goto LABEL_14;
  }

  sub_1BE052434();
  v13 = v12;

LABEL_15:
  v14 = sub_1BD20958C();
  if (v13)
  {
    v15 = sub_1BE052404();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v15 value:v14];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B7020;
  *(v17 + 32) = v16;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v19 = sub_1BE052724();

  [v0 setPostalAddresses_];

  sub_1BD6B04D8();
  v20 = sub_1BE052404();

  [v0 setValueSource_];

  v21 = sub_1BD20958C();
  v23 = v22;

  [v0 setFormattingConstrained_];
  return v0;
}

uint64_t sub_1BD84208C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__contactInformationEditingModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__configuration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__originalAddress;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556A8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddressEditingModel()
{
  result = qword_1EBD55680;
  if (!qword_1EBD55680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD842240()
{
  sub_1BD540F14(319, &qword_1EBD55690);
  if (v0 <= 0x3F)
  {
    sub_1BD540F14(319, &qword_1EBD55698);
    if (v1 <= 0x3F)
    {
      sub_1BD84237C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD84237C()
{
  if (!qword_1EBD556A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393C8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD556A0);
    }
  }
}

uint64_t sub_1BD8423F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddressEditingModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD842430@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD8424B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD84252C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_1BE052434();
      sub_1BE053D04();
      v27 = v13;
      sub_1BE052524();
      v14 = sub_1BE053D64();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_1BE052434();
        v20 = v19;
        if (v18 == sub_1BE052434() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_1BE053B84();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD842760(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = v8;
  if (v7)
  {
    do
    {
      v10 = (v7 - 1) & v7;
LABEL_13:
      sub_1BE053D04();
      sub_1BD251514();
      sub_1BE052524();

      v13 = sub_1BE053D64();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }

      v23 = v10;
      v16 = ~v14;
      while (1)
      {
        v17 = sub_1BE052434();
        v19 = v18;
        if (v17 == sub_1BE052434() && v19 == v20)
        {
          break;
        }

        v21 = sub_1BE053B84();

        if (v21)
        {
          goto LABEL_21;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_21:
      v8 = v22;
      v7 = v23;
    }

    while (v23);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD842AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1BD843B08(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
        v29 = sub_1BE052284();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1BD843B08(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
          v34 = sub_1BE052334();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BD842E54(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1BE04D7F4();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EBD597F0;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1BD843B08(&qword_1EBD597F0, MEMORY[0x1E695BF10]);
          sub_1BE048964();
          v19 = sub_1BE052284();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_1BD843B08(&qword_1EBD39850, MEMORY[0x1E695BF10]);
          while ((sub_1BE052334() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1EBD597F0;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1BD8433F8(v8, v7);
}

uint64_t sub_1BD843148(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1BE053D04();
    sub_1BE048C84();
    sub_1BE052524();
    v16 = sub_1BE053D64();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD843300@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD843380(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD8433F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1BE053704();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:
    sub_1BE048964();
    v12 = sub_1BE053754();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD8434FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  if (sub_1BD842760(*(a1 + 1), *(a2 + 1)) & 1) != 0 && ((a1[16] ^ a2[16]) & 1) == 0 && ((a1[17] ^ a2[17]) & 1) == 0 && ((a1[18] ^ a2[18]) & 1) == 0 && (sub_1BD842760(*(a1 + 3), *(a2 + 3)))
  {
    v5 = *(a1 + 4);
    v6 = *(a2 + 4);
    if (v5)
    {
      if (v6)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3E6C8);
        v7 = v6;
        v8 = v5;
        v9 = sub_1BE053074();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1BD84367C(void *a1)
{
  [a1 copy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  swift_dynamicCast();
  v2 = [a1 valueSource];
  [v27 setValueSource_];

  [v27 setFormattingConstrained_];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v32[0] = v27;
  v3 = v27;
  sub_1BE048964();
  sub_1BE04D8C4();
  v4 = v3;
  sub_1BD539BE0(v4, v26);
  v29 = v26[2];
  v30 = v26[3];
  v31 = v26[4];
  v27 = v26[0];
  v28 = v26[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_1BE04D8A4();
  v7 = v6;
  v8 = *(v6 + 40);
  v9 = *(v6 + 56);
  v10 = *(v6 + 88);
  v32[3] = *(v6 + 72);
  v32[4] = v10;
  v32[1] = v8;
  v32[2] = v9;
  v32[0] = *(v6 + 24);
  v11 = v30;
  *(v6 + 88) = v31;
  *(v6 + 72) = v11;
  v12 = v29;
  v13 = v27;
  *(v6 + 40) = v28;
  *(v6 + 56) = v12;
  *(v6 + 24) = v13;
  sub_1BD4F8278(v26, &v24);
  sub_1BD843A44(v32);
  sub_1BD843AAC(v26, v7 + 112);
  v5(v25, 0);

  v14 = [v4 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v15 = sub_1BE052744();

  if (v15 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_8:

    v18 = 0;
    goto LABEL_9;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1BFB40900](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 value];

LABEL_9:
  v19 = [v4 valueSource];
  if (v19)
  {
    v20 = v19;
    sub_1BE052434();
  }

  else
  {
    sub_1BE052434();
  }

  v21 = sub_1BD6B9D24();
  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E695CF60]) init];
  }

  if (v21 == 10)
  {
    v21 = 6;
  }

  v23 = v18;
  sub_1BD209980(v22, v21, [v4 formattingConstrained]);
}

uint64_t sub_1BD843A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD843B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ListRowGestureActionsModifier()
{
  result = qword_1EBD556E0;
  if (!qword_1EBD556E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD843BC4()
{
  sub_1BD45C2C0(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD45C2C0(319, &qword_1EBD40448, &qword_1EBD40450, &unk_1BE0D7250, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD843CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ListRowGestureActionsModifier();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v17 = *(v16 + 24);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  sub_1BD0D44B8(a1);
  sub_1BD0D44B8(a3);
  MEMORY[0x1BFB3E0D0](v15, a5, v12, a6);
  return sub_1BD84578C(v15);
}

uint64_t sub_1BD843DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556F0);
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55700);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v39 - v15;
  if (PKOsloDefaultsManagementEnabled() && (v17 = sub_1BD844360(), (v17 & 1) == 0) && (*v2 || v2[2]))
  {
    v41 = v39;
    MEMORY[0x1EEE9AC00](v17, v18);
    v39[-2] = v2;
    v45 = v9;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55708);
    v39[1] = a1;
    v26 = v25;
    v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55718);
    v27 = sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708);
    v44 = v8;
    v28 = v27;
    v29 = sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718);
    v40 = v4;
    v30 = v29;
    v42 = v28;
    v43 = v26;
    v31 = v39[0];
    v32 = sub_1BE0509F4();
    v41 = v39;
    MEMORY[0x1EEE9AC00](v32, v33);
    v39[-2] = v2;
    v48 = v26;
    v49 = v31;
    v34 = v31;
    v50 = v28;
    v51 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v40;
    sub_1BE0508B4();
    (*(v46 + 8))(v7, v36);
    v38 = v44;
    v37 = v45;
    (*(v45 + 16))(v16, v12, v44);
    swift_storeEnumTagMultiPayload();
    v48 = v36;
    v49 = v34;
    v50 = OpaqueTypeConformance2;
    v51 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v37 + 8))(v12, v38);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55708);
    (*(*(v19 - 8) + 16))(v16, a1, v19);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55718);
    v22 = sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718);
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v51 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    v48 = v4;
    v49 = v21;
    v50 = v23;
    v51 = v22;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD844360()
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
  type metadata accessor for ListRowGestureActionsModifier();
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
      sub_1BD84559C();
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

id sub_1BD844888()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
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

id sub_1BD844A4C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1BD844BB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v41[1] = a2;
  v46 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v4);
  v42 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55730);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v43 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v41 - v27;
  if (a1[2])
  {
    v41[0] = a1[3];
    sub_1BE048964();
    sub_1BE04E194();
    v29 = sub_1BE04E1D4();
    (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BE0516F4();
    (*(v18 + 32))(v28, v21, v17);
    (*(v18 + 56))(v28, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v41 - v27, 1, 1, v17);
  }

  v30 = *a1;
  if (*a1)
  {
    sub_1BD0D44B8(v30);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    v31 = v42;
    sub_1BE051704();
    v32 = sub_1BE051434();
    sub_1BD0D4744(v30);
    KeyPath = swift_getKeyPath();
    v34 = (v31 + *(v47 + 36));
    *v34 = KeyPath;
    v34[1] = v32;
    sub_1BD84552C(v31, v12);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v44 + 56))(v12, v35, 1, v47);
  v36 = v43;
  sub_1BD0DE19C(v28, v43, &qword_1EBD44CD8);
  v37 = v45;
  sub_1BD0DE19C(v12, v45, &qword_1EBD55730);
  v38 = v46;
  sub_1BD0DE19C(v36, v46, &qword_1EBD44CD8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55738);
  sub_1BD0DE19C(v37, v38 + *(v39 + 48), &qword_1EBD55730);
  sub_1BD0DE53C(v12, &qword_1EBD55730);
  sub_1BD0DE53C(v28, &qword_1EBD44CD8);
  sub_1BD0DE53C(v37, &qword_1EBD55730);
  return sub_1BD0DE53C(v36, &qword_1EBD44CD8);
}

id sub_1BD845120()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8068], v0, v3);
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

id sub_1BD8452E4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1BD845450@<X0>(uint64_t *a1@<X8>)
{
  v2 = PKPassKitUIBundle();
  result = sub_1BE0515F4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD84552C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD84559C()
{
  result = qword_1EBD40538;
  if (!qword_1EBD40538)
  {
    sub_1BE051AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40538);
  }

  return result;
}

unint64_t sub_1BD8455F4()
{
  result = qword_1EBD55740;
  if (!qword_1EBD55740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55748);
    sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD556F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55708);
    sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55740);
  }

  return result;
}

uint64_t sub_1BD84578C(uint64_t a1)
{
  v2 = type metadata accessor for ListRowGestureActionsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD8457EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1BE048964();
  v3(a2);
}

uint64_t sub_1BD845840()
{
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v1 = 0;
  }

  else
  {
    v1 = PKRunningInLockScreenPlugin() ^ 1;
  }

  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles) = v1;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken) = -1;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

id ExpressTogglesPaymentPassDetailSectionController.__allocating_init(with:viewStyle:expressPassController:delegate:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v10 = 0;
  }

  else
  {
    v10 = PKRunningInLockScreenPlugin() ^ 1;
  }

  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] = v10;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] = MEMORY[0x1E69E7CC0];
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled] = 2;
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled] = 2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken] = -1;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] = a1;
  swift_unknownObjectWeakAssign();
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] = a2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController] = a3;
  v11 = a1;
  v12 = a3;
  v13 = [v11 areCredentialsStoredInKML];
  v14 = 0;
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass] = v13;
  if (v13)
  {
    v14 = [v11 supportedRadioTechnologies];
  }

  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] = v14;
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

id ExpressTogglesPaymentPassDetailSectionController.init(with:viewStyle:expressPassController:delegate:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BD84BDF0(a1, a2, a3);

  return v7;
}

id ExpressTogglesPaymentPassDetailSectionController.__deallocating_deinit()
{
  v1 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD845DA8()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController) existingExpressPassConfigurationForPass_];
  v14 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15 == 2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v13)
  {
    v16 = [v13 isNFCExpressEnabled];
    if (v16 == *(v0 + v14))
    {
      v17 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v17 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v1 + v14) = v16;
  v17 = 1;
LABEL_7:
  swift_endAccess();
  v18 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 == 2)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (v13)
  {
    v20 = [v13 isUWBExpressEnabled];
    if (v20 == *(v1 + v18))
    {
      goto LABEL_14;
    }

LABEL_13:
    *(v1 + v18) = v20;
    swift_endAccess();
LABEL_15:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v25 = sub_1BE052D54();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD84CDD8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_109_2;
    v22 = _Block_copy(aBlock);

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    v23 = v25;
    MEMORY[0x1BFB3FDF0](0, v12, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v7);
    return;
  }

  if (v19)
  {
    LOBYTE(v20) = 0;
    goto LABEL_13;
  }

LABEL_14:
  swift_endAccess();
  if (v17)
  {
    goto LABEL_15;
  }
}

void sub_1BD846164()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch);
    if (v11)
    {
      v12 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v13 = v10[v12];
      if (v13 == 2)
      {
        __break(1u);
        goto LABEL_21;
      }

      [v11 setOn_];
    }

    v14 = *&v10[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
    if (v14)
    {
      v15 = [v14 detailTextLabel];
      if (v15)
      {
        v16 = v15;
        v17 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        swift_beginAccess();
        if (v10[v17] == 2)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        (*(v1 + 104))(v8, *MEMORY[0x1E69B80D8], v0);
        v18 = PKPassKitBundle();
        if (!v18)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v19 = v18;
        sub_1BE04B6F4();

        (*(v1 + 8))(v8, v0);
        v20 = sub_1BE052404();

        [v16 setText_];
      }
    }

    v21 = *&v10[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch];
    if (!v21)
    {
LABEL_13:
      v24 = *&v10[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
      if (!v24)
      {
        goto LABEL_18;
      }

      v25 = [v24 detailTextLabel];
      if (!v25)
      {
        goto LABEL_18;
      }

      v26 = v25;
      v27 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
      swift_beginAccess();
      if (v10[v27] != 2)
      {
        (*(v1 + 104))(v4, *MEMORY[0x1E69B80D8], v0);
        v28 = PKPassKitBundle();
        if (v28)
        {
          v29 = v28;
          sub_1BE04B6F4();

          (*(v1 + 8))(v4, v0);
          v30 = sub_1BE052404();

          [v26 setText_];

LABEL_18:
          return;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v23 = v10[v22];
    if (v23 != 2)
    {
      [v21 setOn_];
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_1BD846650()
{
  if ([v0 currentSegment] || !*(*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v0 allSectionIdentifiers];
  v3 = sub_1BE052744();

  return v3;
}

uint64_t sub_1BD846708(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  if (*(v2 + v14) == -1)
  {
    v25 = [objc_opt_self() defaultCenter];
    [v25 addObserver:v2 selector:sel_expressPassDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
    sub_1BE052434();
    v26 = a2;
    v27 = v9;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v24 = sub_1BE052D54();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_1BD84C060;
    v34 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD8457EC;
    v32 = &block_descriptor_6_1;
    v16 = _Block_copy(&aBlock);

    v17 = sub_1BE0524D4();
    v9 = v27;

    swift_beginAccess();
    v18 = (v2 + v14);
    v19 = v24;
    notify_register_dispatch((v17 + 32), v18, v24, v16);
    swift_endAccess();
    _Block_release(v16);

    a2 = v26;
  }

  sub_1BD847FB0();
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  *(v21 + 24) = a2;
  v33 = sub_1BD214190;
  v34 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1BD126964;
  v32 = &block_descriptor_190;
  v22 = _Block_copy(&aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v8, v22);
  _Block_release(v22);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_1BD846B6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD845DA8();
  }
}

void sub_1BD846C4C()
{
  v1 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport;
  v2 = *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v2 == 2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v2)
  {
    v3 = sub_1BD1D99EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1BD1D99EC((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v3[v5 + 32] = 0;
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v2 == 2)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1BD1D99EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    v6 = v8 + 1;
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1BD1D99EC((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v6;
    v3[v8 + 32] = 1;
    goto LABEL_16;
  }

  v6 = *(v3 + 2);
  if (v6)
  {
LABEL_16:
    if ((*(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1BD1D99EC(0, v6 + 1, 1, v3);
      }

      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_1BD1D99EC((v9 > 1), v10 + 1, 1, v3);
      }

      *(v3 + 2) = v10 + 1;
      v3[v10 + 32] = 2;
    }
  }

  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes) = v3;
}

id sub_1BD846FA4(uint64_t a1)
{
  v3 = sub_1BE04D324();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58 - v16;
  v22 = MEMORY[0x1EEE9AC00](v18, v19);
  v24 = &v58 - v23;
  v25 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch;
  v26 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch];
  if (v26)
  {
    v27 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch];
    v28 = v26;
    return v27;
  }

  v67 = a1;
  v29 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
  if (v29)
  {
    v27 = v29;
    v30 = 0;
    return v27;
  }

  v63 = v20;
  v64 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText;
  v62 = v21;
  v66 = v3;
  v31 = v20;
  result = [*&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isHomeKeyPass];
  v59 = v4;
  if (!result)
  {
    v39 = *(v31 + 104);
    v61 = *MEMORY[0x1E69B80D8];
    v60 = v39;
    v39(v13);
    result = PKPassKitBundle();
    if (result)
    {
      v38 = result;
      v40 = v31;
      v35 = v7;
      v65 = sub_1BE04B6F4();
      v24 = v13;
      v37 = v66;
LABEL_15:

      v43 = *(v40 + 8);
      v41 = v40 + 8;
      v42 = v43;
      v43(v24, v8);
      if (v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] != 1)
      {
        v66 = v41;
        v49 = [v1 primaryTextColor];
        if (!v49)
        {
          v49 = [objc_opt_self() labelColor];
        }

        v50 = [v1 value1CellWithTextColor:v49 forTableView:v67];

        v51 = *&v1[v64];
        *&v1[v64] = v50;
        v27 = v50;

        v52 = v1;
        MEMORY[0x1BFB3FD30]();
        sub_1BE048C84();
        sub_1BE04D304();
        v53 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        result = swift_beginAccess();
        if (v52[v53] != 2)
        {

          v54 = v62;
          v60(v62, v61, v8);
          result = PKPassKitBundle();
          if (result)
          {
            v55 = result;
            sub_1BE04B6F4();

            v42(v54, v8);
            sub_1BE04D2B4();
            v68[3] = v37;
            v68[4] = MEMORY[0x1E69DC110];
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
            v57 = v59;
            (*(v59 + 16))(boxed_opaque_existential_1, v35, v37);
            MEMORY[0x1BFB3FD10](v68);
            (*(v57 + 8))(v35, v37);
            goto LABEL_23;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v44 = sub_1BE052404();
      v45 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      result = swift_beginAccess();
      v46 = v1[v45];
      if (v46 != 2)
      {

        v47 = [v1 settingsTableCellWithTitle:v44 action:sel_nfcExpressAccessSwitchChanged_ setOn:v46 & 1 enabled:1];

        v48 = *&v1[v25];
        *&v1[v25] = v47;
        v27 = v47;

LABEL_23:
        PKAccessibilityIDSet(v27, *MEMORY[0x1E69B97B0]);

        return v27;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport];
  if (v33 == 2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v34 = v31;
  v35 = v7;
  v36 = *(v31 + 104);
  v37 = v66;
  v61 = *MEMORY[0x1E69B80D8];
  v60 = v36;
  if ((v33 & 0x100) == 0)
  {
    v36(v17);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v38 = result;
    v65 = sub_1BE04B6F4();
    v24 = v17;
    goto LABEL_14;
  }

  v36(v24);
  result = PKPassKitBundle();
  if (result)
  {
    v38 = result;
    v65 = sub_1BE04B6F4();
LABEL_14:
    v40 = v34;
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1BD847618(void *a1)
{
  v3 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = [a1 isOn];
  v6 = v5;
  if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    if ((v5 & 1) == 0)
    {
      [*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass) isCarKeyPass];
    }

    sub_1BD848C20(v1, v6, 0);
  }
}

void sub_1BD847720(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D324();
  v12 = MEMORY[0x1EEE9AC00](v8, v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch;
  v16 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch];
  if (v16)
  {
    v17 = v16;
    return;
  }

  v18 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText;
  v19 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
  if (v19)
  {
    v19;
    v20 = 0;
    return;
  }

  v43 = v11;
  v44 = v10;
  v21 = [*&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isHomeKeyPass];
  v45 = v4;
  if (v21)
  {
    v22 = sub_1BE052404();
    v23 = PKLocalizedHomeKitUWBString(v22);

    if (v23)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v24 = sub_1BE052404();
  v23 = PKLocalizedCredentialString(v24);

  if (!v23)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  sub_1BE052434();

  if (v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] == 1)
  {
    v25 = sub_1BE052404();
    v26 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v27 = v1[v26];
    if (v27 != 2)
    {

      v28 = [v1 settingsTableCellWithTitle:v25 action:sel_uwbExpressAccessSwitchChanged_ setOn:v27 & 1 enabled:1];

      v29 = *&v1[v15];
      *&v1[v15] = v28;
      v30 = v28;

LABEL_17:
      PKAccessibilityIDSet(v30, *MEMORY[0x1E69B9D80]);

      return;
    }

    goto LABEL_19;
  }

  v31 = [v1 primaryTextColor];
  if (!v31)
  {
    v31 = [objc_opt_self() labelColor];
  }

  v32 = [v1 value1CellWithTextColor:v31 forTableView:a1];

  v33 = *&v1[v18];
  *&v1[v18] = v32;
  v30 = v32;

  v34 = v1;
  MEMORY[0x1BFB3FD30]();
  sub_1BE048C84();
  sub_1BE04D304();
  v35 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  if (v34[v35] == 2)
  {
    goto LABEL_20;
  }

  v36 = v45;
  (*(v45 + 104))(v7, *MEMORY[0x1E69B80D8], v3);
  v37 = PKPassKitBundle();
  if (v37)
  {
    v38 = v37;
    sub_1BE04B6F4();

    (*(v36 + 8))(v7, v3);
    sub_1BE04D2B4();
    v39 = v44;
    v46[3] = v44;
    v46[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    v41 = v43;
    (*(v43 + 16))(boxed_opaque_existential_1, v14, v39);
    MEMORY[0x1BFB3FD10](v46);
    (*(v41 + 8))(v14, v39);
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

id sub_1BD847C70(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B80D8], v3, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    sub_1BE04B6F4();

    (*(v4 + 8))(v8, v3);
    v11 = sub_1BE052404();

    v12 = [v1 linkCellWithText:v11 forTableView:a1];

    PKAccessibilityIDSet(v12, *MEMORY[0x1E69B9DD8]);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD847F30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1BE052404();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1BD847FB0()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKIsPad())
  {
    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 0;
    sub_1BD846C4C();
    v6 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
    swift_beginAccess();
    v0[v6] = 0;
    v7 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v7] = 0;
    return;
  }

  v8 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController];
  v9 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v9;
  }

  v12 = [v8 isExpressModeSupportedForPass_];

  if (v12)
  {
    if ([v9 isHomeKeyPass])
    {
      v13 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 1;
      v14 = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] >> 1) & 1;
    }

    else if ([v9 isCarKeyPass])
    {
      v14 = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 2uLL) >> 1;
      LOWORD(v13) = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 2) == 0;
    }

    else
    {
      LOBYTE(v14) = 0;
      LOWORD(v13) = 1;
    }

    v20 = [v8 existingExpressPassConfigurationForPass_];
    if (v14)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = v21 | v13;
    sub_1BD846C4C();
    if (v20)
    {
      v22 = [v20 isNFCExpressEnabled];
      v23 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v0[v23] = v22;
      v24 = [v20 isUWBExpressEnabled];
    }

    else
    {
      v25 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v24 = 0;
      v0[v25] = 0;
    }

    v26 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v26] = v24;
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v9;
    }

    v17 = [v8 hasEligibleExpressUpgradeRequestForPass_];

    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = v17;
    sub_1BD846C4C();
    v18 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
    swift_beginAccess();
    v0[v18] = 0;
    v19 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v19] = 0;
  }

  sub_1BE04D1E4();
  v27 = v0;
  v28 = sub_1BE04D204();
  v29 = sub_1BE052C54();
  if (os_log_type_enabled(v28, v29))
  {
    v48 = v2;
    v49 = v1;
    v30 = v12;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50 = v32;
    *v31 = 67110658;
    *(v31 + 4) = v27[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass];
    *(v31 + 8) = 2080;
    v33 = PKRadioTechnologiesToString();
    if (v33)
    {
      v34 = v33;
      v35 = sub_1BE052434();
      v37 = v36;

      v38 = sub_1BD123690(v35, v37, &v50);

      *(v31 + 10) = v38;
      *(v31 + 18) = 1024;
      *(v31 + 20) = v30;
      *(v31 + 24) = 1024;
      v39 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport;
      v40 = *&v27[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport];

      if (v40 != 2)
      {
        *(v31 + 26) = v40 & 1;

        *(v31 + 30) = 1024;
        v41 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        swift_beginAccess();
        v42 = v27[v41];

        if (v42 != 2)
        {
          *(v31 + 32) = v42 & 1;

          *(v31 + 36) = 1024;
          v43 = *&v27[v39];

          v44 = v49;
          if (v43 != 2)
          {
            *(v31 + 38) = (v43 >> 8) & 1;

            *(v31 + 42) = 1024;
            v45 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
            swift_beginAccess();
            v46 = v27[v45];

            if (v46 != 2)
            {
              *(v31 + 44) = v46 & 1;

              _os_log_impl(&dword_1BD026000, v28, v29, "ExpressTogglesPaymentPassDetailSectionController: Updated for express info (credentialed: %{BOOL}d, radio technology supported: %s, express supported: %{BOOL}d, nfc supported: %{BOOL}d, nfc enabled: %{BOOL}d, uwb supported: %{BOOL}d, uwb enabled: %{BOOL}d", v31, 0x30u);
              __swift_destroy_boxed_opaque_existential_0(v32);
              MEMORY[0x1BFB45F20](v32, -1, -1);
              MEMORY[0x1BFB45F20](v31, -1, -1);

              (*(v48 + 8))(v5, v44);
              return;
            }

            goto LABEL_34;
          }

LABEL_33:

          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

LABEL_32:

        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1BD8485B4(char a1, void *a2)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  }

  else
  {
    v10 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  }

  v11 = &v2[v10];
  swift_beginAccess();
  v12 = *v11;
  v13 = [a2 isOn];
  v14 = v13;
  if (v12 != 2 && ((v13 ^ v12) & 1) == 0)
  {
    return;
  }

  if ((v13 & 1) != 0 || ![*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isCarKeyPass] || (a1 & 1) == 0)
  {
    sub_1BD848C20(v2, v14, a1 & 1);
    return;
  }

  if (*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] == 2)
  {
    v15 = sub_1BE052404();
    v16 = PKLocalizedCredentialString(v15);

    if (v16)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] != 2)
  {
    goto LABEL_16;
  }

  v17 = sub_1BE052404();
  v16 = PKLocalizedCredentialString(v17);

  if (!v16)
  {
    __break(1u);
LABEL_16:
    v18 = sub_1BE052404();
    v16 = PKLocalizedCredentialString(v18);

    if (!v16)
    {
      __break(1u);
      return;
    }
  }

LABEL_17:
  sub_1BE052434();

  v19 = sub_1BE052404();
  v20 = PKLocalizedCredentialString(v19);

  if (v20)
  {
    sub_1BE052434();

    v20 = sub_1BE052404();
  }

  v21 = sub_1BE052404();

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  PKApplyDefaultIconToAlertController(v22);
  v23 = sub_1BE052404();
  v24 = PKLocalizedCredentialString(v23);

  if (v24)
  {
    sub_1BE052434();

    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = 256;
    v26 = v2;
    v27 = sub_1BE052404();

    v28 = sub_1BD84CE70;
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = 256;
    v29 = v2;
    v27 = 0;
    v28 = sub_1BD84CCF8;
  }

  v46 = v28;
  v47 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1BD198918;
  v45 = &block_descriptor_60_3;
  v30 = _Block_copy(&aBlock);

  v31 = objc_opt_self();
  v32 = [v31 actionWithTitle:v27 style:0 handler:v30];
  _Block_release(v30);

  [v22 addAction_];
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80D0], v5);
  sub_1BE04B714();
  (*(v6 + 8))(v9, v5);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = 0;
  sub_1BE048964();
  v35 = sub_1BE052404();

  v46 = sub_1BD84CD08;
  v47 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1BD198918;
  v45 = &block_descriptor_67_2;
  v36 = _Block_copy(&aBlock);

  v37 = [v31 actionWithTitle:v35 style:1 handler:v36];
  _Block_release(v36);

  [v22 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v40 = [Strong navigationController];

    if (v40)
    {
      [v40 presentViewController:v22 animated:1 completion:0];
    }
  }
}

void sub_1BD848C20(uint64_t a1, char a2, int a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v57 - v13;
  v15 = PKPaymentSetupContextForViewStyle(*(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle));
  v16 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch);
  if (v16)
  {
    [v16 setUserInteractionEnabled_];
  }

  v17 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch);
  if (v17)
  {
    [v17 setUserInteractionEnabled_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong willToggleExpress];
  }

  if ((a2 & 1) == 0 || v15 == 4)
  {
    sub_1BD84C068(a2 & 1, a3 & 1, 0, 0xF000000000000000);
  }

  else
  {
    v63 = v10;
    v59 = v15;
    v60 = a3;
    if (a3)
    {
      v20 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
      [v20 isHomeKeyPass];
      v21 = *MEMORY[0x1E69B80D8];
      v58 = v7;
      v22 = (v7 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v23 = v7[13];
      v23(v14, v21, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BE0B69E0;
      v25 = [v20 localizedDescription];
      v26 = sub_1BE052434();
      v28 = v27;

      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1BD110550();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      v61 = v22;
      v62 = v23;
      v37 = sub_1BE04B714();
      v39 = v38;
      v7 = v58;
    }

    else
    {
      v29 = *MEMORY[0x1E69B80D8];
      v30 = v7[13];
      v61 = (v7 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v62 = v30;
      v30(v14, v29, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BE0B69E0;
      v32 = [*(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass) localizedDescription];
      v33 = sub_1BE052434();
      v35 = v34;

      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1BD110550();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      v37 = sub_1BE04B714();
      v39 = v36;
    }

    v40 = v7[1];
    v40(v14, v6);
    v41 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
    v42 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext);
    *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext) = v41;
    v58 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    *(inited + 32) = 2;
    *(inited + 40) = v37;
    *(inited + 48) = v39;
    *(inited + 56) = 1021;
    v44 = v63;
    v62(v63, *MEMORY[0x1E69B80D0], v6);
    v45 = PKPassKitBundle();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1BE04B6F4();
      v49 = v48;

      v40(v44, v6);
      *(inited + 64) = v47;
      *(inited + 72) = v49;
      v50 = sub_1BD1AB678(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD557F0);
      swift_arrayDestroy();
      sub_1BD1A854C(v50);

      v51 = sub_1BE052224();

      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v54 = v58;
      *(v53 + 16) = v58;
      *(v53 + 24) = v52;
      *(v53 + 32) = v60 & 1;
      *(v53 + 40) = v59;
      aBlock[4] = sub_1BD84CD14;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD1AA864;
      aBlock[3] = &block_descriptor_78_1;
      v55 = _Block_copy(aBlock);
      v56 = v54;

      [v56 evaluatePolicy:2 options:v51 reply:v55];
      _Block_release(v55);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD849258(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v26 = a6;
  v25 = a5;
  v10 = sub_1BE051F54();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE051FA4();
  v14 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v27 = sub_1BE052D54();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = v25;
  *(v18 + 56) = v26;
  aBlock[4] = sub_1BD84CD24;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_84_1;
  v19 = _Block_copy(aBlock);
  sub_1BE048C84();
  v20 = a2;
  v21 = a3;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v22 = v27;
  MEMORY[0x1BFB3FDF0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v29 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v28);
}

void sub_1BD849530(uint64_t a1, uint64_t a2, id a3, uint64_t a4, char a5)
{
  v6 = 0;
  v7 = 0xF000000000000000;
  if (a1 && !a2)
  {
    v8 = [a3 externalizedContext];
    if (v8)
    {
      v9 = v8;
      v6 = sub_1BE04AAC4();
      v7 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1BD84C068(1, a5 & 1, v6, v7);
    sub_1BD030220(v6, v7);
  }

  else
  {
    sub_1BD030220(v6, v7);
  }
}

void sub_1BD84960C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 setOn_];
    }
  }
}

void sub_1BD84969C(char a1, char a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a2;
  *(v16 + 25) = a1;
  aBlock[4] = sub_1BD84CDC8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_105_2;
  v17 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext;
    v21 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext);
    if (v21)
    {
      [v21 invalidate];
      v22 = *&v19[v20];
      *&v19[v20] = 0;

      v19 = v22;
    }
  }
}

void sub_1BD849998(uint64_t a1, char a2, int a3)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v38 = a3;
  v16 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  v15[v16] = a2 & 1;
  v17 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch;
  [*&v15[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] setOn_];
  v18 = *&v15[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
  if (v18)
  {
    v19 = [v18 detailTextLabel];
    if (v19)
    {
      v20 = v19;
      v37 = v17;
      (*(v6 + 104))(v13, *MEMORY[0x1E69B80D8], v5);
      v21 = PKPassKitBundle();
      if (!v21)
      {
        __break(1u);
        goto LABEL_19;
      }

      v22 = v21;
      sub_1BE04B6F4();

      (*(v6 + 8))(v13, v5);
      v23 = sub_1BE052404();

      [v20 setText_];

      v17 = v37;
    }
  }

  v24 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v15[v24] = v38 & 1;
  v25 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch;
  [*&v15[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] setOn_];
  v26 = *&v15[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = [v26 detailTextLabel];
  if (!v27)
  {
    goto LABEL_10;
  }

  v28 = v27;
  v37 = v17;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80D8], v5);
  v29 = PKPassKitBundle();
  if (!v29)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v30 = v29;
  sub_1BE04B6F4();

  (*(v6 + 8))(v9, v5);
  v31 = sub_1BE052404();

  [v28 setText_];

  v17 = v37;
LABEL_10:
  v32 = *&v15[v25];
  if (v32)
  {
    [v32 setUserInteractionEnabled_];
  }

  v33 = *&v15[v17];
  if (v33)
  {
    [v33 setUserInteractionEnabled_];
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    [v34 didFinishTogglingExpress];

    v15 = v35;
  }
}

void sub_1BD849DA4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v177 = Strong;
  v176 = a4;
  if (a1 && (sub_1BD6CC9C0(a3, a1) & 1) != 0)
  {
    sub_1BE052434();
    v13 = sub_1BE052404();
    v14 = *MEMORY[0x1E69BB730];
    v15 = *MEMORY[0x1E69BAC28];
    v16 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
    v17 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle);
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v22 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v22 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v23 = MEMORY[0x1E69BB0C8];
    if (v17 != 2)
    {
      v23 = MEMORY[0x1E69BB0F8];
    }

    [v22 setObject:*v23 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
    v24 = v22;
    v25 = v21;
    v26 = v25;
    if (!v21 || !v22)
    {
LABEL_232:

      if ([0 count])
      {
        v181 = MEMORY[0x1E69E9820];
        v182 = 3221225472;
        v183 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
        v184 = &unk_1E80106A8;
        v185 = v24;
        v169 = v24;
        [0 enumerateKeysAndObjectsUsingBlock:&v181];
      }

      [MEMORY[0x1E69B8540] beginSubjectReporting:v19];
      [MEMORY[0x1E69B8540] subject:v19 sendEvent:v24];
      [MEMORY[0x1E69B8540] endSubjectReporting:v19];

      v176([a3 isNFCExpressEnabled], objc_msgSend(a3, sel_isUWBExpressEnabled));
      goto LABEL_235;
    }

    v27 = [v25 passType];
    v28 = MEMORY[0x1E69BB3A8];
    v178 = v18;
    if (v27 == -1)
    {
      v29 = @"any";
      v75 = @"any";
    }

    else if (v27 == 1)
    {
      v29 = @"payment";
      v74 = @"payment";
    }

    else if (v27)
    {
      v29 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v29 = @"barcode";
      v30 = @"barcode";
    }

    [v24 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v76 = [v26 style];
    v77 = v26;
    v78 = [v77 secureElementPass];
    v79 = [v78 isIdentityPass];

    if (v79)
    {
      v80 = @"identity";
LABEL_68:
      v81 = v80;
      goto LABEL_69;
    }

    if (v76 > 5)
    {
      if (v76 <= 8)
      {
        if (v76 == 6)
        {
          v80 = @"payment";
        }

        else if (v76 == 7)
        {
          v80 = @"access";
        }

        else
        {
          v80 = @"healthPass";
        }

        goto LABEL_68;
      }

      if (v76 == 9)
      {
        goto LABEL_132;
      }

      if (v76 != 10)
      {
        if (v76 == 13)
        {
          v80 = @"numberOfPublicStyles";
          goto LABEL_68;
        }

LABEL_203:
        v80 = *v28;
LABEL_69:

        [v24 setObject:v80 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v82 = [v77 nfcPayload];
        v83 = PKAnalyticsReportSwitchToggleResultValue();
        [v24 setObject:v83 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v84 = v77;
        v175 = v20;
        if ([v84 passType] == 1)
        {
          v85 = [v84 secureElementPass];
          v86 = [v85 cardType];
          if (v86 < 5)
          {
            v83 = **(&unk_1E80106C8 + v86);
          }
        }

        else
        {
          v83 = @"other";
          v87 = @"other";
        }

        [v24 setObject:v83 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v88 = v84;
        v89 = [v88 secureElementPass];
        if ([v89 isIdentityPass])
        {
          v90 = [v89 identityType];
          if (v90 <= 2)
          {
            if (v90 == 1)
            {
              v91 = MEMORY[0x1E69BA648];
              goto LABEL_130;
            }

            if (v90 == 2)
            {
              v91 = MEMORY[0x1E69BB2C8];
              goto LABEL_130;
            }
          }

          else
          {
            switch(v90)
            {
              case 3:
                goto LABEL_85;
              case 4:
                v91 = MEMORY[0x1E69BA8E0];
                goto LABEL_130;
              case 5:
LABEL_85:
                v91 = MEMORY[0x1E69BACB0];
LABEL_130:
                v96 = *v91;
                goto LABEL_131;
            }
          }

LABEL_102:
          v96 = *v28;
LABEL_131:
          v95 = v96;
          goto LABEL_214;
        }

        if (![v89 isAccessPass])
        {
          goto LABEL_102;
        }

        v92 = [v89 accessType];
        v93 = [v89 accessReportingType];
        v94 = v93;
        if (v92 <= 2)
        {
          switch(v92)
          {
            case 0:
              v145 = @"general";
              if (v93)
              {
                v145 = v93;
              }

              goto LABEL_208;
            case 1:
              v95 = @"hospitality";
              goto LABEL_212;
            case 2:
              v95 = @"corporate";
LABEL_212:
              v146 = v95;
              goto LABEL_213;
          }
        }

        else
        {
          if (v92 <= 4)
          {
            if (v92 == 3)
            {
              v95 = @"singlefamily";
            }

            else
            {
              v95 = @"cars";
            }

            goto LABEL_212;
          }

          if (v92 == 5)
          {
            v95 = @"multifamily";
            goto LABEL_212;
          }

          if (v92 == 6)
          {
            v95 = @"urbanmobility";
            goto LABEL_212;
          }
        }

        v145 = *v28;
LABEL_208:
        v95 = v145;
LABEL_213:

LABEL_214:
        [v24 setObject:v95 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

        v147 = v88;
        v148 = [v147 secureElementPass];
        v149 = [v148 devicePaymentApplications];
        [v149 count];

        v150 = PKAnalyticsReportSwitchToggleResultValue();

        [v24 setObject:v150 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
        v151 = v147;
        v152 = [v151 secureElementPass];
        v153 = *v28;
        v154 = [v152 organizationName];
        if ([v154 length])
        {
          v155 = [v152 cardType];
          if (v155 <= 4 && ((1 << v155) & 0x16) != 0)
          {
            v156 = v154;

            v153 = v156;
          }
        }

        [v24 setObject:v153 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
        v157 = [v151 secureElementPass];
        v158 = v157;
        if (v157)
        {
          [v157 devicePaymentApplications];
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v159 = v189 = 0u;
          v160 = [v159 countByEnumeratingWithState:&v186 objects:&v181 count:16];
          v173 = v26;
          if (v160)
          {
            v161 = v160;
            v162 = 0;
            v163 = *v187;
LABEL_222:
            v164 = 0;
            while (1)
            {
              if (*v187 != v163)
              {
                objc_enumerationMutation(v159);
              }

              v165 = *(*(&v186 + 1) + 8 * v164);
              if (v162)
              {
                if (v162 != [*(*(&v186 + 1) + 8 * v164) paymentType])
                {
                  break;
                }
              }

              v162 = [v165 paymentType];
              if (v161 == ++v164)
              {
                v161 = [v159 countByEnumeratingWithState:&v186 objects:&v181 count:16];
                if (!v161)
                {
                  goto LABEL_229;
                }

                goto LABEL_222;
              }
            }

            v166 = @"multiple";
            v167 = @"multiple";
          }

          else
          {
LABEL_229:

            v166 = PKPaymentMethodTypeToString();
          }

          [v24 setObject:v166 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          v168 = [v158 issuerCountryCode];
          [v24 setObject:v168 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

          v26 = v173;
        }

        v18 = v178;
        v20 = v175;
        goto LABEL_232;
      }
    }

    else
    {
      if (v76 <= 2)
      {
        if (!v76)
        {
          v80 = @"coupon";
          goto LABEL_68;
        }

        if (v76 == 1)
        {
          v80 = @"giftCard";
          goto LABEL_68;
        }

        if (v76 != 2)
        {
          goto LABEL_203;
        }

LABEL_132:
        v80 = @"eventTicket";
        goto LABEL_68;
      }

      if (v76 == 3)
      {
        v80 = @"sportingEventTicketDeprecated";
        goto LABEL_68;
      }

      if (v76 != 4)
      {
        v80 = @"generic";
        goto LABEL_68;
      }
    }

    v80 = @"boardingPass";
    goto LABEL_68;
  }

  sub_1BE052434();
  v32 = v31;
  v33 = sub_1BE052404();
  v34 = *MEMORY[0x1E69BB730];
  v35 = *MEMORY[0x1E69BAC28];
  v36 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  v37 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle);
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v41 = v36;
  v42 = v38;
  v43 = v41;
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v44 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  v179 = v40;
  [v44 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v45 = MEMORY[0x1E69BB0C8];
  if (v37 != 2)
  {
    v45 = MEMORY[0x1E69BB0F8];
  }

  [v44 setObject:*v45 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  v46 = v44;
  v47 = v43;
  v48 = v47;
  if (v43 && v44)
  {
    v49 = [v47 passType];
    v174 = a1;
    if (v49 == -1)
    {
      v50 = @"any";
      v53 = @"any";
    }

    else if (v49 == 1)
    {
      v50 = @"payment";
      v52 = @"payment";
    }

    else if (v49)
    {
      v50 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v50 = @"barcode";
      v51 = @"barcode";
    }

    [v46 setObject:v50 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v54 = [v48 style];
    v172 = v48;
    v55 = v48;
    v56 = [v55 secureElementPass];
    v57 = [v56 isIdentityPass];

    if (v57)
    {
      v58 = @"identity";
LABEL_25:
      v59 = v58;
      goto LABEL_26;
    }

    if (v54 > 5)
    {
      if (v54 <= 8)
      {
        if (v54 == 6)
        {
          v58 = @"payment";
        }

        else if (v54 == 7)
        {
          v58 = @"access";
        }

        else
        {
          v58 = @"healthPass";
        }

        goto LABEL_25;
      }

      if (v54 == 9)
      {
        goto LABEL_106;
      }

      if (v54 != 10)
      {
        if (v54 == 13)
        {
          v58 = @"numberOfPublicStyles";
          goto LABEL_25;
        }

LABEL_127:
        v58 = *MEMORY[0x1E69BB3A8];
LABEL_26:

        [v46 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v60 = [v55 nfcPayload];
        v61 = PKAnalyticsReportSwitchToggleResultValue();
        [v46 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v62 = v55;
        v171 = a7;
        if ([v62 passType] == 1)
        {
          v63 = [v62 secureElementPass];
          v64 = [v63 cardType];
          if (v64 < 5)
          {
            v60 = **(&unk_1E80106C8 + v64);
          }
        }

        else
        {
          v60 = @"other";
          v65 = @"other";
        }

        [v46 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v66 = v62;
        v67 = [v66 secureElementPass];
        if ([v67 isIdentityPass])
        {
          v68 = [v67 identityType];
          if (v68 <= 2)
          {
            if (v68 == 1)
            {
              v69 = MEMORY[0x1E69BA648];
              goto LABEL_105;
            }

            if (v68 == 2)
            {
              v69 = MEMORY[0x1E69BB2C8];
              goto LABEL_105;
            }
          }

          else
          {
            switch(v68)
            {
              case 3:
                goto LABEL_42;
              case 4:
                v69 = MEMORY[0x1E69BA8E0];
                goto LABEL_105;
              case 5:
LABEL_42:
                v69 = MEMORY[0x1E69BACB0];
LABEL_105:
                v73 = *v69;
                goto LABEL_147;
            }
          }

LABEL_55:
          v69 = MEMORY[0x1E69BB3A8];
          goto LABEL_105;
        }

        if (![v67 isAccessPass])
        {
          goto LABEL_55;
        }

        v70 = [v67 accessType];
        v71 = [v67 accessReportingType];
        v72 = v71;
        if (v70 <= 2)
        {
          switch(v70)
          {
            case 0:
              v97 = @"general";
              if (v71)
              {
                v97 = v71;
              }

              goto LABEL_141;
            case 1:
              v73 = @"hospitality";
              goto LABEL_145;
            case 2:
              v73 = @"corporate";
LABEL_145:
              v98 = v73;
              goto LABEL_146;
          }
        }

        else
        {
          if (v70 <= 4)
          {
            if (v70 == 3)
            {
              v73 = @"singlefamily";
            }

            else
            {
              v73 = @"cars";
            }

            goto LABEL_145;
          }

          if (v70 == 5)
          {
            v73 = @"multifamily";
            goto LABEL_145;
          }

          if (v70 == 6)
          {
            v73 = @"urbanmobility";
            goto LABEL_145;
          }
        }

        v97 = *MEMORY[0x1E69BB3A8];
LABEL_141:
        v73 = v97;
LABEL_146:

LABEL_147:
        [v46 setObject:v73 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

        v99 = v66;
        v100 = [v99 secureElementPass];
        v101 = [v100 devicePaymentApplications];
        [v101 count];

        v102 = PKAnalyticsReportSwitchToggleResultValue();

        [v46 setObject:v102 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
        v103 = v99;
        v104 = [v103 secureElementPass];
        v105 = *MEMORY[0x1E69BB3A8];
        v106 = [v104 organizationName];
        if ([v106 length])
        {
          v107 = [v104 cardType];
          a1 = v174;
          if (v107 > 4 || ((1 << v107) & 0x16) == 0)
          {
            goto LABEL_152;
          }

          v108 = v106;

          v105 = v108;
        }

        a1 = v174;
LABEL_152:

        [v46 setObject:v105 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
        v109 = [v103 secureElementPass];
        v110 = v109;
        if (v109)
        {
          v170 = v42;
          [v109 devicePaymentApplications];
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v111 = v189 = 0u;
          v112 = [v111 countByEnumeratingWithState:&v186 objects:&v181 count:16];
          if (v112)
          {
            v113 = v112;
            v114 = 0;
            v115 = *v187;
LABEL_156:
            v116 = v32;
            v117 = 0;
            while (1)
            {
              if (*v187 != v115)
              {
                objc_enumerationMutation(v111);
              }

              v118 = *(*(&v186 + 1) + 8 * v117);
              if (v114)
              {
                if (v114 != [*(*(&v186 + 1) + 8 * v117) paymentType])
                {
                  break;
                }
              }

              v114 = [v118 paymentType];
              if (v113 == ++v117)
              {
                v113 = [v111 countByEnumeratingWithState:&v186 objects:&v181 count:16];
                v32 = v116;
                if (!v113)
                {
                  goto LABEL_163;
                }

                goto LABEL_156;
              }
            }

            v119 = @"multiple";
            v120 = @"multiple";
          }

          else
          {
LABEL_163:

            v119 = PKPaymentMethodTypeToString();
          }

          [v46 setObject:v119 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          v121 = [v110 issuerCountryCode];
          [v46 setObject:v121 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

          a1 = v174;
          a4 = v176;
          v42 = v170;
        }

        a7 = v171;
        v48 = v172;
        goto LABEL_166;
      }
    }

    else
    {
      if (v54 <= 2)
      {
        if (!v54)
        {
          v58 = @"coupon";
          goto LABEL_25;
        }

        if (v54 == 1)
        {
          v58 = @"giftCard";
          goto LABEL_25;
        }

        if (v54 != 2)
        {
          goto LABEL_127;
        }

LABEL_106:
        v58 = @"eventTicket";
        goto LABEL_25;
      }

      if (v54 == 3)
      {
        v58 = @"sportingEventTicketDeprecated";
        goto LABEL_25;
      }

      if (v54 != 4)
      {
        v58 = @"generic";
        goto LABEL_25;
      }
    }

    v58 = @"boardingPass";
    goto LABEL_25;
  }

LABEL_166:

  if ([0 count])
  {
    v181 = MEMORY[0x1E69E9820];
    v182 = 3221225472;
    v183 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
    v184 = &unk_1E80106A8;
    v185 = v46;
    v122 = v46;
    [0 enumerateKeysAndObjectsUsingBlock:&v181];
  }

  [MEMORY[0x1E69B8540] beginSubjectReporting:v39];
  [MEMORY[0x1E69B8540] subject:v39 sendEvent:v46];
  [MEMORY[0x1E69B8540] endSubjectReporting:v39];

  if (!a1)
  {
    v127 = 0;
    v128 = 0;
    v129 = 0;
LABEL_197:
    a4(v128, v127);

LABEL_235:
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD55800);
    sub_1BD84CD60();
    sub_1BE052A74();
    a1 = v181;
    v123 = v182;
    v124 = v183;
    v125 = v184;
    v126 = v185;
  }

  else
  {
    v130 = -1 << *(a1 + 32);
    v123 = a1 + 56;
    v124 = ~v130;
    v131 = -v130;
    if (v131 < 64)
    {
      v132 = ~(-1 << v131);
    }

    else
    {
      v132 = -1;
    }

    v126 = v132 & *(a1 + 56);
    sub_1BE048C84();
    v125 = 0;
  }

  v133 = (v124 + 64) >> 6;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_177:
  if (!sub_1BE053744() || (sub_1BD0E5E8C(0, &qword_1EBD55800), swift_dynamicCast(), (v129 = v186) == 0))
  {
LABEL_192:
    sub_1BD0D45FC();
    v127 = 0;
    v128 = 0;
    v129 = 0;
LABEL_196:
    a4 = v176;
    goto LABEL_197;
  }

  while (1)
  {
    v136 = a1;
    v137 = a7;
    v138 = [v129 passUniqueIdentifier];
    v139 = sub_1BE052434();
    v141 = v140;

    if (v139 == a6 && v141 == v137)
    {

LABEL_195:
      sub_1BD0D45FC();
      v144 = [v129 isNFCExpressEnabled];
      v127 = [v129 isUWBExpressEnabled];
      v128 = v144;
      goto LABEL_196;
    }

    a7 = v137;
    v143 = sub_1BE053B84();

    if (v143)
    {
      goto LABEL_195;
    }

    a1 = v136;
    if (v136 < 0)
    {
      goto LABEL_177;
    }

LABEL_180:
    v134 = v125;
    v135 = v126;
    if (!v126)
    {
      break;
    }

LABEL_184:
    v126 = (v135 - 1) & v135;
    v129 = *(*(a1 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v135)))));
    if (!v129)
    {
      goto LABEL_192;
    }
  }

  while (1)
  {
    v125 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      break;
    }

    if (v125 >= v133)
    {
      goto LABEL_192;
    }

    v135 = *(v123 + 8 * v125);
    ++v134;
    if (v135)
    {
      goto LABEL_184;
    }
  }

  __break(1u);
}

uint64_t sub_1BD84B1E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD55800);
    sub_1BD84CD60();
    v2 = sub_1BE052A34();
  }

  sub_1BE048964();
  v3(v2);
}

void sub_1BD84B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v103 = a5;
  sub_1BE052434();
  v10 = sub_1BE052404();
  v11 = *MEMORY[0x1E69BB730];
  v12 = *MEMORY[0x1E69BAC28];
  v13 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass];
  v102 = v9;
  v14 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle];
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v105 = v15;
  v20 = v15;
  v21 = v17;
  [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v19 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v22 = MEMORY[0x1E69BB0C8];
  if (v14 != 2)
  {
    v22 = MEMORY[0x1E69BB0F8];
  }

  [v19 setObject:*v22 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  v23 = v19;
  v24 = v18;
  v25 = v24;
  if (v18 && v19)
  {
    v26 = [v24 passType];
    v27 = MEMORY[0x1E69BB3A8];
    v104 = a1;
    if (v26 == -1)
    {
      v28 = @"any";
      v31 = @"any";
    }

    else if (v26 == 1)
    {
      v28 = @"payment";
      v30 = @"payment";
    }

    else if (v26)
    {
      v28 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v28 = @"barcode";
      v29 = @"barcode";
    }

    [v23 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v32 = [v25 style];
    v33 = v25;
    v34 = [v33 secureElementPass];
    v35 = [v34 isIdentityPass];

    if (v35)
    {
      v36 = @"identity";
LABEL_15:
      v37 = v36;
      goto LABEL_16;
    }

    if (v32 > 5)
    {
      if (v32 <= 8)
      {
        if (v32 == 6)
        {
          v36 = @"payment";
        }

        else if (v32 == 7)
        {
          v36 = @"access";
        }

        else
        {
          v36 = @"healthPass";
        }

        goto LABEL_15;
      }

      if (v32 == 9)
      {
        goto LABEL_61;
      }

      if (v32 != 10)
      {
        if (v32 == 13)
        {
          v36 = @"numberOfPublicStyles";
          goto LABEL_15;
        }

LABEL_71:
        v36 = *v27;
LABEL_16:

        [v23 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v38 = [v33 nfcPayload];
        v39 = PKAnalyticsReportSwitchToggleResultValue();
        [v23 setObject:v39 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v40 = v33;
        v101 = a4;
        if ([v40 passType] == 1)
        {
          v41 = [v40 secureElementPass];
          v42 = [v41 cardType];
          if (v42 < 5)
          {
            v38 = **(&unk_1E80106C8 + v42);
          }
        }

        else
        {
          v38 = @"other";
          v43 = @"other";
        }

        [v23 setObject:v38 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v44 = v40;
        v45 = [v44 secureElementPass];
        if ([v45 isIdentityPass])
        {
          v46 = [v45 identityType];
          if (v46 <= 2)
          {
            if (v46 == 1)
            {
              v47 = MEMORY[0x1E69BA648];
              goto LABEL_59;
            }

            if (v46 == 2)
            {
              v47 = MEMORY[0x1E69BB2C8];
              goto LABEL_59;
            }
          }

          else
          {
            switch(v46)
            {
              case 3:
                goto LABEL_32;
              case 4:
                v47 = MEMORY[0x1E69BA8E0];
                goto LABEL_59;
              case 5:
LABEL_32:
                v47 = MEMORY[0x1E69BACB0];
LABEL_59:
                v52 = *v47;
                goto LABEL_60;
            }
          }

LABEL_45:
          v52 = *v27;
LABEL_60:
          v51 = v52;
LABEL_82:

          [v23 setObject:v51 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
          v55 = v44;
          v56 = [v55 secureElementPass];
          v57 = [v56 devicePaymentApplications];
          [v57 count];

          v58 = PKAnalyticsReportSwitchToggleResultValue();

          [v23 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v59 = v55;
          v60 = [v59 secureElementPass];
          v61 = *v27;
          v62 = [v60 organizationName];
          if ([v62 length])
          {
            v63 = [v60 cardType];
            a1 = v104;
            if (v63 <= 4 && ((1 << v63) & 0x16) != 0)
            {
              v64 = v62;

              v61 = v64;
              a1 = v104;
            }
          }

          else
          {
            a1 = v104;
          }

          [v23 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v65 = [v59 secureElementPass];
          v66 = v65;
          if (v65)
          {
            v100 = v21;
            [v65 devicePaymentApplications];
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v67 = v115 = 0u;
            v68 = [v67 countByEnumeratingWithState:&v112 objects:&v107 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = 0;
              v71 = *v113;
LABEL_91:
              v72 = 0;
              while (1)
              {
                if (*v113 != v71)
                {
                  objc_enumerationMutation(v67);
                }

                v73 = *(*(&v112 + 1) + 8 * v72);
                if (v70)
                {
                  if (v70 != [*(*(&v112 + 1) + 8 * v72) paymentType])
                  {
                    break;
                  }
                }

                v70 = [v73 paymentType];
                if (v69 == ++v72)
                {
                  v69 = [v67 countByEnumeratingWithState:&v112 objects:&v107 count:16];
                  if (!v69)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_91;
                }
              }

              v74 = @"multiple";
              v75 = @"multiple";
            }

            else
            {
LABEL_98:

              v74 = PKPaymentMethodTypeToString();
            }

            [v23 setObject:v74 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v76 = [v66 issuerCountryCode];
            [v23 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            a1 = v104;
            v21 = v100;
          }

          a4 = v101;
          goto LABEL_101;
        }

        if (![v45 isAccessPass])
        {
          goto LABEL_45;
        }

        v48 = [v45 accessType];
        v49 = [v45 accessReportingType];
        v50 = v49;
        if (v48 <= 2)
        {
          switch(v48)
          {
            case 0:
              v53 = @"general";
              if (v49)
              {
                v53 = v49;
              }

              goto LABEL_76;
            case 1:
              v51 = @"hospitality";
              goto LABEL_80;
            case 2:
              v51 = @"corporate";
LABEL_80:
              v54 = v51;
              goto LABEL_81;
          }
        }

        else
        {
          if (v48 <= 4)
          {
            if (v48 == 3)
            {
              v51 = @"singlefamily";
            }

            else
            {
              v51 = @"cars";
            }

            goto LABEL_80;
          }

          if (v48 == 5)
          {
            v51 = @"multifamily";
            goto LABEL_80;
          }

          if (v48 == 6)
          {
            v51 = @"urbanmobility";
            goto LABEL_80;
          }
        }

        v53 = *v27;
LABEL_76:
        v51 = v53;
LABEL_81:

        goto LABEL_82;
      }
    }

    else
    {
      if (v32 <= 2)
      {
        if (!v32)
        {
          v36 = @"coupon";
          goto LABEL_15;
        }

        if (v32 == 1)
        {
          v36 = @"giftCard";
          goto LABEL_15;
        }

        if (v32 != 2)
        {
          goto LABEL_71;
        }

LABEL_61:
        v36 = @"eventTicket";
        goto LABEL_15;
      }

      if (v32 == 3)
      {
        v36 = @"sportingEventTicketDeprecated";
        goto LABEL_15;
      }

      if (v32 != 4)
      {
        v36 = @"generic";
        goto LABEL_15;
      }
    }

    v36 = @"boardingPass";
    goto LABEL_15;
  }

LABEL_101:

  if ([0 count])
  {
    v107 = MEMORY[0x1E69E9820];
    v108 = 3221225472;
    v109 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
    v110 = &unk_1E80106A8;
    v111 = v23;
    v77 = v23;
    [0 enumerateKeysAndObjectsUsingBlock:&v107];
  }

  [MEMORY[0x1E69B8540] beginSubjectReporting:v16];
  [MEMORY[0x1E69B8540] subject:v16 sendEvent:v23];
  [MEMORY[0x1E69B8540] endSubjectReporting:v16];

  if (!a1)
  {
LABEL_127:
    v97 = 0;
    v98 = 0;
    v86 = 0;
LABEL_128:
    v103(v98, v97);

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD55800);
    sub_1BD84CD60();
    sub_1BE052A74();
    a1 = v107;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    v81 = v111;
  }

  else
  {
    v82 = -1 << *(a1 + 32);
    v78 = a1 + 56;
    v79 = ~v82;
    v83 = -v82;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    else
    {
      v84 = -1;
    }

    v81 = v84 & *(a1 + 56);
    sub_1BE048C84();
    v80 = 0;
  }

  v85 = (v79 + 64) >> 6;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_111:
  if (!sub_1BE053744() || (sub_1BD0E5E8C(0, &qword_1EBD55800), swift_dynamicCast(), (v86 = v112) == 0))
  {
LABEL_126:
    sub_1BD0D45FC();
    goto LABEL_127;
  }

  while (1)
  {
    v89 = a1;
    v90 = a4;
    v91 = [v86 passUniqueIdentifier];
    v92 = sub_1BE052434();
    v94 = v93;

    if (v92 == a3 && v94 == v90)
    {

LABEL_132:
      sub_1BD0D45FC();
      v99 = [v86 isNFCExpressEnabled];
      v97 = [v86 isUWBExpressEnabled];
      v98 = v99;
      goto LABEL_128;
    }

    a4 = v90;
    v96 = sub_1BE053B84();

    if (v96)
    {
      goto LABEL_132;
    }

    a1 = v89;
    if (v89 < 0)
    {
      goto LABEL_111;
    }

LABEL_114:
    v87 = v80;
    v88 = v81;
    if (!v81)
    {
      break;
    }

LABEL_118:
    v81 = (v88 - 1) & v88;
    v86 = *(*(a1 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v88)))));
    if (!v86)
    {
      goto LABEL_126;
    }
  }

  while (1)
  {
    v80 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v80 >= v85)
    {
      goto LABEL_126;
    }

    v88 = *(v78 + 8 * v80);
    ++v87;
    if (v88)
    {
      goto LABEL_118;
    }
  }

  __break(1u);
}

id sub_1BD84BDF0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v7 = 0;
  }

  else
  {
    v7 = PKRunningInLockScreenPlugin() ^ 1;
  }

  v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] = v7;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] = 0;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] = 0;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText] = 0;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText] = 0;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 2;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled] = 2;
  v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled] = 2;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext] = 0;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken] = -1;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] = a1;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] = a2;
  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController] = a3;
  v8 = a1;
  v9 = a3;
  v10 = [v8 areCredentialsStoredInKML];
  v11 = 0;
  v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass] = v10;
  if (v10)
  {
    v11 = [v8 supportedRadioTechnologies];
  }

  *&v3[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] = v11;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1BD84BFB0(void *a1)
{
  result = [a1 secureElementPass];
  if (result)
  {
    v3 = result;
    if ([result isAccessPass])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 areCredentialsStoredInKML];
    }

    if ([a1 activationState])
    {
      v5 = [v3 isShellPass];

      return (v5 & v4);
    }

    else
    {
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD84C068(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *(v4 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController);
  v11 = *(v4 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v11;
  }

  sub_1BE048964();
  v14 = [v10 isExpressModeSupportedForPass_];

  if (!v14)
  {
    sub_1BD84969C(0, 0, v9);
LABEL_36:

    return;
  }

  v47 = a4;
  v15 = [v10 existingExpressPassConfigurationForPass_];
  v16 = v15;
  if (!v15)
  {
    v18 = 0;
    v17 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_15:
    v20 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
    if (a2)
    {
      if (v20 != 2)
      {
        v18 = 0;
        v17 &= v20;
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (v20 != 2)
    {
      v17 = 0;
      v18 = v18 & ((v20 & 0x100) >> 8);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_42;
  }

  v17 = [v15 isNFCExpressEnabled];
  v18 = [v16 isUWBExpressEnabled];
  if ((a1 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v47 >> 60 == 15 && *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) != 2)
  {
    v39 = v17;
    v33 = v18;
LABEL_35:
    sub_1BD84969C(v39, v33, v9);

    goto LABEL_36;
  }

  if ((a2 & 1) == 0)
  {
    v17 = 1;
    goto LABEL_21;
  }

  v19 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v19 == 2)
  {
LABEL_42:

    __break(1u);
    return;
  }

  if ((v19 & 1) == 0)
  {
    v17 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology) & 1;
  }

  v18 = 1;
LABEL_21:
  v21 = [v11 uniqueID];
  if (!v21)
  {
    if (v16)
    {
      v32 = [v16 isNFCExpressEnabled];
      v33 = [v16 isUWBExpressEnabled];
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v39 = v32;
    goto LABEL_35;
  }

  v22 = v21;
  v44 = a1;

  v45 = sub_1BE052434();
  v46 = v23;

  v24 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  *(v5 + v24) = v17 & 1;
  v25 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  *(v5 + v25) = v18;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v11;
  }

  v28 = [v10 expressModeSupportedForPass_];

  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69B8848]) initWithPassInformation:v28 isNFCExpressEnabled:v17 & 1 isUWBExpressEnabled:v18];
  if (!v29)
  {

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BE0B69E0;
    *(v34 + 32) = v45;
    *(v34 + 40) = v46;
    sub_1BE048C84();
    v35 = sub_1BE052724();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v45;
    v37[4] = v46;
    v37[5] = sub_1BD84CD38;
    v37[6] = v9;
    v52 = sub_1BD84CD40;
    v53 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1BD84B1E0;
    v51 = &block_descriptor_92;
    v38 = _Block_copy(&aBlock);
    sub_1BE048964();

    [v10 disableExpressModeForPassesWithUniqueIdentifiers:v35 withCompletion:v38];

    _Block_release(v38);
    return;
  }

  v30 = v29;
  if (v47 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1BE04AAB4();
  }

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v30;
  v41[4] = sub_1BD84CD38;
  v41[5] = v9;
  v41[6] = v45;
  v41[7] = v46;
  v52 = sub_1BD84CD50;
  v53 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1BD84B1E0;
  v51 = &block_descriptor_99_4;
  v42 = _Block_copy(&aBlock);
  v43 = v30;
  sub_1BE048964();

  [v10 setExpressModeWithPassConfiguration:v43 requiresAuth:v44 & 1 credential:v31 completion:v42];

  _Block_release(v42);
}

void sub_1BD84C678(void *a1)
{
  v3 = sub_1BE04B3C4();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = sub_1BE04B3F4();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes);
  if (v4 >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v5 + v4 + 32) >= 2u)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong didSelectManageExpress];
    }
  }
}

void sub_1BD84C758()
{
  v1 = *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (*(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport) & 0x100) != 0 && (v1)
  {
    v2 = sub_1BE052404();
    v3 = PKLocalizedPaymentString(v2);

    if (v3)
    {
      sub_1BE052434();
    }
  }
}

uint64_t sub_1BD84C808()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69B80D8], v2, v5);
  v9 = *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  if (![v9 isAccessPass])
  {
    goto LABEL_7;
  }

  v10 = [v9 accessType];
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_39;
        }

        v11 = "EY_PASSIVE_ENTRY_FOOTER";
        v12 = 0xD00000000000001BLL;
        goto LABEL_8;
      }

LABEL_10:
      v13 = 0x80000001BE13C980;
      v12 = 0xD000000000000019;
      goto LABEL_11;
    }

LABEL_7:
    v11 = "Controller.swift";
    v12 = 0xD000000000000015;
LABEL_8:
    v13 = v11 | 0x8000000000000000;
LABEL_11:
    MEMORY[0x1BFB3F610](v12, v13);
LABEL_12:
    v14 = 1;
    v15 = 1;
    goto LABEL_13;
  }

  if ((v10 - 5) < 2)
  {
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    if (v10 != 4)
    {
      goto LABEL_39;
    }

    v22 = *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology);
    v14 = v22 == 1;
    if (v22 == 1)
    {
      v23 = "CAR_KEY_PASSIVE_ENTRY_FOOTER";
      v24 = 0xD00000000000001BLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
        v14 = 1;
LABEL_37:
        (*(v3 + 8))(v7, v2);
        (v8)(v7, *MEMORY[0x1E69B8038], v2);
        v15 = 0;
        goto LABEL_13;
      }

      v23 = "EXPRESS_ACCESS_FOOTER";
      v24 = 0xD00000000000001CLL;
    }

    MEMORY[0x1BFB3F610](v24, v23 | 0x8000000000000000);
    goto LABEL_37;
  }

  if ((*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology) & 2) == 0 || *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) != 2)
  {
    v25 = 0xD000000000000019;
    v26 = 0x80000001BE13C980;
    goto LABEL_12;
  }

  MEMORY[0x1BFB3F610](0xD000000000000027, 0x80000001BE13C9A0);
  (*(v3 + 8))(v7, v2);
  (v8)(v7, *MEMORY[0x1E69B8030], v2);
  v14 = 0;
  v15 = 0;
LABEL_13:
  if (*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) == 2)
  {
    v16 = 0x48435441575FLL;
    v17 = 0xE600000000000000;
  }

  else
  {
    if (v15 && PKNearFieldLowPowerSupportIsAvailable())
    {
      MEMORY[0x1BFB3F610](0x4D45504C5FLL, 0xE500000000000000);
    }

    if (!v14)
    {
      goto LABEL_22;
    }

    if (PKPearlIsAvailable())
    {
      v16 = 0x4449454341465FLL;
      v17 = 0xE700000000000000;
    }

    else
    {
      v16 = 0x44494843554F545FLL;
      v17 = 0xE800000000000000;
    }
  }

  MEMORY[0x1BFB3F610](v16, v17);
LABEL_22:
  v18 = PKPassKitBundle();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE04B6F4();

    (*(v3 + 8))(v7, v2);
    return v20;
  }

  __break(1u);
LABEL_39:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

unint64_t sub_1BD84CCA4()
{
  result = qword_1EBD557E0;
  if (!qword_1EBD557E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD557E0);
  }

  return result;
}

unint64_t sub_1BD84CD60()
{
  result = qword_1EBD55808;
  if (!qword_1EBD55808)
  {
    sub_1BD0E5E8C(255, &qword_1EBD55800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55808);
  }

  return result;
}

void __PKAnalyticsReportExpressEnablementEvent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = a3;
  [v4 setObject:v6 forKeyedSubscript:v5];
}

uint64_t sub_1BD84CE98(unsigned __int8 a1, char a2, void *a3, uint64_t a4)
{
  v8 = 0xE900000000000064;
  v9 = 0x647261436E6FLL;
  v10 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  if (v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] > 1u)
  {
    if (v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] == 2)
    {
      v12 = 0x656572635366666FLL;
      v11 = 0xE90000000000006ELL;
      goto LABEL_9;
    }

    v13 = 0x43776F6C6562;
  }

  else
  {
    if (!v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state])
    {
      v11 = 0xE600000000000000;
      v12 = 0x647261436E6FLL;
      goto LABEL_9;
    }

    v13 = 0x4365766F6261;
  }

  v12 = v13 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
  v11 = 0xE900000000000064;
LABEL_9:
  v14 = 0x656572635366666FLL;
  v15 = 0xE90000000000006ELL;
  if (a1 != 2)
  {
    v14 = 0x726143776F6C6562;
    v15 = 0xE900000000000064;
  }

  if (a1)
  {
    v9 = 0x72614365766F6261;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v16 = v9;
  }

  else
  {
    v16 = v14;
  }

  if (a1 <= 1u)
  {
    v17 = v8;
  }

  else
  {
    v17 = v15;
  }

  if (v12 == v16 && v11 == v17)
  {

    goto LABEL_24;
  }

  v20 = sub_1BE053B84();

  if ((v20 & 1) == 0)
  {
    [v4 layoutIfNeeded];
    v21 = *&v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      *&v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = v22;
      sub_1BD84DE38(v21 + 1, 1);
      if (!a3)
      {
        goto LABEL_32;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      v20 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions;
      swift_beginAccess();
      a3 = *&v4[v20];
      sub_1BE048964();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v4[v20] = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_29:
        v24 = a3[2];
        v25 = a3[3];
        v26 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v43 = a3;
          v44 = a3[2];
          v45 = sub_1BD1D761C((v25 > 1), v24 + 1, 1, v43);
          v24 = v44;
          a3 = v45;
        }

        a3[2] = v26;
        v27 = &a3[2 * v24];
        v27[4] = sub_1BD789540;
        v27[5] = v17;
        *&v4[v20] = a3;
        swift_endAccess();
LABEL_32:
        v4[v10] = a1;
        [v4 bounds];
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        v32 = CGRectGetWidth(v49);
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        v33 = CGRectGetWidth(v50);
        v34 = xmmword_1BE0FD0F0;
        v35 = xmmword_1BE0FD100;
        if (a1 > 1u)
        {
          v37 = v33;
          if (a1 != 2)
          {
            goto LABEL_39;
          }

          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          v37 = CGRectGetHeight(v51) * 1.2;
          v34 = xmmword_1BE0FD110;
        }

        else
        {
          v36 = v32 * 0.5;
          if (!a1)
          {
            v37 = v36 * 0.87;
            v34 = xmmword_1BE0FD110;
LABEL_39:
            v46 = v34;
            v47 = v35;
            v38 = swift_allocObject();
            *(v38 + 16) = a2 & 1;
            *(v38 + 24) = v4;
            *(v38 + 32) = v37;
            *(v38 + 40) = x;
            *(v38 + 48) = y;
            *(v38 + 56) = width;
            *(v38 + 64) = height;
            *(v38 + 88) = v46;
            *(v38 + 72) = v47;
            *(v38 + 104) = v22;
            v39 = swift_allocObject();
            *(v39 + 16) = sub_1BD84FA98;
            *(v39 + 24) = v38;
            aBlock[4] = sub_1BD640D80;
            aBlock[5] = v39;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD5B974C;
            aBlock[3] = &block_descriptor_36_4;
            v40 = _Block_copy(aBlock);
            v41 = v4;

            v42 = v40;
            PKCATrackedLayoutPerform();

            _Block_release(v42);
          }

          v37 = v36 * 1.42;
        }

        v35 = xmmword_1BE0CF260;
        goto LABEL_39;
      }
    }

    a3 = sub_1BD1D761C(0, a3[2] + 1, 1, a3);
    *&v4[v20] = a3;
    goto LABEL_29;
  }

LABEL_24:
  if (a3)
  {
    return (a3)(0);
  }

  return result;
}

uint64_t sub_1BD84D338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_1BE048964();
  v5(a2, a3);
}

uint64_t sub_1BD84D3A4()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD84D470()
{
  sub_1BE052524();
}

uint64_t sub_1BD84D528()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD84D5F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD84F9A4();
  *a1 = result;
  return result;
}

void sub_1BD84D620(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x647261436E6FLL;
  v4 = 0xE90000000000006ELL;
  v5 = 0x656572635366666FLL;
  if (*v1 != 2)
  {
    v5 = 0x726143776F6C6562;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x72614365766F6261;
    v2 = 0xE900000000000064;
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

char *sub_1BD84D6A8(unsigned __int8 a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] = 3;
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions] = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for ProvisioningCardReaderPhoneAnimationView.CombinedPhoneView()) init];
  v1[v4] = a1;
  v6 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:1.0 stiffness:80.0 damping:18.0];
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_springFactory] = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v8 = v6;
  LODWORD(v9) = 1050253722;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v8 setTiming_];

  v13 = [*&v1[v5] layer];
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 CGColor];

  [v13 setShadowColor_];
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView];
  v18 = v16;
  [v18 addSubview_];
  result = [v18 layoutIfNeeded];
  v20 = *&v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
  v21 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    *&v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = v21;
    sub_1BD84DE38(v20 + 1, 1);
    v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] = a1;
    [v18 bounds];
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    v26 = CGRectGetWidth(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v27 = CGRectGetWidth(v42);
    v28 = xmmword_1BE0FD0F0;
    v29 = xmmword_1BE0FD100;
    if (a1 > 1u)
    {
      v31 = v27;
      if (a1 != 2)
      {
        goto LABEL_9;
      }

      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v31 = CGRectGetHeight(v43) * 1.2;
      v28 = xmmword_1BE0FD110;
    }

    else
    {
      v30 = v26 * 0.5;
      if (!a1)
      {
        v31 = v30 * 0.87;
        v28 = xmmword_1BE0FD110;
LABEL_9:
        v37 = v28;
        v38 = v29;
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = v18;
        *(v32 + 32) = v31;
        *(v32 + 40) = x;
        *(v32 + 48) = y;
        *(v32 + 56) = width;
        *(v32 + 64) = height;
        *(v32 + 88) = v37;
        *(v32 + 72) = v38;
        *(v32 + 104) = v21;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1BD84FA98;
        *(v33 + 24) = v32;
        aBlock[4] = sub_1BD640D80;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD5B974C;
        aBlock[3] = &block_descriptor_50_3;
        v34 = _Block_copy(aBlock);
        v35 = v18;

        v36 = v34;
        PKCATrackedLayoutPerform();

        _Block_release(v36);

        return v35;
      }

      v31 = v30 * 1.42;
    }

    v29 = xmmword_1BE0CF260;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD84DB94()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  v2 = v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state];
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
  [v0 layoutIfNeeded];
  v0[v1] = v2;
  [v0 bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v8 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v9 = CGRectGetWidth(v25);
  v10 = xmmword_1BE0FD0F0;
  v11 = xmmword_1BE0FD100;
  if (v2 > 1)
  {
    v13 = v9;
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v13 = CGRectGetHeight(v26) * 1.2;
    v10 = xmmword_1BE0FD110;
LABEL_7:
    v11 = xmmword_1BE0CF260;
    goto LABEL_8;
  }

  v12 = v8 * 0.5;
  if (v2)
  {
    v13 = v12 * 1.42;
    goto LABEL_7;
  }

  v13 = v12 * 0.87;
  v10 = xmmword_1BE0FD110;
LABEL_8:
  v20 = v10;
  v21 = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v0;
  *(v14 + 32) = v13;
  *(v14 + 40) = x;
  *(v14 + 48) = y;
  *(v14 + 56) = width;
  *(v14 + 64) = height;
  *(v14 + 88) = v20;
  *(v14 + 72) = v21;
  *(v14 + 104) = v3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BD84FA3C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1BD1839E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD5B974C;
  aBlock[3] = &block_descriptor_191;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  v18 = v16;
  PKCATrackedLayoutPerform();

  _Block_release(v18);
}

uint64_t sub_1BD84DE38(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex);
  v6 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  *(v2 + v6) = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v5 == a1) | a2 & 1;
    v10 = v7 + 40;
    do
    {
      v11 = *(v10 - 8);
      v13 = v9;
      sub_1BE048964();
      v11(&v13);

      v10 += 16;
      --v8;
    }

    while (v8);
  }
}

void sub_1BD84DF00(char a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, double a12)
{
  angle = a10;
  v48[1] = *MEMORY[0x1E69E9840];
  Tracker = PKCATrackedLayoutGetTracker();
  if (a1)
  {
    v27 = *(a2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_springFactory);
  }

  else
  {
    v27 = 0;
  }

  v48[0] = 0;
  v49.origin.x = a5;
  v49.origin.y = a6;
  v49.size.width = a7;
  v49.size.height = a8;
  CGRectGetWidth(v49);
  PKFloatRoundToPixel();
  v29 = v28;
  v50.origin.x = a5;
  v50.origin.y = a6;
  v50.size.width = a7;
  v50.size.height = a8;
  CGRectGetWidth(v50);
  PKFloatRoundToPixel();
  v31 = v30;
  v51.origin.x = a5;
  v51.origin.y = a6;
  v51.size.width = a7;
  v51.size.height = a8;
  CGRectGetWidth(v51);
  v52.origin.x = 0.0;
  v52.origin.y = a4;
  v52.size.width = v29;
  v52.size.height = v31;
  CGRectGetWidth(v52);
  PKFloatRoundToPixel();
  v32 = *(a2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView);
  [v32 pkui:v27 setFrame:v48 withAdditiveAnimationFactory:? animation:?];
  if (v48[0])
  {
    v33 = v48[0];
    [Tracker trackAnimation_];
    v34 = [v32 layer];
  }

  CATransform3DMakeScale(&v47, a9, a9, 1.0);
  CATransform3DMakeRotation(&b, angle, 1.0, 0.0, 0.0);
  a = v47;
  CATransform3DConcat(&v44, &a, &b);
  [v32 pkui:&v44 setTransform:v27 withAdditiveAnimationFactory:v48 animation:?];
  if (v48[0])
  {
    v35 = v48[0];
    [Tracker trackAnimation_];
    v36 = [v32 layer];
  }

  [v32 pkui:v27 setShadowRadius:v48 withAdditiveAnimationFactory:a11 animation:*&angle];
  if (v48[0])
  {
    v37 = v48[0];
    [Tracker trackAnimation_];
    v38 = [v32 layer];
  }

  [v32 pkui:v27 setShadowOpacity:0 withAnimationFactory:a12 completion:?];
  if (Tracker)
  {
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = a3;
    *&a.m21 = sub_1BD84FA40;
    *&a.m22 = v40;
    *&a.m11 = MEMORY[0x1E69E9820];
    *&a.m12 = 1107296256;
    *&a.m13 = sub_1BD84D338;
    *&a.m14 = &block_descriptor_25_2;
    v41 = _Block_copy(&a);

    [Tracker addAbsoluteCompletion_];

    _Block_release(v41);
  }

  else
  {
    sub_1BD84DE38(a3, 0);
    Tracker = v27;
  }
}

void sub_1BD84E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD84DE38(a4, 0);
  }
}

char *sub_1BD84E4A0()
{
  v0 = 0xD000000000000012;
  ObjectType = swift_getObjectType();
  v122 = MEMORY[0x1E69E7CC0];
  v1 = 0x1E69DC000uLL;
  v2 = &selRef_hoursOfDay;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = &selRef_setBankName_;
  [v3 setContentMode_];
  v5 = sub_1BE052404();
  v6 = PKUIImageNamed(v5);

  v7 = &selRef_setFPInfo_;
  [v3 setImage_];

  MEMORY[0x1BFB3F7A0]();
  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v110 = v3;
    sub_1BE0527C4();
    v8 = type metadata accessor for ProvisioningCardReaderPhoneAnimationView.PhoneGradientView();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    *&v9[v10] = [objc_allocWithZone(*(v1 + 2784)) v2[147]];
    v11 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v11 = 0;
    *(v11 + 1) = 0;
    v12 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v12 = v0;
    v12[1] = 0x80000001BE13CDA0;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4072700000000000;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FE0000000000000;
    v13 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset];
    *v13 = 0;
    *(v13 + 1) = 0;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1065353216;
    v121.receiver = v9;
    v121.super_class = v8;
    v116 = v8;
    v14 = objc_msgSendSuper2(&v121, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v15 = v2;
    v16 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v17 = *&v14[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v18 = v14;
    v19 = v17;
    v20 = sub_1BE052404();
    v21 = PKUIImageNamed(v20);

    [v19 v7[223]];
    [*&v14[v16] v4[216]];
    v22 = *&v14[v16];
    v23 = v18;
    [v23 addSubview_];
    v24 = [objc_allocWithZone(MEMORY[0x1E6979380]) v15 + 2936];
    v115 = *MEMORY[0x1E6979DB0];
    [v24 setType_];
    [v24 setStartPoint_];
    [v24 setEndPoint_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B6CA0;
    v26 = objc_opt_self();
    v27 = [v26 whiteColor];
    v28 = [v27 colorWithAlphaComponent_];

    v29 = [v28 CGColor];
    type metadata accessor for CGColor(0);
    v31 = v30;
    *(v25 + 56) = v30;
    *(v25 + 32) = v29;
    v32 = [v26 blackColor];
    v33 = [v32 colorWithAlphaComponent_];

    v34 = [v33 CGColor];
    *(v25 + 88) = v31;
    *(v25 + 64) = v34;
    v35 = sub_1BE052724();

    [v24 setColors_];

    LODWORD(v36) = 1.0;
    [v24 setOpacity_];
    v37 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v38 = [v37 layer];
    [v38 addSublayer_];

    v39 = v37;
    [v23 setMaskView_];

    MEMORY[0x1BFB3F7A0]();
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v109 = v23;
    sub_1BE0527C4();
    v40 = *MEMORY[0x1E6979C30];
    v41 = objc_allocWithZone(v116);
    v42 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v43 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v44 = v40;
    *&v41[v42] = [v43 init];
    v45 = &v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v45 = 0;
    *(v45 + 1) = 0;
    v46 = &v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v46 = 0xD000000000000012;
    *(v46 + 1) = 0x80000001BE13CDA0;
    *&v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4055400000000000;
    *&v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FD999999999999ALL;
    v47 = &v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset];
    *v47 = 0;
    *(v47 + 1) = 0;
    *&v41[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1065353216;
    v120.receiver = v41;
    v120.super_class = v116;
    v48 = objc_msgSendSuper2(&v120, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v49 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v50 = *&v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v51 = v48;
    v52 = v50;
    v53 = sub_1BE052404();
    v54 = PKUIImageNamed(v53);

    [v52 setImage_];
    [*&v48[v49] setContentMode_];
    v55 = *&v48[v49];
    v56 = v51;
    [v56 addSubview_];
    v57 = [objc_allocWithZone(MEMORY[0x1E6979380]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    [v57 setType_];
    [v57 setStartPoint_];
    [v57 setEndPoint_];
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1BE0B6CA0;
    v59 = [v26 whiteColor];
    v60 = [v59 colorWithAlphaComponent_];

    v61 = [v60 CGColor];
    *(v58 + 56) = v31;
    *(v58 + 32) = v61;
    v62 = [v26 blackColor];
    v63 = [v62 colorWithAlphaComponent_];

    v64 = [v63 CGColor];
    *(v58 + 88) = v31;
    *(v58 + 64) = v64;
    v65 = sub_1BE052724();

    [v57 setColors_];

    LODWORD(v66) = 1.0;
    [v57 setOpacity_];
    v67 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v68 = [v67 layer];
    [v68 addSublayer_];

    v69 = v67;
    [v56 setMaskView_];

    v70 = [v56 layer];
    v71 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];

    [v70 setCompositingFilter_];
    MEMORY[0x1BFB3F7A0]();
    v112 = v31;
    v4 = v26;
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v108 = v56;
    sub_1BE0527C4();
    v72 = *MEMORY[0x1E6979D18];
    v73 = objc_allocWithZone(v116);
    v74 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v75 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v111 = v72;
    *&v73[v74] = [v75 init];
    v76 = &v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v76 = 0;
    *(v76 + 1) = 0;
    v77 = &v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v77 = 0xD000000000000013;
    *(v77 + 1) = 0x80000001BE13CDC0;
    *&v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4071300000000000;
    *&v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FE0000000000000;
    *&v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset] = xmmword_1BE0FD120;
    *&v73[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1036831949;
    v119.receiver = v73;
    v119.super_class = v116;
    v78 = objc_msgSendSuper2(&v119, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v79 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v80 = *&v78[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v81 = v78;
    v82 = v80;
    v83 = sub_1BE052404();
    v84 = PKUIImageNamed(v83);

    [v82 setImage_];
    [*&v78[v79] setContentMode_];
    v85 = *&v78[v79];
    v86 = v81;
    [v86 addSubview_];
    v87 = [objc_allocWithZone(MEMORY[0x1E6979380]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    [v87 setType_];
    [v87 setStartPoint_];
    [v87 setEndPoint_];
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1BE0B6CA0;
    v89 = [(SEL *)v4 whiteColor];
    v90 = [v89 colorWithAlphaComponent_];

    v91 = [v90 CGColor];
    *(v88 + 56) = v112;
    *(v88 + 32) = v91;
    v92 = [(SEL *)v4 blackColor];
    v93 = [v92 colorWithAlphaComponent_];

    v94 = [v93 CGColor];
    *(v88 + 88) = v112;
    *(v88 + 64) = v94;
    v95 = sub_1BE052724();

    [v87 setColors_];

    LODWORD(v96) = 1036831949;
    [v87 setOpacity_];
    v97 = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    v98 = [v97 layer];
    [v98 addSublayer_];

    v99 = v97;
    [v86 setMaskView_];

    v100 = [v86 layer];
    v101 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];

    [v100 setCompositingFilter_];
    MEMORY[0x1BFB3F7A0]();
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    *&v114[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews] = v122;
    v118.receiver = v114;
    v118.super_class = ObjectType;
    sub_1BE048C84();
    v102 = objc_msgSendSuper2(&v118, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v103 = *&v102[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews];
    v117 = v86;
    if (v103 >> 62)
    {
      v107 = v102;
      v2 = sub_1BE053704();
      v102 = v107;
    }

    else
    {
      v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v102;
    sub_1BE048C84();
    if (!v2)
    {
      break;
    }

    v1 = 0;
    v0 = v103 & 0xC000000000000001;
    v7 = (v103 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v0)
      {
        v104 = MEMORY[0x1BFB40900](v1, v103);
      }

      else
      {
        if (v1 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v104 = *(v103 + 8 * v1 + 32);
      }

      v4 = v104;
      v105 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      [v3 addSubview_];

      ++v1;
      if (v105 == v2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_1BE052774();
  }

LABEL_19:

  return v3;
}

void sub_1BD84F3BC()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews];
  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      [v0 bounds];
      [v5 setFrame_];
    }

    while (v2 != v3);
  }
}

void sub_1BD84F5FC()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v0 maskView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] + *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size];
    [v0 bounds];
    v5 = (CGRectGetWidth(v14) - v4) * 0.5;
    [v0 bounds];
    [v3 setFrame_];
    v6 = [v3 layer];
    v7 = [v6 sublayers];

    if (v7)
    {
      sub_1BD84F9F0();
      v8 = sub_1BE052744();

      if (!(v8 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_5:
          if (v9 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1BFB40900](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
            }

            v12 = v11;
            [v11 setFrame_];
          }
        }

LABEL_13:

        return;
      }
    }

    v9 = sub_1BE053704();
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }
}

unint64_t sub_1BD84F950()
{
  result = qword_1EBD558D8;
  if (!qword_1EBD558D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD558D8);
  }

  return result;
}

uint64_t sub_1BD84F9A4()
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

unint64_t sub_1BD84F9F0()
{
  result = qword_1EBD558E0;
  if (!qword_1EBD558E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD558E0);
  }

  return result;
}

char *PeerPaymentMessagesRecipientPickerViewController.__allocating_init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD850AF4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

char *PeerPaymentMessagesRecipientPickerViewController.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = sub_1BD850AF4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v7;
}

void sub_1BD84FC9C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
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

void sub_1BD84FDB8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD84FF70(char a1)
{
  v2 = v1;
  v41.receiver = v1;
  v41.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v41, sel_viewDidAppear_, a1 & 1);
  v4 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model;
  v5 = *&v1[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model];
  swift_getKeyPath();
  v40[0] = v5;
  sub_1BD850FFC();
  sub_1BE048964();
  sub_1BE04B594();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong analyticsMessagesContext];
    swift_unknownObjectRelease();
    sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v8 = v7;

      v40[0] = 0;
      Strong = v8;
      sub_1BE052234();

      sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      Strong = 0;
    }
  }

  else
  {
    sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  v9 = *&v2[v4];
  swift_getKeyPath();
  v40[0] = v9;
  sub_1BE048964();
  sub_1BE04B594();

  v10 = swift_unknownObjectWeakLoadStrong();

  if (v10)
  {
    v11 = [v10 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v11)
    {
      sub_1BE052434();
      v12 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v39 = v12;
      *&v38 = 48;
      *(&v38 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAFB0(v37, v40, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v40);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v15 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v16 = sub_1BE052434();
  v17 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = *v17;
  *(inited + 56) = *v17;
  v20 = sub_1BE052434();
  v21 = MEMORY[0x1E69BA680];
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v23 = *v21;
  *(inited + 80) = *v21;
  v24 = sub_1BE052434();
  v25 = MEMORY[0x1E69BAFB0];
  *(inited + 88) = v24;
  *(inited + 96) = v26;
  v27 = *v25;
  *(inited + 104) = *v25;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v28;
  v29 = v15;
  v30 = v19;
  v31 = v23;
  v32 = v27;
  v33 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v34 = objc_opt_self();
  sub_1BD1A8C44(v33);

  v35 = sub_1BE052224();

  v36 = sub_1BE052224();

  [v34 reportAppleCashEvent:v35 withMessagesContext:v36];
}

void sub_1BD8503E0(char a1)
{
  v2 = v1;
  v46.receiver = v1;
  v46.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v46, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model;
  v5 = *&v1[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model];
  swift_getKeyPath();
  v45[0] = v5;
  sub_1BD850FFC();
  sub_1BE048964();
  sub_1BE04B594();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong analyticsMessagesContext];
    swift_unknownObjectRelease();
    sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v8 = v7;

      v45[0] = 0;
      Strong = v8;
      sub_1BE052234();

      sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      Strong = 0;
    }
  }

  else
  {
    sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  v9 = *&v2[v4];
  swift_getKeyPath();
  v45[0] = v9;
  sub_1BE048964();
  sub_1BE04B594();

  v10 = swift_unknownObjectWeakLoadStrong();

  if (v10)
  {
    v11 = [v10 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v11)
    {
      sub_1BE052434();
      v12 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v44 = v12;
      *&v43 = 48;
      *(&v43 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAFB0(v42, v45, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v45);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v15 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v16 = sub_1BE052434();
  v17 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = *v17;
  *(inited + 56) = *v17;
  v20 = sub_1BE052434();
  v21 = MEMORY[0x1E69BA680];
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v23 = *v21;
  *(inited + 80) = *v21;
  v24 = sub_1BE052434();
  v25 = MEMORY[0x1E69BAFB0];
  *(inited + 88) = v24;
  *(inited + 96) = v26;
  v27 = *v25;
  *(inited + 104) = *v25;
  v28 = sub_1BE052434();
  v29 = MEMORY[0x1E69BAF60];
  *(inited + 112) = v28;
  *(inited + 120) = v30;
  v31 = *v29;
  *(inited + 128) = *v29;
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v32;
  v33 = v15;
  v34 = v19;
  v35 = v23;
  v36 = v27;
  v37 = v31;
  v38 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  v39 = objc_opt_self();
  sub_1BD1A8C44(v38);

  v40 = sub_1BE052224();

  v41 = sub_1BE052224();

  [v39 reportAppleCashEvent:v40 withMessagesContext:v41];
}

id PeerPaymentMessagesRecipientPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PeerPaymentMessagesRecipientPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD8509DC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1BD850FFC();
  sub_1BE04B594();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1BD850A58()
{
  swift_getKeyPath();
  sub_1BD850FFC();
  sub_1BE04B584();
}

char *sub_1BD850AF4(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v49 = a5;
  v51 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  MEMORY[0x1EEE9AC00](v51, v10);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = (&v46 - v14);
  v50 = v5;
  *&v5[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC] = 0;
  type metadata accessor for PeerPaymentGroupRecipientPickerModel(0);
  v15 = swift_allocObject();
  *(v15 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 64) = 0;
  v48 = a3;
  v47 = a4;
  sub_1BE04B5C4();
  if (a1 >> 62)
  {
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v55 = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v19 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB40900](v19, a1);
      }

      else
      {
        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v21);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v16 != v19);
    v17 = v55;
  }

  *(v15 + 16) = v17;
  if (a2 >> 62)
  {
    v22 = sub_1BE053704();
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
    goto LABEL_21;
  }

  v55 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if (v22 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1BFB40900](v24, a2);
    }

    else
    {
      v25 = *(a2 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;
    type metadata accessor for PeerPaymentGroupRecipient(0);
    swift_allocObject();
    sub_1BD92081C(v26);

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v22 != v24);
  v23 = v55;
LABEL_21:
  v27 = v47;
  v28 = v48;
  *(v15 + 24) = v23;
  *(v15 + 32) = v28;
  *(v15 + 48) = v27;
  KeyPath = swift_getKeyPath();
  v46 = &v46;
  MEMORY[0x1EEE9AC00](KeyPath, v30);
  v31 = v49;
  *(&v46 - 2) = v15;
  *(&v46 - 1) = v31;
  v55 = v15;
  sub_1BD850FFC();
  v32 = v28;
  v33 = v27;
  sub_1BE04B584();

  v34 = v50;
  *&v50[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model] = v15;
  v35 = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  v54.receiver = v34;
  v54.super_class = v35;
  sub_1BE048964();
  v36 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  v37 = *(v51 + 20);
  v38 = swift_getKeyPath();
  v39 = v53;
  *(v53 + v37) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  *v39 = v15;
  sub_1BD71B060(v39, v52);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55980));
  v40 = v36;
  v41 = sub_1BE04F894();
  v42 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC;
  v43 = *&v40[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
  *&v40[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC] = v41;

  result = *&v40[v42];
  if (result)
  {
    result = [result setOverrideUserInterfaceStyle_];
    v44 = *&v40[v42];
    if (v44)
    {
      v45 = v44;

      [v40 addChildViewController_];

      sub_1BD851150(v39);
      return v40;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1BD850FFC()
{
  result = qword_1EBD55900;
  if (!qword_1EBD55900)
  {
    type metadata accessor for PeerPaymentGroupRecipientPickerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55900);
  }

  return result;
}

unint64_t sub_1BD8510E8()
{
  result = qword_1EBD55970;
  if (!qword_1EBD55970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD55970);
  }

  return result;
}

uint64_t sub_1BD851150(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupRecipientPickerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD851288(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v3 = sub_1BE04BAC4();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v23 = v2;
  v7 = sub_1BD1882B8(v2, KeyPath);

  v8 = *(v7 + 16);
  v9 = (v7 + 32);
  v29 = 0x80000001BE1182F0;
  v30 = 0x80000001BE118310;
  v27 = 0x80000001BE118260;
  v28 = 0x80000001BE1182A0;
  v26 = "Precursor Education";
  while (2)
  {
    if (v8)
    {
      v11 = "fer";
      switch(*v9)
      {
        case 1:
          goto LABEL_6;
        case 5:
          v11 = v26;
LABEL_6:
          if (0x80000001BE118230 != (v11 | 0x8000000000000000))
          {
            goto LABEL_2;
          }

          goto LABEL_15;
        default:
LABEL_2:
          v10 = sub_1BE053B84();

          ++v9;
          --v8;
          if ((v10 & 1) == 0)
          {
            continue;
          }

LABEL_15:

          v15 = 0x6F63206775626564;
          v16 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_16;
    }

    break;
  }

  v12 = v20;
  sub_1BE04BC34();
  v13 = sub_1BE04B994();
  (*(v21 + 8))(v12, v22);
  if (v13)
  {
    v14 = "is card on file provisioning";
    v15 = 0xD000000000000044;
  }

  else
  {
    if (sub_1BE04BD04())
    {
      v15 = 0;
      v16 = 0;
LABEL_16:
      v17 = 0;
      return v25(v15, v16, 0, v17);
    }

    v14 = "onalExpressSetupFlowItem";
    v15 = 0xD000000000000022;
  }

  v16 = v14 | 0x8000000000000000;
  v17 = 1;
  return v25(v15, v16, 0, v17);
}

id sub_1BD85167C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  v8 = sub_1BE04BC84();
  sub_1BE04BC34();
  v9 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(PKPaymentSetupOptionalExpressModeViewController) initWithProvisioningController:v7 secureElementPass:v8 context:v9];

  [v10 setFlowItemDelegate_];
  sub_1BE052434();
  v11 = sub_1BE04BB74();

  [v10 setReporter_];

  return v10;
}

uint64_t sub_1BD851814()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD851850(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD851A1C(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_precursorUpgradeController) devicePrecursorRequests];
  if (v3)
  {
    v4 = v3;
    sub_1BD851BF8();
    v5 = sub_1BE052744();

    if (a1)
    {

      return;
    }

    if (v5 >> 62)
    {
      sub_1BE053704();
      if ((v5 & 0xC000000000000001) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_7:
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(v5 + 32);
LABEL_9:
      v7 = v6;

      v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_context);
      v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_provisionedPasses);
      type metadata accessor for PrecursorPassActionsFlowSection();
      swift_allocObject();
      sub_1BE048964();
      v10 = v9;
      sub_1BD207020(v8, v10, v7);

      return;
    }

    v6 = MEMORY[0x1BFB40900](0, v5);
    goto LABEL_9;
  }
}

uint64_t sub_1BD851B70()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD851BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD851BF8()
{
  result = qword_1EBD55A48[0];
  if (!qword_1EBD55A48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD55A48);
  }

  return result;
}

void sub_1BD851C44()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD85223C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD851CFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BE051AD4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v12 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v11 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v13 + 40) & ~v13);
    }

    else
    {
      v25 = *(v24 + 8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_1BD851F68(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1BE051AD4() - 8);
  v11 = *(v8 + 64);
  if (*(v10 + 84) <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) == -8)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v13)
      {
        v22 = *(v25 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v23 + v14 + 40) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          v23[1] = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) == -8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) != -8)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void sub_1BD85223C()
{
  if (!qword_1EBD4D390)
  {
    sub_1BE051AD4();
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D390);
    }
  }
}

uint64_t sub_1BD8522D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55AD0);
  v4 = *(a1 + 24);
  sub_1BD0DE4F4(&qword_1EBD55AD8, &qword_1EBD55AD0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4D410);
  sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1BD0DDEBC();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = WitnessTable;
  v29 = v6;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v26 = OpaqueTypeMetadata2;
  v27 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_1BE04E944();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20[-v16];
  v21 = v3;
  v22 = v4;
  v23 = v1;
  sub_1BE04E934();
  swift_getWitnessTable();
  sub_1BD147308(v13);
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_1BD147308(v17);
  return (v18)(v17, v9);
}

uint64_t sub_1BD852634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v75 = a4;
  v6 = sub_1BE04F434();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v70 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55AD0);
  v13 = sub_1BD0DE4F4(&qword_1EBD55AD8, &qword_1EBD55AD0);
  v81 = a2;
  v82 = v12;
  v83 = a3;
  v84 = v13;
  v14 = v13;
  v55[1] = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v15);
  v55[0] = v55 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4D410);
  v17 = sub_1BE04EBD4();
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = v55 - v19;
  v81 = a2;
  v82 = v12;
  v83 = a3;
  v84 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeConformance2;
  v21 = sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
  v79 = OpaqueTypeConformance2;
  v80 = v21;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1BD0DDEBC();
  v81 = v17;
  v82 = MEMORY[0x1E69E6158];
  v56 = v17;
  v24 = MEMORY[0x1E69E6158];
  v83 = WitnessTable;
  v84 = v23;
  v58 = WitnessTable;
  v25 = v23;
  v57 = v23;
  v26 = swift_getOpaqueTypeMetadata2();
  v66 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v59 = v55 - v28;
  v81 = v17;
  v82 = v24;
  v83 = WitnessTable;
  v84 = v25;
  v61 = swift_getOpaqueTypeConformance2();
  v81 = v26;
  v82 = v61;
  v63 = MEMORY[0x1E697D448];
  v29 = swift_getOpaqueTypeMetadata2();
  v64 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v60 = v55 - v35;
  v76 = a2;
  v77 = a3;
  v78 = v67;
  v36 = v67;
  sub_1BE051024();
  swift_getKeyPath();
  v37 = type metadata accessor for EditNavigationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v38 = v70;
  sub_1BE0516C4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v40 = v65;
  v41 = OpaqueTypeMetadata2;
  v42 = v55[0];
  sub_1BE0508C4();

  sub_1BD0DE53C(v38, &qword_1EBD40450);
  (*(v71 + 8))(v42, v41);
  v43 = (v36 + *(v37 + 36));
  v45 = *v43;
  v44 = v43[1];
  v81 = v45;
  v82 = v44;
  v46 = v59;
  v47 = v56;
  sub_1BE050B74();
  (*(v69 + 8))(v40, v47);
  v49 = v72;
  v48 = v73;
  v50 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x1E697C438], v74);
  v51 = v61;
  sub_1BE050E84();
  (*(v48 + 8))(v49, v50);
  (*(v66 + 8))(v46, v26);
  v81 = v26;
  v82 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v60;
  sub_1BD147308(v32);
  v53 = *(v64 + 8);
  v53(v32, v29);
  sub_1BD147308(v52);
  return (v53)(v52, v29);
}

uint64_t sub_1BD852DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v41 = a2;
  v43 = a1;
  v52 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AE0);
  MEMORY[0x1EEE9AC00](v51, v4);
  v49 = &v41 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AE8);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v6);
  v47 = &v41 - v7;
  v8 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AF0);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = &v41 - v12;
  v13 = sub_1BE051AD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v41 - v24;
  type metadata accessor for EditNavigationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  v26 = v43;
  sub_1BE0516C4();
  MEMORY[0x1BFB3E970](v22);
  sub_1BD0DE53C(v25, &qword_1EBD40520);
  (*(v14 + 104))(v17, *MEMORY[0x1E697D708], v13);
  sub_1BD853FA8(&qword_1EBD40538, MEMORY[0x1E697D718]);
  v27 = sub_1BE052334();
  v28 = *(v14 + 8);
  v28(v17, v13);
  v28(v21, v13);
  sub_1BE04FAD4();
  v29 = v41;
  v30 = v42;
  v57 = v41;
  v58 = v42;
  v59 = (v27 & 1) == 0;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348);
  sub_1BD3EC438();
  v31 = v44;
  sub_1BE04E424();
  sub_1BE04FB14();
  v53 = v29;
  v54 = v30;
  v55 = (v27 & 1) == 0;
  v56 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C10);
  sub_1BD79F5A4();
  v32 = v47;
  sub_1BE04E424();
  v33 = *(v51 + 48);
  v35 = v45;
  v34 = v46;
  v36 = v49;
  (*(v45 + 16))(v49, v31, v46);
  v37 = v48;
  v38 = &v36[v33];
  v39 = v50;
  (*(v48 + 16))(v38, v32, v50);
  sub_1BE04F854();
  (*(v37 + 8))(v32, v39);
  return (*(v35 + 8))(v31, v34);
}

id sub_1BD853354@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v8 = sub_1BE051AD4();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - v19;
  v21 = sub_1BE04BD74();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v26);
  v62 = &v54 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v28, v29);
  v61 = &v54 - v33;
  if ((a1 & 1) != 0 && (v68 = v31, v69 = v30, v34 = type metadata accessor for EditNavigationView(), v31 = v68, v30 = v69, *(a2 + *(v34 + 40)) == 1))
  {
    v56 = a2;
    v57 = v8;
    v58 = a5;
    (*(v22 + 104))(v25, *MEMORY[0x1E69B8068], v21, v69);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v39 = v38;

      (*(v22 + 8))(v25, v21);
      v70 = v37;
      v71 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
      v55 = v20;
      sub_1BE0516C4();
      v40 = v67;
      v41 = v64;
      v42 = v57;
      (*(v67 + 104))(v64, *MEMORY[0x1E697D708], v57);
      v43 = v20;
      v44 = v60;
      sub_1BD854000(v43, v60);
      v45 = v65;
      (*(v40 + 16))(v65, v41, v42);
      v46 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v47 = (v15 + *(v40 + 80) + v46) & ~*(v40 + 80);
      v48 = swift_allocObject();
      sub_1BD0DE204(v44, v48 + v46, &qword_1EBD40520);
      (*(v40 + 32))(v48 + v47, v45, v42);
      (*(v40 + 8))(v41, v42);
      sub_1BD0DE53C(v55, &qword_1EBD40520);
      sub_1BD0DDEBC();
      v49 = v62;
      sub_1BE051744();
      sub_1BE052434();
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
      v50 = v61;
      v51 = v66;
      sub_1BE050DE4();

      (*(v63 + 8))(v49, v51);
      v52 = v58;
      sub_1BD0DE204(v50, v58, &unk_1EBD45200);
      return (*(v68 + 56))(v52, 0, 1, v69);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v53 = *(v31 + 56);

    return v53(a5, 1, 1, v30, v32);
  }

  return result;
}

uint64_t sub_1BD8539A8@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v43 = a3;
  v45 = a2;
  v44 = a1;
  v48 = a4;
  v4 = sub_1BE051AD4();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500);
  v46 = *(v22 - 8);
  v47 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v39 - v24;
  sub_1BE04E1C4();
  v26 = type metadata accessor for EditNavigationView();
  if (v44)
  {
    v27 = &v45[*(v26 + 44)];
    v28 = *v27;
    v29 = *(v27 + 1);
    sub_1BE048964();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
    v39 = v17;
    sub_1BE0516C4();
    v30 = v42;
    (*(v42 + 104))(v10, *MEMORY[0x1E697D710], v4);
    v31 = v17;
    v32 = v40;
    sub_1BD854000(v31, v40);
    (*(v30 + 16))(&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v4);
    v33 = *(v41 + 80);
    v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v4;
    v35 = (v33 + 16) & ~v33;
    v36 = (v12 + *(v30 + 80) + v35) & ~*(v30 + 80);
    v29 = swift_allocObject();
    sub_1BD0DE204(v32, v29 + v35, &qword_1EBD40520);
    (*(v30 + 32))(v29 + v36, v45, v34);
    (*(v30 + 8))(v10, v34);
    sub_1BD0DE53C(v39, &qword_1EBD40520);
    v28 = sub_1BD854070;
  }

  MEMORY[0x1BFB3E7A0](v21, v28, v29);
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500);
  v37 = v47;
  sub_1BE050DE4();

  return (*(v46 + 8))(v25, v37);
}

uint64_t sub_1BD853E24()
{
  sub_1BE051D74();
  sub_1BE04E7D4();
}

uint64_t sub_1BD853E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE051AD4();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  return sub_1BE0518F4();
}

uint64_t sub_1BD853FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD854000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_99()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE051AD4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v1[10];
  v8 = *(v5 + 8);
  v8(v0 + v2 + v7, v4);
  v8(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1BD8541EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  sub_1BE051AD4();

  return sub_1BD853E24();
}

uint64_t type metadata accessor for AccountModuleView()
{
  result = qword_1EBD55AF8;
  if (!qword_1EBD55AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD85433C()
{
  sub_1BD1C86BC();
  if (v0 <= 0x3F)
  {
    sub_1BD0FA9D0();
    if (v1 <= 0x3F)
    {
      sub_1BD8543F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD8543F8()
{
  if (!qword_1EBD4B278)
  {
    sub_1BE04EB44();
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4B278);
    }
  }
}

uint64_t sub_1BD85446C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountModuleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B08);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B18);
  sub_1BD854704(v1, &v10[*(v15 + 44)]);
  v16 = sub_1BE050234();
  _UISolariumFeatureFlagEnabled();
  sub_1BE04E1F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1BD0DE204(v10, v14, &qword_1EBD55B08);
  v25 = &v14[*(v11 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_1BD855EE0(v1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  sub_1BD855F44(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_1BD0DE204(v14, a1, &qword_1EBD55B10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B20);
  v29 = (a1 + *(result + 36));
  *v29 = sub_1BD855FA8;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

uint64_t sub_1BD854704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v102 = a2;
  v112 = sub_1BE04C744();
  v129 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v3);
  v128 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BE04C734();
  v131 = *(v5 - 8);
  v132 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v138 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v136 = &v95[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B28);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v137 = &v95[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v135 = &v95[-v16];
  v17 = type metadata accessor for AccountModuleView();
  v110 = *(v17 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v111 = &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B440);
  MEMORY[0x1EEE9AC00](v20, v21);
  v133 = &v95[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B30);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v95[-v25];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B38);
  MEMORY[0x1EEE9AC00](v114, v27);
  v134 = &v95[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v113 = &v95[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  v139 = &v95[-v34];
  _UISolariumFeatureFlagEnabled();
  v118 = 0x4030000000000000;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v126 = v152;
  v127 = v150;
  v124 = v155;
  v125 = v154;
  v149 = 1;
  v148 = v151;
  v147 = v153;
  if (_UISolariumFeatureFlagEnabled())
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v122 = 0;
    v123 = v156;
    v120 = v160;
    v121 = v158;
    v119 = v161;
    LOBYTE(v171) = 1;
    LOBYTE(v165) = v157;
    LOBYTE(v162) = v159;
    v115 = 1;
    v116 = v157;
    v117 = v159;
    LOBYTE(v177) = 0;
  }

  else
  {
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v116 = 0;
    v117 = 0;
    v115 = 0;
    v122 = 1;
  }

  *v26 = sub_1BE04F7B4();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v35 = *a1;
  if (_UISolariumFeatureFlagEnabled())
  {
    v36 = 8.0;
  }

  else
  {
    v36 = 4.0;
  }

  v37 = v133;
  v38 = &v133[*(v20 + 36)];
  v39 = *(sub_1BE04EDE4() + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1BE04F684();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = v36;
  v38[1] = v36;
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  *v37 = v35;
  sub_1BE048964();
  v42 = sub_1BE051CD4();
  v44 = v43;
  v45 = 0;
  v46 = 0;
  v47 = *(a1 + 40);
  v130 = a1;
  if (v47 == 1)
  {
    v48 = a1;
    v49 = v111;
    sub_1BD855EE0(v48, v111);
    v50 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v51 = (v18 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1BD855F44(v49, v46 + v50);
    __asm { FMOV            V0.2D, #18.0 }

    *(v46 + v51) = _Q0;
    *(v46 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = 0x401C000000000000;
    v45 = sub_1BD856014;
  }

  v57 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B40) + 44)];
  sub_1BD0DE204(v133, v57, &qword_1EBD3B440);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B48) + 36));
  *v58 = v45;
  v58[1] = v46;
  v58[2] = v42;
  v58[3] = v44;
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v59 = v113;
  sub_1BD0DE204(v26, v113, &qword_1EBD55B30);
  v60 = &v59[*(v114 + 36)];
  v61 = v163;
  *v60 = v162;
  v60[1] = v61;
  v60[2] = v164;
  sub_1BD0DE204(v59, v139, &qword_1EBD55B38);
  if (_UISolariumFeatureFlagEnabled())
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LODWORD(v114) = 0;
    v133 = v165;
    v113 = v167;
    v110 = v170;
    v111 = v169;
    LOBYTE(v171) = 1;
    v146 = v166;
    v145 = v168;
    v107 = 1;
    v108 = v166;
    v109 = v168;
    LOBYTE(v177) = 0;
  }

  else
  {
    v133 = 0;
    v113 = 0;
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    LODWORD(v114) = 1;
  }

  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v105 = v173;
  v106 = v171;
  v103 = v176;
  v104 = v175;
  v146 = 1;
  v145 = v172;
  v144 = v174;
  v62 = sub_1BE04F7C4();
  v63 = v135;
  *v135 = v62;
  v63[1] = 0;
  *(v63 + 16) = 1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B50);
  sub_1BD8556F4(v130, (v63 + *(v64 + 44)));
  (*(v129 + 104))(v128, *MEMORY[0x1E69BC950], v112);
  v65 = v136;
  sub_1BE04C724();
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v129 = v179;
  v130 = v177;
  v128 = v181;
  v118 = v182;
  v143 = 1;
  v142 = v178;
  v141 = v180;
  v66 = v149;
  v67 = v148;
  v68 = v147;
  v69 = v134;
  sub_1BD0DE19C(v139, v134, &qword_1EBD55B38);
  v96 = v146;
  v97 = v145;
  v98 = v144;
  sub_1BD0DE19C(v63, v137, &qword_1EBD55B28);
  v140 = 1;
  v71 = v131;
  v70 = v132;
  v99 = *(v131 + 16);
  v99(v138, v65, v132);
  v100 = v143;
  v101 = v142;
  LODWORD(v112) = v141;
  v72 = v102;
  *v102 = 0;
  *(v72 + 8) = v66;
  v73 = v126;
  v72[2] = v127;
  *(v72 + 24) = v67;
  v72[4] = v73;
  *(v72 + 40) = v68;
  v74 = v124;
  v72[6] = v125;
  v72[7] = v74;
  v75 = v115;
  v72[8] = 0;
  v72[9] = v75;
  v76 = v116;
  v72[10] = v123;
  v72[11] = v76;
  v77 = v117;
  v72[12] = v121;
  v72[13] = v77;
  v78 = v119;
  v72[14] = v120;
  v72[15] = v78;
  *(v72 + 128) = v122;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B58);
  sub_1BD0DE19C(v69, v72 + v79[16], &qword_1EBD55B38);
  v80 = v72 + v79[20];
  v81 = v107;
  *v80 = 0;
  *(v80 + 1) = v81;
  v82 = v108;
  *(v80 + 2) = v133;
  *(v80 + 3) = v82;
  v83 = v109;
  *(v80 + 4) = v113;
  *(v80 + 5) = v83;
  v84 = v110;
  *(v80 + 6) = v111;
  *(v80 + 7) = v84;
  v80[64] = v114;
  v85 = v72 + v79[24];
  *v85 = 0;
  v85[8] = v96;
  *(v85 + 2) = v106;
  v85[24] = v97;
  *(v85 + 4) = v105;
  v85[40] = v98;
  v86 = v103;
  *(v85 + 6) = v104;
  *(v85 + 7) = v86;
  v87 = v137;
  sub_1BD0DE19C(v137, v72 + v79[28], &qword_1EBD55B28);
  v88 = v72 + v79[32];
  v89 = v140;
  *v88 = 0;
  v88[8] = v89;
  v90 = v138;
  v99(v72 + v79[36], v138, v70);
  v91 = v72 + v79[40];
  *v91 = 0;
  v91[8] = v100;
  *(v91 + 2) = v130;
  v91[24] = v101;
  *(v91 + 4) = v129;
  v91[40] = v112;
  v92 = v118;
  *(v91 + 6) = v128;
  *(v91 + 7) = v92;
  v93 = *(v71 + 8);
  v93(v136, v70);
  sub_1BD0DE53C(v135, &qword_1EBD55B28);
  sub_1BD0DE53C(v139, &qword_1EBD55B38);
  v93(v90, v70);
  sub_1BD0DE53C(v87, &qword_1EBD55B28);
  return sub_1BD0DE53C(v134, &qword_1EBD55B38);
}

double sub_1BD855298@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D2>)
{
  v43[1] = a1;
  v46 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v45 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCE0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v44 = v43 - v13;
  v14 = sub_1BE04EB44();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v43 - v21;
  type metadata accessor for AccountModuleView();
  v43[2] = a2;
  sub_1BD70A548(v22);
  v23 = *MEMORY[0x1E697E7D0];
  v24 = *(v15 + 104);
  v24(v18, v23, v14);
  v25 = sub_1BE04EB34();
  v26 = *(v15 + 8);
  v26(v18, v14);
  v26(v22, v14);
  v27 = 0.0;
  if (v25)
  {
    sub_1BE04E684();
    v27 = v28 - a4;
  }

  sub_1BD70A548(v22);
  v24(v18, v23, v14);
  v29 = sub_1BE04EB34();
  v26(v18, v14);
  v26(v22, v14);
  v30 = -a5;
  if ((v29 & 1) == 0)
  {
    a5 = -a5;
  }

  sub_1BE051574();
  v31 = *MEMORY[0x1E6981688];
  v32 = sub_1BE0515C4();
  v33 = *(v32 - 8);
  v34 = v44;
  (*(v33 + 104))(v44, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = sub_1BE051594();

  sub_1BD0DE53C(v34, &qword_1EBD3BCE0);
  v36 = sub_1BE050354();
  v37 = v45;
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  v38 = sub_1BE0503B4();
  sub_1BD0DE53C(v37, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  result = v27 + a5;
  v41 = v46;
  *v46 = v35;
  v41[1] = KeyPath;
  v41[2] = v38;
  v42 = v48;
  *(v41 + 3) = v47;
  *(v41 + 5) = v42;
  *(v41 + 7) = v49;
  *(v41 + 9) = v27 + a5;
  *(v41 + 10) = v30;
  return result;
}

uint64_t sub_1BD8556F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v85 = &v66 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v9);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v81 = v95;
  v80 = v97;
  v79 = v99;
  v78 = v100;
  v91 = 1;
  v90 = v96;
  v89 = v98;
  v70 = a1;
  v15 = *(a1 + 16);
  v107 = *(a1 + 8);
  v108 = v15;
  v16 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v69 = v16;
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  sub_1BE0502A4();
  v22 = sub_1BE0505F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_1BD0DDF10(v17, v19, v21 & 1);

  v107 = v22;
  v108 = v24;
  LOBYTE(v109) = v26 & 1;
  v110 = v28;
  sub_1BE052434();
  v82 = v14;
  sub_1BE050DE4();

  sub_1BD0DDF10(v22, v24, v26 & 1);

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v74 = v101;
  v73 = v103;
  v72 = v105;
  v71 = v106;
  v94 = 1;
  v93 = v102;
  v92 = v104;
  v29 = *(v70 + 32);
  if (v29)
  {
    v107 = *(v70 + 24);
    v108 = v29;
    sub_1BE048C84();
    v30 = sub_1BE0506C4();
    v32 = v31;
    v34 = v33;
    sub_1BE0502A4();
    v35 = sub_1BE0505F4();
    v37 = v36;
    v39 = v38;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    sub_1BE051494();
    v40 = sub_1BE050564();
    v42 = v41;
    LOBYTE(v32) = v43;
    v45 = v44;

    sub_1BD0DDF10(v35, v37, v39 & 1);

    v107 = v40;
    v108 = v42;
    LOBYTE(v109) = v32 & 1;
    v110 = v45;
    sub_1BE052434();
    v46 = v75;
    sub_1BE050DE4();

    sub_1BD0DDF10(v40, v42, v32 & 1);

    v47 = v85;
    sub_1BD0DE204(v46, v85, &qword_1EBD452C0);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v85;
    v46 = v75;
  }

  (*(v76 + 56))(v47, v48, 1, v77);
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v77 = v107;
  v76 = v109;
  v75 = v111;
  v70 = v112;
  v88 = 1;
  v87 = v108;
  v86 = v110;
  v49 = v91;
  v50 = v90;
  v51 = v89;
  v52 = v82;
  sub_1BD0DE19C(v82, v46, &qword_1EBD452C0);
  v53 = v94;
  v54 = v93;
  v55 = v92;
  v56 = v47;
  v57 = v83;
  sub_1BD0DE19C(v56, v83, &unk_1EBD5BB60);
  v67 = v88;
  v68 = v87;
  LODWORD(v69) = v86;
  v58 = v84;
  *v84 = 0;
  *(v58 + 8) = v49;
  v58[2] = v81;
  *(v58 + 24) = v50;
  v58[4] = v80;
  *(v58 + 40) = v51;
  v59 = v78;
  v58[6] = v79;
  v58[7] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B60);
  sub_1BD0DE19C(v46, v58 + v60[12], &qword_1EBD452C0);
  v61 = v58 + v60[16];
  *v61 = 0;
  v61[8] = v53;
  *(v61 + 2) = v74;
  v61[24] = v54;
  *(v61 + 4) = v73;
  v61[40] = v55;
  v62 = v71;
  *(v61 + 6) = v72;
  *(v61 + 7) = v62;
  sub_1BD0DE19C(v57, v58 + v60[20], &unk_1EBD5BB60);
  v63 = v58 + v60[24];
  *v63 = 0;
  v63[8] = v67;
  *(v63 + 2) = v77;
  v63[24] = v68;
  *(v63 + 4) = v76;
  v63[40] = v69;
  v64 = v70;
  *(v63 + 6) = v75;
  *(v63 + 7) = v64;
  sub_1BD0DE53C(v85, &unk_1EBD5BB60);
  sub_1BD0DE53C(v52, &qword_1EBD452C0);
  sub_1BD0DE53C(v57, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v46, &qword_1EBD452C0);
}

uint64_t sub_1BD855EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountModuleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD855F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountModuleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD855FA8()
{
  v1 = type metadata accessor for AccountModuleView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 48);
  if (v4)
  {
    return v4();
  }

  return result;
}

double sub_1BD856014@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AccountModuleView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD855298(a1, v2 + v6, a2, v8, v9);
}

unint64_t sub_1BD8560D0()
{
  result = qword_1EBD55B68;
  if (!qword_1EBD55B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B20);
    sub_1BD85615C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B68);
  }

  return result;
}

unint64_t sub_1BD85615C()
{
  result = qword_1EBD55B70;
  if (!qword_1EBD55B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B10);
    sub_1BD8561E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B70);
  }

  return result;
}

unint64_t sub_1BD8561E8()
{
  result = qword_1EBD55B78;
  if (!qword_1EBD55B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B78);
  }

  return result;
}

uint64_t AccountAutomaticPaymentsDateView.init(model:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  result = sub_1BE051694();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t AccountAutomaticPaymentsDateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v38 = sub_1BE04FB94();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B88);
  MEMORY[0x1EEE9AC00](v34, v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B90);
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B98);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v18);
  v20 = &v33 - v19;
  v21 = *v2;
  v36 = v2[1];
  v37 = v21;
  v43 = v21;
  v44 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BA0);
  sub_1BD856A54();
  sub_1BE0504E4();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD55BD0, &qword_1EBD55B80);
  sub_1BE050DE4();

  (*(v7 + 8))(v10, v6);
  sub_1BE04FB84();
  v22 = sub_1BD856BE8();
  v23 = MEMORY[0x1E697C750];
  v24 = v34;
  v25 = v38;
  sub_1BE051144();
  (*(v40 + 8))(v5, v25);
  sub_1BD0DE53C(v13, &qword_1EBD55B88);
  v45 = v24;
  v46 = v25;
  v47 = v22;
  v48 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DF4();
  (*(v35 + 8))(v17, v14);
  sub_1BE0501C4();
  if (qword_1EBD36DD0 != -1)
  {
    swift_once();
  }

  v45 = v14;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v41;
  v28 = v42;
  sub_1BE050904();
  (*(v39 + 8))(v20, v27);
  v45 = v37;
  v46 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v29 = v45;
  v30 = v46;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BE0);
  v32 = (v28 + *(result + 36));
  *v32 = v29;
  v32[1] = v30;
  return result;
}

uint64_t sub_1BD8567E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54268);
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1BD8582B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  sub_1BDA1C820();
  v3 = v2;

  if (v3)
  {
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501F4();
    sub_1BE04E1F4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
  sub_1BD7E3BFC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD55BC0, &qword_1EBD55BC8);
  sub_1BD7E3D40();
  return sub_1BE051A34();
}

unint64_t sub_1BD856A54()
{
  result = qword_1EBD55BA8;
  if (!qword_1EBD55BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BA0);
    sub_1BD856AE0();
    sub_1BD734220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BA8);
  }

  return result;
}

unint64_t sub_1BD856AE0()
{
  result = qword_1EBD55BB0;
  if (!qword_1EBD55BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0);
    sub_1BD7E3BFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55BC0, &qword_1EBD55BC8);
    sub_1BD7E3D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BB0);
  }

  return result;
}

unint64_t sub_1BD856BE8()
{
  result = qword_1EBD55BD8;
  if (!qword_1EBD55BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B88);
    sub_1BD0DE4F4(&qword_1EBD55BD0, &qword_1EBD55B80);
    sub_1BD858A5C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BD8);
  }

  return result;
}

uint64_t sub_1BD856CEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v48 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v5);
  v42 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BF0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BF8);
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v51 = &v41 - v19;
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210);
  sub_1BE0516A4();
  v20 = v52;
  swift_getKeyPath();
  v53 = v20;
  sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();

  v21 = *(v20 + 24);
  v47 = v13;
  if ((v21 - 2) >= 2)
  {
    if (v21 == 1)
    {
      v22 = *(v20 + 32);
      sub_1BE048C84();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v22 = &unk_1F3B8F7B8;
  }

  v52 = v22;
  swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C00);
  sub_1BD0DE4F4(&qword_1EBD54438, &qword_1EBD54430);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55C08);
  v25 = sub_1BD858880();
  v53 = v24;
  v54 = v25;
  v26 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1BE0519C4();
  v53 = a1;
  v54 = a2;
  sub_1BE0516A4();
  v27 = v52;
  swift_getKeyPath();
  v53 = v27;
  sub_1BE04B594();

  v28 = *(v27 + 40);

  v29 = v47;
  if (v28 == 6)
  {
    v53 = a1;
    v54 = a2;
    sub_1BE0516A4();
    v30 = v42;
    sub_1BD894404(v52, v42);
    sub_1BD858964(v30, v29);
    v26 = 0;
  }

  (*(v46 + 56))(v29, v26, 1, v48);
  v31 = v43;
  v32 = v44;
  v33 = *(v43 + 16);
  v34 = v45;
  v35 = v51;
  v33(v45, v51, v44);
  v36 = v49;
  sub_1BD0DE19C(v29, v49, &qword_1EBD55BF0);
  v37 = v50;
  v33(v50, v34, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C28);
  sub_1BD0DE19C(v36, &v37[*(v38 + 48)], &qword_1EBD55BF0);
  sub_1BD0DE53C(v29, &qword_1EBD55BF0);
  v39 = *(v31 + 8);
  v39(v35, v32);
  sub_1BD0DE53C(v36, &qword_1EBD55BF0);
  return (v39)(v34, v32);
}