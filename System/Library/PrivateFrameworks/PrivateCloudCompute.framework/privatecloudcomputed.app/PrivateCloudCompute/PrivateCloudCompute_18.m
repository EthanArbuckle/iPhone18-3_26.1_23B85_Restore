uint64_t sub_1001B0DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1001CFD60();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001B0EA0, v3, 0);
}

uint64_t sub_1001B0EA0()
{
  v26 = v0;
  v1 = *(v0 + 24);
  *(v0 + 72) = *(**(v0 + 40) + 160);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(v5, v4, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "Request succeeded featureId=%s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15 = v11[39];
  v16 = v11[40];
  v17 = v11 + *(*v11 + 152);
  sub_1001CFE00();
  v18 = sub_1000123B4(v8, v14, v13, v15, v16);
  v20 = v19;
  (*(v9 + 8))(v8, v10);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v21 = swift_allocObject();
  *(v0 + 80) = v21;
  *(v21 + 16) = xmmword_1001D39F0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  v22 = v11[14];
  v23 = swift_task_alloc();
  *(v0 + 88) = v23;
  *v23 = v0;
  v23[1] = sub_1001B10E4;

  return sub_100013C9C(v21);
}

uint64_t sub_1001B10E4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  if (v0)
  {
    v5 = v4[5];

    return _swift_task_switch(sub_1001B1248, v5, 0);
  }

  else
  {
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1001B1248()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to write to file: %@", v8, 0xCu);
    sub_100011F00(v9, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001B13B8(uint64_t a1)
{
  v3 = sub_1001D0760();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v41 = v1;
  v79 = &_swiftEmptyArrayStorage;
  sub_1001517B8(0, v9, 0);
  v10 = v79;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = sub_1001D1FB0();
  if (result < 0 || (v14 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v15 = *(a1 + 36);
    v44 = a1 + 64;
    v45 = v50 + 32;
    v42 = a1 + 72;
    v43 = v9;
    v16 = 1;
    v47 = v8;
    v48 = a1;
    v46 = v15;
    while ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      if (v15 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v52 = 1 << v14;
      v53 = v14 >> 6;
      v51 = v16;
      v17 = (*(a1 + 48) + 16 * v14);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(a1 + 56) + 72 * v14);
      v60[0] = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = v20[1];
      v61 = *(v20 + 8);
      v60[2] = v22;
      v60[3] = v21;
      v60[1] = v23;
      v24 = *v20;
      v25 = v20[1];
      v26 = v20[2];
      v27 = v20[3];
      v59 = *(v20 + 8);
      v57 = v26;
      v58 = v27;
      v55 = v24;
      v56 = v25;
      memmove(&v62, v20, 0x48uLL);
      v67[0] = v19;
      v67[1] = v18;
      v70 = v57;
      v71 = v58;
      v72 = v59;
      v68 = v55;
      v69 = v56;
      swift_bridgeObjectRetain_n();
      sub_10001208C(v60, v54, &qword_100230140, &qword_1001D36F0);
      sub_10001208C(&v62, v54, &qword_100230140, &qword_1001D36F0);
      sub_100011F00(v67, &qword_100230148, &unk_1001E1F18);
      v78 = v66;
      v76 = v64;
      v77 = v65;
      v74 = v62;
      v75 = v63;
      v73[0] = v19;
      v73[1] = v18;
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      v80 = v10;
      if (v63)
      {
        if (v63 == 2)
        {
          v28 = 0xE800000000000000;
          v29._countAndFlagsBits = 0x6465696669726576;
        }

        else if (v63 == 1)
        {
          v28 = 0xE900000000000067;
          v29._countAndFlagsBits = 0x6E69796669726576;
        }

        else
        {
          v29._countAndFlagsBits = 0x6465696669726576;
          v28 = 0xEE0064656C696146;
        }
      }

      else
      {
        v28 = 0xEA00000000006465;
        v29._countAndFlagsBits = 0x6966697265766E75;
      }

      v29._object = v28;
      sub_1001D18B0(v29);

      v30 = v47;
      sub_1001D0750();
      sub_100011F00(v73, &qword_100230148, &unk_1001E1F18);
      v10 = v80;
      v79 = v80;
      v32 = v80[2];
      v31 = v80[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001517B8(v31 > 1, v32 + 1, 1);
        v10 = v79;
      }

      v10[2] = v32 + 1;
      result = (*(v50 + 32))(v10 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v32, v30, v49);
      a1 = v48;
      v33 = 1 << *(v48 + 32);
      LODWORD(v15) = v46;
      if (v14 >= v33)
      {
        goto LABEL_34;
      }

      v11 = v44;
      v34 = *(v44 + 8 * v53);
      if ((v34 & v52) == 0)
      {
        goto LABEL_35;
      }

      if (v46 != *(v48 + 36))
      {
        goto LABEL_36;
      }

      v35 = v34 & (-2 << (v14 & 0x3F));
      if (v35)
      {
        v14 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v53 << 6;
        v37 = v53 + 1;
        v38 = (v42 + 8 * v53);
        while (v37 < (v33 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_10001202C(v14, v46, 0);
            v14 = __clz(__rbit64(v39)) + v36;
            goto LABEL_26;
          }
        }

        result = sub_10001202C(v14, v46, 0);
        v14 = v33;
      }

LABEL_26:
      if (v51 == v43)
      {
        return v10;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v16 = v51 + 1;
        if (v14 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1001B18FC(uint64_t a1)
{
  v36 = sub_1001D0720();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v30 = v1;
    v40 = &_swiftEmptyArrayStorage;
    sub_1001517FC(0, v8, 0);
    v39 = v40;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = sub_1001D1FB0();
    v12 = result;
    v13 = 0;
    v34 = v3 + 32;
    v35 = v3;
    v31 = a1 + 72;
    v32 = v8;
    v33 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a1 + 36);
      v37 = v13;
      v38 = v16;
      v17 = *(*(a1 + 56) + 8 * v12);

      sub_1001B8A00(v7);

      v18 = v39;
      v40 = v39;
      v19 = a1;
      v21 = v39[2];
      v20 = v39[3];
      if (v21 >= v20 >> 1)
      {
        sub_1001517FC(v20 > 1, v21 + 1, 1);
        v18 = v40;
      }

      v18[2] = v21 + 1;
      v22 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v39 = v18;
      result = (*(v35 + 32))(v18 + v22 + *(v35 + 72) * v21, v7, v36);
      v14 = 1 << *(v19 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v10 = v33;
      v23 = *(v33 + 8 * v15);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v38 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v27 = (v31 + 8 * v15);
        while (v26 < (v14 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_10001202C(v12, v38, 0);
            v14 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_10001202C(v12, v38, 0);
LABEL_19:
        a1 = v19;
      }

      v13 = v37 + 1;
      v12 = v14;
      if (v37 + 1 == v32)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B1C04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100011AC0(&qword_1002301F0, &qword_1001E2120) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1001CFF00();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001B1CFC, 0, 0);
}

uint64_t sub_1001B1CFC()
{
  v1 = v0[2];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[8] = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      sub_1001D17D0();
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  v0[9] = v4;
  v8 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v14 = *v12;
  v15 = v12[1];
  v16 = *v13;
  v0[10] = *v13;
  v17 = v13[1];
  v0[11] = v17;
  v18 = v13[2];
  v0[12] = v18;
  v19 = sub_1001C8E94(v18);
  v0[13] = v19;
  (*(v8 + 16))(v11, v9, v10);
  (*(v8 + 56))(v11, 0, 1, v10);
  v20 = async function pointer to static Reporter.report(teamID:eventType:event:transportConfiguration:)[1];
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_1001B1EF0;
  v22 = v0[4];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v14, v15, v16, v17, v19, v22);
}

uint64_t sub_1001B1EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 32);
  v5 = *v1;
  v2[15] = v0;

  sub_100011F00(v4, &qword_1002301F0, &qword_1001E2120);
  v6 = v2[13];
  if (v0)
  {
    v7 = v2[9];

    v8 = sub_1001B22AC;
  }

  else
  {

    v8 = sub_1001B2068;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001B2068()
{
  v28 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(type metadata accessor for MetricReporter() + 20);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[11];
    v8 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[6];
    v25 = v0[5];
    v26 = v0[7];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000954E0(v10, v9, &v27);
    *(v13 + 12) = 2080;
    v14 = sub_1001B2AFC(v8, &qword_1002301F8, &unk_1001E2128, &type metadata for FirstInvokeRequestSendMetric.EventName);
    v16 = sub_1000954E0(v14, v15, &v27);

    *(v13 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v6, v7, "Logged metric %s\n%s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v26, v25);
  }

  else
  {
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001B22AC()
{
  v19 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v5 = *(type metadata accessor for MetricReporter() + 20);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1DE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000954E0(v11, v10, &v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to report metric %s", v12, 0xCu);
    sub_100011CF0(v13);
  }

  v14 = v0[7];
  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001B2454(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100011AC0(&qword_1002301F0, &qword_1001E2120) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1001CFF00();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001B254C, 0, 0);
}

uint64_t sub_1001B254C()
{
  v1 = v0[2];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[8] = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      sub_1001D17D0();
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  v0[9] = v4;
  v8 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v14 = *v12;
  v15 = v12[1];
  v16 = *v13;
  v0[10] = *v13;
  v17 = v13[1];
  v0[11] = v17;
  v18 = v13[2];
  v0[12] = v18;
  v19 = sub_1001C9514(v18);
  v0[13] = v19;
  (*(v8 + 16))(v11, v9, v10);
  (*(v8 + 56))(v11, 0, 1, v10);
  v20 = async function pointer to static Reporter.report(teamID:eventType:event:transportConfiguration:)[1];
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_1001B2740;
  v22 = v0[4];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v14, v15, v16, v17, v19, v22);
}

uint64_t sub_1001B2740()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 32);
  v5 = *v1;
  v2[15] = v0;

  sub_100011F00(v4, &qword_1002301F0, &qword_1001E2120);
  v6 = v2[13];
  if (v0)
  {
    v7 = v2[9];

    v8 = sub_1001CC618;
  }

  else
  {

    v8 = sub_1001B28B8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001B28B8()
{
  v28 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(type metadata accessor for MetricReporter() + 20);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[11];
    v8 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[6];
    v25 = v0[5];
    v26 = v0[7];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000954E0(v10, v9, &v27);
    *(v13 + 12) = 2080;
    v14 = sub_1001B2AFC(v8, &qword_100230240, &qword_1001E2168, &type metadata for FirstPrefetchRequestSendMetric.EventName);
    v16 = sub_1000954E0(v14, v15, &v27);

    *(v13 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v6, v7, "Logged metric %s\n%s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v26, v25);
  }

  else
  {
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001B2AFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v103 = a4;
  v7 = sub_1001CFDA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001CFEE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v100 = (&v75 - v21);
  v101 = a2;
  v102 = a3;
  v99 = sub_100011AC0(a2, a3);
  v22 = *(*(v99 - 8) + 64);
  v24 = __chkstk_darwin(v99, v23);
  v108 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v98 = &v75 - v27;
  v28 = *(a1 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (!v28)
  {
LABEL_39:
    v110 = v29;

    sub_100152064(&v110);

    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80);
    v73 = sub_1001D1750();

    return v73;
  }

  v78 = v19;
  v79 = v12;
  v80 = v7;
  v112 = _swiftEmptyArrayStorage;
  sub_1001514F8(0, v28, 0);
  v29 = v112;
  v30 = a1 + 64;
  v31 = -1 << *(a1 + 32);
  v32 = sub_1001D1FB0();
  v33 = v8;
  v34 = v32;
  v35 = 0;
  v36 = v13;
  v37 = *(a1 + 36);
  v97 = v14 + 16;
  v94 = v14 + 88;
  v95 = v14 + 32;
  v93 = enum case for EventValue.string(_:);
  v86 = enum case for EventValue.int(_:);
  v84 = enum case for EventValue.uint(_:);
  v83 = enum case for EventValue.double(_:);
  v82 = enum case for EventValue.BOOL(_:);
  v77 = (v14 + 8);
  v96 = v14;
  v87 = (v14 + 96);
  v76 = (v33 + 32);
  v75 = (v33 + 8);
  v85 = a1 + 72;
  v81 = enum case for EventValue.uuid(_:);
  v89 = v36;
  v88 = v28;
  v91 = a1 + 64;
  v90 = v37;
  v92 = a1;
  while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(a1 + 32))
  {
    if ((*(v30 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
    {
      goto LABEL_41;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_42;
    }

    v105 = 1 << v34;
    v106 = v34 >> 6;
    v104 = v35;
    v107 = v29;
    v40 = v98;
    v39 = v99;
    v41 = *(v99 + 48);
    v42 = *(a1 + 56);
    v43 = *(*(a1 + 48) + v34);
    v44 = v96;
    v45 = *(v96 + 16);
    v45(&v98[v41], v42 + *(v96 + 72) * v34, v36);
    v46 = v108;
    *v108 = v43;
    v47 = *(v39 + 48);
    (*(v44 + 32))(&v46[v47], &v40[v41], v36);
    v110 = 0;
    v111 = 0xE000000000000000;
    LOBYTE(v109) = v43;
    sub_1001D2120();
    v113._countAndFlagsBits = 8250;
    v113._object = 0xE200000000000000;
    sub_1001D18B0(v113);
    v48 = v100;
    v45(v100, &v46[v47], v36);
    v49 = (*(v44 + 88))(v48, v36);
    if (v49 == v93)
    {
      (*v87)(v48, v36);
      v51 = *v48;
      v50 = v48[1];
      a1 = v92;
      v29 = v107;
      goto LABEL_18;
    }

    a1 = v92;
    if (v49 == v86)
    {
      (*v87)(v48, v36);
      v109 = *v48;
      v51 = sub_1001D23A0();
      v50 = v52;
      v29 = v107;
      goto LABEL_18;
    }

    v29 = v107;
    if (v49 == v84)
    {
      (*v87)(v48, v36);
      v109 = *v48;
      v53 = sub_1001D23A0();
LABEL_17:
      v51 = v53;
      v50 = v54;
      goto LABEL_18;
    }

    if (v49 == v83)
    {
      (*v87)(v48, v36);
      v55 = *v48;
      v53 = sub_1001D1CA0();
      goto LABEL_17;
    }

    if (v49 == v82)
    {
      (*v87)(v48, v36);
      if (*v48)
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (*v48)
      {
        v50 = 0xE400000000000000;
      }

      else
      {
        v50 = 0xE500000000000000;
      }
    }

    else if (v49 == v81)
    {
      (*v87)(v48, v36);
      v68 = v79;
      v69 = v48;
      v70 = v80;
      (*v76)(v79, v69, v80);
      v51 = sub_1001CFD70();
      v50 = v71;
      (*v75)(v68, v70);
    }

    else
    {
      v45(v78, &v108[v47], v36);
      v51 = sub_1001D1820();
      v50 = v72;
      (*v77)(v48, v36);
    }

LABEL_18:
    v114._countAndFlagsBits = v51;
    v114._object = v50;
    sub_1001D18B0(v114);

    v115._countAndFlagsBits = 10;
    v115._object = 0xE100000000000000;
    sub_1001D18B0(v115);
    v56 = v110;
    v57 = v111;
    sub_100011F00(v108, v101, v102);
    v112 = v29;
    v59 = *(v29 + 2);
    v58 = *(v29 + 3);
    if (v59 >= v58 >> 1)
    {
      sub_1001514F8((v58 > 1), v59 + 1, 1);
      v29 = v112;
    }

    *(v29 + 2) = v59 + 1;
    v60 = &v29[16 * v59];
    *(v60 + 4) = v56;
    *(v60 + 5) = v57;
    v38 = 1 << *(a1 + 32);
    if (v34 >= v38)
    {
      goto LABEL_43;
    }

    v30 = v91;
    v61 = *(v91 + 8 * v106);
    if ((v61 & v105) == 0)
    {
      goto LABEL_44;
    }

    LODWORD(v37) = v90;
    if (v90 != *(a1 + 36))
    {
      goto LABEL_45;
    }

    v62 = v61 & (-2 << (v34 & 0x3F));
    if (v62)
    {
      v38 = __clz(__rbit64(v62)) | v34 & 0x7FFFFFFFFFFFFFC0;
      v36 = v89;
    }

    else
    {
      v63 = v106 << 6;
      v64 = v106 + 1;
      v65 = (v85 + 8 * v106);
      v36 = v89;
      while (v64 < (v38 + 63) >> 6)
      {
        v67 = *v65++;
        v66 = v67;
        v63 += 64;
        ++v64;
        if (v67)
        {
          sub_10001202C(v34, v90, 0);
          v38 = __clz(__rbit64(v66)) + v63;
          goto LABEL_4;
        }
      }

      sub_10001202C(v34, v90, 0);
    }

LABEL_4:
    v35 = v104 + 1;
    v34 = v38;
    if (v104 + 1 == v88)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_1001B3428(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v35 = a1;
  v36 = a2;
  v8 = sub_1001CFB10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001D02F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v20 = sub_1001CF820();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v4[14] = sub_1001CF810();
  v4[15] = 10;
  v23 = *(*v4 + 136);
  (*(v15 + 104))(v19, enum case for TC2LogCategory.metricReporter(_:), v14);
  sub_1001D08B0();
  (*(v15 + 8))(v19, v14);
  v24 = v36;
  v5[16] = v35;
  v5[17] = v24;
  (*(v9 + 16))(v13, a3, v8);
  v25 = type metadata accessor for NodeDistributionAnalyzerStoreHelper(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1000252DC(v13);
  (*(v9 + 8))(a3, v8);
  *(v5 + *(*v5 + 144)) = v28;
  v29 = a4[9];
  *(v5 + 17) = a4[8];
  *(v5 + 18) = v29;
  *(v5 + 19) = a4[10];
  v30 = a4[5];
  *(v5 + 13) = a4[4];
  *(v5 + 14) = v30;
  v31 = a4[7];
  *(v5 + 15) = a4[6];
  *(v5 + 16) = v31;
  v32 = a4[1];
  *(v5 + 9) = *a4;
  *(v5 + 10) = v32;
  v33 = a4[3];
  *(v5 + 11) = a4[2];
  *(v5 + 12) = v33;
  return v5;
}

uint64_t sub_1001B36A8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1001B36CC, v2, 0);
}

uint64_t sub_1001B36CC()
{
  v26 = v0;
  v1 = 0x6863746566657270;
  v2 = *(v0 + 16);
  *(v0 + 32) = *(**(v0 + 24) + 136);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1001D19E0();
    v10 = sub_1000954E0(v8, v9, &v25);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = 0x6D726177657270;
    if (v5 != 1)
    {
      v11 = 0x74736575716572;
    }

    if (v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6863746566657270;
    }

    if (v5)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = sub_1000954E0(v12, v13, &v25);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Receiving nodes %s from %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 64);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001D39F0;
  if (v15)
  {
    v17 = 0xE700000000000000;
    if (v15 == 1)
    {
      v1 = 0x6D726177657270;
    }

    else
    {
      v1 = 0x74736575716572;
    }
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  *(v16 + 32) = v1;
  *(v16 + 40) = v17;
  v25 = v16;

  sub_10003A288(v20);
  v21 = v25;
  *(v0 + 40) = v25;
  v22 = *(v19 + *(*v19 + 144));
  v23 = swift_task_alloc();
  *(v0 + 48) = v23;
  *v23 = v0;
  v23[1] = sub_1001B39B0;

  return sub_100025030(v21);
}

uint64_t sub_1001B39B0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[7] = v0;

  if (v0)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_1001B3B0C, v5, 0);
  }

  else
  {
    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1001B3B0C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed writing to file: %@", v8, 0xCu);
    sub_100011F00(v9, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

void sub_1001B3C70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001D02E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  sub_1001D0170();
  sub_1001D1840();

  v15 = os_variant_allows_internal_security_policies();

  if (v15)
  {
    sub_1001D0170();
    sub_1001D1840();

    v16 = os_variant_allows_internal_security_policies();

    if (!v16)
    {
      __break(1u);
      return;
    }

    sub_1001B5970(v14);
    v17 = *(v5 + 48);
    if (v17(v14, 1, v4) == 1)
    {
      sub_1001B5F5C(a1, a2);
      if (v17(v14, 1, v4) != 1)
      {
        sub_100011F00(v14, &unk_100230300, &qword_1001D7138);
      }
    }

    else
    {
      (*(v5 + 32))(a2, v14, v4);
    }
  }

  else
  {
    sub_1001B5714(a2);
  }

  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v18 = sub_1001D0E60();
  sub_10003A37C(v18, qword_1002298E0);
  (*(v5 + 16))(v9, a2, v4);
  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    v23 = sub_1001D02B0();
    v25 = v24;
    (*(v5 + 8))(v9, v4);
    v26 = sub_1000954E0(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "current environment=%{public}s", v21, 0xCu);
    sub_100011CF0(v22);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_1001B3FF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v51 = a1;
  v4 = sub_100011AC0(&unk_1002302E0, &qword_1001E2220);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v49 = &v41 - v7;
  v50 = sub_1001CFE60();
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v50, v9);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1001CFDE0();
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v48, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001CFE40();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  __chkstk_darwin(v16, v18);
  v45 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v41 - v23;
  swift_defaultActor_initialize();
  v25 = qword_100229848;
  v26 = sub_1001CFD60();
  v27 = *(*(v26 - 8) + 56);
  v27(v3 + v25, 1, 1, v26);
  v28 = qword_100229850;
  v27(v3 + qword_100229850, 1, 1, v26);
  v29 = *(v51 + 160);
  *(v3 + qword_100242F28) = v29;
  v53 = v29;
  v30 = *(*v3 + 152);
  v31 = v46;
  *(v3 + v30) = v46;
  sub_1001CC4C0(&v53, v52);
  v32 = v31;
  sub_1000931F4(v32, v24);
  swift_beginAccess();
  sub_10001BAC8(v24, v3 + v25, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v33 = *(v3 + v30);
  v34 = v47;
  sub_100096820(v24);

  v35 = v49;
  swift_beginAccess();
  v36 = v3 + v28;
  v37 = v50;
  v38 = v45;
  sub_10001BAC8(v24, v36, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v39 = v48;
  (*(v11 + 104))(v15, enum case for Calendar.Identifier.gregorian(_:), v48);
  sub_1001CFDF0();
  (*(v11 + 8))(v15, v39);
  sub_1001CFE50();
  result = (*(v34 + 48))(v35, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100088D84(v51);

    (*(v34 + 32))(v44, v35, v37);
    sub_1001CFE20();
    (*(v42 + 32))(v3 + qword_100242F30, v38, v43);
    return v3;
  }

  return result;
}

uint64_t sub_1001B44B8@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v88 = a2;
  v89 = a3;
  v93 = a1;
  v94 = a4;
  v6 = sub_1001CFDD0();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  __chkstk_darwin(v6, v8);
  v98 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001CFDA0();
  v11 = *(v10 - 8);
  v96 = v10;
  v97 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001CFD60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v99 = &v84 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v84 - v25;
  v27 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v92 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v35 = &v84 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v84 - v37;
  v39 = qword_100229848;
  swift_beginAccess();
  sub_10001208C(v5 + v39, v38, &qword_100227A38, &unk_1001D35F0);
  v40 = v16;
  sub_10001208C(v38, v35, &qword_100227A38, &unk_1001D35F0);
  if ((*(v16 + 48))(v35, 1, v15) == 1)
  {
    sub_100011F00(v38, &qword_100227A38, &unk_1001D35F0);
    sub_100011F00(v35, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v16 + 32))(v26, v35, v15);
    v87 = v5;
    v41 = v99;
    sub_1001CFCA0();
    sub_1001CC51C(&qword_100230230, &type metadata accessor for Date);
    v42 = sub_1001D1780();
    v43 = *(v16 + 8);
    v5 = v87;
    v43(v41, v15);
    v43(v26, v15);
    result = sub_100011F00(v38, &qword_100227A38, &unk_1001D35F0);
    if ((v42 & 1) == 0)
    {
      v82 = 0;
      v81 = 0;
      v78 = 0;
      goto LABEL_9;
    }
  }

  v45 = v99;
  sub_1001CFE00();
  v46 = v92;
  (*(v40 + 16))(v92, v45, v15);
  v86 = v40;
  v87 = v15;
  (*(v40 + 56))(v46, 0, 1, v15);
  swift_beginAccess();
  sub_10001BAC8(v46, v5 + v39, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v47 = *(v5 + *(*v5 + 152));
  isa = sub_1001CFCB0().super.isa;
  v49 = sub_1001D17A0();
  [v47 setObject:isa forKey:v49];

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v97 + 16))(v100, v93, v96);
  v51 = *(v5 + qword_100242F28);
  v50 = *(v5 + qword_100242F28 + 8);

  sub_1001CFDC0();
  sub_100011AC0(&unk_100230220, &qword_1001E2148);
  v52 = sub_100011AC0(&qword_10022BDC8, &qword_1001E2150);
  v53 = *(*(v52 - 8) + 72);
  v54 = (*(*(v52 - 8) + 80) + 32) & ~*(*(v52 - 8) + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1001D62F0;
  v56 = (v55 + v54);
  v57 = *(v52 + 48);
  *v56 = 0;
  result = sub_1001CFD20();
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v58 < 9.22337204e18)
  {
    v93 = 0x80000001001E7D00;
    *&v56[v57] = v58;
    v59 = enum case for EventValue.int(_:);
    v60 = sub_1001CFEE0();
    v92 = v55;
    v61 = v60;
    v62 = *(v60 - 8);
    v85 = v51;
    v63 = *(v62 + 104);
    (v63)(&v56[v57], v59, v60);
    v64 = &v56[v53 + *(v52 + 48)];
    v56[v53] = 1;
    v65 = v89;
    *v64 = v88;
    v64[1] = v65;
    v88 = v50;
    v66 = enum case for EventValue.string(_:);
    v63();
    v67 = &v56[2 * v53];
    v68 = &v67[*(v52 + 48)];
    *v67 = 2;

    *v68 = sub_1001CFD70();
    v68[1] = v69;
    (v63)(v68, v66, v61);
    v70 = &v56[3 * v53];
    v71 = *(v52 + 48);
    *v70 = 3;
    v72 = &v70[v71];
    v73 = v88;
    *v72 = v85;
    v72[1] = v73;
    v63();
    v74 = &v56[4 * v53];
    v75 = &v74[*(v52 + 48)];
    *v74 = 4;
    v76 = v98;
    *v75 = sub_1001CFDB0();
    v75[1] = v77;
    (v63)(v75, v66, v61);
    v78 = sub_1000D5578(v92);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v90 + 8))(v76, v91);
    (*(v97 + 8))(v100, v96);
    v79 = v87;
    v80 = *(v86 + 8);
    v80(v95, v87);
    result = (v80)(v99, v79);
    v81 = v93;
    v82 = 0xD000000000000015;
LABEL_9:
    v83 = v94;
    *v94 = v82;
    v83[1] = v81;
    v83[3] = 0;
    v83[4] = 0;
    v83[2] = v78;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001B4D6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v7 = v6;
  v103 = a5;
  v104 = a2;
  v99 = a3;
  v100 = a4;
  v105 = a6;
  v106 = a1;
  v8 = sub_1001CFDD0();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  __chkstk_darwin(v8, v10);
  v109 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1001CFDA0();
  v108 = *(v110 - 8);
  v12 = *(v108 + 64);
  __chkstk_darwin(v110, v13);
  v112 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001CFD60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v107 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v111 = &v93 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v93 - v25;
  v27 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v30, v33);
  v36 = &v93 - v35;
  __chkstk_darwin(v34, v37);
  v39 = &v93 - v38;
  v40 = qword_100229850;
  swift_beginAccess();
  sub_10001208C(v7 + v40, v39, &qword_100227A38, &unk_1001D35F0);
  v41 = v16;
  sub_10001208C(v39, v36, &qword_100227A38, &unk_1001D35F0);
  if ((*(v16 + 48))(v36, 1, v15) == 1)
  {
    sub_100011F00(v39, &qword_100227A38, &unk_1001D35F0);
    sub_100011F00(v36, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v16 + 32))(v26, v36, v15);
    v98 = v32;
    v42 = v111;
    sub_1001CFCA0();
    sub_1001CC51C(&qword_100230230, &type metadata accessor for Date);
    v43 = sub_1001D1780();
    v44 = *(v16 + 8);
    v45 = v42;
    v32 = v98;
    v44(v45, v15);
    v44(v26, v15);
    v41 = v16;
    result = sub_100011F00(v39, &qword_100227A38, &unk_1001D35F0);
    if ((v43 & 1) == 0)
    {
      v91 = 0;
      v90 = 0;
      v87 = 0;
      goto LABEL_9;
    }
  }

  v47 = v106;
  v48 = v107;
  sub_1001CFE00();
  v98 = *(v41 + 16);
  (v98)(v32, v48, v15);
  (*(v41 + 56))(v32, 0, 1, v15);
  swift_beginAccess();
  sub_10001BAC8(v32, v7 + v40, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v49 = *(v7 + *(*v7 + 152));
  isa = sub_1001CFCB0().super.isa;
  v51 = sub_1001D17A0();
  [v49 setObject:isa forKey:v51];

  v52 = v103;
  v53 = v103 + qword_10022F7E8;
  os_unfair_lock_lock((v103 + qword_10022F7E8));
  v97 = sub_1001B9B40((v53 + 8), v52, v47);
  v103 = v54;
  os_unfair_lock_unlock(v53);
  (v98)(v111, v47, v15);
  (*(v108 + 16))(v112, v104, v110);
  v55 = *(v7 + qword_100242F28 + 8);
  v106 = *(v7 + qword_100242F28);

  sub_1001CFDC0();
  sub_100011AC0(&unk_100230250, &qword_1001E2178);
  v56 = sub_100011AC0(&qword_10022BDD8, &unk_1001E2180);
  v57 = *(*(v56 - 8) + 72);
  v58 = (*(*(v56 - 8) + 80) + 32) & ~*(*(v56 - 8) + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1001D3ED0;
  v60 = v59 + v58;
  v61 = *(v56 + 48);
  *(v59 + v58) = 0;
  result = sub_1001CFD20();
  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v62 < 9.22337204e18)
  {
    v104 = 0x80000001001E7D40;
    *(v60 + v61) = v62;
    v63 = enum case for EventValue.int(_:);
    v95 = enum case for EventValue.int(_:);
    v64 = sub_1001CFEE0();
    v98 = v15;
    v65 = v64;
    v66 = *(v64 - 8);
    v96 = v41;
    v67 = *(v66 + 104);
    v94 = v55;
    (v67)(v60 + v61, v63, v64);
    v68 = (v60 + v57 + *(v56 + 48));
    *(v60 + v57) = 1;
    v69 = v100;
    *v68 = v99;
    v68[1] = v69;
    v70 = enum case for EventValue.string(_:);
    v67();
    v99 = v59;
    v71 = (v60 + 2 * v57);
    v72 = &v71[*(v56 + 48)];
    *v71 = 2;

    *v72 = sub_1001CFD70();
    v72[1] = v73;
    (v67)(v72, v70, v65);
    v74 = (v60 + 3 * v57);
    v75 = *(v56 + 48);
    *v74 = 3;
    v76 = &v74[v75];
    v77 = v94;
    *v76 = v106;
    v76[1] = v77;
    v67();
    v78 = (v60 + 4 * v57);
    v79 = &v78[*(v56 + 48)];
    *v78 = 4;
    v80 = v109;
    *v79 = sub_1001CFDB0();
    v79[1] = v81;
    (v67)(v79, v70, v65);
    v82 = (v60 + 5 * v57);
    v83 = *(v56 + 48);
    *v82 = 5;
    *&v82[v83] = v97;
    v84 = v95;
    (v67)(&v82[v83], v95, v65);
    v85 = *(v56 + 48);
    v86 = (v60 + 6 * v57);
    *v86 = 6;
    *&v86[v85] = v103;
    (v67)(&v86[v85], v84, v65);
    v87 = sub_1000D5760(v99);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v101 + 8))(v80, v102);
    (*(v108 + 8))(v112, v110);
    v88 = *(v96 + 8);
    v89 = v98;
    v88(v111, v98);
    result = (v88)(v107, v89);
    v90 = v104;
    v91 = 0xD000000000000014;
LABEL_9:
    v92 = v105;
    *v105 = v91;
    v92[1] = v90;
    v92[3] = 0;
    v92[4] = 0;
    v92[2] = v87;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1001B5714(uint64_t a1@<X8>)
{
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(a1, enum case for TC2Environment.production(_:), v2);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v8 = sub_1001D0E60();
  sub_10003A37C(v8, qword_1002298E0);
  (*(v3 + 16))(v7, a1, v2);
  v9 = sub_1001D0E50();
  v10 = sub_1001D1DD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_1001D02B0();
    v15 = v14;
    (*(v3 + 8))(v7, v2);
    v16 = sub_1000954E0(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration selected environment=%{public}s", v11, 0xCu);
    sub_100011CF0(v12);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1001B5970@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v42 - v4;
  v6 = sub_1001D02E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v42 - v16;
  sub_1001D0170();
  sub_1001D1840();

  v18 = os_variant_allows_internal_security_policies();

  if (!v18)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0310();
  sub_1001D05B0();
  sub_10005956C();
  sub_1001D0210();
  (*(v13 + 8))(v17, v12);
  v19 = v45;
  if (!v45)
  {
    if (qword_100227738 == -1)
    {
LABEL_9:
      v27 = sub_1001D0E60();
      sub_10003A37C(v27, qword_1002298E0);
      v22 = sub_1001D0E50();
      v28 = sub_1001D1DD0();
      if (!os_log_type_enabled(v22, v28))
      {
LABEL_17:

        v38 = 1;
        v39 = v43;
        return (*(v7 + 56))(v39, v38, 1, v6);
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v22, v28, "Configuration defaults absent, no environment configured", v29, 2u);
LABEL_11:

      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  v20 = v44;

  sub_1001D02A0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100011F00(v5, &unk_100230300, &qword_1001D7138);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v21 = sub_1001D0E60();
    sub_10003A37C(v21, qword_1002298E0);

    v22 = sub_1001D0E50();
    v23 = sub_1001D1DD0();

    if (!os_log_type_enabled(v22, v23))
    {

      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136446210;
    v26 = sub_1000954E0(v20, v19, &v44);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Configuration defaults=%{public}s unrecognized, no environment configured", v24, 0xCu);
    sub_100011CF0(v25);

    goto LABEL_11;
  }

  v30 = *(v7 + 32);
  v30(v11, v5, v6);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v31 = sub_1001D0E60();
  sub_10003A37C(v31, qword_1002298E0);

  v32 = sub_1001D0E50();
  v33 = sub_1001D1DC0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42 = v30;
    v35 = v34;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v35 = 136446210;
    v37 = sub_1000954E0(v20, v19, &v44);

    *(v35 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "Configuration selected configured environment=%{public}s from defaults", v35, 0xCu);
    sub_100011CF0(v36);

    v30 = v42;
  }

  else
  {
  }

  v40 = v43;
  v30(v43, v11, v6);
  v39 = v40;
  v38 = 0;
  return (*(v7 + 56))(v39, v38, 1, v6);
}

uint64_t sub_1001B5F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v163 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v152 - v9;
  v167 = sub_1001D02E0();
  v168 = *(v167 - 8);
  v11 = *(v168 + 64);
  v13 = __chkstk_darwin(v167, v12);
  v164 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v165 = &v152 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v162 = &v152 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v160 = &v152 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v152 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v152 - v29;
  v31 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v31, v34);
  v37 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v38);
  v40 = &v152 - v39;
  sub_1001D0170();
  v41 = sub_1001D1840();

  v42 = os_variant_allows_internal_security_policies();

  if (!v42)
  {
    __break(1u);
LABEL_68:
    swift_once();
LABEL_14:
    v76 = sub_1001D0E60();
    sub_10003A37C(v76, qword_1002298E0);
    (*(v41 + 16))(v27, v30, v10);
    v77 = sub_1001D0E50();
    v78 = sub_1001D1DC0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v169 = v80;
      *v79 = 136446210;
      v81 = sub_1001D02B0();
      v83 = v82;
      (*(v168 + 8))(v27, v10);
      v84 = sub_1000954E0(v81, v83, &v169);
      v41 = v168;

      *(v79 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v77, v78, "Configuration selected environment=%{public}s", v79, 0xCu);
      sub_100011CF0(v80);
    }

    else
    {

      (*(v41 + 8))(v27, v10);
    }

    return (*(v41 + 32))(v166, v30, v10);
  }

  sub_1001D0170();
  sub_1001D1840();

  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    v41 = v168;
    v10 = v167;
    (*(v168 + 104))(v30, enum case for TC2Environment.production(_:), v167);
    if (qword_100227738 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

  v44 = a1[3];
  v45 = a1[4];
  sub_100024DC8(a1, v44);
  v161 = (*(v45 + 24))(v44, v45);
  v47 = v46;
  v48 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0450();
  v49 = sub_1001D05B0();
  v158 = sub_10005956C();
  v159 = v49;
  sub_1001D0210();
  v51 = *(v32 + 8);
  v50 = v32 + 8;
  v157 = v51;
  v52 = (v51)(v40, v31);
  v54 = v170;
  if (!v170)
  {
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v85 = sub_1001D0E60();
    sub_10003A37C(v85, qword_1002298E0);
    v86 = sub_1001D0E50();
    v87 = sub_1001D1DD0();
    v88 = os_log_type_enabled(v86, v87);
    v10 = v167;
    v41 = v168;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Configuration does not see bootFixedLiveOnEnvironment", v89, 2u);
    }

    goto LABEL_34;
  }

  v155 = v48;
  v156 = v50;
  v55 = v169;
  v169 = 44;
  v170 = 0xE100000000000000;
  __chkstk_darwin(v52, v53);
  *(&v152 - 2) = &v169;

  v57 = sub_1001C74B0(1, 1, sub_10003C678, (&v152 - 4), v55, v54, v56);
  if (v57[2] != 2)
  {

    if (qword_100227738 == -1)
    {
LABEL_23:
      v90 = sub_1001D0E60();
      sub_10003A37C(v90, qword_1002298E0);

      v91 = sub_1001D0E50();
      v92 = sub_1001D1DE0();

      v93 = os_log_type_enabled(v91, v92);
      v10 = v167;
      if (v93)
      {
        v94 = swift_slowAlloc();
        v95 = v47;
        v96 = swift_slowAlloc();
        v169 = v96;
        *v94 = 136315138;
        v97 = sub_1000954E0(v55, v54, &v169);

        *(v94 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v91, v92, "Configuration saw invalid bootFixedLiveOnEnvironment=%s", v94, 0xCu);
        sub_100011CF0(v96);
        v47 = v95;
      }

      else
      {
      }

      goto LABEL_33;
    }

LABEL_70:
    swift_once();
    goto LABEL_23;
  }

  v153 = v47;

  if (!v57[2])
  {
    __break(1u);
    goto LABEL_70;
  }

  v58 = v57[4];
  v59 = v57[5];
  v60 = v57[6];
  v61 = v57[7];

  v62 = sub_1001D1850();
  v64 = v63;

  if (v57[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  v65 = v57[8];
  v66 = v57[9];
  v67 = v57[10];
  v68 = v57[11];

  v154 = sub_1001D1850();
  v58 = v69;

  if (qword_100227738 != -1)
  {
LABEL_72:
    swift_once();
  }

  v70 = sub_1001D0E60();
  v71 = sub_10003A37C(v70, qword_1002298E0);

  v72 = sub_1001D0E50();
  v73 = sub_1001D1DD0();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v152 = v71;
    v169 = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_1000954E0(v62, v64, &v169);
    *(v74 + 12) = 2082;
    *(v74 + 14) = sub_1000954E0(v154, v58, &v169);
    _os_log_impl(&_mh_execute_header, v72, v73, "Configuration saw bootFixedLiveOnEnvironment with id=%s, environment=%{public}s", v74, 0x16u);
    swift_arrayDestroy();
  }

  v47 = v153;
  v41 = v168;
  if (v62 == v161 && v64 == v153)
  {
  }

  else
  {
    v98 = sub_1001D2470();

    if ((v98 & 1) == 0)
    {

      v149 = sub_1001D0E50();
      v150 = sub_1001D1DD0();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&_mh_execute_header, v149, v150, "Configuration saw bootFixedLiveOnEnvironment from previous boot, ignoring", v151, 2u);
      }

      v10 = v167;
      goto LABEL_34;
    }
  }

  sub_1001D02A0();
  v99 = *(v41 + 48);
  v100 = v41;
  v101 = v167;
  if (v99(v10, 1, v167) != 1)
  {

    v142 = *(v100 + 32);
    v143 = v160;
    v142(v160, v10, v101);

    v144 = sub_1001D0E50();
    v145 = sub_1001D1DC0();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v169 = v147;
      *v146 = 136446210;
      v148 = sub_1000954E0(v154, v58, &v169);

      *(v146 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v144, v145, "Configuration agrees with current boot's selection, environment=%{public}s", v146, 0xCu);
      sub_100011CF0(v147);

      v143 = v160;
    }

    else
    {
    }

    return (v142)(v166, v143, v101);
  }

  sub_100011F00(v10, &unk_100230300, &qword_1001D7138);
  v102 = sub_1001D0E50();
  v103 = sub_1001D1DE0();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v102, v103, "Configuration saw bootFixedLiveOnEnvironment with invalid environment, ignoring", v104, 2u);
  }

  v10 = v167;
LABEL_33:
  v41 = v168;
LABEL_34:
  sub_1001D0420();
  sub_1001D0210();
  v157(v37, v31);
  v105 = v170;
  if (!v170)
  {
    v115 = v164;
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v116 = sub_1001D0E60();
    sub_10003A37C(v116, qword_1002298E0);
    v117 = sub_1001D0E50();
    v118 = sub_1001D1DD0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Configuration does not see proposedEnvironment", v119, 2u);
    }

    goto LABEL_53;
  }

  v106 = v169;

  v107 = v163;
  sub_1001D02A0();
  if ((*(v41 + 48))(v107, 1, v10) == 1)
  {
    sub_100011F00(v107, &unk_100230300, &qword_1001D7138);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v108 = sub_1001D0E60();
    sub_10003A37C(v108, qword_1002298E0);

    v109 = sub_1001D0E50();
    v110 = sub_1001D1DE0();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = v47;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v169 = v113;
      *v112 = 136446210;
      v114 = sub_1000954E0(v106, v105, &v169);

      *(v112 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v109, v110, "Configuration saw invalid proposed environment=%{public}s, ignoring", v112, 0xCu);
      sub_100011CF0(v113);

      v47 = v111;
    }

    else
    {
    }

    v115 = v164;
LABEL_53:
    (*(v41 + 104))(v165, enum case for TC2Environment.carry(_:), v10);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v129 = sub_1001D0E60();
    sub_10003A37C(v129, qword_1002298E0);
    (*(v41 + 16))(v115, v165, v10);
    v130 = sub_1001D0E50();
    v131 = sub_1001D1DC0();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = v47;
      v134 = swift_slowAlloc();
      v169 = v134;
      *v132 = 136446210;
      v135 = sub_1001D02B0();
      v136 = v115;
      v138 = v137;
      (*(v41 + 8))(v136, v10);
      v139 = sub_1000954E0(v135, v138, &v169);

      *(v132 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v130, v131, "Configuration selected environment=%{public}s", v132, 0xCu);
      sub_100011CF0(v134);
      v47 = v133;
    }

    else
    {

      (*(v41 + 8))(v115, v10);
    }

    v30 = v165;
    v140 = sub_1001D02B0();
    sub_1001B722C(v161, v47, v140, v141);

    return (*(v41 + 32))(v166, v30, v10);
  }

  v120 = *(v41 + 32);
  v121 = v162;
  v120(v162, v107, v10);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v122 = sub_1001D0E60();
  sub_10003A37C(v122, qword_1002298E0);

  v123 = sub_1001D0E50();
  v124 = sub_1001D1DC0();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = v47;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v169 = v127;
    *v126 = 136446210;
    *(v126 + 4) = sub_1000954E0(v106, v105, &v169);
    _os_log_impl(&_mh_execute_header, v123, v124, "Configuration moving to proposed environment=%{public}s", v126, 0xCu);
    sub_100011CF0(v127);
    v121 = v162;

    v47 = v125;
  }

  sub_1001B722C(v161, v47, v106, v105);

  return (v120)(v166, v121, v10);
}

uint64_t sub_1001B722C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v21 - v12;
  sub_1001D0170();
  sub_1001D1840();

  v14 = os_variant_allows_internal_security_policies();

  if (v14)
  {
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0450();
    v21[0] = a1;
    v21[1] = a2;

    v22._countAndFlagsBits = 44;
    v22._object = 0xE100000000000000;
    sub_1001D18B0(v22);
    v23._countAndFlagsBits = a3;
    v23._object = a4;
    sub_1001D18B0(v23);
    v16 = sub_1001D0570();
    v18 = v17;
    v25._countAndFlagsBits = sub_1001D0560();
    v20 = v19;
    v24._countAndFlagsBits = v16;
    v24._object = v18;
    v25._object = v20;
    sub_1001D1870(v24, v25);

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001B73E8()
{
  v1 = v0;
  v2 = sub_1001D13F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = sub_1001D17A0();
  sub_10005A1A4();
  (*(v3 + 104))(v7, enum case for DispatchQoS.QoSClass.background(_:), v2);
  v12 = sub_1001D1E70();
  (*(v3 + 8))(v7, v2);
  aBlock[4] = sub_1001CC2B8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B8674;
  aBlock[3] = &unk_100223608;
  v13 = _Block_copy(aBlock);

  [v8 registerForTaskWithIdentifier:v11 usingQueue:v12 launchHandler:v13];
  _Block_release(v13);
}

id sub_1001B75D0(void *a1, void *a2)
{
  v4 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = aBlock - v7;
  v9 = a2[5];
  v10 = a2[6];
  sub_100024DC8(a2 + 2, v9);
  if ((*(v10 + 16))(v9, v10))
  {
    sub_1001D1B30();
    v11 = sub_1001D1BA0();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a1;

    v13 = a1;
    v14 = sub_10015C9F4(0, 0, v8, &unk_1001E21E0, v12);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1001CC430;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001B8620;
    aBlock[3] = &unk_100223680;
    v16 = _Block_copy(aBlock);

    [v13 setExpirationHandlerWithReason:v16];
    _Block_release(v16);
  }

  else
  {

    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000954E0(*(a2 + qword_10022CBE8), *(a2 + qword_10022CBE8 + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s scheduled task skipped", v20, 0xCu);
      sub_100011CF0(v21);
    }

    return [a1 setTaskCompleted];
  }
}

uint64_t sub_1001B78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1001CFD60();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_100011AC0(&qword_100227A38, &unk_1001D35F0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001B79FC, 0, 0);
}

uint64_t sub_1001B79FC()
{
  v16 = v0;
  v1 = v0[6];
  v0[13] = qword_10022CBE0;

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + qword_10022CBE8), *(v4 + qword_10022CBE8 + 8), &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s performing scheduled task", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[6];
  v8 = v7[5];
  v9 = v7[6];
  sub_100024DC8(v7 + 2, v8);
  v10 = *(v9 + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1001B7C10;

  return v14(v8, v9);
}

uint64_t sub_1001B7C10()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_1001B7D0C, 0, 0);
}

uint64_t sub_1001B7D0C()
{
  v48 = v0;
  if ((sub_1001D1C30() & 1) == 0)
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 48);

    v8 = sub_1001D0E50();
    v9 = sub_1001D1E00();

    if (os_log_type_enabled(v8, v9))
    {
      v16 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000954E0(*(v16 + qword_10022CBE8), *(v16 + qword_10022CBE8 + 8), v47);
      v13 = "%s scheduled task finished";
      goto LABEL_7;
    }

LABEL_8:

    [*(v0 + 56) setTaskCompleted];
    goto LABEL_9;
  }

  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  sub_100024DC8(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v5)
  {
    goto LABEL_3;
  }

  v22 = *&v4;
  v23 = *(v0 + 48);
  v24 = *(v23 + qword_10022CBF0);
  v25 = *(v23 + 56);
  v26 = *(v23 + 64);
  os_unfair_lock_lock((v24 + 16));
  sub_100156E1C((v24 + 24), v47);
  os_unfair_lock_unlock((v24 + 16));
  v27 = v22;
  v28 = v47[0];
  v46 = v25;
  if (!*(v47[0] + 16))
  {
    goto LABEL_15;
  }

  v29 = sub_100006028(v25, v26);
  if (v30)
  {
    (*(*(v0 + 72) + 16))(*(v0 + 96), *(v28 + 56) + *(*(v0 + 72) + 72) * v29, *(v0 + 64));
    v31 = 0;
  }

  else
  {
LABEL_15:
    v31 = 1;
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 72);
  v34 = *(v0 + 80);
  v35 = *(v0 + 64);

  v36 = *(v33 + 56);
  v36(v32, v31, 1, v35);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v37 = sub_10010266C(v32, v27);
  v39 = v38;
  (*(v33 + 8))(v34, v35);
  sub_100011F00(v32, &qword_100227A38, &unk_1001D35F0);
  if (v39)
  {
LABEL_3:
    v6 = *(v0 + 104);
    v7 = *(v0 + 48);

    v8 = sub_1001D0E50();
    v9 = sub_1001D1E00();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000954E0(*(v10 + qword_10022CBE8), *(v10 + qword_10022CBE8 + 8), v47);
      v13 = "%s scheduled task has been canceled with no retry";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, v9, v13, v11, 0xCu);
      sub_100011CF0(v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v40 = *(v0 + 88);
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);
  v43 = *(v0 + 56);
  v45 = *(v0 + 48);

  sub_1001CFD50();
  v36(v40, 0, 1, v42);
  type metadata accessor for PreferencesStore();
  v44 = sub_100156F28((v0 + 16));
  sub_100017AE4(v40, v46, v26);
  v44((v0 + 16), 0);
  sub_1001B8180(v43, *&v37);
LABEL_9:
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20();
}

void sub_1001B8180(void *a1, double a2)
{
  v3 = v2;

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(*(v3 + qword_10022CBE8), *(v3 + qword_10022CBE8 + 8), &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s scheduled task has been canceled retryAfter=%f", v8, 0x16u);
    sub_100011CF0(v9);
  }

  v17 = 0;
  if ([a1 setTaskExpiredWithRetryAfter:&v17 error:a2])
  {

    _objc_retain_x1();
  }

  else
  {
    v10 = v17;
    sub_1001CFA20();

    swift_willThrow();

    swift_errorRetain();
    v11 = sub_1001D0E50();
    v12 = sub_1001D1E00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1000954E0(*(v3 + qword_10022CBE8), *(v3 + qword_10022CBE8 + 8), &v17);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s scheduled task has been canceled and can't be scheduled for retry error=%@", v13, 0x16u);
      sub_100011F00(v14, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v15);
    }

    else
    {
    }
  }
}

void sub_1001B84C4(uint64_t a1, uint64_t a2)
{

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000954E0(*(a2 + qword_10022CBE8), *(a2 + qword_10022CBE8 + 8), &v8);
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s scheduled task is being expired reason=%lu", v6, 0x16u);
    sub_100011CF0(v7);
  }

  sub_1001D1C20();
}

uint64_t sub_1001B8620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1001B8674(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1001B86DC()
{
  v1 = v0;
  v2 = sub_1001D0200();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v16 - v11;
  sub_10001208C(v1, &v16 - v11, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100011F00(v12, &unk_100230130, &unk_1001E16A0);
        return 0x2074736575716552;
      }

      else
      {
        sub_100011F00(v12, &unk_100230130, &unk_1001E16A0);
        return 0xD000000000000016;
      }
    }

    else
    {
      sub_100011F00(v12, &unk_100230130, &unk_1001E16A0);
      return 0xD000000000000022;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x696C616974696E49;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x64656873696E6946;
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1001D2030(18);

    v16 = 0x282064656C696146;
    v17 = 0xEF203A726F727265;
    sub_1001CC51C(&qword_10022E2F8, &type metadata accessor for PrivateCloudComputeError);
    v18._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    sub_1001D18B0(v19);
    v15 = v16;
    (*(v3 + 8))(v7, v2);
    return v15;
  }
}

uint64_t sub_1001B8A00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v74 = v65 - v6;
  v7 = sub_1001D08A0();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7, v9);
  v78 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v77 = v65 - v14;
  v15 = sub_1001CFD60();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  __chkstk_darwin(v15, v17);
  v76 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001CFDA0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = v65 - v27;
  v29 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v30 = *(*(v29 - 1) + 64);
  __chkstk_darwin(v29, v31);
  v33 = v65 - v32;
  v34 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v34);
  v35 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10001208C(v34 + *(v35 + 28), v33, &unk_100230120, &qword_1001DEF40);
  os_unfair_lock_unlock(v34);
  v36 = *&v33[v29[36]];
  v80 = v33;
  v81 = sub_1001C89E4(v36, sub_1001CA968, v79);
  v37 = sub_1001B13B8(*&v33[v29[37]]);
  sub_10003A3F0(v37);
  v38 = *(v20 + 16);
  v39 = v2 + *(*v2 + 160);
  v72 = v28;
  v38(v28, v39, v19);
  v40 = v2 + *(*v2 + 168);
  v73 = v25;
  v38(v25, v40, v19);
  v41 = (v2 + *(*v2 + 224));
  v42 = *v41;
  v43 = v41[1];
  (*(v67 + 16))(v76, v2 + *(*v2 + 176), v68);
  v44 = (v2 + *(*v2 + 192));
  v45 = *v44;
  v46 = v44[1];
  v47 = (v2 + *(*v2 + 208));
  v48 = *v47;
  v49 = v47[1];
  sub_10001208C(v2 + *(*v2 + 216), v77, &qword_1002288B0, &qword_1001D5FC0);
  v50 = *v2;
  v51 = *(v2 + *(*v2 + 232));
  v68 = v45;
  v69 = v42;
  v67 = v48;
  if (v51)
  {
    if (v51 == 1)
    {
      v66 = 0xE300000000000000;
      v52 = 7827308;
    }

    else
    {
      v66 = 0xEA0000000000646ELL;
      v52 = 0x756F72676B636162;
    }
  }

  else
  {
    v66 = 0xE400000000000000;
    v52 = 1751607656;
  }

  v65[2] = v52;
  v53 = v74;
  (*(v70 + 16))(v78, v2 + *(v50 + 240), v71);
  v54 = v29[21];

  v74 = v43;

  v71 = v46;

  v70 = sub_1001B86DC();
  v65[1] = v55;
  v65[0] = sub_10011C5EC(*&v33[v29[24]], v33[v29[24] + 8]);
  sub_10001208C(&v33[v29[23]], v53, &unk_100230110, &unk_1001D6520);
  v56 = sub_1001D0ED0();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v53, 1, v56) == 1)
  {
    sub_100011F00(v53, &unk_100230110, &unk_1001D6520);
    sub_1000D65D4(&_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100150D38();
    (*(v57 + 8))(v53, v56);
  }

  sub_10011C7CC(*&v33[v29[25]], *&v33[v29[25] + 8], *&v33[v29[25] + 16], *&v33[v29[25] + 24]);
  v58 = v29[35];
  v59 = &v33[v29[34]];
  v60 = *v59;
  v61 = v59[8];
  v63 = *&v33[v58];
  v62 = *&v33[v58 + 8];

  sub_1001D0700();
  return sub_100011F00(v33, &unk_100230120, &qword_1001DEF40);
}

uint64_t sub_1001B9130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a4 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 156));
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6 == *(a3 + 48);
    }
  }

  v9 = *a3;
  v8 = *(a3 + 8);
  v10 = *a3 >> 62;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      v13 = 0xEA00000000006465;
      v14 = 0x6966697265766E75;
      v15 = v9 ^ 0xC000000000000008 | v8;
      v16 = 0xE800000000000000;
      v17 = v15 == 0;
      if (v15)
      {
        v18 = 0x79654B746E6573;
      }

      else
      {
        v18 = 0x6465696669726576;
      }

      if (!v17)
      {
        v16 = 0xE700000000000000;
      }

      if (v9 ^ 0xC000000000000000 | v8)
      {
        v14 = 0x6E69796669726576;
        v13 = 0xE900000000000067;
      }

      if (v9 <= 0xC000000000000007)
      {
        v11._countAndFlagsBits = v14;
      }

      else
      {
        v11._countAndFlagsBits = v18;
      }

      if (v9 <= 0xC000000000000007)
      {
        v12 = v13;
      }

      else
      {
        v12 = v16;
      }

      goto LABEL_25;
    }

    v33._countAndFlagsBits = 0x64656873696E6966;
    v33._object = 0xE800000000000000;
    sub_1001D18B0(v33);
  }

  else
  {
    if (!v10)
    {
      v11._countAndFlagsBits = 0x6465696669726576;
      v12 = 0xEE0064656C696146;
LABEL_25:
      v11._object = v12;
      sub_1001D18B0(v11);

      goto LABEL_26;
    }

    v34._countAndFlagsBits = 0x6E69766965636572;
    v34._object = 0xE900000000000067;
    sub_1001D18B0(v34);
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_26:
  v19 = *(a3 + 24);
  v31 = *(a3 + 16);
  v20 = *(a3 + 64);
  v32 = *(a3 + 56);
  v21 = *(a3 + 80);
  v22 = *(a3 + 96);
  v28 = *(a3 + 88);
  v29 = *(a3 + 72);
  v23 = *(a3 + 104);
  v24 = *(a3 + 112);
  v30 = *(a3 + 48);
  v25 = *(a3 + 40) >> 60 == 15;
  v26 = *(a3 + 120);

  return sub_1001D0750();
}

uint64_t sub_1001B93D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v81 = a1;
  v75 = sub_1001CFA40();
  v78 = *(v75 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin(v75, v8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v80 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v73 = &v69 - v17;
  __chkstk_darwin(v16, v18);
  v20 = &v69 - v19;
  v21 = sub_1001CFB10();
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  v24 = __chkstk_darwin(v21, v23);
  v76 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v74 = &v69 - v27;
  v28 = sub_1001D02F0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = qword_10022F7F0;
  v35 = sub_1001CF960();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v3 + v34) = sub_1001CF950();
  v38 = qword_10022F7E0;
  v39 = sub_1001CF920();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v3 + v38) = sub_1001CF910();
  (*(v29 + 104))(v33, enum case for TC2LogCategory.daemon(_:), v28);
  sub_1001D08B0();
  (*(v29 + 8))(v33, v28);
  v42 = v82;
  *(v3 + 16) = v81;
  *(v3 + 24) = a3;
  v43 = *(v3 + v34);

  sub_1001CF930();

  v81 = a2;
  sub_10001208C(a2, v20, &unk_100230170, &unk_1001E0D90);
  v44 = v21;
  v72 = *(v42 + 48);
  if (v72(v20, 1, v21) == 1)
  {
    sub_100011F00(v20, &unk_100230170, &unk_1001E0D90);
    (*(v42 + 56))(v4 + qword_10022F7D8, 1, 1, v21);
  }

  else
  {
    v45 = v74;
    v46 = v44;
    (*(v42 + 32))(v74, v20, v44);
    v83 = 0xD000000000000016;
    v84 = 0x80000001001E7070;
    v47 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v48 = v75;
    v79 = v46;
    v71 = v42 + 48;
    v49 = v77;
    v50 = v78;
    v70 = *(v78 + 104);
    v70(v77, enum case for URL.DirectoryHint.inferFromPath(_:), v75);
    v69 = sub_100011EAC();
    v51 = v73;
    sub_1001CFB00();
    v52 = *(v50 + 8);
    v52(v49, v48);
    (*(v82 + 56))(v51, 0, 1, v79);
    sub_1000DBEF4(v51, v4 + qword_10022F7D8, &unk_100230170, &unk_1001E0D90);
    v83 = 0x656863616375726CLL;
    v84 = 0xEF7473696C702E33;
    v70(v49, v47, v48);
    v42 = v82;
    v53 = v79;
    v54 = v76;
    sub_1001CFB00();
    v52(v49, v48);
    sub_10014D874(v54);
    v55 = *(v42 + 8);
    v55(v54, v53);
    v44 = v53;
    v55(v45, v53);
  }

  v56 = v4 + qword_10022F7E8;
  *v56 = 0;
  *(v56 + 8) = _swiftEmptyArrayStorage;

  v57 = sub_1001D0E50();
  v58 = sub_1001D1DD0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v83 = v60;
    *v59 = 136315138;
    v61 = v80;
    sub_10001208C(v4 + qword_10022F7D8, v80, &unk_100230170, &unk_1001E0D90);
    if (v72(v61, 1, v44) == 1)
    {
      sub_100011F00(v61, &unk_100230170, &unk_1001E0D90);
      v62 = 0;
      v63 = 0xE000000000000000;
    }

    else
    {
      v64 = v61;
      v65 = sub_1001CFA50();
      v63 = v66;
      (*(v42 + 8))(v64, v44);
      v62 = v65;
    }

    v67 = sub_1000954E0(v62, v63, &v83);

    *(v59 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v57, v58, "initialized workloadcache, file=%s", v59, 0xCu);
    sub_100011CF0(v60);
  }

  sub_100011F00(v81, &unk_100230170, &unk_1001E0D90);
  return v4;
}

int64_t sub_1001B9B40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = v42 - v16;
  __chkstk_darwin(v15, v18);
  v48 = v42 - v19;
  v20 = sub_1001CFD60();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = __chkstk_darwin(v20, v23);
  v46 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v47 = v42 - v27;
  v50 = a3;
  v51 = a2;
  result = sub_10005E7D8(sub_10005EE28, v49);
  v29 = *(*a1 + 16);
  if (v29 < result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v45 = v21;
  sub_10005B55C(result, v29);
  v30 = *a1;
  v31 = *(*a1 + 16);
  if (!v31)
  {
    return v31;
  }

  v42[1] = v3;
  v43 = v20;
  v44 = a3;
  v32 = v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  result = sub_10001208C(v32, v17, &unk_100230260, &qword_1001D3660);
  if (v31 != 1)
  {
    v41 = 1;
    while (v41 < *(v30 + 16))
    {
      sub_10001208C(v32 + *(v8 + 72) * v41, v13, &unk_100230260, &qword_1001D3660);
      if (sub_1001CFCD0())
      {
        sub_100011F00(v17, &unk_100230260, &qword_1001D3660);
        result = sub_1000DBEF4(v13, v17, &unk_100230260, &qword_1001D3660);
      }

      else
      {
        result = sub_100011F00(v13, &unk_100230260, &qword_1001D3660);
      }

      if (v31 == ++v41)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  v33 = v48;
  sub_1000DBEF4(v17, v48, &unk_100230260, &qword_1001D3660);
  v34 = v45;
  v35 = v46;
  v36 = v43;
  (*(v45 + 16))(v46, v33, v43);
  sub_100011F00(v33, &unk_100230260, &qword_1001D3660);
  v37 = v47;
  (*(v34 + 32))(v47, v35, v36);
  sub_1001CFC90();
  v39 = v38;
  result = (*(v34 + 8))(v37, v36);
  v40 = v39 / 86400.0;
  if (COERCE__INT64(fabs(v39 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v40 < 9.22337204e18)
  {
    return v31;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1001B9F34()
{
  v1 = v0;
  v2 = v0 + *((swift_isaMask & *v0) + 0x60);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "XPC connection invalidated", v5, 2u);
  }

  v6 = (v1 + *((swift_isaMask & *v1) + 0x90));
  os_unfair_lock_lock(v6);
  v7 = *&v6[2]._os_unfair_lock_opaque;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_17:

LABEL_18:
    *&v6[2]._os_unfair_lock_opaque = _swiftEmptyArrayStorage;
    os_unfair_lock_unlock(v6);
    return;
  }

  if (v7 < 0)
  {
    v21 = *&v6[2]._os_unfair_lock_opaque;
  }

  v8 = sub_1001D2190();
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v8 >= 1)
  {
    lock = v6;
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v23 = v8;
    v24 = v7;
    do
    {
      if (v10)
      {
        v14 = sub_1001D2040();
      }

      else
      {
        v14 = *(v7 + 8 * v9 + 32);
      }

      v15 = sub_1001D0E50();
      v16 = sub_1001D1E00();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = sub_1000954E0(*(v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v25);
        *(v17 + 12) = 2080;
        v18 = sub_1001D1820();
        v20 = sub_1000954E0(v18, v19, &v25);

        *(v17 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s request task cancelled reason=%s", v17, 0x16u);
        swift_arrayDestroy();
        v8 = v23;
        v7 = v24;
      }

      ++v9;
      v11 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 24);
      v12 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 32);
      sub_100024DC8((v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver), v11);
      (*(v12 + 8))(1, v11, v12);
      v13 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_task);
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      sub_1001D1C20();
    }

    while (v8 != v9);

    v6 = lock;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1001BA2BC()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x60);
  oslog = sub_1001D0E50();
  v2 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "XPC connection interrupted", v3, 2u);
  }
}

uint64_t sub_1001BA384(void *a1)
{
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D02F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v15 = *(*v1 + 120);
  (*(v10 + 104))(v14, enum case for TC2LogCategory.daemon(_:), v9);
  sub_1001D08B0();
  (*(v10 + 8))(v14, v9);
  *(v1 + *(*v1 + 112)) = a1;
  v16 = sub_1001D17A0();
  [a1 integerForKey:v16];

  sub_1001CFC70();
  (*(v4 + 32))(v1 + qword_10022FF70, v8, v3);
  return v1;
}

uint64_t sub_1001BA5A8(uint64_t *a1)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v78 = (&v73 - v6);
  v7 = sub_1001CFD60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v73 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v73 - v19;
  sub_1001CFD50();
  v21 = qword_10022FF70;
  swift_beginAccess();
  v82 = *(v8 + 16);
  v82(v13, v2 + v21, v7);
  sub_1001CFCA0();
  v22 = *(v8 + 8);
  v22(v13, v7);
  sub_1001CC51C(&qword_100230230, &type metadata accessor for Date);
  LOBYTE(v13) = sub_1001D1780();
  v22(v17, v7);
  v80 = v8 + 8;
  v81 = v20;
  v79 = v22;
  if ((v13 & 1) == 0)
  {
    v31 = v82;
    v32 = *(*v2 + 120);

    v33 = sub_1001D0E50();
    v34 = sub_1001D1E00();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v2;
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v83 = v78;
      *v36 = 136315138;
      v31(v17, v35 + v21, v7);
      sub_1001CC51C(&qword_100227A40, &type metadata accessor for Date);
      v37 = sub_1001D23A0();
      v39 = v38;

      v40 = v79;
      v79(v17, v7);
      v41 = sub_1000954E0(v37, v39, &v83);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring TTR indication due to rate limit (1 per 24 hours), last report time %s.", v36, 0xCu);
      sub_100011CF0(v78);

      v40(v81, v7);
    }

    else
    {

      v79(v81, v7);
    }

    return 0;
  }

  swift_beginAccess();
  (*(v8 + 24))(v2 + v21, v20, v7);
  swift_endAccess();
  v23 = *(*v2 + 112);
  v82(v17, v2 + v21, v7);
  v75 = v2;
  sub_1001B0808(v17, *(v2 + v23));
  v73 = v7;
  v22(v17, v7);
  v24 = v77;
  v25 = *v77;
  v26 = v77[1];
  v27 = v77[3];
  if (v27)
  {
    v74 = v77[2];
    v28 = v27;
    v29 = v77[5];
    if (v29)
    {
LABEL_4:
      v30 = v24[4];
      v82 = v29;
      goto LABEL_10;
    }
  }

  else
  {
    v42 = v77[1];

    v74 = v25;
    v28 = v26;
    v29 = v24[5];
    if (v29)
    {
      goto LABEL_4;
    }
  }

  v82 = 0xE700000000000000;
  v30 = 0x36323633353631;
LABEL_10:
  if (!v24[7])
  {
    v76 = 0x80000001001E7D90;
    v43 = 0xD000000000000015;
    v44 = v24[9];
    if (v44)
    {
      goto LABEL_12;
    }

LABEL_14:
    v46 = 0xE300000000000000;
    v45 = 7105601;
    goto LABEL_15;
  }

  v43 = v24[6];
  v76 = v24[7];
  v44 = v24[9];
  if (!v44)
  {
    goto LABEL_14;
  }

LABEL_12:
  v45 = v24[8];
  v46 = v44;
LABEL_15:
  v83 = 0;
  v84 = 0xE000000000000000;

  sub_1001D2030(150);
  v85._countAndFlagsBits = 0xD000000000000019;
  v85._object = 0x80000001001E7DB0;
  sub_1001D18B0(v85);
  v86._countAndFlagsBits = v25;
  v86._object = v26;
  sub_1001D18B0(v86);
  v87._object = 0xED00003D4449746ELL;
  v87._countAndFlagsBits = 0x656E6F706D6F4326;
  sub_1001D18B0(v87);
  v88._countAndFlagsBits = v30;
  v88._object = v82;
  sub_1001D18B0(v88);
  v89._object = 0xEF3D656D614E746ELL;
  v89._countAndFlagsBits = 0x656E6F706D6F4326;
  sub_1001D18B0(v89);
  v90._countAndFlagsBits = v43;
  v90._object = v76;
  sub_1001D18B0(v90);
  v91._object = 0x80000001001E7DD0;
  v91._countAndFlagsBits = 0xD000000000000012;
  sub_1001D18B0(v91);
  v92._countAndFlagsBits = v45;
  v77 = v46;
  v92._object = v46;
  sub_1001D18B0(v92);
  v93._countAndFlagsBits = 0xD000000000000028;
  v93._object = 0x80000001001E7DF0;
  sub_1001D18B0(v93);
  v94._countAndFlagsBits = v74;
  v94._object = v28;
  sub_1001D18B0(v94);
  v95._countAndFlagsBits = 0xD00000000000001DLL;
  v95._object = 0x80000001001E7E20;
  sub_1001D18B0(v95);
  v47 = v83;
  v48 = v84;
  v49 = *(*v75 + 120);

  v50 = sub_1001D0E50();
  v51 = sub_1001D1E00();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v83 = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_1000954E0(v47, v48, &v83);
    _os_log_impl(&_mh_execute_header, v50, v51, "TTR: %s", v52, 0xCu);
    sub_100011CF0(v53);
  }

  v54 = v78;
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v56 = result;

  sub_1001CFAE0();

  v57 = sub_1001CFB10();
  v58 = *(v57 - 8);
  v60 = 0;
  if ((*(v58 + 48))(v54, 1, v57) != 1)
  {
    sub_1001CFA80(v59);
    v60 = v61;
    (*(v58 + 8))(v54, v57);
  }

  v83 = 0;
  v62 = [v56 openURL:v60 configuration:0 error:&v83];

  if (v62)
  {
    v63 = v83;

    v79(v81, v73);
    return 1;
  }

  v64 = v83;
  sub_1001CFA20();

  swift_willThrow();
  swift_errorRetain();
  v65 = sub_1001D0E50();
  v66 = sub_1001D1DE0();

  v67 = os_log_type_enabled(v65, v66);
  v68 = v73;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412290;
    swift_errorRetain();
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 4) = v71;
    *v70 = v71;
    _os_log_impl(&_mh_execute_header, v65, v66, "Failed to TTR, error: %@", v69, 0xCu);
    sub_100011F00(v70, &unk_1002301D0, &qword_1001D4F50);
    v72 = v79;

    v72(v81, v68);
  }

  else
  {

    v79(v81, v68);
  }

  return 0;
}

void sub_1001BAFA0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81[0] = a2;
  v3 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = v81 - v6;
  v102 = sub_1001CFD60();
  v8 = *(v102 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v102, v10);
  v101 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D0720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v16, v19);
  v99 = v81 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v98 = v81 - v24;
  __chkstk_darwin(v23, v25);
  v104 = v81 - v26;
  v83 = sub_1001D0780();
  v27 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83, v28);
  v91 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v32 = *(*a1 + 64);
  v86 = *a1 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v85 = (v33 + 63) >> 6;
  v103 = v13 + 32;
  v96 = (v8 + 8);
  v97 = v13 + 16;
  v100 = v13;
  v94 = (v13 + 56);
  v95 = (v13 + 8);
  v82 = v29;
  v81[1] = v29 + 32;
  v84 = v31;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v93 = &_swiftEmptyArrayStorage;
  while (v35)
  {
LABEL_9:
    v89 = v35;
    v38 = *(v84 + 56);
    v88 = v36;
    v39 = *(v38 + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    v40 = v39 + *(*v39 + 344);
    v87 = v39;

    os_unfair_lock_lock(v40);
    v90 = v40;
    v41 = *(v40 + 16);
    for (i = (v40 + 16); ; v41 = *i)
    {
      v43 = *(v41 + 3);
      if (!v43)
      {
        break;
      }

      v44 = v43 - 1;
      if (__OFSUB__(v43, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v44 < 0)
      {
        goto LABEL_36;
      }

      if (v44 >= v43)
      {
        goto LABEL_37;
      }

      v45 = v7;
      v47 = v99;
      v46 = v100;
      v48 = *(v41 + 4) + v44;
      v49 = *(v41 + 2);
      if (v48 < v49)
      {
        v49 = 0;
      }

      v50 = (*(v100 + 80) + 40) & ~*(v100 + 80);
      v51 = *(v100 + 72);
      (*(v100 + 16))(v99, &v41[v50 + (v48 - v49) * v51], v12);
      v52 = *(v46 + 32);
      v53 = v98;
      v52(v98, v47, v12);
      v54 = v12;
      v52(v104, v53, v12);
      v55 = v101;
      sub_1001D0710();
      sub_1001CFD00();
      v57 = v56;
      (*v96)(v55, v102);
      if (v57 >= -300.0)
      {
        v12 = v54;
        (*v95)(v104, v54);
        v7 = v45;
        break;
      }

      if (*(*i + 3))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001190FC();
        }

        v58 = *i;
        v59 = *(*i + 3);
        v60 = __OFSUB__(v59, 1);
        v61 = v59 - 1;
        if (v60)
        {
          goto LABEL_39;
        }

        v62 = *(v58 + 4) + v61;
        v63 = *(v58 + 2);
        if (v62 < v63)
        {
          v63 = 0;
        }

        v12 = v54;
        v52(v18, &v58[v50 + (v62 - v63) * v51], v54);
        v64 = *(v58 + 3);
        v60 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v60)
        {
          goto LABEL_40;
        }

        *(v58 + 3) = v65;
        (*v95)(v104, v54);
        v7 = v45;
        v52(v45, v18, v54);
        v42 = 0;
      }

      else
      {
        v12 = v54;
        (*v95)(v104, v54);
        v42 = 1;
        v7 = v45;
      }

      (*v94)(v7, v42, 1, v12);
      sub_100011F00(v7, &qword_100228AF0, &qword_1001E1630);
    }

    v66 = v90;
    os_unfair_lock_unlock(v90);
    os_unfair_lock_lock(v66);
    v67 = *(*&v66[2]._os_unfair_lock_opaque + 16);
    v68 = *(*&v66[4]._os_unfair_lock_opaque + 24);
    v60 = __OFADD__(v67, v68);
    v69 = v67 + v68;
    if (v60)
    {
      goto LABEL_41;
    }

    v106 = sub_10000998C(0, v69 & ~(v69 >> 63), 0, &_swiftEmptyArrayStorage);
    v70 = *&v66[2]._os_unfair_lock_opaque;

    v72 = v92;
    v73 = sub_1001B18FC(v71);
    v92 = v72;

    sub_10003A41C(v73);
    v74 = *&v66[4]._os_unfair_lock_opaque;

    sub_10003A58C(v75);
    sub_1001D0770();
    os_unfair_lock_unlock(v66);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_1000099B4(0, v93[2] + 1, 1, v93);
    }

    v77 = v93[2];
    v76 = v93[3];
    v78 = v89;
    if (v77 >= v76 >> 1)
    {
      v80 = sub_1000099B4(v76 > 1, v77 + 1, 1, v93);
      v78 = v89;
      v93 = v80;
    }

    v79 = v93;
    v93[2] = v77 + 1;
    v35 = (v78 - 1) & v78;
    (*(v82 + 32))(v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v77, v91, v83);
    v36 = v88;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v85)
    {

      *v81[0] = v93;
      return;
    }

    v35 = *(v86 + 8 * v37);
    ++v36;
    if (v35)
    {
      v36 = v37;
      goto LABEL_9;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1001BB750()
{
  v1[9] = v0;
  v2 = sub_1001D02F0();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for MetricReporter();
  v1[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_1001D13E0();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = sub_1001D1410();
  v1[18] = v10;
  v11 = *(v10 - 8);
  v1[19] = v11;
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();
  v13 = sub_1001D13F0();
  v1[21] = v13;
  v14 = *(v13 - 8);
  v1[22] = v14;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001BB954, 0, 0);
}

uint64_t sub_1001BB954()
{
  v1 = v0[9];
  v0[24] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting up CloudTelemetry xpc service activities.", v4, 2u);
  }

  sub_1001CFF40();
  v5 = async function pointer to static CloudTelemetry.setupXpcServiceActivities()[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1001BBA78;

  return static CloudTelemetry.setupXpcServiceActivities()();
}

uint64_t sub_1001BBA78()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1001BC15C;
  }

  else
  {
    v3 = sub_1001BBB8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001BBB8C()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v29 = v0[18];
  v30 = v0[24];
  v6 = v0[15];
  v27 = v0[16];
  v28 = v0[19];
  v7 = v0[9];
  sub_10005A1A4();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v26 = sub_1001D1E70();
  (*(v2 + 8))(v1, v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v0[6] = sub_1001CA9A8;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100014EBC;
  v0[5] = &unk_1002231D0;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  sub_1001D1400();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1001CC51C(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100024B78(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v9);

  (*(v27 + 8))(v5, v6);
  (*(v28 + 8))(v4, v29);
  v11 = v0[7];

  v12 = sub_1001D0E50();
  v13 = sub_1001D1E00();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting daemon run loop...", v14, 2u);
  }

  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v20 = v0[9];
  v19 = v0[10];

  *v15 = 0x4B46574D54513336;
  v15[1] = 0xEA00000000003432;
  v21 = *(v16 + 20);
  (*(v18 + 104))(v17, enum case for TC2LogCategory.metricReporter(_:), v19);
  sub_1001D08B0();
  (*(v18 + 8))(v17, v19);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v15;
  v23 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v24 = swift_task_alloc();
  v0[28] = v24;
  *v24 = v0;
  v24[1] = sub_1001BBF84;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1001BBF84()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_1001BC09C, 0, 0);
}

uint64_t sub_1001BC09C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[12];
  sub_1001CC0E4(v0[14], type metadata accessor for MetricReporter);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001BC15C()
{
  v1 = v0[9] + v0[24];
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to setup CloudTelemetry", v6, 2u);
  }

  v7 = v0[23];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v35 = v0[19];
  v11 = v0[17];
  v36 = v0[18];
  v37 = v0[24];
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[9];
  sub_10005A1A4();
  (*(v8 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v34 = sub_1001D1E70();
  (*(v8 + 8))(v7, v9);
  v15 = swift_allocObject();
  v16 = v14;
  *(v15 + 16) = v14;
  v0[6] = sub_1001CA9A8;
  v0[7] = v15;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100014EBC;
  v0[5] = &unk_1002231D0;
  v17 = _Block_copy(v0 + 2);
  v18 = v16;
  sub_1001D1400();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1001CC51C(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100024B78(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v17);

  (*(v13 + 8))(v11, v12);
  (*(v35 + 8))(v10, v36);
  v19 = v0[7];

  v20 = sub_1001D0E50();
  v21 = sub_1001D1E00();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting daemon run loop...", v22, 2u);
  }

  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[11];
  v25 = v0[12];
  v28 = v0[9];
  v27 = v0[10];

  *v23 = 0x4B46574D54513336;
  v23[1] = 0xEA00000000003432;
  v29 = *(v24 + 20);
  (*(v26 + 104))(v25, enum case for TC2LogCategory.metricReporter(_:), v27);
  sub_1001D08B0();
  (*(v26 + 8))(v25, v27);
  v30 = swift_task_alloc();
  v0[27] = v30;
  *(v30 + 16) = v28;
  *(v30 + 24) = v23;
  v31 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v32 = swift_task_alloc();
  v0[28] = v32;
  *v32 = v0;
  v32[1] = sub_1001BBF84;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

char *sub_1001BC5D8(uint64_t a1)
{
  v355 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1001D0E60();
  v347 = *(v1 - 8);
  v348 = v1;
  v2 = *(v347 + 64);
  __chkstk_darwin(v1, v3);
  v349 = &v328 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFD60();
  v344 = *(v5 - 8);
  v345 = v5;
  v6 = *(v344 + 64);
  __chkstk_darwin(v5, v7);
  v343 = &v328 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001CFFE0();
  v340 = *(v9 - 8);
  v341 = v9;
  v10 = *(v340 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v338 = &v328 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v339 = &v328 - v15;
  v336 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v16 = *(*(v336 - 8) + 64);
  v18 = __chkstk_darwin(v336, v17);
  v363 = &v328 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v337 = &v328 - v21;
  v22 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v342 = &v328 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v334 = &v328 - v29;
  __chkstk_darwin(v28, v30);
  v354 = &v328 - v31;
  v379 = sub_1001CFB10();
  v369 = *(v379 - 8);
  v32 = *(v369 + 64);
  v34 = __chkstk_darwin(v379, v33);
  v353 = &v328 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34, v36);
  v364 = &v328 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v329 = &v328 - v41;
  __chkstk_darwin(v40, v42);
  v376 = &v328 - v43;
  v374 = sub_1001D05B0();
  v362 = *(v374 - 8);
  v44 = *(v362 + 64);
  v46 = __chkstk_darwin(v374, v45);
  v361 = &v328 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v48);
  v357 = &v328 - v49;
  v365 = sub_1001D02E0();
  v371 = *(v365 - 8);
  v50 = *(v371 + 64);
  v52 = __chkstk_darwin(v365, v51);
  v335 = &v328 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v52, v54);
  v358 = &v328 - v56;
  __chkstk_darwin(v55, v57);
  v375 = &v328 - v58;
  v373 = sub_100011AC0(&qword_1002302A8, &qword_1001E21F0);
  v360 = *(v373 - 1);
  v59 = *(v360 + 8);
  __chkstk_darwin(v373, v60);
  v372 = &v328 - v61;
  v378 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v366 = *(v378 - 8);
  v62 = *(v366 + 8);
  v64 = __chkstk_darwin(v378, v63);
  v359 = &v328 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v66);
  v356 = &v328 - v67;
  v68 = sub_100011AC0(&unk_1002300F0, &unk_1001E1EF8);
  v367 = *(v68 - 8);
  v368 = v68;
  v69 = *(v367 + 64);
  __chkstk_darwin(v68, v70);
  v352 = &v328 - v71;
  v72 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  v73 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72 - 8, v74);
  v350 = &v328 - v75;
  v351 = sub_1001D20F0();
  v76 = *(v351 - 1);
  v77 = *(v76 + 64);
  __chkstk_darwin(v351, v78);
  v80 = &v328 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1001D02F0();
  v377 = v81;
  v82 = *(v81 - 8);
  v83 = v82[8];
  __chkstk_darwin(v81, v84);
  v86 = &v328 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = v86;
  v380 = v82[13];
  v381 = v82 + 13;
  (v380)(v86, enum case for TC2LogCategory.daemon(_:), v81);
  v87 = v385;
  sub_1001D08B0();
  v88 = v82[1];
  v384 = v82 + 1;
  v382 = v88;
  v88(v86, v81);
  v370 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  sub_1001D05A0();
  v89 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_tapToRadarController;
  v90 = objc_opt_self();
  v91 = [v90 standardUserDefaults];
  v92 = sub_100011AC0(&unk_1002302B0, &qword_1001E21F8);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  *&v87[v89] = sub_1001BA384(v91);
  v95 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_preferencesStore;
  v333 = v90;
  v96 = [v90 standardUserDefaults];
  type metadata accessor for PreferencesStore();
  v97 = swift_allocObject();
  *(v97 + 16) = 0;
  *(v97 + 24) = v96;
  *&v87[v95] = v97;
  v98 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_fetchServerDrivenConfigurationValve;
  sub_1001D20E0();
  v99 = sub_100011AC0(&qword_1002300D8, &qword_1001E1EF0);
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  v102 = swift_allocObject();
  swift_defaultActor_initialize();
  v103 = *(*v102 + 112);
  v104 = sub_1001D20D0();
  v105 = *(*(v104 - 8) + 56);
  v105(v102 + v103, 1, 1, v104);
  (*(v76 + 32))(v102 + *(*v102 + 104), v80, v351);
  v106 = v350;
  v105(v350, 1, 1, v104);
  swift_beginAccess();
  sub_10001BAC8(v106, v102 + v103, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  *(v102 + *(*v102 + 120)) = xmmword_1001E1E40;
  *&v87[v98] = v102;
  v107 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventStream;
  v108 = &v87[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation];
  v109 = v87;
  type metadata accessor for ThimbledEvent();
  v110 = v360;
  v112 = v372;
  v111 = v373;
  (*(v360 + 13))(v372, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v373);
  v113 = v352;
  v114 = v356;
  sub_1001D1BB0();
  (*(v110 + 1))(v112, v111);
  (*(v367 + 32))(&v109[v107], v113, v368);
  v115 = *(v366 + 4);
  v360 = v108;
  v352 = v366 + 32;
  v115(v108, v114, v378);
  v116 = &v109[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup];
  v117 = sub_1000DBDD8(_swiftEmptyArrayStorage);
  *v116 = 0;
  *(v116 + 1) = v117;
  v118 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker;
  v119 = type metadata accessor for PrefetchTracker();
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  v122 = swift_allocObject();
  v123 = v383;
  v332 = enum case for TC2LogCategory.prefetchRequest(_:);
  v124 = v377;
  v380(v383);
  sub_1001D08B0();
  v382(v123, v124);
  sub_1001D08A0();
  sub_1001CC51C(&qword_100229500, &type metadata accessor for Workload);
  v125 = sub_1001D1CC0();
  *(v122 + 16) = 0;
  *(v122 + 24) = v125;
  v331 = v118;
  *&v109[v118] = v122;
  v126 = [objc_opt_self() mainBundle];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v128 = result;
    v351 = v115;
    sub_1001594A4(v126, v411);

    v129 = v385;
    v130 = &v385[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo];
    v131 = v411[9];
    *(v130 + 8) = v411[8];
    *(v130 + 9) = v131;
    *(v130 + 10) = v411[10];
    v132 = v411[5];
    *(v130 + 4) = v411[4];
    *(v130 + 5) = v132;
    v133 = v411[7];
    *(v130 + 6) = v411[6];
    *(v130 + 7) = v133;
    v134 = v411[1];
    *v130 = v411[0];
    *(v130 + 1) = v134;
    v135 = v411[3];
    *(v130 + 2) = v411[2];
    *(v130 + 3) = v135;
    v136 = v362;
    v137 = v357;
    v138 = v374;
    v367 = *(v362 + 16);
    v368 = v362 + 16;
    (v367)(v357, &v129[v370], v374);
    v139 = *(v130 + 9);
    v410[8] = *(v130 + 8);
    v410[9] = v139;
    v410[10] = *(v130 + 10);
    v140 = *(v130 + 5);
    v410[4] = *(v130 + 4);
    v410[5] = v140;
    v141 = *(v130 + 6);
    v410[7] = *(v130 + 7);
    v410[6] = v141;
    v142 = *(v130 + 1);
    v410[0] = *v130;
    v410[1] = v142;
    v143 = *(v130 + 2);
    v410[3] = *(v130 + 3);
    v410[2] = v143;
    *(&v424 + 1) = &type metadata for SystemInfo;
    *&v425 = &protocol witness table for SystemInfo;
    v144 = swift_allocObject();
    *&v423 = v144;
    v145 = *(v130 + 9);
    v144[9] = *(v130 + 8);
    v144[10] = v145;
    v144[11] = *(v130 + 10);
    v146 = *(v130 + 5);
    v144[5] = *(v130 + 4);
    v144[6] = v146;
    v147 = *(v130 + 7);
    v144[7] = *(v130 + 6);
    v144[8] = v147;
    v148 = *(v130 + 1);
    v144[1] = *v130;
    v144[2] = v148;
    v149 = *(v130 + 3);
    v144[3] = *(v130 + 2);
    v144[4] = v149;
    sub_1000884D8(v410, v434);
    v150 = v375;
    sub_1001B3C70(&v423, v375);
    v330 = *(v136 + 8);
    v330(v137, v138);
    sub_100011CF0(&v423);
    v151 = v376;
    v152 = v354;
    sub_10014DFC4(v376, v354, v355, v150);
    v153 = v334;
    sub_10001208C(v152, v334, &unk_100230170, &unk_1001E0D90);
    v154 = v369;
    v155 = v379;
    v156 = (*(v369 + 48))(v153, 1, v379);
    v157 = v154;
    v158 = v151;
    v362 = v136 + 8;
    if (v156 == 1)
    {
      sub_100011F00(v153, &unk_100230170, &unk_1001E0D90);
    }

    else
    {
      v159 = *(v157 + 32);
      v160 = v157;
      v161 = v329;
      v159(v329, v153, v155);
      sub_10014F450(v161, v158);
      v162 = v161;
      v157 = v160;
      (*(v160 + 8))(v162, v155);
    }

    v163 = v364;
    v164 = v365;
    v165 = v371;
    v166 = *(v157 + 16);
    v372 = (v157 + 16);
    v373 = v166;
    (v166)(v364, v158, v155);
    v167 = type metadata accessor for RateLimiter();
    v168 = *(v167 + 48);
    v169 = *(v167 + 52);
    v170 = swift_allocObject();
    v171 = v385;
    v172 = v357;
    (v367)(v357, &v385[v370], v374);
    v173 = sub_1001C7F2C(v172, v163, v170);
    v357 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
    *&v171[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter] = v173;
    v329 = *(v165 + 16);
    v174 = v358;
    v175 = v375;
    (v329)(v358, v375, v164);
    v176 = v379;
    v177 = v373;
    (v373)(v163, v158, v379);
    v178 = sub_10003CEB0(v174, v163);
    v334 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore;
    v179 = v385;
    *&v385[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore] = v178;
    v177(v163, v158, v176);
    v180 = type metadata accessor for ServerDrivenConfiguration();
    v181 = *(v180 + 48);
    v182 = *(v180 + 52);
    swift_allocObject();
    v183 = sub_100103314(v163);
    v350 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig;
    *&v179[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig] = v183;
    v184 = v358;
    v185 = v175;
    v186 = v365;
    v187 = v329;
    (v329)(v358, v185, v365);
    v188 = v383;
    v189 = v377;
    (v380)(v383, enum case for TC2LogCategory.attestationVerifier(_:), v377);
    v190 = v337;
    sub_1001D08B0();
    v382(v188, v189);
    v191 = v336;
    v187(v190 + *(v336 + 36), v184, v186);
    v192 = v187;
    v193 = v184;
    v192(v335, v184, v186);
    v194 = v339;
    sub_1001CFFD0();
    v196 = v340;
    v195 = v341;
    (*(v340 + 16))(v338, v194, v341);
    v197 = v190 + *(v191 + 44);
    sub_1001D0010();
    v198 = v190 + *(v191 + 48);
    sub_1001D00B0();
    (*(v196 + 8))(v194, v195);
    v199 = *(v371 + 8);
    v371 += 8;
    v341 = v199;
    v199(v193, v186);
    v200 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier;
    v201 = v385;
    sub_1000DBEF4(v190, &v385[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier], &qword_100229520, &unk_1001DEF70);
    v202 = *(v130 + 9);
    v434[8] = *(v130 + 8);
    v434[9] = v202;
    v434[10] = *(v130 + 10);
    v203 = *(v130 + 5);
    v434[4] = *(v130 + 4);
    v434[5] = v203;
    v204 = *(v130 + 6);
    v434[7] = *(v130 + 7);
    v434[6] = v204;
    v205 = *(v130 + 1);
    v434[0] = *v130;
    v434[1] = v205;
    v206 = *(v130 + 2);
    v434[3] = *(v130 + 3);
    v434[2] = v206;
    sub_1000884D8(v434, &v423);
    v207 = [v333 standardUserDefaults];
    v208 = sub_100011AC0(&qword_1002302C0, &qword_1001E2200);
    v209 = *(v208 + 48);
    v210 = *(v208 + 52);
    swift_allocObject();
    *&v201[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter] = sub_1001B3FF8(v434, v207);
    v211 = *&v357[v201];
    v339 = *&v201[v334];
    sub_10001208C(&v201[v200], v363, &qword_100229520, &unk_1001DEF70);
    (v367)(v361, &v201[v370], v374);
    (v373)(v353, v376, v379);
    v212 = *&v350[v201];
    v213 = *(v130 + 9);
    v407 = *(v130 + 8);
    v408 = v213;
    v409 = *(v130 + 10);
    v214 = *(v130 + 5);
    v403 = *(v130 + 4);
    v404 = v214;
    v215 = *(v130 + 7);
    v405 = *(v130 + 6);
    v406 = v215;
    v216 = *(v130 + 1);
    v399 = *v130;
    v400 = v216;
    v217 = *(v130 + 3);
    v401 = *(v130 + 2);
    v402 = v217;
    v357 = *(v366 + 2);
    v358 = v366 + 16;
    (v357)(v359, v360, v378);
    v340 = *&v201[v331];
    v218 = sub_100011AC0(&qword_1002302A0, &qword_1001E21E8);
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    v221 = swift_allocObject();
    v222 = *(*v221 + 232);
    v223 = v383;
    v224 = v377;
    (v380)(v383, v332, v377);
    v225 = v339;

    sub_1000884D8(&v399, &v423);
    sub_1001D08B0();
    v382(v223, v224);
    *(v221 + *(*v221 + 248)) = v211;
    *(v221 + *(*v221 + 256)) = v225;
    sub_10001208C(v363, v221 + *(*v221 + 264), &qword_100229520, &unk_1001DEF70);
    (v367)(v221 + *(*v221 + 224), v361, v374);
    v226 = v378;
    (v357)(v221 + *(*v221 + 272), v359, v378);
    *(v221 + *(*v221 + 280)) = v212;
    v227 = (v221 + *(*v221 + 288));
    v228 = v408;
    v227[8] = v407;
    v227[9] = v228;
    v227[10] = v409;
    v229 = v404;
    v227[4] = v403;
    v227[5] = v229;
    v230 = v406;
    v227[6] = v405;
    v227[7] = v230;
    v231 = v400;
    *v227 = v399;
    v227[1] = v231;
    v232 = v402;
    v227[2] = v401;
    v227[3] = v232;

    v233 = sub_1001058D4();
    if (v234)
    {
      v235 = 20;
    }

    else
    {
      v235 = v233;
    }

    v236 = sub_100105A2C();
    v238 = v237;

    if (v238)
    {
      v239 = 2592000.0;
    }

    else
    {
      v239 = v236;
    }

    v240 = v342;
    v241 = v353;
    v242 = v379;
    (v373)(v342, v353, v379);
    v243 = v369;
    (*(v369 + 56))(v240, 0, 1, v242);
    v244 = sub_100011AC0(&qword_1002302C8, &qword_1001E2208);
    v245 = *(v244 + 48);
    v246 = *(v244 + 52);
    swift_allocObject();
    *(v221 + *(*v221 + 240)) = sub_1001B93D8(v235, v240, v239);

    v247 = v343;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    sub_1001CC61C(v247);

    (*(v344 + 8))(v247, v345);
    (*(v366 + 1))(v359, v226);
    v248 = *(v243 + 8);
    v369 = v243 + 8;
    v249 = v242;
    v366 = v248;
    (v248)(v241, v242);
    v250 = v374;
    v330(v361, v374);
    sub_100011F00(v363, &qword_100229520, &unk_1001DEF70);
    *(v221 + *(*v221 + 304)) = v340;
    v251 = v385;
    *&v385[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity] = v221;
    v252 = *&v350[v251];
    v253 = *(v130 + 9);
    v396 = *(v130 + 8);
    v397 = v253;
    v398 = *(v130 + 10);
    v254 = *(v130 + 5);
    v392 = *(v130 + 4);
    v393 = v254;
    v255 = *(v130 + 7);
    v394 = *(v130 + 6);
    v395 = v255;
    v256 = *(v130 + 1);
    v388 = *v130;
    v389 = v256;
    v257 = *(v130 + 3);
    v390 = *(v130 + 2);
    v391 = v257;
    *(&v413 + 1) = v250;
    *&v414 = &protocol witness table for DefaultConfiguration;
    v258 = sub_10003B47C(&v412);
    (v367)(v258, &v251[v370], v250);
    v259 = sub_100011AC0(&qword_100230290, &qword_1001E21C8);
    v260 = *(v259 + 48);
    v261 = *(v259 + 52);
    v262 = swift_allocObject();
    v263 = v383;
    v264 = v377;
    (v380)(v383, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v377);

    sub_1000884D8(&v388, &v423);
    sub_1001D08B0();
    v382(v263, v264);
    *(v262 + *(*v262 + 120)) = v252;
    v265 = (v262 + *(*v262 + 128));
    v266 = v389;
    *v265 = v388;
    v265[1] = v266;
    v267 = v393;
    v265[4] = v392;
    v265[5] = v267;
    v268 = v391;
    v265[2] = v390;
    v265[3] = v268;
    v269 = v398;
    v265[9] = v397;
    v265[10] = v269;
    v270 = v396;
    v265[7] = v395;
    v265[8] = v270;
    v265[6] = v394;
    sub_1000446FC(&v412, v262 + *(*v262 + 136));
    *&v251[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_updateServerDrivenConfigurationActivity] = v262;
    v271 = sub_1001D02B0();
    v273 = v272;
    v274 = v364;
    (v373)(v364, v376, v249);
    v275 = *(v130 + 9);
    v431 = *(v130 + 8);
    v432 = v275;
    v433 = *(v130 + 10);
    v276 = *(v130 + 5);
    v427 = *(v130 + 4);
    v428 = v276;
    v277 = *(v130 + 6);
    v430 = *(v130 + 7);
    v429 = v277;
    v278 = *(v130 + 1);
    v423 = *v130;
    v424 = v278;
    v279 = *(v130 + 2);
    v426 = *(v130 + 3);
    v425 = v279;
    v280 = sub_100011AC0(&qword_1002302D0, &qword_1001E2210);
    v281 = *(v280 + 48);
    v282 = *(v280 + 52);
    swift_allocObject();
    sub_1000884D8(&v423, &v412);
    v283 = sub_1001B3428(v271, v273, v274, &v423);
    *&v251[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionAnalyzer] = v283;
    v284 = v356;
    v285 = v378;
    (v357)(v356, v360, v378);
    v286 = sub_100011AC0(&qword_100230288, &qword_1001E21C0);
    v287 = *(v286 + 48);
    v288 = *(v286 + 52);
    v289 = swift_allocObject();
    LODWORD(v374) = enum case for TC2LogCategory.metricReporter(_:);
    v290 = v383;
    v291 = v377;
    v380(v383);

    sub_1001D08B0();
    v382(v290, v291);
    v351(v289 + qword_100242D68, v284, v285);
    *(v289 + qword_100242D70) = v283;
    v292 = v385;
    *&v385[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionReportActivity] = v289;
    v293 = v364;
    (v373)(v364, v376, v379);
    v294 = type metadata accessor for FeatureUsageAnalyzerStoreHelper();
    v295 = *(v294 + 48);
    v296 = *(v294 + 52);
    swift_allocObject();
    v297 = sub_100013270(v293);
    v298 = sub_1001D02B0();
    v300 = v299;
    v301 = *(v130 + 9);
    v420 = *(v130 + 8);
    v421 = v301;
    v422 = *(v130 + 10);
    v302 = *(v130 + 5);
    v416 = *(v130 + 4);
    v417 = v302;
    v303 = *(v130 + 6);
    v419 = *(v130 + 7);
    v418 = v303;
    v304 = *(v130 + 1);
    v412 = *v130;
    v413 = v304;
    v305 = *(v130 + 2);
    v415 = *(v130 + 3);
    v414 = v305;
    v306 = sub_100011AC0(&qword_1002302D8, &qword_1001E2218);
    v307 = *(v306 + 48);
    v308 = *(v306 + 52);
    swift_allocObject();
    sub_1000884D8(&v412, v387);
    v309 = sub_1001B0A40(v297, v298, v300, &v412);
    *&v292[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzer] = v309;
    v310 = v378;
    (v357)(v284, v360, v378);
    v311 = sub_100011AC0(&qword_100230298, &qword_1001E21D0);
    v312 = *(v311 + 48);
    v313 = *(v311 + 52);
    v314 = swift_allocObject();
    v315 = v383;
    (v380)(v383, v374, v291);

    sub_1001D08B0();
    v382(v315, v291);
    v351(v314 + qword_100227BF8, v284, v310);
    *(v314 + qword_100227C00) = v309;
    *&v292[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzerScheduledActivity] = v314;
    v386.receiver = v292;
    v386.super_class = ObjectType;
    v316 = objc_msgSendSuper2(&v386, "init");
    v317 = v347;
    v318 = v348;
    v319 = v349;
    (*(v347 + 16))(v349, v316 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger, v348);
    v320 = v316;
    v321 = sub_1001D0E50();
    v322 = sub_1001D1E00();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v387[0] = v324;
      *v323 = 136315138;
      v325 = *&v320[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144];
      v326 = *&v320[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 152];

      v327 = sub_1000954E0(v325, v326, v387);

      *(v323 + 4) = v327;
      _os_log_impl(&_mh_execute_header, v321, v322, "Starting daemon. tc2OSInfo: %s", v323, 0xCu);
      sub_100011CF0(v324);

      sub_100011F00(v355, &unk_100230170, &unk_1001E0D90);
      (*(v317 + 8))(v349, v318);
    }

    else
    {

      sub_100011F00(v355, &unk_100230170, &unk_1001E0D90);
      (*(v317 + 8))(v319, v318);
    }

    sub_100011F00(v354, &unk_100230170, &unk_1001E0D90);
    (v366)(v376, v379);
    v341(v375, v365);
    return v320;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BE3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v80 = a5;
  v88 = a4;
  v87 = a3;
  v89 = a2;
  v109 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v93 = *(v109 - 8);
  v8 = *(v93 + 64);
  __chkstk_darwin(v109, v9);
  v92 = &v72 - v10;
  v11 = sub_1001D20F0();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  __chkstk_darwin(v11, v13);
  v91 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001D02F0();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001D05B0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v90 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v29 = &v72 - v28;
  v30 = *a1;
  if (*(*a1 + 16) && (v31 = sub_100006708(v89, v87, v88 & 1), (v32 & 1) != 0))
  {
    *a6 = *(*(v30 + 56) + 8 * v31);
  }

  else
  {
    v79 = a6;
    v34 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
    v96 = v20;
    v97 = &protocol witness table for DefaultConfiguration;
    v35 = sub_10003B47C(&v95);
    v78 = a1;
    v74 = v21;
    v36 = *(v21 + 16);
    v37 = v80;
    v36(v35, v80 + v34, v20);
    v86 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
    v38 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144);
    v106 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 128);
    v107 = v38;
    v108 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 160);
    v39 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 80);
    v102 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 64);
    v103 = v39;
    v40 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 112);
    v104 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 96);
    v105 = v40;
    v41 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
    v98 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    v99 = v41;
    v42 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 48);
    v100 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
    v101 = v42;
    v72 = v20;
    v85 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
    v77 = v29;
    sub_10001208C(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v29, &qword_100229520, &unk_1001DEF70);
    v76 = *(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    v36(v90, v37 + v34, v20);
    v43 = sub_100011AC0(&qword_100230160, &qword_1001E1F30);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v47 = v81;
    v48 = v82;
    v73 = *(v81 + 104);
    v73(v19, enum case for TC2LogCategory.tokenProvider(_:), v82);

    sub_1000884D8(&v98, v94);

    sub_1001D08B0();
    v49 = *(v47 + 8);
    v49(v19, v48);
    v75 = v46;
    (*(v74 + 32))(v46 + *(*v46 + 120), v90, v72);
    sub_1001D20E0();
    v90 = *(*(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));
    (*(v93 + 16))(v92, v37 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v109);
    v50 = sub_100011AC0(&qword_100230168, &qword_1001E1F38);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    v53 = swift_allocObject();
    v73(v19, enum case for TC2LogCategory.daemon(_:), v48);
    v54 = v87;

    sub_1001D08B0();
    v49(v19, v48);
    v55 = v53 + *(*v53 + 344);
    v56 = sub_1000DB854(&_swiftEmptyArrayStorage);
    v57 = *sub_1001D0110();
    *v55 = 0;
    *(v55 + 8) = v56;
    *(v55 + 16) = v57;
    v58 = qword_100243518;

    sub_1000446FC(&v95, v53 + v58);
    *(v53 + *(*v53 + 240)) = v86;
    v59 = (v53 + *(*v53 + 248));
    v60 = v99;
    *v59 = v98;
    v59[1] = v60;
    v61 = v103;
    v59[4] = v102;
    v59[5] = v61;
    v62 = v101;
    v59[2] = v100;
    v59[3] = v62;
    v63 = v108;
    v59[9] = v107;
    v59[10] = v63;
    v64 = v106;
    v59[7] = v105;
    v59[8] = v64;
    v59[6] = v104;
    *(v53 + *(*v53 + 264)) = v85;
    sub_1000DBEF4(v77, v53 + *(*v53 + 272), &qword_100229520, &unk_1001DEF70);
    v65 = v75;
    *(v53 + *(*v53 + 280)) = v76;
    *(v53 + *(*v53 + 288)) = v65;
    (*(v83 + 32))(v53 + *(*v53 + 296), v91, v84);
    v66 = (v53 + *(*v53 + 304));
    v67 = v89;
    *v66 = v89;
    v66[1] = v54;
    v68 = v54;
    LODWORD(v56) = v88 & 1;
    *(v53 + *(*v53 + 312)) = v56;
    *(v53 + *(*v53 + 320)) = v90;
    (*(v93 + 32))(v53 + *(*v53 + 328), v92, v109);

    v69 = v78;
    v70 = *v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *v69;
    sub_10001B010(v53, v67, v68, v56, isUniquelyReferenced_nonNull_native);

    *v69 = v94[0];
    *v79 = v53;
  }

  return result;
}

uint64_t sub_1001BEBC4(uint64_t a1)
{
  v2 = objc_allocWithZone(NSXPCListener);
  v3 = sub_1001D17A0();
  v4 = [v2 initWithMachServiceName:v3];

  [v4 setDelegate:a1];
  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Listener start", v7, 2u);
  }

  [v4 resume];
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Listener done", v10, 2u);
  }

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Register prefetch task", v13, 2u);
  }

  v14 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity);
  v15 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_preferencesStore);
  v16 = sub_100011AC0(&qword_100230280, &qword_1001E21B8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_retain_n();

  sub_1001C7D8C(0xD000000000000032, 0x80000001001E7E60, v14, v15, v19, &qword_1002302A0, &qword_1001E21E8, &off_10021E8E8);
  sub_1001B73E8();

  v20 = sub_1001D0E50();
  v21 = sub_1001D1E00();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Register feature usage analyzer task", v22, 2u);
  }

  v23 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzerScheduledActivity);
  v24 = *(v16 + 48);
  v25 = *(v16 + 52);
  v26 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000032, 0x80000001001E7EA0, v23, v15, v26, &qword_100230298, &qword_1001E21D0, &off_10021D370);
  sub_1001B73E8();

  v27 = sub_1001D0E50();
  v28 = sub_1001D1E00();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Register fetch config bag task", v29, 2u);
  }

  v30 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_updateServerDrivenConfigurationActivity);
  v31 = *(v16 + 48);
  v32 = *(v16 + 52);
  v33 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000035, 0x80000001001E7EE0, v30, v15, v33, &qword_100230290, &qword_1001E21C8, &off_100220368);
  sub_1001B73E8();

  v34 = sub_1001D0E50();
  v35 = sub_1001D1E00();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Register node distribution report task", v36, 2u);
  }

  v37 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionReportActivity);
  v38 = *(v16 + 48);
  v39 = *(v16 + 52);
  v40 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000034, 0x80000001001E7F20, v37, v15, v40, &qword_100230288, &qword_1001E21C0, &off_10021E310);
  sub_1001B73E8();
}

uint64_t sub_1001BF144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[115] = a4;
  v4[114] = a3;
  v4[113] = a2;
  v5 = *(type metadata accessor for MetricReporter() - 8);
  v4[116] = v5;
  v4[117] = *(v5 + 64);
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v6 = sub_1001CFDA0();
  v4[121] = v6;
  v7 = *(v6 - 8);
  v4[122] = v7;
  v4[123] = *(v7 + 64);
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v8 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();
  v4[152] = swift_task_alloc();
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v4[155] = swift_task_alloc();
  v9 = sub_1001D08A0();
  v4[156] = v9;
  v10 = *(v9 - 8);
  v4[157] = v10;
  v4[158] = *(v10 + 64);
  v4[159] = swift_task_alloc();
  v4[160] = swift_task_alloc();
  v4[161] = swift_task_alloc();
  v4[162] = swift_task_alloc();
  v4[163] = swift_task_alloc();
  v4[164] = swift_task_alloc();
  v11 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v4[165] = v11;
  v4[166] = *(v11 + 64);
  v4[167] = swift_task_alloc();
  v4[168] = swift_task_alloc();
  v12 = type metadata accessor for ThimbledEvent();
  v4[169] = v12;
  v13 = *(v12 - 8);
  v4[170] = v13;
  v14 = *(v13 + 64) + 15;
  v4[171] = swift_task_alloc();
  v15 = *(*(sub_100011AC0(&qword_1002301A0, &qword_1001E1F78) - 8) + 64) + 15;
  v4[172] = swift_task_alloc();
  v16 = sub_100011AC0(&qword_1002301A8, &qword_1001E1F80);
  v4[173] = v16;
  v17 = *(v16 - 8);
  v4[174] = v17;
  v18 = *(v17 + 64) + 15;
  v4[175] = swift_task_alloc();

  return _swift_task_switch(sub_1001BF634, 0, 0);
}

uint64_t sub_1001BF634()
{
  v1 = v0[175];
  v2 = v0[114];
  sub_100011AC0(&unk_1002300F0, &unk_1001E1EF8);
  sub_1001D1BF0();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[176] = v4;
  *v4 = v0;
  v4[1] = sub_1001BF714;
  v5 = v0[175];
  v6 = v0[173];
  v7 = v0[172];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v6);
}

uint64_t sub_1001BF714()
{
  v1 = *(*v0 + 1408);
  v3 = *v0;

  return _swift_task_switch(sub_1001BF810, 0, 0);
}

uint64_t sub_1001BF810()
{
  v1 = *(v0 + 1376);
  if ((*(*(v0 + 1360) + 48))(v1, 1, *(v0 + 1352)) == 1)
  {
    v2 = *(v0 + 1368);
    v3 = *(v0 + 1344);
    v4 = *(v0 + 1336);
    v5 = *(v0 + 1312);
    v6 = *(v0 + 1304);
    v7 = *(v0 + 1296);
    v8 = *(v0 + 1288);
    v321 = *(v0 + 1280);
    v322 = *(v0 + 1272);
    v323 = *(v0 + 1240);
    v324 = *(v0 + 1232);
    v325 = *(v0 + 1224);
    v326 = *(v0 + 1216);
    v327 = *(v0 + 1208);
    v328 = *(v0 + 1200);
    v329 = *(v0 + 1192);
    v330 = *(v0 + 1184);
    v331 = *(v0 + 1176);
    v332 = *(v0 + 1168);
    v333 = *(v0 + 1160);
    v334 = *(v0 + 1152);
    v335 = *(v0 + 1144);
    v336 = *(v0 + 1136);
    v337 = *(v0 + 1128);
    v338 = *(v0 + 1120);
    v339 = *(v0 + 1112);
    v340 = *(v0 + 1104);
    v341 = *(v0 + 1096);
    v342 = *(v0 + 1088);
    v343 = *(v0 + 1080);
    v344 = *(v0 + 1072);
    v347 = *(v0 + 1064);
    v351 = *(v0 + 1056);
    v353 = *(v0 + 1048);
    v358 = *(v0 + 1040);
    v362 = *(v0 + 1032);
    v367 = *(v0 + 1024);
    v372 = *(v0 + 1016);
    v375 = *(v0 + 1008);
    v380 = *(v0 + 1000);
    v385 = *(v0 + 992);
    v389 = *(v0 + 960);
    v396 = *(v0 + 952);
    v403 = *(v0 + 944);
    (*(*(v0 + 1392) + 8))(*(v0 + 1400), *(v0 + 1384));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = (v0 + 176);
    v12 = (v0 + 272);
    v13 = (v0 + 400);
    v14 = (v0 + 432);
    v15 = (v0 + 528);
    v16 = (v0 + 560);
    sub_1001CBCB0(v1, *(v0 + 1368), type metadata accessor for ThimbledEvent);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v132 = *(v0 + 1192);
        v133 = *(v0 + 1184);
        v134 = *(v0 + 944);
        v135 = *(v0 + 936);
        v136 = *(v0 + 928);
        v137 = *(v0 + 920);
        sub_1000446FC(*(v0 + 1368), v0 + 136);
        v138 = sub_1001D1BA0();
        v139 = *(v138 - 8);
        (*(v139 + 56))(v132, 1, 1, v138);
        sub_100044698(v0 + 136, v0 + 96);
        sub_1001CC144(v137, v134, type metadata accessor for MetricReporter);
        v140 = (*(v136 + 80) + 72) & ~*(v136 + 80);
        v141 = swift_allocObject();
        *(v141 + 16) = 0;
        v142 = (v141 + 16);
        *(v141 + 24) = 0;
        sub_1000446FC((v0 + 96), v141 + 32);
        sub_1001CBCB0(v134, v141 + v140, type metadata accessor for MetricReporter);
        sub_10001208C(v132, v133, &qword_100229350, &unk_1001D6BA0);
        v143 = (*(v139 + 48))(v133, 1, v138);
        v144 = *(v0 + 1184);
        if (v143 == 1)
        {
          sub_100011F00(*(v0 + 1184), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v139 + 8))(v144, v138);
        }

        if (*v142)
        {
          v235 = *(v141 + 24);
          v236 = *v142;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v237 = sub_1001D1A70();
          v239 = v238;
          swift_unknownObjectRelease();
        }

        else
        {
          v237 = 0;
          v239 = 0;
        }

        v277 = **(v0 + 904);
        v278 = swift_allocObject();
        *(v278 + 16) = &unk_1001E2078;
        *(v278 + 24) = v141;

        if (v239 | v237)
        {
          *v14 = 0;
          *(v0 + 440) = 0;
          *(v0 + 448) = v237;
          *(v0 + 456) = v239;
        }

        else
        {
          v14 = 0;
        }

        v284 = *(v0 + 1192);
        *(v0 + 736) = 1;
        *(v0 + 744) = v14;
        *(v0 + 752) = v277;
        swift_task_create();

        sub_100011F00(v284, &qword_100229350, &unk_1001D6BA0);
        sub_100011CF0((v0 + 136));
        break;
      case 2u:
        v93 = *(v0 + 1176);
        v94 = *(v0 + 1168);
        v95 = *(v0 + 912);
        v96 = **(v0 + 1368);
        v97 = sub_1001D1BA0();
        v98 = *(v97 - 8);
        (*(v98 + 56))(v93, 1, 1, v97);
        v99 = swift_allocObject();
        v99[2] = 0;
        v100 = v99 + 2;
        v99[3] = 0;
        v99[4] = v96;
        v99[5] = v95;
        sub_10001208C(v93, v94, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v94) = (*(v98 + 48))(v94, 1, v97);
        v101 = v95;
        v102 = *(v0 + 1168);
        if (v94 == 1)
        {
          sub_100011F00(*(v0 + 1168), &qword_100229350, &unk_1001D6BA0);
          v103 = 0;
          v104 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v98 + 8))(v102, v97);
          if (*v100)
          {
            v219 = v99[3];
            v220 = *v100;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v103 = sub_1001D1A70();
            v104 = v221;
            swift_unknownObjectRelease();
          }

          else
          {
            v103 = 0;
            v104 = 0;
          }
        }

        v307 = **(v0 + 904);
        v308 = swift_allocObject();
        *(v308 + 16) = &unk_1001E2060;
        *(v308 + 24) = v99;

        if (v104 | v103)
        {
          *v11 = 0;
          *(v0 + 184) = 0;
          *(v0 + 192) = v103;
          *(v0 + 200) = v104;
        }

        else
        {
          v11 = 0;
        }

        v301 = *(v0 + 1176);
        *(v0 + 640) = 1;
        *(v0 + 648) = v11;
        *(v0 + 656) = v307;
        goto LABEL_130;
      case 3u:
        v105 = *(v0 + 1368);
        v106 = *(v0 + 1144);
        v107 = *(v0 + 1136);
        v108 = *(v0 + 912);
        v109 = *v105;
        v110 = sub_1001D1BA0();
        v111 = *(v110 - 8);
        v398 = *(v105 + 5);
        v405 = *(v105 + 3);
        v392 = *(v105 + 1);
        (*(v111 + 56))(v106, 1, 1, v110);
        v112 = swift_allocObject();
        *(v112 + 16) = 0;
        v113 = (v112 + 16);
        *(v112 + 24) = 0;
        *(v112 + 32) = v108;
        *(v112 + 40) = v109;
        *(v112 + 48) = v392;
        *(v112 + 64) = v405;
        *(v112 + 80) = v398;
        sub_10001208C(v106, v107, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v106) = (*(v111 + 48))(v107, 1, v110);
        v114 = v108;
        v115 = *(v0 + 1136);
        if (v106 == 1)
        {
          sub_100011F00(*(v0 + 1136), &qword_100229350, &unk_1001D6BA0);
          v116 = 0;
          v117 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v111 + 8))(v115, v110);
          if (*v113)
          {
            v222 = *(v112 + 24);
            v223 = *v113;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v116 = sub_1001D1A70();
            v117 = v224;
            swift_unknownObjectRelease();
          }

          else
          {
            v116 = 0;
            v117 = 0;
          }
        }

        v309 = **(v0 + 904);
        v310 = swift_allocObject();
        *(v310 + 16) = &unk_1001E2030;
        *(v310 + 24) = v112;

        if (v117 | v116)
        {
          *v15 = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v116;
          *(v0 + 552) = v117;
        }

        else
        {
          v15 = 0;
        }

        v301 = *(v0 + 1144);
        *(v0 + 592) = 1;
        *(v0 + 600) = v15;
        *(v0 + 608) = v309;
        goto LABEL_130;
      case 4u:
        v45 = *(v0 + 1368);
        v46 = *(v0 + 1224);
        v404 = *(v0 + 1216);
        v47 = *(v0 + 1032);
        v48 = *(v0 + 1024);
        v348 = v48;
        v369 = *(v0 + 984);
        v49 = *(v0 + 976);
        v50 = *(v0 + 968);
        v51 = *(v0 + 960);
        v352 = v51;
        v377 = *(v0 + 936);
        v355 = *(v0 + 920);
        v359 = *(v0 + 928);
        v391 = *(v0 + 912);
        v52 = (v45 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
        v382 = v52[1];
        v387 = *v52;
        v364 = *(v49 + 32);
        v53 = v45;
        v54 = v50;
        v345 = v50;
        v364(v47, v53, v50);
        v55 = sub_1001D1BA0();
        v56 = *(v55 - 8);
        (*(v56 + 56))(v46, 1, 1, v55);
        (*(v49 + 16))(v48, v47, v54);
        sub_1001CC144(v355, v51, type metadata accessor for MetricReporter);
        v57 = (*(v49 + 80) + 40) & ~*(v49 + 80);
        v58 = (v369 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = (*(v359 + 80) + v58 + 16) & ~*(v359 + 80);
        v60 = swift_allocObject();
        v60[2] = 0;
        v61 = v60 + 2;
        v60[3] = 0;
        v60[4] = v391;
        v364(v60 + v57, v348, v345);
        v62 = (v60 + v58);
        *v62 = v387;
        v62[1] = v382;
        sub_1001CBCB0(v352, v60 + v59, type metadata accessor for MetricReporter);
        sub_10001208C(v46, v404, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v57) = (*(v56 + 48))(v404, 1, v55);
        v63 = v391;
        v64 = *(v0 + 1216);
        if (v57 == 1)
        {
          sub_100011F00(*(v0 + 1216), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v56 + 8))(v64, v55);
        }

        if (*v61)
        {
          v208 = v60[3];
          v209 = *v61;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v210 = sub_1001D1A70();
          v212 = v211;
          swift_unknownObjectRelease();
        }

        else
        {
          v210 = 0;
          v212 = 0;
        }

        v256 = **(v0 + 904);
        v257 = swift_allocObject();
        *(v257 + 16) = &unk_1001E20B0;
        *(v257 + 24) = v60;

        if (v212 | v210)
        {
          v258 = v0 + 304;
          *(v0 + 304) = 0;
          *(v0 + 312) = 0;
          *(v0 + 320) = v210;
          *(v0 + 328) = v212;
        }

        else
        {
          v258 = 0;
        }

        v259 = *(v0 + 1224);
        v260 = *(v0 + 1032);
        v261 = *(v0 + 976);
        v262 = *(v0 + 968);
        *(v0 + 832) = 1;
        *(v0 + 840) = v258;
        *(v0 + 848) = v256;
        swift_task_create();

        sub_100011F00(v259, &qword_100229350, &unk_1001D6BA0);
        (*(v261 + 8))(v260, v262);
        break;
      case 5u:
        v145 = *(v0 + 1368);
        v146 = *(v0 + 1208);
        v374 = v146;
        v407 = *(v0 + 1200);
        v147 = *(v0 + 1016);
        v148 = *(v0 + 1008);
        v350 = v148;
        v371 = *(v0 + 984);
        v149 = *(v0 + 976);
        v150 = *(v0 + 968);
        v151 = *(v0 + 952);
        v379 = *(v0 + 936);
        v357 = *(v0 + 920);
        v361 = *(v0 + 928);
        v400 = *(v0 + 912);
        v152 = (v145 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
        v384 = v152[1];
        v388 = *v152;
        v366 = *(v149 + 32);
        v153 = v145;
        v154 = v150;
        v346 = v150;
        v366(v147, v153, v150);
        v155 = sub_1001D1BA0();
        v156 = *(v155 - 8);
        (*(v156 + 56))(v146, 1, 1, v155);
        (*(v149 + 16))(v148, v147, v154);
        sub_1001CC144(v357, v151, type metadata accessor for MetricReporter);
        v157 = (*(v149 + 80) + 40) & ~*(v149 + 80);
        v158 = (v371 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
        v159 = (*(v361 + 80) + v158 + 16) & ~*(v361 + 80);
        v160 = swift_allocObject();
        v160[2] = 0;
        v161 = v160 + 2;
        v160[3] = 0;
        v160[4] = v400;
        v366(v160 + v157, v350, v346);
        v162 = (v160 + v158);
        *v162 = v388;
        v162[1] = v384;
        sub_1001CBCB0(v151, v160 + v159, type metadata accessor for MetricReporter);
        sub_10001208C(v374, v407, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v157) = (*(v156 + 48))(v407, 1, v155);
        v163 = v400;
        v164 = *(v0 + 1200);
        if (v157 == 1)
        {
          sub_100011F00(*(v0 + 1200), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v156 + 8))(v164, v155);
        }

        if (*v161)
        {
          v240 = v160[3];
          v241 = *v161;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v242 = sub_1001D1A70();
          v244 = v243;
          swift_unknownObjectRelease();
        }

        else
        {
          v242 = 0;
          v244 = 0;
        }

        v285 = **(v0 + 904);
        v286 = swift_allocObject();
        *(v286 + 16) = &unk_1001E2098;
        *(v286 + 24) = v160;

        if (v244 | v242)
        {
          v287 = v0 + 368;
          *(v0 + 368) = 0;
          *(v0 + 376) = 0;
          *(v0 + 384) = v242;
          *(v0 + 392) = v244;
        }

        else
        {
          v287 = 0;
        }

        v288 = *(v0 + 1208);
        v289 = *(v0 + 1016);
        v290 = *(v0 + 976);
        v291 = *(v0 + 968);
        *(v0 + 784) = 1;
        *(v0 + 792) = v287;
        *(v0 + 800) = v285;
        swift_task_create();

        sub_100011F00(v288, &qword_100229350, &unk_1001D6BA0);
        (*(v290 + 8))(v289, v291);
        break;
      case 6u:
        v165 = *(v0 + 1296);
        v166 = *(v0 + 1288);
        v401 = *(v0 + 1264);
        v167 = *(v0 + 1256);
        v168 = *(v0 + 1248);
        v169 = *(v0 + 1128);
        v408 = *(v0 + 1120);
        v395 = *(v0 + 912);
        v170 = *(v167 + 32);
        v170(v165, *(v0 + 1368), v168);
        v171 = sub_1001D1BA0();
        v172 = *(v171 - 8);
        (*(v172 + 56))(v169, 1, 1, v171);
        (*(v167 + 16))(v166, v165, v168);
        v173 = (*(v167 + 80) + 40) & ~*(v167 + 80);
        v174 = swift_allocObject();
        v174[2] = 0;
        v402 = v174 + 2;
        v174[3] = 0;
        v174[4] = v395;
        v170(v174 + v173, v166, v168);
        sub_10001208C(v169, v408, &qword_100229350, &unk_1001D6BA0);
        v175 = (*(v172 + 48))(v408, 1, v171);
        v176 = v395;
        v177 = *(v0 + 1120);
        if (v175 == 1)
        {
          sub_100011F00(*(v0 + 1120), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v172 + 8))(v177, v171);
        }

        if (*v402)
        {
          v245 = v174[3];
          v246 = *v402;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v247 = sub_1001D1A70();
          v249 = v248;
          swift_unknownObjectRelease();
        }

        else
        {
          v247 = 0;
          v249 = 0;
        }

        v292 = **(v0 + 904);
        v293 = swift_allocObject();
        *(v293 + 16) = &unk_1001E2018;
        *(v293 + 24) = v174;

        if (v249 | v247)
        {
          v294 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v247;
          *(v0 + 520) = v249;
        }

        else
        {
          v294 = 0;
        }

        v295 = *(v0 + 1296);
        v296 = *(v0 + 1256);
        v297 = *(v0 + 1248);
        v298 = *(v0 + 1128);
        *(v0 + 664) = 1;
        *(v0 + 672) = v294;
        *(v0 + 680) = v292;
        swift_task_create();

        sub_100011F00(v298, &qword_100229350, &unk_1001D6BA0);
        (*(v296 + 8))(v295, v297);
        break;
      case 7u:
        v118 = *(v0 + 1368);
        v119 = *(v0 + 1280);
        v349 = v119;
        v365 = *(v0 + 1272);
        v393 = *(v0 + 1264);
        v120 = *(v0 + 1256);
        v121 = *(v0 + 1248);
        v406 = *(v0 + 1112);
        v399 = *(v0 + 1104);
        v122 = *(v0 + 1000);
        v360 = *(v0 + 992);
        v373 = *(v0 + 984);
        v123 = *(v0 + 976);
        v124 = *(v0 + 968);
        v383 = *(v0 + 912);
        v125 = *(sub_100011AC0(&unk_1002301B0, &unk_1001E1610) + 48);
        v378 = *(v123 + 32);
        v378(v122, v118, v124);
        v370 = *(v120 + 32);
        v370(v119, v118 + v125, v121);
        v126 = sub_1001D1BA0();
        v356 = *(v126 - 8);
        (*(v356 + 56))(v406, 1, 1, v126);
        (*(v123 + 16))(v360, v122, v124);
        (*(v120 + 16))(v365, v349, v121);
        v127 = (*(v123 + 80) + 40) & ~*(v123 + 80);
        v128 = (v373 + *(v120 + 80) + v127) & ~*(v120 + 80);
        v129 = swift_allocObject();
        v129[2] = 0;
        v394 = v129 + 2;
        v129[3] = 0;
        v129[4] = v383;
        v378(v129 + v127, v360, v124);
        v370(v129 + v128, v365, v121);
        sub_10001208C(v406, v399, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v127) = (*(v356 + 48))(v399, 1, v126);
        v130 = v383;
        v131 = *(v0 + 1104);
        if (v127 == 1)
        {
          sub_100011F00(*(v0 + 1104), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v356 + 8))(v131, v126);
        }

        if (*v394)
        {
          v225 = v129[3];
          v226 = *v394;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v227 = sub_1001D1A70();
          v229 = v228;
          swift_unknownObjectRelease();
        }

        else
        {
          v227 = 0;
          v229 = 0;
        }

        v263 = **(v0 + 904);
        v264 = swift_allocObject();
        *(v264 + 16) = &unk_1001E2000;
        *(v264 + 24) = v129;

        v265 = v263;
        if (v229 | v227)
        {
          v266 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v227;
          *(v0 + 488) = v229;
        }

        else
        {
          v266 = 0;
        }

        v267 = *(v0 + 1280);
        v268 = *(v0 + 1256);
        v269 = *(v0 + 1248);
        v270 = *(v0 + 1112);
        v271 = *(v0 + 1000);
        v272 = *(v0 + 976);
        v273 = *(v0 + 968);
        *(v0 + 688) = 1;
        *(v0 + 696) = v266;
        *(v0 + 704) = v265;
        swift_task_create();

        sub_100011F00(v270, &qword_100229350, &unk_1001D6BA0);
        (*(v268 + 8))(v267, v269);
        (*(v272 + 8))(v271, v273);
        break;
      case 8u:
        v192 = *(v0 + 1368);
        v193 = *(v0 + 1096);
        v194 = *(v0 + 1088);
        v195 = *(v0 + 912);
        v196 = *v192;
        v409 = *(v192 + 8);
        v197 = sub_1001D1BA0();
        v198 = *(v197 - 8);
        (*(v198 + 56))(v193, 1, 1, v197);
        v199 = swift_allocObject();
        *(v199 + 16) = 0;
        v200 = (v199 + 16);
        *(v199 + 24) = 0;
        *(v199 + 32) = v195;
        *(v199 + 40) = v196;
        *(v199 + 48) = v409;
        sub_10001208C(v193, v194, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v194) = (*(v198 + 48))(v194, 1, v197);
        v201 = v195;
        v202 = *(v0 + 1088);
        if (v194 == 1)
        {
          sub_100011F00(*(v0 + 1088), &qword_100229350, &unk_1001D6BA0);
          v203 = 0;
          v204 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v198 + 8))(v202, v197);
          if (*v200)
          {
            v253 = *(v199 + 24);
            v254 = *v200;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v203 = sub_1001D1A70();
            v204 = v255;
            swift_unknownObjectRelease();
          }

          else
          {
            v203 = 0;
            v204 = 0;
          }
        }

        v314 = **(v0 + 904);
        v315 = swift_allocObject();
        *(v315 + 16) = &unk_1001E1FE0;
        *(v315 + 24) = v199;

        if (v204 | v203)
        {
          *v13 = 0;
          *(v0 + 408) = 0;
          *(v0 + 416) = v203;
          *(v0 + 424) = v204;
        }

        else
        {
          v13 = 0;
        }

        v301 = *(v0 + 1096);
        *(v0 + 712) = 1;
        *(v0 + 720) = v13;
        *(v0 + 728) = v314;
        goto LABEL_130;
      case 9u:
        v76 = *(v0 + 1368);
        v77 = *(v0 + 1080);
        v78 = *(v0 + 1072);
        v79 = *(v0 + 912);
        *(v0 + 16) = *v76;
        v80 = v76[4];
        v82 = v76[1];
        v81 = v76[2];
        *(v0 + 64) = v76[3];
        *(v0 + 80) = v80;
        *(v0 + 32) = v82;
        *(v0 + 48) = v81;
        v83 = sub_1001D1BA0();
        v84 = *(v83 - 8);
        (*(v84 + 56))(v77, 1, 1, v83);
        v85 = swift_allocObject();
        v86 = *(v0 + 16);
        *(v85 + 56) = *(v0 + 32);
        v87 = *(v0 + 64);
        *(v85 + 72) = *(v0 + 48);
        *(v85 + 88) = v87;
        *(v85 + 104) = *(v0 + 80);
        *(v85 + 16) = 0;
        v88 = (v85 + 16);
        *(v85 + 24) = 0;
        *(v85 + 32) = v79;
        *(v85 + 40) = v86;
        sub_10001208C(v77, v78, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v77) = (*(v84 + 48))(v78, 1, v83);
        v89 = v79;
        v90 = *(v0 + 1072);
        if (v77 == 1)
        {
          sub_100011F00(*(v0 + 1072), &qword_100229350, &unk_1001D6BA0);
          v91 = 0;
          v92 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v84 + 8))(v90, v83);
          if (*v88)
          {
            v216 = *(v85 + 24);
            v217 = *v88;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v91 = sub_1001D1A70();
            v92 = v218;
            swift_unknownObjectRelease();
          }

          else
          {
            v91 = 0;
            v92 = 0;
          }
        }

        v304 = **(v0 + 904);
        v305 = swift_allocObject();
        *(v305 + 16) = &unk_1001E1FC8;
        *(v305 + 24) = v85;

        if (v92 | v91)
        {
          v306 = v0 + 336;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0;
          *(v0 + 352) = v91;
          *(v0 + 360) = v92;
        }

        else
        {
          v306 = 0;
        }

        v301 = *(v0 + 1080);
        *(v0 + 760) = 1;
        *(v0 + 768) = v306;
        *(v0 + 776) = v304;
        goto LABEL_130;
      case 0xAu:
        v178 = *(v0 + 1368);
        v179 = *(v0 + 1048);
        v180 = *(v0 + 1040);
        v181 = *(v0 + 912);
        v182 = *v178;
        v183 = v178[1];
        v184 = sub_1001D1BA0();
        v185 = *(v184 - 8);
        (*(v185 + 56))(v179, 1, 1, v184);
        v186 = swift_allocObject();
        *(v186 + 16) = 0u;
        v187 = (v186 + 16);
        *(v186 + 32) = v181;
        *(v186 + 40) = v182;
        *(v186 + 48) = v183;
        sub_10001208C(v179, v180, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v180) = (*(v185 + 48))(v180, 1, v184);
        v188 = v181;
        v189 = *(v0 + 1040);
        if (v180 == 1)
        {
          sub_100011F00(*(v0 + 1040), &qword_100229350, &unk_1001D6BA0);
          v190 = 0;
          v191 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v185 + 8))(v189, v184);
          if (*v187)
          {
            v250 = *(v186 + 24);
            v251 = *v187;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v190 = sub_1001D1A70();
            v191 = v252;
            swift_unknownObjectRelease();
          }

          else
          {
            v190 = 0;
            v191 = 0;
          }
        }

        v311 = **(v0 + 904);
        v312 = swift_allocObject();
        *(v312 + 16) = &unk_1001E1F90;
        *(v312 + 24) = v186;

        if (v191 | v190)
        {
          v313 = v0 + 208;
          *(v0 + 208) = 0;
          *(v0 + 216) = 0;
          *(v0 + 224) = v190;
          *(v0 + 232) = v191;
        }

        else
        {
          v313 = 0;
        }

        v301 = *(v0 + 1048);
        *(v0 + 856) = 1;
        *(v0 + 864) = v313;
        *(v0 + 872) = v311;
        goto LABEL_130;
      case 0xBu:
        v34 = *(v0 + 1160);
        v35 = *(v0 + 1152);
        v36 = *(v0 + 912);
        v37 = sub_1001D1BA0();
        v38 = *(v37 - 8);
        (*(v38 + 56))(v34, 1, 1, v37);
        v39 = swift_allocObject();
        v39[2] = 0;
        v40 = v39 + 2;
        v39[3] = 0;
        v39[4] = v36;
        sub_10001208C(v34, v35, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v35) = (*(v38 + 48))(v35, 1, v37);
        v41 = v36;
        v42 = *(v0 + 1152);
        if (v35 == 1)
        {
          sub_100011F00(*(v0 + 1152), &qword_100229350, &unk_1001D6BA0);
          v43 = 0;
          v44 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v38 + 8))(v42, v37);
          if (*v40)
          {
            v205 = v39[3];
            v206 = *v40;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v43 = sub_1001D1A70();
            v44 = v207;
            swift_unknownObjectRelease();
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }
        }

        v299 = **(v0 + 904);
        v300 = swift_allocObject();
        *(v300 + 16) = &unk_1001E2048;
        *(v300 + 24) = v39;

        if (v44 | v43)
        {
          *v16 = 0;
          *(v0 + 568) = 0;
          *(v0 + 576) = v43;
          *(v0 + 584) = v44;
        }

        else
        {
          v16 = 0;
        }

        v301 = *(v0 + 1160);
        *(v0 + 616) = 1;
        *(v0 + 624) = v16;
        *(v0 + 632) = v299;
        goto LABEL_130;
      case 0xCu:
        v65 = *(v0 + 1064);
        v66 = *(v0 + 1056);
        v67 = *(v0 + 912);
        v68 = sub_1001D1BA0();
        v69 = *(v68 - 8);
        (*(v69 + 56))(v65, 1, 1, v68);
        v70 = swift_allocObject();
        v70[2] = 0;
        v71 = v70 + 2;
        v70[3] = 0;
        v70[4] = v67;
        sub_10001208C(v65, v66, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v66) = (*(v69 + 48))(v66, 1, v68);
        v72 = v67;
        v73 = *(v0 + 1056);
        if (v66 == 1)
        {
          sub_100011F00(*(v0 + 1056), &qword_100229350, &unk_1001D6BA0);
          v74 = 0;
          v75 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v69 + 8))(v73, v68);
          if (*v71)
          {
            v213 = v70[3];
            v214 = *v71;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v74 = sub_1001D1A70();
            v75 = v215;
            swift_unknownObjectRelease();
          }

          else
          {
            v74 = 0;
            v75 = 0;
          }
        }

        v302 = **(v0 + 904);
        v303 = swift_allocObject();
        *(v303 + 16) = &unk_1001E1FB0;
        *(v303 + 24) = v70;

        if (v75 | v74)
        {
          *v12 = 0;
          *(v0 + 280) = 0;
          *(v0 + 288) = v74;
          *(v0 + 296) = v75;
        }

        else
        {
          v12 = 0;
        }

        v301 = *(v0 + 1064);
        *(v0 + 808) = 1;
        *(v0 + 816) = v12;
        *(v0 + 824) = v302;
LABEL_130:
        swift_task_create();

        sub_100011F00(v301, &qword_100229350, &unk_1001D6BA0);
        break;
      default:
        v17 = *(v0 + 1368);
        v18 = *(v0 + 1344);
        v19 = *(v0 + 1336);
        v368 = *(v0 + 1320);
        v20 = *(v0 + 1312);
        v397 = *(v0 + 1304);
        v376 = *(v0 + 1328);
        v381 = *(v0 + 1264);
        v21 = *(v0 + 1256);
        v22 = *(v0 + 1248);
        v23 = *(v0 + 1240);
        v354 = v19;
        v386 = *(v0 + 912);
        v390 = *(v0 + 1232);
        v24 = *(sub_100011AC0(&unk_1002301C0, &qword_1001E1B70) + 48);
        sub_1001CBCB0(v17, v18, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v363 = *(v21 + 32);
        v363(v20, v17 + v24, v22);
        v25 = sub_1001D1BA0();
        v26 = *(v25 - 8);
        (*(v26 + 56))(v23, 1, 1, v25);
        sub_1001CC144(v18, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v27 = v22;
        (*(v21 + 16))(v397, v20, v22);
        v28 = (*(v368 + 80) + 40) & ~*(v368 + 80);
        v29 = (v376 + *(v21 + 80) + v28) & ~*(v21 + 80);
        v30 = swift_allocObject();
        v30[2] = 0;
        v31 = v30 + 2;
        v30[3] = 0;
        v30[4] = v386;
        sub_1001CBCB0(v354, v30 + v28, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v363(v30 + v29, v397, v27);
        sub_10001208C(v23, v390, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v29) = (*(v26 + 48))(v390, 1, v25);
        v32 = v386;
        v33 = *(v0 + 1232);
        if (v29 == 1)
        {
          sub_100011F00(*(v0 + 1232), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v26 + 8))(v33, v25);
        }

        if (*v31)
        {
          v230 = v30[3];
          v231 = *v31;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v232 = sub_1001D1A70();
          v234 = v233;
          swift_unknownObjectRelease();
        }

        else
        {
          v232 = 0;
          v234 = 0;
        }

        v274 = **(v0 + 904);
        v275 = swift_allocObject();
        *(v275 + 16) = &unk_1001E20D0;
        *(v275 + 24) = v30;

        if (v234 | v232)
        {
          v276 = v0 + 240;
          *(v0 + 240) = 0;
          *(v0 + 248) = 0;
          *(v0 + 256) = v232;
          *(v0 + 264) = v234;
        }

        else
        {
          v276 = 0;
        }

        v279 = *(v0 + 1344);
        v280 = *(v0 + 1312);
        v281 = *(v0 + 1256);
        v282 = *(v0 + 1248);
        v283 = *(v0 + 1240);
        *(v0 + 880) = 1;
        *(v0 + 888) = v276;
        *(v0 + 896) = v274;
        swift_task_create();

        sub_100011F00(v283, &qword_100229350, &unk_1001D6BA0);
        (*(v281 + 8))(v280, v282);
        sub_1001CC0E4(v279, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        break;
    }

    v316 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v317 = swift_task_alloc();
    *(v0 + 1408) = v317;
    *v317 = v0;
    v317[1] = sub_1001BF714;
    v318 = *(v0 + 1400);
    v319 = *(v0 + 1384);
    v320 = *(v0 + 1376);

    return AsyncStream.Iterator.next(isolation:)(v320, 0, 0, v319);
  }
}

uint64_t sub_1001C2040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1001C2064, 0, 0);
}

uint64_t sub_1001C2064()
{
  v0[5] = os_transaction_create();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1001C210C;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_1001C2268(v3, v2);
}

uint64_t sub_1001C210C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_1001C2208, 0, 0);
}

uint64_t sub_1001C2208()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C2268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001C228C, 0, 0);
}

uint64_t sub_1001C228C()
{
  v1 = v0[2];
  if (*(v1 + 8) == 1)
  {
    v2 = *(v0[4] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
    v0[5] = v2;
    if (v2)
    {
      v0[6] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

      v3 = sub_1001D0E50();
      v4 = sub_1001D1E00();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "creating a prefetch request as response to expired attestations", v5, 2u);
      }

      v7 = v0[3];
      v6 = v0[4];

      v8 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
      v9 = swift_task_alloc();
      v0[7] = v9;
      v9[2] = v2;
      v9[3] = v6;
      v9[4] = v7;
      v10 = swift_task_alloc();
      v0[8] = v10;
      *v10 = v0;
      v10[1] = sub_1001C254C;
      v11 = v0[3];

      return sub_1000732FC(sub_1000732FC, v11, &unk_1001E20F0, v9);
    }

    goto LABEL_14;
  }

  v13 = *v1;
  v0[10] = v13;
  v14 = v13[2];
  v0[11] = v14;
  if (!v14)
  {
LABEL_14:
    v18 = v0[1];

    return v18();
  }

  v15 = *(v0[4] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[12] = v15;
  if (!v15)
  {
    v0[13] = v14 - 1;
    goto LABEL_14;
  }

  v0[13] = 0;
  v0[14] = v13[5];
  v0[15] = v13[4];
  type metadata accessor for AttestationStore();
  sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore);

  v17 = sub_1001D1A70();

  return _swift_task_switch(sub_1001C26C8, v17, v16);
}

uint64_t sub_1001C254C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1001C2880;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1001C2668;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C2668()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C26C8()
{
  v1 = v0[12];
  sub_1000311C8(v0[15], v0[14]);

  return _swift_task_switch(sub_1001C2740, 0, 0);
}

uint64_t sub_1001C2740()
{
  v1 = v0[11];
  v2 = v0[13];
  v3 = 16 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    v0[13] = i;
    v3 += 16;
    if (v0[12])
    {
      v5 = v0[10] + v3;
      v0[14] = *(v5 + 40);
      v0[15] = *(v5 + 32);
      type metadata accessor for AttestationStore();
      sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore);

      v7 = sub_1001D1A70();

      return _swift_task_switch(sub_1001C26C8, v7, v6);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001C2880()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  swift_errorRetain();
  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed prefetch request as response to expired attestations. error: %@", v10, 0xCu);
    sub_100011F00(v11, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001C29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a3;
  v8 = sub_1001CFD60();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2ABC, 0, 0);
}

uint64_t sub_1001C2ABC()
{
  v1 = v0[24];
  v2 = *(v0[17] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter);
  v0[25] = v2;
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1001C2B38, v2, 0);
}

uint64_t sub_1001C2B38()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  sub_1001B44B8(*(v0 + 144), *(v0 + 152), *(v0 + 160), (v0 + 56));
  (*(v4 + 8))(v1, v3);
  v5 = *(v0 + 64);
  if (v5)
  {
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 24) = v5;
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_1001C2C84;
    v7 = *(v0 + 168);

    return sub_1001B1C04(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 192);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1001C2C84()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;

  *(v1 + 112) = *(v1 + 16);
  sub_1001CC090(v1 + 112);
  *(v1 + 128) = *(v1 + 32);
  sub_100011F00(v1 + 128, &unk_1002301E0, &unk_1001E2110);
  *(v1 + 96) = *(v1 + 40);
  sub_100011F00(v1 + 96, &qword_100228AA8, &qword_1001D5BC0);
  v4 = *(v1 + 192);

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1001C2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a3;
  v8 = sub_1001CFD60();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2EB4, 0, 0);
}

uint64_t sub_1001C2EB4()
{
  v1 = v0[17];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter);
  v3 = v0[24];
  v0[25] = v2;
  v0[26] = *(*(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1001C2F60, v2, 0);
}

uint64_t sub_1001C2F60()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_1001B4D6C(v2, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 208), (v0 + 56));

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 64);
  if (v5)
  {
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 24) = v5;
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_1001C30C0;
    v7 = *(v0 + 168);

    return sub_1001B2454(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 192);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1001C30C0()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;

  *(v1 + 112) = *(v1 + 16);
  sub_1001CC090(v1 + 112);
  *(v1 + 128) = *(v1 + 32);
  sub_100011F00(v1 + 128, &qword_100230238, &qword_1001E2160);
  *(v1 + 96) = *(v1 + 40);
  sub_100011F00(v1 + 96, &qword_100228AA8, &qword_1001D5BC0);
  v4 = *(v1 + 192);

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1001C3228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001C3248, 0, 0);
}

uint64_t sub_1001C3248()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100024DC8(v1, v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1001C3300;
  v6 = v0[3];

  return sub_100020CA0(v4, v3, v2);
}

uint64_t sub_1001C3300()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001C33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v5 = sub_1001CFD60();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = *(*(sub_100011AC0(&qword_100227DF8, &qword_1001DD020) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for RateLimitConfiguration(0);
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3554, 0, 0);
}

uint64_t sub_1001C3554()
{
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 152) + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v0 + 240) = v4;
    *(v0 + 296) = *(v3 + 80);
    v5 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
    *(v0 + 248) = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
    *(v0 + 256) = v5;
    *(v0 + 264) = *(v3 + 72);
    *(v0 + 272) = 0;
    v6 = sub_1001C3628;
  }

  else
  {
    v7 = *(v0 + 184);
    v8 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v0 + 280) = v8;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v6 = sub_1001C3998;
    v4 = v8;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_1001C3628()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 152) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * *(v0 + 272);
  sub_1001CC144(v4, *(v0 + 224), type metadata accessor for RateLimitConfiguration);
  sub_1001CC144(v4, v3, type metadata accessor for RateLimitConfiguration);
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DC0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  if (v7)
  {
    v10 = *(v0 + 200);
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    v12 = *(v9 + *(v10 + 20));
    sub_1001CC0E4(v9, type metadata accessor for RateLimitConfiguration);
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    v13 = *(v8 + *(v10 + 20) + 8);
    sub_1001CC0E4(v8, type metadata accessor for RateLimitConfiguration);
    *(v11 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "rate limit discovered for rate with count=%lu, duration=%f", v11, 0x16u);
  }

  else
  {
    sub_1001CC0E4(*(v0 + 224), type metadata accessor for RateLimitConfiguration);

    sub_1001CC0E4(v8, type metadata accessor for RateLimitConfiguration);
  }

  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 152) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * *(v0 + 272);
  v17 = *(v0 + 240) + *(v0 + 256);
  swift_beginAccess();
  v18 = *v16;
  v19 = *(v16 + 16);
  v20 = *(v16 + 32);
  *(v0 + 64) = *(v16 + 48);
  *(v0 + 32) = v19;
  *(v0 + 48) = v20;
  *(v0 + 16) = v18;
  sub_1001CC144(v16 + *(v15 + 20), v14, type metadata accessor for RateLimitTimingDetails);
  v21 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v14, (v0 + 16));
  sub_1000E3E7C(v16);
  swift_endAccess();

  return _swift_task_switch(sub_1001C38EC, 0, 0);
}

uint64_t sub_1001C38EC()
{
  v1 = v0[34] + 1;
  if (v1 == v0[29])
  {
    v2 = v0[23];
    v3 = *(v0[20] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    v0[35] = v3;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v4 = sub_1001C3998;
    v5 = v3;
  }

  else
  {
    v0[34] = v1;
    v5 = v0[30];
    v4 = sub_1001C3628;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001C3998()
{
  v1 = v0[35];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  sub_1000EE40C(v2);
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_1001C3A5C;
  v6 = v0[35];

  return sub_1000ED278();
}

uint64_t sub_1001C3A5C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1001C3BE8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[3] = v1;
  if (v1)
  {
    type metadata accessor for AttestationStore();
    sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore);
    v3 = sub_1001D1A70();

    return _swift_task_switch(sub_1001C3CE4, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C3CE4()
{
  v1 = *(v0 + 24);
  sub_10002FC88();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v15;
  v8[11] = v16;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v9 = sub_1001D08A0();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3E44, 0, 0);
}

uint64_t sub_1001C3E44()
{
  v40 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  *(v0 + 128) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000954E0(v8, v7, &v39);
    *(v9 + 12) = 2080;
    v10 = sub_1001D1710();
    v12 = sub_1000954E0(v10, v11, &v39);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "running prewarmAttestations: %s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 32);
  *(v0 + 136) = os_transaction_create();
  v15 = sub_1001CF820();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1001CF810();
  *(v0 + 144) = v18;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v19 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  *(v0 + 152) = v19;
  if (v19)
  {
    v20 = *(v0 + 112);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);

    v37 = *(v0 + 64);
    v38 = *(v0 + 80);
    sub_1001D0880();
    v25 = *(v24 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
    v26 = swift_task_alloc();
    *(v0 + 160) = v26;
    *(v26 + 16) = v19;
    *(v26 + 24) = v24;
    *(v26 + 32) = v20;
    *(v26 + 40) = 1;
    *(v26 + 48) = 0;
    *(v26 + 56) = 1;
    *(v26 + 64) = v37;
    *(v26 + 80) = v38;
    *(v26 + 96) = v18;
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_1001C4224;
    v28 = *(v0 + 112);

    return sub_100072724(v0 + 16, v28, &unk_1001D6840, v26);
  }

  else
  {
    v30 = sub_1001D0E50();
    v31 = sub_1001D1E00();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "store unavailable", v32, 2u);
    }

    v33 = *(v0 + 136);
    v34 = *(v0 + 112);
    v35 = *(v0 + 120);
    swift_unknownObjectRelease();

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1001C4224()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1001C43F8;
  }

  else
  {
    v5 = v2[20];
    sub_10002683C(v2[2], v2[3]);

    v4 = sub_1001C434C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C434C()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  (*(v4 + 8))(v3, v5);
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C43F8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[4];

  (*(v5 + 8))(v4, v6);
  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed prefetch attestations: %@", v14, 0xCu);
    sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
    v17 = v0[18];
  }

  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[15];
  swift_unknownObjectRelease();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001C45D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_1001D08A0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001C46BC, 0, 0);
}

uint64_t sub_1001C46BC()
{
  v1 = v0[4];
  v0[10] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running prefetchAttestationsForNewWorkload", v4, 2u);
  }

  v5 = v0[9];
  v7 = v0[4];
  v6 = v0[5];

  v0[11] = os_transaction_create();
  sub_1001D0890();
  sub_1001D0870();
  v8 = sub_1001CF820();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_1001CF810();
  v0[12] = v11;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v12 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[13] = v12;
  if (v12)
  {
    v13 = v0[8];
    v14 = v0[4];

    sub_1001D0880();
    v15 = *(v14 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    *(v16 + 32) = v13;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = v11;
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_1001C49E0;
    v18 = v0[8];

    return sub_100072724((v0 + 2), v18, &unk_1001E2190, v16);
  }

  else
  {

    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "store unavailable", v22, 2u);
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    swift_unknownObjectRelease();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1001C49E0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1001C4BB0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1001C4AFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C4AFC()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_10002683C(v0[2], v0[3]);
  (*(v4 + 8))(v3, v5);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C4BB0()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[4];

  (*(v5 + 8))(v4, v6);
  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed prefetch attestations: %@", v14, 0xCu);
    sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
    v17 = v0[12];
  }

  v18 = v0[11];
  v19 = v0[8];
  v20 = v0[9];
  swift_unknownObjectRelease();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001C4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = sub_1001D08A0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C4E78, 0, 0);
}

uint64_t sub_1001C4E78()
{
  v1 = v0[4];
  v0[11] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running discardUsedAttestationsAndPrefetchBatch", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[12] = v6;
  if (v6)
  {

    v0[13] = os_transaction_create();
    type metadata accessor for AttestationStore();
    sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore);
    v8 = sub_1001D1A70();

    return _swift_task_switch(sub_1001C50A4, v8, v7);
  }

  else
  {
    v9 = sub_1001D0E50();
    v10 = sub_1001D1DE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to prefetch attestations as store is not initialized", v11, 2u);
    }

    v13 = v0[9];
    v12 = v0[10];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1001C50A4()
{
  v1 = v0[12];
  v0[14] = sub_100035FCC(v0[5]);

  return _swift_task_switch(sub_1001C5114, 0, 0);
}

uint64_t sub_1001C5114()
{
  v15 = v0[14];
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];
  sub_1001D0890();
  sub_1001D0870();
  v6 = sub_1001CF820();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1001CF810();
  v0[15] = v9;
  sub_1001CF7C0();
  sub_1001CF7F0();

  sub_1001D0880();
  v10 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker);
  v11 = swift_task_alloc();
  v0[16] = v11;
  *(v11 + 16) = v1;
  *(v11 + 24) = v5;
  *(v11 + 32) = v2;
  *(v11 + 40) = 0;
  *(v11 + 48) = v15;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = v9;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1001C52B8;
  v13 = v0[9];

  return sub_100072724((v0 + 2), v13, &unk_1001E2198, v11);
}

uint64_t sub_1001C52B8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1001C5490;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1001C53D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001C53D4()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_10002683C(v0[2], v0[3]);
  (*(v4 + 8))(v3, v5);
  v7 = v0[12];
  v6 = v0[13];
  swift_unknownObjectRelease();

  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C5490()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[4];

  (*(v5 + 8))(v4, v6);
  swift_errorRetain();
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed prefetch attestations: %@", v14, 0xCu);
    sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
    v17 = v0[15];
  }

  v19 = v0[12];
  v18 = v0[13];
  swift_unknownObjectRelease();

  v21 = v0[9];
  v20 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001C5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1001C5694, 0, 0);
}

uint64_t sub_1001C5694()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionAnalyzer);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1001CC600;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);

  return sub_1001B36A8(v3, v4);
}

uint64_t sub_1001C5750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001C5770, 0, 0);
}

uint64_t sub_1001C5770()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_tapToRadarController);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1001C579C, v1, 0);
}

uint64_t sub_1001C579C()
{
  v1 = *(v0 + 32);
  sub_1001BA5A8(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001C57FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_100108D70();
}

uint64_t sub_1001C588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = sub_1001CFD60();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5950, 0, 0);
}

uint64_t sub_1001C5950()
{
  v1 = v0[7];
  v2 = *(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzer);
  sub_1001CFD50();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1001C5A14;
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];

  return sub_1001B0DDC(v6, v5, v4);
}

uint64_t sub_1001C5A14()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1001C5B6C(_BYTE *a1, void *a2)
{
  *a1;
  v3 = sub_1001D17A0();

  v4 = [a2 valueForEntitlement:v3];

  if (v4)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100011F00(v9, &unk_1002300E0, &qword_1001E1140);
  }

  return 0;
}

void sub_1001C5CFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1001C5DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[75] = a4;
  v4[74] = a3;
  v4[73] = a2;
  v5 = sub_1001D02F0();
  v4[76] = v5;
  v6 = *(v5 - 8);
  v4[77] = v6;
  v7 = *(v6 + 64) + 15;
  v4[78] = swift_task_alloc();
  v8 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v4[79] = swift_task_alloc();
  v9 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v4[80] = v9;
  v10 = *(v9 - 8);
  v4[81] = v10;
  v11 = *(v10 + 64) + 15;
  v4[82] = swift_task_alloc();
  v12 = sub_1001D08A0();
  v4[83] = v12;
  v13 = *(v12 - 8);
  v4[84] = v13;
  v14 = *(v13 + 64) + 15;
  v4[85] = swift_task_alloc();
  v15 = *(*(sub_100011AC0(&qword_100229520, &unk_1001DEF70) - 8) + 64) + 15;
  v4[86] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5FA8, 0, 0);
}

uint64_t sub_1001C5FA8()
{
  v52 = *(v0 + 688);
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v53 = v2;
  v3 = *(v0 + 664);
  v55 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v45 = *(v0 + 624);
  v6 = *(v0 + 616);
  v43 = *(v0 + 632);
  v44 = *(v0 + 608);
  v47 = v5;
  v48 = *(v0 + 600);
  v7 = *(v0 + 592);
  v51 = *(v0 + 584);
  v42 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  sub_10001208C(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v52, &qword_100229520, &unk_1001DEF70);
  v8 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  v9 = sub_1001D05B0();
  *(v0 + 568) = v9;
  *(v0 + 576) = &protocol witness table for DefaultConfiguration;
  v54 = sub_10003B47C((v0 + 544));
  (*(*(v9 - 8) + 16))(v54, v7 + v8, v9);
  v46 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v10 = (v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v12 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  v11 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  *(v0 + 16) = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 32) = v12;
  *(v0 + 48) = v11;
  v13 = v10[6];
  v15 = v10[3];
  v14 = v10[4];
  *(v0 + 96) = v10[5];
  *(v0 + 112) = v13;
  *(v0 + 64) = v15;
  *(v0 + 80) = v14;
  v16 = v10[10];
  v18 = v10[7];
  v17 = v10[8];
  *(v0 + 160) = v10[9];
  *(v0 + 176) = v16;
  *(v0 + 128) = v18;
  *(v0 + 144) = v17;
  v50 = *(v2 + 16);
  v50(v1, v48, v3);
  v49 = *(v4 + 16);
  v49(v55, v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v5);
  v19 = sub_100011AC0(&qword_100229528, &qword_1001E2100);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v0 + 696) = v22;
  v23 = sub_1001CF820();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  sub_1000884D8(v0 + 16, v0 + 192);
  v26 = sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  *(v22 + 2) = v26;
  (*(v6 + 104))(v45, enum case for TC2LogCategory.prefetchRequest(_:), v44);
  sub_1001D08B0();
  (*(v6 + 8))(v45, v44);
  v27 = &v22[*(*v22 + 320)];
  sub_1001CFD90();
  *&v22[*(*v22 + 216)] = v51;
  *&v22[*(*v22 + 224)] = v42;
  sub_10001208C(v52, &v22[*(*v22 + 232)], &qword_100229520, &unk_1001DEF70);
  sub_100044698(v0 + 544, &v22[*(*v22 + 240)]);
  *&v22[*(*v22 + 248)] = v46;
  v28 = &v22[*(*v22 + 256)];
  v29 = *(v0 + 32);
  *v28 = *(v0 + 16);
  *(v28 + 1) = v29;
  v30 = *(v0 + 96);
  *(v28 + 4) = *(v0 + 80);
  *(v28 + 5) = v30;
  v31 = *(v0 + 64);
  *(v28 + 2) = *(v0 + 48);
  *(v28 + 3) = v31;
  v32 = *(v0 + 176);
  *(v28 + 9) = *(v0 + 160);
  *(v28 + 10) = v32;
  v33 = *(v0 + 144);
  *(v28 + 7) = *(v0 + 128);
  *(v28 + 8) = v33;
  *(v28 + 6) = *(v0 + 112);
  v50(&v22[*(*v22 + 272)], v1, v3);
  v49(&v22[*(*v22 + 280)], v55, v47);
  v22[*(*v22 + 288)] = 0;
  v34 = &v22[*(*v22 + 296)];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v22[*(*v22 + 304)];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v22[*(*v22 + 312)];
  *v36 = 0;
  v36[8] = 1;
  sub_1000884D8(v0 + 16, v0 + 368);

  LOBYTE(v26) = sub_100088818(v54, v0 + 16, v46);
  sub_100088D84(v0 + 16);
  (*(v4 + 8))(v55, v47);
  (*(v53 + 8))(v1, v3);
  sub_100011F00(v52, &qword_100229520, &unk_1001DEF70);
  sub_100011CF0((v0 + 544));
  v22[*(*v22 + 328)] = v26 & 1;
  *(v0 + 704) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v37 = sub_1001D0E50();
  v38 = sub_1001D1E00();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "firing prefetch request as response to expired attestations", v39, 2u);
  }

  v40 = swift_task_alloc();
  *(v0 + 712) = v40;
  *v40 = v0;
  v40[1] = sub_1001C65D8;

  return sub_10006ADEC();
}

uint64_t sub_1001C65D8()
{
  v2 = *(*v1 + 712);
  v5 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v3 = sub_1001C6820;
  }

  else
  {

    v3 = sub_1001C66F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C66F8()
{
  v1 = v0[74] + v0[88];
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "succeeded prefetch request as response to expired attestations", v4, 2u);
  }

  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[85];
  v8 = v0[82];
  v9 = v0[79];
  v10 = v0[78];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001C6820()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[82];
  v5 = v0[79];
  v6 = v0[78];

  v7 = v0[1];
  v8 = v0[90];

  return v7();
}

uint64_t sub_1001C6BA8()
{
  v1 = *(*(sub_100011AC0(&unk_100230170, &unk_1001E0D90) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v0[3] = sub_1001D1B20();
  v0[4] = sub_1001D1B10();
  v0[5] = sub_1001D1B10();
  v3 = sub_1001D1A70();
  v0[6] = v3;
  v0[7] = v2;

  return _swift_task_switch(sub_1001C6C84, v3, v2);
}

uint64_t sub_1001C6C84()
{
  v1 = v0[2];
  sub_1001C9BE8();
  v2 = sub_1001CFB10();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = objc_allocWithZone(type metadata accessor for TC2Daemon());
  v0[8] = sub_1001BC5D8(v1);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1001C6D94;

  return sub_1001BB750();
}

uint64_t sub_1001C6D94()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1001C6EB4, v4, v3);
}

uint64_t sub_1001C6EB4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);

  v5 = sub_1001D1A70();

  return _swift_task_switch(sub_1001C6F4C, v5, v4);
}

void sub_1001C6F4C()
{
  v1 = *(v0 + 32);

  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1001C6FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC604;

  return sub_1001C6BA8();
}

uint64_t type metadata accessor for TC2Daemon()
{
  result = qword_100230088;
  if (!qword_100230088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C70CC()
{
  v0 = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_1001D05B0();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1001C72E0();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1001C7338(319, &unk_1002300A0, &type metadata accessor for AsyncStream);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1001C7338(319, &qword_100227C88, &type metadata accessor for AsyncStream.Continuation);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1001C72E0()
{
  if (!qword_100230098)
  {
    v0 = type metadata accessor for AttestationVerifier();
    if (!v1)
    {
      atomic_store(v0, &qword_100230098);
    }
  }
}

void sub_1001C7338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ThimbledEvent();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_1001C7398()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&unk_1002300B0, &qword_1001E1EB8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1001C73C8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000593F8;

  return v5();
}

void *sub_1001C74B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_1001D1920();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100009388(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100009388((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1001D1900();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1001D18A0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1001D18A0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1001D1920();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100009388(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1001D1920();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100009388(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100009388((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1001D18A0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C7870(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100011E48(v6, v5);
      *v20 = v6;
      *&v20[8] = v5;
      v20[10] = BYTE2(v5);
      v20[11] = BYTE3(v5);
      v20[12] = BYTE4(v5);
      v20[13] = BYTE5(v5);
      v20[14] = BYTE6(v5);
      result = sub_1001CF138(v20, a2, &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = *&v20[8] | ((*&v20[12] | (v20[14] << 16)) << 32);
      *a1 = *v20;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100011E48(v6, v5);
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1001CF870() && __OFSUB__(v6, sub_1001CF8A0()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = sub_1001CF8C0();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1001CF850();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_1001C7BE0(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_100011E48(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v6 = v21;
    result = sub_1001C7BE0(*(v21 + 16), *(v21 + 24), v22, a2);
    v11 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  memset(v20, 0, 15);
  result = sub_1001CF138(v20, a2, &v21);
  if (!v2)
  {
    return v21;
  }

  return result;
}

uint64_t sub_1001C7BE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1001CF870();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1001CF8A0();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1001CF890();
  result = sub_1001CF138((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_1001C7C8C(int *a1, int a2)
{
  sub_1001CFB40();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_1001CF870();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_1001CF8A0();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_1001CF890();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_1001C7D34(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001D2470() & 1;
  }
}

uint64_t sub_1001C7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v25 = a4;
  v15 = sub_1001D02F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = sub_100011AC0(a6, a7);
  v28[4] = a8;
  v28[0] = a3;
  (*(v16 + 104))(v20, enum case for TC2LogCategory.scheduledTask(_:), v15);
  sub_1001D08B0();
  (*(v16 + 8))(v20, v15);
  *(a5 + 56) = a1;
  *(a5 + 64) = a2;
  sub_100044698(v28, a5 + 16);
  v26 = a1;
  v27 = a2;

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  sub_1001D18B0(v29);
  v21 = v26;
  v22 = v27;
  sub_100011CF0(v28);
  v23 = (a5 + qword_10022CBE8);
  *v23 = v21;
  v23[1] = v22;
  *(a5 + qword_10022CBF0) = v25;
  return a5;
}

uint64_t sub_1001C7F2C(uint64_t a1, char *a2, uint64_t a3)
{
  v76 = a2;
  v5 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 8);
  __chkstk_darwin(v5, v7);
  v69 = &v67 - v8;
  v9 = sub_1001CFA40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001CFB10();
  v16 = *(v15 - 8);
  v74 = v15;
  v75 = v16;
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v67 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v73 = &v67 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v67 - v25;
  v27 = sub_1001D02F0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001D05B0();
  v78[3] = v33;
  v78[4] = &protocol witness table for DefaultConfiguration;
  v68 = sub_10003B47C(v78);
  (*(*(v33 - 8) + 32))(v68, a1, v33);
  swift_defaultActor_initialize();
  v34 = sub_1001CF960();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(a3 + 112) = sub_1001CF950();
  v37 = sub_1001CF920();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(a3 + 120) = sub_1001CF910();
  (*(v28 + 104))(v32, enum case for TC2LogCategory.rateLimiter(_:), v27);
  sub_1001D08B0();
  (*(v28 + 8))(v32, v27);
  sub_100044698(v78, a3 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  *&v77[0] = 0xD000000000000017;
  *(&v77[0] + 1) = 0x80000001001E5130;
  (*(v10 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v9);
  sub_100011EAC();
  sub_1001CFB00();
  v40 = v14;
  v41 = v74;
  (*(v10 + 8))(v40, v9);
  v42 = *(v75 + 16);
  v42(a3 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_file, v26, v41);
  v43 = v69;
  sub_1001D0550();
  v44 = a3;
  v45 = v26;
  sub_1001D0210();
  (*(v70 + 1))(v43, v71);
  *(v44 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_rateLimitUnmatchedRequestStorageTimeout) = *&v77[0];
  v46 = sub_1001CFB30();
  v72 = v26;
  v47 = v46;
  v49 = v48;
  v70 = v42;
  v50 = v67;
  v51 = v41;
  v52 = *(v44 + 120);
  sub_1001CC564();

  v71 = v47;
  v73 = v49;
  sub_1001CF900();

  v53 = (v44 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  v54 = v77[1];
  *v53 = v77[0];
  v53[1] = v54;
  v70(v50, v45, v41);
  v55 = sub_1001D0E50();
  v56 = sub_1001D1DD0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v77[0] = v58;
    *v57 = 136315138;
    sub_1001CC51C(&qword_1002302F0, &type metadata accessor for URL);
    v59 = sub_1001D23A0();
    v60 = v44;
    v62 = v61;
    v63 = *(v75 + 8);
    v63(v50, v51);
    v64 = sub_1000954E0(v59, v62, v77);
    v44 = v60;

    *(v57 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v55, v56, "initialized ratelimiter, file=%s", v57, 0xCu);
    sub_100011CF0(v58);

    sub_100011E48(v71, v73);

    v63(v76, v51);
    v63(v72, v51);
  }

  else
  {
    sub_100011E48(v71, v73);

    v65 = *(v75 + 8);
    v65(v76, v41);
    v65(v50, v41);
    v65(v45, v41);
  }

  sub_100011CF0(v78);
  return v44;
}

uint64_t sub_1001C89E4(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = sub_1001D0760();
  v53 = *(v50 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v50, v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v45[1] = v3;
    v91 = &_swiftEmptyArrayStorage;
    sub_1001517B8(0, v9, 0);
    v11 = -1 << *(a1 + 32);
    v56 = a1 + 64;
    v57 = v91;
    result = sub_1001D1FB0();
    if (result < 0 || (v12 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v94 = *(a1 + 36);
      v48 = a1;
      v49 = v53 + 32;
      v46 = a1 + 72;
      v47 = v9;
      v13 = 1;
      while (1)
      {
        v14 = v12 >> 6;
        if ((*(v56 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          break;
        }

        if (v94 != *(a1 + 36))
        {
          goto LABEL_28;
        }

        v54 = v13;
        v55 = 1 << v12;
        v15 = *(a1 + 56);
        v16 = (*(a1 + 48) + 16 * v12);
        v17 = *v16;
        v18 = v16[1];
        v19 = (v15 + (v12 << 7));
        v20 = v19[3];
        v22 = *v19;
        v21 = v19[1];
        v66[2] = v19[2];
        v66[3] = v20;
        v66[0] = v22;
        v66[1] = v21;
        v24 = v19[5];
        v23 = v19[6];
        v25 = v19[4];
        *(v67 + 9) = *(v19 + 105);
        v66[5] = v24;
        v67[0] = v23;
        v66[4] = v25;
        v26 = *v19;
        v27 = v19[1];
        v28 = v19[3];
        v61 = v19[2];
        v62 = v28;
        v59 = v26;
        v60 = v27;
        v29 = v19[4];
        v30 = v19[5];
        v31 = v19[6];
        *(v65 + 9) = *(v19 + 105);
        v64 = v30;
        v65[0] = v31;
        v63 = v29;
        memmove(&v68, v19, 0x79uLL);
        v75[0] = v17;
        v75[1] = v18;
        v80 = v63;
        v81 = v64;
        v82[0] = v65[0];
        *(v82 + 9) = *(v65 + 9);
        v76 = v59;
        v77 = v60;
        v78 = v61;
        v79 = v62;
        swift_bridgeObjectRetain_n();
        sub_10001208C(v66, v58, &qword_100230150, &unk_1001D3700);
        sub_10001208C(&v68, v58, &qword_100230150, &unk_1001D3700);
        sub_100011F00(v75, &qword_100230158, &qword_1001E1F28);
        v88 = v72;
        v89 = v73;
        v90[0] = v74[0];
        *(v90 + 9) = *(v74 + 9);
        v84 = v68;
        v85 = v69;
        v86 = v70;
        v87 = v71;
        v92[2] = v70;
        v92[3] = v71;
        v92[0] = v68;
        v92[1] = v69;
        *&v93[9] = *(v74 + 9);
        v92[5] = v73;
        *v93 = v74[0];
        v83[0] = v17;
        v83[1] = v18;
        v92[4] = v72;
        v51(v17, v18, v92);
        sub_100011F00(v83, &qword_100230158, &qword_1001E1F28);
        v32 = v57;
        v91 = v57;
        v34 = v57[2];
        v33 = v57[3];
        if (v34 >= v33 >> 1)
        {
          sub_1001517B8(v33 > 1, v34 + 1, 1);
          v32 = v91;
        }

        v32[2] = v34 + 1;
        v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v57 = v32;
        result = (*(v53 + 32))(v32 + v35 + *(v53 + 72) * v34, v8, v50);
        a1 = v48;
        v36 = 1 << *(v48 + 32);
        if (v12 >= v36)
        {
          goto LABEL_29;
        }

        v37 = *(v56 + 8 * v14);
        if ((v37 & v55) == 0)
        {
          goto LABEL_30;
        }

        if (v94 != *(v48 + 36))
        {
          goto LABEL_31;
        }

        v38 = v37 & (-2 << (v12 & 0x3F));
        if (v38)
        {
          v12 = __clz(__rbit64(v38)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = v8;
          v40 = v14 << 6;
          v41 = v14 + 1;
          v42 = (v46 + 8 * v14);
          while (v41 < (v36 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              result = sub_10001202C(v12, v94, 0);
              v12 = __clz(__rbit64(v43)) + v40;
              goto LABEL_19;
            }
          }

          result = sub_10001202C(v12, v94, 0);
          v12 = v36;
LABEL_19:
          v8 = v39;
        }

        if (v54 == v47)
        {
          return v57;
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = v54 + 1;
          if (v12 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C8E94(uint64_t a1)
{
  v2 = sub_1001CFEE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v83 = &v69 - v11;
  __chkstk_darwin(v10, v12);
  v72 = &v69 - v13;
  v14 = sub_100011AC0(&unk_100230210, &unk_1001E2138);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v76 = &v69 - v21;
  v22 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v23 = *(a1 + 64);
  v70 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v79 = v3;
  v80 = (v3 + 16);
  v82 = (v3 + 32);
  v73 = a1;
  v74 = v3 + 8;
  v71 = v3 + 40;

  v28 = 0;
  v78 = v19;
  v75 = v8;
  while (v26)
  {
    v30 = v28;
LABEL_15:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v72;
    v36 = *(*(v73 + 48) + v34);
    v37 = v79;
    (*(v79 + 16))(v72, *(v73 + 56) + *(v79 + 72) * v34, v2);
    v38 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
    v39 = *(v38 + 48);
    v40 = v78;
    *v78 = v36;
    v19 = v40;
    (*(v37 + 32))(&v40[v39], v35, v2);
    (*(*(v38 - 8) + 56))(v19, 0, 1, v38);
    v32 = v30;
LABEL_16:
    v41 = v76;
    sub_1000DBEF4(v19, v76, &unk_100230210, &unk_1001E2138);
    v42 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      return v22;
    }

    v43 = *(v42 + 48);
    v44 = *v41;
    v45 = *v82;
    (*v82)(v83, &v41[v43], v2);
    v81 = v32;
    v77 = v45;
    if (v44 <= 1)
    {
      v50 = v44 == 0;
      if (v44)
      {
        v48 = 7761509;
      }

      else
      {
        v48 = 0x6D6974746E657665;
      }

      if (v50)
      {
        v49 = 0xE900000000000065;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v46 = v75;
    }

    else
    {
      v46 = v75;
      if (v44 == 2)
      {
        v48 = 0x6572746E65696C63;
        v49 = 0xEF64697473657571;
      }

      else
      {
        v47 = v44 == 3;
        if (v44 == 3)
        {
          v48 = 0x696C63656C707061;
        }

        else
        {
          v48 = 0x636F6C656C707061;
        }

        if (v47)
        {
          v49 = 0xEF6F666E69746E65;
        }

        else
        {
          v49 = 0xEB00000000656C61;
        }
      }
    }

    v51 = v46;
    v52 = v2;
    (*v80)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v22;
    v55 = sub_100006028(v48, v49);
    v56 = v22[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_45;
    }

    v59 = v54;
    if (v22[3] >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F90C();
      }
    }

    else
    {
      sub_10000BFDC(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_100006028(v48, v49);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_47;
      }

      v55 = v60;
    }

    v2 = v52;
    if (v59)
    {

      v22 = v84;
      v29 = v79;
      (*(v79 + 40))(v84[7] + *(v79 + 72) * v55, v51, v52);
      (*(v29 + 8))(v83, v52);
    }

    else
    {
      v22 = v84;
      v84[(v55 >> 6) + 8] |= 1 << v55;
      v62 = (v22[6] + 16 * v55);
      *v62 = v48;
      v62[1] = v49;
      v63 = v79;
      v77(v22[7] + *(v79 + 72) * v55, v51, v52);
      (*(v63 + 8))(v83, v52);
      v64 = v22[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_46;
      }

      v22[2] = v66;
    }

    v28 = v81;
    v19 = v78;
  }

  if (v27 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v67 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
      (*(*(v67 - 8) + 56))(v19, 1, 1, v67);
      v26 = 0;
      goto LABEL_16;
    }

    v26 = *(v70 + 8 * v30);
    ++v28;
    if (v26)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1001C9514(uint64_t a1)
{
  v2 = sub_1001CFEE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v81 = &v67 - v10;
  __chkstk_darwin(v9, v11);
  v71 = &v67 - v12;
  v13 = sub_100011AC0(&qword_100230248, &qword_1001E2170);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v74 = &v67 - v20;
  v21 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v22 = *(a1 + 64);
  v69 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v77 = v3;
  v78 = (v3 + 16);
  v80 = (v3 + 32);
  v67 = 0x80000001001E24F0;
  v68 = 0x80000001001E2510;
  v72 = a1;
  v73 = v3 + 8;
  v70 = v3 + 40;

  v27 = 0;
  v76 = v18;
  while (v25)
  {
    v29 = v27;
LABEL_15:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v71;
    v35 = *(*(v72 + 48) + v33);
    v36 = v77;
    (*(v77 + 16))(v71, *(v72 + 56) + *(v77 + 72) * v33, v2);
    v37 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
    v38 = *(v37 + 48);
    v39 = v76;
    *v76 = v35;
    v18 = v39;
    (*(v36 + 32))(&v39[v38], v34, v2);
    (*(*(v37 - 8) + 56))(v18, 0, 1, v37);
    v31 = v29;
LABEL_16:
    v40 = v74;
    sub_1000DBEF4(v18, v74, &qword_100230248, &qword_1001E2170);
    v41 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {

      return v21;
    }

    v42 = *(v41 + 48);
    v43 = *v40;
    v44 = *v80;
    (*v80)(v81, &v40[v42], v2);
    v75 = v44;
    v45 = v31;
    if (v43 <= 2)
    {
      v48 = 7761509;
      if (v43 != 1)
      {
        v48 = 0x6552746E65696C63;
      }

      v49 = 0xE300000000000000;
      if (v43 != 1)
      {
        v49 = 0xEF64497473657571;
      }

      if (v43)
      {
        v46 = v48;
      }

      else
      {
        v46 = 0x6D6954746E657665;
      }

      if (v43)
      {
        v47 = v49;
      }

      else
      {
        v47 = 0xE900000000000065;
      }
    }

    else if (v43 > 4)
    {
      if (v43 == 5)
      {
        v46 = 0xD000000000000017;
        v47 = v67;
      }

      else
      {
        v46 = 0xD00000000000001FLL;
        v47 = v68;
      }
    }

    else
    {
      if (v43 == 3)
      {
        v46 = 0x696C43656C707061;
      }

      else
      {
        v46 = 0x636F4C656C707061;
      }

      if (v43 == 3)
      {
        v47 = 0xEF6F666E49746E65;
      }

      else
      {
        v47 = 0xEB00000000656C61;
      }
    }

    v51 = v2;
    (*v78)(v79, v81, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v21;
    v54 = sub_100006028(v46, v47);
    v55 = v21[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_52;
    }

    v58 = v53;
    if (v21[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v2 = v51;
        if (v53)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10000F90C();
        v2 = v51;
        if (v58)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10000BFDC(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_100006028(v46, v47);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_54;
      }

      v54 = v59;
      v2 = v51;
      if (v58)
      {
LABEL_4:

        v21 = v82;
        v28 = v77;
        (*(v77 + 40))(v82[7] + *(v77 + 72) * v54, v79, v2);
        (*(v28 + 8))(v81, v2);
        goto LABEL_5;
      }
    }

    v21 = v82;
    v82[(v54 >> 6) + 8] |= 1 << v54;
    v61 = (v21[6] + 16 * v54);
    *v61 = v46;
    v61[1] = v47;
    v62 = v77;
    v75(v21[7] + *(v77 + 72) * v54, v79, v2);
    (*(v62 + 8))(v81, v2);
    v63 = v21[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_53;
    }

    v21[2] = v65;
LABEL_5:
    v27 = v45;
    v18 = v76;
  }

  if (v26 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v26;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v50 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
      (*(*(v50 - 8) + 56))(v18, 1, 1, v50);
      v25 = 0;
      goto LABEL_16;
    }

    v25 = *(v69 + 8 * v29);
    ++v27;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1001C9BE8()
{
  sub_1001D1840();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = sub_1001CF8C0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = sub_1001CF880();
  sub_1001C7C8C(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  sub_1001C7870(&v7, 65537);
  v5 = v4;
  sub_100011E48(v7, v8);
  if (v5)
  {
  }

  else
  {
LABEL_6:
    result = sub_1001D2180();
    __break(1u);
  }

  return result;
}

id sub_1001C9D40(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v51 = a4;
  v6 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v58 = &v51 - v9;
  v10 = sub_1001D20F0();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10, v12);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v52 = *(v53 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v53, v15);
  v17 = &v51 - v16;
  v18 = sub_1001D02F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001D05B0();
  v61[3] = v24;
  v61[4] = &protocol witness table for DefaultConfiguration;
  sub_10003B47C(v61);
  (*(*(v24 - 8) + 32))();
  v60[3] = type metadata accessor for TC2Daemon();
  v60[4] = &off_1002230B0;
  v60[0] = a3;
  v55 = sub_100011AC0(&qword_1002300D0, &qword_1001E1EE8);
  v25 = objc_allocWithZone(v55);
  v26 = *((swift_isaMask & *v25) + 0x60);
  (*(v19 + 104))(v23, enum case for TC2LogCategory.daemon(_:), v18);
  sub_1001D08B0();
  (*(v19 + 8))(v23, v18);
  v27 = v25 + *((swift_isaMask & *v25) + 0x90);
  *v27 = 0;
  *(v27 + 1) = _swiftEmptyArrayStorage;
  sub_100044698(v60, v25 + *((swift_isaMask & *v25) + 0x68));
  v28 = v51;
  *(v25 + *((swift_isaMask & *v25) + 0x70)) = v51;
  sub_100044698(v61, v25 + *((swift_isaMask & *v25) + 0x78));
  v29 = (v25 + *((swift_isaMask & *v25) + 0x80));
  v30 = a2[9];
  v29[8] = a2[8];
  v29[9] = v30;
  v29[10] = a2[10];
  v31 = a2[5];
  v29[4] = a2[4];
  v29[5] = v31;
  v32 = a2[7];
  v29[6] = a2[6];
  v29[7] = v32;
  v33 = a2[1];
  *v29 = *a2;
  v29[1] = v33;
  v34 = a2[3];
  v29[2] = a2[2];
  v29[3] = v34;
  v35 = v28;
  sub_1001D0480();
  sub_1001D0210();
  (*(v52 + 8))(v17, v53);
  v36 = sub_1001D2630();
  v38 = v37;
  v39 = v54;
  sub_1001D20E0();
  v40 = sub_100011AC0(&qword_1002300D8, &qword_1001E1EF0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  v44 = *(*v43 + 112);
  v45 = sub_1001D20D0();
  v46 = *(*(v45 - 8) + 56);
  v46(v43 + v44, 1, 1, v45);
  (*(v56 + 32))(v43 + *(*v43 + 104), v39, v57);
  v47 = v58;
  v46(v58, 1, 1, v45);
  swift_beginAccess();
  sub_10001BAC8(v47, v43 + v44, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  v48 = (v43 + *(*v43 + 120));
  *v48 = v36;
  v48[1] = v38;
  *(v25 + *((swift_isaMask & *v25) + 0x88)) = v43;
  v59.receiver = v25;
  v59.super_class = v55;
  v49 = objc_msgSendSuper2(&v59, "init");
  sub_100011CF0(v60);
  sub_100011CF0(v61);
  return v49;
}

uint64_t sub_1001CA33C(void *a1)
{
  v2 = v1;
  v4 = sub_1001D05B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D0E50();
  v11 = sub_1001D1E00();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Thimble trying to connect: checking entitlements", v12, 2u);
  }

  LOBYTE(v44[0]) = 0;
  if (sub_1001C5B6C(v44, a1) & 1) != 0 || (LOBYTE(v44[0]) = 1, (sub_1001C5B6C(v44, a1)) || (LOBYTE(v44[0]) = 2, (sub_1001C5B6C(v44, a1)) || (LOBYTE(v44[0]) = 3, (sub_1001C5B6C(v44, a1)) || (LOBYTE(v44[0]) = 4, (sub_1001C5B6C(v44, a1)) || (LOBYTE(v44[0]) = 5, (sub_1001C5B6C(v44, a1)))
  {
    isa = sub_1001D0740().super.isa;
    [a1 setExportedInterface:isa];

    v14 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144];
    v44[8] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 128];
    v44[9] = v14;
    v44[10] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 160];
    v15 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 80];
    v44[4] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 64];
    v44[5] = v15;
    v16 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 112];
    v44[6] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 96];
    v44[7] = v16;
    v17 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16];
    v44[0] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo];
    v44[1] = v17;
    v18 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 48];
    v44[2] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32];
    v44[3] = v18;
    (*(v5 + 16))(v9, &v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config], v4);
    sub_1000884D8(v44, &v38);
    v19 = a1;
    v20 = sub_1001C9D40(v9, v44, v2, v19);

    [v19 setExportedObject:v20];
    [v19 resume];
    v21 = sub_1001D0E50();
    v22 = sub_1001D1E00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Resumed", v23, 2u);
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_1001CA8F0;
    v43 = v24;
    v38 = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100014EBC;
    v41 = &unk_100223158;
    v25 = _Block_copy(&v38);
    v26 = v20;

    [v19 setInvalidationHandler:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v42 = sub_1001CA938;
    v43 = v27;
    v38 = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100014EBC;
    v41 = &unk_100223180;
    v28 = _Block_copy(&v38);

    [v19 setInterruptionHandler:v28];

    _Block_release(v28);
    return 1;
  }

  else
  {
    v30 = sub_1001D0E50();
    v31 = sub_1001D1E00();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v44[0] = v33;
      *v32 = 136315138;
      v34 = sub_1001D19E0();
      v36 = sub_1000954E0(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Rejecting connection because it doesn't have any of the required entitlements: %s", v32, 0xCu);
      sub_100011CF0(v33);
    }

    return 0;
  }
}

uint64_t sub_1001CA8B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CA920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CA970()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CA9B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10005B61C;

  return sub_1001BF144(a1, a2, v7, v6);
}

uint64_t sub_1001CAA64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001CAAAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C588C(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CAB68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005B61C;

  return sub_1001C73C8(v2);
}

uint64_t sub_1001CAC18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_1001C57FC();
}

uint64_t sub_1001CACC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001CAD28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_1001C5750(v2, v3, v4, (v0 + 5));
}

uint64_t sub_1001CADD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001CAE1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C5670(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CAED8()
{
  v1 = sub_1001CFDA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1001CB030()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1001D08A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10005B61C;

  return sub_1001C4D88(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1001CB178()
{
  v1 = sub_1001D08A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001CB244()
{
  v2 = *(sub_1001D08A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C45D0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1001CB330()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001CB390()
{
  v2 = v0[3];
  v13 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[11];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10005B61C;

  return sub_1001C3D44(v13, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CB47C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CB4BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_1001C3BC8(v2, v3, v4);
}

uint64_t sub_1001CB564()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CB5B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005B61C;

  return sub_1001C33F4(v2, v3, v5, v4);
}

uint64_t sub_1001CB660()
{
  v1 = (type metadata accessor for MetricReporter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100011CF0((v0 + 32));
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_1001D0E60();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001CB758()
{
  v2 = *(type metadata accessor for MetricReporter() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005B61C;

  return sub_1001C3228(v4, v5, v0 + 32, v0 + v3);
}

uint64_t sub_1001CB83C()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for MetricReporter() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 1);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10005B61C;

  return sub_1001C2DEC(v7, v8, v9, v0 + v3, v11, v12, v0 + v6);
}

uint64_t sub_1001CB9A8()
{
  v1 = sub_1001CFDA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for MetricReporter() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  v13 = *(v0 + v8 + 8);

  v14 = v6[7];
  v15 = sub_1001D0E60();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1001CBB44()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for MetricReporter() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 1);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10005B61C;

  return sub_1001C29F4(v7, v8, v9, v0 + v3, v11, v12, v0 + v6);
}

uint64_t sub_1001CBCB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CBD18()
{
  v1 = (type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1001D08A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  v12 = (v0 + v3);
  v13 = *v12;

  v14 = v1[8];
  v15 = sub_1001D0940();
  (*(*(v15 - 8) + 8))(&v12[v14], v15);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1001CBE94()
{
  v2 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1001D08A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10005B61C;

  return sub_1001C2040(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1001CBFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001C5DB8(a1, v4, v5, v6);
}

uint64_t sub_1001CC0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC1AC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000130E0;

  return sub_100075AA4(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001CC2D8(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1001CC330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000130E0;

  return sub_1001B78F8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001CC3F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CC438()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1001CC51C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001CC564()
{
  result = qword_1002302F8;
  if (!qword_1002302F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002302F8);
  }

  return result;
}

int64_t sub_1001CC61C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v34 - v7;
  v9 = sub_1001CFB10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(v2 + qword_10022F7D8, v8, &unk_100230170, &unk_1001E0D90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100011F00(v8, &unk_100230170, &unk_1001E0D90);
  }

  (*(v10 + 32))(v14, v8, v9);
  v16 = [objc_opt_self() defaultManager];
  sub_1001CFAD0();
  v17 = sub_1001D17A0();

  v18 = [v16 fileExistsAtPath:v17];

  if ((v18 & 1) == 0)
  {
    return (*(v10 + 8))(v14, v9);
  }

  v19 = sub_1001CFB30();
  v21 = v20;
  v22 = *(v2 + qword_10022F7E0);
  sub_100011AC0(&qword_10022FC90, &unk_1001E1620);
  sub_1001CE808();
  sub_1001CF900();
  v37 = v21;
  v23 = v38;
  v24 = *(v2 + 16);
  if (v24 < *(v38 + 16))
  {

    v25 = sub_1001D0E50();
    LODWORD(v36) = sub_1001D1E00();
    if (os_log_type_enabled(v25, v36))
    {
      v26 = swift_slowAlloc();
      v35 = v25;
      v27 = v26;
      *v26 = 134218240;
      *(v26 + 4) = *(v23 + 16);
      *(v26 + 12) = 2048;
      *(v26 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v35, v36, "trimming archive, count=%ld, maxCount=%ld", v27, 0x16u);
    }

    else
    {
    }

    v28 = sub_1001CCB68(v24, v23);

    v23 = v28;
  }

  v29 = v2 + qword_10022F7E8;

  os_unfair_lock_lock(v29);
  v36 = v29;
  v30 = *(v29 + 8);
  v29 += 8;
  *v29 = v23;

  __chkstk_darwin(v31, v32);
  *(&v34 - 2) = a1;
  *(&v34 - 1) = v2;
  result = sub_10005E7D8(sub_10005EE28, (&v34 - 4));
  v33 = *(*v29 + 16);
  if (v33 < result)
  {
    __break(1u);
  }

  else
  {
    sub_10005B55C(result, v33);
    os_unfair_lock_unlock(v36);
    sub_100011E48(v19, v37);

    (*(v10 + 8))(v14, v9);
  }

  return result;
}

void *sub_1001CCB68(int64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4 - 8, v7);
  v10 = &v25 - v9;
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return &_swiftEmptyArrayStorage;
  }

  if (*(a2 + 16) >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = *(a2 + 16);
  }

  v28 = &_swiftEmptyArrayStorage;
  sub_100151580(0, v11, 0);
  v12 = v28;
  v13 = *(a2 + 16);
  if (!v13)
  {

    return v12;
  }

  v14 = 0;
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = a2;
  v16 = a2 + v15;
  v17 = *(v5 + 72);
  do
  {
    v20 = v10;
    result = sub_10001208C(v16, v10, &unk_100230260, &qword_1001D3660);
    v21 = *(v12 + 16);
    if (v21 < a1)
    {
      v26 = v14;
      v28 = v12;
      v18 = *(v12 + 24);
      if (v21 >= v18 >> 1)
      {
        sub_100151580(v18 > 1, v21 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v21 + 1;
      v19 = v12 + v15 + v21 * v17;
      v10 = v20;
      sub_1000DBEF4(v20, v19, &unk_100230260, &qword_1001D3660);
      v14 = v26;
    }

    else
    {
      if (v14 >= v21)
      {
        __break(1u);
        goto LABEL_27;
      }

      v10 = v20;
      sub_10005EEB8(v20, v12 + v15 + v17 * v14);
      if ((v14 + 1) < a1)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    v16 += v17;
    --v13;
  }

  while (v13);

  if (!v14)
  {
    return v12;
  }

  v22 = *(v12 + 16);
  v27 = &_swiftEmptyArrayStorage;
  result = sub_100151580(0, v22, 0);
  if (v22 >= v14)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v23 = *(v12 + 16);
    if (v23 >= v14 && v23 >= v22)
    {

      sub_1001CE8F0(v24, v12 + v15, v14, (2 * v22) | 1);
      sub_1001CE8F0(v12, v12 + v15, 0, (2 * v14) | 1);
      return v27;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1001CCE3C()
{
  v1 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v28[-v4];
  v6 = sub_1001CFB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001208C(v0 + qword_10022F7D8, v5, &unk_100230170, &unk_1001E0D90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100011F00(v5, &unk_100230170, &unk_1001E0D90);
  }

  (*(v7 + 32))(v11, v5, v6);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1001CFAD0();
  v15 = sub_1001D17A0();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = [v13 defaultManager];
    sub_1001CFA80(v18);
    v20 = v19;
    v29 = 0;
    v21 = [v17 removeItemAtURL:v19 error:&v29];

    if (v21)
    {
      v22 = *(v7 + 8);
      v23 = v29;
      return v22(v11, v6);
    }

    v24 = v29;
    sub_1001CFA20();

    swift_willThrow();
    v25 = sub_1001D0E50();
    v26 = sub_1001D1E00();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "failed to delete archive", v27, 2u);
    }
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1001CD194()
{
  v1[8] = v0;
  v2 = type metadata accessor for ValidatedAttestation();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_100011AC0(&qword_100230398, &unk_1001E2240) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD2A4, 0, 0);
}

uint64_t sub_1001CD2A4()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[15] = v1;
  if (v1)
  {
    type metadata accessor for AttestationStore();
    sub_1001CEEA4(&qword_1002287B8, type metadata accessor for AttestationStore);

    v3 = sub_1001D1A70();

    return _swift_task_switch(sub_1001CD464, v3, v2);
  }

  else
  {
    v4 = sub_1001D0E50();
    v5 = sub_1001D1E00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "attestation store unavailable", v6, 2u);
    }

    v8 = v0[13];
    v7 = v0[14];
    v10 = v0[11];
    v9 = v0[12];

    v11 = v0[1];

    return v11(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001CD464()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = sub_1000298F8();

  return _swift_task_switch(sub_1001CD4D0, 0, 0);
}

void sub_1001CD4D0()
{
  v1 = 0;
  v2 = v0[16];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v50 = v0[16];
  v7 = -1 << *(v50 + 32);
  v53 = v0[14];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v51 = v0[11];
  v48 = v0[10];
  v49 = v0[13];
  v47 = (63 - v7) >> 6;
  v52 = v0[9];
  v9 = &_swiftEmptyArrayStorage;
  v54 = v4;
  if ((v6 & v3) != 0)
  {
    while (1)
    {
      v10 = v1;
LABEL_13:
      v14 = v0[12];
      v13 = v0[13];
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v10 << 6);
      v17 = (*(v50 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_10003C450(*(v50 + 56) + *(v48 + 72) * v16, v14);
      v20 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
      v21 = *(v20 + 48);
      *v13 = v18;
      *(v49 + 8) = v19;
      sub_10003C904(v14, v13 + v21);
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

LABEL_14:
      v55 = v9;
      v22 = v0[14];
      sub_1000DBEF4(v0[13], v22, &qword_100230398, &unk_1001E2240);
      v23 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
      {
        break;
      }

      v24 = v0[14];
      v25 = v0[11];
      v26 = *v24;
      v27 = *(v53 + 8);
      sub_10003C904(v24 + *(v23 + 48), v25);
      sub_1001D2030(163);
      v57._countAndFlagsBits = v26;
      v57._object = v27;
      sub_1001D18B0(v57);

      v58._countAndFlagsBits = 0x6C62757020202020;
      v58._object = 0xEF203A79654B6369;
      sub_1001D18B0(v58);
      object = v51[6]._object;
      countAndFlagsBits = v51[7]._countAndFlagsBits;
      v59._countAndFlagsBits = sub_1001CFB50();
      sub_1001D18B0(v59);

      v60._countAndFlagsBits = 0xD000000000000018;
      v60._object = 0x80000001001E8020;
      sub_1001D18B0(v60);
      v30 = *(v52 + 28);
      sub_1001CFD60();
      sub_1001CEEA4(&qword_100227A40, &type metadata accessor for Date);
      v61._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v61);

      v62._object = 0x80000001001E8040;
      v62._countAndFlagsBits = 0xD000000000000015;
      sub_1001D18B0(v62);
      sub_1001D18B0(v51[2]);
      v63._countAndFlagsBits = 0xD000000000000019;
      v63._object = 0x80000001001E8060;
      sub_1001D18B0(v63);
      sub_1001D18B0(v51[3]);
      v64._object = 0x80000001001E8080;
      v64._countAndFlagsBits = 0xD000000000000015;
      sub_1001D18B0(v64);
      v31 = v51[4]._object;
      v0[2] = v51[4]._countAndFlagsBits;
      v0[3] = v31;

      sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
      v65._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v65);

      v66._countAndFlagsBits = 0xD000000000000017;
      v66._object = 0x80000001001E80A0;
      sub_1001D18B0(v66);
      v32 = (v25 + *(v52 + 36));
      v33 = v32[1];
      v0[4] = *v32;
      v0[5] = v33;

      v67._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v67);

      v68._countAndFlagsBits = 0xD000000000000012;
      v68._object = 0x80000001001E80C0;
      sub_1001D18B0(v68);
      v34 = v51[5]._object;
      v0[6] = v51[5]._countAndFlagsBits;
      v0[7] = v34;

      v69._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v69);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100008F3C(0, *(v9 + 2) + 1, 1, v9);
      }

      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      v4 = v54;
      if (v36 >= v35 >> 1)
      {
        v9 = sub_100008F3C((v35 > 1), v36 + 1, 1, v9);
      }

      sub_10003C4B4(v0[11]);
      *(v9 + 2) = v36 + 1;
      v37 = &v9[16 * v36];
      *(v37 + 4) = 0;
      *(v37 + 5) = 0xE000000000000000;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v41 = v0[15];
    v40 = v0[16];

    v43 = v0[13];
    v42 = v0[14];
    v45 = v0[11];
    v44 = v0[12];

    v46 = v0[1];

    v46(v55);
  }

  else
  {
LABEL_5:
    if (v47 <= v1 + 1)
    {
      v11 = v1 + 1;
    }

    else
    {
      v11 = v47;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v47)
      {
        v38 = v0[13];
        v39 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
        v8 = 0;
        v1 = v12;
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v10);
      ++v1;
      if (v8)
      {
        v1 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001CDACC()
{
  v47 = sub_1001D08A0();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v47, v3);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFD60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v12 = v11 + qword_10022F7E8;
  os_unfair_lock_lock((v11 + qword_10022F7E8));
  v13 = sub_10005E440((v12 + 8), v11, v10);
  os_unfair_lock_unlock(v12);

  result = (*(v6 + 8))(v10, v5);
  v45 = *(v13 + 16);
  if (v45)
  {
    v15 = 0;
    v44 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v42 = v1 + 16;
    v43 = "CS_DARWIN_USER_TEMP_DIR";
    v41 = v1 + 8;
    v16 = &_swiftEmptyArrayStorage;
    v39 = v13;
    v40 = v1;
    while (v15 < *(v13 + 16))
    {
      v48 = v16;
      v18 = v46;
      v17 = v47;
      (*(v1 + 16))(v46, v44 + *(v1 + 72) * v15, v47);
      v49 = v15 + 1;
      v52._countAndFlagsBits = sub_1001D0890();
      strcpy(v51, "pipelinekind: ");
      HIBYTE(v51[1]) = -18;
      sub_1001D18B0(v52);

      v53._object = (v43 | 0x8000000000000000);
      v53._countAndFlagsBits = 0xD000000000000014;
      sub_1001D18B0(v53);

      v19 = sub_1001D0870();
      result = (*(v1 + 8))(v18, v17);
      v20 = 0;
      v21 = 1 << *(v19 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;
      if (v23)
      {
        while (1)
        {
          v25 = v20;
LABEL_13:
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v27 = (v25 << 10) | (16 * v26);
          v28 = (*(v19 + 48) + v27);
          v30 = *v28;
          v29 = v28[1];
          v31 = (*(v19 + 56) + v27);
          v32 = *v31;
          v33 = v31[1];
          v50._countAndFlagsBits = 91;
          v50._object = 0xE100000000000000;

          v54._countAndFlagsBits = v30;
          v54._object = v29;
          sub_1001D18B0(v54);

          v55._countAndFlagsBits = 8250;
          v55._object = 0xE200000000000000;
          sub_1001D18B0(v55);

          v56._countAndFlagsBits = v32;
          v56._object = v33;
          sub_1001D18B0(v56);

          v57._countAndFlagsBits = 93;
          v57._object = 0xE100000000000000;
          sub_1001D18B0(v57);

          sub_1001D18B0(v50);

          if (!v23)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v25 >= v24)
        {
          break;
        }

        v23 = *(v19 + 64 + 8 * v25);
        ++v20;
        if (v23)
        {
          v20 = v25;
          goto LABEL_13;
        }
      }

      v34 = v51[0];
      v35 = v51[1];
      v16 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100008F3C(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v1 = v40;
      v15 = v49;
      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        result = sub_100008F3C((v36 > 1), v37 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v37 + 1;
      v38 = &v16[16 * v37];
      *(v38 + 4) = v34;
      *(v38 + 5) = v35;
      v13 = v39;
      if (v15 == v45)
      {

        return v16;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1001CDFD4()
{
  v56 = sub_1001D08A0();
  v1 = *(v56 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v56, v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFD60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v48 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity);
  v16 = *(*v15 + 240);
  v17 = *(v15 + v16);

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  sub_1001CC61C(v14);

  v18 = *(v6 + 8);
  v18(v14, v5);
  v19 = *(v15 + v16);

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v20 = v19 + qword_10022F7E8;
  os_unfair_lock_lock((v19 + qword_10022F7E8));
  v21 = sub_10005E440((v20 + 8), v19, v11);
  os_unfair_lock_unlock(v20);

  v18(v11, v5);
  result = v21;
  v54 = *(v21 + 16);
  if (v54)
  {
    v23 = 0;
    v53 = v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v51 = v1 + 16;
    v52 = "CS_DARWIN_USER_TEMP_DIR";
    v50 = v1 + 8;
    v24 = &_swiftEmptyArrayStorage;
    v48 = v21;
    v49 = v1;
    while (v23 < *(result + 2))
    {
      v57 = v24;
      v26 = v55;
      v25 = v56;
      (*(v1 + 16))(v55, v53 + *(v1 + 72) * v23, v56);
      v58 = v23 + 1;
      v61._countAndFlagsBits = sub_1001D0890();
      strcpy(v60, "pipelinekind: ");
      HIBYTE(v60[1]) = -18;
      sub_1001D18B0(v61);

      v62._object = (v52 | 0x8000000000000000);
      v62._countAndFlagsBits = 0xD000000000000014;
      sub_1001D18B0(v62);

      v27 = sub_1001D0870();
      result = (*(v1 + 8))(v26, v25);
      v28 = 0;
      v29 = 1 << *(v27 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v27 + 64);
      v32 = (v29 + 63) >> 6;
      if (v31)
      {
        while (1)
        {
          v33 = v28;
LABEL_13:
          v34 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v35 = (v33 << 10) | (16 * v34);
          v36 = (*(v27 + 48) + v35);
          v38 = *v36;
          v37 = v36[1];
          v39 = (*(v27 + 56) + v35);
          v40 = *v39;
          v41 = v39[1];
          v59._countAndFlagsBits = 91;
          v59._object = 0xE100000000000000;

          v63._countAndFlagsBits = v38;
          v63._object = v37;
          sub_1001D18B0(v63);

          v64._countAndFlagsBits = 8250;
          v64._object = 0xE200000000000000;
          sub_1001D18B0(v64);

          v65._countAndFlagsBits = v40;
          v65._object = v41;
          sub_1001D18B0(v65);

          v66._countAndFlagsBits = 93;
          v66._object = 0xE100000000000000;
          sub_1001D18B0(v66);

          sub_1001D18B0(v59);

          if (!v31)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v33 >= v32)
        {
          break;
        }

        v31 = *(v27 + 64 + 8 * v33);
        ++v28;
        if (v31)
        {
          v28 = v33;
          goto LABEL_13;
        }
      }

      v42 = v60[0];
      v43 = v60[1];
      v24 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100008F3C(0, *(v24 + 2) + 1, 1, v24);
      }

      result = v48;
      v1 = v49;
      v23 = v58;
      v45 = *(v24 + 2);
      v44 = *(v24 + 3);
      if (v45 >= v44 >> 1)
      {
        v47 = v48;
        v24 = sub_100008F3C((v44 > 1), v45 + 1, 1, v24);
        result = v47;
      }

      *(v24 + 2) = v45 + 1;
      v46 = &v24[16 * v45];
      *(v46 + 4) = v42;
      *(v46 + 5) = v43;
      if (v23 == v54)
      {

        return v24;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1001CE554()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[3] = v1;
  if (v1)
  {
    type metadata accessor for AttestationStore();
    sub_1001CEEA4(&qword_1002287B8, type metadata accessor for AttestationStore);

    v3 = sub_1001D1A70();

    return _swift_task_switch(sub_1001CE6F4, v3, v2);
  }

  else
  {
    v4 = sub_1001D0E50();
    v5 = sub_1001D1E00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "attestation store unavailable", v6, 2u);
    }

    v7 = v0[1];
    v8 = v0[3] != 0;

    return v7(v8);
  }
}

uint64_t sub_1001CE6F4()
{
  v1 = *(v0 + 24);
  sub_100030D24();

  return _swift_task_switch(sub_1001CE75C, 0, 0);
}

uint64_t sub_1001CE75C()
{
  v1 = v0[3];
  v2 = *(*(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));

  sub_1001CCE3C();

  v3 = v0[1];
  v4 = v0[3] != 0;

  return v3(v4);
}

unint64_t sub_1001CE808()
{
  result = qword_100230380;
  if (!qword_100230380)
  {
    sub_100011DF4(&qword_10022FC90, &unk_1001E1620);
    sub_1001CE88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100230380);
  }

  return result;
}

unint64_t sub_1001CE88C()
{
  result = qword_100230388;
  if (!qword_100230388)
  {
    sub_100011DF4(&unk_100230260, &qword_1001D3660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100230388);
  }

  return result;
}

uint64_t sub_1001CE8F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66 = a2;
  v75 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v72 = *(v75 - 8);
  v8 = *(v72 + 64);
  __chkstk_darwin(v75, v9);
  v11 = v61 - v10;
  v12 = sub_100011AC0(&qword_100230390, &qword_1001E2230);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = v61 - v20;
  result = __chkstk_darwin(v19, v22);
  v25 = v61 - v24;
  v26 = a4 >> 1;
  v67 = a3;
  v27 = __OFSUB__(a4 >> 1, a3);
  v28 = (a4 >> 1) - a3;
  if (v27)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = *v4;
  v30 = *(*v4 + 16);
  v31 = v30 + v28;
  if (__OFADD__(v30, v28))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v70 = v26;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v29;
  if (result)
  {
    v32 = *(v29 + 24) >> 1;
    if (v32 >= v31)
    {
      goto LABEL_12;
    }

    if (v30 <= v31)
    {
      v33 = v30 + v28;
    }

    else
    {
      v33 = v30;
    }
  }

  else if (v30 <= v31)
  {
    v33 = v30 + v28;
  }

  else
  {
    v33 = v30;
  }

  result = sub_100151580(result, v33, 1);
  v29 = *v4;
  v32 = *(*v4 + 24) >> 1;
LABEL_12:
  v34 = *(v29 + 16);
  v35 = v32 - v34;
  if (v70 == v67)
  {
    if (v28 <= 0)
    {
      v36 = v29;
      v37 = v67;
      if (v35)
      {
        goto LABEL_40;
      }

LABEL_20:
      v61[1] = a1;
      v42 = *(v36 + 16);
      v43 = v72;
      v44 = v75;
      v68 = *(v72 + 56);
      v69 = v72 + 56;
      v68(v25, 1, 1, v75);
      sub_10001208C(v25, v21, &qword_100230390, &qword_1001E2230);
      v73 = *(v43 + 48);
      v74 = v43 + 48;
      if (v73(v21, 1, v44) != 1)
      {
        v45 = &qword_100230390;
        v62 = v21;
        v63 = v4;
        do
        {
          v48 = v21;
          v49 = v45;
          sub_100011F00(v48, v45, &qword_1001E2230);
          v50 = *(v36 + 24);
          if (v42 + 1 > (v50 >> 1))
          {
            sub_100151580(v50 > 1, v42 + 1, 1);
          }

          v51 = *v4;
          v64 = *(*v4 + 24);
          v52 = *(v72 + 80);
          v53 = v49;
          sub_10001208C(v25, v17, v49, &qword_1001E2230);
          v54 = v73(v17, 1, v75);
          v65 = v51;
          if (v54 != 1)
          {
            v71 = v51 + ((v52 + 32) & ~v52);
            if (v42 <= (v64 >> 1))
            {
              v46 = v64 >> 1;
            }

            else
            {
              v46 = v42;
            }

            do
            {
              sub_1000DBEF4(v17, v11, &unk_100230260, &qword_1001D3660);
              if (v46 == v42)
              {
                sub_100011F00(v11, &unk_100230260, &qword_1001D3660);
                v42 = v46;
                goto LABEL_24;
              }

              sub_100011F00(v25, v49, &qword_1001E2230);
              v58 = v11;
              v59 = *(v72 + 72);
              v60 = v58;
              result = sub_1000DBEF4(v58, v71 + v59 * v42, &unk_100230260, &qword_1001D3660);
              if (v37 == v70)
              {
                v55 = 1;
                v37 = v70;
              }

              else
              {
                if (v37 < v67 || v37 >= v70)
                {
                  __break(1u);
                  goto LABEL_43;
                }

                sub_10001208C(v66 + v59 * v37, v25, &unk_100230260, &qword_1001D3660);
                v55 = 0;
                ++v37;
              }

              v56 = v75;
              v68(v25, v55, 1, v75);
              sub_10001208C(v25, v17, v49, &qword_1001E2230);
              v57 = v73(v17, 1, v56);
              ++v42;
              v11 = v60;
            }

            while (v57 != 1);
          }

          sub_100011F00(v17, v49, &qword_1001E2230);
          v46 = v42;
LABEL_24:
          v36 = v65;
          *(v65 + 16) = v46;
          v21 = v62;
          sub_10001208C(v25, v62, v53, &qword_1001E2230);
          v47 = v73(v21, 1, v75);
          v4 = v63;
          v45 = v53;
        }

        while (v47 != 1);
      }

      sub_100011F00(v25, &qword_100230390, &qword_1001E2230);
      swift_unknownObjectRelease();
      result = sub_100011F00(v21, &qword_100230390, &qword_1001E2230);
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (v35 < v28)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v38 = v29 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v34;
  result = swift_arrayInitWithCopy();
  if (v28 <= 0)
  {
    v36 = v29;
    v37 = v70;
    if (v28 == v35)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  v39 = *(v29 + 16);
  v27 = __OFADD__(v39, v28);
  v40 = v39 + v28;
  v41 = v29;
  v37 = v70;
  if (!v27)
  {
    v36 = v41;
    *(v41 + 16) = v40;
    if (v28 == v35)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = swift_unknownObjectRelease();
LABEL_41:
    *v4 = v36;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1001CEEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CEEEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001CEF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1001CEF84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D25A0(v3);
  return sub_1001D25C0();
}

void sub_1001CEFE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001D1880();
  sub_1001D25A0(v3);
}

Swift::Int sub_1001CF020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D25A0(v3);
  return sub_1001D25C0();
}

uint64_t sub_1001CF080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001D2470();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1001CF0E4()
{
  result = qword_1002303A0;
  if (!qword_1002303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002303A0);
  }

  return result;
}

uint64_t sub_1001CF138@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1001D18C0();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t type metadata accessor for ThimbledEvent()
{
  result = qword_100230418;
  if (!qword_100230418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF1E8()
{
  sub_1001CF2FC();
  if (v0 <= 0x3F)
  {
    sub_1001CF36C();
    if (v1 <= 0x3F)
    {
      sub_1001CF3D0();
      if (v2 <= 0x3F)
      {
        sub_1001CF428(319, v2);
        if (v3 <= 0x3F)
        {
          sub_1001CF560();
          if (v4 <= 0x3F)
          {
            sub_1001CF5CC();
            if (v5 <= 0x3F)
            {
              sub_1001CF614();
              if (v6 <= 0x3F)
              {
                sub_1001CF688();
                if (v7 <= 0x3F)
                {
                  sub_1001CF700();
                  if (v8 <= 0x3F)
                  {
                    sub_1001CF730();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1001CF2FC()
{
  if (!qword_100230428)
  {
    type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(255);
    sub_1001D08A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230428);
    }
  }
}

unint64_t sub_1001CF36C()
{
  result = qword_100230430;
  if (!qword_100230430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100230430);
  }

  return result;
}

void sub_1001CF3D0()
{
  if (!qword_100230438)
  {
    type metadata accessor for RateLimitConfiguration(255);
    v0 = sub_1001D1A60();
    if (!v1)
    {
      atomic_store(v0, &qword_100230438);
    }
  }
}

void sub_1001CF428(uint64_t a1, uint64_t a2)
{
  if (!qword_100230440)
  {
    __chkstk_darwin(a1, a2);
    sub_100011DF4(&qword_1002292B8, &qword_1001DD2C0);
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_100230440);
    }
  }
}

void sub_1001CF560()
{
  if (!qword_100230448)
  {
    sub_1001CFDA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230448);
    }
  }
}

void sub_1001CF5CC()
{
  if (!qword_100230450)
  {
    v0 = sub_1001D08A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100230450);
    }
  }
}

void sub_1001CF614()
{
  if (!qword_100230458)
  {
    sub_1001CFDA0();
    sub_1001D08A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230458);
    }
  }
}

void sub_1001CF688()
{
  if (!qword_100230460)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230460);
    }
  }
}

ValueMetadata *sub_1001CF700()
{
  result = qword_100230468;
  if (!qword_100230468)
  {
    result = &type metadata for TapToRadarContext;
    atomic_store(&type metadata for TapToRadarContext, &qword_100230468);
  }

  return result;
}

void *sub_1001CF730()
{
  result = qword_100230470;
  if (!qword_100230470)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100230470);
  }

  return result;
}