uint64_t sub_100078A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_1001D00F0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_1001CFD60();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = sub_1001D0040();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v13 = sub_1001D0180();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100078C98, 0, 0);
}

uint64_t sub_100078C98()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[8];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v3);
  v0[5] = v3;
  v0[6] = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v5 = sub_10003B47C(v0 + 2);
  (*(v2 + 16))(v5, v1, v3);
  v6 = sub_1001CFEC0();
  (*(v2 + 8))(v1, v3);
  sub_100011CF0(v0 + 2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "validating attestation using mux validator", v10, 2u);
    }

    v11 = v0[8];

    v12 = *(sub_100011AC0(&qword_100229520, &unk_1001DEF70) + 48);
    v13 = async function pointer to Validator.validate(bundle:)[1];
    v14 = swift_task_alloc();
    v0[25] = v14;
    v15 = sub_1001D0000();
    v16 = sub_10008A830(&qword_1002295B0, &type metadata accessor for MuxValidator);
    *v14 = v0;
    v14[1] = sub_100078FEC;
    v17 = v0[21];
    v18 = v0[17];
    v19 = v0[13];
  }

  else
  {
    if (v9)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "validating attestation using direct node validator", v20, 2u);
    }

    v21 = v0[8];

    v22 = *(sub_100011AC0(&qword_100229520, &unk_1001DEF70) + 44);
    v23 = async function pointer to Validator.validate(bundle:)[1];
    v24 = swift_task_alloc();
    v0[27] = v24;
    v15 = sub_1001D0020();
    v16 = sub_10008A830(&qword_1002295A8, &type metadata accessor for NodeValidator);
    *v24 = v0;
    v24[1] = sub_100079310;
    v17 = v0[20];
    v18 = v0[16];
    v19 = v0[12];
  }

  v25 = v0[9];

  return Validator.validate(bundle:)(v17, v18, v19, v25, v15, v16);
}

uint64_t sub_100078FEC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100079258;
  }

  else
  {
    v3 = sub_100079100;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100079100()
{
  v1 = v0[21];
  v16 = v0[24];
  v17 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v15 = v0[13];
  v18 = v0[16];
  v19 = v0[12];
  v6 = v0[11];
  v13 = v0[17];
  v14 = v0[10];
  v7 = v0[7];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079258()
{
  v1 = v0[26];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100079310()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_10007957C;
  }

  else
  {
    v3 = sub_100079424;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100079424()
{
  v1 = v0[20];
  v16 = v0[24];
  v17 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v15 = v0[12];
  v18 = v0[17];
  v19 = v0[13];
  v6 = v0[11];
  v13 = v0[16];
  v14 = v0[10];
  v7 = v0[7];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007957C()
{
  v1 = v0[28];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];

  return v9();
}

void sub_100079634()
{
  oslog = sub_1001D0E50();
  v0 = sub_1001D1DE0();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136315138;
    v3 = sub_1001D2610();
    v5 = sub_1000954E0(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v0, "latency issue: validate is taking longer than expected, delay=%s", v1, 0xCu);
    sub_100011CF0(v2);
  }
}

uint64_t sub_10007974C(uint64_t a1, int a2)
{
  result = sub_100079DE8(a1);
  if (!v2 && ((result ^ a2) & 1) != 0)
  {
    v5 = result;
    v6 = sub_1001D0E50();
    v7 = sub_1001D1DE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136446466;
      if (a2)
      {
        v9 = 0x79786F7270;
      }

      else
      {
        v9 = 0x746365726964;
      }

      if (a2)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      v11 = sub_1000954E0(v9, v10, &v16);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      if (v5)
      {
        v12 = 0x79786F7270;
      }

      else
      {
        v12 = 0x746365726964;
      }

      if (v5)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_1000954E0(v12, v13, &v16);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "node kind mismatch expectedNodeKind=%{public}s, validatedNodeKind=%{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_100089BE4();
    swift_allocError();
    *v15 = 5920;
    *(v15 + 8) = &_swiftEmptyArrayStorage;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100079920()
{
  v0 = sub_1001D0030();
  v2 = v0;
  v3 = v1;
  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(v0) - v0;
  if (__OFSUB__(HIDWORD(v0), v0))
  {
    goto LABEL_15;
  }

  v5 = v5;
LABEL_10:
  if (__OFADD__(v5, 9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v9 = sub_10008FB20(v5 + 9);
  v20 = v9;
  v21 = v10;
  if (v10 >> 62 == 2)
  {
    v11 = *(v9 + 24);
  }

  v18 = sub_100011AC0(&qword_100229598, &qword_1001D6900);
  v19 = sub_100024B78(&qword_1002295A0, &qword_100229598, &qword_1001D6900);
  LOBYTE(v17[0]) = 0;
  v16 = *sub_100024DC8(v17, v18);
  sub_1001CFB90();
  sub_100011CF0(v17);
  sub_1001CFBB0();
  v18 = &type metadata for Data;
  v19 = &protocol witness table for Data;
  v17[0] = v2;
  v17[1] = v3;
  v12 = sub_100024DC8(v17, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_100012038(v2, v3);
  sub_10008F954(v13, v14);
  sub_100011CF0(v17);
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_100011E48(v2, v3);
  return v20;
}

uint64_t sub_100079B54(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1001CFFB0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100079C14, 0, 0);
}

uint64_t sub_100079C14()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v3 = 5913;
    *(v3 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = v0[7];
    sub_100089C38(v4, *(v1 + 24));
    sub_100012038(v4, v2);
    sub_1001CFFA0();
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001CFF80();
    sub_10002683C(v4, v2);
    (*(v10 + 8))(v9, v11);
    v12 = v0[2];
    v13 = v0[3];

    v14 = v0[1];

    return v14(v12, v13);
  }
}

uint64_t sub_100079DE8(uint64_t a1)
{
  v2 = sub_1001D00F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229590, &unk_1001D6BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_1001D00A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v53 = &v50 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v50 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v50 - v27;
  (*(v3 + 16))(v7, a1, v2);
  sub_1001D0090();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v28, v12, v13);
    v33 = *(v14 + 16);
    v33(v25, v28, v13);
    v34 = (*(v14 + 88))(v25, v13);
    v35 = v34;
    v36 = enum case for PCC.AttestationType.computeNode(_:);
    if (v34 == enum case for PCC.AttestationType.computeNode(_:))
    {
      (*(v14 + 8))(v28, v13);
      (*(v14 + 96))(v25, v13);
      v37 = sub_1001D0080();
    }

    else
    {
      if (v34 != enum case for PCC.AttestationType.proxyNode(_:))
      {
        v39 = v53;
        v33(v53, v28, v13);
        v40 = sub_1001D0E50();
        v29 = sub_1001D1DE0();
        if (os_log_type_enabled(v40, v29))
        {
          v41 = swift_slowAlloc();
          v50 = v41;
          v54 = swift_slowAlloc();
          v56 = v54;
          *v41 = 136315138;
          v51 = v29;
          v42 = v53;
          v33(v52, v53, v13);
          v43 = sub_1001D1820();
          v55 = v28;
          v44 = v25;
          v46 = v45;
          v47 = *(v14 + 8);
          v47(v42, v13);
          v48 = sub_1000954E0(v43, v46, &v56);
          v25 = v44;
          v28 = v55;

          v29 = v50;
          *(v50 + 1) = v48;
          _os_log_impl(&_mh_execute_header, v40, v51, "attestation kind can't be determined from attestationType=%s", v29, 0xCu);
          sub_100011CF0(v54);
        }

        else
        {

          v47 = *(v14 + 8);
          v47(v39, v13);
        }

        sub_100089BE4();
        swift_allocError();
        *v49 = 5919;
        *(v49 + 8) = &_swiftEmptyArrayStorage;
        swift_willThrow();
        v47(v28, v13);
        v47(v25, v13);
        return v29;
      }

      (*(v14 + 8))(v28, v13);
      (*(v14 + 96))(v25, v13);
      v37 = sub_1001D0070();
    }

    v29 = v35 != v36;
    (*(*(v37 - 8) + 8))(v25, v37);
    return v29;
  }

  sub_100011F00(v12, &qword_100229590, &unk_1001D6BE0);
  v29 = sub_1001D0E50();
  v30 = sub_1001D1DE0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "attestation kind can't be determined from attestationType=nil", v31, 2u);
  }

  sub_100089BE4();
  swift_allocError();
  *v32 = 5919;
  *(v32 + 8) = &_swiftEmptyArrayStorage;
  swift_willThrow();
  return v29;
}

uint64_t sub_10007A40C(uint64_t a1, unint64_t a2)
{
  sub_1001D0170();
  sub_1001D1840();

  v4 = os_variant_allows_internal_security_policies();

  if (!v4)
  {
LABEL_10:

    return a1;
  }

  sub_1001D0C80();
  if ((sub_1001D0C70() & 1) == 0)
  {
    if (qword_100227740 != -1)
    {
      swift_once();
    }

    v6 = sub_1001D0E60();
    sub_10003A37C(v6, qword_1002298F8);
    v7 = sub_1001D0E50();
    v8 = sub_1001D1E00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "not appending csf bypass because no eligibility bypass", v9, 2u);
    }

    goto LABEL_10;
  }

  sub_100011EAC();
  v18 = a1;
  v19 = a2;
  if (sub_1001D1F40())
  {

    v5._countAndFlagsBits = 44;
  }

  else
  {

    v5._countAndFlagsBits = 59;
  }

  v5._object = 0xE100000000000000;
  sub_1001D18B0(v5);

  v20._object = 0x80000001001E3DD0;
  v20._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v20);

  a1 = v18;
  v10 = v19;
  v11 = qword_100227740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002298F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000954E0(a1, v10, &v18);
    _os_log_impl(&_mh_execute_header, v13, v14, "appended bypass: %s", v15, 0xCu);
    sub_100011CF0(v16);
  }

  return a1;
}

uint64_t sub_10007A708@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100088598(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_100088534(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1001CFBC0();
    v15 = v14;
    result = sub_100011E48(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_10007A850()
{
  v1 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v19 - v5;
  v7 = *(*v0 + 120);
  sub_1001D0580();
  sub_1001D05B0();
  sub_1001D0210();
  v8 = *(v2 + 8);
  v8(v6, v1);
  v20 = sub_10007A40C(v21, v22);
  v10 = v9;

  sub_1001D0590();
  sub_1001D0210();
  v8(v6, v1);
  v11 = v10;
  v12 = sub_10007A40C(v21, v22);
  v14 = v13;

  v15 = sub_1001D0E50();
  v16 = sub_1001D1E00();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1000954E0(v20, v11, &v21);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000954E0(v12, v14, &v21);
    _os_log_impl(&_mh_execute_header, v15, v16, "fetching with lttIssuer=%s, ottIssuer=%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_100015A10(0, &qword_1002295F8, NSPPrivateAccessTokenFetcher_ptr);
  return sub_100096398();
}

uint64_t sub_10007AB70(uint64_t a1, uint64_t a2)
{
  v3[102] = v2;
  v3[101] = a2;
  v3[95] = a1;
  v4 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v3[103] = swift_task_alloc();
  v5 = sub_1001D20D0();
  v3[104] = v5;
  v6 = *(v5 - 8);
  v3[105] = v6;
  v3[106] = *(v6 + 64);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v7 = sub_1001D20F0();
  v3[109] = v7;
  v8 = *(v7 - 8);
  v3[110] = v8;
  v3[111] = *(v8 + 64);
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();

  return _swift_task_switch(sub_10007ACF4, 0, 0);
}

uint64_t sub_10007ACF4()
{
  v1 = *(v0 + 904);
  sub_1001D20E0();

  return _swift_task_switch(sub_10007AD5C, 0, 0);
}

uint64_t sub_10007AD5C()
{
  v1 = v0[113];
  v18 = v0[112];
  v19 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[103];
  v20 = v0[106];
  v21 = v0[102];
  sub_10008A830(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v0[93] = 0x158E460913D00000;
  v0[94] = 1;
  sub_10008A830(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[114] = v9;
  v0[115] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v18, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v19 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v18, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6930, v13);
  v0[116] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_100089FF8;
  v15[4] = v21;
  v16 = swift_allocObject();
  v0[117] = v16;
  *(v16 + 16) = &unk_1001D6938;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();

  return _swift_task_switch(sub_10007B0BC, 0, 0);
}

uint64_t sub_10007B0BC()
{
  v1 = v0[101];
  v2 = swift_allocObject();
  v0[118] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[119] = v4;
  *v4 = v0;
  v4[1] = sub_10007B1B0;

  return sub_10007C44C((v0 + 87), &unk_1001D6950, v2);
}

uint64_t sub_10007B1B0()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v7 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = sub_10007B760;
  }

  else
  {
    v5 = *(v2 + 944);

    v4 = sub_10007B2CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007B2CC()
{
  v1 = *(v0 + 928);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10007B380()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[104];

  v4(v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10007B44C, 0, 0);
}

uint64_t sub_10007B44C()
{
  v41 = v0;
  v1 = v0[102];
  v2 = v0[87];
  v3 = v0[88];
  v4 = v0[89];
  v5 = v0[90];
  v6 = v0[91];
  v7 = v0[92];
  sub_100012038(v2, v3);
  sub_100012038(v4, v5);
  sub_100012038(v6, v7);
  v8 = v7;
  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();
  sub_100011E48(v2, v3);
  sub_100011E48(v4, v5);
  sub_100011E48(v6, v8);
  v38 = v6;
  v39 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v11 = 136315650;
    sub_100012038(v2, v3);
    v36 = v10;
    v12 = sub_1001CFB50();
    log = v9;
    v14 = v13;
    sub_100011E48(v2, v3);
    v15 = sub_1000954E0(v12, v14, &v40);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_100012038(v4, v5);
    v16 = sub_1001CFB50();
    v18 = v17;
    sub_100011E48(v4, v5);
    v19 = sub_1000954E0(v16, v18, &v40);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    sub_100012038(v6, v8);
    v20 = sub_1001CFB50();
    v22 = v21;
    sub_100011E48(v6, v8);
    v23 = sub_1000954E0(v20, v22, &v40);

    *(v11 + 24) = v23;
    _os_log_impl(&_mh_execute_header, log, v36, "fetched ltt=%s, ott=%s; salt=%s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = v5;
  v25 = v4;
  v26 = v3;
  v27 = v2;
  v28 = v0[113];
  v29 = v0[112];
  v30 = v0[108];
  v31 = v0[107];
  v32 = v0[103];
  v33 = v0[95];

  *v33 = v27;
  v33[1] = v26;
  v33[2] = v25;
  v33[3] = v24;
  v33[4] = v38;
  v33[5] = v39;
  v34 = v0[1];

  return v34();
}

uint64_t sub_10007B760()
{
  v1 = *(v0 + 944);

  return _swift_task_switch(sub_10007B7C8, 0, 0);
}

uint64_t sub_10007B7C8()
{
  v1 = *(v0 + 928);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10007B87C()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[104];

  v4(v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10007B948, 0, 0);
}

uint64_t sub_10007B948()
{
  v1 = v0[120];
  v2 = v0[102];
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[120];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetch failed with error=%@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  v9 = v0[120];
  v10 = v0[113];
  v11 = v0[112];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[103];

  swift_willThrow();

  v15 = v0[1];
  v16 = v0[120];

  return v15();
}

uint64_t sub_10007BAF0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_10007BB90;

  return sub_10007AB70((v2 + 2), a1);
}

uint64_t sub_10007BB90()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *(*v1 + 24);
  *(*v1 + 88) = *(*v1 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);

  if (v0)
  {
    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    sub_100011E48(v7, v8);
    sub_100011E48(v5, v6);

    return _swift_task_switch(sub_10007BD4C, 0, 0);
  }
}

uint64_t sub_10007BD4C()
{
  v20 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  isa = sub_1001CFBE0().super.isa;
  [v3 saveTokenToCache:isa];

  sub_100012038(v2, v1);
  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();
  sub_100011E48(v2, v1);
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_100012038(v10, v9);
    v13 = sub_1001CFB50();
    v15 = v14;
    sub_100011E48(v10, v9);
    v16 = sub_1000954E0(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "saved ott=%s", v11, 0xCu);
    sub_100011CF0(v12);

    sub_100011E48(v10, v9);
  }

  else
  {

    sub_100011E48(v10, v9);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10007BF30(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10007BFFC, 0, 0);
}

uint64_t sub_10007BFFC()
{
  sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
  *(v0 + 232) = sub_1001D1E40();

  return _swift_task_switch(sub_10007C080, 0, 0);
}

uint64_t sub_10007C080()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[28];
  v6 = v0[29];
  v10 = v0 + 26;
  v9 = v0[26];
  v8 = v10[1];
  v13 = v1[25];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10007C24C;
  swift_continuation_init();
  v1[17] = v9;
  v11 = sub_10003B47C(v1 + 14);
  sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1A80();
  (*(v8 + 32))(v11, v7, v9);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10007CDF0;
  v1[13] = &unk_10021EBC0;
  [v13 fetchLinkedTokenPairWithQueue:v14 completionHandler:v4];
  (*(v8 + 8))(v11, v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_10007C24C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 232);
  if (*(*v0 + 48))
  {
    v5 = *(v2 + 224);
    v6 = *(v1 + 48);
    swift_willThrow();

    v7 = *(v3 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 160);
    *(v2 + 240) = *(v2 + 144);
    *(v2 + 256) = v9;
    *(v2 + 272) = *(v2 + 176);

    return _swift_task_switch(sub_10007C3D4, 0, 0);
  }
}

uint64_t sub_10007C3D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  *v2 = *(v0 + 240);
  v2[1] = v3;
  v2[2] = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1001CFDA0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1001D02F0();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1001D0E60();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v3[14] = *(v12 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007C614, 0, 0);
}

uint64_t sub_10007C614()
{
  sub_1001D1C50();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v30 = *(v0 + 120);
  v31 = *(v0 + 112);
  v3 = *(v0 + 88);
  v29 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v33 = v9;
  v34 = *(v0 + 40);
  v32 = *(v0 + 24);
  (*(v5 + 104))(v3, enum case for TC2LogCategory.daemon(_:), v4);
  sub_1001D08B0();
  (*(v5 + 8))(v3, v4);
  sub_1001CFD90();
  v10 = sub_1001CFD70();
  v27 = v11;
  v28 = v10;
  *(v0 + 136) = v11;
  (*(v6 + 8))(v7, v8);
  sub_100011AC0(&qword_1002295C8, &qword_1001D6960);
  v12 = swift_allocObject();
  *(v0 + 144) = v12;
  *(v0 + 184) = 0;
  *(v12 + 16) = 0;
  *(v12 + 58) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 24) = &_swiftEmptyArrayStorage;
  *(v12 + 73) = 0;
  v13 = sub_1001D1BA0();
  (*(*(v13 - 8) + 56))(v34, 1, 1, v13);
  (*(v2 + 16))(v30, v1, v29);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = (v31 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v2 + 32))(v17 + v14, v30, v29);
  v18 = (v17 + v15);
  *v18 = v28;
  v18[1] = v27;
  v19 = (v17 + v16);
  *v19 = v32;
  v19[1] = v33;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v12;

  v20 = sub_10015C9F4(0, 0, v34, &unk_1001D6970, v17);
  *(v0 + 152) = v20;
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  v21[2] = v1;
  v21[3] = v28;
  v21[4] = v27;
  v21[5] = v20;
  v21[6] = v12;
  v22 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v23 = swift_task_alloc();
  *(v0 + 168) = v23;
  v24 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v23 = v0;
  v23[1] = sub_10007C9E8;
  v25 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v25, &unk_1001D6980, v12, sub_10008A7F4, v21, 0, 0, v24);
}

uint64_t sub_10007C9E8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_10007CBE8;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 136);

    v4 = sub_10007CB10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007CB10()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  (*(v6 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007CBE8()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);
  v8 = v0[22];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

void sub_10007CCCC()
{
  oslog = sub_1001D0E50();
  v0 = sub_1001D1DE0();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136315138;
    v3 = sub_1001D2610();
    v5 = sub_1000954E0(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v0, "latency issue: fetchLinkedTokenPair is taking longer than expected, delay=%s", v1, 0xCu);
    sub_100011CF0(v2);
  }
}

void sub_10007CDF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_100024DC8((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v9 = a5;
    sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
    sub_1001D1A90();
  }

  else
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    sub_1001CFC00();

    sub_1001CFC00();
    sub_1001CFC00();

    sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
    sub_1001D1AA0();
  }
}

uint64_t sub_10007CF08(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_1001D0980() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10007CF98, 0, 0);
}

uint64_t sub_10007CF98()
{
  v83 = v0;
  v1 = *(v0 + 40);
  v2 = sub_100011AC0(&qword_100229558, &qword_1001D68B8);
  *(v0 + 56) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 40);
    v10 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v63 = swift_task_alloc();
        *(v0 + 64) = v63;
        *v63 = v0;
        v64 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      result = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v57 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v57);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 40) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (v5)
    {
      swift_willThrow();
      swift_errorRetain();
      v77 = *(v0 + 48);

      v78 = *(v0 + 8);
LABEL_121:

      return v78();
    }

    v67 = *(v0 + 32);
    v68 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
LABEL_120:
    v80 = *(v0 + 48);

    v78 = *(v0 + 8);
    goto LABEL_121;
  }

  v58 = *(v0 + 40);
  if (!v5)
  {
    v65 = 0;
    v66 = 0xC000000000000000;
LABEL_119:
    v73 = *(v0 + 48);
    v74 = *(v0 + 32);
    v75 = v58 + *(v0 + 128);
    *v75 = 0;
    *(v75 + 8) = 2;
    v76 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v65;
    *(v0 + 24) = v66;
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    sub_100012038(v65, v66);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v79 = *(v0 + 32);
    sub_100011E48(v65, v66);
    (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
    goto LABEL_120;
  }

  v59 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v59;
  v60 = *(v58 + v59);
  v61 = *(v58 + v59 + 8);
  v62 = v61 >> 62;
  if ((v61 >> 62) > 1)
  {
    if (v62 != 2)
    {
      goto LABEL_112;
    }

    v70 = *(v60 + 16);
    v69 = *(v60 + 24);
    v17 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v17)
    {
      goto LABEL_142;
    }

    if (v71 < v5)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v60, v61);
    sub_10007A708(v5, v60, v61, v81);
    v66 = *(&v81[0] + 1);
    v65 = *&v81[0];
    sub_10008570C(v5);
    v58 = *(v0 + 40);
    goto LABEL_119;
  }

  if (v62)
  {
    if (__OFSUB__(HIDWORD(v60), v60))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v60) - v60 < v5)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v61) >= v5)
  {
    goto LABEL_118;
  }

LABEL_112:
  v63 = swift_task_alloc();
  *(v0 + 96) = v63;
  *v63 = v0;
  v64 = sub_10007E98C;
LABEL_113:
  v63[1] = v64;
  v72 = *(v0 + 40);

  return sub_100085848();
}

uint64_t sub_10007D7A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v8 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v6 = sub_10007E184;
  }

  else
  {
    v6 = sub_10007D8B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10007D8B8()
{
  v91 = v0;
  v1 = *(v0 + 80);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 40);
    v3 = (v2 + *(v0 + 132));
    v4 = *v3;
    v5 = v3[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      if (v4 == v4 >> 32)
      {
LABEL_11:
        v11 = v2 + *(v0 + 128);
        *v11 = 0;
        *(v11 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v10 = v2 + *(v0 + 128);
    sub_100089CEC();
    *v10 = swift_allocError();
    *(v10 + 8) = 1;
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 40) + *(v0 + 132);
    v9 = *(v0 + 80);
    sub_1001CFC30();
    sub_10002683C(v7, v1);
  }

LABEL_12:
  v12 = *(v0 + 88);
  v13 = (*(v0 + 40) + *(v0 + 128));
  v14 = *v13;
  v15 = *(v13 + 8);
  while (v15 == 2)
  {
    v18 = *(v0 + 40);
    v19 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v19;
    v20 = v18 + v19;
    v21 = *(v18 + v19);
    v22 = *(v18 + v19 + 8);
    v23 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_115;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v26)
      {
        goto LABEL_150;
      }

      if (v27 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v23)
    {
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_149;
      }

      if (HIDWORD(v21) - v21 < 4)
      {
LABEL_115:
        v72 = swift_task_alloc();
        *(v0 + 64) = v72;
        *v72 = v0;
        v73 = sub_10007D7A0;
        goto LABEL_124;
      }
    }

    else if (BYTE6(v22) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v23 == 2)
    {
      v28 = *(v21 + 16);
      v29 = *(v21 + 24);
    }

    else
    {
      if (v23 != 1)
      {
        v28 = 0;
        v30 = 0;
        v29 = BYTE6(v22);
        v31 = BYTE6(v22);
        goto LABEL_35;
      }

      v28 = v21;
      v29 = v21 >> 32;
    }

    if (v29 < v28)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      sub_1001CF890();
LABEL_157:
      __break(1u);
LABEL_158:
      result = sub_1001CF890();
      __break(1u);
LABEL_159:
      __break(1u);
      return result;
    }

    if (v23 == 2)
    {
      v30 = *(v21 + 16);
      v31 = *(v21 + 24);
    }

    else
    {
      v30 = v21;
      v31 = v21 >> 32;
    }

LABEL_35:
    if (v31 < v29 || v29 < v30)
    {
      goto LABEL_138;
    }

    v26 = __OFSUB__(v29, v28);
    v33 = v29 - v28;
    if (v26)
    {
      goto LABEL_139;
    }

    if (v33 < 4)
    {
      if (v23 != 2)
      {
        if (v23 != 1)
        {
          goto LABEL_63;
        }

        v34 = v21 >> 32;
LABEL_58:
        if (v34 < v21)
        {
          goto LABEL_137;
        }

        goto LABEL_63;
      }

      v34 = *(v21 + 24);
      goto LABEL_60;
    }

    v34 = v28 + 4;
    if (__OFADD__(v28, 4))
    {
      goto LABEL_146;
    }

    if (v23 == 2)
    {
      v35 = *(v21 + 16);
      v36 = *(v21 + 24);
    }

    else if (v23 == 1)
    {
      v35 = v21;
      v36 = v21 >> 32;
    }

    else
    {
      v35 = 0;
      v36 = BYTE6(v22);
    }

    if (v36 < v34 || v34 < v35)
    {
      goto LABEL_147;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v34 < *(v21 + 16))
      {
        goto LABEL_137;
      }

      goto LABEL_63;
    }

    if (v34 < 0)
    {
      goto LABEL_137;
    }

LABEL_63:
    v38 = sub_1001CFBC0();
    v40 = v39;
    v41 = *v20;
    v42 = *(v20 + 8);
    v43 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v43 != 2)
      {
        v46 = 0;
        v44 = 0;
        v47 = 0;
        v45 = 0;
        goto LABEL_74;
      }

      v44 = *(v41 + 16);
      v46 = *(v41 + 24);
    }

    else
    {
      if (!v43)
      {
        v44 = 0;
        v45 = 0;
        v46 = BYTE6(v42);
        v47 = BYTE6(v42);
        goto LABEL_74;
      }

      v44 = v41;
      v46 = v41 >> 32;
    }

    if (v46 < v44)
    {
      goto LABEL_140;
    }

    if (v43 == 2)
    {
      v45 = *(v41 + 16);
      v47 = *(v41 + 24);
    }

    else
    {
      v45 = v41;
      v47 = v41 >> 32;
    }

LABEL_74:
    if (v47 < v46 || v46 < v45)
    {
      goto LABEL_141;
    }

    v26 = __OFSUB__(v46, v44);
    v48 = v46 - v44;
    if (v26)
    {
      goto LABEL_142;
    }

    if (v48 < 4)
    {
      goto LABEL_148;
    }

    v49 = v44 + 4;
    if (__OFADD__(v44, 4))
    {
      goto LABEL_143;
    }

    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v50 = *(v41 + 16);
        v51 = *(v41 + 24);
      }

      else
      {
        v51 = 0;
        v50 = 0;
      }
    }

    else if (v43)
    {
      v50 = v41;
      v51 = v41 >> 32;
    }

    else
    {
      v50 = 0;
      v51 = BYTE6(v42);
    }

    if (v51 < v49 || v49 < v50)
    {
      goto LABEL_144;
    }

    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v52 = *(v41 + 24);
      }

      else
      {
        v52 = 0;
      }
    }

    else if (v43)
    {
      v52 = v41 >> 32;
    }

    else
    {
      v52 = BYTE6(v42);
    }

    sub_100012038(*v20, *(v20 + 8));
    sub_100011E48(v41, v42);
    if (v52 < v49)
    {
      goto LABEL_145;
    }

    v53 = sub_1001CFBC0();
    v55 = v54;
    sub_100011E48(v41, v42);
    *v20 = v53;
    *(v20 + 8) = v55;
    v56 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v56 != 2)
      {
        sub_100011E48(v38, v40);
        v16 = 0;
        goto LABEL_14;
      }

      v57 = *(v38 + 16);
      v58 = sub_1001CF870();
      if (!v58)
      {
        goto LABEL_156;
      }

      v59 = v58;
      v60 = sub_1001CF8A0();
      if (__OFSUB__(v57, v60))
      {
        goto LABEL_152;
      }

      v61 = (v57 - v60 + v59);
      sub_1001CF890();
      if (!v61)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (!v56)
      {
        sub_100011E48(v38, v40);
        v16 = bswap32(v38);
        goto LABEL_14;
      }

      if (v38 > v38 >> 32)
      {
        goto LABEL_151;
      }

      v62 = sub_1001CF870();
      if (!v62)
      {
        goto LABEL_158;
      }

      v63 = v62;
      v64 = sub_1001CF8A0();
      if (__OFSUB__(v38, v64))
      {
        goto LABEL_153;
      }

      v61 = (v38 - v64 + v63);
      result = sub_1001CF890();
      if (!v61)
      {
        goto LABEL_159;
      }
    }

    v66 = *v61;
    sub_100011E48(v38, v40);
    v16 = bswap32(v66);
LABEL_14:
    v15 = 0;
    v17 = *(v0 + 40) + *(v0 + 128);
    v14 = v16;
    *v17 = v16;
    *(v17 + 8) = 0;
  }

  if (v15)
  {
    if (v14)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v76 = *(v0 + 32);
      v77 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
      (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    }

    goto LABEL_133;
  }

  v67 = *(v0 + 40);
  if (!v14)
  {
    v74 = 0;
    v75 = 0xC000000000000000;
    goto LABEL_130;
  }

  v68 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v68;
  v69 = *(v67 + v68);
  v70 = *(v67 + v68 + 8);
  v71 = v70 >> 62;
  if ((v70 >> 62) > 1)
  {
    if (v71 != 2)
    {
      goto LABEL_123;
    }

    v79 = *(v69 + 16);
    v78 = *(v69 + 24);
    v26 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v26)
    {
      goto LABEL_154;
    }

    if (v80 < v14)
    {
      goto LABEL_123;
    }

LABEL_129:
    sub_100012038(v69, v70);
    sub_10007A708(v14, v69, v70, v89);
    v75 = *(&v89[0] + 1);
    v74 = *&v89[0];
    sub_10008570C(v14);
    v67 = *(v0 + 40);
LABEL_130:
    v82 = *(v0 + 48);
    v83 = *(v0 + 32);
    v84 = v67 + *(v0 + 128);
    *v84 = 0;
    *(v84 + 8) = 2;
    v85 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v74;
    *(v0 + 24) = v75;
    v90 = 0;
    memset(v89, 0, sizeof(v89));
    sub_100012038(v74, v75);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    if (v12)
    {
      sub_100011E48(v74, v75);
    }

    else
    {
      v86 = *(v0 + 32);
      sub_100011E48(v74, v75);
      (*(*(v85 - 8) + 56))(v86, 0, 1, v85);
    }

LABEL_133:
    v87 = *(v0 + 48);

    v88 = *(v0 + 8);

    return v88();
  }

  if (v71)
  {
    if (__OFSUB__(HIDWORD(v69), v69))
    {
      goto LABEL_155;
    }

    if (HIDWORD(v69) - v69 < v14)
    {
      goto LABEL_123;
    }

    goto LABEL_129;
  }

  if (BYTE6(v70) >= v14)
  {
    goto LABEL_129;
  }

LABEL_123:
  v72 = swift_task_alloc();
  *(v0 + 96) = v72;
  *v72 = v0;
  v73 = sub_10007E98C;
LABEL_124:
  v72[1] = v73;
  v81 = *(v0 + 40);

  return sub_100085848();
}

uint64_t sub_10007E184()
{
  v81 = v0;
  v1 = *(v0 + 40) + *(v0 + 128);
  *v1 = *(v0 + 88);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 40) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 40);
    v8 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v61 = swift_task_alloc();
        *(v0 + 64) = v61;
        *v61 = v0;
        v62 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      result = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v55 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v55);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 40) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (v3)
    {
      swift_willThrow();
      swift_errorRetain();
      v75 = *(v0 + 48);

      v76 = *(v0 + 8);
LABEL_121:

      return v76();
    }

    v65 = *(v0 + 32);
    v66 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
LABEL_120:
    v78 = *(v0 + 48);

    v76 = *(v0 + 8);
    goto LABEL_121;
  }

  v56 = *(v0 + 40);
  if (!v3)
  {
    v63 = 0;
    v64 = 0xC000000000000000;
LABEL_119:
    v71 = *(v0 + 48);
    v72 = *(v0 + 32);
    v73 = v56 + *(v0 + 128);
    *v73 = 0;
    *(v73 + 8) = 2;
    v74 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v63;
    *(v0 + 24) = v64;
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_100012038(v63, v64);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v77 = *(v0 + 32);
    sub_100011E48(v63, v64);
    (*(*(v74 - 8) + 56))(v77, 0, 1, v74);
    goto LABEL_120;
  }

  v57 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v57;
  v58 = *(v56 + v57);
  v59 = *(v56 + v57 + 8);
  v60 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    if (v60 != 2)
    {
      goto LABEL_112;
    }

    v68 = *(v58 + 16);
    v67 = *(v58 + 24);
    v15 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v15)
    {
      goto LABEL_142;
    }

    if (v69 < v3)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v58, v59);
    sub_10007A708(v3, v58, v59, v79);
    v64 = *(&v79[0] + 1);
    v63 = *&v79[0];
    sub_10008570C(v3);
    v56 = *(v0 + 40);
    goto LABEL_119;
  }

  if (v60)
  {
    if (__OFSUB__(HIDWORD(v58), v58))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v58) - v58 < v3)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v59) >= v3)
  {
    goto LABEL_118;
  }

LABEL_112:
  v61 = swift_task_alloc();
  *(v0 + 96) = v61;
  *v61 = v0;
  v62 = sub_10007E98C;
LABEL_113:
  v61[1] = v62;
  v70 = *(v0 + 40);

  return sub_100085848();
}

uint64_t sub_10007E98C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v8 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v6 = sub_10007F30C;
  }

  else
  {
    v6 = sub_10007EAA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10007EAA4()
{
  v85 = v0;
  v1 = *(v0 + 112);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 40) + *(v0 + 128);
    sub_100089CEC();
    *v2 = swift_allocError();
    *(v2 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 40) + *(v0 + 136);
    v5 = *(v0 + 112);
    sub_1001CFC30();
    sub_10002683C(v3, v1);
  }

  v6 = *(v0 + 120);
  v7 = (*(v0 + 40) + *(v0 + 128));
  v8 = *v7;
  v9 = *(v7 + 8);
  while (v9 == 2)
  {
    v12 = *(v0 + 40);
    v13 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v13;
    v14 = v12 + v13;
    v15 = *(v12 + v13);
    v16 = *(v12 + v13 + 8);
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_107;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_142;
      }

      if (v21 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v17)
    {
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_141;
      }

      if (HIDWORD(v15) - v15 < 4)
      {
LABEL_107:
        v66 = swift_task_alloc();
        *(v0 + 64) = v66;
        *v66 = v0;
        v67 = sub_10007D7A0;
        goto LABEL_116;
      }
    }

    else if (BYTE6(v16) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v17 == 2)
    {
      v22 = *(v15 + 16);
      v23 = *(v15 + 24);
    }

    else
    {
      if (v17 != 1)
      {
        v22 = 0;
        v24 = 0;
        v23 = BYTE6(v16);
        v25 = BYTE6(v16);
        goto LABEL_27;
      }

      v22 = v15;
      v23 = v15 >> 32;
    }

    if (v23 < v22)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      sub_1001CF890();
LABEL_149:
      __break(1u);
LABEL_150:
      result = sub_1001CF890();
      __break(1u);
LABEL_151:
      __break(1u);
      return result;
    }

    if (v17 == 2)
    {
      v24 = *(v15 + 16);
      v25 = *(v15 + 24);
    }

    else
    {
      v24 = v15;
      v25 = v15 >> 32;
    }

LABEL_27:
    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_130;
    }

    v20 = __OFSUB__(v23, v22);
    v27 = v23 - v22;
    if (v20)
    {
      goto LABEL_131;
    }

    if (v27 < 4)
    {
      if (v17 != 2)
      {
        if (v17 != 1)
        {
          goto LABEL_55;
        }

        v28 = v15 >> 32;
LABEL_50:
        if (v28 < v15)
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      v28 = *(v15 + 24);
      goto LABEL_52;
    }

    v28 = v22 + 4;
    if (__OFADD__(v22, 4))
    {
      goto LABEL_138;
    }

    if (v17 == 2)
    {
      v29 = *(v15 + 16);
      v30 = *(v15 + 24);
    }

    else if (v17 == 1)
    {
      v29 = v15;
      v30 = v15 >> 32;
    }

    else
    {
      v29 = 0;
      v30 = BYTE6(v16);
    }

    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_139;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v28 < *(v15 + 16))
      {
        goto LABEL_129;
      }

      goto LABEL_55;
    }

    if (v28 < 0)
    {
      goto LABEL_129;
    }

LABEL_55:
    v32 = sub_1001CFBC0();
    v34 = v33;
    v35 = *v14;
    v36 = *(v14 + 8);
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 != 2)
      {
        v40 = 0;
        v38 = 0;
        v41 = 0;
        v39 = 0;
        goto LABEL_66;
      }

      v38 = *(v35 + 16);
      v40 = *(v35 + 24);
    }

    else
    {
      if (!v37)
      {
        v38 = 0;
        v39 = 0;
        v40 = BYTE6(v36);
        v41 = BYTE6(v36);
        goto LABEL_66;
      }

      v38 = v35;
      v40 = v35 >> 32;
    }

    if (v40 < v38)
    {
      goto LABEL_132;
    }

    if (v37 == 2)
    {
      v39 = *(v35 + 16);
      v41 = *(v35 + 24);
    }

    else
    {
      v39 = v35;
      v41 = v35 >> 32;
    }

LABEL_66:
    if (v41 < v40 || v40 < v39)
    {
      goto LABEL_133;
    }

    v20 = __OFSUB__(v40, v38);
    v42 = v40 - v38;
    if (v20)
    {
      goto LABEL_134;
    }

    if (v42 < 4)
    {
      goto LABEL_140;
    }

    v43 = v38 + 4;
    if (__OFADD__(v38, 4))
    {
      goto LABEL_135;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v44 = *(v35 + 16);
        v45 = *(v35 + 24);
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }
    }

    else if (v37)
    {
      v44 = v35;
      v45 = v35 >> 32;
    }

    else
    {
      v44 = 0;
      v45 = BYTE6(v36);
    }

    if (v45 < v43 || v43 < v44)
    {
      goto LABEL_136;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v46 = *(v35 + 24);
      }

      else
      {
        v46 = 0;
      }
    }

    else if (v37)
    {
      v46 = v35 >> 32;
    }

    else
    {
      v46 = BYTE6(v36);
    }

    sub_100012038(*v14, *(v14 + 8));
    sub_100011E48(v35, v36);
    if (v46 < v43)
    {
      goto LABEL_137;
    }

    v47 = sub_1001CFBC0();
    v49 = v48;
    sub_100011E48(v35, v36);
    *v14 = v47;
    *(v14 + 8) = v49;
    v50 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v50 != 2)
      {
        sub_100011E48(v32, v34);
        v10 = 0;
        goto LABEL_6;
      }

      v51 = *(v32 + 16);
      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_148;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v51, v54))
      {
        goto LABEL_144;
      }

      v55 = (v51 - v54 + v53);
      sub_1001CF890();
      if (!v55)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (!v50)
      {
        sub_100011E48(v32, v34);
        v10 = bswap32(v32);
        goto LABEL_6;
      }

      if (v32 > v32 >> 32)
      {
        goto LABEL_143;
      }

      v56 = sub_1001CF870();
      if (!v56)
      {
        goto LABEL_150;
      }

      v57 = v56;
      v58 = sub_1001CF8A0();
      if (__OFSUB__(v32, v58))
      {
        goto LABEL_145;
      }

      v55 = (v32 - v58 + v57);
      result = sub_1001CF890();
      if (!v55)
      {
        goto LABEL_151;
      }
    }

    v60 = *v55;
    sub_100011E48(v32, v34);
    v10 = bswap32(v60);
LABEL_6:
    v9 = 0;
    v11 = *(v0 + 40) + *(v0 + 128);
    v8 = v10;
    *v11 = v10;
    *(v11 + 8) = 0;
  }

  if (v9)
  {
    if (v8)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v70 = *(v0 + 32);
      v71 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
      (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
    }

    goto LABEL_125;
  }

  v61 = *(v0 + 40);
  if (!v8)
  {
    v68 = 0;
    v69 = 0xC000000000000000;
    goto LABEL_122;
  }

  v62 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v62;
  v63 = *(v61 + v62);
  v64 = *(v61 + v62 + 8);
  v65 = v64 >> 62;
  if ((v64 >> 62) > 1)
  {
    if (v65 != 2)
    {
      goto LABEL_115;
    }

    v73 = *(v63 + 16);
    v72 = *(v63 + 24);
    v20 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v20)
    {
      goto LABEL_146;
    }

    if (v74 < v8)
    {
      goto LABEL_115;
    }

LABEL_121:
    sub_100012038(v63, v64);
    sub_10007A708(v8, v63, v64, v83);
    v69 = *(&v83[0] + 1);
    v68 = *&v83[0];
    sub_10008570C(v8);
    v61 = *(v0 + 40);
LABEL_122:
    v76 = *(v0 + 48);
    v77 = *(v0 + 32);
    v78 = v61 + *(v0 + 128);
    *v78 = 0;
    *(v78 + 8) = 2;
    v79 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v84 = 0;
    memset(v83, 0, sizeof(v83));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    if (v6)
    {
      sub_100011E48(v68, v69);
    }

    else
    {
      v80 = *(v0 + 32);
      sub_100011E48(v68, v69);
      (*(*(v79 - 8) + 56))(v80, 0, 1, v79);
    }

LABEL_125:
    v81 = *(v0 + 48);

    v82 = *(v0 + 8);

    return v82();
  }

  if (v65)
  {
    if (__OFSUB__(HIDWORD(v63), v63))
    {
      goto LABEL_147;
    }

    if (HIDWORD(v63) - v63 < v8)
    {
      goto LABEL_115;
    }

    goto LABEL_121;
  }

  if (BYTE6(v64) >= v8)
  {
    goto LABEL_121;
  }

LABEL_115:
  v66 = swift_task_alloc();
  *(v0 + 96) = v66;
  *v66 = v0;
  v67 = sub_10007E98C;
LABEL_116:
  v66[1] = v67;
  v75 = *(v0 + 40);

  return sub_100085848();
}

uint64_t sub_10007F30C()
{
  v81 = v0;
  v1 = *(v0 + 40) + *(v0 + 128);
  *v1 = *(v0 + 120);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 40) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 40);
    v8 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v61 = swift_task_alloc();
        *(v0 + 64) = v61;
        *v61 = v0;
        v62 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      result = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v55 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v55);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 40) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (v3)
    {
      swift_willThrow();
      swift_errorRetain();
      v75 = *(v0 + 48);

      v76 = *(v0 + 8);
LABEL_121:

      return v76();
    }

    v65 = *(v0 + 32);
    v66 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
LABEL_120:
    v78 = *(v0 + 48);

    v76 = *(v0 + 8);
    goto LABEL_121;
  }

  v56 = *(v0 + 40);
  if (!v3)
  {
    v63 = 0;
    v64 = 0xC000000000000000;
LABEL_119:
    v71 = *(v0 + 48);
    v72 = *(v0 + 32);
    v73 = v56 + *(v0 + 128);
    *v73 = 0;
    *(v73 + 8) = 2;
    v74 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v63;
    *(v0 + 24) = v64;
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_100012038(v63, v64);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v77 = *(v0 + 32);
    sub_100011E48(v63, v64);
    (*(*(v74 - 8) + 56))(v77, 0, 1, v74);
    goto LABEL_120;
  }

  v57 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v57;
  v58 = *(v56 + v57);
  v59 = *(v56 + v57 + 8);
  v60 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    if (v60 != 2)
    {
      goto LABEL_112;
    }

    v68 = *(v58 + 16);
    v67 = *(v58 + 24);
    v15 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v15)
    {
      goto LABEL_142;
    }

    if (v69 < v3)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v58, v59);
    sub_10007A708(v3, v58, v59, v79);
    v64 = *(&v79[0] + 1);
    v63 = *&v79[0];
    sub_10008570C(v3);
    v56 = *(v0 + 40);
    goto LABEL_119;
  }

  if (v60)
  {
    if (__OFSUB__(HIDWORD(v58), v58))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v58) - v58 < v3)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v59) >= v3)
  {
    goto LABEL_118;
  }

LABEL_112:
  v61 = swift_task_alloc();
  *(v0 + 96) = v61;
  *v61 = v0;
  v62 = sub_10007E98C;
LABEL_113:
  v61[1] = v62;
  v70 = *(v0 + 40);

  return sub_100085848();
}

uint64_t sub_10007FB14(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_1001D0980() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10007FBA4, 0, 0);
}

uint64_t sub_10007FBA4()
{
  v89 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v0 + 88) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 72);
    v10 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v65 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v66 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v67 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v68 = swift_task_alloc();
        *(v0 + 96) = v68;
        *v68 = v0;
        v68[1] = sub_100080414;
        v69 = *(v0 + 72);
        v56 = v0 + 48;
LABEL_113:
        v57 = v65;
        v58 = v66;

        return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v56 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      v56 = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v59 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v59);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 72) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (!v5)
    {
      v72 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v73 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v83 = *(v0 + 80);

    v84 = *(v0 + 8);
  }

  else
  {
    v60 = *(v0 + 72);
    if (v5)
    {
      v61 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v61;
      v62 = *(v60 + v61);
      v63 = *(v60 + v61 + 8);
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          goto LABEL_112;
        }

        v75 = *(v62 + 16);
        v74 = *(v62 + 24);
        v17 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v17)
        {
          goto LABEL_142;
        }

        if (v76 < v5)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v64)
        {
          if (BYTE6(v63) >= v5)
          {
            goto LABEL_118;
          }

LABEL_112:
          v65 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v66 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
          v77 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v78 = swift_task_alloc();
          *(v0 + 112) = v78;
          *v78 = v0;
          v78[1] = sub_1000816C0;
          v79 = *(v0 + 72);
          v56 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v62) - v62 < v5)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v62, v63);
      sub_10007A708(v5, v62, v63, v87);
      v71 = *(&v87[0] + 1);
      v70 = *&v87[0];
      sub_10008570C(v5);
      v60 = *(v0 + 72);
    }

    else
    {
      v70 = 0;
      v71 = 0xC000000000000000;
    }

    v80 = *(v0 + 80);
    v81 = *(v0 + 64);
    v82 = v60 + *(v0 + 128);
    *v82 = 0;
    *(v82 + 8) = 2;
    v72 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v0 + 16) = v70;
    *(v0 + 24) = v71;
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    sub_100012038(v70, v71);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v70, v71);
    v73 = 0;
LABEL_120:
    v85 = *(v0 + 80);
    (*(*(v72 - 8) + 56))(*(v0 + 64), v73, 1, v72);

    v84 = *(v0 + 8);
  }

  return v84();
}

uint64_t sub_100080414()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100080E50;
  }

  else
  {
    v3 = sub_100080528;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100080528()
{
  v97 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = (v2 + *(v0 + 132));
  if (v1 >> 60 == 15)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      if (v4 == v4 >> 32)
      {
LABEL_11:
        v10 = v2 + *(v0 + 128);
        *v10 = 0;
        *(v10 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v2 + *(v0 + 128);
    sub_100089CEC();
    *v9 = swift_allocError();
    *(v9 + 8) = 1;
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_1001CFC30();
    sub_10002683C(v7, v1);
  }

LABEL_12:
  v11 = *(v0 + 104);
  v12 = (*(v0 + 72) + *(v0 + 128));
  v13 = *v12;
  v14 = *(v12 + 8);
  while (v14 == 2)
  {
    v17 = *(v0 + 72);
    v18 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v18;
    v19 = v17 + v18;
    v20 = *(v17 + v18);
    v21 = *(v17 + v18 + 8);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_115;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_151;
      }

      if (v26 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_150;
      }

      if (HIDWORD(v20) - v20 < 4)
      {
LABEL_115:
        v73 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v74 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v76 = swift_task_alloc();
        *(v0 + 96) = v76;
        *v76 = v0;
        v76[1] = sub_100080414;
        v77 = *(v0 + 72);
        v64 = v0 + 48;
LABEL_124:
        v65 = v73;
        v66 = v74;

        return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
      }
    }

    else if (BYTE6(v21) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v22 == 2)
    {
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        v29 = 0;
        v28 = BYTE6(v21);
        v30 = BYTE6(v21);
        goto LABEL_35;
      }

      v27 = v20;
      v28 = v20 >> 32;
    }

    if (v28 < v27)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      sub_1001CF890();
LABEL_158:
      __break(1u);
LABEL_159:
      v64 = sub_1001CF890();
      __break(1u);
LABEL_160:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
    }

    if (v22 == 2)
    {
      v29 = *(v20 + 16);
      v30 = *(v20 + 24);
    }

    else
    {
      v29 = v20;
      v30 = v20 >> 32;
    }

LABEL_35:
    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_139;
    }

    v25 = __OFSUB__(v28, v27);
    v32 = v28 - v27;
    if (v25)
    {
      goto LABEL_140;
    }

    if (v32 < 4)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_63;
        }

        v33 = v20 >> 32;
LABEL_58:
        if (v33 < v20)
        {
          goto LABEL_138;
        }

        goto LABEL_63;
      }

      v33 = *(v20 + 24);
      goto LABEL_60;
    }

    v33 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_147;
    }

    if (v22 == 2)
    {
      v34 = *(v20 + 16);
      v35 = *(v20 + 24);
    }

    else if (v22 == 1)
    {
      v34 = v20;
      v35 = v20 >> 32;
    }

    else
    {
      v34 = 0;
      v35 = BYTE6(v21);
    }

    if (v35 < v33 || v33 < v34)
    {
      goto LABEL_148;
    }

    if (v22)
    {
      if (v22 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v33 < *(v20 + 16))
      {
        goto LABEL_138;
      }

      goto LABEL_63;
    }

    if (v33 < 0)
    {
      goto LABEL_138;
    }

LABEL_63:
    v37 = sub_1001CFBC0();
    v39 = v38;
    v40 = *v19;
    v41 = *(v19 + 8);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v45 = 0;
        v43 = 0;
        v46 = 0;
        v44 = 0;
        goto LABEL_74;
      }

      v43 = *(v40 + 16);
      v45 = *(v40 + 24);
    }

    else
    {
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = BYTE6(v41);
        v46 = BYTE6(v41);
        goto LABEL_74;
      }

      v43 = v40;
      v45 = v40 >> 32;
    }

    if (v45 < v43)
    {
      goto LABEL_141;
    }

    if (v42 == 2)
    {
      v44 = *(v40 + 16);
      v46 = *(v40 + 24);
    }

    else
    {
      v44 = v40;
      v46 = v40 >> 32;
    }

LABEL_74:
    if (v46 < v45 || v45 < v44)
    {
      goto LABEL_142;
    }

    v25 = __OFSUB__(v45, v43);
    v47 = v45 - v43;
    if (v25)
    {
      goto LABEL_143;
    }

    if (v47 < 4)
    {
      goto LABEL_149;
    }

    v48 = v43 + 4;
    if (__OFADD__(v43, 4))
    {
      goto LABEL_144;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v49 = *(v40 + 16);
        v50 = *(v40 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else if (v42)
    {
      v49 = v40;
      v50 = v40 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v41);
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_145;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v51 = *(v40 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v42)
    {
      v51 = v40 >> 32;
    }

    else
    {
      v51 = BYTE6(v41);
    }

    sub_100012038(*v19, *(v19 + 8));
    sub_100011E48(v40, v41);
    if (v51 < v48)
    {
      goto LABEL_146;
    }

    v52 = sub_1001CFBC0();
    v54 = v53;
    sub_100011E48(v40, v41);
    *v19 = v52;
    *(v19 + 8) = v54;
    v55 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v55 != 2)
      {
        sub_100011E48(v37, v39);
        v15 = 0;
        goto LABEL_14;
      }

      v56 = *(v37 + 16);
      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_157;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_153;
      }

      v60 = (v56 - v59 + v58);
      sub_1001CF890();
      if (!v60)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!v55)
      {
        sub_100011E48(v37, v39);
        v15 = bswap32(v37);
        goto LABEL_14;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_152;
      }

      v61 = sub_1001CF870();
      if (!v61)
      {
        goto LABEL_159;
      }

      v62 = v61;
      v63 = sub_1001CF8A0();
      if (__OFSUB__(v37, v63))
      {
        goto LABEL_154;
      }

      v60 = (v37 - v63 + v62);
      v64 = sub_1001CF890();
      if (!v60)
      {
        goto LABEL_160;
      }
    }

    v67 = *v60;
    sub_100011E48(v37, v39);
    v15 = bswap32(v67);
LABEL_14:
    v14 = 0;
    v16 = *(v0 + 72) + *(v0 + 128);
    v13 = v15;
    *v16 = v15;
    *(v16 + 8) = 0;
  }

  if (v14)
  {
    if (v13)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_131;
    }

    v80 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    v81 = 1;
    goto LABEL_133;
  }

  v68 = *(v0 + 72);
  if (v13)
  {
    v69 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v69;
    v70 = *(v68 + v69);
    v71 = *(v68 + v69 + 8);
    v72 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_123;
      }

      v83 = *(v70 + 16);
      v82 = *(v70 + 24);
      v25 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v25)
      {
        goto LABEL_155;
      }

      if (v84 < v13)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (!v72)
      {
        if (BYTE6(v71) >= v13)
        {
          goto LABEL_129;
        }

LABEL_123:
        v73 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v74 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v85 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v86 = swift_task_alloc();
        *(v0 + 112) = v86;
        *v86 = v0;
        v86[1] = sub_1000816C0;
        v87 = *(v0 + 72);
        v64 = v0 + 32;
        goto LABEL_124;
      }

      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_156;
      }

      if (HIDWORD(v70) - v70 < v13)
      {
        goto LABEL_123;
      }
    }

LABEL_129:
    sub_100012038(v70, v71);
    sub_10007A708(v13, v70, v71, v95);
    v79 = *(&v95[0] + 1);
    v78 = *&v95[0];
    sub_10008570C(v13);
    v68 = *(v0 + 72);
  }

  else
  {
    v78 = 0;
    v79 = 0xC000000000000000;
  }

  v88 = *(v0 + 80);
  v89 = *(v0 + 64);
  v90 = v68 + *(v0 + 128);
  *v90 = 0;
  *(v90 + 8) = 2;
  v80 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v0 + 16) = v78;
  *(v0 + 24) = v79;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  sub_100012038(v78, v79);
  sub_1001D0970();
  sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001D0B10();
  sub_100011E48(v78, v79);
  if (!v11)
  {
    v81 = 0;
LABEL_133:
    v93 = *(v0 + 80);
    (*(*(v80 - 8) + 56))(*(v0 + 64), v81, 1, v80);

    v92 = *(v0 + 8);
    goto LABEL_134;
  }

LABEL_131:
  v91 = *(v0 + 80);

  v92 = *(v0 + 8);
LABEL_134:

  return v92();
}

uint64_t sub_100080E50()
{
  v87 = v0;
  v1 = *(v0 + 72) + *(v0 + 128);
  *v1 = *(v0 + 104);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 72) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v63 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v64 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v65 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v66 = swift_task_alloc();
        *(v0 + 96) = v66;
        *v66 = v0;
        v66[1] = sub_100080414;
        v67 = *(v0 + 72);
        v54 = v0 + 48;
LABEL_113:
        v55 = v63;
        v56 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v54 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      v54 = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v57 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v57);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 72) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (!v3)
    {
      v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v81 = *(v0 + 80);

    v82 = *(v0 + 8);
  }

  else
  {
    v58 = *(v0 + 72);
    if (v3)
    {
      v59 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v59;
      v60 = *(v58 + v59);
      v61 = *(v58 + v59 + 8);
      v62 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        v15 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v15)
        {
          goto LABEL_142;
        }

        if (v74 < v3)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v62)
        {
          if (BYTE6(v61) >= v3)
          {
            goto LABEL_118;
          }

LABEL_112:
          v63 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v64 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
          v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v76 = swift_task_alloc();
          *(v0 + 112) = v76;
          *v76 = v0;
          v76[1] = sub_1000816C0;
          v77 = *(v0 + 72);
          v54 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v60) - v60 < v3)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v60, v61);
      sub_10007A708(v3, v60, v61, v85);
      v69 = *(&v85[0] + 1);
      v68 = *&v85[0];
      sub_10008570C(v3);
      v58 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v78 = *(v0 + 80);
    v79 = *(v0 + 64);
    v80 = v58 + *(v0 + 128);
    *v80 = 0;
    *(v80 + 8) = 2;
    v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    v83 = *(v0 + 80);
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v82 = *(v0 + 8);
  }

  return v82();
}

uint64_t sub_1000816C0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000820A0;
  }

  else
  {
    v3 = sub_1000817D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000817D4()
{
  v93 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v3 = v2 + *(v0 + 128);
    sub_100089CEC();
    *v3 = swift_allocError();
    *(v3 + 8) = 1;
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v2 + *(v0 + 136);
    v6 = *(v0 + 40);
    sub_1001CFC30();
    sub_10002683C(v4, v1);
  }

  v7 = *(v0 + 120);
  v8 = (*(v0 + 72) + *(v0 + 128));
  v9 = *v8;
  v10 = *(v8 + 8);
  while (v10 == 2)
  {
    v13 = *(v0 + 72);
    v14 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v14;
    v15 = v13 + v14;
    v16 = *(v13 + v14);
    v17 = *(v13 + v14 + 8);
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_107;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_143;
      }

      if (v22 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v18)
    {
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_142;
      }

      if (HIDWORD(v16) - v16 < 4)
      {
LABEL_107:
        v69 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v70 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v71 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v72 = swift_task_alloc();
        *(v0 + 96) = v72;
        *v72 = v0;
        v72[1] = sub_100080414;
        v73 = *(v0 + 72);
        v60 = v0 + 48;
LABEL_116:
        v61 = v69;
        v62 = v70;

        return dispatch thunk of AsyncIteratorProtocol.next()(v60, v61, v62);
      }
    }

    else if (BYTE6(v17) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v18 == 2)
    {
      v23 = *(v16 + 16);
      v24 = *(v16 + 24);
    }

    else
    {
      if (v18 != 1)
      {
        v23 = 0;
        v25 = 0;
        v24 = BYTE6(v17);
        v26 = BYTE6(v17);
        goto LABEL_27;
      }

      v23 = v16;
      v24 = v16 >> 32;
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_1001CF890();
LABEL_150:
      __break(1u);
LABEL_151:
      v60 = sub_1001CF890();
      __break(1u);
LABEL_152:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v60, v61, v62);
    }

    if (v18 == 2)
    {
      v25 = *(v16 + 16);
      v26 = *(v16 + 24);
    }

    else
    {
      v25 = v16;
      v26 = v16 >> 32;
    }

LABEL_27:
    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_131;
    }

    v21 = __OFSUB__(v24, v23);
    v28 = v24 - v23;
    if (v21)
    {
      goto LABEL_132;
    }

    if (v28 < 4)
    {
      if (v18 != 2)
      {
        if (v18 != 1)
        {
          goto LABEL_55;
        }

        v29 = v16 >> 32;
LABEL_50:
        if (v29 < v16)
        {
          goto LABEL_130;
        }

        goto LABEL_55;
      }

      v29 = *(v16 + 24);
      goto LABEL_52;
    }

    v29 = v23 + 4;
    if (__OFADD__(v23, 4))
    {
      goto LABEL_139;
    }

    if (v18 == 2)
    {
      v30 = *(v16 + 16);
      v31 = *(v16 + 24);
    }

    else if (v18 == 1)
    {
      v30 = v16;
      v31 = v16 >> 32;
    }

    else
    {
      v30 = 0;
      v31 = BYTE6(v17);
    }

    if (v31 < v29 || v29 < v30)
    {
      goto LABEL_140;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v29 < *(v16 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_55;
    }

    if (v29 < 0)
    {
      goto LABEL_130;
    }

LABEL_55:
    v33 = sub_1001CFBC0();
    v35 = v34;
    v36 = *v15;
    v37 = *(v15 + 8);
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v41 = 0;
        v39 = 0;
        v42 = 0;
        v40 = 0;
        goto LABEL_66;
      }

      v39 = *(v36 + 16);
      v41 = *(v36 + 24);
    }

    else
    {
      if (!v38)
      {
        v39 = 0;
        v40 = 0;
        v41 = BYTE6(v37);
        v42 = BYTE6(v37);
        goto LABEL_66;
      }

      v39 = v36;
      v41 = v36 >> 32;
    }

    if (v41 < v39)
    {
      goto LABEL_133;
    }

    if (v38 == 2)
    {
      v40 = *(v36 + 16);
      v42 = *(v36 + 24);
    }

    else
    {
      v40 = v36;
      v42 = v36 >> 32;
    }

LABEL_66:
    if (v42 < v41 || v41 < v40)
    {
      goto LABEL_134;
    }

    v21 = __OFSUB__(v41, v39);
    v43 = v41 - v39;
    if (v21)
    {
      goto LABEL_135;
    }

    if (v43 < 4)
    {
      goto LABEL_141;
    }

    v44 = v39 + 4;
    if (__OFADD__(v39, 4))
    {
      goto LABEL_136;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v45 = *(v36 + 16);
        v46 = *(v36 + 24);
      }

      else
      {
        v46 = 0;
        v45 = 0;
      }
    }

    else if (v38)
    {
      v45 = v36;
      v46 = v36 >> 32;
    }

    else
    {
      v45 = 0;
      v46 = BYTE6(v37);
    }

    if (v46 < v44 || v44 < v45)
    {
      goto LABEL_137;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v47 = *(v36 + 24);
      }

      else
      {
        v47 = 0;
      }
    }

    else if (v38)
    {
      v47 = v36 >> 32;
    }

    else
    {
      v47 = BYTE6(v37);
    }

    sub_100012038(*v15, *(v15 + 8));
    sub_100011E48(v36, v37);
    if (v47 < v44)
    {
      goto LABEL_138;
    }

    v48 = sub_1001CFBC0();
    v50 = v49;
    sub_100011E48(v36, v37);
    *v15 = v48;
    *(v15 + 8) = v50;
    v51 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v51 != 2)
      {
        sub_100011E48(v33, v35);
        v11 = 0;
        goto LABEL_6;
      }

      v52 = *(v33 + 16);
      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_149;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v52, v55))
      {
        goto LABEL_145;
      }

      v56 = (v52 - v55 + v54);
      sub_1001CF890();
      if (!v56)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (!v51)
      {
        sub_100011E48(v33, v35);
        v11 = bswap32(v33);
        goto LABEL_6;
      }

      if (v33 > v33 >> 32)
      {
        goto LABEL_144;
      }

      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_151;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v33, v59))
      {
        goto LABEL_146;
      }

      v56 = (v33 - v59 + v58);
      v60 = sub_1001CF890();
      if (!v56)
      {
        goto LABEL_152;
      }
    }

    v63 = *v56;
    sub_100011E48(v33, v35);
    v11 = bswap32(v63);
LABEL_6:
    v10 = 0;
    v12 = *(v0 + 72) + *(v0 + 128);
    v9 = v11;
    *v12 = v11;
    *(v12 + 8) = 0;
  }

  if (v10)
  {
    if (v9)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_123;
    }

    v76 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    v77 = 1;
    goto LABEL_125;
  }

  v64 = *(v0 + 72);
  if (v9)
  {
    v65 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v65;
    v66 = *(v64 + v65);
    v67 = *(v64 + v65 + 8);
    v68 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_115;
      }

      v79 = *(v66 + 16);
      v78 = *(v66 + 24);
      v21 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v21)
      {
        goto LABEL_147;
      }

      if (v80 < v9)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (!v68)
      {
        if (BYTE6(v67) >= v9)
        {
          goto LABEL_121;
        }

LABEL_115:
        v69 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v70 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v81 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v82 = swift_task_alloc();
        *(v0 + 112) = v82;
        *v82 = v0;
        v82[1] = sub_1000816C0;
        v83 = *(v0 + 72);
        v60 = v0 + 32;
        goto LABEL_116;
      }

      if (__OFSUB__(HIDWORD(v66), v66))
      {
        goto LABEL_148;
      }

      if (HIDWORD(v66) - v66 < v9)
      {
        goto LABEL_115;
      }
    }

LABEL_121:
    sub_100012038(v66, v67);
    sub_10007A708(v9, v66, v67, v91);
    v75 = *(&v91[0] + 1);
    v74 = *&v91[0];
    sub_10008570C(v9);
    v64 = *(v0 + 72);
  }

  else
  {
    v74 = 0;
    v75 = 0xC000000000000000;
  }

  v84 = *(v0 + 80);
  v85 = *(v0 + 64);
  v86 = v64 + *(v0 + 128);
  *v86 = 0;
  *(v86 + 8) = 2;
  v76 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v0 + 16) = v74;
  *(v0 + 24) = v75;
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  sub_100012038(v74, v75);
  sub_1001D0970();
  sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001D0B10();
  sub_100011E48(v74, v75);
  if (!v7)
  {
    v77 = 0;
LABEL_125:
    v89 = *(v0 + 80);
    (*(*(v76 - 8) + 56))(*(v0 + 64), v77, 1, v76);

    v88 = *(v0 + 8);
    goto LABEL_126;
  }

LABEL_123:
  v87 = *(v0 + 80);

  v88 = *(v0 + 8);
LABEL_126:

  return v88();
}

uint64_t sub_1000820A0()
{
  v87 = v0;
  v1 = *(v0 + 72) + *(v0 + 128);
  *v1 = *(v0 + 120);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 72) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v63 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v64 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
        v65 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v66 = swift_task_alloc();
        *(v0 + 96) = v66;
        *v66 = v0;
        v66[1] = sub_100080414;
        v67 = *(v0 + 72);
        v54 = v0 + 48;
LABEL_113:
        v55 = v63;
        v56 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v54 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      v54 = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v57 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v57);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 72) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (!v3)
    {
      v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v81 = *(v0 + 80);

    v82 = *(v0 + 8);
  }

  else
  {
    v58 = *(v0 + 72);
    if (v3)
    {
      v59 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v59;
      v60 = *(v58 + v59);
      v61 = *(v58 + v59 + 8);
      v62 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        v15 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v15)
        {
          goto LABEL_142;
        }

        if (v74 < v3)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v62)
        {
          if (BYTE6(v61) >= v3)
          {
            goto LABEL_118;
          }

LABEL_112:
          v63 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v64 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8);
          v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v76 = swift_task_alloc();
          *(v0 + 112) = v76;
          *v76 = v0;
          v76[1] = sub_1000816C0;
          v77 = *(v0 + 72);
          v54 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v60) - v60 < v3)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v60, v61);
      sub_10007A708(v3, v60, v61, v85);
      v69 = *(&v85[0] + 1);
      v68 = *&v85[0];
      sub_10008570C(v3);
      v58 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v78 = *(v0 + 80);
    v79 = *(v0 + 64);
    v80 = v58 + *(v0 + 128);
    *v80 = 0;
    *(v80 + 8) = 2;
    v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    v83 = *(v0 + 80);
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v82 = *(v0 + 8);
  }

  return v82();
}

uint64_t sub_100082910(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_1001D0980() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000829A0, 0, 0);
}

uint64_t sub_1000829A0()
{
  v89 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100011AC0(&qword_100229620, &qword_1001D69C8);
  *(v0 + 88) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 72);
    v10 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v65 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v66 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v67 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v68 = swift_task_alloc();
        *(v0 + 96) = v68;
        *v68 = v0;
        v68[1] = sub_100083210;
        v69 = *(v0 + 72);
        v56 = v0 + 48;
LABEL_113:
        v57 = v65;
        v58 = v66;

        return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v56 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      v56 = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v59 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v59);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 72) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (!v5)
    {
      v72 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v73 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v83 = *(v0 + 80);

    v84 = *(v0 + 8);
  }

  else
  {
    v60 = *(v0 + 72);
    if (v5)
    {
      v61 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v61;
      v62 = *(v60 + v61);
      v63 = *(v60 + v61 + 8);
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          goto LABEL_112;
        }

        v75 = *(v62 + 16);
        v74 = *(v62 + 24);
        v17 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v17)
        {
          goto LABEL_142;
        }

        if (v76 < v5)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v64)
        {
          if (BYTE6(v63) >= v5)
          {
            goto LABEL_118;
          }

LABEL_112:
          v65 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v66 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
          v77 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v78 = swift_task_alloc();
          *(v0 + 112) = v78;
          *v78 = v0;
          v78[1] = sub_1000844BC;
          v79 = *(v0 + 72);
          v56 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v62) - v62 < v5)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v62, v63);
      sub_10007A708(v5, v62, v63, v87);
      v71 = *(&v87[0] + 1);
      v70 = *&v87[0];
      sub_10008570C(v5);
      v60 = *(v0 + 72);
    }

    else
    {
      v70 = 0;
      v71 = 0xC000000000000000;
    }

    v80 = *(v0 + 80);
    v81 = *(v0 + 64);
    v82 = v60 + *(v0 + 128);
    *v82 = 0;
    *(v82 + 8) = 2;
    v72 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v0 + 16) = v70;
    *(v0 + 24) = v71;
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    sub_100012038(v70, v71);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v70, v71);
    v73 = 0;
LABEL_120:
    v85 = *(v0 + 80);
    (*(*(v72 - 8) + 56))(*(v0 + 64), v73, 1, v72);

    v84 = *(v0 + 8);
  }

  return v84();
}

uint64_t sub_100083210()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100083C4C;
  }

  else
  {
    v3 = sub_100083324;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083324()
{
  v97 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = (v2 + *(v0 + 132));
  if (v1 >> 60 == 15)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      if (v4 == v4 >> 32)
      {
LABEL_11:
        v10 = v2 + *(v0 + 128);
        *v10 = 0;
        *(v10 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v2 + *(v0 + 128);
    sub_100089CEC();
    *v9 = swift_allocError();
    *(v9 + 8) = 1;
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    sub_1001CFC30();
    sub_10002683C(v7, v1);
  }

LABEL_12:
  v11 = *(v0 + 104);
  v12 = (*(v0 + 72) + *(v0 + 128));
  v13 = *v12;
  v14 = *(v12 + 8);
  while (v14 == 2)
  {
    v17 = *(v0 + 72);
    v18 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v18;
    v19 = v17 + v18;
    v20 = *(v17 + v18);
    v21 = *(v17 + v18 + 8);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_115;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_151;
      }

      if (v26 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_150;
      }

      if (HIDWORD(v20) - v20 < 4)
      {
LABEL_115:
        v73 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v74 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v76 = swift_task_alloc();
        *(v0 + 96) = v76;
        *v76 = v0;
        v76[1] = sub_100083210;
        v77 = *(v0 + 72);
        v64 = v0 + 48;
LABEL_124:
        v65 = v73;
        v66 = v74;

        return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
      }
    }

    else if (BYTE6(v21) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v22 == 2)
    {
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        v29 = 0;
        v28 = BYTE6(v21);
        v30 = BYTE6(v21);
        goto LABEL_35;
      }

      v27 = v20;
      v28 = v20 >> 32;
    }

    if (v28 < v27)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      sub_1001CF890();
LABEL_158:
      __break(1u);
LABEL_159:
      v64 = sub_1001CF890();
      __break(1u);
LABEL_160:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
    }

    if (v22 == 2)
    {
      v29 = *(v20 + 16);
      v30 = *(v20 + 24);
    }

    else
    {
      v29 = v20;
      v30 = v20 >> 32;
    }

LABEL_35:
    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_139;
    }

    v25 = __OFSUB__(v28, v27);
    v32 = v28 - v27;
    if (v25)
    {
      goto LABEL_140;
    }

    if (v32 < 4)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_63;
        }

        v33 = v20 >> 32;
LABEL_58:
        if (v33 < v20)
        {
          goto LABEL_138;
        }

        goto LABEL_63;
      }

      v33 = *(v20 + 24);
      goto LABEL_60;
    }

    v33 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_147;
    }

    if (v22 == 2)
    {
      v34 = *(v20 + 16);
      v35 = *(v20 + 24);
    }

    else if (v22 == 1)
    {
      v34 = v20;
      v35 = v20 >> 32;
    }

    else
    {
      v34 = 0;
      v35 = BYTE6(v21);
    }

    if (v35 < v33 || v33 < v34)
    {
      goto LABEL_148;
    }

    if (v22)
    {
      if (v22 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v33 < *(v20 + 16))
      {
        goto LABEL_138;
      }

      goto LABEL_63;
    }

    if (v33 < 0)
    {
      goto LABEL_138;
    }

LABEL_63:
    v37 = sub_1001CFBC0();
    v39 = v38;
    v40 = *v19;
    v41 = *(v19 + 8);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v45 = 0;
        v43 = 0;
        v46 = 0;
        v44 = 0;
        goto LABEL_74;
      }

      v43 = *(v40 + 16);
      v45 = *(v40 + 24);
    }

    else
    {
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = BYTE6(v41);
        v46 = BYTE6(v41);
        goto LABEL_74;
      }

      v43 = v40;
      v45 = v40 >> 32;
    }

    if (v45 < v43)
    {
      goto LABEL_141;
    }

    if (v42 == 2)
    {
      v44 = *(v40 + 16);
      v46 = *(v40 + 24);
    }

    else
    {
      v44 = v40;
      v46 = v40 >> 32;
    }

LABEL_74:
    if (v46 < v45 || v45 < v44)
    {
      goto LABEL_142;
    }

    v25 = __OFSUB__(v45, v43);
    v47 = v45 - v43;
    if (v25)
    {
      goto LABEL_143;
    }

    if (v47 < 4)
    {
      goto LABEL_149;
    }

    v48 = v43 + 4;
    if (__OFADD__(v43, 4))
    {
      goto LABEL_144;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v49 = *(v40 + 16);
        v50 = *(v40 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else if (v42)
    {
      v49 = v40;
      v50 = v40 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v41);
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_145;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v51 = *(v40 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v42)
    {
      v51 = v40 >> 32;
    }

    else
    {
      v51 = BYTE6(v41);
    }

    sub_100012038(*v19, *(v19 + 8));
    sub_100011E48(v40, v41);
    if (v51 < v48)
    {
      goto LABEL_146;
    }

    v52 = sub_1001CFBC0();
    v54 = v53;
    sub_100011E48(v40, v41);
    *v19 = v52;
    *(v19 + 8) = v54;
    v55 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v55 != 2)
      {
        sub_100011E48(v37, v39);
        v15 = 0;
        goto LABEL_14;
      }

      v56 = *(v37 + 16);
      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_157;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_153;
      }

      v60 = (v56 - v59 + v58);
      sub_1001CF890();
      if (!v60)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!v55)
      {
        sub_100011E48(v37, v39);
        v15 = bswap32(v37);
        goto LABEL_14;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_152;
      }

      v61 = sub_1001CF870();
      if (!v61)
      {
        goto LABEL_159;
      }

      v62 = v61;
      v63 = sub_1001CF8A0();
      if (__OFSUB__(v37, v63))
      {
        goto LABEL_154;
      }

      v60 = (v37 - v63 + v62);
      v64 = sub_1001CF890();
      if (!v60)
      {
        goto LABEL_160;
      }
    }

    v67 = *v60;
    sub_100011E48(v37, v39);
    v15 = bswap32(v67);
LABEL_14:
    v14 = 0;
    v16 = *(v0 + 72) + *(v0 + 128);
    v13 = v15;
    *v16 = v15;
    *(v16 + 8) = 0;
  }

  if (v14)
  {
    if (v13)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_131;
    }

    v80 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    v81 = 1;
    goto LABEL_133;
  }

  v68 = *(v0 + 72);
  if (v13)
  {
    v69 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v69;
    v70 = *(v68 + v69);
    v71 = *(v68 + v69 + 8);
    v72 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_123;
      }

      v83 = *(v70 + 16);
      v82 = *(v70 + 24);
      v25 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v25)
      {
        goto LABEL_155;
      }

      if (v84 < v13)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (!v72)
      {
        if (BYTE6(v71) >= v13)
        {
          goto LABEL_129;
        }

LABEL_123:
        v73 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v74 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v85 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v86 = swift_task_alloc();
        *(v0 + 112) = v86;
        *v86 = v0;
        v86[1] = sub_1000844BC;
        v87 = *(v0 + 72);
        v64 = v0 + 32;
        goto LABEL_124;
      }

      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_156;
      }

      if (HIDWORD(v70) - v70 < v13)
      {
        goto LABEL_123;
      }
    }

LABEL_129:
    sub_100012038(v70, v71);
    sub_10007A708(v13, v70, v71, v95);
    v79 = *(&v95[0] + 1);
    v78 = *&v95[0];
    sub_10008570C(v13);
    v68 = *(v0 + 72);
  }

  else
  {
    v78 = 0;
    v79 = 0xC000000000000000;
  }

  v88 = *(v0 + 80);
  v89 = *(v0 + 64);
  v90 = v68 + *(v0 + 128);
  *v90 = 0;
  *(v90 + 8) = 2;
  v80 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  *(v0 + 16) = v78;
  *(v0 + 24) = v79;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  sub_100012038(v78, v79);
  sub_1001D0970();
  sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001D0B10();
  sub_100011E48(v78, v79);
  if (!v11)
  {
    v81 = 0;
LABEL_133:
    v93 = *(v0 + 80);
    (*(*(v80 - 8) + 56))(*(v0 + 64), v81, 1, v80);

    v92 = *(v0 + 8);
    goto LABEL_134;
  }

LABEL_131:
  v91 = *(v0 + 80);

  v92 = *(v0 + 8);
LABEL_134:

  return v92();
}

uint64_t sub_100083C4C()
{
  v87 = v0;
  v1 = *(v0 + 72) + *(v0 + 128);
  *v1 = *(v0 + 104);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 72) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v63 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v64 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v65 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v66 = swift_task_alloc();
        *(v0 + 96) = v66;
        *v66 = v0;
        v66[1] = sub_100083210;
        v67 = *(v0 + 72);
        v54 = v0 + 48;
LABEL_113:
        v55 = v63;
        v56 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v54 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      v54 = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v57 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v57);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 72) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (!v3)
    {
      v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v81 = *(v0 + 80);

    v82 = *(v0 + 8);
  }

  else
  {
    v58 = *(v0 + 72);
    if (v3)
    {
      v59 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v59;
      v60 = *(v58 + v59);
      v61 = *(v58 + v59 + 8);
      v62 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        v15 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v15)
        {
          goto LABEL_142;
        }

        if (v74 < v3)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v62)
        {
          if (BYTE6(v61) >= v3)
          {
            goto LABEL_118;
          }

LABEL_112:
          v63 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v64 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
          v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v76 = swift_task_alloc();
          *(v0 + 112) = v76;
          *v76 = v0;
          v76[1] = sub_1000844BC;
          v77 = *(v0 + 72);
          v54 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v60) - v60 < v3)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v60, v61);
      sub_10007A708(v3, v60, v61, v85);
      v69 = *(&v85[0] + 1);
      v68 = *&v85[0];
      sub_10008570C(v3);
      v58 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v78 = *(v0 + 80);
    v79 = *(v0 + 64);
    v80 = v58 + *(v0 + 128);
    *v80 = 0;
    *(v80 + 8) = 2;
    v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    v83 = *(v0 + 80);
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v82 = *(v0 + 8);
  }

  return v82();
}

uint64_t sub_1000844BC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100084E9C;
  }

  else
  {
    v3 = sub_1000845D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000845D0()
{
  v93 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v3 = v2 + *(v0 + 128);
    sub_100089CEC();
    *v3 = swift_allocError();
    *(v3 + 8) = 1;
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v2 + *(v0 + 136);
    v6 = *(v0 + 40);
    sub_1001CFC30();
    sub_10002683C(v4, v1);
  }

  v7 = *(v0 + 120);
  v8 = (*(v0 + 72) + *(v0 + 128));
  v9 = *v8;
  v10 = *(v8 + 8);
  while (v10 == 2)
  {
    v13 = *(v0 + 72);
    v14 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v14;
    v15 = v13 + v14;
    v16 = *(v13 + v14);
    v17 = *(v13 + v14 + 8);
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_107;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_143;
      }

      if (v22 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v18)
    {
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_142;
      }

      if (HIDWORD(v16) - v16 < 4)
      {
LABEL_107:
        v69 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v70 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v71 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v72 = swift_task_alloc();
        *(v0 + 96) = v72;
        *v72 = v0;
        v72[1] = sub_100083210;
        v73 = *(v0 + 72);
        v60 = v0 + 48;
LABEL_116:
        v61 = v69;
        v62 = v70;

        return dispatch thunk of AsyncIteratorProtocol.next()(v60, v61, v62);
      }
    }

    else if (BYTE6(v17) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v18 == 2)
    {
      v23 = *(v16 + 16);
      v24 = *(v16 + 24);
    }

    else
    {
      if (v18 != 1)
      {
        v23 = 0;
        v25 = 0;
        v24 = BYTE6(v17);
        v26 = BYTE6(v17);
        goto LABEL_27;
      }

      v23 = v16;
      v24 = v16 >> 32;
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_1001CF890();
LABEL_150:
      __break(1u);
LABEL_151:
      v60 = sub_1001CF890();
      __break(1u);
LABEL_152:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v60, v61, v62);
    }

    if (v18 == 2)
    {
      v25 = *(v16 + 16);
      v26 = *(v16 + 24);
    }

    else
    {
      v25 = v16;
      v26 = v16 >> 32;
    }

LABEL_27:
    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_131;
    }

    v21 = __OFSUB__(v24, v23);
    v28 = v24 - v23;
    if (v21)
    {
      goto LABEL_132;
    }

    if (v28 < 4)
    {
      if (v18 != 2)
      {
        if (v18 != 1)
        {
          goto LABEL_55;
        }

        v29 = v16 >> 32;
LABEL_50:
        if (v29 < v16)
        {
          goto LABEL_130;
        }

        goto LABEL_55;
      }

      v29 = *(v16 + 24);
      goto LABEL_52;
    }

    v29 = v23 + 4;
    if (__OFADD__(v23, 4))
    {
      goto LABEL_139;
    }

    if (v18 == 2)
    {
      v30 = *(v16 + 16);
      v31 = *(v16 + 24);
    }

    else if (v18 == 1)
    {
      v30 = v16;
      v31 = v16 >> 32;
    }

    else
    {
      v30 = 0;
      v31 = BYTE6(v17);
    }

    if (v31 < v29 || v29 < v30)
    {
      goto LABEL_140;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v29 < *(v16 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_55;
    }

    if (v29 < 0)
    {
      goto LABEL_130;
    }

LABEL_55:
    v33 = sub_1001CFBC0();
    v35 = v34;
    v36 = *v15;
    v37 = *(v15 + 8);
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v41 = 0;
        v39 = 0;
        v42 = 0;
        v40 = 0;
        goto LABEL_66;
      }

      v39 = *(v36 + 16);
      v41 = *(v36 + 24);
    }

    else
    {
      if (!v38)
      {
        v39 = 0;
        v40 = 0;
        v41 = BYTE6(v37);
        v42 = BYTE6(v37);
        goto LABEL_66;
      }

      v39 = v36;
      v41 = v36 >> 32;
    }

    if (v41 < v39)
    {
      goto LABEL_133;
    }

    if (v38 == 2)
    {
      v40 = *(v36 + 16);
      v42 = *(v36 + 24);
    }

    else
    {
      v40 = v36;
      v42 = v36 >> 32;
    }

LABEL_66:
    if (v42 < v41 || v41 < v40)
    {
      goto LABEL_134;
    }

    v21 = __OFSUB__(v41, v39);
    v43 = v41 - v39;
    if (v21)
    {
      goto LABEL_135;
    }

    if (v43 < 4)
    {
      goto LABEL_141;
    }

    v44 = v39 + 4;
    if (__OFADD__(v39, 4))
    {
      goto LABEL_136;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v45 = *(v36 + 16);
        v46 = *(v36 + 24);
      }

      else
      {
        v46 = 0;
        v45 = 0;
      }
    }

    else if (v38)
    {
      v45 = v36;
      v46 = v36 >> 32;
    }

    else
    {
      v45 = 0;
      v46 = BYTE6(v37);
    }

    if (v46 < v44 || v44 < v45)
    {
      goto LABEL_137;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v47 = *(v36 + 24);
      }

      else
      {
        v47 = 0;
      }
    }

    else if (v38)
    {
      v47 = v36 >> 32;
    }

    else
    {
      v47 = BYTE6(v37);
    }

    sub_100012038(*v15, *(v15 + 8));
    sub_100011E48(v36, v37);
    if (v47 < v44)
    {
      goto LABEL_138;
    }

    v48 = sub_1001CFBC0();
    v50 = v49;
    sub_100011E48(v36, v37);
    *v15 = v48;
    *(v15 + 8) = v50;
    v51 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v51 != 2)
      {
        sub_100011E48(v33, v35);
        v11 = 0;
        goto LABEL_6;
      }

      v52 = *(v33 + 16);
      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_149;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v52, v55))
      {
        goto LABEL_145;
      }

      v56 = (v52 - v55 + v54);
      sub_1001CF890();
      if (!v56)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (!v51)
      {
        sub_100011E48(v33, v35);
        v11 = bswap32(v33);
        goto LABEL_6;
      }

      if (v33 > v33 >> 32)
      {
        goto LABEL_144;
      }

      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_151;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v33, v59))
      {
        goto LABEL_146;
      }

      v56 = (v33 - v59 + v58);
      v60 = sub_1001CF890();
      if (!v56)
      {
        goto LABEL_152;
      }
    }

    v63 = *v56;
    sub_100011E48(v33, v35);
    v11 = bswap32(v63);
LABEL_6:
    v10 = 0;
    v12 = *(v0 + 72) + *(v0 + 128);
    v9 = v11;
    *v12 = v11;
    *(v12 + 8) = 0;
  }

  if (v10)
  {
    if (v9)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_123;
    }

    v76 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    v77 = 1;
    goto LABEL_125;
  }

  v64 = *(v0 + 72);
  if (v9)
  {
    v65 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v65;
    v66 = *(v64 + v65);
    v67 = *(v64 + v65 + 8);
    v68 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_115;
      }

      v79 = *(v66 + 16);
      v78 = *(v66 + 24);
      v21 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v21)
      {
        goto LABEL_147;
      }

      if (v80 < v9)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (!v68)
      {
        if (BYTE6(v67) >= v9)
        {
          goto LABEL_121;
        }

LABEL_115:
        v69 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v70 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v81 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v82 = swift_task_alloc();
        *(v0 + 112) = v82;
        *v82 = v0;
        v82[1] = sub_1000844BC;
        v83 = *(v0 + 72);
        v60 = v0 + 32;
        goto LABEL_116;
      }

      if (__OFSUB__(HIDWORD(v66), v66))
      {
        goto LABEL_148;
      }

      if (HIDWORD(v66) - v66 < v9)
      {
        goto LABEL_115;
      }
    }

LABEL_121:
    sub_100012038(v66, v67);
    sub_10007A708(v9, v66, v67, v91);
    v75 = *(&v91[0] + 1);
    v74 = *&v91[0];
    sub_10008570C(v9);
    v64 = *(v0 + 72);
  }

  else
  {
    v74 = 0;
    v75 = 0xC000000000000000;
  }

  v84 = *(v0 + 80);
  v85 = *(v0 + 64);
  v86 = v64 + *(v0 + 128);
  *v86 = 0;
  *(v86 + 8) = 2;
  v76 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  *(v0 + 16) = v74;
  *(v0 + 24) = v75;
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  sub_100012038(v74, v75);
  sub_1001D0970();
  sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001D0B10();
  sub_100011E48(v74, v75);
  if (!v7)
  {
    v77 = 0;
LABEL_125:
    v89 = *(v0 + 80);
    (*(*(v76 - 8) + 56))(*(v0 + 64), v77, 1, v76);

    v88 = *(v0 + 8);
    goto LABEL_126;
  }

LABEL_123:
  v87 = *(v0 + 80);

  v88 = *(v0 + 8);
LABEL_126:

  return v88();
}