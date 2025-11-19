uint64_t sub_10001641C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B1990;
  v2[10] = qword_1000B1990;

  return _swift_task_switch(sub_1000164B8, v3, 0);
}

uint64_t sub_1000164B8()
{
  v1 = v0[9];
  v2 = *(v1 + 128);
  v3 = *(v1 + 88);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100016584;
  v6 = v0[8];
  v5 = v0[9];

  return sub_10004091C(v6, v3, v2, v5);
}

uint64_t sub_100016584()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[10];

    return _swift_task_switch(sub_100023798, v4, 0);
  }

  else
  {
    v5 = v3[1];
    v6 = v3[12] == 0;

    return v5(v6);
  }
}

uint64_t sub_1000166C4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v3 = qword_1000B1990;
  v2[10] = qword_1000B1990;

  return _swift_task_switch(sub_100016760, v3, 0);
}

uint64_t sub_100016760()
{
  v1 = v0[9];
  v2 = *(v1 + 128);
  v3 = *(v1 + 88);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10001682C;
  v6 = v0[8];
  v5 = v0[9];

  return sub_100041A78(v6, v3, v2, v5);
}

uint64_t sub_10001682C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[10];

    return _swift_task_switch(sub_10001696C, v4, 0);
  }

  else
  {
    v5 = v3[1];
    v6 = v3[12] == 0;

    return v5(v6);
  }
}

uint64_t sub_10001696C()
{
  *(v0 + 56) = *(v0 + 96);
  swift_errorRetain();
  sub_10000A0C8(&qword_1000A27F8, &qword_100074EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (v5 != 22 || v1 != 6 || (v3 | v2 | v4) != 0)
  {
    sub_100021030(v1, v2, v3, v4, v5);
LABEL_10:
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);

    goto LABEL_11;
  }

  v13 = *(v0 + 96);

  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  atomic_fetch_add_explicit((qword_1000B1920 + 56), 1uLL, memory_order_relaxed);
  v14 = *(v0 + 56);
LABEL_11:

  v10 = *(v0 + 8);
  v11 = *(v0 + 96) == 0;

  return v10(v11);
}

uint64_t sub_100016AA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 448) = a1;
  *(v2 + 456) = a2;
  return _swift_task_switch(sub_100016AC8, 0, 0);
}

uint64_t sub_100016AC8()
{
  v1 = *(v0 + 448);
  v2 = *(v1 + 16);
  *(v0 + 464) = v2;
  if (v2)
  {
    *(v0 + 472) = 0;
    v3 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v3;
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    v6 = *(v1 + 112);
    *(v0 + 80) = *(v1 + 96);
    *(v0 + 96) = v6;
    *(v0 + 48) = v4;
    *(v0 + 64) = v5;
    v7 = *(v1 + 128);
    v8 = *(v1 + 144);
    v9 = *(v1 + 176);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 160) = v9;
    *(v0 + 112) = v7;
    *(v0 + 128) = v8;
    v10 = *(v1 + 192);
    v11 = *(v1 + 208);
    v12 = *(v1 + 224);
    *(v0 + 224) = *(v1 + 240);
    *(v0 + 192) = v11;
    *(v0 + 208) = v12;
    *(v0 + 176) = v10;
    sub_100020EE0(v0 + 16, v0 + 232);
    if (qword_1000A2190 != -1)
    {
      swift_once();
    }

    v13 = qword_1000B1990;

    return _swift_task_switch(sub_100016C28, v13, 0);
  }

  else
  {
    v14 = *(*(v0 + 456) + 136);
    v15 = swift_task_alloc();
    *(v0 + 480) = v15;
    *v15 = v0;
    v15[1] = sub_100016E08;

    return sub_10005EA34();
  }
}

uint64_t sub_100016C28()
{
  v1 = *(v0 + 456);
  sub_100017AEC(v0 + 16);
  sub_100020F18(v0 + 16);

  return _swift_task_switch(sub_100016C9C, 0, 0);
}

uint64_t sub_100016C9C()
{
  v1 = *(v0 + 472) + 1;
  if (v1 == *(v0 + 464))
  {
    v2 = *(*(v0 + 456) + 136);
    v3 = swift_task_alloc();
    *(v0 + 480) = v3;
    *v3 = v0;
    v3[1] = sub_100016E08;

    return sub_10005EA34();
  }

  else
  {
    *(v0 + 472) = v1;
    v5 = *(v0 + 448) + 216 * v1;
    v6 = *(v5 + 48);
    *(v0 + 16) = *(v5 + 32);
    *(v0 + 32) = v6;
    v7 = *(v5 + 112);
    v9 = *(v5 + 64);
    v8 = *(v5 + 80);
    *(v0 + 80) = *(v5 + 96);
    *(v0 + 96) = v7;
    *(v0 + 48) = v9;
    *(v0 + 64) = v8;
    v10 = *(v5 + 176);
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    *(v0 + 144) = *(v5 + 160);
    *(v0 + 160) = v10;
    *(v0 + 112) = v12;
    *(v0 + 128) = v11;
    v14 = *(v5 + 208);
    v13 = *(v5 + 224);
    v15 = *(v5 + 192);
    *(v0 + 224) = *(v5 + 240);
    *(v0 + 192) = v14;
    *(v0 + 208) = v13;
    *(v0 + 176) = v15;
    sub_100020EE0(v0 + 16, v0 + 232);
    if (qword_1000A2190 != -1)
    {
      swift_once();
    }

    v16 = qword_1000B1990;

    return _swift_task_switch(sub_100016C28, v16, 0);
  }
}

uint64_t sub_100016E08(char a1)
{
  v2 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_100016F08, 0, 0);
}

uint64_t sub_100016F08()
{
  if ((*(v0 + 488) & 1) == 0)
  {
    sub_10000EEA4();
    swift_allocError();
    *v2 = 7;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 22;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016FBC(__int128 *a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1)
  {
    goto LABEL_8;
  }

  v9 = sub_10001C2F0(a1, *(v1 + 144));
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v2 = v9;
  v33 = v1;
  if (qword_1000A2178 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = v13;
      v16 = v15;
      v17 = swift_slowAlloc();
      v64[0] = v17;
      *v16 = 136315138;
      v2 = sub_100005C68(v2, v11, v64);

      *(v16 + 4) = v2;
      v18 = v14;
      v19 = v32;
      _os_log_impl(&_mh_execute_header, v32, v18, "splunk event: %s", v16, 0xCu);
      sub_100005E9C(v17);
    }

    else
    {
    }

    v1 = v33;
LABEL_8:
    v11 = *(v1 + 136);
    v20 = a1[11];
    v44 = a1[10];
    v45 = v20;
    v21 = a1[13];
    v46 = a1[12];
    v47 = v21;
    v22 = a1[7];
    v40 = a1[6];
    v41 = v22;
    v23 = a1[9];
    v42 = a1[8];
    v43 = v23;
    v24 = a1[3];
    v36 = a1[2];
    v37 = v24;
    v25 = a1[5];
    v38 = a1[4];
    v39 = v25;
    v26 = a1[1];
    v34 = *a1;
    v35 = v26;
    sub_100021324(a1, v64);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    v29 = v27;
    v30 = *(v5 + 8);
    v5 += 8;
    v30(v8, v4);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v28 <= -1.0)
    {
      goto LABEL_13;
    }

    if (v28 < 1.84467441e19)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v76 = v44;
  v77 = v45;
  v78 = v46;
  v79 = v47;
  v72 = v40;
  v73 = v41;
  v74 = v42;
  v75 = v43;
  v68 = v36;
  v69 = v37;
  v70 = v38;
  v71 = v39;
  v66 = v34;
  v64[0] = v28;
  v64[1] = 7633012;
  v64[2] = 0xE300000000000000;
  strcpy(v65, "dataprotection");
  v65[15] = -18;
  v67 = v35;
  sub_10001944C(v64);
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v63 = v47;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v50 = v34;
  v48[0] = v28;
  v48[1] = 7633012;
  v48[2] = 0xE300000000000000;
  strcpy(v49, "dataprotection");
  v49[15] = -18;
  v51 = v35;
  return sub_100002CF0(v48, &qword_1000A2860, &qword_100075118);
}

uint64_t sub_1000173B4(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1)
  {
    goto LABEL_8;
  }

  v9 = sub_10001BFE4(a1, *(v1 + 144));
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v2 = v9;
  v30 = v1;
  if (qword_1000A2178 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v13;
      v16 = v15;
      v17 = swift_slowAlloc();
      *&v51 = v17;
      *v16 = 136315138;
      v2 = sub_100005C68(v2, v11, &v51);

      *(v16 + 4) = v2;
      v18 = v14;
      v19 = v29;
      _os_log_impl(&_mh_execute_header, v29, v18, "splunk event: %s", v16, 0xCu);
      sub_100005E9C(v17);
    }

    else
    {
    }

    v1 = v30;
LABEL_8:
    v11 = *(v1 + 136);
    v20 = *(a1 + 112);
    v37 = *(a1 + 96);
    v38 = v20;
    v39 = *(a1 + 128);
    v21 = *(a1 + 48);
    v33 = *(a1 + 32);
    v34 = v21;
    v22 = *(a1 + 80);
    v35 = *(a1 + 64);
    v36 = v22;
    v23 = *(a1 + 16);
    v31 = *a1;
    v32 = v23;
    sub_1000214E4(a1, &v51);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v25 = v24;
    v26 = v24;
    v27 = *(v5 + 8);
    v5 += 8;
    v27(v8, v4);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v25 <= -1.0)
    {
      goto LABEL_13;
    }

    if (v25 < 1.84467441e19)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v59 = v36;
  v60 = v37;
  v61 = v38;
  v55 = v32;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  *&v51 = v25;
  *(&v51 + 1) = 7633012;
  v52 = 0xE300000000000000;
  strcpy(v53, "dataprotection");
  v53[15] = -18;
  v62 = v39;
  v54 = v31;
  sub_100019294(&v51);
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v43 = v32;
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v40[0] = v25;
  v40[1] = 7633012;
  v40[2] = 0xE300000000000000;
  strcpy(v41, "dataprotection");
  v41[15] = -18;
  v50 = v39;
  v42 = v31;
  return sub_100002CF0(v40, &qword_1000A28A0, &qword_100075128);
}

uint64_t sub_100017760(__int128 *a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1)
  {
    goto LABEL_8;
  }

  v9 = sub_10001BCE8(a1, *(v1 + 144));
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v2 = v9;
  v29 = v1;
  if (qword_1000A2178 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = v13;
      v16 = v15;
      v17 = swift_slowAlloc();
      *&v44 = v17;
      *v16 = 136315138;
      v2 = sub_100005C68(v2, v11, &v44);

      *(v16 + 4) = v2;
      v18 = v14;
      v19 = v28;
      _os_log_impl(&_mh_execute_header, v28, v18, "splunk event: %s", v16, 0xCu);
      sub_100005E9C(v17);
    }

    else
    {
    }

    v1 = v29;
LABEL_8:
    v11 = *(v1 + 136);
    v20 = a1[5];
    v34 = a1[4];
    v35[0] = v20;
    *(v35 + 10) = *(a1 + 90);
    v21 = a1[1];
    v30 = *a1;
    v31 = v21;
    v22 = a1[3];
    v32 = a1[2];
    v33 = v22;
    sub_100021404(a1, &v44);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v24 = v23;
    v25 = v23;
    v26 = *(v5 + 8);
    v5 += 8;
    v26(v8, v4);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v24 <= -1.0)
    {
      goto LABEL_13;
    }

    if (v24 < 1.84467441e19)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v50 = v33;
  v51 = v34;
  v52[0] = v35[0];
  *(v52 + 10) = *(v35 + 10);
  v47 = v30;
  v48 = v31;
  *&v44 = v24;
  *(&v44 + 1) = 7633012;
  v45 = 0xE300000000000000;
  strcpy(v46, "dataprotection");
  v46[15] = -18;
  v49 = v32;
  sub_1000190DC(&v44);
  v41 = v33;
  v42 = v34;
  v43[0] = v35[0];
  *(v43 + 10) = *(v35 + 10);
  v38 = v30;
  v39 = v31;
  v36[0] = v24;
  v36[1] = 7633012;
  v36[2] = 0xE300000000000000;
  strcpy(v37, "dataprotection");
  v37[15] = -18;
  v40 = v32;
  return sub_100002CF0(v36, &qword_1000A2880, &qword_100075120);
}

uint64_t sub_100017AEC(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1)
  {
    goto LABEL_8;
  }

  v9 = sub_10001C618(a1, *(v1 + 144));
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v2 = v9;
  v32 = v1;
  if (qword_1000A2178 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v31 = v13;
      v16 = v15;
      v17 = swift_slowAlloc();
      *&v63 = v17;
      *v16 = 136315138;
      v2 = sub_100005C68(v2, v11, &v63);

      *(v16 + 4) = v2;
      v18 = v14;
      v19 = v31;
      _os_log_impl(&_mh_execute_header, v31, v18, "splunk event: %s", v16, 0xCu);
      sub_100005E9C(v17);
    }

    else
    {
    }

    v1 = v32;
LABEL_8:
    v11 = *(v1 + 136);
    v20 = *(a1 + 176);
    v43 = *(a1 + 160);
    v44 = v20;
    v45 = *(a1 + 192);
    v46 = *(a1 + 208);
    v21 = *(a1 + 112);
    v39 = *(a1 + 96);
    v40 = v21;
    v22 = *(a1 + 144);
    v41 = *(a1 + 128);
    v42 = v22;
    v23 = *(a1 + 48);
    v35 = *(a1 + 32);
    v36 = v23;
    v24 = *(a1 + 80);
    v37 = *(a1 + 64);
    v38 = v24;
    v25 = *(a1 + 16);
    v33 = *a1;
    v34 = v25;
    sub_100020EE0(a1, &v63);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v27 = v26;
    v28 = v26;
    v29 = *(v5 + 8);
    v5 += 8;
    v29(v8, v4);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v27 <= -1.0)
    {
      goto LABEL_13;
    }

    if (v27 < 1.84467441e19)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v76 = v43;
  v77 = v44;
  v78 = v45;
  v72 = v39;
  v73 = v40;
  v74 = v41;
  v75 = v42;
  v68 = v35;
  v69 = v36;
  v70 = v37;
  v71 = v38;
  v66 = v33;
  *&v63 = v27;
  *(&v63 + 1) = 7633012;
  v64 = 0xE300000000000000;
  strcpy(v65, "dataprotection");
  v65[15] = -18;
  v79 = v46;
  v67 = v34;
  sub_1000195E4(&v63);
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v49 = v33;
  v47[0] = v27;
  v47[1] = 7633012;
  v47[2] = 0xE300000000000000;
  strcpy(v48, "dataprotection");
  v48[15] = -18;
  v62 = v46;
  v50 = v34;
  return sub_100002CF0(v47, &qword_1000A2840, &qword_100075110);
}

uint64_t sub_100017EF4(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1)
  {
    goto LABEL_8;
  }

  v9 = sub_10001C948(a1, *(v1 + 144));
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v2 = v9;
  v33 = v1;
  if (qword_1000A2178 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = v13;
      v16 = v15;
      v17 = swift_slowAlloc();
      v66[0] = v17;
      *v16 = 136315138;
      v2 = sub_100005C68(v2, v11, v66);

      *(v16 + 4) = v2;
      v18 = v14;
      v19 = v32;
      _os_log_impl(&_mh_execute_header, v32, v18, "splunk event: %s", v16, 0xCu);
      sub_100005E9C(v17);
    }

    else
    {
    }

    v1 = v33;
LABEL_8:
    v11 = *(v1 + 136);
    v20 = *(a1 + 208);
    v46 = *(a1 + 192);
    v47 = v20;
    v48 = *(a1 + 224);
    v21 = *(a1 + 144);
    v42 = *(a1 + 128);
    v43 = v21;
    v22 = *(a1 + 176);
    v44 = *(a1 + 160);
    v45 = v22;
    v23 = *(a1 + 80);
    v38 = *(a1 + 64);
    v39 = v23;
    v24 = *(a1 + 112);
    v40 = *(a1 + 96);
    v41 = v24;
    v25 = *(a1 + 16);
    v34 = *a1;
    v35 = v25;
    v26 = *(a1 + 48);
    v36 = *(a1 + 32);
    v37 = v26;
    sub_100020F48(a1, v66);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    v29 = v27;
    v30 = *(v5 + 8);
    v5 += 8;
    v30(v8, v4);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v28 <= -1.0)
    {
      goto LABEL_13;
    }

    if (v28 < 1.84467441e19)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v79 = v45;
  v80 = v46;
  v81 = v47;
  v75 = v41;
  v76 = v42;
  v77 = v43;
  v78 = v44;
  v71 = v37;
  v72 = v38;
  v73 = v39;
  v74 = v40;
  v68 = v34;
  v69 = v35;
  v66[0] = v28;
  v66[1] = 7633012;
  v66[2] = 0xE300000000000000;
  strcpy(v67, "dataprotection");
  v67[15] = -18;
  v82 = v48;
  v70 = v36;
  sub_1000197AC(v66);
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  v57 = v40;
  v51 = v34;
  v52 = v35;
  v49[0] = v28;
  v49[1] = 7633012;
  v49[2] = 0xE300000000000000;
  strcpy(v50, "dataprotection");
  v50[15] = -18;
  v65 = v48;
  v53 = v36;
  return sub_100002CF0(v49, &qword_1000A2820, &qword_100075100);
}

uint64_t sub_100018308(uint64_t a1, uint64_t a2)
{
  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return _swift_task_switch(sub_100018328, 0, 0);
}

uint64_t sub_100018328()
{
  v1 = *(v0 + 480);
  v2 = *(v1 + 16);
  *(v0 + 496) = v2;
  if (v2)
  {
    *(v0 + 504) = 0;
    v3 = *(v1 + 32);
    v4 = *(v1 + 64);
    *(v0 + 32) = *(v1 + 48);
    *(v0 + 48) = v4;
    *(v0 + 16) = v3;
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    v7 = *(v1 + 128);
    *(v0 + 96) = *(v1 + 112);
    *(v0 + 112) = v7;
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    v8 = *(v1 + 144);
    v9 = *(v1 + 160);
    v10 = *(v1 + 192);
    *(v0 + 160) = *(v1 + 176);
    *(v0 + 176) = v10;
    *(v0 + 128) = v8;
    *(v0 + 144) = v9;
    v11 = *(v1 + 208);
    v12 = *(v1 + 224);
    v13 = *(v1 + 240);
    *(v0 + 240) = *(v1 + 256);
    *(v0 + 208) = v12;
    *(v0 + 224) = v13;
    *(v0 + 192) = v11;
    sub_100020F48(v0 + 16, v0 + 248);
    if (qword_1000A2190 != -1)
    {
      swift_once();
    }

    v14 = qword_1000B1990;

    return _swift_task_switch(sub_100018490, v14, 0);
  }

  else
  {
    v15 = *(*(v0 + 488) + 136);
    v16 = swift_task_alloc();
    *(v0 + 512) = v16;
    *v16 = v0;
    v16[1] = sub_100018678;

    return sub_10005EA34();
  }
}

uint64_t sub_100018490()
{
  v1 = *(v0 + 488);
  sub_100017EF4(v0 + 16);
  sub_100020F80(v0 + 16);

  return _swift_task_switch(sub_100018504, 0, 0);
}

uint64_t sub_100018504()
{
  v1 = *(v0 + 504) + 1;
  if (v1 == *(v0 + 496))
  {
    v2 = *(*(v0 + 488) + 136);
    v3 = swift_task_alloc();
    *(v0 + 512) = v3;
    *v3 = v0;
    v3[1] = sub_100018678;

    return sub_10005EA34();
  }

  else
  {
    *(v0 + 504) = v1;
    v5 = *(v0 + 480) + 232 * v1;
    v7 = *(v5 + 48);
    v6 = *(v5 + 64);
    *(v0 + 16) = *(v5 + 32);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    v8 = *(v5 + 128);
    v10 = *(v5 + 80);
    v9 = *(v5 + 96);
    *(v0 + 96) = *(v5 + 112);
    *(v0 + 112) = v8;
    *(v0 + 64) = v10;
    *(v0 + 80) = v9;
    v11 = *(v5 + 192);
    v13 = *(v5 + 144);
    v12 = *(v5 + 160);
    *(v0 + 160) = *(v5 + 176);
    *(v0 + 176) = v11;
    *(v0 + 128) = v13;
    *(v0 + 144) = v12;
    v15 = *(v5 + 224);
    v14 = *(v5 + 240);
    v16 = *(v5 + 208);
    *(v0 + 240) = *(v5 + 256);
    *(v0 + 208) = v15;
    *(v0 + 224) = v14;
    *(v0 + 192) = v16;
    sub_100020F48(v0 + 16, v0 + 248);
    if (qword_1000A2190 != -1)
    {
      swift_once();
    }

    v17 = qword_1000B1990;

    return _swift_task_switch(sub_100018490, v17, 0);
  }
}

uint64_t sub_100018678(char a1)
{
  v2 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = a1;

  return _swift_task_switch(sub_100018778, 0, 0);
}

uint64_t sub_100018778()
{
  if ((*(v0 + 520) & 1) == 0)
  {
    sub_10000EEA4();
    swift_allocError();
    *v2 = 7;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 22;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001882C(uint64_t a1, uint64_t a2)
{
  v3[86] = v2;
  v3[85] = a2;
  v3[84] = a1;
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B1990;

  return _swift_task_switch(sub_1000188CC, v4, 0);
}

char *sub_1000188CC()
{
  v82 = v0;
  v1 = *(v0 + 672);
  *(v0 + 240) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 288) = v1[3];
  *(v0 + 304) = v2;
  *(v0 + 256) = v4;
  *(v0 + 272) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 361) = *(v1 + 121);
  *(v0 + 336) = v6;
  *(v0 + 352) = v5;
  *(v0 + 320) = v7;
  if (sub_100021278(v0 + 240) != 1)
  {
    v8 = *(v0 + 688);
    v9 = *(v0 + 352);
    v77 = *(v0 + 336);
    v78 = v9;
    v79 = *(v0 + 368);
    v10 = *(v0 + 288);
    v73 = *(v0 + 272);
    v74 = v10;
    v11 = *(v0 + 320);
    v75 = *(v0 + 304);
    v76 = v11;
    v12 = *(v0 + 256);
    v71 = *(v0 + 240);
    v72 = v12;
    sub_1000138E4(0x6F436C656E72654BLL, 0xEE00737265746E75, v80);
    v13 = v80[2];
    v14 = v80[3];
    v15 = v80[4];
    v16 = v80[1];
    *(v0 + 16) = v80[0];
    *(v0 + 32) = v16;
    v17 = v81;
    *(v0 + 48) = v13;
    *(v0 + 64) = v14;
    *(v0 + 80) = v15;
    *(v0 + 96) = v17;
    v18 = v75;
    *(v0 + 184) = v76;
    v19 = v78;
    *(v0 + 200) = v77;
    *(v0 + 216) = v19;
    *(v0 + 232) = v79;
    v20 = v71;
    *(v0 + 120) = v72;
    v21 = v74;
    *(v0 + 136) = v73;
    *(v0 + 152) = v21;
    *(v0 + 168) = v18;
    *(v0 + 104) = v20;
    sub_100016FBC((v0 + 16));
    sub_1000212F4(v0 + 16);
  }

  v22 = *(v0 + 688);
  v23 = *(v0 + 680);
  sub_1000138E4(0x756F43746E657645, 0xED0000737265746ELL, &v71);
  v24 = v73;
  v25 = v74;
  v26 = v75;
  v27 = v76;
  v29 = v71;
  v28 = v72;
  v30 = *v23;
  v31 = v23[2];
  *(v0 + 488) = v23[1];
  *(v0 + 504) = v31;
  *(v0 + 472) = v30;
  *(v0 + 384) = v29;
  *(v0 + 400) = v28;
  *(v0 + 416) = v24;
  *(v0 + 432) = v25;
  *(v0 + 448) = v26;
  *(v0 + 464) = v27;
  sub_1000173B4(v0 + 384);
  sub_100021294(v0 + 384);
  v32 = *(v22 + 120);
  v84 = AnalyticsConnection.getDomain()();
  if (v33)
  {
    goto LABEL_4;
  }

  if (!v84.value.domainName._object)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100002DB8(v46, qword_1000B1908);
    v35 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v47))
    {
      goto LABEL_8;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v35, v47, "failed to get domain status", v48, 2u);
    goto LABEL_19;
  }

  domainChangeCount = v84.value.domainChangeCount;
  countAndFlagsBits = v84.value.domainName._countAndFlagsBits;
  object = v84.value.domainName._object;
  sub_10006DCE4(v0 + 632);
  v49 = *(v0 + 688);
  v50 = *(v0 + 632);
  sub_1000138E4(0x65536E69616D6F44, 0xEF6E6F697463656CLL, &v71);
  v51 = v73;
  v52 = v74;
  v53 = v75;
  v54 = v76;
  v55 = v72;
  *(v0 + 520) = v71;
  *(v0 + 536) = v55;
  *(v0 + 552) = v51;
  *(v0 + 568) = v52;
  *(v0 + 584) = v53;
  *(v0 + 600) = v54;
  *(v0 + 608) = countAndFlagsBits;
  *(v0 + 616) = object;
  *(v0 + 624) = v50;
  *(v0 + 625) = domainChangeCount == 0;
  sub_100017760((v0 + 520));
  sub_1000212C4(v0 + 520);
  v56 = swift_slowAlloc();
  *(v56 + 1) = 0u;
  *(v56 + 17) = 0u;
  *(v56 + 33) = 0u;
  *(v56 + 49) = 0u;
  *v56 = 1;
  v57 = IOConnectCallStructMethod(v32, 6u, v56, 0x41uLL, 0, 0);
  if (v57)
  {
    result = mach_error_string(v57);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v58 = String.init(validatingUTF8:)();
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0x206E776F6E6B6E55;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xED0000726F727265;
    }

    sub_10000EEA4();
    swift_allocError();
    *v62 = v60;
    *(v62 + 8) = v61;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = 5;
    swift_willThrow();

    goto LABEL_4;
  }

  v85 = AnalyticsConnection.getDomain()();
  if (!v63)
  {
    v64 = v85.value.domainName._object;
    if (!v85.value.domainName._object)
    {
      goto LABEL_10;
    }

    v65 = v85.value.domainName._countAndFlagsBits;
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100002DB8(v66, qword_1000B1908);

    v35 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v35, v67))
    {

      goto LABEL_10;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v71 = v69;
    *v68 = 136315138;
    v70 = sub_100005C68(v65, v64, &v71);

    *(v68 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v35, v67, "changed monitoring domain to %s", v68, 0xCu);
    sub_100005E9C(v69);

LABEL_19:

    goto LABEL_8;
  }

LABEL_4:
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100002DB8(v34, qword_1000B1908);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v35, v36))
  {

    goto LABEL_10;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  *v37 = 138412290;
  swift_errorRetain();
  v39 = _swift_stdlib_bridgeErrorToNSError();
  *(v37 + 4) = v39;
  *v38 = v39;
  _os_log_impl(&_mh_execute_header, v35, v36, "error while reporting domain status: %@", v37, 0xCu);
  sub_100002CF0(v38, &qword_1000A4EC0, &qword_100076C00);

LABEL_8:

LABEL_10:
  v40 = *(*(v0 + 688) + 136);
  v41 = swift_task_alloc();
  *(v0 + 696) = v41;
  *v41 = v0;
  v41[1] = sub_100018FE8;

  return sub_10005EA34();
}

uint64_t sub_100018FE8()
{
  v1 = *(*v0 + 696);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000190DC(__int128 *a1)
{
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  v16 = *(a1 + 72);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v7 = *a1;
  v8 = a1[1];
  v2 = *(v1 + 32);
  sub_10000A0C8(&qword_1000A2880, &qword_100075120);
  sub_100021628(&qword_1000A2898, &qword_1000A2880, &qword_100075120);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return sub_10000B068(v3, v5);
}

uint64_t sub_100019294(__int128 *a1)
{
  v15 = a1[8];
  v16 = a1[9];
  v17 = a1[10];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v2 = *(v1 + 32);
  sub_10000A0C8(&qword_1000A28A0, &qword_100075128);
  sub_100021628(&qword_1000A28B8, &qword_1000A28A0, &qword_100075128);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return sub_10000B068(v3, v5);
}

uint64_t sub_10001944C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = *(v1 + 32);
  sub_10000A0C8(&qword_1000A2860, &qword_100075118);
  sub_100021628(&qword_1000A2878, &qword_1000A2860, &qword_100075118);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return sub_10000B068(v3, v5);
}

uint64_t sub_1000195E4(__int128 *a1)
{
  v19 = a1[12];
  v20 = a1[13];
  v21 = a1[14];
  v22 = a1[15];
  v15 = a1[8];
  v16 = a1[9];
  v17 = a1[10];
  v18 = a1[11];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v2 = *(v1 + 32);
  sub_10000A0C8(&qword_1000A2840, &qword_100075110);
  sub_100021628(&qword_1000A2858, &qword_1000A2840, &qword_100075110);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return sub_10000B068(v3, v5);
}

uint64_t sub_1000197AC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = *(v1 + 32);
  sub_10000A0C8(&qword_1000A2820, &qword_100075100);
  sub_100021628(&qword_1000A2838, &qword_1000A2820, &qword_100075100);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();
  return sub_10000B068(v3, v5);
}

uint64_t sub_100019944()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_10000A0C8(&qword_1000A28C0, &qword_100075130) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v6 = qword_1000B1990;
  v1[8] = qword_1000B1990;

  return _swift_task_switch(sub_100019A80, v6, 0);
}

uint64_t sub_100019A80(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  *(v3 + 128) = v7;
  if ((v7 & 1) != 0 || (*(v5 + 48) & 1) != 0 || (v8 = *(v5 + 40), v9 = __OFADD__(v6, v8), v6 += v8, !v9))
  {
    *(v3 + 72) = v6;
    *(v3 + 80) = *(v5 + 128);
    type metadata accessor for AnalyticsStoreContext();
    sub_10002167C(&qword_1000A2338, 255, type metadata accessor for AnalyticsStoreContext);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    a1 = sub_100019B70;
    a2 = v10;
    a3 = v12;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100019B70()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = sub_100042C10();
  v5 = v4;
  *(v0 + 88) = 0;
  *(v0 + 96) = v3;
  v6 = *(v0 + 64);
  *(v0 + 129) = v5;

  return _swift_task_switch(sub_100019C08, v6, 0);
}

uint64_t sub_100019C08()
{
  if (*(v0 + 129))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 48);
    v3 = *(v0 + 40);
    sub_100002CF0(*(v0 + 56), &qword_1000A28C0, &qword_100075130);

    v4 = *(v0 + 8);

    return v4(v1, 1);
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  sub_1000216C4(*(v0 + 56), v6);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 48);
  if (v9 == 1)
  {
    sub_100002CF0(*(v0 + 48), &qword_1000A28C0, &qword_100075130);
LABEL_12:
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002DB8(v14, qword_1000B1908);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "invalid report time from database", v17, 2u);
    }

    goto LABEL_17;
  }

  (*(*(v0 + 32) + 32))(*(v0 + 40), *(v0 + 48), *(v0 + 24));
  Date.timeIntervalSinceNow.getter();
  v12 = round(v11);
  if (v12 <= -9.22337204e18 || v12 >= 9.22337204e18)
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    goto LABEL_12;
  }

  v24 = v12;
  if ((*(v0 + 128) & 1) == 0 && *(v0 + 72) < v24)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002DB8(v25, qword_1000B1908);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "report time from database is too far in future", v28, 2u);
    }

    v30 = *(v0 + 32);
    v29 = *(v0 + 40);
    v31 = *(v0 + 24);
    v32 = *(v0 + 72);

    (*(v30 + 8))(v29, v31);
    v18 = 1000000000000000000 * v32;
    v19 = ((v32 >> 63) & 0xF21F494C589C0000) + ((v32 * 0xDE0B6B3A7640000uLL) >> 64);
    goto LABEL_18;
  }

  if (v24 > 0)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002DB8(v33, qword_1000B1908);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v34, v35, "first report time from database: %ld", v36, 0xCu);
    }

    v38 = *(v0 + 32);
    v37 = *(v0 + 40);
    v39 = *(v0 + 24);

    (*(v38 + 8))(v37, v39);
    v18 = 1000000000000000000 * v24;
    v19 = (v24 * 0xDE0B6B3A7640000uLL) >> 64;
    goto LABEL_18;
  }

  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100002DB8(v40, qword_1000B1908);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 32);
  v44 = *(v0 + 40);
  v46 = *(v0 + 24);
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "report time from database is past due", v47, 2u);
  }

  (*(v45 + 8))(v44, v46);
LABEL_17:
  v18 = 0;
  v19 = 0;
LABEL_18:
  v20 = *(*(v0 + 16) + 120);
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_10001A1AC;
  v22 = *(v0 + 96);
  v23 = *(v0 + 16);

  return sub_10001A4BC(v20, v18, v19, 0, v22, 0);
}

uint64_t sub_10001A1AC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(v6 + 112) = v2;

  v9 = *(v6 + 64);
  if (v2)
  {
    v10 = sub_10001A424;
  }

  else
  {
    *(v6 + 130) = a2;
    *(v6 + 120) = a1;
    v10 = sub_10001A2F0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10001A2F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 130);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  sub_100002CF0(*(v0 + 56), &qword_1000A28C0, &qword_100075130);

  v5 = *(v0 + 8);

  return v5(v1, v2 & 1);
}

uint64_t sub_10001A3A4()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001A424()
{
  sub_100002CF0(v0[7], &qword_1000A28C0, &qword_100075130);
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001A4BC(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 656) = v6;
  *(v7 + 154) = a6;
  *(v7 + 648) = a5;
  *(v7 + 153) = a4;
  *(v7 + 640) = a3;
  *(v7 + 632) = a2;
  *(v7 + 156) = a1;
  v8 = type metadata accessor for ContinuousClock();
  *(v7 + 664) = v8;
  v9 = *(v8 - 8);
  *(v7 + 672) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 680) = swift_task_alloc();
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v11 = qword_1000B1990;
  *(v7 + 688) = qword_1000B1990;

  return _swift_task_switch(sub_10001A5CC, v11, 0);
}

uint64_t sub_10001A5CC()
{
  if ((*(v0 + 153) & 1) == 0)
  {
    v5 = *(v0 + 640);
    v6 = *(v0 + 632);
    if (static Duration.< infix(_:_:)())
    {
      v7 = *(v0 + 680);
      static Clock<>.continuous.getter();
      v8 = swift_task_alloc();
      *(v0 + 696) = v8;
      *v8 = v0;
      v8[1] = sub_10001AB98;
      v9 = *(v0 + 680);
      v10 = *(v0 + 640);
      v11 = *(v0 + 632);

      return sub_10001B76C(v11, v10, 0, 0, 1);
    }
  }

  if (*(v0 + 154))
  {
    if (qword_1000A2180 != -1)
    {
      swift_once();
    }

    v13 = qword_1000B1920;
    add_explicit = atomic_fetch_add_explicit((qword_1000B1920 + 16), 1uLL, memory_order_relaxed);
    __swp(v13 + 24, (v13 + 24));
    v48 = v13 + 24;
    __swp(v1, (v13 + 32));
    __swp(v2, (v13 + 40));
    __swp(v3, (v13 + 48));
    __swp(v4, (v13 + 56));
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002DB8(v15, qword_1000B1908);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      v19 = add_explicit;
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v13 + 16);
    _os_log_impl(&_mh_execute_header, v16, v17, "starting new generation %ld", v18, 0xCu);
    v19 = add_explicit;
  }

  else
  {
    if (qword_1000A2180 != -1)
    {
      swift_once();
    }

    v19 = *(qword_1000B1920 + 16);
    v48 = *(qword_1000B1920 + 24);
    v1 = *(qword_1000B1920 + 32);
    v2 = *(qword_1000B1920 + 40);
    v3 = *(qword_1000B1920 + 48);
    v4 = *(qword_1000B1920 + 56);
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100002DB8(v20, qword_1000B1908);
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v16, v21);
    add_explicit = *(v0 + 648);
    if (!v22)
    {
      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = add_explicit;
    _os_log_impl(&_mh_execute_header, v16, v21, "retrying report for generation %ld", v23, 0xCu);
    add_explicit = *(v0 + 648);
  }

LABEL_21:
  v24 = (v0 + 160);
  *(v0 + 712) = add_explicit;
  v25 = *(v0 + 156);

  *(v0 + 584) = v19;
  *(v0 + 592) = v48;
  *(v0 + 600) = v1;
  *(v0 + 608) = v2;
  *(v0 + 616) = v3;
  *(v0 + 624) = v4;
  AnalyticsConnection.getAnalyticsCounters()((v0 + 448));
  if (v26)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100002DB8(v27, qword_1000B1908);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "failed to get kernel counters for splunk report: %@", v30, 0xCu);
      sub_100002CF0(v31, &qword_1000A4EC0, &qword_100076C00);
    }

    else
    {
    }

    sub_100021004(v0 + 160);
  }

  else
  {
    v33 = *(v0 + 576);
    v34 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v34;
    v35 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v35;
    v36 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v36;
    v37 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v37;
    *(v0 + 432) = v33;
    sub_100021028(v0 + 304);
    v38 = *(v0 + 416);
    *(v0 + 256) = *(v0 + 400);
    *(v0 + 272) = v38;
    *(v0 + 281) = *(v0 + 425);
    v39 = *(v0 + 352);
    *(v0 + 192) = *(v0 + 336);
    *(v0 + 208) = v39;
    v40 = *(v0 + 384);
    *(v0 + 224) = *(v0 + 368);
    *(v0 + 240) = v40;
    v41 = *(v0 + 320);
    *v24 = *(v0 + 304);
    *(v0 + 176) = v41;
  }

  v42 = *(v0 + 272);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v42;
  *(v0 + 137) = *(v0 + 281);
  v43 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v43;
  v44 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v44;
  v45 = *(v0 + 176);
  *(v0 + 16) = *v24;
  *(v0 + 32) = v45;
  v46 = swift_task_alloc();
  *(v0 + 720) = v46;
  *v46 = v0;
  v46[1] = sub_10001B288;
  v47 = *(v0 + 656);

  return sub_10001882C(v0 + 16, v0 + 584);
}

uint64_t sub_10001AB98()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *(*v1 + 680);
  v5 = *(*v1 + 672);
  v6 = *(*v1 + 664);
  v7 = *v1;
  *(*v1 + 704) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 688);
  if (v0)
  {
    v9 = sub_10001B224;
  }

  else
  {
    v9 = sub_10001AD20;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10001AD20()
{
  v42 = *(v0 + 704);
  if (*(v0 + 154))
  {
    if (qword_1000A2180 != -1)
    {
      swift_once();
    }

    v5 = qword_1000B1920;
    add_explicit = atomic_fetch_add_explicit((qword_1000B1920 + 16), 1uLL, memory_order_relaxed);
    __swp(v5 + 24, (v5 + 24));
    v41 = v5 + 24;
    __swp(v2, (v5 + 32));
    __swp(v3, (v5 + 40));
    __swp(v4, (v5 + 48));
    __swp(v1, (v5 + 56));
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002DB8(v7, qword_1000B1908);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v5 + 16);
      _os_log_impl(&_mh_execute_header, v8, v9, "starting new generation %ld", v10, 0xCu);
      v11 = add_explicit;
LABEL_14:

      goto LABEL_16;
    }

    v11 = add_explicit;
  }

  else
  {
    if (qword_1000A2180 != -1)
    {
      swift_once();
    }

    v11 = *(qword_1000B1920 + 16);
    v41 = *(qword_1000B1920 + 24);
    v2 = *(qword_1000B1920 + 32);
    v3 = *(qword_1000B1920 + 40);
    v4 = *(qword_1000B1920 + 48);
    v1 = *(qword_1000B1920 + 56);
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002DB8(v12, qword_1000B1908);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v8, v13);
    add_explicit = *(v0 + 648);
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = add_explicit;
      _os_log_impl(&_mh_execute_header, v8, v13, "retrying report for generation %ld", v15, 0xCu);
      add_explicit = *(v0 + 648);
      goto LABEL_14;
    }
  }

LABEL_16:
  v16 = (v0 + 160);
  *(v0 + 712) = add_explicit;
  v17 = *(v0 + 156);

  *(v0 + 584) = v11;
  *(v0 + 592) = v41;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 624) = v1;
  AnalyticsConnection.getAnalyticsCounters()((v0 + 448));
  if (v18)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002DB8(v19, qword_1000B1908);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "failed to get kernel counters for splunk report: %@", v22, 0xCu);
      sub_100002CF0(v23, &qword_1000A4EC0, &qword_100076C00);
    }

    else
    {
    }

    sub_100021004(v0 + 160);
  }

  else
  {
    v25 = *(v0 + 576);
    v26 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v26;
    v27 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v27;
    v28 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v28;
    v29 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v29;
    *(v0 + 432) = v25;
    sub_100021028(v0 + 304);
    v30 = *(v0 + 416);
    *(v0 + 256) = *(v0 + 400);
    *(v0 + 272) = v30;
    *(v0 + 281) = *(v0 + 425);
    v31 = *(v0 + 352);
    *(v0 + 192) = *(v0 + 336);
    *(v0 + 208) = v31;
    v32 = *(v0 + 384);
    *(v0 + 224) = *(v0 + 368);
    *(v0 + 240) = v32;
    v33 = *(v0 + 320);
    *v16 = *(v0 + 304);
    *(v0 + 176) = v33;
  }

  v34 = *(v0 + 272);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v34;
  *(v0 + 137) = *(v0 + 281);
  v35 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v35;
  v36 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v36;
  v37 = *(v0 + 176);
  *(v0 + 16) = *v16;
  *(v0 + 32) = v37;
  v38 = swift_task_alloc();
  *(v0 + 720) = v38;
  *v38 = v0;
  v38[1] = sub_10001B288;
  v39 = *(v0 + 656);

  return sub_10001882C(v0 + 16, v0 + 584);
}

uint64_t sub_10001B224()
{
  v1 = v0[85];

  v2 = v0[1];
  v3 = v0[88];

  return v2();
}

uint64_t sub_10001B288()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[91] = v4;
  *v4 = v3;
  v4[1] = sub_10001B3E0;
  v5 = v1[89];
  v6 = v1[82];

  return sub_100015FB0(v5);
}

uint64_t sub_10001B3E0(char a1)
{
  v3 = *(*v1 + 728);
  v4 = *(*v1 + 712);
  v5 = *(*v1 + 680);
  v6 = *v1;

  v7 = a1 & 1;
  if (v7)
  {
    v4 = 0;
  }

  v8 = *(v6 + 8);

  return v8(v4, v7);
}

uint64_t sub_10001B524(char a1)
{
  if (*(v1 + 32))
  {
    return 0;
  }

  if ((a1 & 1) != 0 && (*(v1 + 64) & 1) == 0)
  {
    v3 = sub_10001DC68(*(v1 + 56), *(v1 + 72), *(v1 + 80));
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002DB8(v9, qword_1000B1908);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    v8 = "next report retry in %ld seconds";
  }

  else
  {
    v3 = sub_10001DC68(*(v1 + 24), *(v1 + 40), *(v1 + 48));
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002DB8(v4, qword_1000B1908);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    v8 = "next report in %ld seconds";
  }

  _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 0xCu);

LABEL_14:

  return 1000000000000000000 * v3;
}

uint64_t sub_10001B724()
{
  v1 = v0[16];

  v2 = v0[17];

  v3 = v0[18];

  return _swift_deallocClassInstance(v0, 152, 7);
}

uint64_t sub_10001B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10001B86C, 0, 0);
}

uint64_t sub_10001B86C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10002167C(&qword_1000A27E8, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10002167C(&qword_1000A27F0, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10001BA04;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10001BA04()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10001BBC0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10001BBC0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_10001BC2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10001BC5C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001BCE8(_OWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23[3] = &type metadata for DomainSelectionReport;
  v23[4] = sub_10002143C();
  v23[5] = sub_100021490();
  v6 = swift_allocObject();
  v23[0] = v6;
  v7 = a1[5];
  v6[5] = a1[4];
  v6[6] = v7;
  *(v6 + 106) = *(a1 + 90);
  v8 = a1[1];
  v6[1] = *a1;
  v6[2] = v8;
  v9 = a1[3];
  v6[3] = a1[2];
  v6[4] = v9;
  sub_100006978(v23, &type metadata for DomainSelectionReport);
  v10 = *(a2 + 16);
  sub_100021404(a1, v22);

  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;

  static String.Encoding.utf8.getter();
  v14 = String.init(data:encoding:)();
  if (v15)
  {
    v16 = v14;
    sub_10000B068(v11, v13);
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002DB8(v18, qword_1000B1908);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "JSON utf8 conversion failed", v21, 2u);
    }

    sub_10000B068(v11, v13);

    v16 = 0;
  }

  sub_100005E9C(v23);
  return v16;
}

uint64_t sub_10001BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v24[3] = &type metadata for EventCounterReport;
  v24[4] = sub_10002151C();
  v24[5] = sub_100021570();
  v6 = swift_allocObject();
  v24[0] = v6;
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  v10 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v10;
  sub_100006978(v24, &type metadata for EventCounterReport);
  v11 = *(a2 + 16);
  sub_1000214E4(a1, v23);

  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  static String.Encoding.utf8.getter();
  v15 = String.init(data:encoding:)();
  if (v16)
  {
    v17 = v15;
    sub_10000B068(v12, v14);
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002DB8(v19, qword_1000B1908);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "JSON utf8 conversion failed", v22, 2u);
    }

    sub_10000B068(v12, v14);

    v17 = 0;
  }

  sub_100005E9C(v24);
  return v17;
}

uint64_t sub_10001C2F0(_OWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v27[3] = &type metadata for KernelCounterReport;
  v27[4] = sub_10002135C();
  v27[5] = sub_1000213B0();
  v6 = swift_allocObject();
  v27[0] = v6;
  v7 = a1[11];
  v6[11] = a1[10];
  v6[12] = v7;
  v8 = a1[13];
  v6[13] = a1[12];
  v6[14] = v8;
  v9 = a1[7];
  v6[7] = a1[6];
  v6[8] = v9;
  v10 = a1[9];
  v6[9] = a1[8];
  v6[10] = v10;
  v11 = a1[3];
  v6[3] = a1[2];
  v6[4] = v11;
  v12 = a1[5];
  v6[5] = a1[4];
  v6[6] = v12;
  v13 = a1[1];
  v6[1] = *a1;
  v6[2] = v13;
  sub_100006978(v27, &type metadata for KernelCounterReport);
  v14 = *(a2 + 16);
  sub_100021324(a1, &v26);

  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;

  static String.Encoding.utf8.getter();
  v18 = String.init(data:encoding:)();
  if (v19)
  {
    v20 = v18;
    sub_10000B068(v15, v17);
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002DB8(v21, qword_1000B1908);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "JSON utf8 conversion failed", v24, 2u);
    }

    sub_10000B068(v15, v17);

    v20 = 0;
  }

  sub_100005E9C(v27);
  return v20;
}

uint64_t sub_10001C618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v26[3] = &type metadata for ViolationReport;
  v26[4] = sub_1000211D0();
  v26[5] = sub_100021224();
  v6 = swift_allocObject();
  v26[0] = v6;
  v7 = *(a1 + 176);
  *(v6 + 176) = *(a1 + 160);
  *(v6 + 192) = v7;
  *(v6 + 208) = *(a1 + 192);
  *(v6 + 224) = *(a1 + 208);
  v8 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v8;
  v9 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v9;
  v10 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v10;
  v11 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v11;
  v12 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v12;
  sub_100006978(v26, &type metadata for ViolationReport);
  v13 = *(a2 + 16);
  sub_100020EE0(a1, &v25);

  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  static String.Encoding.utf8.getter();
  v17 = String.init(data:encoding:)();
  if (v18)
  {
    v19 = v17;
    sub_10000B068(v14, v16);
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100002DB8(v20, qword_1000B1908);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "JSON utf8 conversion failed", v23, 2u);
    }

    sub_10000B068(v14, v16);

    v19 = 0;
  }

  sub_100005E9C(v26);
  return v19;
}

uint64_t sub_10001C948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v27[3] = &type metadata for FileAccessReport;
  v27[4] = sub_100021128();
  v27[5] = sub_10002117C();
  v6 = swift_allocObject();
  v27[0] = v6;
  v7 = *(a1 + 208);
  *(v6 + 208) = *(a1 + 192);
  *(v6 + 224) = v7;
  *(v6 + 240) = *(a1 + 224);
  v8 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v8;
  v9 = *(a1 + 176);
  *(v6 + 176) = *(a1 + 160);
  *(v6 + 192) = v9;
  v10 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v10;
  v11 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v11;
  v12 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v12;
  v13 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v13;
  sub_100006978(v27, &type metadata for FileAccessReport);
  v14 = *(a2 + 16);
  sub_100020F48(a1, &v26);

  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;

  static String.Encoding.utf8.getter();
  v18 = String.init(data:encoding:)();
  if (v19)
  {
    v20 = v18;
    sub_10000B068(v15, v17);
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002DB8(v21, qword_1000B1908);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "JSON utf8 conversion failed", v24, 2u);
    }

    sub_10000B068(v15, v17);

    v20 = 0;
  }

  sub_100005E9C(v27);
  return v20;
}

uint64_t sub_10001CC78(uint64_t a1, int a2, uint64_t a3)
{
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for MessageEncoder();
  v9 = swift_allocObject();
  v10 = type metadata accessor for JSONEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v9 + 16) = JSONEncoder.init()();

  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();

  *(v3 + 144) = v9;
  v13 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v13;
  v14 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v14;
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v19 = a1 + 88;
  v17 = *(a1 + 88);
  v18 = *(v19 + 8);
  *(v3 + 112) = v18;
  *(v3 + 48) = v16;
  *(v3 + 64) = v15;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  type metadata accessor for SplunkLogger();
  v20 = swift_allocObject();
  v21 = *(v10 + 48);
  v22 = *(v10 + 52);
  swift_allocObject();

  v23 = JSONEncoder.init()();
  *(v20 + 24) = v18;
  *(v20 + 32) = v23;
  *(v20 + 40) = xmmword_100074630;
  *(v20 + 16) = v17;
  swift_beginAccess();
  Data._Representation.reserveCapacity(_:)(v18);
  swift_endAccess();
  *(v3 + 136) = v20;
  return v3;
}

double sub_10001CE0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000138E4(0x6F6974616C6F6956, 0xE90000000000006ELL, &v50);
  v34 = *(&v50 + 1);
  v35 = v50;
  v32 = v52;
  v33 = v51;
  v30 = v54;
  v31 = v53;
  v28 = v56;
  v29 = v55;
  v26 = v58;
  v27 = v57;
  v25 = v59;
  *&v50 = a1;
  swift_getKeyPath();
  sub_10002167C(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10002167C(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  v23 = *(&v50 + 1);
  v24 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v21 = *(&v50 + 1);
  v22 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v20 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000210C0(&qword_1000A27C0, &qword_1000A25C0, &qword_100074D80);
  PersistentModel.getValue<A>(forKey:)();

  v19 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v18 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v16 = *(&v50 + 1);
  v17 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v14 = *(&v50 + 1);
  v15 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v4 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v5 = v50;
  *&v50 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v6 = v50;
  *&v39 = v35;
  *(&v39 + 1) = v34;
  *&v40 = v33;
  *(&v40 + 1) = v32;
  *&v41 = v31;
  *(&v41 + 1) = v30;
  *&v42 = v29;
  *(&v42 + 1) = v28;
  *&v43 = v27;
  *(&v43 + 1) = v26;
  *&v44 = v25;
  *(&v44 + 1) = v24;
  *&v45 = v23;
  *(&v45 + 1) = v22;
  *v46 = v21;
  *&v46[8] = v20;
  *&v46[40] = v18;
  *&v46[24] = v19;
  *&v46[56] = v17;
  *&v47 = v16;
  *(&v47 + 1) = v15;
  *&v48 = v14;
  BYTE8(v48) = v4;
  BYTE9(v48) = v5;
  HIWORD(v48) = v38;
  *(&v48 + 10) = v37;
  v49 = v50;
  *&v50 = v35;
  *(&v50 + 1) = v34;
  v51 = v33;
  v52 = v32;
  v53 = v31;
  v54 = v30;
  v55 = v29;
  v56 = v28;
  v57 = v27;
  v58 = v26;
  v59 = v25;
  v60 = v24;
  v61 = v23;
  v62 = v22;
  v63 = v21;
  v64 = v20;
  v66 = v18;
  v65 = v19;
  v67 = v17;
  v68 = v16;
  v69 = v15;
  v70 = v14;
  v71 = v4;
  v72 = v5;
  v73 = v37;
  v74 = v38;
  v75 = v6;
  sub_100020EE0(&v39, &v36);
  sub_100020F18(&v50);
  v7 = v47;
  *(a2 + 160) = *&v46[48];
  *(a2 + 176) = v7;
  *(a2 + 192) = v48;
  *(a2 + 208) = v49;
  v8 = *v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v8;
  v9 = *&v46[32];
  *(a2 + 128) = *&v46[16];
  *(a2 + 144) = v9;
  v10 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v10;
  v11 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v11;
  result = *&v39;
  v13 = v40;
  *a2 = v39;
  *(a2 + 16) = v13;
  return result;
}

__n128 sub_10001D540@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000138E4(0x65636341656C6946, 0xEA00000000007373, v29);
  v27 = v29[1];
  v28 = v29[0];
  v25 = v29[3];
  v26 = v29[2];
  v24 = v29[4];
  v23 = v30;
  *&v29[0] = a1;
  swift_getKeyPath();
  sub_10002167C(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10002167C(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  v21 = *(&v29[0] + 1);
  v22 = *&v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v19 = *(&v29[0] + 1);
  v20 = *&v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000210C0(&qword_1000A27C0, &qword_1000A25C0, &qword_100074D80);
  PersistentModel.getValue<A>(forKey:)();

  v18 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v17 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v15 = *(&v29[0] + 1);
  v16 = *&v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v13 = *(&v29[0] + 1);
  v14 = *&v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v12 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v11 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000210C0(&qword_1000A2810, &qword_1000A2818, &qword_100075050);
  PersistentModel.getValue<A>(forKey:)();

  v10 = *&v29[0];
  v31 = BYTE8(v29[0]);
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v9 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v8 = v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v4 = *&v29[0];
  *&v29[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v5 = *&v29[0];
  v6 = v31;
  *a2 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v23;
  *(a2 + 88) = v22;
  *(a2 + 96) = v21;
  *(a2 + 104) = v20;
  *(a2 + 112) = v19;
  result = v18;
  *(a2 + 136) = v17;
  *(a2 + 120) = v18;
  *(a2 + 152) = v16;
  *(a2 + 160) = v15;
  *(a2 + 168) = v14;
  *(a2 + 176) = v13;
  *(a2 + 184) = v12;
  *(a2 + 185) = v11;
  *(a2 + 192) = v10;
  *(a2 + 200) = v6;
  *(a2 + 204) = v9;
  *(a2 + 208) = v8;
  *(a2 + 216) = v4;
  *(a2 + 224) = v5;
  return result;
}

unint64_t sub_10001DC68(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else if (((2 * a2) & 0x8000000000000000) == 0)
    {
      v4 = result;
      result = sub_10001BC5C((2 * a2) | 1);
      v5 = result - a2;
      if (!__OFSUB__(result, a2))
      {
        result = v4 + v5;
        if (!__OFADD__(v4, v5))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10001DCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000830E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100083100 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100083120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100083140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614274726F706572 && a2 == 0xEF657A6953686374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F706552676F6CLL && a2 == 0xEA00000000007374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100083160 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10001DF74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000A0C8(&qword_1000A27D8, &qword_100074E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_1000137C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005E9C(a1);
  }

  v33 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v13 & 1;
  v33 = 2;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v14 & 1;
  v33 = 3;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v15 & 1;
  v33 = 4;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v16 & 1;
  v33 = 5;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 6;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 7;
  sub_100020FB0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v11 & 1;
  v28 &= 1u;
  (*(v6 + 8))(v9, v5);
  v26 = v33;
  v17 = v34;
  v18 = v38;
  v19 = v37;
  v20 = v36;
  v21 = v35;
  result = sub_100005E9C(a1);
  *a2 = v27;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  v23 = v31;
  *(a2 + 24) = v32;
  *(a2 + 32) = v19;
  *(a2 + 40) = v23;
  *(a2 + 48) = v20;
  v24 = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v21;
  *(a2 + 72) = v24;
  *(a2 + 80) = v28;
  *(a2 + 88) = v26;
  *(a2 + 96) = v17;
  return result;
}

unint64_t sub_10001E288()
{
  result = qword_1000A25E8;
  if (!qword_1000A25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A25E8);
  }

  return result;
}

uint64_t sub_10001E2DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F4D7768 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795474726F706572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68746150637273 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F4D737365636361 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100083180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC00000064656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000831A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000831C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x745367616279656BLL && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6279654B65726F6DLL && a2 == 0xEF65746174536761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 18;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_10001E8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = sub_10000A0C8(&qword_1000A27D0, &qword_100074E80);
  v5 = *(v121 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v121);
  v8 = &v41 - v7;
  v9 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10001E288();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005E9C(a1);
  }

  v10 = a1;
  v11 = v5;
  LOBYTE(v84[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v84[0]) = 1;
  v67 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v13;
  LOBYTE(v84[0]) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  *&v65 = v15;
  v66 = v14;
  LOBYTE(v84[0]) = 3;
  v64 = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = v10;
  *(&v65 + 1) = v16;
  v62 = v17;
  LOBYTE(v84[0]) = 4;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v18;
  LOBYTE(v84[0]) = 5;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = v19;
  LOBYTE(v84[0]) = 6;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = v20;
  LOBYTE(v84[0]) = 7;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v58 = v21;
  LOBYTE(v84[0]) = 8;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v57 = v22;
  LOBYTE(v84[0]) = 9;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = v24;
  v25 = v23;
  LOBYTE(v84[0]) = 10;
  v63 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = v26;
  LOBYTE(v84[0]) = 11;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = v27;
  LOBYTE(v84[0]) = 12;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v84[0]) = 13;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v84[0]) = 14;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v118 = v28 & 1;
  LOBYTE(v84[0]) = 15;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v84[0]) = 16;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v84[0]) = 17;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v115 = 18;
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 &= 1u;
  v47 &= 1u;
  (*(v11 + 8))(v8, v121);
  *(&v80 + 10) = v119;
  *(&v81 + 9) = v116;
  v41 = v12;
  v30 = v67;
  v29 = v68;
  *&v69 = v12;
  *(&v69 + 1) = v67;
  *&v70 = v68;
  *(&v70 + 1) = v66;
  v71 = v65;
  v32 = v61;
  v31 = v62;
  *&v72 = v62;
  *(&v72 + 1) = v53;
  *&v73 = v61;
  *(&v73 + 1) = v52;
  *&v74 = v60;
  *(&v74 + 1) = v51;
  *&v75 = v59;
  *(&v75 + 1) = v50;
  *&v76 = v58;
  *(&v76 + 1) = v49;
  *&v77 = v57;
  *(&v77 + 1) = v25;
  *&v78 = v56;
  *(&v78 + 1) = v63;
  *&v79 = v55;
  *(&v79 + 1) = v48;
  *&v80 = v54;
  BYTE8(v80) = v47;
  BYTE9(v80) = v46;
  HIWORD(v80) = v120;
  *&v81 = v45;
  BYTE11(v81) = v117;
  LODWORD(v121) = v118;
  BYTE8(v81) = v118;
  HIDWORD(v81) = v44;
  LODWORD(v82) = v43;
  *(&v82 + 1) = v42;
  v83 = v64;
  sub_100020F48(&v69, v84);
  sub_100005E9C(v10);
  v84[0] = v41;
  v84[1] = v30;
  v84[2] = v29;
  v84[3] = v66;
  v85 = v65;
  v86 = v31;
  v87 = v53;
  v88 = v32;
  v89 = v52;
  v90 = v60;
  v91 = v51;
  v92 = v59;
  v93 = v50;
  v94 = v58;
  v95 = v49;
  v96 = v57;
  v97 = v25;
  v98 = v56;
  v99 = v63;
  v100 = v55;
  v101 = v48;
  v102 = v54;
  v103 = v47;
  v104 = v46;
  v105 = v119;
  v106 = v120;
  v107 = v45;
  v108 = v121;
  v109 = v116;
  v110 = v117;
  v111 = v44;
  v112 = v43;
  v113 = v42;
  v114 = v64;
  result = sub_100020F80(v84);
  v34 = v82;
  *(a2 + 192) = v81;
  *(a2 + 208) = v34;
  *(a2 + 224) = v83;
  v35 = v78;
  *(a2 + 128) = v77;
  *(a2 + 144) = v35;
  v36 = v80;
  *(a2 + 160) = v79;
  *(a2 + 176) = v36;
  v37 = v74;
  *(a2 + 64) = v73;
  *(a2 + 80) = v37;
  v38 = v76;
  *(a2 + 96) = v75;
  *(a2 + 112) = v38;
  v39 = v70;
  *a2 = v69;
  *(a2 + 16) = v39;
  v40 = v72;
  *(a2 + 32) = v71;
  *(a2 + 48) = v40;
  return result;
}

unint64_t sub_10001F440()
{
  result = qword_1000A25F8;
  if (!qword_1000A25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A25F8);
  }

  return result;
}

uint64_t sub_10001F494(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F4D7768 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795474726F706572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6150656372756F73 && a2 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000831E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x646563726F666E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_10001F9B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000A0C8(&qword_1000A27C8, &qword_100074E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v91 = a1;
  sub_100006978(a1, v10);
  sub_10001F440();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005E9C(v91);
  }

  else
  {
    v12 = v6;
    v67 = a2;
    LOBYTE(v82[0]) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v82[0]) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v65 = v15;
    LOBYTE(v82[0]) = 2;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v61 = v17;
    v64 = v16;
    LOBYTE(v82[0]) = 3;
    v63 = KeyedDecodingContainer.decode(_:forKey:)();
    v58 = v18;
    LOBYTE(v82[0]) = 4;
    v62 = KeyedDecodingContainer.decode(_:forKey:)();
    v57 = v19;
    LOBYTE(v82[0]) = 5;
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = v20;
    LOBYTE(v82[0]) = 6;
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v51 = 0;
    v55 = v21;
    LOBYTE(v82[0]) = 7;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v22;
    LOBYTE(v82[0]) = 8;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = v23;
    LOBYTE(v82[0]) = 9;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v24;
    LOBYTE(v82[0]) = 10;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    LOBYTE(v82[0]) = 11;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = v27;
    LOBYTE(v82[0]) = 12;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v59 = v28;
    LOBYTE(v82[0]) = 13;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v82[0]) = 14;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v88 = 15;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v43 & 1;
    v43 = v42 & 1;
    (*(v12 + 8))(v9, v5);
    *&v68 = v13;
    *(&v68 + 1) = v14;
    v30 = v64;
    *&v69 = v65;
    *(&v69 + 1) = v64;
    v31 = v61;
    *&v70 = v61;
    *(&v70 + 1) = v63;
    *&v71 = v58;
    *(&v71 + 1) = v62;
    *&v72 = v57;
    *(&v72 + 1) = v52;
    *&v73 = v56;
    *(&v73 + 1) = v50;
    *&v74 = v55;
    *(&v74 + 1) = v49;
    *&v75 = v54;
    *(&v75 + 1) = v48;
    *&v76 = v53;
    *(&v76 + 1) = v47;
    *&v77 = v66;
    *(&v77 + 1) = v46;
    *&v78 = v26;
    *(&v78 + 1) = v45;
    *&v79 = v60;
    *(&v79 + 1) = v44;
    *&v80 = v59;
    BYTE8(v80) = v29;
    v32 = v43;
    BYTE9(v80) = v43;
    v81 = v51;
    sub_100020EE0(&v68, v82);
    sub_100005E9C(v91);
    v82[0] = v13;
    v82[1] = v14;
    v82[2] = v65;
    v82[3] = v30;
    v82[4] = v31;
    v82[5] = v63;
    v82[6] = v58;
    v82[7] = v62;
    v82[8] = v57;
    v82[9] = v52;
    v82[10] = v56;
    v82[11] = v50;
    v82[12] = v55;
    v82[13] = v49;
    v82[14] = v54;
    v82[15] = v48;
    v82[16] = v53;
    v82[17] = v47;
    v82[18] = v66;
    v82[19] = v46;
    v82[20] = v26;
    v82[21] = v45;
    v82[22] = v60;
    v82[23] = v44;
    v82[24] = v59;
    v83 = v29;
    v84 = v32;
    v85 = v89;
    v86 = v90;
    v87 = v51;
    result = sub_100020F18(v82);
    v34 = v79;
    v35 = v67;
    *(v67 + 160) = v78;
    *(v35 + 176) = v34;
    *(v35 + 192) = v80;
    *(v35 + 208) = v81;
    v36 = v75;
    *(v35 + 96) = v74;
    *(v35 + 112) = v36;
    v37 = v77;
    *(v35 + 128) = v76;
    *(v35 + 144) = v37;
    v38 = v71;
    *(v35 + 32) = v70;
    *(v35 + 48) = v38;
    v39 = v73;
    *(v35 + 64) = v72;
    *(v35 + 80) = v39;
    v40 = v69;
    *v35 = v68;
    *(v35 + 16) = v40;
  }

  return result;
}

__n128 sub_100020430(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002045C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[104])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000204B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10002051C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100020568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1000205B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100020638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10002067C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1000206C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViolationReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViolationReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileAccessReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileAccessReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsReporterConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsReporterConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100020B84()
{
  result = qword_1000A2760;
  if (!qword_1000A2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2760);
  }

  return result;
}

unint64_t sub_100020BDC()
{
  result = qword_1000A2768;
  if (!qword_1000A2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2768);
  }

  return result;
}

unint64_t sub_100020C34()
{
  result = qword_1000A2770;
  if (!qword_1000A2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2770);
  }

  return result;
}

unint64_t sub_100020CD4()
{
  result = qword_1000A2780;
  if (!qword_1000A2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2780);
  }

  return result;
}

unint64_t sub_100020D2C()
{
  result = qword_1000A2788;
  if (!qword_1000A2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2788);
  }

  return result;
}

unint64_t sub_100020D84()
{
  result = qword_1000A2790;
  if (!qword_1000A2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2790);
  }

  return result;
}

unint64_t sub_100020DDC()
{
  result = qword_1000A2798;
  if (!qword_1000A2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2798);
  }

  return result;
}

unint64_t sub_100020E34()
{
  result = qword_1000A27A0;
  if (!qword_1000A27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A27A0);
  }

  return result;
}

unint64_t sub_100020E8C()
{
  result = qword_1000A27A8;
  if (!qword_1000A27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A27A8);
  }

  return result;
}

unint64_t sub_100020FB0()
{
  result = qword_1000A27E0;
  if (!qword_1000A27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A27E0);
  }

  return result;
}

double sub_100021004(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_100021030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFu)
  {
    if (a5 <= 0xCu)
    {
      if (a5 == 5)
      {
      }

      if (a5 == 9)
      {
      }
    }

    else if (a5 == 13 || a5 == 14 || a5 == 15)
    {
    }
  }

  else
  {
    if (a5 <= 0x12u)
    {
      if (a5 != 16 && a5 != 17 && a5 != 18)
      {
        return result;
      }
    }

    if (a5 == 19 || a5 == 20 || a5 == 21)
    {
    }
  }

  return result;
}

uint64_t sub_1000210C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100021128()
{
  result = qword_1000A2828;
  if (!qword_1000A2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2828);
  }

  return result;
}

unint64_t sub_10002117C()
{
  result = qword_1000A2830;
  if (!qword_1000A2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2830);
  }

  return result;
}

unint64_t sub_1000211D0()
{
  result = qword_1000A2848;
  if (!qword_1000A2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2848);
  }

  return result;
}

unint64_t sub_100021224()
{
  result = qword_1000A2850;
  if (!qword_1000A2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2850);
  }

  return result;
}

uint64_t sub_100021278(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10002135C()
{
  result = qword_1000A2868;
  if (!qword_1000A2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2868);
  }

  return result;
}

unint64_t sub_1000213B0()
{
  result = qword_1000A2870;
  if (!qword_1000A2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2870);
  }

  return result;
}

unint64_t sub_10002143C()
{
  result = qword_1000A2888;
  if (!qword_1000A2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2888);
  }

  return result;
}

unint64_t sub_100021490()
{
  result = qword_1000A2890;
  if (!qword_1000A2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2890);
  }

  return result;
}

unint64_t sub_10002151C()
{
  result = qword_1000A28A8;
  if (!qword_1000A28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28A8);
  }

  return result;
}

unint64_t sub_100021570()
{
  result = qword_1000A28B0;
  if (!qword_1000A28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28B0);
  }

  return result;
}

uint64_t sub_1000215C4(uint64_t a1)
{
  v3 = v1[4];

  v4 = v1[6];

  v5 = v1[8];

  v6 = v1[10];

  v7 = v1[12];

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100021628(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002167C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000216C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100021734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_100021770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1000217B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100021840(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002186C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_1000218B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100021920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100021968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000219D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = sub_10000A0C8(&qword_1000A28C8, &qword_100075378);
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v73);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100021F04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005E9C(a1);
  }

  LOBYTE(v44[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44[0]) = 1;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v11;
  LOBYTE(v44[0]) = 2;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v12;
  LOBYTE(v44[0]) = 3;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v13;
  LOBYTE(v44[0]) = 4;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v14;
  LOBYTE(v44[0]) = 5;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  v54 = 6;
  sub_100021F58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v73);
  v70 = v61;
  v71 = v62;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  v69 = v60;
  v64 = v55;
  v65 = v56;
  *(&v43[5] + 8) = v60;
  *(&v43[6] + 8) = v61;
  *(&v43[7] + 8) = v62;
  *(&v43[1] + 8) = v56;
  *(&v43[2] + 8) = v57;
  *(&v43[3] + 8) = v58;
  *(&v43[4] + 8) = v59;
  v72 = v63;
  *&v38 = v10;
  *(&v38 + 1) = v35;
  v17 = v36;
  v16 = v37;
  *&v39 = v37;
  *(&v39 + 1) = v34;
  v18 = v32;
  *&v40 = v36;
  *(&v40 + 1) = v31;
  *&v41 = v32;
  *(&v41 + 1) = v30;
  v19 = v33;
  *&v42 = v33;
  *(&v42 + 1) = v28;
  *&v43[0] = v29;
  *(&v43[8] + 1) = v63;
  *(v43 + 8) = v55;
  sub_100021324(&v38, v44);
  sub_100005E9C(a1);
  v50 = v69;
  v51 = v70;
  v52 = v71;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v49 = v68;
  v44[0] = v10;
  v44[1] = v35;
  v44[2] = v16;
  v44[3] = v34;
  v44[4] = v17;
  v44[5] = v31;
  v44[6] = v18;
  v44[7] = v30;
  v44[8] = v19;
  v44[9] = v28;
  v44[10] = v29;
  v53 = v72;
  v45 = v64;
  result = sub_1000212F4(v44);
  v21 = v43[6];
  a2[10] = v43[5];
  a2[11] = v21;
  v22 = v43[8];
  a2[12] = v43[7];
  a2[13] = v22;
  v23 = v43[2];
  a2[6] = v43[1];
  a2[7] = v23;
  v24 = v43[4];
  a2[8] = v43[3];
  a2[9] = v24;
  v25 = v41;
  a2[2] = v40;
  a2[3] = v25;
  v26 = v43[0];
  a2[4] = v42;
  a2[5] = v26;
  v27 = v39;
  *a2 = v38;
  a2[1] = v27;
  return result;
}

unint64_t sub_100021F04()
{
  result = qword_1000A28D0;
  if (!qword_1000A28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28D0);
  }

  return result;
}

unint64_t sub_100021F58()
{
  result = qword_1000A28D8;
  if (!qword_1000A28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28D8);
  }

  return result;
}

unint64_t sub_100021FAC()
{
  result = qword_1000A28E8;
  if (!qword_1000A28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28E8);
  }

  return result;
}

uint64_t sub_100022000(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F4D7768 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795474726F706572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737265746E756F63 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100022258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_10000A0C8(&qword_1000A2908, &qword_100075398);
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v46);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_1000230CC();
  v47 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005E9C(a1);
  }

  v10 = v5;
  LOBYTE(v57[0]) = 0;
  v11 = v46;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v57[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v14;
  LOBYTE(v57[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v16;
  v39 = v15;
  v40 = v13;
  LOBYTE(v57[0]) = 3;
  v42 = 0;
  v17 = a1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v19;
  LOBYTE(v57[0]) = 4;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v20;
  LOBYTE(v57[0]) = 5;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v21;
  v62 = 6;
  sub_100023120();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v47, v11);
  v46 = v59;
  v47 = v58;
  v34 = v60;
  v35 = *(&v59 + 1);
  v32 = v61;
  v33 = *(&v60 + 1);
  *&v48 = v12;
  *(&v48 + 1) = v40;
  v23 = v44;
  v22 = v45;
  *&v49 = v45;
  *(&v49 + 1) = v39;
  *&v50 = v44;
  *(&v50 + 1) = v18;
  v36 = v18;
  v24 = v41;
  *&v51 = v41;
  *(&v51 + 1) = v38;
  v25 = v43;
  *&v52 = v43;
  *(&v52 + 1) = v37;
  *&v53 = v42;
  *(&v53 + 1) = v58;
  v54 = v59;
  v55 = v60;
  v56 = v61;
  sub_1000214E4(&v48, v57);
  sub_100005E9C(v17);
  v57[0] = v12;
  v57[1] = v40;
  v57[2] = v22;
  v57[3] = v39;
  v57[4] = v23;
  v57[5] = v36;
  v57[6] = v24;
  v57[7] = v38;
  v57[8] = v25;
  v57[9] = v37;
  v57[10] = v42;
  v57[11] = v47;
  v57[12] = v46;
  v57[13] = v35;
  v57[14] = v34;
  v57[15] = v33;
  v57[16] = v32;
  result = sub_100021294(v57);
  v27 = v55;
  *(a2 + 96) = v54;
  *(a2 + 112) = v27;
  *(a2 + 128) = v56;
  v28 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v28;
  v29 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v29;
  v30 = v49;
  *a2 = v48;
  *(a2 + 16) = v30;
  return result;
}

uint64_t sub_100022724(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F4D7768 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795474726F706572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100083180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100083200 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100022A1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000A0C8(&qword_1000A28F0, &qword_100075388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100023078();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005E9C(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v48[0]) = 1;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v12;
  LOBYTE(v48[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v14;
  v34 = v13;
  LOBYTE(v48[0]) = 3;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v15;
  LOBYTE(v48[0]) = 4;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v16;
  LOBYTE(v48[0]) = 5;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v17;
  LOBYTE(v48[0]) = 6;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v18;
  LOBYTE(v48[0]) = 7;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = 8;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v19) = v19 & 1;
  (*(v6 + 8))(v9, v5);
  v51 = v20 & 1;
  *&v42 = v11;
  *(&v42 + 1) = v39;
  v21 = v41;
  *&v43 = v41;
  *(&v43 + 1) = v34;
  v22 = v40;
  *&v44 = v40;
  *(&v44 + 1) = v33;
  v23 = v38;
  *&v45 = v38;
  *(&v45 + 1) = v32;
  *&v46 = v37;
  *(&v46 + 1) = v31;
  *v47 = v36;
  v24 = v35;
  *&v47[8] = v30;
  *&v47[16] = v35;
  v47[24] = v19;
  v47[25] = v51;
  sub_100021404(&v42, v48);
  sub_100005E9C(a1);
  v48[0] = v11;
  v48[1] = v39;
  v48[2] = v21;
  v48[3] = v34;
  v48[4] = v22;
  v48[5] = v33;
  v48[6] = v23;
  v48[7] = v32;
  v48[8] = v37;
  v48[9] = v31;
  v48[10] = v36;
  v48[11] = v30;
  v48[12] = v24;
  v49 = v19;
  v50 = v51;
  result = sub_1000212C4(v48);
  v26 = *v47;
  a2[4] = v46;
  a2[5] = v26;
  *(a2 + 90) = *&v47[10];
  v27 = v43;
  *a2 = v42;
  a2[1] = v27;
  v28 = v45;
  a2[2] = v44;
  a2[3] = v28;
  return result;
}

unint64_t sub_100023078()
{
  result = qword_1000A28F8;
  if (!qword_1000A28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A28F8);
  }

  return result;
}

unint64_t sub_1000230CC()
{
  result = qword_1000A2910;
  if (!qword_1000A2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2910);
  }

  return result;
}

unint64_t sub_100023120()
{
  result = qword_1000A2918;
  if (!qword_1000A2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2918);
  }

  return result;
}

unint64_t sub_100023174()
{
  result = qword_1000A2928;
  if (!qword_1000A2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtectionClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtectionClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemInfo.BootArgs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemInfo.BootArgs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002347C()
{
  result = qword_1000A2930;
  if (!qword_1000A2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2930);
  }

  return result;
}

unint64_t sub_1000234D4()
{
  result = qword_1000A2938;
  if (!qword_1000A2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2938);
  }

  return result;
}

unint64_t sub_10002352C()
{
  result = qword_1000A2940;
  if (!qword_1000A2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2940);
  }

  return result;
}

unint64_t sub_100023584()
{
  result = qword_1000A2948;
  if (!qword_1000A2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2948);
  }

  return result;
}

unint64_t sub_1000235DC()
{
  result = qword_1000A2950;
  if (!qword_1000A2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2950);
  }

  return result;
}

unint64_t sub_100023634()
{
  result = qword_1000A2958;
  if (!qword_1000A2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2958);
  }

  return result;
}

unint64_t sub_10002368C()
{
  result = qword_1000A2960;
  if (!qword_1000A2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2960);
  }

  return result;
}

unint64_t sub_1000236E4()
{
  result = qword_1000A2968;
  if (!qword_1000A2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2968);
  }

  return result;
}

unint64_t sub_10002373C()
{
  result = qword_1000A2970;
  if (!qword_1000A2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2970);
  }

  return result;
}

uint64_t AnalyticsStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t AnalyticsService.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = IOServiceMatching("AKSAnalytics");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    *(v0 + 16) = MatchingService;
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 22;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v0;
}

uint64_t AnalyticsConnection.init(_:)(uint64_t a1)
{
  connect = 0;
  v1 = IOServiceOpen(*(a1 + 16), mach_task_self_, 0, &connect);
  if (v1)
  {
    v2 = v1;
    sub_10000EEA4();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v2 = connect;
    AnalyticsConnection.checkVersion()();
  }

  return v2;
}

unint64_t sub_1000239D8(unint64_t a1, uint64_t a2, void *__dst, size_t __n)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = __dst;
    if ((a2 & 0x2000000000000000) != 0)
    {
      __src[0] = a1;
      __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = __src;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      memcpy(__dst, v6, __n);
      return v5;
    }
  }

  v5 = a1;
  sub_10000A0C8(&qword_1000A2B00, &unk_100075850);
  _StringGuts._slowWithCString<A>(_:)();
  if (!v4)
  {
    return __src[3];
  }

  return v5;
}

ProtectionDomainManager::AnalyticsDomainStatus_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.getDomain()()
{
  v2 = v0;
  v3 = 72;
  v4 = swift_slowAlloc();
  outputStructCnt = 72;
  v5 = IOConnectCallStructMethod(v2, 5u, 0, 0, v4, &outputStructCnt);
  if (v5)
  {
    v6 = mach_error_string(v5);
    if (!v6)
    {
      __break(1u);
      goto LABEL_16;
    }

    v10 = String.init(validatingUTF8:)();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x206E776F6E6B6E55;
    }

    if (v11)
    {
      v3 = v11;
    }

    else
    {
      v3 = 0xED0000726F727265;
    }

    sub_10000EEA4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = v3;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v14 = 5;
    goto LABEL_13;
  }

  v12 = outputStructCnt;
  if (outputStructCnt != 72)
  {
    sub_10000EEA4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 72;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v14 = 6;
LABEL_13:
    *(v13 + 32) = v14;
    swift_willThrow();

    goto LABEL_14;
  }

  v16 = *(v4 + 1);
  v17 = *(v4 + 3);
  v18 = *(v4 + 5);
  v19 = *(v4 + 7);
  v12 = *v4;
  v3 = String.init(cString:)();
  v1 = v15;

LABEL_14:
  v6 = v12;
  v7 = v3;
  v8 = v1;
LABEL_16:
  result.value.domainName._object = v8;
  result.value.domainName._countAndFlagsBits = v7;
  result.value.domainChangeCount = v6;
  result.is_nil = v9;
  return result;
}

char *AnalyticsConnection.setDomain(_:)(unint64_t a1, uint64_t a2, mach_port_t a3)
{
  v6 = swift_slowAlloc();
  v7 = v6;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  if (a2)
  {
    *v6 = 2;
    v8 = String.count.getter();
    if (v8 >= 63)
    {
      v9 = 63;
    }

    else
    {
      v9 = v8;
    }

    sub_1000239D8(a1, a2, (v7 + 1), v9);
  }

  else
  {
    *v6 = 1;
  }

  v10 = IOConnectCallStructMethod(a3, 6u, v7, 0x41uLL, 0, 0);
  if (!v10)
  {
  }

  result = mach_error_string(v10);
  if (result)
  {
    v12 = String.init(validatingUTF8:)();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x206E776F6E6B6E55;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xED0000726F727265;
    }

    sub_10000EEA4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 5;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.getAnalyticsCounters()(__C::AKSAnalyticsCounters *__return_ptr retstr)
{
  v2 = v1;
  v4 = swift_slowAlloc();
  outputStructCnt = 136;
  v5 = IOConnectCallStructMethod(v2, 1u, 0, 0, v4, &outputStructCnt);
  if (v5)
  {
    if (mach_error_string(v5))
    {
      v6 = String.init(validatingUTF8:)();
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xED0000726F727265;
      }

      sub_10000EEA4();
      swift_allocError();
      *v10 = v8;
      *(v10 + 8) = v9;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 5;
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v17 = *(v4 + 6);
    v18 = *(v4 + 7);
    v19 = v4[16];
    v13 = *(v4 + 2);
    v14 = *(v4 + 3);
    v15 = *(v4 + 4);
    v16 = *(v4 + 5);
    v11 = *v4;
    v12 = *(v4 + 1);

    *&retstr->droppedViolation = v17;
    *&retstr->rateLimitExceeded = v18;
    retstr->error = v19;
    *&retstr->setProtectionClass = v13;
    *&retstr->linkFile = v14;
    *&retstr->deferredEnforcementRequest = v15;
    *&retstr->deferredFileAccess = v16;
    *&retstr->enforcementRequest = v11;
    *&retstr->unenforcedViolation = v12;
  }
}

uint64_t AKSAnalyticsCounters.description.getter()
{
  _StringGuts.grow(_:)(273);
  v1._object = 0x8000000100083260;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  v36 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x202C6C61746F7420;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v37 = v0[8];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0xEA00000000002064;
  v5._countAndFlagsBits = 0x6572726566656420;
  String.append(_:)(v5);
  v38 = v0[11];
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000016;
  v7._object = 0x8000000100083280;
  String.append(_:)(v7);
  v39 = v0[1];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x6563726F666E6520;
  v9._object = 0xEB00000000202C64;
  String.append(_:)(v9);
  v40 = v0[2];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x726F666E656E7520;
  v11._object = 0xED0000202C646563;
  String.append(_:)(v11);
  v41 = v0[9];
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6572726566656420;
  v13._object = 0xEB00000000202C64;
  String.append(_:)(v13);
  v42 = v0[12];
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD00000000000001FLL;
  v15._object = 0x80000001000832A0;
  String.append(_:)(v15);
  v43 = v0[3];
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x202C6E65706F20;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v44 = v0[4];
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._object = 0x80000001000832C0;
  v19._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v19);
  v45 = v0[5];
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x2C65746165726320;
  v21._object = 0xE900000000000020;
  String.append(_:)(v21);
  v46 = v0[6];
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0x6E696C6472616820;
  v23._object = 0xEB00000000202C6BLL;
  String.append(_:)(v23);
  v47 = v0[10];
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x6572726566656420;
  v25._object = 0xEB00000000202C64;
  String.append(_:)(v25);
  v48 = v0[13];
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x646570706F726420;
  v27._object = 0xEA0000000000202CLL;
  String.append(_:)(v27);
  v49 = v0[14];
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001000832E0;
  String.append(_:)(v29);
  v50 = v0[15];
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000010;
  v31._object = 0x8000000100083300;
  String.append(_:)(v31);
  v51 = v0[7];
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x3D726F72726520;
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);
  v52 = v0[16];
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  return 0;
}

uint64_t AnalyticsService.init()()
{
  v1 = IOServiceMatching("AKSAnalytics");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    *(v0 + 16) = MatchingService;
  }

  else
  {
    sub_10000EEA4();
    swift_allocError();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 22;
    swift_willThrow();
    type metadata accessor for AnalyticsService();
    swift_deallocPartialClassInstance();
  }

  return v0;
}

uint64_t AnalyticsService.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return _swift_deallocClassInstance(v0, 20, 7);
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsService.open()()
{
  connect = 0;
  v1 = IOServiceOpen(*(v0 + 16), mach_task_self_, 0, &connect);
  if (!v1)
  {
    return connect;
  }

  v2 = v1;
  sub_10000EEA4();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  return swift_willThrow();
}

uint64_t AnalyticsDomainStatus.domainName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.checkVersion()()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A2A38, qword_100075720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100075700;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  outputCnt = 2;
  v3 = IOConnectCallScalarMethod(v1, 4u, 0, 0, (inited + 32), &outputCnt);
  if (!v3)
  {
    v10 = *(inited + 32);
    if (v10 == 7)
    {
      swift_setDeallocating();
      return;
    }

    v11 = *(inited + 40);
    sub_10000EEA4();
    swift_allocError();
    *v8 = v10;
    *(v8 + 8) = v11;
    *(v8 + 16) = xmmword_100075710;
    v9 = 1;
    goto LABEL_13;
  }

  if (mach_error_string(v3))
  {
    v4 = String.init(validatingUTF8:)();
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x206E776F6E6B6E55;
    }

    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xED0000726F727265;
    }

    sub_10000EEA4();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v9 = 5;
LABEL_13:
    *(v8 + 32) = v9;
    swift_willThrow();

    return;
  }

  __break(1u);
}

Swift::tuple_UInt64_UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.mapDataQueue()()
{
  ofSize = 0;
  atAddress = 0;
  v1 = IOConnectMapMemory64(v0, 0, mach_task_self_, &atAddress, &ofSize, 1u);
  if (v1)
  {
    v2 = v1;
    sub_10000EEA4();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
    v4 = swift_willThrow();
  }

  else
  {
    v5 = ofSize;
    v4 = atAddress;
  }

  result._1 = v5;
  result._0 = v4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.setNotificationPort(_:)(Swift::UInt32 a1)
{
  v2 = IOConnectSetNotificationPort(v1, 0, a1, 0);
  if (v2)
  {
    v3 = v2;
    sub_10000EEA4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 3;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalyticsConnection.enableAnalytics(features:)(Swift::Int32 features)
{
  if (features < 0)
  {
    __break(1u);
  }

  v5 = features;
  v2 = IOConnectCallScalarMethod(v1, 0, &v5, 1u, 0, 0);
  if (v2)
  {
    v3 = v2;
    sub_10000EEA4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 4;
    swift_willThrow();
  }
}

uint64_t sub_100024B0C(uint64_t a1, uint64_t a2, mach_port_t connection, uint32_t selector)
{
  v10[1] = a2;
  v10[0] = a1;
  result = IOConnectCallScalarMethod(connection, selector, v10, 2u, 0, 0);
  if (result)
  {
    result = mach_error_string(result);
    if (result)
    {
      v5 = String.init(validatingUTF8:)();
      if (v6)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0x206E776F6E6B6E55;
      }

      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0xED0000726F727265;
      }

      sub_10000EEA4();
      swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 5;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 sub_100024BE0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100024C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SplunkLoggerConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100024CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100024D4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100024D64(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_100024D94@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = memcpy(v4, __src, *(v2 + 24));
  *a2 = v4;
  return result;
}

uint64_t sub_100024EA4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_100024EC4, 0, 0);
}

uint64_t sub_100024EC4()
{
  v27 = v0;
  if (qword_1000A2198 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[21] = v2;
  sub_100002DB8(v2, qword_1000B1998);
  sub_10000626C(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100005BFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v8 = sub_100003644();
    v9 = sub_100005A2C(0, v8);
    v11 = v10;
    sub_100005C50();
    v12 = sub_100005C68(v9, v11, &v26);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "violation report %s", v6, 0xCu);
    sub_100005E9C(v7);
  }

  v13 = v0[19];
  v14 = v0[20];
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v17 = *(v14 + 16);
  *(v16 + 16) = *v14;
  *(v16 + 32) = v17;
  v18 = *(v14 + 32);
  v19 = *(v14 + 48);
  v20 = *(v14 + 64);
  *(v16 + 96) = *(v14 + 80);
  *(v16 + 64) = v19;
  *(v16 + 80) = v20;
  *(v16 + 48) = v18;
  v0[17] = sub_1000067F8;
  v0[18] = v16;
  v0[13] = _NSConcreteStackBlock;
  v0[14] = 1107296256;
  v0[15] = sub_1000065D0;
  v0[16] = &unk_100097240;
  v21 = _Block_copy(v0 + 13);
  v22 = v0[18];
  sub_10000626C(v14, (v0 + 2));

  AnalyticsSendEventLazy();
  _Block_release(v21);

  v0[22] = type metadata accessor for AnalyticsStoreContext();
  sub_100028A98(&qword_1000A2338);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000251DC, v24, v23);
}

uint64_t sub_1000251DC()
{
  v1 = v0[19];
  sub_100042DFC(v0[20]);
  v0[23] = 0;
  v2 = v0[22];
  v3 = v0[19];
  sub_100028A98(&qword_1000A2B30);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v0[24] = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000252E8()
{
  v1 = v0[24];
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  sub_100002DB8(v0[21], qword_1000B1908);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to save violation report: %@", v4, 0xCu);
    sub_100002CF0(v5, &qword_1000A4EC0, &qword_100076C00);
  }

  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  atomic_fetch_add_explicit((qword_1000B1920 + 56), 1uLL, memory_order_relaxed);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000254B8()
{
  v1 = v0[23];
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  sub_100002DB8(v0[21], qword_1000B1908);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to save violation report: %@", v4, 0xCu);
    sub_100002CF0(v5, &qword_1000A4EC0, &qword_100076C00);
  }

  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  atomic_fetch_add_explicit((qword_1000B1920 + 56), 1uLL, memory_order_relaxed);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000257BC(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_1000257DC, 0, 0);
}

uint64_t sub_1000257DC()
{
  v25 = v0;
  if (qword_1000A2198 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  v0[19] = v2;
  sub_100002DB8(v2, qword_1000B1998);
  sub_100028ADC(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_100011348(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = sub_100027F98();
    v10 = sub_100005C68(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "file access report %s", v6, 0xCu);
    sub_100005E9C(v7);
  }

  v11 = v0[18];
  sub_100028ADC(v11, (v0 + 2));
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  sub_100011348(v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[18];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_100027F98();
    v19 = sub_100005C68(v17, v18, &v24);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "file access report %s", v15, 0xCu);
    sub_100005E9C(v16);
  }

  v20 = v0[17];
  v0[20] = type metadata accessor for AnalyticsStoreContext();
  sub_100028A98(&qword_1000A2338);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025AAC, v22, v21);
}

uint64_t sub_100025AAC()
{
  v1 = v0[17];
  sub_100043B30(v0[18]);
  v0[21] = 0;
  v2 = v0[20];
  v3 = v0[17];
  sub_100028A98(&qword_1000A2B30);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v0[22] = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100025BB8()
{
  v1 = v0[22];
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  sub_100002DB8(v0[19], qword_1000B1908);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to save file access report: %@", v4, 0xCu);
    sub_100002CF0(v5, &qword_1000A4EC0, &qword_100076C00);
  }

  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  atomic_fetch_add_explicit((qword_1000B1920 + 56), 1uLL, memory_order_relaxed);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100025D88()
{
  v1 = v0[21];
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  sub_100002DB8(v0[19], qword_1000B1908);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to save file access report: %@", v4, 0xCu);
    sub_100002CF0(v5, &qword_1000A4EC0, &qword_100076C00);
  }

  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  atomic_fetch_add_explicit((qword_1000B1920 + 56), 1uLL, memory_order_relaxed);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100025F58()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B1998);
  sub_100002DB8(v0, qword_1000B1998);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100025FE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000260F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000261E4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000262E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028A4C(*a1);
  *a2 = result;
  return result;
}

void sub_100026314(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656CLL;
  v4 = 0x6946657461657263;
  v5 = 0xE800000000000000;
  v6 = 0x656C694665766F6DLL;
  v7 = 0xE900000000000065;
  v8 = 0x6C6946656E6F6C63;
  if (v2 != 4)
  {
    v8 = 0x656C694670617773;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000100082AF0;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 0x656C69466B6E696CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

Swift::Int sub_100026498()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100026560()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100026614()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000266D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000293D8(*a1);
  *a2 = result;
  return result;
}

void sub_100026708(uint64_t *a1@<X8>)
{
  v2 = 0x74616964656D6D69;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F6974617267696DLL;
  if (*v1 != 2)
  {
    v4 = 0x726F74696E616ALL;
    v3 = 0xE700000000000000;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x6465727265666564;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_10002683C(char a1)
{
  result = 0x737365636F7270;
  switch(a1)
  {
    case 1:
      v3 = 1349808996;
      goto LABEL_9;
    case 2:
      v3 = 1348694643;
LABEL_9:
      result = v3 | 0x68746100000000;
      break;
    case 3:
      result = 0x6F6974617265706FLL;
      break;
    case 4:
      result = 0x69746365746F7270;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x646563726F666E65;
      break;
    case 8:
      result = 0x726F746365726964;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6954746E657665;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6E69616D6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000269B4(void *a1)
{
  v3 = v1;
  v5 = sub_10000A0C8(&qword_1000A2BE8, &qword_100075DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002AD44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v26 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v26 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v3 + 48);
    v25 = 3;
    sub_10002AE40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + 49);
    v25 = 4;
    sub_10002AC9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + 50);
    v25 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + 51);
    v25 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 52);
    v26 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 53);
    v26 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 54);
    v26 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[7];
    v26 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 64);
    v25 = 11;
    sub_10002AE94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v3[9];
    v22 = v3[10];
    v26 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100026D30()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v0[5])
  {
    v5 = v0[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  *(v0 + 48);
  String.hash(into:)();

  v6 = *(v0 + 49);
  sub_10003173C();
  v7 = *(v0 + 50);
  sub_10003173C();
  v8 = *(v0 + 51);
  sub_10003173C();
  Hasher._combine(_:)(*(v0 + 52) & 1);
  Hasher._combine(_:)(*(v0 + 53) & 1);
  Hasher._combine(_:)(*(v0 + 54) & 1);
  Hasher._combine(_:)(v0[7]);
  *(v0 + 64);
  String.hash(into:)();

  if (v0[10])
  {
    v9 = v0[9];
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100026F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100029424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100026FD0(uint64_t a1)
{
  v2 = sub_10002AD44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002700C(uint64_t a1)
{
  v2 = sub_10002AD44();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100027048()
{
  Hasher.init(_seed:)();
  sub_100026D30();
  return Hasher._finalize()();
}

Swift::Int sub_10002708C()
{
  Hasher.init(_seed:)();
  sub_100026D30();
  return Hasher._finalize()();
}

double sub_1000270C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029844(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10002713C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000288D4(v7, v9) & 1;
}

uint64_t sub_1000271A8(char a1, unsigned __int8 a2)
{
  v4 = *&aClassdirclassa[8 * a1];
  v5 = *&aNoprotecnone[8 * a1 + 8];
  v6 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000057A8(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1000057A8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 32 * v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 48) = a2;
  *(v10 + 56) = 64;
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_10002727C()
{
  v0 = sub_100003644();
  v1 = sub_100005A2C(0, v0);
  sub_100005C50();
  return v1;
}

Swift::Int sub_1000272FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000273CC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100027488()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100027554@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029F14(*a1);
  *a2 = result;
  return result;
}

void sub_100027584(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6465776F6C6C61;
  v4 = 0x8000000100082BF0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x50676E697373696DLL;
    v4 = 0xED00007963696C6FLL;
  }

  if (*v1)
  {
    v3 = 0x6465696E6564;
    v2 = 0xE600000000000000;
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

uint64_t sub_1000276D4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000277B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029F60(*a1);
  *a2 = result;
  return result;
}

void sub_1000277E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684104562;
  v5 = 0x8000000100082AF0;
  v6 = 0xD000000000000012;
  v7 = 0xE400000000000000;
  v8 = 1802398060;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6574697277;
  if (v2 != 1)
  {
    v10 = 0x657461657263;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100027944(char a1)
{
  result = 0x737365636F7270;
  switch(a1)
  {
    case 1:
      result = 1752457584;
      break;
    case 2:
      result = 0x68746150637273;
      break;
    case 3:
      result = 0x6E69616D6F64;
      break;
    case 4:
      result = 0x6F4D737365636361;
      break;
    case 5:
      result = 0x69746365746F7270;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6F4C656369766564;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x745367616279656BLL;
      break;
    case 11:
      result = 0x6279654B65726F6DLL;
      break;
    case 12:
      result = 0x65527963696C6F70;
      break;
    case 13:
      result = 0x6D6954746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100027AE8(void *a1)
{
  v3 = v1;
  v5 = sub_10000A0C8(&qword_1000A2BA8, &qword_100075DB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002AAF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v30 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v30 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v30 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v30 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 64);
    v29 = 4;
    sub_10002AC48();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = *(v3 + 65);
    v29 = 5;
    sub_10002AC9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + 66);
    v30 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 67);
    v30 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[9];
    v22 = *(v3 + 80);
    v30 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 21);
    v30 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 22);
    v30 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[12];
    v30 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + 104);
    v29 = 12;
    sub_10002ACF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = v3[14];
    v30 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100027E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100027EA0(uint64_t a1)
{
  v2 = sub_10002AAF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100027EDC(uint64_t a1)
{
  v2 = sub_10002AAF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100027F18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002A498(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_1000281CC(uint64_t a1)
{
  result = sub_1000281F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000281F4()
{
  result = qword_1000A2B08;
  if (!qword_1000A2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B08);
  }

  return result;
}

char *sub_100028248(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B18, &qword_1000790E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002834C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B50, &qword_100075A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100028458(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B28, &qword_1000759D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100028578(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B60, &qword_100075A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000286A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B58, &qword_100075A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 232);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[232 * v8])
    {
      memmove(v12, v13, 232 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000287C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A0C8(&qword_1000A2B20, &qword_1000759D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000288D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (sub_100061228(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_1000613F8(*(a1 + 49), *(a2 + 49)) & 1) != 0 && (sub_1000613F8(*(a1 + 50), *(a2 + 50)) & 1) != 0 && (sub_1000613F8(*(a1 + 51), *(a2 + 51)) & 1) != 0 && ((*(a1 + 52) ^ *(a2 + 52)) & 1) == 0 && ((*(a1 + 53) ^ *(a2 + 53)) & 1) == 0 && ((*(a1 + 54) ^ *(a2 + 54)) & 1) == 0 && *(a1 + 56) == *(a2 + 56) && (sub_100061678(*(a1 + 64), *(a2 + 64)))
  {
    v8 = *(a1 + 80);
    v9 = *(a2 + 80);
    if (v8)
    {
      if (v9 && (*(a1 + 72) == *(a2 + 72) && v8 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100028A4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095C28, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100028A98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnalyticsStoreContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028B14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Date();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (((a2 >> 8) & 0x1F) >= 5)
  {

    sub_10000EEA4();
    swift_allocError();
    *v15 = (a2 >> 8) & 0x1F;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 12;
    return swift_willThrow();
  }

  v49 = (a2 >> 8) & 0x1F;
  sub_10006DCE4(v83);
  if (v4)
  {
  }

  v46 = a4;
  v17 = a1 + 32;
  v18 = a1 + 32 + *(a1 + 16);
  v63 = 12;
  v64 = HIWORD(a2) + 12;
  *&v65 = a1 + 32;
  *(&v65 + 1) = v18;
  v47 = v18;
  v48 = a1;
  static String.Encoding.utf8.getter();
  sub_10000A0C8(&qword_1000A2B40, &qword_100075A18);
  sub_100006C4C();
  v19 = String.init<A>(bytes:encoding:)();
  if (!v20)
  {
    sub_10000EEA4();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v24 = 22;
LABEL_8:
    *(v23 + 32) = v24;
    swift_willThrow();
  }

  v21 = v20;
  v22 = v19;
  *&v45 = sub_100002A40();
  *(&v45 + 1) = v25;
  v26 = sub_100006CB0(v17, v47, a2, a3);
  v47 = v21;
  v44 = v26;
  v28 = v27;
  LOBYTE(v29) = ProtectionClass.init(value:)(BYTE2(a2));
  if (v29 == 9)
  {

    sub_10000EEA4();
    swift_allocError();
    *v23 = BYTE2(a2);
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v24 = 10;
    goto LABEL_8;
  }

  v39 = v83[0];
  v30 = v83[1];
  *(v55 + 4) = v84;
  BYTE4(v55[1]) = v85;
  v42 = v86;
  v43 = v29;
  v41 = v87;
  v40 = v88;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v32 = v31;
  v33 = v31;
  result = (*(v50 + 8))(v12, v9);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v32 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v46;
  if (v32 < 1.84467441e19)
  {
    *&v56 = v22;
    *(&v56 + 1) = v47;
    v57 = v45;
    *&v58 = v44;
    *(&v58 + 1) = v28;
    v59 = 0uLL;
    LOBYTE(v60[0]) = v49;
    BYTE1(v60[0]) = v43;
    BYTE2(v60[0]) = v39;
    BYTE3(v60[0]) = v30;
    *(v60 + 4) = v55[0];
    *(v60 + 9) = *(v55 + 5);
    BYTE3(v60[1]) = v54;
    *(&v60[1] + 1) = v53;
    *(&v60[1] + 4) = __PAIR64__(v41, v42);
    *&v61 = v40;
    *(&v61 + 9) = *v52;
    HIDWORD(v61) = *&v52[3];
    BYTE8(v61) = 4;
    v62 = v32;
    v63 = v22;
    v64 = v47;
    v65 = v45;
    v66 = v44;
    v67 = v28;
    v68 = 0;
    v69 = 0;
    v70 = v49;
    v71 = v43;
    v72 = v39;
    v73 = v30;
    *&v74[5] = *(v55 + 5);
    *v74 = v55[0];
    v76 = v54;
    v75 = v53;
    v77 = v42;
    v78 = v41;
    v79 = v40;
    v80 = 4;
    *&v81[3] = *&v52[3];
    *v81 = *v52;
    v82 = v32;
    sub_100028ADC(&v56, &v51);
    sub_100011348(&v63);

    v35 = v60[1];
    *(v34 + 64) = v60[0];
    *(v34 + 80) = v35;
    *(v34 + 96) = v61;
    *(v34 + 112) = v62;
    v36 = v57;
    *v34 = v56;
    *(v34 + 16) = v36;
    v37 = v59;
    *(v34 + 32) = v58;
    *(v34 + 48) = v37;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_100028FF8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100029024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 7) & 0x1E0 | (*(a1 + 64) >> 3) | (*(a1 + 64) >> 8) & 0xFE00 | (*(a1 + 64) >> 9) & 0xFFFF0000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

int8x8_t sub_100029094(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      v4 = vdupq_n_s64(-a2);
      v5 = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_100075910), xmmword_100075940), vandq_s8(vshlq_u64(v4, xmmword_100075920), xmmword_100075930));
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      result = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = result;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100029158(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88);
  v3 = *(result + 104) | (a2 << 62);
  *(result + 64) &= 0x1010F07uLL;
  *(result + 88) = v2;
  *(result + 104) = v3;
  return result;
}

uint64_t sub_1000291A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1000291EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100029258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002927C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000292C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002932C()
{
  result = qword_1000A2B68;
  if (!qword_1000A2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B68);
  }

  return result;
}

unint64_t sub_100029384()
{
  result = qword_1000A2B70;
  if (!qword_1000A2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B70);
  }

  return result;
}

unint64_t sub_1000293D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095E10, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100029424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636F7270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746150747364 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746150637273 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000831E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100083440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646563726F666E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100083180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100083460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_100029844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000A0C8(&qword_1000A2BC8, &qword_100075DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002AD44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005E9C(a1);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v38 = v11;
    LOBYTE(v45[0]) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v37 + 1) = v15;
    *&v37 = v14;
    LOBYTE(v45[0]) = 2;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v16;
    LOBYTE(v39) = 3;
    sub_10002AD98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = LOBYTE(v45[0]);
    LOBYTE(v39) = 4;
    v35 = sub_10002ABA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = LOBYTE(v45[0]);
    LOBYTE(v39) = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = LOBYTE(v45[0]);
    LOBYTE(v39) = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LODWORD(v35) = LOBYTE(v45[0]);
    LOBYTE(v45[0]) = 7;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v45[0]) = 8;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v45[0]) = 9;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v45[0]) = 10;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v39) = 11;
    sub_10002ADEC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = LOBYTE(v45[0]);
    v61 = 12;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v18;
    v31 &= 1u;
    v19 = v30 & 1;
    v17 &= 1u;
    (*(v6 + 8))(v9, v5);
    v20 = v38;
    *&v39 = v38;
    *(&v39 + 1) = v13;
    v21 = v37;
    v40 = v37;
    v22 = v63;
    *&v41 = v36;
    *(&v41 + 1) = v63;
    LOBYTE(v42) = v34;
    BYTE1(v42) = v33;
    BYTE2(v42) = v32;
    BYTE3(v42) = v35;
    BYTE4(v42) = v31;
    BYTE5(v42) = v19;
    BYTE6(v42) = v17;
    *(&v42 + 1) = v29;
    LOBYTE(v43) = v28;
    *(&v43 + 1) = v27;
    v44 = v26;
    sub_10000626C(&v39, v45);
    sub_100005E9C(a1);
    v45[0] = v20;
    v45[1] = v13;
    v46 = __PAIR128__(*(&v37 + 1), v21);
    v47 = v36;
    v48 = v22;
    v49 = v34;
    v50 = v33;
    v51 = v32;
    v52 = v35;
    v53 = v31;
    v54 = v19;
    v55 = v17;
    v56 = v29;
    v57 = v28;
    *v58 = *v62;
    *&v58[3] = *&v62[3];
    v59 = v27;
    v60 = v26;
    result = sub_100005BFC(v45);
    v24 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v24;
    *(a2 + 64) = v43;
    *(a2 + 80) = v44;
    v25 = v40;
    *a2 = v39;
    *(a2 + 16) = v25;
  }

  return result;
}

unint64_t sub_100029F14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095E90, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100029F60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095F10, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100029FAC()
{
  result = qword_1000A2B78;
  if (!qword_1000A2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B78);
  }

  return result;
}

uint64_t sub_10002A000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636F7270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746150637273 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D737365636361 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100083180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC00000064656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000831A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000831C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x745367616279656BLL && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6279654B65726F6DLL && a2 == 0xEF65746174536761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65527963696C6F70 && a2 == 0xEC000000746C7573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_10002A498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = sub_10000A0C8(&qword_1000A2B80, &qword_100075DB0);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v75);
  v8 = &v30 - v7;
  v9 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_10002AAF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005E9C(a1);
  }

  else
  {
    v10 = v5;
    v46 = a2;
    LOBYTE(v55[0]) = 0;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = v11;
    LOBYTE(v55[0]) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v13;
    v41 = v12;
    LOBYTE(v55[0]) = 2;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v14;
    LOBYTE(v55[0]) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v39 = v15;
    LOBYTE(v47) = 4;
    sub_10002AB4C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = LOBYTE(v55[0]);
    LOBYTE(v47) = 5;
    sub_10002ABA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = LOBYTE(v55[0]);
    LOBYTE(v55[0]) = 6;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v55[0]) = 7;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v55[0]) = 8;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v18 & 1;
    LOBYTE(v55[0]) = 9;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v55[0]) = 10;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v55[0]) = 11;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v47) = 12;
    sub_10002ABF4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = LOBYTE(v55[0]);
    v70 = 13;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 &= 1u;
    v21 = v36;
    v34 &= 1u;
    (*(v10 + 8))(v8, v75);
    v22 = v42;
    *&v47 = v42;
    *(&v47 + 1) = v44;
    *&v48 = v41;
    *(&v48 + 1) = v43;
    *&v49 = v40;
    *(&v49 + 1) = v45;
    *&v50 = v39;
    *(&v50 + 1) = v17;
    LOBYTE(v51) = v38;
    BYTE1(v51) = v37;
    BYTE2(v51) = v21;
    v23 = v34;
    BYTE3(v51) = v34;
    *(&v51 + 1) = v35;
    v24 = v74;
    LOBYTE(v52) = v74;
    *(&v52 + 4) = __PAIR64__(v20, v19);
    *&v53 = v33;
    BYTE8(v53) = v32;
    v54 = v31;
    sub_100028ADC(&v47, v55);
    sub_100005E9C(a1);
    v55[0] = v22;
    v55[1] = v44;
    v55[2] = v41;
    v55[3] = v43;
    v55[4] = v40;
    v55[5] = v45;
    v55[6] = v39;
    v55[7] = v17;
    v56 = v38;
    v57 = v37;
    v58 = v36;
    v59 = v23;
    v60 = v35;
    v61 = v24;
    v62 = v72;
    v63 = v73;
    v64 = v19;
    v65 = v20;
    v66 = v33;
    v67 = v32;
    *v68 = *v71;
    *&v68[3] = *&v71[3];
    v69 = v31;
    result = sub_100011348(v55);
    v26 = v52;
    v27 = v46;
    *(v46 + 64) = v51;
    *(v27 + 80) = v26;
    *(v27 + 96) = v53;
    *(v27 + 112) = v54;
    v28 = v48;
    *v27 = v47;
    *(v27 + 16) = v28;
    v29 = v50;
    *(v27 + 32) = v49;
    *(v27 + 48) = v29;
  }

  return result;
}

unint64_t sub_10002AAF8()
{
  result = qword_1000A2B88;
  if (!qword_1000A2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B88);
  }

  return result;
}

unint64_t sub_10002AB4C()
{
  result = qword_1000A2B90;
  if (!qword_1000A2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B90);
  }

  return result;
}

unint64_t sub_10002ABA0()
{
  result = qword_1000A2B98;
  if (!qword_1000A2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2B98);
  }

  return result;
}

unint64_t sub_10002ABF4()
{
  result = qword_1000A2BA0;
  if (!qword_1000A2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BA0);
  }

  return result;
}

unint64_t sub_10002AC48()
{
  result = qword_1000A2BB0;
  if (!qword_1000A2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BB0);
  }

  return result;
}

unint64_t sub_10002AC9C()
{
  result = qword_1000A2BB8;
  if (!qword_1000A2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2BB8);
  }

  return result;
}