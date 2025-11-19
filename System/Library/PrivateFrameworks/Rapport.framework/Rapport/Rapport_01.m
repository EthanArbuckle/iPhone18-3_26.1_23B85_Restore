unint64_t sub_1B6F16380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BBE8, &qword_1B6F2FEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6F2F9B0;
  v1 = *MEMORY[0x1E696A278];
  *(inited + 32) = sub_1B6F22A08();
  *(inited + 40) = v2;
  v3 = sub_1B6F15F88();
  v5 = 0x6C616E7265746E49;
  if (v4)
  {
    v5 = v3;
  }

  v6 = 0xEF2E726F72726520;
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v4)
  {
    v6 = v4;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B6F17C20(inited);
  swift_setDeallocating();
  sub_1B6F17D50(inited + 32, &qword_1EB97BBF0, &unk_1B6F2FEC8);
  return v7;
}

uint64_t sub_1B6F16464(uint64_t a1)
{
  v2 = sub_1B6F196E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B6F164A0(uint64_t a1)
{
  v2 = sub_1B6F196E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B6F164EC()
{
  result = sub_1B6F15F88();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1B6F16568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v22 = a1;
  v23 = a3;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v16, v15);
  v17 = *(a6 + 16);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) != 1)
  {
    return (*(v18 + 32))(a7, v14, v17);
  }

  (*(v11 + 8))(v14, a6);
  sub_1B6F15F34();
  swift_allocError();
  v19 = v23;
  *v20 = v22;
  *(v20 + 8) = a2;
  *(v20 + 16) = v19;
  *(v20 + 24) = a4;
  *(v20 + 32) = v24;
  *(v20 + 40) = 0;
  swift_willThrow();
}

uint64_t sub_1B6F1678C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = &a2[-result];
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_1B6F106BC(result, a2);
      v5 = v10 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = sub_1B6F22718();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v9 = sub_1B6F226D8();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_1B6F22798();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v5 = v9 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v5 = v9 | 0x4000000000000000;
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6F16854()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B6F168E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6F17FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6F1691C(uint64_t a1)
{
  v2 = sub_1B6F17DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16958(uint64_t a1)
{
  v2 = sub_1B6F17DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F169A0(uint64_t a1)
{
  v2 = sub_1B6F17F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F169DC(uint64_t a1)
{
  v2 = sub_1B6F17F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16A18(uint64_t a1)
{
  v2 = sub_1B6F17F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16A54(uint64_t a1)
{
  v2 = sub_1B6F17F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16A90(uint64_t a1)
{
  v2 = sub_1B6F17E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16ACC(uint64_t a1)
{
  v2 = sub_1B6F17E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16B08(uint64_t a1)
{
  v2 = sub_1B6F17EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16B44(uint64_t a1)
{
  v2 = sub_1B6F17EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16B80@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B6F16BB0(uint64_t a1)
{
  v2 = sub_1B6F17E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F16BEC(uint64_t a1)
{
  v2 = sub_1B6F17E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F16C28(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BBF8, &qword_1B6F2FED8);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC00, &qword_1B6F2FEE0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC08, &qword_1B6F2FEE8);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC10, &qword_1B6F2FEF0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC18, &qword_1B6F2FEF8);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC20, &qword_1B6F2FF00);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F17DB0();
  sub_1B6F22D38();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_1B6F17F00();
      v35 = v48;
      sub_1B6F22C18();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1B6F17F54();
    v32 = v48;
    sub_1B6F22C18();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_1B6F17EAC();
    v33 = v36;
    v32 = v48;
    sub_1B6F22C18();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1B6F17E58();
    v26 = v39;
    v27 = v48;
    sub_1B6F22C18();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_1B6F17E04();
    v26 = v42;
    v27 = v48;
    sub_1B6F22C18();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t sub_1B6F1719C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6F1816C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B6F171E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1B6F229F8();
  [v0 setDateFormat_];

  return v0;
}

void sub_1B6F172F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1B6F171E4();
  v7 = sub_1B6F229F8();
  v8 = [v6 dateFromString_];

  if (v8)
  {
    sub_1B6F22818();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x80000001B6F45B90;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (a3 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001B6F45B20;
    }

    if (a3 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (a3)
    {
      v9 = 0xEA00000000003232;
    }

    if (a3 <= 1u)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (a3 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    sub_1B6F22B28();
    MEMORY[0x1B8C9DA10](0xD00000000000001BLL, 0x80000001B6F45B40);
    MEMORY[0x1B8C9DA10](a1, a2);
    MEMORY[0x1B8C9DA10](0xD000000000000023, 0x80000001B6F45B60);
    MEMORY[0x1B8C9DA10](v13, v14);

    MEMORY[0x1B8C9DA10](96, 0xE100000000000000);
    sub_1B6F15F34();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 0xD00000000000004DLL;
    *(v15 + 24) = 0x80000001B6F45A90;
    *(v15 + 32) = 243;
    *(v15 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B6F17530()
{
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](0);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F1759C()
{
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](0);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F175F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6F22C78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6F17680(uint64_t a1)
{
  v2 = sub_1B6F18864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F176BC(uint64_t a1)
{
  v2 = sub_1B6F18864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F176F8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC28, &qword_1B6F2FF08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F18864();
  sub_1B6F22D38();
  v11[15] = a2;
  sub_1B6F188B8();
  sub_1B6F22C58();
  return (*(v5 + 8))(v8, v4);
}

void sub_1B6F17840(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1B6F171E4();
  v5 = sub_1B6F22808();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B6F22A08();
  v9 = v8;

  *a1 = v7;
  a1[1] = v9;
}

void *sub_1B6F178EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6F1890C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B6F17934(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1B6F17974(a1);
  return v5;
}

char *sub_1B6F17974(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 2) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 96)], a1);
  return v1;
}

id *sub_1B6F17A18()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1B6F17A98()
{
  sub_1B6F17A18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1B6F17AF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B6F22CF8();
  sub_1B6F22A58();
  v6 = sub_1B6F22D18();

  return sub_1B6F17B68(a1, a2, v6);
}

unint64_t sub_1B6F17B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B6F22C78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B6F17C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BCB0, &qword_1B6F30B08);
    v3 = sub_1B6F22B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B6F19788(v4, &v13, &qword_1EB97BBF0, &unk_1B6F2FEC8);
      v5 = v13;
      v6 = v14;
      result = sub_1B6F17AF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B6F197F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B6F17D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1B6F17DB0()
{
  result = qword_1EB97D2A8;
  if (!qword_1EB97D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2A8);
  }

  return result;
}

unint64_t sub_1B6F17E04()
{
  result = qword_1EB97D2B0;
  if (!qword_1EB97D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2B0);
  }

  return result;
}

unint64_t sub_1B6F17E58()
{
  result = qword_1EB97D2B8;
  if (!qword_1EB97D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2B8);
  }

  return result;
}

unint64_t sub_1B6F17EAC()
{
  result = qword_1EB97D2C0;
  if (!qword_1EB97D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2C0);
  }

  return result;
}

unint64_t sub_1B6F17F00()
{
  result = qword_1EB97D2C8;
  if (!qword_1EB97D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2C8);
  }

  return result;
}

unint64_t sub_1B6F17F54()
{
  result = qword_1EB97D2D0;
  if (!qword_1EB97D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97D2D0);
  }

  return result;
}

uint64_t sub_1B6F17FA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B6F45BB0 == a2 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B6F22C78();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B6F1816C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC78, &qword_1B6F30AD0);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v45[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC80, &qword_1B6F30AD8);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v45[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC88, &qword_1B6F30AE0);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC90, &qword_1B6F30AE8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC98, &qword_1B6F30AF0);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BCA0, &qword_1B6F30AF8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v26);
  sub_1B6F17DB0();
  v27 = v61;
  sub_1B6F22D28();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = sub_1B6F22C08();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = sub_1B6F22B58();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BCA8, &qword_1B6F30B00) + 48);
    *v37 = &type metadata for OSLogDateFormatter.Style;
    v39 = v48;
    sub_1B6F22BB8();
    sub_1B6F22B48();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      sub_1B6F17F00();
      v42 = v48;
      sub_1B6F22BA8();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      sub_1B6F17F54();
      v42 = v48;
      sub_1B6F22BA8();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      sub_1B6F17EAC();
      v41 = v48;
      sub_1B6F22BA8();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        sub_1B6F17E58();
        sub_1B6F22BA8();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        sub_1B6F17E04();
        v43 = v58;
        sub_1B6F22BA8();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return v46;
}

unint64_t sub_1B6F18864()
{
  result = qword_1EB97D2D8[0];
  if (!qword_1EB97D2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97D2D8);
  }

  return result;
}

unint64_t sub_1B6F188B8()
{
  result = qword_1EB97BC30;
  if (!qword_1EB97BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC30);
  }

  return result;
}

void *sub_1B6F1890C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BC68, &qword_1B6F30AC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F18864();
  sub_1B6F22D28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1B6F19734();
    sub_1B6F22BF8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_1B6F18A84()
{
  result = qword_1EB97BC38;
  if (!qword_1EB97BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC38);
  }

  return result;
}

unint64_t sub_1B6F18ADC()
{
  result = qword_1EB97BC40;
  if (!qword_1EB97BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC40);
  }

  return result;
}

unint64_t sub_1B6F18B34()
{
  result = qword_1EB97BC48;
  if (!qword_1EB97BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC48);
  }

  return result;
}

unint64_t sub_1B6F18B8C()
{
  result = qword_1EB97BC50;
  if (!qword_1EB97BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC50);
  }

  return result;
}

unint64_t sub_1B6F18BE4()
{
  result = qword_1EB97BC58;
  if (!qword_1EB97BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC58);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6F18C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B6F18CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B6F18D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1B6F18DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6F18E14(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OSLogDateFormatter.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OSLogDateFormatter.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B6F18FBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B6F19050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6F19164()
{
  result = qword_1EB97E060[0];
  if (!qword_1EB97E060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E060);
  }

  return result;
}

unint64_t sub_1B6F191BC()
{
  result = qword_1EB97E270[0];
  if (!qword_1EB97E270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E270);
  }

  return result;
}

unint64_t sub_1B6F19214()
{
  result = qword_1EB97E380;
  if (!qword_1EB97E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E380);
  }

  return result;
}

unint64_t sub_1B6F1926C()
{
  result = qword_1EB97E388[0];
  if (!qword_1EB97E388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E388);
  }

  return result;
}

unint64_t sub_1B6F192C4()
{
  result = qword_1EB97E410;
  if (!qword_1EB97E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E410);
  }

  return result;
}

unint64_t sub_1B6F1931C()
{
  result = qword_1EB97E418[0];
  if (!qword_1EB97E418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E418);
  }

  return result;
}

unint64_t sub_1B6F19374()
{
  result = qword_1EB97E4A0;
  if (!qword_1EB97E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E4A0);
  }

  return result;
}

unint64_t sub_1B6F193CC()
{
  result = qword_1EB97E4A8[0];
  if (!qword_1EB97E4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E4A8);
  }

  return result;
}

unint64_t sub_1B6F19424()
{
  result = qword_1EB97E530;
  if (!qword_1EB97E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E530);
  }

  return result;
}

unint64_t sub_1B6F1947C()
{
  result = qword_1EB97E538[0];
  if (!qword_1EB97E538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E538);
  }

  return result;
}

unint64_t sub_1B6F194D4()
{
  result = qword_1EB97E5C0;
  if (!qword_1EB97E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E5C0);
  }

  return result;
}

unint64_t sub_1B6F1952C()
{
  result = qword_1EB97E5C8[0];
  if (!qword_1EB97E5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E5C8);
  }

  return result;
}

unint64_t sub_1B6F19584()
{
  result = qword_1EB97E650;
  if (!qword_1EB97E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E650);
  }

  return result;
}

unint64_t sub_1B6F195DC()
{
  result = qword_1EB97E658[0];
  if (!qword_1EB97E658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E658);
  }

  return result;
}

unint64_t sub_1B6F19634()
{
  result = qword_1EB97E6E0;
  if (!qword_1EB97E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97E6E0);
  }

  return result;
}

unint64_t sub_1B6F1968C()
{
  result = qword_1EB97E6E8[0];
  if (!qword_1EB97E6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97E6E8);
  }

  return result;
}

unint64_t sub_1B6F196E0()
{
  result = qword_1EB97BC60;
  if (!qword_1EB97BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC60);
  }

  return result;
}

unint64_t sub_1B6F19734()
{
  result = qword_1EB97BC70;
  if (!qword_1EB97BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BC70);
  }

  return result;
}

uint64_t sub_1B6F19788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1B6F197F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B6F19850(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

Swift::Bool __swiftcall DiscoverableApplicationServiceExtensionConfiguration.accept(connection:)(NSXPCConnection connection)
{
  [(objc_class *)connection.super.isa setExportedObject:v1];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v3];

  [(objc_class *)connection.super.isa resume];
  return 1;
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(void (*a1)(uint64_t, unint64_t, void))
{
  v3 = *(*v1 + 96);
  v4 = *v1;
  v12 = *(*v1 + 80);
  v5 = v12;
  v13 = *(*(v4 + 88) + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v5);
  v7 = sub_1B6F22918();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_1B6F01F4C(v7, v9);
  a1(v7, v9, 0);
  sub_1B6F01FA0(v7, v9);
  return sub_1B6F01FA0(v7, v9);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B6F19B2C(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v3;

  DiscoverableApplicationServiceExtensionConfiguration.fetchConfigurationData(reply:)(sub_1B6F19F38);
}

void sub_1B6F19BBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1B6F22758();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1B6F227C8();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t DiscoverableApplicationServiceExtensionConfiguration.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B6F19D70(NSXPCConnection a1)
{
  v2 = *v1;
  DiscoverableApplicationServiceExtensionConfiguration.accept(connection:)(a1);
  return 1;
}

uint64_t DiscoverableApplicationServiceExtension.configuration.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscoverableApplicationServiceExtensionConfiguration();
  (*(v3 + 16))(v6, v1, a1);
  return sub_1B6F19850(v6);
}

uint64_t sub_1B6F19E8C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 8);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(a1);
  v9 = *(v2 + 33);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_5(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(a1);
  LODWORD(v2) = *(v2 + 36);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Magic value does not match: 0x%x", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_2_cold_6(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(a1);
  v9 = *(v2 + 36);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
  v8 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_57_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __nwrapport_copy_protocol_definition_block_invoke_60_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Stop handler called for framer=%@, sending CLOSE to daemon", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}