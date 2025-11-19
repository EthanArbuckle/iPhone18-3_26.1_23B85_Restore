void sub_1B5E1903C()
{
  v5 = v0[6];
  v4 = v0[5];
  v3 = v0[4];
  v2 = v0[3];
  v1 = v0[2];
}

uint64_t sub_1B5E19068()
{
  v2 = *(v0 - 224);
  *(v0 - 304) = *(v0 - 240);
  *(v0 - 288) = v2;
  *(v0 - 272) = *(v0 - 208);
  *(v0 - 263) = *(v0 - 199);

  return sub_1B5E17C58(v0 - 304);
}

uint64_t sub_1B5E190D0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_1B5E19124()
{

  return type metadata accessor for UserNotification();
}

void sub_1B5E1913C()
{
  v3 = v0[9];
  v2 = v0[8];
  v1 = v0[7];
}

uint64_t sub_1B5E19160@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1B5E1916C()
{
  v2 = *(v0 - 320);

  return sub_1B5DF3FB8(v2);
}

uint64_t sub_1B5E19184@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_1B5E191A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t Attachment.init(contentType:fileName:contentDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Attachment();
  v13 = (a6 + *(v12 + 20));
  v14 = (a6 + *(v12 + 24));
  v15 = sub_1B5EA4DF0();
  sub_1B5DF5EB8(v15);
  result = (*(v16 + 32))(a6, a1);
  *v13 = a2;
  v13[1] = a3;
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t type metadata accessor for Attachment()
{
  result = qword_1ED7D2978;
  if (!qword_1ED7D2978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Attachment.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5EA4DF0();
  v4 = sub_1B5DF5EB8(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Attachment.contentType.setter()
{
  sub_1B5E1A084();
  v2 = sub_1B5EA4DF0();
  v3 = sub_1B5DF5EB8(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Attachment.fileName.getter()
{
  v1 = (v0 + *(type metadata accessor for Attachment() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Attachment.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Attachment() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Attachment.fileName.modify())(void)
{
  sub_1B5E1A084();
  v0 = *(type metadata accessor for Attachment() + 20);
  return nullsub_1;
}

uint64_t Attachment.contentDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for Attachment() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Attachment.contentDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Attachment() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Attachment.contentDescription.modify())(void)
{
  sub_1B5E1A084();
  v0 = *(type metadata accessor for Attachment() + 24);
  return nullsub_1;
}

uint64_t sub_1B5E19510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001B5EA8C10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B5E1962C(char a1)
{
  if (!a1)
  {
    return 0x54746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0x656D614E656C6966;
  }

  return 0xD000000000000012;
}

uint64_t sub_1B5E19698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E19510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E196C0(uint64_t a1)
{
  v2 = sub_1B5E19908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E196FC(uint64_t a1)
{
  v2 = sub_1B5E19908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Attachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E270, &qword_1B5EB3678);
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E19908();
  sub_1B5EA6040();
  v22[15] = 0;
  sub_1B5EA4DF0();
  sub_1B5E19CB0(&qword_1EB90D1A0);
  sub_1B5EA5EA0();
  if (!v2)
  {
    v14 = type metadata accessor for Attachment();
    v15 = (v3 + *(v14 + 20));
    v16 = *v15;
    v17 = v15[1];
    v22[14] = 1;
    sub_1B5EA5E10();
    v18 = (v3 + *(v14 + 24));
    v19 = *v18;
    v20 = v18[1];
    v22[13] = 2;
    sub_1B5EA5E10();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1B5E19908()
{
  result = qword_1EB90D8E0;
  if (!qword_1EB90D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8E0);
  }

  return result;
}

uint64_t Attachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1B5EA4DF0();
  v5 = sub_1B5DF5DA8(v4);
  v42 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B5DF33E0(&qword_1EB90E278, &qword_1B5EB3680);
  v10 = sub_1B5DF5DA8(v44);
  v41 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Attachment();
  v17 = sub_1B5DF5EB8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E19908();
  sub_1B5EA6030();
  if (v2)
  {
    return sub_1B5DF3FB8(a1);
  }

  v38 = v16;
  v39 = v21;
  v24 = v41;
  v23 = v42;
  v47 = 0;
  sub_1B5E19CB0(&qword_1EB90D198);
  v25 = v43;
  v26 = v44;
  sub_1B5EA5DC0();
  (*(v23 + 32))(v39, v25, v4);
  v46 = 1;
  v27 = sub_1B5EA5D30();
  v28 = &v39[*(v38 + 20)];
  *v28 = v27;
  v28[1] = v29;
  v45 = 2;
  v30 = sub_1B5EA5D30();
  v31 = v39;
  v32 = &v39[*(v38 + 24)];
  v33 = v15;
  v35 = v34;
  (*(v24 + 8))(v33, v26);
  *v32 = v30;
  v32[1] = v35;
  sub_1B5E19CF4(v31, v40);
  sub_1B5DF3FB8(a1);
  return sub_1B5E19D58(v31);
}

uint64_t sub_1B5E19CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B5EA4DF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E19CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E19D58(uint64_t a1)
{
  v2 = type metadata accessor for Attachment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B5E19E0C()
{
  sub_1B5EA4DF0();
  if (v0 <= 0x3F)
  {
    sub_1B5DFD5E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Attachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E19F70()
{
  result = qword_1EB90E280;
  if (!qword_1EB90E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E280);
  }

  return result;
}

unint64_t sub_1B5E19FC8()
{
  result = qword_1EB90D8D0;
  if (!qword_1EB90D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8D0);
  }

  return result;
}

unint64_t sub_1B5E1A020()
{
  result = qword_1EB90D8D8;
  if (!qword_1EB90D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8D8);
  }

  return result;
}

uint64_t sub_1B5E1A090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B5E1A19C(char a1)
{
  if (!a1)
  {
    return 0x6C69616D65;
  }

  if (a1 == 1)
  {
    return 0x6D754E656E6F6870;
  }

  return 0x726568746FLL;
}

uint64_t sub_1B5E1A200(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E1A290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1A090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E1A2B8(uint64_t a1)
{
  v2 = sub_1B5E1A828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1A2F4(uint64_t a1)
{
  v2 = sub_1B5E1A828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E1A334(uint64_t a1)
{
  v2 = sub_1B5E1A924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1A370(uint64_t a1)
{
  v2 = sub_1B5E1A924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E1A3AC(uint64_t a1)
{
  v2 = sub_1B5E1A87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1A3E8(uint64_t a1)
{
  v2 = sub_1B5E1A87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E1A424(uint64_t a1)
{
  v2 = sub_1B5E1A8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1A460(uint64_t a1)
{
  v2 = sub_1B5E1A8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Handle.Kind.encode(to:)()
{
  sub_1B5DF7168();
  v54 = v1;
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90E288, &qword_1B5EB3820);
  v5 = sub_1B5DF5DA8(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v43 - v10;
  v11 = sub_1B5DF33E0(&qword_1EB90E290, &qword_1B5EB3828);
  v12 = sub_1B5DF5DA8(v11);
  v46 = v13;
  v47 = v12;
  v15 = *(v14 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = sub_1B5DF33E0(&qword_1EB90E298, &qword_1B5EB3830);
  v20 = sub_1B5DF5DA8(v19);
  v44 = v21;
  v45 = v20;
  v23 = *(v22 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v53 = sub_1B5DF33E0(&qword_1EB90E2A0, &qword_1B5EB3838);
  sub_1B5DF5DA8(v53);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  v34 = v0[1];
  v51 = *v0;
  v52 = v34;
  v35 = *(v0 + 16);
  v36 = v3[4];
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5E1A828();
  sub_1B5EA6040();
  v37 = (v28 + 8);
  if (v35)
  {
    if (v35 == 1)
    {
      sub_1B5E1A8D0();
      sub_1B5E1C568();
      v38 = v47;
      sub_1B5EA5E50();
      (*(v46 + 8))(v18, v38);
    }

    else
    {
      sub_1B5E1A87C();
      v41 = v48;
      sub_1B5E1C568();
      v42 = v50;
      sub_1B5EA5E50();
      (*(v49 + 8))(v41, v42);
    }

    (*v37)(v33, v26);
  }

  else
  {
    sub_1B5E1A924();
    v39 = v53;
    sub_1B5EA5E00();
    v40 = v45;
    sub_1B5EA5E50();
    (*(v44 + 8))(v26, v40);
    (*v37)(v33, v39);
  }

  sub_1B5DF7180();
}

unint64_t sub_1B5E1A828()
{
  result = qword_1EB90D260;
  if (!qword_1EB90D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D260);
  }

  return result;
}

unint64_t sub_1B5E1A87C()
{
  result = qword_1EB90E2A8;
  if (!qword_1EB90E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2A8);
  }

  return result;
}

unint64_t sub_1B5E1A8D0()
{
  result = qword_1EB90D220;
  if (!qword_1EB90D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D220);
  }

  return result;
}

unint64_t sub_1B5E1A924()
{
  result = qword_1EB90D248;
  if (!qword_1EB90D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D248);
  }

  return result;
}

void Handle.Kind.init(from:)()
{
  sub_1B5DF7168();
  v77 = v0;
  v2 = v1;
  v74 = v3;
  v70 = sub_1B5DF33E0(&qword_1EB90E2B0, &qword_1B5EB3840);
  sub_1B5DF5DA8(v70);
  v73 = v4;
  v6 = *(v5 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v66 - v8;
  v9 = sub_1B5DF33E0(&qword_1EB90E2B8, &qword_1B5EB3848);
  v71 = sub_1B5DF5DA8(v9);
  v72 = v10;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1B5DF33E0(&qword_1EB90E2C0, &qword_1B5EB3850);
  sub_1B5DF5DA8(v14);
  v69 = v15;
  v17 = *(v16 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  v21 = sub_1B5DF33E0(&qword_1EB90E2C8, &unk_1B5EB3858);
  sub_1B5DF5DA8(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v30 = v2[3];
  v29 = v2[4];
  v76 = v2;
  sub_1B5DF3BFC(v2, v30);
  sub_1B5E1A828();
  v31 = v77;
  sub_1B5EA6030();
  if (v31)
  {
    goto LABEL_10;
  }

  v66 = v20;
  v67 = 0;
  v68 = v23;
  v77 = v28;
  v32 = sub_1B5EA5DE0();
  sub_1B5DFA434(v32, 0);
  v36 = v21;
  if (v34 == v35 >> 1)
  {
LABEL_9:
    v43 = sub_1B5EA5BF0();
    swift_allocError();
    v45 = v44;
    v46 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
    *v45 = &type metadata for Handle.Kind;
    v47 = v77;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v47, v36);
LABEL_10:
    v48 = v76;
    goto LABEL_11;
  }

  if (v34 < (v35 >> 1))
  {
    v37 = *(v33 + v34);
    sub_1B5DFA42C(v34 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 == v41 >> 1)
    {
      if (v37)
      {
        v78 = v37;
        if (v37 == 1)
        {
          sub_1B5E1A8D0();
          sub_1B5E1C548();
          v42 = v74;
          v51 = sub_1B5EA5D70();
          v55 = v54;
          v67 = v51;
          swift_unknownObjectRelease();
          v56 = sub_1B5E1C534();
          v57(v56);
          v58 = v76;
          v59 = v68;
        }

        else
        {
          sub_1B5E1A87C();
          sub_1B5E1C548();
          v58 = v76;
          v42 = v74;
          v53 = sub_1B5EA5D70();
          v59 = v68;
          v55 = v63;
          v67 = v53;
          swift_unknownObjectRelease();
          v64 = sub_1B5E1C514();
          v65(v64);
        }

        goto LABEL_17;
      }

      sub_1B5E1A924();
      v49 = v67;
      v50 = v77;
      sub_1B5EA5D10();
      if (!v49)
      {
        v52 = sub_1B5EA5D70();
        v58 = v76;
        v59 = v68;
        v55 = v60;
        v67 = v52;
        v78 = 0;
        swift_unknownObjectRelease();
        v61 = sub_1B5E1C514();
        v62(v61);
        v42 = v74;
LABEL_17:
        (*(v59 + 8))(v77, v21);
        *v42 = v67;
        *(v42 + 8) = v55;
        *(v42 + 16) = v78;
        sub_1B5DF3FB8(v58);
        goto LABEL_12;
      }

      (*(v68 + 8))(v50, v21);
      swift_unknownObjectRelease();
      v48 = v76;
LABEL_11:
      sub_1B5DF3FB8(v48);
LABEL_12:
      sub_1B5DF7180();
      return;
    }

    v36 = v21;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t Handle.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Handle.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Handle.handleKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1B5E1BA48(v2, v3, v4);
}

uint64_t Handle.handleKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B5E1BA74(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t Handle.contactID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Handle.contactID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Handle.init(name:handleKind:contactID:isOwner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = sub_1B5E1BA74(0, 0, 0xFFu);
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = v13;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_1B5E1B254(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x694B656C646E6168 && a2 == 0xEA0000000000646ELL;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72656E774F7369 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B5EA5F00();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B5E1B3BC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x694B656C646E6168;
      break;
    case 2:
      result = 0x49746361746E6F63;
      break;
    case 3:
      result = 0x72656E774F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E1B440(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E1B494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1B254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E1B4BC(uint64_t a1)
{
  v2 = sub_1B5E1BAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1B4F8(uint64_t a1)
{
  v2 = sub_1B5E1BAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Handle.encode(to:)()
{
  sub_1B5DF7168();
  v23 = v1;
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90E2D0, &qword_1B5EB3868);
  sub_1B5DF5DA8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v21 = v0[3];
  v22 = v14;
  v27 = *(v0 + 32);
  v15 = v0[5];
  v19 = v0[6];
  v20 = v15;
  v18[3] = *(v0 + 56);
  v16 = v3[4];
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5E1BAA0();
  sub_1B5EA6040();
  LOBYTE(v24) = 0;
  v17 = v23;
  sub_1B5EA5E10();
  if (!v17)
  {
    v24 = v22;
    v25 = v21;
    v26 = v27;
    sub_1B5E1BA48(v22, v21, v27);
    sub_1B5E1BAF4();
    sub_1B5EA5E40();
    sub_1B5E1BA74(v24, v25, v26);
    LOBYTE(v24) = 2;
    sub_1B5EA5E10();
    LOBYTE(v24) = 3;
    sub_1B5EA5E60();
  }

  (*(v6 + 8))(v11, v4);
  sub_1B5DF7180();
}

void Handle.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E2D8, &qword_1B5EB3870);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1B5DF3BFC(v2, v2[3]);
  sub_1B5E1BAA0();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v2);

    sub_1B5E1BA74(0, 0, 0xFFu);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1B5E1C524();
    v10 = sub_1B5EA5D30();
    v25 = v11;
    LOBYTE(v26) = 1;
    sub_1B5E1BB48();
    sub_1B5EA5D60();
    v22 = v10;
    v23 = v4;
    v12 = v30;
    v24 = v29;
    v13 = v31;
    sub_1B5E1BA74(0, 0, 0xFFu);
    LOBYTE(v29) = 2;
    sub_1B5E1C524();
    v14 = sub_1B5EA5D30();
    v16 = v15;
    v21 = v14;
    sub_1B5E1C524();
    v17 = sub_1B5EA5D80();
    v18 = sub_1B5E1C4F0();
    v19(v18);
    *&v26 = v22;
    *(&v26 + 1) = v25;
    *&v27 = v24;
    *(&v27 + 1) = v12;
    v28[0] = v13;
    *&v28[8] = v21;
    *&v28[16] = v16;
    v28[24] = v17 & 1;
    v20 = v27;
    *v23 = v26;
    v23[1] = v20;
    v23[2] = *v28;
    *(v23 + 41) = *&v28[9];
    sub_1B5E066DC(&v26, &v29);
    sub_1B5DF3FB8(v2);
    v29 = v22;
    v30 = v25;
    v31 = v24;
    v32 = v12;
    v33 = v13;
    v34 = v21;
    v35 = v16;
    v36 = v17 & 1;
    sub_1B5E06738(&v29);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5E1BA48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B5E1BA5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B5E1BA5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B5E1BA74(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B5E1BA88(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B5E1BA88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B5E1BAA0()
{
  result = qword_1EB90D278;
  if (!qword_1EB90D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D278);
  }

  return result;
}

unint64_t sub_1B5E1BAF4()
{
  result = qword_1EB90CE68;
  if (!qword_1EB90CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE68);
  }

  return result;
}

unint64_t sub_1B5E1BB48()
{
  result = qword_1EB90CE60;
  if (!qword_1EB90CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE60);
  }

  return result;
}

__n128 sub_1B5E1BB9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B5E1BBB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B5E1BC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1B5E1BC80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5E1BC94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B5E1BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Handle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Handle.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B5E1BF08(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B5E1BFB8()
{
  result = qword_1EB90E2E0;
  if (!qword_1EB90E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2E0);
  }

  return result;
}

unint64_t sub_1B5E1C010()
{
  result = qword_1EB90E2E8;
  if (!qword_1EB90E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2E8);
  }

  return result;
}

unint64_t sub_1B5E1C068()
{
  result = qword_1EB90E2F0;
  if (!qword_1EB90E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2F0);
  }

  return result;
}

unint64_t sub_1B5E1C0C0()
{
  result = qword_1EB90E2F8;
  if (!qword_1EB90E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2F8);
  }

  return result;
}

unint64_t sub_1B5E1C118()
{
  result = qword_1EB90E300;
  if (!qword_1EB90E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E300);
  }

  return result;
}

unint64_t sub_1B5E1C170()
{
  result = qword_1EB90D268;
  if (!qword_1EB90D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D268);
  }

  return result;
}

unint64_t sub_1B5E1C1C8()
{
  result = qword_1EB90D270;
  if (!qword_1EB90D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D270);
  }

  return result;
}

unint64_t sub_1B5E1C220()
{
  result = qword_1EB90D238;
  if (!qword_1EB90D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D238);
  }

  return result;
}

unint64_t sub_1B5E1C278()
{
  result = qword_1EB90D240;
  if (!qword_1EB90D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D240);
  }

  return result;
}

unint64_t sub_1B5E1C2D0()
{
  result = qword_1EB90D210;
  if (!qword_1EB90D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D210);
  }

  return result;
}

unint64_t sub_1B5E1C328()
{
  result = qword_1EB90D218;
  if (!qword_1EB90D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D218);
  }

  return result;
}

unint64_t sub_1B5E1C380()
{
  result = qword_1EB90D228;
  if (!qword_1EB90D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D228);
  }

  return result;
}

unint64_t sub_1B5E1C3D8()
{
  result = qword_1EB90D230;
  if (!qword_1EB90D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D230);
  }

  return result;
}

unint64_t sub_1B5E1C430()
{
  result = qword_1EB90D250;
  if (!qword_1EB90D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D250);
  }

  return result;
}

unint64_t sub_1B5E1C488()
{
  result = qword_1EB90D258;
  if (!qword_1EB90D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D258);
  }

  return result;
}

uint64_t sub_1B5E1C548()
{
  v2 = *(v0 - 168);

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E1C568()
{
  v2 = *(v0 - 96);

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E1C590(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796C706572 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E1C61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1C590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E1C648(uint64_t a1)
{
  v2 = sub_1B5E1C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1C684(uint64_t a1)
{
  v2 = sub_1B5E1C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E1C6C0(uint64_t a1)
{
  v2 = sub_1B5E1C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1C6FC(uint64_t a1)
{
  v2 = sub_1B5E1C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SuggestedAction.encode(to:)(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90E308, &qword_1B5EB4000);
  sub_1B5DF5DA8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1B5DF33E0(&qword_1EB90E310, &qword_1B5EB4008);
  sub_1B5DF5DA8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1C8F0();
  sub_1B5EA6040();
  sub_1B5E1C944();
  sub_1B5EA5E00();
  (*(v4 + 8))(v9, v2);
  return (*(v12 + 8))(v17, v10);
}

unint64_t sub_1B5E1C8F0()
{
  result = qword_1EB90E318;
  if (!qword_1EB90E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E318);
  }

  return result;
}

unint64_t sub_1B5E1C944()
{
  result = qword_1EB90E320;
  if (!qword_1EB90E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E320);
  }

  return result;
}

uint64_t SuggestedAction.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

void SuggestedAction.init(from:)(uint64_t *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E328, &qword_1B5EB4010);
  sub_1B5DF5DA8(v3);
  v43 = v4;
  v6 = *(v5 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1B5DF33E0(&qword_1EB90E330, &qword_1B5EB4018);
  sub_1B5DF5DA8(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1C8F0();
  sub_1B5EA6030();
  if (v1)
  {
    goto LABEL_9;
  }

  v41 = v9;
  v42 = a1;
  v18 = sub_1B5EA5DE0();
  sub_1B5DF9704(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v43 = v19;
LABEL_8:
    v33 = v10;
    v34 = v44;
    v35 = sub_1B5EA5BF0();
    swift_allocError();
    v37 = v36;
    v38 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
    *v37 = &type metadata for SuggestedAction;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v22, v33);
    a1 = v42;
LABEL_9:
    v39 = a1;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_1B5DFA42C(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v42;
    v30 = v43;
    if (v28)
    {
      sub_1B5E1C944();
      v31 = v41;
      sub_1B5EA5D10();
      v32 = v44;
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v32 + 8))(v22, v10);
      v39 = v29;
LABEL_10:
      sub_1B5DF3FB8(v39);
      return;
    }

    v43 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_1B5E1CDF4()
{
  result = qword_1EB90E338;
  if (!qword_1EB90E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E338);
  }

  return result;
}

_BYTE *sub_1B5E1CE58(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B5E1CF18()
{
  result = qword_1EB90E340;
  if (!qword_1EB90E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E340);
  }

  return result;
}

unint64_t sub_1B5E1CF70()
{
  result = qword_1EB90E348;
  if (!qword_1EB90E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E348);
  }

  return result;
}

unint64_t sub_1B5E1CFC8()
{
  result = qword_1EB90E350;
  if (!qword_1EB90E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E350);
  }

  return result;
}

unint64_t sub_1B5E1D020()
{
  result = qword_1EB90E358;
  if (!qword_1EB90E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E358);
  }

  return result;
}

unint64_t sub_1B5E1D078()
{
  result = qword_1EB90E360;
  if (!qword_1EB90E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E360);
  }

  return result;
}

uint64_t type metadata accessor for Summary()
{
  result = qword_1ED7D2118;
  if (!qword_1ED7D2118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Summary.visualConcepts.getter()
{
  v1 = *(v0 + *(type metadata accessor for Summary() + 28));
}

uint64_t Summary.visualConcepts.setter()
{
  v2 = *(sub_1B5E1F374() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Summary.suggestedActions.getter()
{
  v1 = *(v0 + *(type metadata accessor for Summary() + 36));
}

uint64_t Summary.suggestedActions.setter()
{
  v2 = *(sub_1B5E1F374() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Summary.safetyClassification.getter()
{
  result = sub_1B5E1F3E4();
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t Summary.safetyClassification.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Summary();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_1B5E1D5BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1B5E1D644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:safetyClassification:inferenceEnvironmentInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = *a7;
  v10 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v10);
  v14 = type metadata accessor for Summary();
  v15 = v14[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v10);
  v19 = v14[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v20, v21, v22, v10);
  v23 = v14[7];
  v24 = v14[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v25, v26, v27, v10);
  v28 = v14[10];
  *(a9 + v28) = 2;
  v29 = v14[11];
  type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v33);
  sub_1B5E1F4A0(a1, a9);
  sub_1B5E1F4A0(a2, a9 + v15);
  sub_1B5E1F4A0(a3, a9 + v19);
  *(a9 + v23) = a4;
  sub_1B5E1F4A0(a5, a9 + v24);
  *(a9 + v14[9]) = a6;
  *(a9 + v28) = v40;
  return sub_1B5E1D644(a8, a9 + v29, &qword_1EB90D990, &qword_1B5EAE990);
}

uint64_t sub_1B5E1D82C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E694C706F74 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F436C6175736976 && a2 == 0xEE0073747065636ELL;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F546C6175736976 && a2 == 0xED0000656E694C70;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001B5EA8C30 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001B5EA8C50 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000018 && 0x80000001B5EA7840 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E1DAB8(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      result = 0x656E694C706F74;
      break;
    case 2:
      result = 0x736973706F6E7973;
      break;
    case 3:
      result = 0x6F436C6175736976;
      break;
    case 4:
      result = 0x6F546C6175736976;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E1DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1D82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E1DBF4(uint64_t a1)
{
  v2 = sub_1B5E1DFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1DC30(uint64_t a1)
{
  v2 = sub_1B5E1DFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Summary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E370, &qword_1B5EB42C8);
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1DFC0();
  sub_1B5EA6040();
  LOBYTE(v26) = 0;
  sub_1B5EA4190();
  sub_1B5E1F2F4();
  sub_1B5E1E9E4(v14, v15);
  sub_1B5E1F368();
  sub_1B5EA5E40();
  if (!v2)
  {
    v16 = type metadata accessor for Summary();
    v17 = v16[5];
    sub_1B5E1F30C();
    v18 = v16[6];
    sub_1B5E1F30C();
    v26 = *(v3 + v16[7]);
    v25 = 3;
    sub_1B5DF33E0(&qword_1EB90E378, &qword_1B5EB42D0);
    sub_1B5E1E8B0(&qword_1EB90CE20, &qword_1EB90D1C8);
    sub_1B5E1F354();
    sub_1B5EA5E40();
    v19 = v16[8];
    sub_1B5E1F30C();
    v26 = *(v3 + v16[9]);
    v25 = 5;
    sub_1B5DF33E0(&qword_1EB90E380, &qword_1B5EB42D8);
    sub_1B5E1E014(&qword_1EB90CDD0, sub_1B5E1E08C);
    sub_1B5E1F354();
    sub_1B5EA5EA0();
    LOBYTE(v26) = *(v3 + v16[10]);
    v25 = 6;
    sub_1B5E1E0E0();
    sub_1B5EA5E40();
    v20 = v16[11];
    LOBYTE(v26) = 7;
    type metadata accessor for InferenceEnvironmentInfo();
    sub_1B5E1F33C();
    sub_1B5E1E9E4(v21, v22);
    sub_1B5E1F354();
    sub_1B5EA5E40();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1B5E1DFC0()
{
  result = qword_1EB90D208;
  if (!qword_1EB90D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D208);
  }

  return result;
}

uint64_t sub_1B5E1E014(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E380, &qword_1B5EB42D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E1E08C()
{
  result = qword_1EB90D0E0;
  if (!qword_1EB90D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0E0);
  }

  return result;
}

unint64_t sub_1B5E1E0E0()
{
  result = qword_1EB90CEF8;
  if (!qword_1EB90CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CEF8);
  }

  return result;
}

uint64_t Summary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = v65 - v5;
  v6 = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v69 = v65 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v65 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v70 = v65 - v15;
  v16 = sub_1B5DF33E0(&qword_1EB90E388, &qword_1B5EB42E0);
  v17 = sub_1B5DF5DA8(v16);
  v71 = v18;
  v72 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v65 - v21;
  v23 = type metadata accessor for Summary();
  v24 = sub_1B5DF5EB8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v29);
  v76 = v23[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v33, v34, v35, v29);
  v80 = v23[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v36, v37, v38, v29);
  v77 = v23[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v39, v40, v41, v29);
  v42 = v23[10];
  v28[v42] = 2;
  v73 = v23;
  v43 = v23[11];
  v44 = type metadata accessor for InferenceEnvironmentInfo();
  v78 = v43;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v45, v46, v47, v44);
  v48 = a1[3];
  v49 = a1[4];
  v79 = a1;
  sub_1B5DF3BFC(a1, v48);
  sub_1B5E1DFC0();
  v74 = v22;
  v50 = v75;
  sub_1B5EA6030();
  if (v50)
  {
    v54 = v76;
    v55 = v77;
    sub_1B5DF3FB8(v79);
    sub_1B5E1F470(v28);
    sub_1B5E1F470(&v28[v54]);
    sub_1B5E1F470(&v28[v80]);

    sub_1B5E1F470(&v28[v55]);
    return sub_1B5DF4428(&v28[v78], &qword_1EB90D990, &qword_1B5EAE990);
  }

  else
  {
    v75 = v42;
    v65[1] = v44;
    LOBYTE(v82) = 0;
    sub_1B5E1F2F4();
    sub_1B5E1E9E4(v51, v52);
    v53 = v70;
    sub_1B5E1F368();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    sub_1B5E1D644(v53, v28, &qword_1EB90E368, &qword_1B5EB42C0);
    LOBYTE(v82) = 1;
    sub_1B5E1F368();
    sub_1B5EA5D60();
    sub_1B5E1D644(v14, &v28[v76], &qword_1EB90E368, &qword_1B5EB42C0);
    LOBYTE(v82) = 2;
    v56 = v69;
    sub_1B5E1F368();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v57 = v77;
    sub_1B5E1D644(v56, &v28[v80], &qword_1EB90E368, &qword_1B5EB42C0);
    sub_1B5DF33E0(&qword_1EB90E378, &qword_1B5EB42D0);
    v81 = 3;
    sub_1B5E1E8B0(&qword_1EB90CE18, &qword_1EB90D1C0);
    sub_1B5E1F3FC();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    *&v28[v73[7]] = v82;
    LOBYTE(v82) = 4;
    v58 = v68;
    sub_1B5E1F368();
    sub_1B5EA5D60();
    sub_1B5E1D644(v58, &v28[v57], &qword_1EB90E368, &qword_1B5EB42C0);
    sub_1B5DF33E0(&qword_1EB90E380, &qword_1B5EB42D8);
    v81 = 5;
    sub_1B5E1E014(&qword_1EB90CDC8, sub_1B5E1E93C);
    sub_1B5E1F3FC();
    sub_1B5E1F38C();
    sub_1B5EA5DC0();
    *&v28[v73[9]] = v82;
    v81 = 6;
    sub_1B5E1E990();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v28[v75] = v82;
    LOBYTE(v82) = 7;
    sub_1B5E1F33C();
    sub_1B5E1E9E4(v59, v60);
    v61 = v67;
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v62 = sub_1B5E1F398();
    v63(v62);
    sub_1B5E1D644(v61, &v28[v78], &qword_1EB90D990, &qword_1B5EAE990);
    sub_1B5E1EA2C(v28, v66);
    sub_1B5DF3FB8(v79);
    return sub_1B5E1EA90(v28);
  }
}

uint64_t sub_1B5E1E8B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E378, &qword_1B5EB42D0);
    sub_1B5E1F2F4();
    sub_1B5E1E9E4(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E1E93C()
{
  result = qword_1EB90D0D8;
  if (!qword_1EB90D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0D8);
  }

  return result;
}

unint64_t sub_1B5E1E990()
{
  result = qword_1EB90D280;
  if (!qword_1EB90D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D280);
  }

  return result;
}

uint64_t sub_1B5E1E9E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E1EA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Summary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E1EA90(uint64_t a1)
{
  v2 = type metadata accessor for Summary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:safetyClassification:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  HIDWORD(v44) = *a7;
  v11 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v12, v13, v14, v11);
  v15 = type metadata accessor for Summary();
  v16 = v15[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v17, v18, v19, v11);
  v20 = v15[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v21, v22, v23, v11);
  v24 = v15[7];
  v25 = v15[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v26, v27, v28, v11);
  sub_1B5E1F3C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v29, v30, v31, v32);
  sub_1B5E1F3A8(a1, a8);
  sub_1B5E1F3A8(a2, a8 + v16);
  sub_1B5E1F3A8(a3, a8 + v20);
  v33 = sub_1B5E1F3A8(a5, a8 + v25);
  sub_1B5E1F424(v33, v34, v35, v36, v37, v38, v39, v40, a2, a3, a5, v44, a4, a6);
  *(a8 + v8) = v45;
}

uint64_t Summary.init(topic:topLine:synopsis:suggestedActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v7, v8, v9, v6);
  v10 = type metadata accessor for Summary();
  v11 = v10[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v12, v13, v14, v6);
  v15 = v10[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v6);
  v20 = v10[7];
  v19 = v10[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v21, v22, v23, v6);
  v24 = v10[10];
  *(a5 + v24) = 2;
  v25 = v10[11];
  type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v26, v27, v28, v29);
  sub_1B5E1D644(a1, a5, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5E1D644(a2, a5 + v11, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5E1D644(a3, a5 + v15, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5DF4428(a5 + v19, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5DF5DF0();
  result = sub_1B5DF3658(v30, v31, v32, v6);
  *(a5 + v20) = 0;
  *(a5 + v10[9]) = a4;
  *(a5 + v24) = 2;
  return result;
}

void Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v10);
  v14 = type metadata accessor for Summary();
  v15 = v14[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v10);
  v19 = v14[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v20, v21, v22, v10);
  v23 = v14[7];
  v24 = v14[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v25, v26, v27, v10);
  sub_1B5E1F3C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v28, v29, v30, v31);
  sub_1B5E1F3A8(a1, a7);
  sub_1B5E1F3A8(a2, a7 + v15);
  sub_1B5E1F3A8(a3, a7 + v19);
  v32 = sub_1B5E1F3A8(a5, a7 + v24);
  sub_1B5E1F424(v32, v33, v34, v35, v36, v37, v38, v39, v40, a2, a3, a5, a4, a6);
  *(a7 + v7) = 2;
}

uint64_t sub_1B5E1EEE4()
{
  sub_1B5E1F0BC(319, &qword_1ED7D29B0, MEMORY[0x1E6968848]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B5E1F058();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1B5E07014(319, &qword_1ED7D2020, &type metadata for SuggestedAction, MEMORY[0x1E69E62F8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1B5E07014(319, qword_1ED7D2BA8, &type metadata for SummarySafetyClassification, MEMORY[0x1E69E6720]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1B5E1F0BC(319, qword_1ED7D2C08, type metadata accessor for InferenceEnvironmentInfo);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1B5E1F058()
{
  if (!qword_1ED7D2038)
  {
    sub_1B5DFD694(&qword_1EB90E378, &qword_1B5EB42D0);
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2038);
    }
  }
}

void sub_1B5E1F0BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B5EA5AD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Summary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E1F1F0()
{
  result = qword_1EB90E390;
  if (!qword_1EB90E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E390);
  }

  return result;
}

unint64_t sub_1B5E1F248()
{
  result = qword_1EB90D1F8;
  if (!qword_1EB90D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D1F8);
  }

  return result;
}

unint64_t sub_1B5E1F2A0()
{
  result = qword_1EB90D200;
  if (!qword_1EB90D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D200);
  }

  return result;
}

uint64_t sub_1B5E1F30C()
{
  *(v1 - 72) = v0;

  return sub_1B5EA5E40();
}

uint64_t sub_1B5E1F374()
{

  return type metadata accessor for Summary();
}

uint64_t sub_1B5E1F398()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 160);
  return result;
}

uint64_t sub_1B5E1F3A8(uint64_t a1, uint64_t a2)
{

  return sub_1B5E1D644(a1, a2, v2, v3);
}

uint64_t sub_1B5E1F3C0()
{
  *(v0 + *(v1 + 40)) = 2;
  v3 = *(v1 + 44);

  return type metadata accessor for InferenceEnvironmentInfo();
}

uint64_t sub_1B5E1F3E4()
{

  return type metadata accessor for Summary();
}

uint64_t sub_1B5E1F438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B5DF33E0(a3, a4);
}

uint64_t sub_1B5E1F458@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1B5E1D644(v3, v4 + a3, a1, a2);
}

uint64_t sub_1B5E1F470(uint64_t a1)
{

  return sub_1B5DF4428(a1, v1, v2);
}

uint64_t sub_1B5E1F488@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1B5E1D5BC(v4 + a3, v3, a1, a2);
}

uint64_t sub_1B5E1F4A0(uint64_t a1, uint64_t a2)
{

  return sub_1B5E1D644(a1, a2, v3, v2);
}

uint64_t sub_1B5E1F4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656661537369 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E1F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1F4C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E1F580(uint64_t a1)
{
  v2 = sub_1B5E1F720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1F5BC(uint64_t a1)
{
  v2 = sub_1B5E1F720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarySafetyClassification.encode(to:)(void *a1)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E398, &qword_1B5EB44A0);
  v5 = sub_1B5E1FC14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1F720();
  sub_1B5EA6040();
  sub_1B5EA5E60();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1B5E1F720()
{
  result = qword_1ED7D1F40;
  if (!qword_1ED7D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F40);
  }

  return result;
}

uint64_t SummarySafetyClassification.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = sub_1B5DF33E0(&qword_1EB90E3A0, &qword_1B5EB44A8);
  v7 = sub_1B5E1FC14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1F720();
  sub_1B5EA6030();
  if (!v2)
  {
    v15 = sub_1B5EA5D80();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return sub_1B5DF3FB8(a1);
}

uint64_t getEnumTagSinglePayload for SummarySafetyClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarySafetyClassification(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummarySafetyClassification.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B5E1FB10()
{
  result = qword_1EB90E3A8;
  if (!qword_1EB90E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E3A8);
  }

  return result;
}

unint64_t sub_1B5E1FB68()
{
  result = qword_1ED7D1F30;
  if (!qword_1ED7D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F30);
  }

  return result;
}

unint64_t sub_1B5E1FBC0()
{
  result = qword_1ED7D1F38;
  if (!qword_1ED7D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F38);
  }

  return result;
}

uint64_t sub_1B5E1FCA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v3, a2);
  sub_1B5DFD794(v3, a2);
  sub_1B5EA4E20();
  return sub_1B5EA5390();
}

uint64_t sub_1B5E1FD34()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90D180);
  sub_1B5DFD794(v0, qword_1EB90D180);
  sub_1B5EA4E20();
  return sub_1B5EA5390();
}

uint64_t sub_1B5E1FDC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B5EA53B0();
  v6 = sub_1B5DFD794(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_1B5E1FE5C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

BOOL related decl e for ClassificationClientError.isDataValidationMissingRequiredDataErrorCode.getter()
{
  type metadata accessor for ClassificationClientError(0);
  sub_1B5E1FF38();
  sub_1B5E2000C();
  if (v1 < 4000)
  {
    return 0;
  }

  sub_1B5E2000C();
  return v1 < 4200;
}

unint64_t sub_1B5E1FF38()
{
  result = qword_1EB90DA50;
  if (!qword_1EB90DA50)
  {
    type metadata accessor for ClassificationClientError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA50);
  }

  return result;
}

BOOL related decl e for ClassificationClientError.isDataValidationInvalidInputErrorCode.getter()
{
  type metadata accessor for ClassificationClientError(0);
  sub_1B5E1FF38();
  sub_1B5E2000C();
  if (v1 < 5000)
  {
    return 0;
  }

  sub_1B5E2000C();
  return v1 < 5200;
}

uint64_t sub_1B5E2000C()
{

  return sub_1B5EA41E0();
}

uint64_t ClassificationXPCRequest.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E200E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B5E26258() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5E26258();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E20184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726177657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B5EA7470 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B5EA7490 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001B5EA74B0 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001B5EA74D0 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001B5EA74F0 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x80000001B5EA7510 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000014 && 0x80000001B5EA8D30 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E203FC(char a1)
{
  result = 0x6D726177657270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E2050C(uint64_t a1)
{
  v2 = sub_1B5E21B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20548(uint64_t a1)
{
  v2 = sub_1B5E21B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20584(uint64_t a1)
{
  v2 = sub_1B5E2198C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E205C0(uint64_t a1)
{
  v2 = sub_1B5E2198C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E205FC(uint64_t a1)
{
  v2 = sub_1B5E21A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20638(uint64_t a1)
{
  v2 = sub_1B5E21A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20674(uint64_t a1)
{
  v2 = sub_1B5E21938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E206B0(uint64_t a1)
{
  v2 = sub_1B5E21938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E206EC(uint64_t a1)
{
  v2 = sub_1B5E219E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20728(uint64_t a1)
{
  v2 = sub_1B5E219E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20764(uint64_t a1)
{
  v2 = sub_1B5E218E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E207A0(uint64_t a1)
{
  v2 = sub_1B5E218E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E207E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E20184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E2080C(uint64_t a1)
{
  v2 = sub_1B5E217D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20848(uint64_t a1)
{
  v2 = sub_1B5E217D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20884(uint64_t a1)
{
  v2 = sub_1B5E21BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E208C0(uint64_t a1)
{
  v2 = sub_1B5E21BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E208FC(uint64_t a1)
{
  v2 = sub_1B5E21890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20938(uint64_t a1)
{
  v2 = sub_1B5E21890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCRequest.Request.encode(to:)(void *a1)
{
  v164 = sub_1B5DF33E0(&qword_1EB90E3B0, &qword_1B5EB4740);
  sub_1B5DF5DA8(v164);
  v162 = v3;
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFA50C();
  sub_1B5E26144(v7);
  v8 = sub_1B5DF33E0(&qword_1EB90E3B8, &qword_1B5EB4748);
  v9 = sub_1B5DF5DA8(v8);
  v168 = v10;
  v169 = v9;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFA50C();
  v167 = v14;
  v15 = sub_1B5DF33E0(&qword_1EB90E3C0, &qword_1B5EB4750);
  v16 = sub_1B5DF5DA8(v15);
  v165 = v17;
  v166 = v16;
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFA50C();
  v163 = v21;
  v161 = sub_1B5DF33E0(&qword_1EB90E3C8, &qword_1B5EB4758);
  sub_1B5DF5DA8(v161);
  v160 = v22;
  v24 = *(v23 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFA50C();
  sub_1B5E26144(v26);
  v158 = sub_1B5DF33E0(&qword_1EB90E3D0, &qword_1B5EB4760);
  sub_1B5DF5DA8(v158);
  v157 = v27;
  v29 = *(v28 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFA50C();
  sub_1B5E26144(v31);
  v152 = type metadata accessor for UserNotification();
  v32 = sub_1B5DF5EB8(v152);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFD7E8();
  v171 = v36 - v35;
  v155 = sub_1B5DF33E0(&qword_1EB90E3D8, &qword_1B5EB4768);
  sub_1B5DF5DA8(v155);
  v154 = v37;
  v39 = *(v38 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5DFA50C();
  sub_1B5E26144(v41);
  v148 = type metadata accessor for TextMessage();
  v42 = sub_1B5DF5EB8(v148);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1B5DFD7E8();
  v170 = v46 - v45;
  v151 = sub_1B5DF33E0(&qword_1EB90E3E0, &qword_1B5EB4770);
  sub_1B5DF5DA8(v151);
  v150 = v47;
  v49 = *(v48 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v50);
  sub_1B5DFA50C();
  sub_1B5E26144(v51);
  v52 = type metadata accessor for MailMessage();
  v53 = sub_1B5DF5EB8(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5DFD7E8();
  sub_1B5E26144(v57 - v56);
  v58 = sub_1B5DF33E0(&qword_1EB90E3E8, &qword_1B5EB4778);
  sub_1B5DF5DA8(v58);
  v147 = v59;
  v61 = *(v60 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v147 - v63;
  v65 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v66 = sub_1B5DF5EB8(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1B5DFD7E8();
  v71 = (v70 - v69);
  v72 = sub_1B5DF33E0(&qword_1EB90E3F0, &qword_1B5EB4780);
  v173 = sub_1B5DF5DA8(v72);
  v174 = v73;
  v75 = *(v74 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v147 - v77;
  v79 = a1[3];
  sub_1B5DF3BFC(a1, v79);
  sub_1B5E217D8();
  v176 = v78;
  sub_1B5EA6040();
  sub_1B5E2182C(v172, v71);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v113 = sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
      sub_1B5E26150(v113);
      v115 = *(v114 + 24);
      v116 = v170;
      sub_1B5E21A34(v71, v170, type metadata accessor for TextMessage);
      LOBYTE(v177[0]) = 2;
      sub_1B5E21A90();
      v117 = v153;
      sub_1B5E260F8();
      sub_1B5EA5E00();
      LOBYTE(v177[0]) = 0;
      sub_1B5E26000();
      sub_1B5E21AE4(v118, v119);
      v120 = v155;
      v121 = v175;
      sub_1B5EA5EA0();
      if (v121)
      {

        sub_1B5E25FA0(&v182);
        v122(v117, v120);
        sub_1B5E26018();
        v106 = v116;
        goto LABEL_13;
      }

      sub_1B5E26220();
      v179 = v115;
      v181 = 1;
      sub_1B5E11DC0();
      sub_1B5E2608C();
      sub_1B5EA5EA0();
      sub_1B5E25FA0(&v182);
      v140(v117, v120);
      sub_1B5E26018();
      sub_1B5E21B2C(v170, v141);
      v142 = sub_1B5E25F5C();
      v143(v142);
      goto LABEL_25;
    case 2u:
      v95 = v71 + *(sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0) + 48);
      v96 = *(v95 + 1);
      v172 = *v95;
      LODWORD(v170) = v95[16];
      v97 = *(v95 + 3);
      v98 = v171;
      sub_1B5E21A34(v71, v171, type metadata accessor for UserNotification);
      LOBYTE(v177[0]) = 3;
      sub_1B5E219E0();
      v99 = v156;
      sub_1B5E260F8();
      sub_1B5EA5E00();
      LOBYTE(v177[0]) = 0;
      sub_1B5E26030();
      sub_1B5E21AE4(v100, v101);
      v102 = v158;
      v103 = v175;
      sub_1B5EA5EA0();
      if (!v103)
      {
        v177[0] = v172;
        v177[1] = v96;
        v178 = v170;
        v179 = v97;
        v181 = 1;
        sub_1B5E1810C();
        sub_1B5E2608C();
        sub_1B5EA5EA0();
        sub_1B5E25FA0(&v183);
        v133(v99, v102);
        sub_1B5E25E80();
        sub_1B5E21B2C(v171, v134);
        v135 = sub_1B5E25F5C();
        v136(v135);
      }

      sub_1B5E25FA0(&v183);
      v104(v99, v102);
      sub_1B5E25E80();
      v106 = v98;
LABEL_13:
      sub_1B5E21B2C(v106, v105);
      v91 = sub_1B5E25F5C();
      return v90(v91, v92);
    case 3u:
      sub_1B5E2617C();
      LOBYTE(v177[0]) = 4;
      sub_1B5E2198C();
      sub_1B5E25FAC();
      v177[0] = v78;
      v181 = 0;
      v107 = sub_1B5E26240();
      sub_1B5DF33E0(v107, v108);
      sub_1B5E25E98(&qword_1EB90E430);
      sub_1B5E2608C();
      sub_1B5E26104();
      if (v1)
      {
        goto LABEL_15;
      }

      sub_1B5E25F7C();
      sub_1B5E06C00();
      sub_1B5E2608C();
      sub_1B5E261BC();
      goto LABEL_24;
    case 4u:
      sub_1B5E2617C();
      LOBYTE(v177[0]) = 5;
      sub_1B5E21938();
      sub_1B5E25FAC();
      v177[0] = v78;
      v181 = 0;
      v93 = sub_1B5E26240();
      sub_1B5DF33E0(v93, v94);
      sub_1B5E25E98(&qword_1EB90D078);
      sub_1B5E2608C();
      sub_1B5E26104();
      if (v1)
      {
        goto LABEL_15;
      }

      sub_1B5E25F7C();
      sub_1B5E11F20();
      sub_1B5E2608C();
      sub_1B5E261BC();
      goto LABEL_24;
    case 5u:
      sub_1B5E2617C();
      LOBYTE(v177[0]) = 6;
      sub_1B5E218E4();
      sub_1B5E25FAC();
      v177[0] = v78;
      v181 = 0;
      v123 = sub_1B5E26240();
      sub_1B5DF33E0(v123, v124);
      sub_1B5E25E98(&qword_1EB90E410);
      sub_1B5E2608C();
      sub_1B5E26104();
      if (v1)
      {
LABEL_15:

        v125 = sub_1B5E25F5C();
        v126(v125);
        sub_1B5E260B8();
        v127(v58, v79);
      }

      sub_1B5E25F7C();
      sub_1B5E1826C();
      sub_1B5E2608C();
      sub_1B5E261BC();
LABEL_24:
      v144 = sub_1B5E25F5C();
      v145(v144);
      sub_1B5E260B8();
      v146(v176, v79);
      goto LABEL_25;
    case 6u:
      v128 = *v71;
      LOBYTE(v177[0]) = 7;
      sub_1B5E21890();
      v129 = v159;
      v130 = v173;
      v131 = v176;
      sub_1B5EA5E00();
      v132 = v164;
      sub_1B5EA5E70();
      (*(v162 + 8))(v129, v132);
      sub_1B5E260B8();
      v91 = v131;
      v92 = v130;
      return v90(v91, v92);
    case 7u:
      LOBYTE(v177[0]) = 0;
      sub_1B5E21BD8();
      sub_1B5EA5E00();
      sub_1B5E25FA0(v177);
      v109(v64, v58);
      sub_1B5E260B8();
      v110 = sub_1B5E26234();
      return v111(v110);
    default:
      v80 = sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
      sub_1B5E26150(v80);
      v82 = *(v81 + 24);
      sub_1B5E21A34(v71, v149, type metadata accessor for MailMessage);
      LOBYTE(v177[0]) = 1;
      sub_1B5E21B84();
      v83 = v173;
      v84 = v176;
      sub_1B5EA5E00();
      LOBYTE(v177[0]) = 0;
      sub_1B5E25FD4();
      sub_1B5E21AE4(v85, v86);
      v87 = v175;
      sub_1B5EA5EA0();
      if (v87)
      {

        sub_1B5E25FA0(v180);
        v88 = sub_1B5E26234();
        v89(v88);
        sub_1B5E26054();
        sub_1B5E260B8();
        v91 = v84;
        v92 = v83;
        return v90(v91, v92);
      }

      else
      {
        sub_1B5E26220();
        v179 = v82;
        v181 = 1;
        sub_1B5E06AA0();
        sub_1B5E2608C();
        sub_1B5EA5EA0();
        sub_1B5E25FA0(v180);
        v137 = sub_1B5E26234();
        v138(v137);
        sub_1B5E26054();
        sub_1B5E260B8();
        v139(v84, v83);
LABEL_25:
      }
  }
}

unint64_t sub_1B5E217D8()
{
  result = qword_1EB90D3F8;
  if (!qword_1EB90D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3F8);
  }

  return result;
}

uint64_t sub_1B5E2182C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E21890()
{
  result = qword_1EB90E3F8;
  if (!qword_1EB90E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E3F8);
  }

  return result;
}

unint64_t sub_1B5E218E4()
{
  result = qword_1EB90E400;
  if (!qword_1EB90E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E400);
  }

  return result;
}

unint64_t sub_1B5E21938()
{
  result = qword_1EB90D360;
  if (!qword_1EB90D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D360);
  }

  return result;
}

unint64_t sub_1B5E2198C()
{
  result = qword_1EB90E420;
  if (!qword_1EB90E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E420);
  }

  return result;
}

unint64_t sub_1B5E219E0()
{
  result = qword_1EB90D388;
  if (!qword_1EB90D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D388);
  }

  return result;
}

uint64_t sub_1B5E21A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1B5DF5EB8(v4);
  v6 = *(v5 + 32);
  v7 = sub_1B5DFA488();
  v8(v7);
  return a2;
}

unint64_t sub_1B5E21A90()
{
  result = qword_1EB90D3B0;
  if (!qword_1EB90D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3B0);
  }

  return result;
}

uint64_t sub_1B5E21AE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E21B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1B5DF5EB8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1B5E21B84()
{
  result = qword_1EB90D3C8;
  if (!qword_1EB90D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3C8);
  }

  return result;
}

unint64_t sub_1B5E21BD8()
{
  result = qword_1EB90D3E0;
  if (!qword_1EB90D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3E0);
  }

  return result;
}

uint64_t ClassificationXPCRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v182 = sub_1B5DF33E0(&qword_1EB90E450, &qword_1B5EB47B8);
  sub_1B5DF5DA8(v182);
  v174 = v3;
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFA50C();
  v191 = v7;
  v184 = sub_1B5DF33E0(&qword_1EB90E458, &qword_1B5EB47C0);
  sub_1B5DF5DA8(v184);
  v176 = v8;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFA50C();
  v198 = v12;
  v183 = sub_1B5DF33E0(&qword_1EB90E460, &qword_1B5EB47C8);
  sub_1B5DF5DA8(v183);
  v175 = v13;
  v15 = *(v14 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFA50C();
  v192 = v17;
  v181 = sub_1B5DF33E0(&qword_1EB90E468, &qword_1B5EB47D0);
  sub_1B5DF5DA8(v181);
  v173 = v18;
  v20 = *(v19 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFA50C();
  v190 = v22;
  v180 = sub_1B5DF33E0(&qword_1EB90E470, &qword_1B5EB47D8);
  sub_1B5DF5DA8(v180);
  v172 = v23;
  v25 = *(v24 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFA50C();
  v189 = v27;
  v197 = sub_1B5DF33E0(&qword_1EB90E478, &qword_1B5EB47E0);
  sub_1B5DF5DA8(v197);
  v171 = v28;
  v30 = *(v29 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFA50C();
  v188 = v32;
  v179 = sub_1B5DF33E0(&qword_1EB90E480, &qword_1B5EB47E8);
  sub_1B5DF5DA8(v179);
  v170 = v33;
  v35 = *(v34 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v36);
  sub_1B5DFA50C();
  v187 = v37;
  v178 = sub_1B5DF33E0(&qword_1EB90E488, &qword_1B5EB47F0);
  sub_1B5DF5DA8(v178);
  v177 = v38;
  v40 = *(v39 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFA50C();
  v186 = v42;
  v196 = sub_1B5DF33E0(&qword_1EB90E490, &unk_1B5EB47F8);
  sub_1B5DF5DA8(v196);
  v194 = v43;
  v45 = *(v44 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v163 - v47;
  v193 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v49 = sub_1B5DF5EB8(v193);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v52);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5E2616C();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v163 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &v163 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v163 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v163 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v163 - v67;
  v69 = a1[3];
  v70 = a1[4];
  v199 = a1;
  v71 = sub_1B5E26240();
  sub_1B5DF3BFC(v71, v72);
  sub_1B5E217D8();
  v195 = v48;
  v73 = v200;
  sub_1B5EA6030();
  if (v73)
  {
    goto LABEL_9;
  }

  v165 = v57;
  v166 = v66;
  v167 = v63;
  v168 = v60;
  v200 = v68;
  v74 = sub_1B5EA5DE0();
  result = sub_1B5DFA434(v74, 0);
  if (v77 == v78 >> 1)
  {
LABEL_8:
    v92 = v193;
    v93 = sub_1B5EA5BF0();
    swift_allocError();
    v95 = v94;
    v96 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
    *v95 = v92;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v93 - 8) + 104))(v95, *MEMORY[0x1E69E6AF8], v93);
    swift_willThrow();
    swift_unknownObjectRelease();
    v97 = *(v194 + 8);
    v98 = sub_1B5E25F50();
    v99(v98);
LABEL_9:
    v100 = v199;
    return sub_1B5DF3FB8(v100);
  }

  v164 = 0;
  if (v77 < (v78 >> 1))
  {
    v163 = *(v76 + v77);
    v79 = sub_1B5DFA42C(v77 + 1);
    v81 = v80;
    v83 = v82;
    swift_unknownObjectRelease();
    v84 = v79;
    if (v81 == v83 >> 1)
    {
      v85 = v164;
      switch(v163)
      {
        case 1:
          LOBYTE(v201) = 1;
          sub_1B5E21B84();
          sub_1B5E25EF0();
          v198 = v84;
          type metadata accessor for MailMessage();
          LOBYTE(v201) = 0;
          sub_1B5E25FD4();
          sub_1B5E21AE4(v110, v111);
          v105 = v166;
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v137 = sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
          sub_1B5E2619C(v137);
          sub_1B5E06A48();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v138 = v170;
          swift_unknownObjectRelease();
          v153 = *(v138 + 8);
          v154 = sub_1B5E26048();
          v155(v154);
          v156 = sub_1B5E25F14();
          v157(v156);
          goto LABEL_19;
        case 2:
          LOBYTE(v201) = 2;
          sub_1B5E21A90();
          sub_1B5E25EF0();
          v198 = v84;
          type metadata accessor for TextMessage();
          LOBYTE(v201) = 0;
          sub_1B5E26000();
          sub_1B5E21AE4(v103, v104);
          v105 = v167;
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v124 = sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
          sub_1B5E2619C(v124);
          sub_1B5E11D68();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v125 = v171;
          swift_unknownObjectRelease();
          v143 = *(v125 + 8);
          v144 = sub_1B5E26048();
          v145(v144);
          v146 = sub_1B5E25F14();
          v147(v146);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v152 = v105;
          goto LABEL_21;
        case 3:
          LOBYTE(v201) = 3;
          sub_1B5E219E0();
          v106 = v189;
          sub_1B5E25EF0();
          type metadata accessor for UserNotification();
          LOBYTE(v201) = 0;
          sub_1B5E26030();
          sub_1B5E21AE4(v107, v108);
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v126 = sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0);
          sub_1B5E2619C(v126);
          sub_1B5E180B4();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v127 = v172;
          swift_unknownObjectRelease();
          (*(v127 + 8))(v106, v85);
          v148 = sub_1B5E25F14();
          v149(v148);
          v150 = v168;
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v152 = v150;
          goto LABEL_21;
        case 4:
          LOBYTE(v201) = 4;
          sub_1B5E2198C();
          sub_1B5E25EF0();
          v101 = sub_1B5DFA488();
          sub_1B5DF33E0(v101, v102);
          LOBYTE(v201) = 0;
          sub_1B5E25EC4(&qword_1EB90E4A0);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E06BA8();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v119 = v194;
          swift_unknownObjectRelease();
          v120 = sub_1B5E2607C();
          v121(v120);
          v122 = sub_1B5E25F24();
          v123(v122);
          sub_1B5E25F34(v201);
          goto LABEL_20;
        case 5:
          LOBYTE(v201) = 5;
          sub_1B5E21938();
          sub_1B5E25EF0();
          v112 = sub_1B5DFA488();
          sub_1B5DF33E0(v112, v113);
          LOBYTE(v201) = 0;
          sub_1B5E25EC4(&qword_1EB90D070);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E11EC8();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v119 = v194;
          swift_unknownObjectRelease();
          v139 = sub_1B5E2607C();
          v140(v139);
          v141 = sub_1B5E25F24();
          v142(v141);
          sub_1B5E25F34(v201);
          goto LABEL_20;
        case 6:
          LOBYTE(v201) = 6;
          sub_1B5E218E4();
          sub_1B5E25EF0();
          v117 = sub_1B5DFA488();
          sub_1B5DF33E0(v117, v118);
          LOBYTE(v201) = 0;
          sub_1B5E25EC4(&qword_1EB90E498);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E18214();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v119 = v194;
          swift_unknownObjectRelease();
          v158 = sub_1B5E2607C();
          v159(v158);
          v160 = sub_1B5E25F24();
          v161(v160);
          sub_1B5E25F34(v201);
LABEL_20:
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v152 = v119;
LABEL_21:
          v91 = v200;
          sub_1B5E21A34(v152, v200, v151);
          goto LABEL_22;
        case 7:
          LOBYTE(v201) = 7;
          sub_1B5E21890();
          sub_1B5E25EF0();
          v109 = v182;
          sub_1B5E25F94();
          sub_1B5EA5D90();
          v100 = v199;
          v129 = v128;
          swift_unknownObjectRelease();
          v130 = sub_1B5E25F6C(v202);
          v131(v130, v109);
          v132 = sub_1B5E25F24();
          v133(v132);
          v134 = v169;
          *v169 = v129;
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v135 = v134;
          v91 = v200;
          sub_1B5E21A34(v135, v200, v136);
          goto LABEL_23;
        default:
          LOBYTE(v201) = 0;
          sub_1B5E21BD8();
          v86 = v186;
          sub_1B5EA5D10();
          if (v85)
          {
            v114 = *(v194 + 8);
            v115 = sub_1B5E25F50();
            v116(v115);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          sub_1B5E25FA0(&v203);
          v87(v86, v178);
          v88 = *(v194 + 8);
          v89 = sub_1B5E25F50();
          v90(v89);
          v91 = v200;
          swift_storeEnumTagMultiPayload();
LABEL_22:
          v100 = v199;
LABEL_23:
          sub_1B5E25E3C();
          sub_1B5E21A34(v91, v185, v162);
          break;
      }

      return sub_1B5DF3FB8(v100);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ClassificationXPCRequest.RequestInfo.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B5DFA488();
}

uint64_t ClassificationXPCRequest.RequestInfo.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ClassificationXPCRequest.RequestInfo.useCaseIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1B5DFA488();
}

uint64_t ClassificationXPCRequest.RequestInfo.useCaseIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

Sage::ClassificationXPCRequest::RequestInfo __swiftcall ClassificationXPCRequest.RequestInfo.init(requestIdentifier:useCaseIdentifier:)(Swift::String requestIdentifier, Swift::String useCaseIdentifier)
{
  *v2 = requestIdentifier;
  v2[1] = useCaseIdentifier;
  result.useCaseIdentifier = useCaseIdentifier;
  result.requestIdentifier = requestIdentifier;
  return result;
}

uint64_t sub_1B5E22F08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B5EA8D50 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E2300C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E23060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E22F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E23088(uint64_t a1)
{
  v2 = sub_1B5E248F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E230C4(uint64_t a1)
{
  v2 = sub_1B5E248F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCRequest.RequestInfo.encode(to:)(void *a1)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E4A8, &qword_1B5EB4808);
  sub_1B5DF5DA8(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E248F0();
  sub_1B5EA6040();
  v19 = 0;
  sub_1B5EA5E50();
  if (!v2)
  {
    v18 = 1;
    sub_1B5EA5E50();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t ClassificationXPCRequest.RequestInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E4B0, &unk_1B5EB4810);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v11 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E248F0();
  sub_1B5EA6030();
  if (v2)
  {
    return sub_1B5DF3FB8(a1);
  }

  v12 = sub_1B5EA5D70();
  v14 = v13;
  v15 = sub_1B5EA5D70();
  v17 = v16;
  v18 = *(v7 + 8);
  v22 = v15;
  v19 = sub_1B5E26048();
  v20(v19);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v22;
  a2[3] = v17;

  sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E23480(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E2182C(a1, v7);
  v8 = *a2;
  return sub_1B5E23560(v7);
}

uint64_t sub_1B5E2350C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  return sub_1B5E2182C(v1 + v3, a1);
}

uint64_t sub_1B5E23560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  swift_beginAccess();
  sub_1B5E25CF8(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1B5E235C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B5E23654(&v7);
  result = *&v7;
  v5 = v8;
  v6 = v9;
  *a2 = v7;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1B5E23604(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;

  return sub_1B5E236B4(&v7);
}

uint64_t sub_1B5E23654@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo);
  sub_1B5E26214();
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
}

uint64_t sub_1B5E236B4(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  *v4 = v8;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

id ClassificationXPCRequest.__allocating_init(request:requestInfo:)()
{
  sub_1B5DFA47C();
  v3 = objc_allocWithZone(v1);
  return ClassificationXPCRequest.init(request:requestInfo:)(v2, v0);
}

id ClassificationXPCRequest.init(request:requestInfo:)(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  sub_1B5E2182C(a1, &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request]);
  v6 = &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo];
  *v6 = v10;
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ClassificationXPCRequest(0);
  v7 = objc_msgSendSuper2(&v11, sel_init);
  sub_1B5E25E54();
  sub_1B5E21B2C(a1, v8);
  return v7;
}

id ClassificationXPCRequest.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1B5E2624C();
  return ClassificationXPCRequest.init(coder:)(v2);
}

id ClassificationXPCRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B5DFD7E8();
  v8 = v7 - v6;
  sub_1B5E243CC(v7 - v6);
  sub_1B5E25E3C();
  sub_1B5E21A34(v8, &v2[v9], v10);
  sub_1B5E23F34();
  v12 = v18;
  v13 = v19;
  v14 = &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo];
  *v14 = v17;
  *(v14 + 2) = v12;
  *(v14 + 3) = v13;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for XPCValue();
  v15 = objc_msgSendSuper2(&v16, sel_init);

  return v15;
}

void sub_1B5E23B44(void *a1)
{
  sub_1B5EA3934(a1);
  v3 = (v1 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo);
  sub_1B5E26214();
  swift_beginAccess();
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v4 = qword_1ED7D2050;

  if (v4 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E24A04();
  v5 = sub_1B5EA4160();
  v7 = v6;

  v8 = sub_1B5EA42C0();
  sub_1B5E24A58(v5, v7);
  v9 = sub_1B5EA5670();
  [a1 encodeObject:v8 forKey:v9];
}

uint64_t sub_1B5E23E08()
{
  v1 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v2 = sub_1B5DF5EB8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E2182C(v0 + v8, v7);
  if (qword_1ED7D2050 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E21AE4(&qword_1EB90CF20, type metadata accessor for ClassificationXPCRequest.Request);
  sub_1B5EA4160();
  sub_1B5E25E54();
  sub_1B5E21B2C(v7, v9);
  return sub_1B5DFA488();
}

uint64_t sub_1B5E23F34()
{
  sub_1B5E25D5C();
  v1 = sub_1B5EA5AB0();
  if (v1)
  {
    v2 = v1;
    sub_1B5EA42D0();

    v0 = 0xF000000000000000;
  }

  type metadata accessor for XPCValue();
  v3 = sub_1B5E26048();
  v5 = sub_1B5EA3B74(v3, v4);
  swift_willThrow();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v6 = sub_1B5EA53B0();
  sub_1B5DFD794(v6, qword_1ED7D2990);
  v7 = sub_1B5E2624C();
  v8 = sub_1B5EA5380();
  v9 = sub_1B5EA5A40();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1B5E26208();
    swift_slowAlloc();
    sub_1B5E2618C();
    v10 = swift_slowAlloc();
    *v0 = 138543362;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v0 + 4) = v12;
    *v10 = v12;
    sub_1B5E260D8();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    sub_1B5E2499C(v10);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  return swift_willThrow();
}

id ClassificationXPCRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E241C4()
{
  sub_1B5E25E54();
  sub_1B5E21B2C(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo + 8);
  v4 = *(v0 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo + 24);
}

id ClassificationXPCRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationXPCRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E243CC@<X0>(uint64_t a1@<X8>)
{
  sub_1B5E25D5C();
  v2 = sub_1B5EA5AB0();
  if (v2)
  {
    v3 = v2;
    sub_1B5EA42D0();
  }

  type metadata accessor for XPCValue();
  v4 = sub_1B5E2624C();
  v5 = sub_1B5EA3B74(v4, 0xEC00000065756C61);
  swift_willThrow();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v6 = sub_1B5EA53B0();
  sub_1B5DFD794(v6, qword_1ED7D2990);
  v7 = sub_1B5E2624C();
  v8 = sub_1B5EA5380();
  v9 = sub_1B5EA5A40();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1B5E26208();
    swift_slowAlloc();
    sub_1B5E2618C();
    v10 = swift_slowAlloc();
    *a1 = 138543362;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(a1 + 4) = v12;
    *v10 = v12;
    sub_1B5E260D8();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    sub_1B5E2499C(v10);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v19);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v20);
  }

  return swift_willThrow();
}

uint64_t ClassificationXPCRequest.Request.Category.description.getter()
{
  v1 = 0x6966697373616C63;
  if (*v0 != 1)
  {
    v1 = 1953719668;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D726177657270;
  }
}

Sage::ClassificationXPCRequest::Request::Category_optional __swiftcall ClassificationXPCRequest.Request.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5EA5D00();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B5E246DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1B5E801D8();
}

uint64_t sub_1B5E2470C@<X0>(uint64_t *a1@<X8>)
{
  result = ClassificationXPCRequest.Request.Category.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClassificationXPCRequest.Request.category.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  sub_1B5E2182C(v2, v9 - v8);
  sub_1B5E26234();
  result = swift_getEnumCaseMultiPayload();
  v12 = 0;
  switch(result)
  {
    case 1:
      v14 = sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
      sub_1B5E26124(v14);

      v13 = type metadata accessor for TextMessage;
      goto LABEL_7;
    case 2:
      v15 = sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0);
      sub_1B5E26124(v15);

      v13 = type metadata accessor for UserNotification;
      goto LABEL_7;
    case 3:
    case 4:
    case 5:
      v13 = type metadata accessor for ClassificationXPCRequest.Request;
      goto LABEL_7;
    case 6:
      v12 = 2;
      goto LABEL_8;
    case 7:
      goto LABEL_8;
    default:
      v16 = sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
      sub_1B5E26124(v16);

      v13 = type metadata accessor for MailMessage;
LABEL_7:
      result = sub_1B5E21B2C(v10, v13);
      v12 = 1;
LABEL_8:
      *a1 = v12;
      return result;
  }
}

uint64_t sub_1B5E248A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E248F0()
{
  result = qword_1EB90D410;
  if (!qword_1EB90D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D410);
  }

  return result;
}

uint64_t sub_1B5E24964(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5E2499C(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&unk_1EB90F890, &qword_1B5EB6DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E24A04()
{
  result = qword_1EB90CF30;
  if (!qword_1EB90CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF30);
  }

  return result;
}

uint64_t sub_1B5E24A58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B5E24AB4()
{
  result = qword_1EB90E4B8;
  if (!qword_1EB90E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4B8);
  }

  return result;
}

unint64_t sub_1B5E24B0C()
{
  result = qword_1EB90E4C0;
  if (!qword_1EB90E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4C0);
  }

  return result;
}

uint64_t sub_1B5E24B68()
{
  result = type metadata accessor for ClassificationXPCRequest.Request(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5E24CAC()
{
  sub_1B5E24E44(319, &qword_1EB90D880, type metadata accessor for MailMessage);
  if (v0 <= 0x3F)
  {
    sub_1B5E24E44(319, &qword_1EB90D800, type metadata accessor for TextMessage);
    if (v1 <= 0x3F)
    {
      sub_1B5E24E44(319, &qword_1EB90D770, type metadata accessor for UserNotification);
      if (v2 <= 0x3F)
      {
        sub_1B5E24E9C(319, qword_1EB90D660, &qword_1EB90E428, &qword_1B5EB4798);
        if (v3 <= 0x3F)
        {
          sub_1B5E24E9C(319, &qword_1EB90D658, &qword_1EB90E418, &qword_1B5EB4790);
          if (v4 <= 0x3F)
          {
            sub_1B5E24E9C(319, &qword_1EB90D650, &qword_1EB90E408, &qword_1B5EB4788);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B5E24E44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B5E261D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B5E24E9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B5DFD694(a3, a4);
    v5 = sub_1B5E261D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ClassificationXPCRequest.Request.Category(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClassificationXPCRequest.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B5E2512C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5E25208(unsigned __int8 *a1, int a2)
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

  return sub_1B5DF31F8(a1);
}

_BYTE *sub_1B5E25254(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B5E25304()
{
  result = qword_1EB90E4C8;
  if (!qword_1EB90E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4C8);
  }

  return result;
}

unint64_t sub_1B5E2535C()
{
  result = qword_1EB90E4D0;
  if (!qword_1EB90E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4D0);
  }

  return result;
}

unint64_t sub_1B5E253B4()
{
  result = qword_1EB90E4D8;
  if (!qword_1EB90E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4D8);
  }

  return result;
}

unint64_t sub_1B5E2540C()
{
  result = qword_1EB90E4E0;
  if (!qword_1EB90E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4E0);
  }

  return result;
}

unint64_t sub_1B5E25464()
{
  result = qword_1EB90E4E8;
  if (!qword_1EB90E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4E8);
  }

  return result;
}

unint64_t sub_1B5E254BC()
{
  result = qword_1EB90E4F0;
  if (!qword_1EB90E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4F0);
  }

  return result;
}

unint64_t sub_1B5E25514()
{
  result = qword_1EB90E4F8;
  if (!qword_1EB90E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4F8);
  }

  return result;
}

unint64_t sub_1B5E2556C()
{
  result = qword_1EB90E500;
  if (!qword_1EB90E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E500);
  }

  return result;
}

unint64_t sub_1B5E255C4()
{
  result = qword_1EB90E508;
  if (!qword_1EB90E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E508);
  }

  return result;
}

unint64_t sub_1B5E2561C()
{
  result = qword_1EB90D400;
  if (!qword_1EB90D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D400);
  }

  return result;
}

unint64_t sub_1B5E25674()
{
  result = qword_1EB90D408;
  if (!qword_1EB90D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D408);
  }

  return result;
}

unint64_t sub_1B5E256CC()
{
  result = qword_1EB90D3D0;
  if (!qword_1EB90D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3D0);
  }

  return result;
}

unint64_t sub_1B5E25724()
{
  result = qword_1EB90D3D8;
  if (!qword_1EB90D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3D8);
  }

  return result;
}

unint64_t sub_1B5E2577C()
{
  result = qword_1EB90D3B8;
  if (!qword_1EB90D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3B8);
  }

  return result;
}

unint64_t sub_1B5E257D4()
{
  result = qword_1EB90D3C0;
  if (!qword_1EB90D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3C0);
  }

  return result;
}

unint64_t sub_1B5E2582C()
{
  result = qword_1EB90D3A0;
  if (!qword_1EB90D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3A0);
  }

  return result;
}

unint64_t sub_1B5E25884()
{
  result = qword_1EB90D3A8;
  if (!qword_1EB90D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3A8);
  }

  return result;
}

unint64_t sub_1B5E258DC()
{
  result = qword_1EB90D378;
  if (!qword_1EB90D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D378);
  }

  return result;
}

unint64_t sub_1B5E25934()
{
  result = qword_1EB90D380;
  if (!qword_1EB90D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D380);
  }

  return result;
}

unint64_t sub_1B5E2598C()
{
  result = qword_1EB90D368;
  if (!qword_1EB90D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D368);
  }

  return result;
}

unint64_t sub_1B5E259E4()
{
  result = qword_1EB90D370;
  if (!qword_1EB90D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D370);
  }

  return result;
}

unint64_t sub_1B5E25A3C()
{
  result = qword_1EB90D350;
  if (!qword_1EB90D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D350);
  }

  return result;
}

unint64_t sub_1B5E25A94()
{
  result = qword_1EB90D358;
  if (!qword_1EB90D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D358);
  }

  return result;
}

unint64_t sub_1B5E25AEC()
{
  result = qword_1EB90D340;
  if (!qword_1EB90D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D340);
  }

  return result;
}

unint64_t sub_1B5E25B44()
{
  result = qword_1EB90D348;
  if (!qword_1EB90D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D348);
  }

  return result;
}

unint64_t sub_1B5E25B9C()
{
  result = qword_1EB90D390;
  if (!qword_1EB90D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D390);
  }

  return result;
}

unint64_t sub_1B5E25BF4()
{
  result = qword_1EB90D398;
  if (!qword_1EB90D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D398);
  }

  return result;
}

unint64_t sub_1B5E25C4C()
{
  result = qword_1EB90D3E8;
  if (!qword_1EB90D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3E8);
  }

  return result;
}

unint64_t sub_1B5E25CA4()
{
  result = qword_1EB90D3F0;
  if (!qword_1EB90D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3F0);
  }

  return result;
}

uint64_t sub_1B5E25CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E25D5C()
{
  result = qword_1ED7D29B8;
  if (!qword_1ED7D29B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7D29B8);
  }

  return result;
}

uint64_t sub_1B5E25DA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B5E24A58(a1, a2);
  }

  return a1;
}

unint64_t sub_1B5E25DB4()
{
  result = qword_1EB90CF28;
  if (!qword_1EB90CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF28);
  }

  return result;
}

uint64_t sub_1B5E25E98(unint64_t *a1)
{

  return sub_1B5E248A8(a1, v1, v2);
}

uint64_t sub_1B5E25EC4(unint64_t *a1)
{

  return sub_1B5E248A8(a1, v1, v2);
}

uint64_t sub_1B5E25EF0()
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E25F34@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = v2;
  *(v4 + 8) = a1;
  *(v4 + 16) = *(v3 - 112);
  result = v4;
  v6 = *(v3 - 192);
  return result;
}

void sub_1B5E25F7C()
{
  v2 = *(v1 - 168);
  *(v1 - 128) = *(v1 - 176);
  *(v1 - 120) = v2;
  *(v1 - 112) = v0;
  *(v1 - 89) = 1;
}

uint64_t sub_1B5E25FAC()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 136);

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E26054()
{

  return sub_1B5E21B2C(v0, type metadata accessor for MailMessage);
}

uint64_t sub_1B5E26098()
{

  return swift_once();
}

uint64_t sub_1B5E26104()
{
  v2 = *(v0 - 144);

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E26124(uint64_t a1)
{
  v3 = v1 + *(a1 + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);
}

uint64_t sub_1B5E26150(uint64_t result)
{
  v3 = v1 + *(result + 48);
  v4 = *(v3 + 8);
  *(v2 - 168) = *v3;
  *(v2 - 176) = *(v3 + 16);
  return result;
}

void sub_1B5E2617C()
{
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  *(v1 - 176) = v0[1];
  *(v1 - 168) = v3;
}

uint64_t sub_1B5E2619C(uint64_t result)
{
  v2 = *(result + 48);
  *(v1 - 120) = 1;
  return result;
}

uint64_t sub_1B5E261BC()
{

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E261D8()
{

  return swift_getTupleTypeMetadata2();
}

void sub_1B5E26220()
{
  *(v1 - 128) = *(v1 - 168);
  *(v1 - 120) = v0;
  *(v1 - 112) = *(v1 - 176);
}

uint64_t sub_1B5E26258()
{

  return sub_1B5EA5F00();
}

uint64_t ClassificationXPCResult.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E262F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xEE00746C75736552)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E263C4(char a1)
{
  if (a1)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 1684631414;
  }
}

uint64_t sub_1B5E26438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E262F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E26460(uint64_t a1)
{
  v2 = sub_1B5E26990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E2649C(uint64_t a1)
{
  v2 = sub_1B5E26990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E264D8(uint64_t a1)
{
  v2 = sub_1B5E26A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E26514(uint64_t a1)
{
  v2 = sub_1B5E26A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E26550(uint64_t a1)
{
  v2 = sub_1B5E26A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E2658C(uint64_t a1)
{
  v2 = sub_1B5E26A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCResult.Result.encode(to:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E510, &qword_1B5EB5650);
  v4 = sub_1B5DF5DA8(v3);
  v48 = v5;
  v49 = v4;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E28304(v9, v44);
  v10 = type metadata accessor for PriorityResult();
  v11 = sub_1B5DF5EB8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B5DF33E0(&qword_1EB90E518, &qword_1B5EB5658);
  v16 = sub_1B5DF5DA8(v15);
  v44 = v17;
  v45 = v16;
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for ClassificationXPCResult.Result(0);
  v24 = sub_1B5E01CF8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5E2829C();
  v27 = sub_1B5DF33E0(&qword_1EB90E520, &qword_1B5EB5660);
  sub_1B5DF5DA8(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E26990();
  sub_1B5EA6040();
  sub_1B5E269E4(v50, v1);
  v36 = sub_1B5E282E4();
  if (sub_1B5DF46E0(v36, v37, v10) == 1)
  {
    v51 = 0;
    sub_1B5E26A9C();
    sub_1B5EA5E00();
    (*(v44 + 8))(v22, v45);
  }

  else
  {
    v39 = v46;
    sub_1B5E279C0(v1, v46, type metadata accessor for PriorityResult);
    v52 = 1;
    sub_1B5E26A48();
    v40 = v47;
    sub_1B5EA5E00();
    sub_1B5E282B4();
    sub_1B5E27978(v41, v42);
    v43 = v49;
    sub_1B5EA5EA0();
    (*(v48 + 8))(v40, v43);
    sub_1B5E27A20(v39, type metadata accessor for PriorityResult);
  }

  return (*(v29 + 8))(v34, v27);
}

unint64_t sub_1B5E26990()
{
  result = qword_1EB90D480;
  if (!qword_1EB90D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D480);
  }

  return result;
}

uint64_t sub_1B5E269E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E26A48()
{
  result = qword_1EB90D498;
  if (!qword_1EB90D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D498);
  }

  return result;
}

unint64_t sub_1B5E26A9C()
{
  result = qword_1EB90D468;
  if (!qword_1EB90D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D468);
  }

  return result;
}

void ClassificationXPCResult.Result.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_1B5DF33E0(&qword_1EB90E528, &qword_1B5EB5668);
  v72 = sub_1B5DF5DA8(v3);
  v73 = v4;
  v6 = *(v5 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v67 - v8;
  v9 = sub_1B5DF33E0(&qword_1EB90E530, &qword_1B5EB5670);
  v70 = sub_1B5DF5DA8(v9);
  v71 = v10;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E28304(v14, v67);
  v15 = sub_1B5DF33E0(&qword_1EB90E538, &unk_1B5EB5678);
  sub_1B5DF5DA8(v15);
  v77 = v16;
  v18 = *(v17 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for ClassificationXPCResult.Result(0);
  v23 = sub_1B5DF5EB8(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v67 - v29;
  v31 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E26990();
  v32 = v78;
  sub_1B5EA6030();
  if (v32)
  {
    goto LABEL_8;
  }

  v78 = v22;
  v67 = v28;
  v68 = v30;
  v33 = v21;
  v34 = sub_1B5EA5DE0();
  sub_1B5DF9704(v34, 0);
  v38 = a1;
  v69 = v15;
  if (v36 == v37 >> 1)
  {
LABEL_7:
    v46 = sub_1B5EA5BF0();
    swift_allocError();
    v48 = v47;
    v49 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
    *v48 = v78;
    v50 = v69;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v33, v50);
    a1 = v38;
LABEL_8:
    sub_1B5DF3FB8(a1);
    return;
  }

  if (v36 < (v37 >> 1))
  {
    v39 = *(v35 + v36);
    v40 = sub_1B5DFA42C(v36 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      v45 = v77;
      if (v39)
      {
        v78 = v40;
        v80 = 1;
        sub_1B5E26A48();
        sub_1B5EA5D10();
        v52 = type metadata accessor for PriorityResult();
        sub_1B5E282B4();
        sub_1B5E27978(v53, v54);
        v55 = v67;
        sub_1B5EA5DC0();
        swift_unknownObjectRelease();
        v61 = sub_1B5E28318();
        v62(v61);
        (*(v45 + 8))(v33, v69);
        sub_1B5DF3658(v55, 0, 1, v52);
        sub_1B5E282CC();
        v63 = v68;
        sub_1B5E279C0(v55, v68, v64);
        a1 = v38;
        v65 = v76;
      }

      else
      {
        v79 = 0;
        sub_1B5E26A9C();
        v51 = v74;
        sub_1B5EA5D10();
        v65 = v76;
        swift_unknownObjectRelease();
        (*(v71 + 8))(v51, v70);
        v56 = sub_1B5E282F0();
        v57(v56);
        type metadata accessor for PriorityResult();
        v63 = v68;
        v58 = sub_1B5E282E4();
        sub_1B5DF3658(v58, v59, 1, v60);
      }

      sub_1B5E282CC();
      sub_1B5E279C0(v63, v65, v66);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B5E27120(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E269E4(a1, v7);
  v8 = *a2;
  return sub_1B5E27200(v7);
}

uint64_t sub_1B5E271AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  return sub_1B5E269E4(v1 + v3, a1);
}

uint64_t sub_1B5E27200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  swift_beginAccess();
  sub_1B5E2821C(a1, v1 + v3);
  return swift_endAccess();
}

id ClassificationXPCResult.__allocating_init(result:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B5E269E4(a1, v3 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E28284();
  sub_1B5E27A20(a1, v5);
  return v4;
}

id ClassificationXPCResult.init(result:)(uint64_t a1)
{
  sub_1B5E269E4(a1, v1 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ClassificationXPCResult(0);
  v3 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B5E28284();
  sub_1B5E27A20(a1, v4);
  return v3;
}

id ClassificationXPCResult.init(coder:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E540, &qword_1B5EB5688);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ClassificationXPCResult.Result(0);
  v10 = sub_1B5DF5EB8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E242B8(v8);
  sub_1B5DF3658(v8, 0, 1, v9);
  sub_1B5E279C0(v8, v14, type metadata accessor for ClassificationXPCResult.Result);
  sub_1B5E269E4(v14, v1 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v15 = type metadata accessor for XPCValue();
  v19.receiver = v1;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_init);

  sub_1B5E27A20(v14, type metadata accessor for ClassificationXPCResult.Result);
  return v16;
}

uint64_t sub_1B5E2756C()
{
  v2 = type metadata accessor for ClassificationXPCResult.Result(0);
  v3 = sub_1B5E01CF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v6 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v0 + v6, v1);
  type metadata accessor for PriorityResult();
  v7 = sub_1B5E282E4();
  v10 = sub_1B5DF46E0(v7, v8, v9);
  sub_1B5E28284();
  result = sub_1B5E27A20(v1, v11);
  if (v10 != 1)
  {
    sub_1B5E27B00();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B5E27648@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  v5 = sub_1B5E01CF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E2829C();
  v8 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v1 + v8, v2);
  type metadata accessor for PriorityResult();
  v9 = sub_1B5E282E4();
  if (sub_1B5DF46E0(v9, v10, v11) != 1)
  {
    return sub_1B5E279C0(v2, a1, type metadata accessor for PriorityResult);
  }

  sub_1B5E28284();
  sub_1B5E27A20(v2, v12);
  sub_1B5E27B00();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1B5E27748()
{
  v2 = type metadata accessor for ClassificationXPCResult.Result(0);
  v3 = sub_1B5DF5EB8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v6 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v0 + v6, v1);
  if (qword_1ED7D2050 != -1)
  {
    swift_once();
  }

  sub_1B5E27978(&qword_1EB90CF60, type metadata accessor for ClassificationXPCResult.Result);
  v7 = sub_1B5EA4160();
  sub_1B5E28284();
  sub_1B5E27A20(v1, v8);
  return v7;
}

id ClassificationXPCResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClassificationXPCResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationXPCResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E27978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E279C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1B5DF5EB8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B5E27A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1B5DF5EB8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E27A98(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90E540, &qword_1B5EB5688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E27B00()
{
  result = qword_1EB90E548;
  if (!qword_1EB90E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E548);
  }

  return result;
}

unint64_t sub_1B5E27B58()
{
  result = qword_1EB90E550;
  if (!qword_1EB90E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E550);
  }

  return result;
}

uint64_t sub_1B5E27BB4()
{
  result = type metadata accessor for ClassificationXPCResult.Result(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5E27D6C()
{
  v0 = type metadata accessor for PriorityResult();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for ClassificationXPCResult.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B5E27EB0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B5E27F60()
{
  result = qword_1EB90E558;
  if (!qword_1EB90E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E558);
  }

  return result;
}

unint64_t sub_1B5E27FB8()
{
  result = qword_1EB90E560;
  if (!qword_1EB90E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E560);
  }

  return result;
}

unint64_t sub_1B5E28010()
{
  result = qword_1EB90D458;
  if (!qword_1EB90D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D458);
  }

  return result;
}

unint64_t sub_1B5E28068()
{
  result = qword_1EB90D460;
  if (!qword_1EB90D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D460);
  }

  return result;
}

unint64_t sub_1B5E280C0()
{
  result = qword_1EB90D488;
  if (!qword_1EB90D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D488);
  }

  return result;
}

unint64_t sub_1B5E28118()
{
  result = qword_1EB90D490;
  if (!qword_1EB90D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D490);
  }

  return result;
}

unint64_t sub_1B5E28170()
{
  result = qword_1EB90D470;
  if (!qword_1EB90D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D470);
  }

  return result;
}

unint64_t sub_1B5E281C8()
{
  result = qword_1EB90D478;
  if (!qword_1EB90D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D478);
  }

  return result;
}

uint64_t sub_1B5E2821C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ClassificationClient.UseCase.identifier.getter()
{
  v1 = *v0;
  sub_1B5EA5BC0();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = "classifyTextMessage";
      goto LABEL_4;
    case 2:
      sub_1B5E2CFBC();
      v3 = v5 + 5;
      break;
    case 3:
    case 4:
      sub_1B5E2CFBC();
      v3 = v6 + 6;
      break;
    case 5:
      sub_1B5E2CFBC();
      v3 = v7 + 11;
      break;
    case 6:
      break;
    case 7:
      v2 = 0xEF6D726177657250;
      v3 = 0x7966697373616C63;
      break;
    default:
      v3 = 0xD000000000000013;
      v4 = "classifyMailMessage";
LABEL_4:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
  }

  MEMORY[0x1B8C8A360](v3, v2);

  return 0x6966697373616C63;
}

uint64_t *sub_1B5E28498()
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8();
  }

  return &qword_1EB90D2E8;
}

id static ClassificationXPCService.interface.getter()
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8();
  }

  sub_1B5E2D094();
  v0 = qword_1EB90D2E8;

  return v0;
}

void static ClassificationXPCService.interface.setter(uint64_t a1)
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8();
  }

  sub_1B5E2D108();
  sub_1B5E2D240();
  v2 = qword_1EB90D2E8;
  qword_1EB90D2E8 = a1;
}

uint64_t static ClassificationXPCService.interface.modify()
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

id sub_1B5E2860C@<X0>(void *a1@<X8>)
{
  sub_1B5E28498();
  swift_beginAccess();
  v2 = qword_1EB90D2E8;
  *a1 = qword_1EB90D2E8;

  return v2;
}

void sub_1B5E2866C(id *a1)
{
  v1 = *a1;
  sub_1B5E28498();
  swift_beginAccess();
  v2 = qword_1EB90D2E8;
  qword_1EB90D2E8 = v1;
}

uint64_t sub_1B5E28734(uint64_t *a1, uint64_t *a2)
{
  sub_1B5E2D094();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_1B5E2878C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_1B5E2D240();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1B5E28828@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  sub_1B5E2D094();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_1B5E2887C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  sub_1B5E2D240();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t *sub_1B5E288F8()
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18();
  }

  return &qword_1EB90D310;
}

uint64_t static ClassificationXPCService.selectorClasses.getter()
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18();
  }

  sub_1B5E2D094();
}

uint64_t static ClassificationXPCService.selectorClasses.setter(uint64_t a1)
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18();
  }

  sub_1B5E2D108();
  sub_1B5E2D240();
  qword_1EB90D310 = a1;
}

uint64_t static ClassificationXPCService.selectorClasses.modify()
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E28A60@<X0>(void *a1@<X8>)
{
  sub_1B5E288F8();
  swift_beginAccess();
  *a1 = qword_1EB90D310;
}

uint64_t sub_1B5E28AB4(uint64_t *a1)
{
  v1 = *a1;

  sub_1B5E288F8();
  swift_beginAccess();
  qword_1EB90D310 = v1;
}

uint64_t sub_1B5E28B10()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90D2F8);
  v1 = sub_1B5DFD794(v0, qword_1EB90D2F8);
  if (qword_1EB90D8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B5DFD794(v0, qword_1EB90D8F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B5E28BD8()
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8();
  }

  v0 = sub_1B5EA53B0();

  return sub_1B5DFD794(v0, qword_1EB90D2F8);
}

uint64_t static ClassificationXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8();
  }

  v2 = sub_1B5EA53B0();
  v3 = sub_1B5DFD794(v2, qword_1EB90D2F8);
  sub_1B5E2D094();
  sub_1B5E2D1D8(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static ClassificationXPCService.logger.setter(uint64_t a1)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8();
  }

  v2 = sub_1B5EA53B0();
  v3 = sub_1B5DFD794(v2, qword_1EB90D2F8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static ClassificationXPCService.logger.modify()
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1EB90D2F8);
  swift_beginAccess();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E28E34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B5E28BD8();
  swift_beginAccess();
  v3 = sub_1B5EA53B0();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1B5E28EB0(uint64_t a1)
{
  v2 = sub_1B5E28BD8();
  swift_beginAccess();
  v3 = sub_1B5EA53B0();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ClassificationClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ClassificationClient.init()(v0, v1);
  return v0;
}

uint64_t ClassificationClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1B5E2C374(qword_1EB90D4C0, a2, type metadata accessor for ClassificationClient);
  v3 = sub_1B5DF33E0(&qword_1EB90E588, &unk_1B5EB5AE0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_1B5EA4DA0();
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;

  return v2;
}

uint64_t ClassificationClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ClassificationClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B5E29088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ClassificationClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t ClassificationClient.prewarm(for:requestIdentifier:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v12 = sub_1B5E01CF8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = *a1;
  v18 = sub_1B5EA5920();
  sub_1B5DF3658(v16, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = v17;
  *(v19 + 56) = a4;
  *(v19 + 64) = a5;
  *(v19 + 72) = v5;

  sub_1B5E2C264(a4);

  sub_1B5E2A07C(0, 0, v16, &unk_1B5EB5AF8, v19);
}

uint64_t sub_1B5E29288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v13;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 96) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for ClassificationXPCRequest.Request(0);
  *(v8 + 56) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E29330, 0, 0);
}

uint64_t sub_1B5E29330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1B5E2D228();
  a18 = v20;
  a19 = v21;
  sub_1B5E2D114();
  a17 = v19;
  v23 = *(v19 + 56);
  v22 = *(v19 + 64);
  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  LOBYTE(a9) = *(v19 + 96);
  v26 = ClassificationClient.UseCase.identifier.getter();
  v28 = v27;
  swift_storeEnumTagMultiPayload();
  *&a9 = v25;
  *(&a9 + 1) = v24;
  a10 = v26;
  a11 = v28;
  v29 = objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));

  *(v19 + 72) = ClassificationXPCRequest.init(request:requestInfo:)(v22, &a9);
  v30 = swift_task_alloc();
  *(v19 + 80) = v30;
  *v30 = v19;
  v30[1] = sub_1B5E2942C;
  v31 = *(v19 + 48);
  sub_1B5E2D210();

  return sub_1B5E29754(v32);
}

uint64_t sub_1B5E2942C()
{
  sub_1B5E01DFC();
  v3 = v2;
  sub_1B5E2CF58();
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    v9 = sub_1B5E295B8;
  }

  else
  {

    v9 = sub_1B5E29538;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B5E29538()
{
  sub_1B5E01DFC();
  v1 = v0[4];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[5];
    v1(v0[2], v0[3]);
  }

  v4 = v0[8];

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E295B8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v1(v0[2], v0[3]);
  }

  if (qword_1EB90D8E8 != -1)
  {
    sub_1B5E2CF9C();
  }

  v3 = v0[11];
  v4 = sub_1B5EA53B0();
  sub_1B5DFD794(v4, qword_1EB90D8F0);
  v5 = v3;
  v6 = sub_1B5EA5380();
  v7 = sub_1B5EA5A40();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[9];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    sub_1B5E2D1F0(&dword_1B5DED000, v15, v16, "Prewarm failed with error: %{public}@");
    sub_1B5E2CCBC(v12, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  else
  {
  }

  v17 = v0[8];

  sub_1B5E2CF4C();

  return v18();
}

uint64_t sub_1B5E29754(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(type metadata accessor for ClassificationXPCRequest.Request(0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E297E4, 0, 0);
}

uint64_t sub_1B5E297E4()
{
  v32 = v0;
  if (qword_1EB90D8E8 != -1)
  {
    sub_1B5E2CF9C();
  }

  v1 = v0[15];
  v2 = sub_1B5EA53B0();
  v0[18] = sub_1B5DFD794(v2, qword_1EB90D8F0);
  v3 = v1;
  v4 = sub_1B5EA5380();
  v5 = sub_1B5EA5A60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136446722;
    v9 = (v7 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo);
    sub_1B5E2D094();
    v10 = *v9;
    v11 = v9[1];

    v12 = sub_1B5E5B1CC();

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v14 = v9[2];
    v13 = v9[3];

    v15 = sub_1B5E5B1CC();

    *(v8 + 14) = v15;
    *(v8 + 22) = 2082;
    v16 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
    sub_1B5E2D094();
    sub_1B5E2CF64();
    sub_1B5E2CA74(v7 + v16, v6, v17);
    ClassificationXPCRequest.Request.category.getter(&v31);
    sub_1B5E2CAD8(v6);
    sub_1B5E2CFF4();
    v18 = sub_1B5E5B1CC();

    *(v8 + 24) = v18;
    _os_log_impl(&dword_1B5DED000, v4, v5, "ClassificationClient sending request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  else
  {
  }

  v19 = v0[15];
  v20 = v0[16];
  v21 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  v0[19] = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  v22 = (v19 + v21);
  sub_1B5E2D094();
  v24 = *v22;
  v23 = v22[1];
  v0[20] = v23;
  v25 = swift_task_alloc();
  v0[21] = v25;
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  v26 = swift_task_alloc();
  v0[22] = v26;
  v26[2] = v20;
  v26[3] = v24;
  v26[4] = v23;
  v27 = *(MEMORY[0x1E69E88F0] + 4);

  v28 = swift_task_alloc();
  v0[23] = v28;
  v29 = type metadata accessor for ClassificationXPCResult(0);
  *v28 = v0;
  v28[1] = sub_1B5E29B58;

  return MEMORY[0x1EEE6DE18](v0 + 14, &unk_1B5EB5EB0, v25, sub_1B5E2CA48, v26, 0, 0, v29);
}

uint64_t sub_1B5E29B58()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = sub_1B5E29DC4;
  }

  else
  {
    v11 = v3[21];
    v10 = v3[22];
    v12 = v3[20];

    v9 = sub_1B5E29C78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B5E29C78()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = sub_1B5EA5380();
  v5 = sub_1B5EA5A60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = (*(v0 + 120) + *(v0 + 152));
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = *v6;
    v9 = v6[1];

    v10 = sub_1B5E5B1CC();

    *(v7 + 4) = v10;
    sub_1B5E2D1F0(&dword_1B5DED000, v11, v12, "ClassificationClient received response from request with requestIdentifier=%s");
    sub_1B5DF3FB8(v16);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v13 = *(v0 + 136);

  v14 = *(v0 + 8);

  return v14(v2);
}

uint64_t sub_1B5E29DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1B5E2D0E0();
  a23 = v25;
  a24 = v26;
  sub_1B5E2D1E4();
  a22 = v24;
  v27 = v24[24];
  v28 = v24[21];
  v29 = v24[22];
  v30 = v24[20];
  v31 = v24[18];
  v32 = v24[15];

  v33 = v32;
  v34 = v27;
  v35 = sub_1B5EA5380();
  v36 = sub_1B5EA5A40();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v24[17];
    v38 = v24[15];
    v39 = (v38 + v24[19]);
    v40 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a11 = a10;
    *v40 = 136446978;
    v41 = *v39;
    v42 = v39[1];

    v43 = sub_1B5E5B1CC();

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    v44 = v39[2];
    v45 = v39[3];

    v46 = sub_1B5E5B1CC();

    *(v40 + 14) = v46;
    *(v40 + 22) = 2082;
    v47 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
    sub_1B5E2D094();
    sub_1B5E2CF64();
    sub_1B5E2CA74(v38 + v47, v37, v48);
    ClassificationXPCRequest.Request.category.getter(&a12 + 7);
    sub_1B5E2CAD8(v37);
    sub_1B5E2CFF4();
    v49 = v24[24];
    v50 = sub_1B5E5B1CC();

    *(v40 + 24) = v50;
    *(v40 + 32) = 2114;
    v51 = v49;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 34) = v52;
    *a9 = v52;
    _os_log_impl(&dword_1B5DED000, v35, v36, "ClassificationClient request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s failed with error: %{public}@", v40, 0x2Au);
    sub_1B5E2CCBC(a9, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    swift_arrayDestroy();
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v53 = v24[24];
  v54 = v24[17];
  swift_willThrow();

  sub_1B5E2CF4C();
  v55 = v24[24];
  sub_1B5E2D0AC();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E2A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v10 = sub_1B5E01CF8(v9);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  sub_1B5E2CC4C(a3, v29 - v13);
  v15 = sub_1B5EA5920();
  v16 = sub_1B5DF46E0(v14, 1, v15);

  if (v16 == 1)
  {
    sub_1B5E2CCBC(v14, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    sub_1B5E2D1D8(v15);
    (*(v17 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_1B5EA58B0();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_1B5EA56F0() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;

      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      else
      {
        v25 = 0;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v27 = swift_task_create();

      sub_1B5E2CCBC(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v27;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5E2CCBC(a3, &qword_1EB90E590, &qword_1B5EB6080);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t ClassificationClient.PrewarmCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B5EA5D00();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B5E2A3E0@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ClassificationClient.PrewarmCategory.init(rawValue:)(a1);
}

uint64_t ClassificationClient.prewarm(category:)()
{
  v0 = sub_1B5EA4340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  sub_1B5EA4330();
  v5 = sub_1B5EA4300();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  ClassificationClient.prewarm(for:requestIdentifier:)(&v11, v8);
}

uint64_t ClassificationClient.classifyPriority(_:options:)()
{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v6 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v6);
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v6 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v6);
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v6 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v6);
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v4 = *(v3 + 64);
  v5 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v5);
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v4 = *(v3 + 64);
  v5 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v5);
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v4 = *(v3 + 64);
  v5 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v5);
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E2A628()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  v1 = v0 + *(sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0) + 48);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v2 = objc_allocWithZone(sub_1B5E2D198());
  sub_1B5E2D160();

  v3 = sub_1B5E2D108();
  v5 = ClassificationXPCRequest.init(request:requestInfo:)(v3, v4);
  sub_1B5E2D054(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E2D060(v6);
  *v7 = v8;
  sub_1B5E2CFD0(v7);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v9);
}

uint64_t sub_1B5E2A724()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E2A828()
{
  sub_1B5E2CED8();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  sub_1B5E27648(v0[2]);

  v4 = v0[6];

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E2A8B0()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2A988()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  v1 = v0 + *(sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20) + 48);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v2 = objc_allocWithZone(sub_1B5E2D198());
  sub_1B5E2D160();

  v3 = sub_1B5E2D108();
  v5 = ClassificationXPCRequest.init(request:requestInfo:)(v3, v4);
  sub_1B5E2D054(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E2D060(v6);
  *v7 = v8;
  sub_1B5E2CFD0(v7);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v9);
}

uint64_t sub_1B5E2AA84()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E2ABFC()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  v1 = v0 + *(sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0) + 48);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v2 = objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));
  sub_1B5E2D160();

  v3 = sub_1B5E2D108();
  v5 = ClassificationXPCRequest.init(request:requestInfo:)(v3, v4);
  sub_1B5E2D054(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E2D060(v6);
  *v7 = v8;
  sub_1B5E2CFD0(v7);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v9);
}

uint64_t sub_1B5E2AE4C()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E2AF50()
{
  sub_1B5E2CED8();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  sub_1B5E27648(v0[2]);

  v4 = v0[5];

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E2AFD8()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2B17C()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E2B3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2B3F8, 0, 0);
}

uint64_t sub_1B5E2B3F8(uint64_t a1, void (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(v4[3] + 16);
  v4[5] = v5;
  if (v5)
  {
    sub_1B5E2CED8();
    v6 = v4[4];
    v7 = swift_task_alloc();
    v4[6] = v7;
    *(v7 + 16) = v6;
    v8 = *(MEMORY[0x1E69C5B08] + 4);

    v9 = swift_task_alloc();
    v4[7] = v9;
    a4 = type metadata accessor for ClassificationXPCResult(0);
    *v9 = v4;
    v9[1] = sub_1B5E2B4F0;
    a1 = v4[2];
    a2 = sub_1B5E2CBF4;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E2B4F0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B5E2B61C, 0, 0);
  }

  else
  {
    v9 = v3[5];
    v10 = v3[6];

    sub_1B5E2CF4C();

    return v11();
  }
}

uint64_t sub_1B5E2B61C()
{
  sub_1B5E01DFC();
  v1 = v0[5];
  v2 = v0[6];

  sub_1B5E2CF4C();
  v4 = v0[8];

  return v3();
}

void sub_1B5E2B680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_1B5E2CBFC;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B5E2B774;
  v10[3] = &unk_1F2D65E18;
  v9 = _Block_copy(v10);

  [a1 performClassificationRequest:a4 with:v9];
  _Block_release(v9);
}

void sub_1B5E2B774(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1B5E2B800(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_1B5EA5920();
  sub_1B5DF3658(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_1B5E639C0(0, 0, v8, &unk_1B5EB5EC8, v10);

  if (qword_1EB90D8E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B5EA53B0();
  sub_1B5DFD794(v11, qword_1EB90D8F0);

  v12 = sub_1B5EA5380();
  v13 = sub_1B5EA5A60();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16[1] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v12, v13, "Classification request with identifier %{public}s was cancelled by client.", v14, 0xCu);
    sub_1B5DF3FB8(v15);
    MEMORY[0x1B8C8B330](v15, -1, -1);
    MEMORY[0x1B8C8B330](v14, -1, -1);
  }
}

uint64_t sub_1B5E2BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2BA34, 0, 0);
}

void sub_1B5E2BA34()
{
  if (*(v0[3] + 16))
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[2];
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;

    sub_1B5EA4D70();

    sub_1B5E2CF4C();

    v5();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E2BB18(void *a1)
{
  v2 = sub_1B5EA5670();
  [a1 cancelRequestWithIdentifier_];
}

uint64_t ClassificationClient.testTaskCancellation(sleepDuration:)()
{
  sub_1B5E01DFC();
  v1[3] = v0;
  v1[2] = v2;
  v3 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v1[4] = v3;
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v1[5] = sub_1B5E2D0C8();
  v6 = sub_1B5EA4340();
  v1[6] = v6;
  v7 = *(v6 - 8);
  v1[7] = v7;
  v8 = *(v7 + 64);
  v1[8] = sub_1B5E2D0C8();
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E2BC4C()
{
  v16 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_1B5EA4330();
  v7 = sub_1B5EA4300();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  *&v13 = v7;
  *(&v13 + 1) = v9;
  v14 = 0xD000000000000022;
  v15 = 0x80000001B5EA8E10;
  objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));
  v0[9] = ClassificationXPCRequest.init(request:requestInfo:)(v4, &v13);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v11 = sub_1B5E2CEC4(v10);

  return sub_1B5E29754(v11);
}

uint64_t sub_1B5E2BD88()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E2BE8C()
{
  sub_1B5E2CED8();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  sub_1B5E2756C();

  v4 = v0[8];
  v5 = v0[5];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E2BF1C()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  sub_1B5E2CF4C();

  return v4();
}

unint64_t ClassificationClient.UseCase.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      return result;
    case 7:
      result = 0x7966697373616C63;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1B5E2C0A8()
{
  sub_1B5E2D114();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  v10 = sub_1B5E2CEE4(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2C184;
  v12 = sub_1B5E2CEF4();

  return sub_1B5E29288(v12, v13, v2, v3, v4, v8, v5, v6);
}

uint64_t sub_1B5E2C184()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E2C264(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Sage::ClassificationClient::UseCase_optional __swiftcall ClassificationClient.UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5EA5D00();

  if (v3 >= 6)
  {
    v5 = 8;
  }

  else
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B5E2C2D0(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E2C374(qword_1EB90D4C0, a2, type metadata accessor for ClassificationClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B5E2C374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E2C3C0()
{
  result = qword_1EB90E5A0;
  if (!qword_1EB90E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5A0);
  }

  return result;
}

unint64_t sub_1B5E2C424()
{
  result = qword_1EB90E5A8;
  if (!qword_1EB90E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5A8);
  }

  return result;
}

unint64_t sub_1B5E2C49C@<X0>(unint64_t *a1@<X8>)
{
  result = ClassificationClient.UseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_1B5E2C5AC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClassificationClient.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E2C72C()
{
  result = qword_1EB90E5B0;
  if (!qword_1EB90E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5B0);
  }

  return result;
}

unint64_t sub_1B5E2C780()
{
  result = qword_1EB90E5B8;
  if (!qword_1EB90E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5B8);
  }

  return result;
}

uint64_t sub_1B5E2C7D4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B5E2C8CC;

  return v7(a1);
}

uint64_t sub_1B5E2C8CC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E2C9B0()
{
  sub_1B5E2CED8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1B5E2CEE4(v3);
  *v4 = v5;
  v4[1] = sub_1B5E2C184;
  v6 = sub_1B5E2CEF4();

  return sub_1B5E2B3D4(v6, v7, v1);
}

void sub_1B5E2CA48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1B5E2B800(v1, v2);
}

uint64_t sub_1B5E2CA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1B5E2D1D8(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B5E2CAD8(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B5E2CB34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1B5E2CEE4(v6);
  *v7 = v8;
  v7[1] = sub_1B5E2CDCC;
  v9 = sub_1B5E2CEF4();

  return sub_1B5E2BA10(v9, v10, v2, v3, v4, v5);
}

void sub_1B5E2CBEC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B5E2BB18(a1);
}

uint64_t sub_1B5E2CBFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1B5E2CC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B5E2CC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E2CCBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B5DF33E0(a2, a3);
  sub_1B5E2D1D8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E2CD18()
{
  sub_1B5E2CED8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1B5E2CEE4(v3);
  *v4 = v5;
  v4[1] = sub_1B5E2CDCC;
  v6 = sub_1B5E2CEF4();

  return v7(v6);
}

uint64_t sub_1B5E2CDD8()
{

  return swift_once();
}

uint64_t sub_1B5E2CDF8()
{

  return swift_once();
}

uint64_t sub_1B5E2CE18()
{

  return swift_once();
}

__n128 sub_1B5E2CE88(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *v1;
  *(v2 + 56) = *v1;
  *(v2 + 112) = v1[1].n128_u8[0];
  *(v2 + 72) = v1[1].n128_u64[1];
  return result;
}

__n128 sub_1B5E2CEA8(unint64_t a1)
{
  v4 = *v2;
  v3[2].n128_u64[1] = a1;
  v3[3].n128_u64[0] = v4;
  v3[3].n128_u64[1] = *v1;
  result = *(v1 + 8);
  v3[4] = result;
  return result;
}

uint64_t sub_1B5E2CEC4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

uint64_t sub_1B5E2CF04()
{
  *v5 = v4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  return v1;
}

void *sub_1B5E2CF1C()
{
  *v3 = v2;
  v3[1] = v4;
  v3[2] = v0;
  v3[3] = v1;
  return v3;
}

void sub_1B5E2CF34()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 112);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
}

uint64_t sub_1B5E2CF4C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1B5E2CF7C()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E2CF9C()
{

  return swift_once();
}

uint64_t sub_1B5E2CFD0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

uint64_t sub_1B5E2D014(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return type metadata accessor for ClassificationXPCRequest.Request(0);
}

uint64_t sub_1B5E2D034(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return type metadata accessor for ClassificationXPCRequest.Request(0);
}

void sub_1B5E2D06C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
}

void sub_1B5E2D07C()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E2D094()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E2D0C8()
{

  return swift_task_alloc();
}

uint64_t sub_1B5E2D120()
{

  return type metadata accessor for ClassificationXPCRequest(0);
}

uint64_t sub_1B5E2D144()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B5E2D160()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B5E2D17C()
{

  return sub_1B5E2CA74(v2, v1, v0);
}

uint64_t sub_1B5E2D198()
{

  return type metadata accessor for ClassificationXPCRequest(0);
}

id sub_1B5E2D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return ClassificationXPCRequest.init(request:requestInfo:)(v9, &a9);
}

void sub_1B5E2D1F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B5E2D240()
{

  return swift_beginAccess();
}

void sub_1B5E2D258()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v76 = sub_1B5EA5160();
  v4 = sub_1B5DF5DA8(v76);
  v74 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E34D14();
  v73 = v8;
  v9 = sub_1B5DF33E0(&qword_1EB90E5E0, &qword_1B5EB6040);
  sub_1B5E01CF8(v9);
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  sub_1B5E01CF8(v15);
  v17 = *(v16 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFA50C();
  v77 = v19;
  sub_1B5E34DC8();
  v20 = sub_1B5EA55A0();
  v21 = sub_1B5DF5DA8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7F8();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  swift_defaultActor_initialize();
  v32 = type metadata accessor for SessionConfiguration();
  v75 = v32[6];
  sub_1B5EA5420();
  (*(v23 + 104))(v28, *MEMORY[0x1E69C63F8], v20);
  v33 = sub_1B5EA5590();
  v34 = *(v23 + 8);
  v34(v28, v20);
  v34(v31, v20);
  if (v33)
  {
    v35 = v3 + v32[5];
    v36 = sub_1B5EA48D0();
    sub_1B5E10A64(v36, v14);

    v37 = sub_1B5EA4660();
    if (sub_1B5DF46E0(v14, 1, v37) != 1)
    {
      v45 = v77;
      sub_1B5EA4640();
      (*(*(v37 - 8) + 8))(v14, v37);
      v46 = sub_1B5EA42B0();
      sub_1B5DF3658(v45, 0, 1, v46);
      sub_1B5DF4428(v45, &unk_1EB90E780, &unk_1B5EB60F0);
      v47 = (v3 + v32[8]);
      v48 = *v47;
      v49 = v47[1];
      v50 = (v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_identifier);
      *v50 = v48;
      v50[1] = v49;
      v51 = (v3 + v32[7]);
      v52 = v51[1];
      v1[14] = *v51;
      v1[15] = v52;
      sub_1B5E34AEC(v3, v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, type metadata accessor for SessionConfiguration);
      v1[17] = MEMORY[0x1E69E7CD0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position) = 0;

      v53 = v73;
      sub_1B5EA5150();
      (*(v74 + 32))(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice, v53, v76);
      v54 = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools) = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) = v54;
      type metadata accessor for GenerativeExperiencesSessionClientData(0);
      sub_1B5E34D28();
      sub_1B5E34900(v55, v56);
      v57 = sub_1B5EA55E0();
      v58 = v75;
      sub_1B5E2D848(v3 + v75, v57, v78);

      sub_1B5DF33E0(&qword_1EB90E638, &qword_1B5EB60B0);
      v59 = (type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0) - 8);
      v60 = *(*v59 + 72);
      v61 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1B5EAFC20;
      v63 = v62 + v61;
      v64 = sub_1B5EA5450();
      sub_1B5DF5EB8(v64);
      (*(v65 + 16))(v62 + v61, v3 + v58);
      v66 = v59[7];
      sub_1B5EA47C0();
      sub_1B5DF5DF0();
      sub_1B5DF3658(v67, v68, v69, v70);
      v71 = v63 + v59[8];
      v72 = v78[1];
      *v71 = v78[0];
      *(v71 + 16) = v72;
      *(v71 + 32) = v79;
      sub_1B5E34A98();
      v1[16] = v62;
      goto LABEL_6;
    }

    sub_1B5DF4428(v14, &qword_1EB90E5E0, &qword_1B5EB6040);
    sub_1B5EA42B0();
    v38 = v77;
    sub_1B5DF5DF0();
    sub_1B5DF3658(v39, v40, v41, v42);
    sub_1B5DF4428(v38, &unk_1EB90E780, &unk_1B5EB60F0);
  }

  type metadata accessor for GenerativeExperiencesSessionClientData(0);
  swift_defaultActor_destroy();
  sub_1B5E34D60();
  sub_1B5E34A98();
  v43 = *(*v1 + 48);
  v44 = *(*v1 + 52);
  sub_1B5DFA488();
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E2D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v72 = a3;
  v5 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v69 - v7;
  v9 = sub_1B5EA4B10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B5EA55A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - v24;
  v75 = a1;
  sub_1B5EA5420();
  v73 = v15;
  v26 = *(v15 + 88);
  v76 = v14;
  v27 = v26(v25, v14);
  v28 = *MEMORY[0x1E69C63F8];
  v74 = v10;
  if (v27 == v28)
  {
    v80 = 0xD000000000000013;
    v81 = 0x80000001B5EA9170;
    strcpy(v79, "specialToken.");
    HIWORD(v79[1]) = -4864;
    v29 = sub_1B5EA4360();
    sub_1B5DF3658(v8, 1, 1, v29);
    sub_1B5EA4AC0();
    sub_1B5DF4428(v8, &qword_1EB90E5D0, &qword_1B5EB6030);
    v30 = sub_1B5EA4AB0();
    v32 = v31;
    v33 = *(v10 + 8);
    v33(v13, v9);
LABEL_11:
    MEMORY[0x1B8C8A360](v30, v32);

    v41 = v79[0];
    v42 = v79[1];
    v79[0] = 95;
    v79[1] = 0xE100000000000000;
    sub_1B5EA5420();
    if (*(a2 + 16) && (sub_1B5E5AEC0(), (v44 & 1) != 0))
    {
      v45 = *(*(a2 + 56) + 8 * v43);
    }

    else
    {
      v45 = 0;
    }

    v71 = *(v73 + 8);
    v71(v23, v76);
    v78 = v45;
    v46 = sub_1B5EA5ED0();
    MEMORY[0x1B8C8A360](v46);

    MEMORY[0x1B8C8A360](v79[0], v79[1]);

    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    sub_1B5EA5BC0();

    v79[0] = 2128763;
    v79[1] = 0xE300000000000000;
    MEMORY[0x1B8C8A360](v41, v42);

    MEMORY[0x1B8C8A360](0x207B7B7D7D20, 0xE600000000000000);
    v48 = v80;
    v47 = v81;
    MEMORY[0x1B8C8A360](v80, v81);
    MEMORY[0x1B8C8A360](0xD000000000000013, 0x80000001B5EA9150);
    v49 = sub_1B5EA4360();
    sub_1B5DF3658(v8, 1, 1, v49);
    sub_1B5EA4AF0();
    sub_1B5DF4428(v8, &qword_1EB90E5D0, &qword_1B5EB6030);
    v50 = sub_1B5EA4AB0();
    v52 = v51;
    v33(v13, v9);
    MEMORY[0x1B8C8A360](v50, v52);

    MEMORY[0x1B8C8A360](8224032, 0xE300000000000000);
    v53 = v79[0];
    v54 = v79[1];

    sub_1B5EA5420();
    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = a2;
    sub_1B5E5AEC0();
    if (__OFADD__(*(a2 + 16), (v56 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v57 = v55;
      v58 = v56;
      sub_1B5DF33E0(&qword_1EB90E5F8, &unk_1B5EB6050);
      v59 = sub_1B5EA5C70();
      v60 = v79[0];
      if (v59)
      {
        sub_1B5E5AEC0();
        if ((v58 & 1) != (v62 & 1))
        {
LABEL_25:
          sub_1B5EA5F40();
          __break(1u);
          goto LABEL_26;
        }

        v57 = v61;
      }

      if ((v58 & 1) == 0)
      {
        (*(v73 + 16))(v70, v77, v76);
        sub_1B5E9FE10();
      }

      v63 = *(v60 + 56);
      v64 = *(v63 + 8 * v57);
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (!v65)
      {
        *(v63 + 8 * v57) = v66;
        result = (v71)(v77, v76);
        v68 = v72;
        *v72 = v53;
        v68[1] = v54;
        v68[2] = v60;
        v68[3] = v48;
        v68[4] = v47;
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v27 == *MEMORY[0x1E69C63E0])
  {
    v80 = 1919251317;
    v81 = 0xE400000000000000;
    strcpy(v79, "specialToken.");
    HIWORD(v79[1]) = -4864;
    v34 = sub_1B5EA4360();
    sub_1B5DF3658(v8, 1, 1, v34);
    sub_1B5EA4AE0();
    sub_1B5DF4428(v8, &qword_1EB90E5D0, &qword_1B5EB6030);
    v30 = sub_1B5EA4AB0();
    v32 = v35;
    v36 = v74;
LABEL_10:
    v33 = *(v36 + 8);
    v33(v13, v9);
    goto LABEL_11;
  }

  v37 = v74;
  if (v27 == *MEMORY[0x1E69C6400])
  {
    v80 = 0x6E61747369737361;
    v81 = 0xE900000000000074;
    strcpy(v79, "specialToken.");
    HIWORD(v79[1]) = -4864;
    v38 = sub_1B5EA4360();
    sub_1B5DF3658(v8, 1, 1, v38);
    sub_1B5EA4B00();
LABEL_9:
    sub_1B5DF4428(v8, &qword_1EB90E5D0, &qword_1B5EB6030);
    v30 = sub_1B5EA4AB0();
    v32 = v40;
    v36 = v37;
    goto LABEL_10;
  }

  if (v27 == *MEMORY[0x1E69C63D8])
  {
    v80 = 1819242356;
    v81 = 0xE400000000000000;
    strcpy(v79, "specialToken.");
    HIWORD(v79[1]) = -4864;
    v39 = sub_1B5EA4360();
    sub_1B5DF3658(v8, 1, 1, v39);
    sub_1B5EA4AD0();
    goto LABEL_9;
  }

LABEL_26:
  result = sub_1B5EA5CA0();
  __break(1u);
  return result;
}

void sub_1B5E2E05C()
{
  sub_1B5DFD8A8();
  v61[1] = v2;
  v61[2] = v1;
  v62 = v3;
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E34D14();
  v65 = v10;
  sub_1B5E34DC8();
  v61[0] = sub_1B5EA5450();
  v11 = sub_1B5DF5DA8(v61[0]);
  v66 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E34D14();
  v16 = v15;
  v17 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v17);
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v61 - v21;
  v23 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  sub_1B5E34DAC();
  while (1)
  {
    v24 = v0[16];
    v25 = *(v24 + 16);
    if (*(v0 + v23) >= v25 - 1)
    {
      break;
    }

    sub_1B5E34E78();
    if (v25)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[16] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B5E34A84(v24);
        v24 = v32;
      }

      if (!*(v24 + 16))
      {
        __break(1u);
        return;
      }

      v27 = *(v7 + 80);
      sub_1B5E34EF8();
      v30 = v24 + v28 + *(v7 + 72) * v29;
      *(v24 + 16) = v29;
      v0[16] = v24;
      sub_1B5E34A20(v30, v22);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    sub_1B5DF3658(v22, v31, 1, v4);
    sub_1B5DF4428(v22, &qword_1EB90E5D8, &qword_1B5EB6038);
    swift_endAccess();
  }

  if (v0[15])
  {
    v33 = v0[14];
    v34 = v62;
    sub_1B5E30FD0();
    sub_1B5E1A084();
    sub_1B5EA5470();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v35, v36, v37, v38);
    v39 = sub_1B5EA4E40();
    sub_1B5DF3658(v34, 0, 1, v39);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v67 = MEMORY[0x1E69E7CC0];

      sub_1B5E5BF1C();
      v41 = *(v7 + 80);
      sub_1B5E34D90();
      v43 = v24 + v42;
      v44 = *(v7 + 72);
      v40 = v67;
      v45 = (v66 + 16);
      v63 = v66 + 32;
      v64 = v44;
      v46 = v61[0];
      do
      {
        v47 = v65;
        sub_1B5E34AEC(v43, v65, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
        (*v45)(v16, v47, v46);
        sub_1B5E34A98();
        v67 = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1B5E34E0C(v48);
          sub_1B5E5BF1C();
          v40 = v67;
        }

        *(v40 + 16) = v49 + 1;
        sub_1B5E34D40();
        (*(v51 + 32))(v40 + v50 + *(v51 + 72) * v49, v16, v46);
        v43 += v64;
        --v25;
      }

      while (v25);
    }

    v52 = sub_1B5EA5460();
    v67 = v40;
    sub_1B5E341A8(v52);
    sub_1B5EA5480();
    sub_1B5EA5470();
    v53 = sub_1B5E34D9C();
    sub_1B5DF3658(v53, v54, v55, v56);
    sub_1B5EA4E40();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v57, v58, v59, v60);
  }

  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}